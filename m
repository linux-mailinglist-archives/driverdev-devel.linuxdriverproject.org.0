Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAC7EA966
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 04:05:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85E5F22713;
	Thu, 31 Oct 2019 03:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZZDtNQDeXxG; Thu, 31 Oct 2019 03:05:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BAE9226CF;
	Thu, 31 Oct 2019 03:05:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 393761BF9CB
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 03:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3143585E25
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 03:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XCtp3rQ3G9TY for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 03:05:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A2D585D55
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 03:05:03 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9V34KJ0006674;
 Thu, 31 Oct 2019 03:04:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=R/Vr+Pu7rw3pGCLYsYXxZcSpf8YLnxfz+H4uDX4EdTY=;
 b=FG8284XrOi/fFAtpnlUVDfmpmKixdM5871Xw1Cvlq9tptvltbAqaC8CShQqFLxcbvuC+
 kDfFQWqn14RNiRhwx4+kHuVsbtgrZJB7gt6m5dTDShz0v7KQ6I2yV0qg9xlh9uMWyujd
 d+r/CVCSzHkjs5kJu3PSkOx7TOCTN7W3w03hhnr/nbf1NAwSlwqm+906ls++KaHNAf5h
 rkFfil9x9sYdSX78VNCSWaOUu+iOKcm0x6+DPaSiM5A8byCBP0olXRUG8VrG6fmwArlm
 tAw1aVq6Ebzm3drTl68wgwn5Z47zAhhexHNkMQBLGkkuoq8WU+ytomDChOcvjqsbCugv ZQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vxwhfr49d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 31 Oct 2019 03:04:59 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9V32bxR084941;
 Thu, 31 Oct 2019 03:04:58 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2vykw0g8xe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 31 Oct 2019 03:04:58 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9V34qKg018005;
 Thu, 31 Oct 2019 03:04:52 GMT
Received: from localhost (/67.169.218.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 30 Oct 2019 20:04:51 -0700
Date: Wed, 30 Oct 2019 20:04:49 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [RFC] errno.h: Provide EFSCORRUPTED for everybody
Message-ID: <20191031030449.GV15222@magnolia>
References: <20191031010736.113783-1-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031010736.113783-1-Valdis.Kletnieks@vt.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9426
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910310029
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9426
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910310029
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <chao@kernel.org>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 30, 2019 at 09:07:33PM -0400, Valdis Kletnieks wrote:
> Three questions: (a) ACK/NAK on this patch,

Acked-by: Darrick J. Wong <darrick.wong@oracle.com>

> (b) should it be all in one patch, or one to add to errno.h and 6
> patches for 6 filesystems?), and

I don't particularly care, but I've a slight preference for changing it
all at once so that it's obvious as a move.

> (c) if one patch, who gets to shepherd it through?

Heh. :)

I would add (d) can we do the same to EFSBADCRC, seeing as f2fs,
ext4, xfs, and jbd2 all define it the same way?

--D

> There's currently 6 filesystems that have the same #define. Move it
> into errno.h so it's defined in just one place.
> 
> Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
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
> index 84de1123e178..3cf7e54af0b7 100644
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
> index 564793c24d12..1ecd3859d040 100644
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
