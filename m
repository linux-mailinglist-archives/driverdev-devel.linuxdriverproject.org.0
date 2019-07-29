Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F54878555
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E18208699B;
	Mon, 29 Jul 2019 06:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdSi5XRUVufO; Mon, 29 Jul 2019 06:52:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB88586985;
	Mon, 29 Jul 2019 06:52:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEF8E1BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DA35E878A1
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id st-YKdS99tWw for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 79B8A8794F
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:37 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 34DB9126D3CF3BD05600;
 Mon, 29 Jul 2019 14:52:35 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:24 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 10/22] staging: erofs: kill sbi->dev_name
Date: Mon, 29 Jul 2019 14:51:47 +0800
Message-ID: <20190729065159.62378-11-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729065159.62378-1-gaoxiang25@huawei.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As Al said, "the only use of sbi->dev_name is debugging
printks and all of those have sb->s_id available, with
device name stored in there.  Which makes the whole
thing bloody weird".

sbi->dev_name was used for our debugging use and it's
better to just use s_id in community and delete
the whole erofs_mount_private stuff.

Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/internal.h |  2 --
 drivers/staging/erofs/super.c    | 54 +++++---------------------------
 2 files changed, 7 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index c082a462baf6..b206a85776b4 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -113,8 +113,6 @@ struct erofs_sb_info {
 	u8 volume_name[16];             /* volume name */
 	u32 requirements;
 
-	char *dev_name;
-
 	unsigned int mount_opt;
 
 #ifdef CONFIG_EROFS_FAULT_INJECTION
diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index 7e6fe9cd45e7..bfb6e1e09781 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -362,15 +362,13 @@ static struct inode *erofs_init_managed_cache(struct super_block *sb)
 
 #endif
 
-static int erofs_read_super(struct super_block *sb,
-			    const char *dev_name,
-			    void *data, int silent)
+static int erofs_fill_super(struct super_block *sb, void *data, int silent)
 {
 	struct inode *inode;
 	struct erofs_sb_info *sbi;
 	int err = -EINVAL;
 
-	infoln("read_super, device -> %s", dev_name);
+	infoln("fill_super, device -> %s", sb->s_id);
 	infoln("options -> %s", (char *)data);
 
 	if (unlikely(!sb_set_blocksize(sb, EROFS_BLKSIZ))) {
@@ -448,30 +446,16 @@ static int erofs_read_super(struct super_block *sb,
 		goto err_iget;
 	}
 
-	/* save the device name to sbi */
-	sbi->dev_name = __getname();
-	if (!sbi->dev_name) {
-		err = -ENOMEM;
-		goto err_devname;
-	}
-
-	snprintf(sbi->dev_name, PATH_MAX, "%s", dev_name);
-	sbi->dev_name[PATH_MAX - 1] = '\0';
-
 	erofs_shrinker_register(sb);
 
 	if (!silent)
-		infoln("mounted on %s with opts: %s.", dev_name,
-		       (char *)data);
+		infoln("mounted on %s with opts: %s.", sb->s_id, (char *)data);
 	return 0;
 	/*
 	 * please add a label for each exit point and use
 	 * the following name convention, thus new features
 	 * can be integrated easily without renaming labels.
 	 */
-err_devname:
-	dput(sb->s_root);
-	sb->s_root = NULL;
 err_iget:
 #ifdef EROFS_FS_HAS_MANAGED_CACHE
 	iput(sbi->managed_cache);
@@ -499,8 +483,7 @@ static void erofs_put_super(struct super_block *sb)
 
 	WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);
 
-	infoln("unmounted for %s", sbi->dev_name);
-	__putname(sbi->dev_name);
+	infoln("unmounted for %s", sb->s_id);
 
 	erofs_shrinker_unregister(sb);
 #ifdef EROFS_FS_HAS_MANAGED_CACHE
@@ -510,33 +493,10 @@ static void erofs_put_super(struct super_block *sb)
 	sb->s_fs_info = NULL;
 }
 
-
-struct erofs_mount_private {
-	const char *dev_name;
-	char *options;
-};
-
-/* support mount_bdev() with options */
-static int erofs_fill_super(struct super_block *sb,
-			    void *_priv, int silent)
-{
-	struct erofs_mount_private *priv = _priv;
-
-	return erofs_read_super(sb, priv->dev_name,
-		priv->options, silent);
-}
-
-static struct dentry *erofs_mount(
-	struct file_system_type *fs_type, int flags,
-	const char *dev_name, void *data)
+static struct dentry *erofs_mount(struct file_system_type *fs_type, int flags,
+				  const char *dev_name, void *data)
 {
-	struct erofs_mount_private priv = {
-		.dev_name = dev_name,
-		.options = data
-	};
-
-	return mount_bdev(fs_type, flags, dev_name,
-		&priv, erofs_fill_super);
+	return mount_bdev(fs_type, flags, dev_name, data, erofs_fill_super);
 }
 
 static struct file_system_type erofs_fs_type = {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
