Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF7C1554EE
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 10:43:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6963586B49;
	Fri,  7 Feb 2020 09:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHtWznklaQFS; Fri,  7 Feb 2020 09:43:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8354186B28;
	Fri,  7 Feb 2020 09:42:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7A151BF59D
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 09:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B187B20373
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 09:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id prfTxn+BgDLf for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 09:42:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E20E2036D
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 09:42:55 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89AEE218AC;
 Fri,  7 Feb 2020 09:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581068575;
 bh=HDQ5L60vAB6fnxC23R7VIIY65feQq0PcukWb/MzlYfA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yBnER92bRTwsu8hapjEiOEqpgBfokZg4VRxtpXnAmXppD2pwfwP6qSMg/upmNNTzI
 77nPrb8uLG1Y6xE5lyB+rV74jZzRjWCcS9pWHwbtyK7ZxZ/y0Y3O8siUkbTojUmDms
 ushuDo5JVoj4wrVmTHna81BtSvbRDiObZ8SCo+Ok=
Date: Fri, 7 Feb 2020 10:42:52 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>
Subject: Re: [PATCH v2] staging: exfat: remove 'vol_type' variable.
Message-ID: <20200207094252.GA537561@kroah.com>
References: <20200130070614.11999-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130070614.11999-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, motai.hirotaka@aj.mitsubishielectric.co.jp,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 30, 2020 at 04:06:13PM +0900, Tetsuhiro Kohada wrote:
> remove 'vol_type' variable.
> 
> The following issues are described in exfat's TODO.
> > clean up the remaining vol_type checks, which are of two types:
> > some are ?: operators with magic numbers, and the rest are places
> > where we're doing stuff with '.' and '..'.
> 
> The vol_type variable is always set to 'EXFAT'.
> The variable checks are unnessesary, so remove unused code.
> 
> Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
> Reviewed-by: Mori Takahiro <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> Changes in v2:
> - Remove wrong check in exfat_readdir(), as suggested by Dan Carpenter.
> - Update comment in exfat_readdir().
> 
>  drivers/staging/exfat/exfat.h       |  1 -
>  drivers/staging/exfat/exfat_core.c  | 26 +++----------
>  drivers/staging/exfat/exfat_super.c | 60 ++++++++++-------------------
>  3 files changed, 27 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> index 4d87360fab35..28d245b10e82 100644
> --- a/drivers/staging/exfat/exfat.h
> +++ b/drivers/staging/exfat/exfat.h
> @@ -518,7 +518,6 @@ struct buf_cache_t {
>  
>  struct fs_info_t {
>  	u32      drv;                    /* drive ID */
> -	u32      vol_type;               /* volume FAT type */
>  	u32      vol_id;                 /* volume serial number */
>  
>  	u64      num_sectors;            /* num of sectors in volume */
> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> index 07b460d01334..5a686289a1db 100644
> --- a/drivers/staging/exfat/exfat_core.c
> +++ b/drivers/staging/exfat/exfat_core.c
> @@ -1560,11 +1560,7 @@ static s32 search_deleted_or_unused_entry(struct super_block *sb,
>  			if (num_empty >= num_entries) {
>  				p_fs->hint_uentry.dir = CLUSTER_32(~0);
>  				p_fs->hint_uentry.entry = -1;
> -
> -				if (p_fs->vol_type == EXFAT)
> -					return dentry - (num_entries - 1);
> -				else
> -					return dentry;
> +				return dentry - (num_entries - 1);
>  			}
>  		}
>  
> @@ -1914,7 +1910,7 @@ s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
>  
>  bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir)
>  {
> -	int i, count = 0;
> +	int i;
>  	s32 dentries_per_clu;
>  	u32 type;
>  	struct chain_t clu;
> @@ -1943,15 +1939,7 @@ bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir)
>  
>  			if (type == TYPE_UNUSED)
>  				return true;
> -			if ((type != TYPE_FILE) && (type != TYPE_DIR))
> -				continue;
> -
> -			if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
> -				return false;
> -
> -			if (p_fs->vol_type == EXFAT)
> -				return false;
> -			if ((p_dir->dir == p_fs->root_dir) || ((++count) > 2))
> +			if ((type == TYPE_FILE) || (type == TYPE_DIR))
>  				return false;
>  		}
>  
> @@ -2128,7 +2116,6 @@ s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
>  	p_fs->num_clusters = GET32(p_bpb->clu_count) + 2;
>  	/* because the cluster index starts with 2 */
>  
> -	p_fs->vol_type = EXFAT;
>  	p_fs->vol_id = GET32(p_bpb->vol_serial);
>  
>  	p_fs->root_dir = GET32(p_bpb->root_cluster);
> @@ -2165,7 +2152,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
>  
>  	clu.dir = CLUSTER_32(~0);
>  	clu.size = 0;
> -	clu.flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> +	clu.flags = 0x03;
>  
>  	/* (1) allocate a cluster */
>  	ret = exfat_alloc_cluster(sb, 1, &clu);
> @@ -2198,7 +2185,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
>  	fid->entry = dentry;
>  
>  	fid->attr = ATTR_SUBDIR;
> -	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> +	fid->flags = 0x03;
>  	fid->size = size;
>  	fid->start_clu = clu.dir;
>  
> @@ -2215,7 +2202,6 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
>  	s32 ret, dentry, num_entries;
>  	struct dos_name_t dos_name;
>  	struct super_block *sb = inode->i_sb;
> -	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
>  
>  	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname, &num_entries,
>  					   &dos_name);
> @@ -2247,7 +2233,7 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
>  	fid->entry = dentry;
>  
>  	fid->attr = ATTR_ARCHIVE | mode;
> -	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> +	fid->flags = 0x03;
>  	fid->size = 0;
>  	fid->start_clu = CLUSTER_32(~0);
>  
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index b81d2a87b82e..da4ee387b70b 100644
> --- a/drivers/staging/exfat/exfat_super.c
> +++ b/drivers/staging/exfat/exfat_super.c
> @@ -494,7 +494,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
>  	if (p_fs->used_clusters == UINT_MAX)
>  		p_fs->used_clusters = exfat_count_used_clusters(sb);
>  
> -	info->FatType = p_fs->vol_type;
> +	info->FatType = EXFAT;
>  	info->ClusterSize = p_fs->cluster_size;
>  	info->NumClusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
>  	info->UsedClusters = p_fs->used_clusters;
> @@ -602,7 +602,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
>  
>  		fid->size = exfat_get_entry_size(ep2);
>  		if ((fid->type == TYPE_FILE) && (fid->size == 0)) {
> -			fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> +			fid->flags = 0x03;
>  			fid->start_clu = CLUSTER_32(~0);
>  		} else {
>  			fid->flags = exfat_get_entry_flag(ep2);
> @@ -1095,7 +1095,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
>  	fid->size = new_size;
>  	fid->attr |= ATTR_ARCHIVE;
>  	if (new_size == 0) {
> -		fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> +		fid->flags = 0x03;
>  		fid->start_clu = CLUSTER_32(~0);
>  	}
>  
> @@ -1203,14 +1203,6 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
>  
>  	dentry = fid->entry;
>  
> -	/* check if the old file is "." or ".." */
> -	if (p_fs->vol_type != EXFAT) {
> -		if ((olddir.dir != p_fs->root_dir) && (dentry < 2)) {
> -			ret = -EPERM;
> -			goto out2;
> -		}
> -	}
> -
>  	ep = get_entry_in_dir(sb, &olddir, dentry, NULL);
>  	if (!ep) {
>  		ret = -ENOENT;
> @@ -1342,7 +1334,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
>  
>  	fid->size = 0;
>  	fid->start_clu = CLUSTER_32(~0);
> -	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> +	fid->flags = 0x03;
>  
>  #ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
>  	fs_sync(sb, true);
> @@ -2020,12 +2012,6 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
>  
>  	dentry = fid->entry;
>  
> -	/* check if the file is "." or ".." */
> -	if (p_fs->vol_type != EXFAT) {
> -		if ((dir.dir != p_fs->root_dir) && (dentry < 2))
> -			return -EPERM;
> -	}
> -
>  	/* acquire the lock for file system critical section */
>  	mutex_lock(&p_fs->v_mutex);
>  
> @@ -2048,7 +2034,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
>  
>  	fid->size = 0;
>  	fid->start_clu = CLUSTER_32(~0);
> -	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> +	fid->flags = 0x03;
>  
>  #ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
>  	fs_sync(sb, true);
> @@ -2073,8 +2059,6 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
>  {
>  	struct inode *inode = file_inode(filp);
>  	struct super_block *sb = inode->i_sb;
> -	struct exfat_sb_info *sbi = EXFAT_SB(sb);
> -	struct fs_info_t *p_fs = &sbi->fs_info;
>  	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
>  	struct dir_entry_t de;
>  	unsigned long inum;
> @@ -2084,24 +2068,22 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
>  	__lock_super(sb);
>  
>  	cpos = ctx->pos;
> -	/* Fake . and .. for the root directory. */
> -	if ((p_fs->vol_type == EXFAT) || (inode->i_ino == EXFAT_ROOT_INO)) {
> -		while (cpos < 2) {
> -			if (inode->i_ino == EXFAT_ROOT_INO)
> -				inum = EXFAT_ROOT_INO;
> -			else if (cpos == 0)
> -				inum = inode->i_ino;
> -			else /* (cpos == 1) */
> -				inum = parent_ino(filp->f_path.dentry);
> -
> -			if (!dir_emit_dots(filp, ctx))
> -				goto out;
> -			cpos++;
> -			ctx->pos++;
> -		}
> -		if (cpos == 2)
> -			cpos = 0;
> +	/* Fake . and .. for any directory. */
> +	while (cpos < 2) {
> +		if (inode->i_ino == EXFAT_ROOT_INO)
> +			inum = EXFAT_ROOT_INO;
> +		else if (cpos == 0)
> +			inum = inode->i_ino;
> +		else /* (cpos == 1) */
> +			inum = parent_ino(filp->f_path.dentry);
> +		

Always run checkpatch on your patches :(

I've fixed this trailing whitespace up on my own...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
