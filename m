Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F086ED76F
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 03:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94DFB8810B;
	Mon,  4 Nov 2019 02:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UE1pM2Glgiic; Mon,  4 Nov 2019 02:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B76C87B60;
	Mon,  4 Nov 2019 02:07:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D92B1BF277
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 02:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 389688A396
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 02:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id THHdoxLhEZYv for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 02:07:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E93F28A324
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 02:07:17 +0000 (UTC)
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 285DD3B9D186940F5AF8;
 Mon,  4 Nov 2019 10:07:14 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 4 Nov 2019 10:07:13 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Mon, 4 Nov 2019 10:07:13 +0800
Date: Mon, 4 Nov 2019 10:09:53 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH 10/10] errno.h: Provide EFSCORRUPTED for everybody
Message-ID: <20191104020950.GA207519@architecture4>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
 <20191104014510.102356-11-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104014510.102356-11-Valdis.Kletnieks@vt.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme702-chm.china.huawei.com (10.1.199.98) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
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
Cc: devel@driverdev.osuosl.org, linux-arch@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, Arnd Bergmann <arnd@arndb.de>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <chao@kernel.org>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-fsdevel@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Nov 03, 2019 at 08:45:06PM -0500, Valdis Kletnieks wrote:
> There's currently 6 filesystems that have the same #define. Move it
> into errno.h so it's defined in just one place.
> 
> Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
> Acked-by: Darrick J. Wong <darrick.wong@oracle.com>
> Reviewed-by: Jan Kara <jack@suse.cz>
> Acked-by: Theodore Ts'o <tytso@mit.edu>

For EROFS part,

Acked-by: Gao Xiang <gaoxiang25@huawei.com>

> ---
>  drivers/staging/exfat/exfat.h    | 2 --
>  fs/erofs/internal.h              | 2 --
>  fs/ext4/ext4.h                   | 1 -
>  fs/f2fs/f2fs.h                   | 1 -
>  fs/xfs/xfs_linux.h               | 1 -
>  include/linux/jbd2.h             | 1 -
>  include/uapi/asm-generic/errno.h | 1 +
>  7 files changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> index 72cf40e123de..58b091a077e8 100644
> --- a/drivers/staging/exfat/exfat.h
> +++ b/drivers/staging/exfat/exfat.h
> @@ -30,8 +30,6 @@
>  #undef DEBUG
>  #endif
>  
> -#define EFSCORRUPTED	EUCLEAN		/* Filesystem is corrupted */
> -
>  #define DENTRY_SIZE		32	/* dir entry size */
>  #define DENTRY_SIZE_BITS	5
>  
> diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
> index 544a453f3076..3980026a8882 100644
> --- a/fs/erofs/internal.h
> +++ b/fs/erofs/internal.h
> @@ -425,7 +425,5 @@ static inline int z_erofs_init_zip_subsystem(void) { return 0; }
>  static inline void z_erofs_exit_zip_subsystem(void) {}
>  #endif	/* !CONFIG_EROFS_FS_ZIP */
>  
> -#define EFSCORRUPTED    EUCLEAN         /* Filesystem is corrupted */
> -
>  #endif	/* __EROFS_INTERNAL_H */
>  
> diff --git a/fs/ext4/ext4.h b/fs/ext4/ext4.h
> index 03db3e71676c..a86c2585457d 100644
> --- a/fs/ext4/ext4.h
> +++ b/fs/ext4/ext4.h
> @@ -3396,6 +3396,5 @@ static inline int ext4_buffer_uptodate(struct buffer_head *bh)
>  #endif	/* __KERNEL__ */
>  
>  #define EFSBADCRC	EBADMSG		/* Bad CRC detected */
> -#define EFSCORRUPTED	EUCLEAN		/* Filesystem is corrupted */
>  
>  #endif	/* _EXT4_H */
> diff --git a/fs/f2fs/f2fs.h b/fs/f2fs/f2fs.h
> index 4024790028aa..04ebe77569a3 100644
> --- a/fs/f2fs/f2fs.h
> +++ b/fs/f2fs/f2fs.h
> @@ -3752,6 +3752,5 @@ static inline bool is_journalled_quota(struct f2fs_sb_info *sbi)
>  }
>  
>  #define EFSBADCRC	EBADMSG		/* Bad CRC detected */
> -#define EFSCORRUPTED	EUCLEAN		/* Filesystem is corrupted */
>  
>  #endif /* _LINUX_F2FS_H */
> diff --git a/fs/xfs/xfs_linux.h b/fs/xfs/xfs_linux.h
> index ca15105681ca..3409d02a7d21 100644
> --- a/fs/xfs/xfs_linux.h
> +++ b/fs/xfs/xfs_linux.h
> @@ -123,7 +123,6 @@ typedef __u32			xfs_nlink_t;
>  
>  #define ENOATTR		ENODATA		/* Attribute not found */
>  #define EWRONGFS	EINVAL		/* Mount with wrong filesystem type */
> -#define EFSCORRUPTED	EUCLEAN		/* Filesystem is corrupted */
>  #define EFSBADCRC	EBADMSG		/* Bad CRC detected */
>  
>  #define SYNCHRONIZE()	barrier()
> diff --git a/include/linux/jbd2.h b/include/linux/jbd2.h
> index 603fbc4e2f70..69411d7e0431 100644
> --- a/include/linux/jbd2.h
> +++ b/include/linux/jbd2.h
> @@ -1657,6 +1657,5 @@ static inline tid_t  jbd2_get_latest_transaction(journal_t *journal)
>  #endif	/* __KERNEL__ */
>  
>  #define EFSBADCRC	EBADMSG		/* Bad CRC detected */
> -#define EFSCORRUPTED	EUCLEAN		/* Filesystem is corrupted */
>  
>  #endif	/* _LINUX_JBD2_H */
> diff --git a/include/uapi/asm-generic/errno.h b/include/uapi/asm-generic/errno.h
> index cf9c51ac49f9..1d5ffdf54cb0 100644
> --- a/include/uapi/asm-generic/errno.h
> +++ b/include/uapi/asm-generic/errno.h
> @@ -98,6 +98,7 @@
>  #define	EINPROGRESS	115	/* Operation now in progress */
>  #define	ESTALE		116	/* Stale file handle */
>  #define	EUCLEAN		117	/* Structure needs cleaning */
> +#define	EFSCORRUPTED	EUCLEAN

BTW, minor, how about adding some comments right after EFSCORRUPTED
like the other error codes although it's now an alias...
Just my personal thought.

Thanks,
Gao Xiang

>  #define	ENOTNAM		118	/* Not a XENIX named type file */
>  #define	ENAVAIL		119	/* No XENIX semaphores available */
>  #define	EISNAM		120	/* Is a named type file */
> -- 
> 2.24.0.rc1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
