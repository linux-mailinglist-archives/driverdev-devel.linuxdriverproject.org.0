Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C9074ABD
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 11:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 04B7B8625B;
	Thu, 25 Jul 2019 09:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IMB-9fDHhD9Z; Thu, 25 Jul 2019 09:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F6BB8629C;
	Thu, 25 Jul 2019 09:58:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A82D61BF577
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 09:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F64E220B2
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 09:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O+oigTRLYqW5 for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 09:58:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id F2FEB2206E
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 09:57:56 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 09A098223A32FE688F92;
 Thu, 25 Jul 2019 17:57:52 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 25 Jul
 2019 17:57:42 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Theodore Ts'o <tytso@mit.edu>,
 "David Sterba" <dsterba@suse.cz>, Amir Goldstein <amir73il@gmail.com>, Linus
 Torvalds <torvalds@linux-foundation.org>
Subject: [PATCH v4 15/24] erofs: introduce erofs shrinker
Date: Thu, 25 Jul 2019 17:56:49 +0800
Message-ID: <20190725095658.155779-16-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190725095658.155779-1-gaoxiang25@huawei.com>
References: <20190725095658.155779-1-gaoxiang25@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.140.130.215]
X-CFilter-Loop: Reflected
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds a dedicated shrinker targeting to free
unneeded memory consumed by a number of erofs in-memory
data structures.

Like F2FS and UBIFS, it also adds:
  - sbi->umount_mutex to avoid races on shrinker and put_super;
  - sbi->shrinker_run_no to not revisit recently scanned objects.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/internal.h |  7 ++++
 fs/erofs/super.c    |  6 +++
 fs/erofs/utils.c    | 93 ++++++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 105 insertions(+), 1 deletion(-)

diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
index 2d437bcf140d..3b43f960b7bd 100644
--- a/fs/erofs/internal.h
+++ b/fs/erofs/internal.h
@@ -64,6 +64,9 @@ struct erofs_sb_info {
 #ifdef CONFIG_EROFS_FS_ZIP
 	/* list for all registered superblocks, mainly for shrinker */
 	struct list_head list;
+	struct mutex umount_mutex;
+
+	unsigned int shrinker_run_no;
 #endif	/* CONFIG_EROFS_FS_ZIP */
 	u32 blocks;
 	u32 meta_blkaddr;
@@ -408,9 +411,13 @@ extern const struct file_operations erofs_dir_fops;
 #ifdef CONFIG_EROFS_FS_ZIP
 void erofs_shrinker_register(struct super_block *sb);
 void erofs_shrinker_unregister(struct super_block *sb);
+int __init erofs_init_shrinker(void);
+void erofs_exit_shrinker(void);
 #else
 static inline void erofs_shrinker_register(struct super_block *sb) {}
 static inline void erofs_shrinker_unregister(struct super_block *sb) {}
+static inline int erofs_init_shrinker(void) { return 0; }
+static inline void erofs_exit_shrinker(void) {}
 #endif	/* !CONFIG_EROFS_FS_ZIP */
 
 #endif	/* __EROFS_INTERNAL_H */
diff --git a/fs/erofs/super.c b/fs/erofs/super.c
index c9fe585a38a6..b8c48508a0dd 100644
--- a/fs/erofs/super.c
+++ b/fs/erofs/super.c
@@ -413,6 +413,9 @@ static int __init erofs_module_init(void)
 	if (err)
 		goto icache_err;
 
+	err = erofs_init_shrinker();
+	if (err)
+		goto shrinker_err;
 	err = register_filesystem(&erofs_fs_type);
 	if (err)
 		goto fs_err;
@@ -421,6 +424,8 @@ static int __init erofs_module_init(void)
 	return 0;
 
 fs_err:
+	erofs_exit_shrinker();
+shrinker_err:
 	erofs_exit_inode_cache();
 icache_err:
 	return err;
@@ -429,6 +434,7 @@ static int __init erofs_module_init(void)
 static void __exit erofs_module_exit(void)
 {
 	unregister_filesystem(&erofs_fs_type);
+	erofs_exit_shrinker();
 	erofs_exit_inode_cache();
 	infoln("successfully finalize erofs");
 }
diff --git a/fs/erofs/utils.c b/fs/erofs/utils.c
index 791b2df1f761..cab7d77c4e59 100644
--- a/fs/erofs/utils.c
+++ b/fs/erofs/utils.c
@@ -9,6 +9,12 @@
 #include "internal.h"
 
 #ifdef CONFIG_EROFS_FS_ZIP
+/* global shrink count (for all mounted EROFS instances) */
+static atomic_long_t erofs_global_shrink_cnt;
+
+/* protected by 'erofs_sb_list_lock' */
+static unsigned int shrinker_run_no;
+
 /* protects the mounted 'erofs_sb_list' */
 static DEFINE_SPINLOCK(erofs_sb_list_lock);
 static LIST_HEAD(erofs_sb_list);
@@ -17,6 +23,8 @@ void erofs_shrinker_register(struct super_block *sb)
 {
 	struct erofs_sb_info *sbi = EROFS_SB(sb);
 
+	mutex_init(&sbi->umount_mutex);
+
 	spin_lock(&erofs_sb_list_lock);
 	list_add(&sbi->list, &erofs_sb_list);
 	spin_unlock(&erofs_sb_list_lock);
@@ -24,9 +32,92 @@ void erofs_shrinker_register(struct super_block *sb)
 
 void erofs_shrinker_unregister(struct super_block *sb)
 {
+	struct erofs_sb_info *const sbi = EROFS_SB(sb);
+
+	mutex_lock(&sbi->umount_mutex);
+	/* will add shrink final handler here */
+
+	spin_lock(&erofs_sb_list_lock);
+	list_del(&sbi->list);
+	spin_unlock(&erofs_sb_list_lock);
+	mutex_unlock(&sbi->umount_mutex);
+}
+
+static unsigned long erofs_shrink_count(struct shrinker *shrink,
+					struct shrink_control *sc)
+{
+	return atomic_long_read(&erofs_global_shrink_cnt);
+}
+
+static unsigned long erofs_shrink_scan(struct shrinker *shrink,
+				       struct shrink_control *sc)
+{
+	struct erofs_sb_info *sbi;
+	struct list_head *p;
+
+	unsigned long nr = sc->nr_to_scan;
+	unsigned int run_no;
+	unsigned long freed = 0;
+
 	spin_lock(&erofs_sb_list_lock);
-	list_del(&EROFS_SB(sb)->list);
+	do {
+		run_no = ++shrinker_run_no;
+	} while (run_no == 0);
+
+	/* Iterate over all mounted superblocks and try to shrink them */
+	p = erofs_sb_list.next;
+	while (p != &erofs_sb_list) {
+		sbi = list_entry(p, struct erofs_sb_info, list);
+
+		/*
+		 * We move the ones we do to the end of the list, so we stop
+		 * when we see one we have already done.
+		 */
+		if (sbi->shrinker_run_no == run_no)
+			break;
+
+		if (!mutex_trylock(&sbi->umount_mutex)) {
+			p = p->next;
+			continue;
+		}
+
+		spin_unlock(&erofs_sb_list_lock);
+		sbi->shrinker_run_no = run_no;
+
+		/* will add shrink handler here */
+
+		spin_lock(&erofs_sb_list_lock);
+		/* Get the next list element before we move this one */
+		p = p->next;
+
+		/*
+		 * Move this one to the end of the list to provide some
+		 * fairness.
+		 */
+		list_move_tail(&sbi->list, &erofs_sb_list);
+		mutex_unlock(&sbi->umount_mutex);
+
+		if (freed >= nr)
+			break;
+	}
 	spin_unlock(&erofs_sb_list_lock);
+	return freed;
+}
+
+static struct shrinker erofs_shrinker_info = {
+	.scan_objects = erofs_shrink_scan,
+	.count_objects = erofs_shrink_count,
+	.seeks = DEFAULT_SEEKS,
+};
+
+int __init erofs_init_shrinker(void)
+{
+	return register_shrinker(&erofs_shrinker_info);
+}
+
+void erofs_exit_shrinker(void)
+{
+	unregister_shrinker(&erofs_shrinker_info);
 }
 #endif	/* !CONFIG_EROFS_FS_ZIP */
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
