Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F14D48E3C2
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 06:43:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 912248773E;
	Thu, 15 Aug 2019 04:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1PEaUw7BN7X; Thu, 15 Aug 2019 04:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 682EC877A0;
	Thu, 15 Aug 2019 04:43:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB0B51BF381
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 04:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E7796882E3
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 04:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kvd9VS8e0Ieb for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 04:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2BBD6882DD
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 04:43:01 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4DE8ACCE8F94411EEACC;
 Thu, 15 Aug 2019 12:42:58 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 15 Aug
 2019 12:42:51 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: <linux-fsdevel@vger.kernel.org>, <devel@driverdev.osuosl.org>, "Alexander
 Viro" <viro@zeniv.linux.org.uk>
Subject: [PATCH v8 14/24] erofs: introduce superblock registration
Date: Thu, 15 Aug 2019 12:41:45 +0800
Message-ID: <20190815044155.88483-15-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190815044155.88483-1-gaoxiang25@huawei.com>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, Theodore Ts'o <tytso@mit.edu>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, Pavel Machek <pavel@denx.de>,
 Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, David Sterba <dsterba@suse.cz>,
 Christoph Hellwig <hch@infradead.org>, Richard Weinberger <richard@nod.at>,
 Miao Xie <miaoxie@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to introducing shrinker solution for erofs,
let's manage all mounted erofs instances at first.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/Makefile   |  2 +-
 fs/erofs/internal.h | 13 +++++++++++++
 fs/erofs/super.c    |  9 +++++++++
 fs/erofs/utils.c    | 32 ++++++++++++++++++++++++++++++++
 4 files changed, 55 insertions(+), 1 deletion(-)
 create mode 100644 fs/erofs/utils.c

diff --git a/fs/erofs/Makefile b/fs/erofs/Makefile
index 481a966caf06..930770be124f 100644
--- a/fs/erofs/Makefile
+++ b/fs/erofs/Makefile
@@ -5,7 +5,7 @@ EROFS_VERSION = "1.0"
 ccflags-y += -DEROFS_VERSION=\"$(EROFS_VERSION)\"
 
 obj-$(CONFIG_EROFS_FS) += erofs.o
-erofs-objs := super.o inode.o data.o namei.o dir.o
+erofs-objs := super.o inode.o data.o namei.o dir.o utils.o
 erofs-$(CONFIG_EROFS_FS_XATTR) += xattr.o
 erofs-$(CONFIG_EROFS_FS_ZIP) += zmap.o
 
diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
index 8432f488409d..62f1e3ffe0a2 100644
--- a/fs/erofs/internal.h
+++ b/fs/erofs/internal.h
@@ -60,6 +60,10 @@ typedef u64 erofs_off_t;
 typedef u32 erofs_blk_t;
 
 struct erofs_sb_info {
+#ifdef CONFIG_EROFS_FS_ZIP
+	/* list for all registered superblocks, mainly for shrinker */
+	struct list_head list;
+#endif	/* CONFIG_EROFS_FS_ZIP */
 	u32 blocks;
 	u32 meta_blkaddr;
 #ifdef CONFIG_EROFS_FS_XATTR
@@ -400,6 +404,15 @@ int erofs_namei(struct inode *dir, struct qstr *name,
 /* dir.c */
 extern const struct file_operations erofs_dir_fops;
 
+/* utils.c */
+#ifdef CONFIG_EROFS_FS_ZIP
+void erofs_shrinker_register(struct super_block *sb);
+void erofs_shrinker_unregister(struct super_block *sb);
+#else
+static inline void erofs_shrinker_register(struct super_block *sb) {}
+static inline void erofs_shrinker_unregister(struct super_block *sb) {}
+#endif	/* !CONFIG_EROFS_FS_ZIP */
+
 #define EFSCORRUPTED    EUCLEAN         /* Filesystem is corrupted */
 
 #endif	/* __EROFS_INTERNAL_H */
diff --git a/fs/erofs/super.c b/fs/erofs/super.c
index 561ae6f7fe13..2eca3b25db75 100644
--- a/fs/erofs/super.c
+++ b/fs/erofs/super.c
@@ -354,6 +354,8 @@ static int erofs_fill_super(struct super_block *sb, void *data, int silent)
 	if (unlikely(!sb->s_root))
 		return -ENOMEM;
 
+	erofs_shrinker_register(sb);
+
 	if (!silent)
 		infoln("mounted on %s with opts: %s.", sb->s_id, (char *)data);
 	return 0;
@@ -385,6 +387,12 @@ static void erofs_kill_sb(struct super_block *sb)
 	sb->s_fs_info = NULL;
 }
 
+/* called when ->s_root is non-NULL */
+static void erofs_put_super(struct super_block *sb)
+{
+	erofs_shrinker_unregister(sb);
+}
+
 static struct file_system_type erofs_fs_type = {
 	.owner          = THIS_MODULE,
 	.name           = "erofs",
@@ -496,6 +504,7 @@ static int erofs_remount(struct super_block *sb, int *flags, char *data)
 }
 
 const struct super_operations erofs_sops = {
+	.put_super = erofs_put_super,
 	.alloc_inode = alloc_inode,
 	.free_inode = free_inode,
 	.statfs = erofs_statfs,
diff --git a/fs/erofs/utils.c b/fs/erofs/utils.c
new file mode 100644
index 000000000000..791b2df1f761
--- /dev/null
+++ b/fs/erofs/utils.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * linux/fs/erofs/utils.c
+ *
+ * Copyright (C) 2018 HUAWEI, Inc.
+ *             http://www.huawei.com/
+ * Created by Gao Xiang <gaoxiang25@huawei.com>
+ */
+#include "internal.h"
+
+#ifdef CONFIG_EROFS_FS_ZIP
+/* protects the mounted 'erofs_sb_list' */
+static DEFINE_SPINLOCK(erofs_sb_list_lock);
+static LIST_HEAD(erofs_sb_list);
+
+void erofs_shrinker_register(struct super_block *sb)
+{
+	struct erofs_sb_info *sbi = EROFS_SB(sb);
+
+	spin_lock(&erofs_sb_list_lock);
+	list_add(&sbi->list, &erofs_sb_list);
+	spin_unlock(&erofs_sb_list_lock);
+}
+
+void erofs_shrinker_unregister(struct super_block *sb)
+{
+	spin_lock(&erofs_sb_list_lock);
+	list_del(&EROFS_SB(sb)->list);
+	spin_unlock(&erofs_sb_list_lock);
+}
+#endif	/* !CONFIG_EROFS_FS_ZIP */
+
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
