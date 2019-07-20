Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4C26F0F7
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jul 2019 00:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E2A785B0D;
	Sat, 20 Jul 2019 22:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xoQE3DmuI0Hp; Sat, 20 Jul 2019 22:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ACABE8462A;
	Sat, 20 Jul 2019 22:51:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C43A71BF377
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 22:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BB19C200E5
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 22:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDtv2LWKSd4G for <devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 22:50:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by silver.osuosl.org (Postfix) with ESMTPS id 375DA20368
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 22:50:12 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hoyAt-0001TD-LG; Sat, 20 Jul 2019 22:49:55 +0000
Date: Sat, 20 Jul 2019 23:49:55 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v2 03/24] erofs: add super block operations
Message-ID: <20190720224955.GD17978@ZenIV.linux.org.uk>
References: <20190711145755.33908-1-gaoxiang25@huawei.com>
 <20190711145755.33908-4-gaoxiang25@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711145755.33908-4-gaoxiang25@huawei.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 11, 2019 at 10:57:34PM +0800, Gao Xiang wrote:
> This commit adds erofs super block operations, including (u)mount,
> remount_fs, show_options, statfs, in addition to some private
> icache management functions.

Could you explain what's the point of this

> +	/* save the device name to sbi */
> +	sbi->dev_name = __getname();
> +	if (!sbi->dev_name) {
> +		err = -ENOMEM;
> +		goto err_devname;
> +	}
> +
> +	snprintf(sbi->dev_name, PATH_MAX, "%s", dev_name);
> +	sbi->dev_name[PATH_MAX - 1] = '\0';

... and this?

> +struct erofs_mount_private {
> +	const char *dev_name;
> +	char *options;
> +};
> +
> +/* support mount_bdev() with options */
> +static int erofs_fill_super(struct super_block *sb,
> +			    void *_priv, int silent)
> +{
> +	struct erofs_mount_private *priv = _priv;
> +
> +	return erofs_read_super(sb, priv->dev_name,
> +		priv->options, silent);
> +}
> +
> +static struct dentry *erofs_mount(
> +	struct file_system_type *fs_type, int flags,
> +	const char *dev_name, void *data)
> +{
> +	struct erofs_mount_private priv = {
> +		.dev_name = dev_name,
> +		.options = data
> +	};
> +
> +	return mount_bdev(fs_type, flags, dev_name,
> +		&priv, erofs_fill_super);
> +}

AFAICS, the only use of sbi->dev_name is debugging printks and
all of those have sb->s_id available, with device name stored
in there.  Which makes the whole thing bloody weird - what's
wrong with simply passing data to mount_bdev (instead of
&priv), folding erofs_read_super() into erofs_fill_super(),
replacing sbi->dev_name with sb->s_id and killing sbi->dev_name,
along with the associated allocation, freeing, handling of
allocation failure, etc.?

For drivers/staging location that would be (compile-tested only)
the diff below.  I suspect that you could simplify fill_super
a bit further if you added ->kill_sb() along the lines of

	sbi = EROFS(sb);
#ifdef EROFS_FS_HAS_MANAGED_CACHE
	if (sbi && !sb->s_root)
		iput(sbi->managed_cache);
#endif
	kill_block_super(sb);
	kfree(sbi);
and took freeing sbi out of your ->put_super().  Then fill_super()
would simply return -E... on all failure exits, leaving all cleanup
to ->kill_sb().  E.g. initialization of the same ->managed_cache
would become
#ifdef EROFS_FS_HAS_MANAGED_CACHE
	inode = erofs_init_managed_cache(sb);
        if (IS_ERR(inode))
		return PTR_ERR(inode);
	sbi->managed_cache = inode;
#endif
etc.  Matter of taste, but IME if destructor parallels the cleanups on failure
exits in constructor it often makes sense to make use of that and kill the
duplication...  Anyway, that's a separate store; sbi->dev_name is a lot more
obvious one.


diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index 382258fc124d..16bab07e69d8 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -117,8 +117,6 @@ struct erofs_sb_info {
 	u8 volume_name[16];             /* volume name */
 	u32 requirements;
 
-	char *dev_name;
-
 	unsigned int mount_opt;
 	unsigned int shrinker_run_no;
 
diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index cadbcc11702a..a6ee69d0ce45 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -367,15 +367,14 @@ static struct inode *erofs_init_managed_cache(struct super_block *sb)
 
 #endif
 
-static int erofs_read_super(struct super_block *sb,
-			    const char *dev_name,
+static int erofs_fill_super(struct super_block *sb,
 			    void *data, int silent)
 {
 	struct inode *inode;
 	struct erofs_sb_info *sbi;
 	int err = -EINVAL;
 
-	infoln("read_super, device -> %s", dev_name);
+	infoln("read_super, device -> %s", sb->s_id);
 	infoln("options -> %s", (char *)data);
 
 	if (unlikely(!sb_set_blocksize(sb, EROFS_BLKSIZ))) {
@@ -453,20 +452,10 @@ static int erofs_read_super(struct super_block *sb,
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
 	erofs_register_super(sb);
 
 	if (!silent)
-		infoln("mounted on %s with opts: %s.", dev_name,
+		infoln("mounted on %s with opts: %s.", sb->s_id,
 		       (char *)data);
 	return 0;
 	/*
@@ -474,9 +463,6 @@ static int erofs_read_super(struct super_block *sb,
 	 * the following name convention, thus new features
 	 * can be integrated easily without renaming labels.
 	 */
-err_devname:
-	dput(sb->s_root);
-	sb->s_root = NULL;
 err_iget:
 #ifdef EROFS_FS_HAS_MANAGED_CACHE
 	iput(sbi->managed_cache);
@@ -504,8 +490,7 @@ static void erofs_put_super(struct super_block *sb)
 
 	WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);
 
-	infoln("unmounted for %s", sbi->dev_name);
-	__putname(sbi->dev_name);
+	infoln("unmounted for %s", sb->s_id);
 
 #ifdef EROFS_FS_HAS_MANAGED_CACHE
 	iput(sbi->managed_cache);
@@ -525,33 +510,12 @@ static void erofs_put_super(struct super_block *sb)
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
 static struct dentry *erofs_mount(
 	struct file_system_type *fs_type, int flags,
 	const char *dev_name, void *data)
 {
-	struct erofs_mount_private priv = {
-		.dev_name = dev_name,
-		.options = data
-	};
-
 	return mount_bdev(fs_type, flags, dev_name,
-		&priv, erofs_fill_super);
+		data, erofs_fill_super);
 }
 
 static void erofs_kill_sb(struct super_block *sb)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
