Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF687BB56
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 10:15:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4E0187D05;
	Wed, 31 Jul 2019 08:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BRp8bJ5V8H4q; Wed, 31 Jul 2019 08:15:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94C3387C89;
	Wed, 31 Jul 2019 08:15:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 883D21BF476
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 08:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 81A4F865D3
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 08:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wbw7IPFBWoMl for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 08:15:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BA70486501
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 08:15:47 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0586160CDF74577FA9B7;
 Wed, 31 Jul 2019 16:15:44 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 16:15:37 +0800
Subject: Re: [PATCH 11/22] staging: erofs: kill all failure handling in
 fill_super()
To: Gao Xiang <gaoxiang25@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
 <20190729065159.62378-12-gaoxiang25@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <56bdc87a-635f-e596-584e-fca0acb4a69e@huawei.com>
Date: Wed, 31 Jul 2019 16:15:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190729065159.62378-12-gaoxiang25@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.134.22.195]
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
Cc: weidu.du@huawei.com, Miao Xie <miaoxie@huawei.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/7/29 14:51, Gao Xiang wrote:
> .kill_sb() will do that instead in order to remove duplicated code.
> 
> Note that the initialzation of managed_cache is now moved
> after s_root is assigned since it's more preferred to iput()
> in .put_super() and all inodes should be evicted before
> the end of generic_shutdown_super(sb).
> 
> Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> ---
>  drivers/staging/erofs/super.c | 121 +++++++++++++++-------------------
>  1 file changed, 53 insertions(+), 68 deletions(-)
> 
> diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
> index bfb6e1e09781..af5d87793e4d 100644
> --- a/drivers/staging/erofs/super.c
> +++ b/drivers/staging/erofs/super.c
> @@ -343,51 +343,52 @@ static const struct address_space_operations managed_cache_aops = {
>  	.invalidatepage = managed_cache_invalidatepage,
>  };
>  
> -static struct inode *erofs_init_managed_cache(struct super_block *sb)
> +static int erofs_init_managed_cache(struct super_block *sb)
>  {
> -	struct inode *inode = new_inode(sb);
> +	struct erofs_sb_info *const sbi = EROFS_SB(sb);
> +	struct inode *const inode = new_inode(sb);
>  
>  	if (unlikely(!inode))
> -		return ERR_PTR(-ENOMEM);
> +		return -ENOMEM;
>  
>  	set_nlink(inode, 1);
>  	inode->i_size = OFFSET_MAX;
>  
>  	inode->i_mapping->a_ops = &managed_cache_aops;
>  	mapping_set_gfp_mask(inode->i_mapping,
> -			     GFP_NOFS | __GFP_HIGHMEM |
> -			     __GFP_MOVABLE |  __GFP_NOFAIL);
> -	return inode;
> +			     GFP_NOFS | __GFP_HIGHMEM | __GFP_MOVABLE);

It looks above change is not belong to this patch?

Otherwise, it looks good to me.

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,

