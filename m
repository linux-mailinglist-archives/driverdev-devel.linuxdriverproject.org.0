Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3B3122C91
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 14:11:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFB7B878AC;
	Tue, 17 Dec 2019 13:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wj0rm8dSRz1y; Tue, 17 Dec 2019 13:11:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4C9487634;
	Tue, 17 Dec 2019 13:11:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F02351BF5DA
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 13:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB670855BD
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 13:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSV2rw4Z7QgR for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 13:11:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4975D811F9
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 13:11:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AFF1206EC;
 Tue, 17 Dec 2019 13:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576588272;
 bh=MBjhnS4pbGtJIVA4XIZ8dGLZ/kCHMLFVY+vctn19J/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ma/PKp+Vfm2PyeHEsYGuY1nqOudhrAl7uYIQB4yTW+5YYl5f4K9vx1fV8QLaZLPar
 KdKdPkWO9oSyN6/hHAeCXKtSST79v/fQWciXfvSxCNoIDyv8kplTnyjYLrC3Q7rP84
 902BnAAkGdjFR2uFx3UflxAyEG8J6h4/F967jNZ4=
Date: Tue, 17 Dec 2019 14:11:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julian Preis <julian.preis@fau.de>
Subject: Re: [PATCH v2] drivers/staging/exfat: Fix spelling mistakes
Message-ID: <20191217131109.GA3244372@kroah.com>
References: <y>
 <20191216141200.8414-1-julian.preis@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216141200.8414-1-julian.preis@fau.de>
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
Cc: devel@driverdev.osuosl.org, Johannes Weidner <johannes.weidner@fau.de>,
 linux-fsdevel@vger.kernel.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 16, 2019 at 03:12:00PM +0100, Julian Preis wrote:
> Fix spelling mistakes in exfat_core.c and exfat_super.c.
> 
> Co-developed-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Julian Preis <julian.preis@fau.de>
> ---
> Changes in v2:
> - Add email recipients according to get_maintainer.pl
> - Add patch versions
> - Use in-reply-to
> 
>  drivers/staging/exfat/exfat_core.c  |  6 +++---
>  drivers/staging/exfat/exfat_super.c | 10 +++++-----
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> index d2d3447083c7..2c688cf91eac 100644
> --- a/drivers/staging/exfat/exfat_core.c
> +++ b/drivers/staging/exfat/exfat_core.c
> @@ -1156,7 +1156,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
>  	num_entries = count;
>  
>  	while (num_entries) {
> -		/* white per sector base */
> +		/* write per sector base */
>  		remaining_byte_in_sector = (1 << p_bd->sector_size_bits) - off;
>  		copy_entries = min_t(s32,
>  				     remaining_byte_in_sector >> DENTRY_SIZE_BITS,
> @@ -1392,7 +1392,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
>  	while (num_entries) {
>  		/*
>  		 * instead of copying whole sector, we will check every entry.
> -		 * this will provide minimum stablity and consistency.
> +		 * this will provide minimum stability and consistency.
>  		 */
>  		entry_type = p_fs->fs_func->get_entry_type(ep);
>  
> @@ -1683,7 +1683,7 @@ static s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *unina
>  }
>  
>  /* return values of exfat_find_dir_entry()
> - * >= 0 : return dir entiry position with the name in dir
> + * >= 0 : return dir entry position with the name in dir
>   * -1 : (root dir, ".") it is the root dir itself
>   * -2 : entry with the name does not exist
>   */
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index 6e481908c59f..02548335ec82 100644
> --- a/drivers/staging/exfat/exfat_super.c
> +++ b/drivers/staging/exfat/exfat_super.c
> @@ -984,7 +984,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
>  
>  	brelse(tmp_bh);
>  
> -	/* (3) update the direcoty entry */
> +	/* (3) update the directory entry */
>  	es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
>  				  ES_ALL_ENTRIES, &ep);
>  	if (!es)
> @@ -1481,7 +1481,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
>  
>  			count = count_dos_name_entries(sb, &dir, TYPE_DIR);
>  			if (count < 0) {
> -				ret = count; /* propogate error upward */
> +				ret = count; /* propagate error upward */
>  				goto out;
>  			}
>  			info->NumSubdirs = count;
> @@ -1548,7 +1548,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
>  
>  		count = count_dos_name_entries(sb, &dir, TYPE_DIR);
>  		if (count < 0) {
> -			ret = count; /* propogate error upward */
> +			ret = count; /* propagate error upward */
>  			goto out;
>  		}
>  		info->NumSubdirs += count;
> @@ -3689,7 +3689,7 @@ static int exfat_fill_super(struct super_block *sb, void *data, int silent)
>  
>  	/*
>  	 * GFP_KERNEL is ok here, because while we do hold the
> -	 * supeblock lock, memory pressure can't call back into
> +	 * superblock lock, memory pressure can't call back into
>  	 * the filesystem, since we're only just about to mount
>  	 * it and have no inodes etc active!
>  	 */
> -- 
> 2.20.1

This patch does not apply to 5.5-rc2 at all.  Always work against the
latest linux-next release in order to not duplicate work that others
have done and give us a chance to apply patches to our development
trees.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
