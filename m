Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9116F78A
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 04:52:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 89EE9203CC;
	Mon, 22 Jul 2019 02:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CpZcdY1BAeOM; Mon, 22 Jul 2019 02:52:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7AF0C203CF;
	Mon, 22 Jul 2019 02:51:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41FA41BF3CA
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 02:51:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F28B86981
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 02:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zZjHQobudHeA for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 02:51:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F70682063
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:51:20 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id BC51A27CB293F4C0C6D1;
 Mon, 22 Jul 2019 10:51:18 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 10:51:11 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Theodore Ts'o <tytso@mit.edu>,
 "Linus Torvalds" <torvalds@linux-foundation.org>
Subject: [PATCH v3 15/24] erofs: introduce erofs shrinker
Date: Mon, 22 Jul 2019 10:50:34 +0800
Message-ID: <20190722025043.166344-16-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722025043.166344-1-gaoxiang25@huawei.com>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
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
 fs/erofs/utils.c    | 94 ++++++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 106 insertions(+), 1 deletion(-)

diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
index 942e3cbe6076..7d4939463518 100644
--- a/fs/erofs/internal.h
+++ b/fs/erofs/internal.h
@@ -64,6 +64,9 @@ struct erofs_sb_info {
 #ifdef CONFIG_EROFS_FS_ZIP
 	/* list for all registered superblocks, mainly for shrinker */
 	struct list_head list;
+	struct mutex umount_mutex;
+
+	unsigned int shrinker_run_no;
 #endif
 	u32 blocks;
 	u32 meta_blkaddr;
@@ -412,9 +415,13 @@ extern const struct file_operations erofs_dir_fops;
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
 #endif
 
 #endif
diff --git a/fs/erofs/super.c b/fs/erofs/super.c
index c8bd77e3c355..6d0a383527b6 100644
--- a/fs/erofs/super.c
+++ b/fs/erofs/super.c
@@ -415,6 +415,9 @@ static int __init erofs_module_init(void)
 	if (err)
 		goto icache_err;
 
+	err = erofs_init_shrinker();
+	if (err)
+		goto shrinker_err;
 	err = register_filesystem(&erofs_fs_type);
 	if (err)
 		goto fs_err;
@@ -423,6 +426,8 @@ static int __init erofs_module_init(void)
 	return 0;
 
 fs_err:
+	erofs_exit_shrinker();
+shrinker_err:
 	erofs_exit_inode_cache();
 icache_err:
 	return err;
@@ -431,6 +436,7 @@ static int __init erofs_module_init(void)
 static void __exit erofs_module_exit(void)
 {
 	unregister_filesystem(&erofs_fs_type);
+	erofs_exit_shrinker();
 	erofs_exit_inode_cache();
 	infoln("successfully finalize erofs");
 }
diff --git a/fs/erofs/utils.c b/fs/erofs/utils.c
index 08c8752895bc..727d3831b5c9 100644
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
@@ -24,9 +32,93 @@ void erofs_shrinker_register(struct super_block *sb)
 
 void erofs_shrinker_unregister(struct super_block *sb)
 {
+	struct erofs_sb_info *const sbi = EROFS_SB(sb);
+
+	mutex_lock(&sbi->umount_mutex);
+	/* will add shrink final handler here */
+
 	spin_lock(&erofs_sb_list_lock);
-	list_del(&EROFS_SB(sb)->list);
+	list_del(&sbi->list);
 	spin_unlock(&erofs_sb_list_lock);
+	mutex_unlock(&sbi->umount_mutex);
+}
+
+static unsigned long erofs_shrink_count(struct shrinker *shrink,
+					struct shrink_control *sc)
+{
+	return atomic_long_read(&erofs_global_shrink_cnt);
 }
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
+	spin_lock(&erofs_sb_list_lock);
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
+	spin_unlock(&erofs_sb_list_lock);
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
+}
+
 #endif
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