> +	sbi->managed_cache = inode;
> +	return 0;
>  }
> -
> +#else
> +static int erofs_init_managed_cache(struct super_block *sb) { return 0; }
>  #endif
>  
>  static int erofs_fill_super(struct super_block *sb, void *data, int silent)
>  {
>  	struct inode *inode;
>  	struct erofs_sb_info *sbi;
> -	int err = -EINVAL;
> +	int err;
>  
>  	infoln("fill_super, device -> %s", sb->s_id);
>  	infoln("options -> %s", (char *)data);
>  
> +	sb->s_magic = EROFS_SUPER_MAGIC;
> +
>  	if (unlikely(!sb_set_blocksize(sb, EROFS_BLKSIZ))) {
>  		errln("failed to set erofs blksize");
> -		goto err;
> +		return -EINVAL;
>  	}
>  
>  	sbi = kzalloc(sizeof(*sbi), GFP_KERNEL);
> -	if (unlikely(!sbi)) {
> -		err = -ENOMEM;
> -		goto err;
> -	}
> -	sb->s_fs_info = sbi;
> +	if (unlikely(!sbi))
> +		return -ENOMEM;
>  
> +	sb->s_fs_info = sbi;
>  	err = superblock_read(sb);
>  	if (err)
> -		goto err_sbread;
> +		return err;
>  
> -	sb->s_magic = EROFS_SUPER_MAGIC;
>  	sb->s_flags |= SB_RDONLY | SB_NOATIME;
>  	sb->s_maxbytes = MAX_LFS_FILESIZE;
>  	sb->s_time_gran = 1;
> @@ -397,13 +398,12 @@ static int erofs_fill_super(struct super_block *sb, void *data, int silent)
>  #ifdef CONFIG_EROFS_FS_XATTR
>  	sb->s_xattr = erofs_xattr_handlers;
>  #endif
> -
>  	/* set erofs default mount options */
>  	default_options(sbi);
>  
>  	err = parse_options(sb, data);
> -	if (err)
> -		goto err_parseopt;
> +	if (unlikely(err))
> +		return err;
>  
>  	if (!silent)
>  		infoln("root inode @ nid %llu", ROOT_NID(sbi));
> @@ -417,93 +417,78 @@ static int erofs_fill_super(struct super_block *sb, void *data, int silent)
>  	INIT_RADIX_TREE(&sbi->workstn_tree, GFP_ATOMIC);
>  #endif
>  
> -#ifdef EROFS_FS_HAS_MANAGED_CACHE
> -	sbi->managed_cache = erofs_init_managed_cache(sb);
> -	if (IS_ERR(sbi->managed_cache)) {
> -		err = PTR_ERR(sbi->managed_cache);
> -		goto err_init_managed_cache;
> -	}
> -#endif
> -
>  	/* get the root inode */
>  	inode = erofs_iget(sb, ROOT_NID(sbi), true);
> -	if (IS_ERR(inode)) {
> -		err = PTR_ERR(inode);
> -		goto err_iget;
> -	}
> +	if (IS_ERR(inode))
> +		return PTR_ERR(inode);
>  
> -	if (!S_ISDIR(inode->i_mode)) {
> +	if (unlikely(!S_ISDIR(inode->i_mode))) {
>  		errln("rootino(nid %llu) is not a directory(i_mode %o)",
>  		      ROOT_NID(sbi), inode->i_mode);
> -		err = -EINVAL;
>  		iput(inode);
> -		goto err_iget;
> +		return -EINVAL;
>  	}
>  
>  	sb->s_root = d_make_root(inode);
> -	if (!sb->s_root) {
> -		err = -ENOMEM;
> -		goto err_iget;
> -	}
> +	if (unlikely(!sb->s_root))
> +		return -ENOMEM;
>  
>  	erofs_shrinker_register(sb);
> +	/* sb->s_umount is already locked, SB_ACTIVE and SB_BORN are not set */
> +	err = erofs_init_managed_cache(sb);
> +	if (unlikely(err))
> +		return err;
>  
>  	if (!silent)
>  		infoln("mounted on %s with opts: %s.", sb->s_id, (char *)data);
>  	return 0;
> -	/*
> -	 * please add a label for each exit point and use
> -	 * the following name convention, thus new features
> -	 * can be integrated easily without renaming labels.
> -	 */
> -err_iget:
> -#ifdef EROFS_FS_HAS_MANAGED_CACHE
> -	iput(sbi->managed_cache);
> -err_init_managed_cache:
> -#endif
> -err_parseopt:
> -err_sbread:
> -	sb->s_fs_info = NULL;
> -	kfree(sbi);
> -err:
> -	return err;
> +}
> +
> +static struct dentry *erofs_mount(struct file_system_type *fs_type, int flags,
> +				  const char *dev_name, void *data)
> +{
> +	return mount_bdev(fs_type, flags, dev_name, data, erofs_fill_super);
>  }
>  
>  /*
>   * could be triggered after deactivate_locked_super()
>   * is called, thus including umount and failed to initialize.
>   */
> -static void erofs_put_super(struct super_block *sb)
> +static void erofs_kill_sb(struct super_block *sb)
>  {
> -	struct erofs_sb_info *sbi = EROFS_SB(sb);
> +	struct erofs_sb_info *sbi;
> +
> +	WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);
> +	infoln("unmounting for %s", sb->s_id);
>  
> -	/* for cases which are failed in "read_super" */
> +	kill_block_super(sb);
> +
> +	sbi = EROFS_SB(sb);
>  	if (!sbi)
>  		return;
> +	kfree(sbi);
> +	sb->s_fs_info = NULL;
> +}
>  
> -	WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);
> +/* called when ->s_root is non-NULL */
> +static void erofs_put_super(struct super_block *sb)
> +{
> +	struct erofs_sb_info *const sbi = EROFS_SB(sb);
>  
> -	infoln("unmounted for %s", sb->s_id);
> +	DBG_BUGON(!sbi);
>  
>  	erofs_shrinker_unregister(sb);
>  #ifdef EROFS_FS_HAS_MANAGED_CACHE
>  	iput(sbi->managed_cache);
> +	sbi->managed_cache = NULL;
>  #endif
> -	kfree(sbi);
> -	sb->s_fs_info = NULL;
> -}
> -
> -static struct dentry *erofs_mount(struct file_system_type *fs_type, int flags,
> -				  const char *dev_name, void *data)
> -{
> -	return mount_bdev(fs_type, flags, dev_name, data, erofs_fill_super);
>  }
>  
>  static struct file_system_type erofs_fs_type = {
>  	.owner          = THIS_MODULE,
>  	.name           = "erofs",
>  	.mount          = erofs_mount,
> -	.kill_sb        = kill_block_super,
> +	.kill_sb        = erofs_kill_sb,
>  	.fs_flags       = FS_REQUIRES_DEV,
>  };
>  MODULE_ALIAS_FS("erofs");
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
