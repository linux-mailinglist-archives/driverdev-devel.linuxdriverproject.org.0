Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D1E4736D
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 09:01:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25CD1878E5;
	Sun, 16 Jun 2019 07:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuZ2KvKeqPx5; Sun, 16 Jun 2019 07:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D484C8789D;
	Sun, 16 Jun 2019 07:00:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E132E1BF239
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 07:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DDC5A85CCF
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 07:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9UzDUKvG3aC8 for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 07:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A54585CC7
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 07:00:53 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3276A39927F579A48215;
 Sun, 16 Jun 2019 15:00:50 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sun, 16 Jun
 2019 15:00:43 +0800
Subject: Re: [PATCH v3 1/2] staging: erofs: add requirements field in
 superblock
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190611024220.86121-1-gaoxiang25@huawei.com>
 <20190613083541.67091-1-gaoxiang25@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <a4d587eb-c4f0-b9e5-7ece-1ac38c2735f3@huawei.com>
Date: Sun, 16 Jun 2019 15:00:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190613083541.67091-1-gaoxiang25@huawei.com>
X-Originating-IP: [10.151.23.176]
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 linux-erofs@lists.ozlabs.org, Chao Yu <yuchao0@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

Sorry for annoying... Could you help merge these two fixes? Thanks in advance...
decompression inplace optimization needs these two patches and I will integrate
erofs decompression inplace optimization later for linux-next 5.3, and try to start 
making effort on moving to fs/ directory on kernel 5.4...

Thanks,
Gao Xiang

On 2019/6/13 16:35, Gao Xiang wrote:
> There are some backward incompatible features pending
> for months, mainly due to on-disk format expensions.
> 
> However, we should ensure that it cannot be mounted with
> old kernels. Otherwise, it will causes unexpected behaviors.
> 
> Fixes: ba2b77a82022 ("staging: erofs: add super block operations")
> Cc: <stable@vger.kernel.org> # 4.19+
> Reviewed-by: Chao Yu <yuchao0@huawei.com>
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> ---
> change log v3:
>  - record requirements in erofs_sb_info for runtime use as well;
> 
> change log v2:
>  - update printed message
> 
>  drivers/staging/erofs/erofs_fs.h | 13 ++++++++++---
>  drivers/staging/erofs/internal.h |  2 ++
>  drivers/staging/erofs/super.c    | 19 +++++++++++++++++++
>  3 files changed, 31 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/erofs/erofs_fs.h b/drivers/staging/erofs/erofs_fs.h
> index fa52898df006..8ddb2b3e7d39 100644
> --- a/drivers/staging/erofs/erofs_fs.h
> +++ b/drivers/staging/erofs/erofs_fs.h
> @@ -17,10 +17,16 @@
>  #define EROFS_SUPER_MAGIC_V1    0xE0F5E1E2
>  #define EROFS_SUPER_OFFSET      1024
>  
> +/*
> + * Any bits that aren't in EROFS_ALL_REQUIREMENTS should be
> + * incompatible with this kernel version.
> + */
> +#define EROFS_ALL_REQUIREMENTS  0
> +
>  struct erofs_super_block {
>  /*  0 */__le32 magic;           /* in the little endian */
>  /*  4 */__le32 checksum;        /* crc32c(super_block) */
> -/*  8 */__le32 features;
> +/*  8 */__le32 features;        /* (aka. feature_compat) */
>  /* 12 */__u8 blkszbits;         /* support block_size == PAGE_SIZE only */
>  /* 13 */__u8 reserved;
>  
> @@ -34,9 +40,10 @@ struct erofs_super_block {
>  /* 44 */__le32 xattr_blkaddr;
>  /* 48 */__u8 uuid[16];          /* 128-bit uuid for volume */
>  /* 64 */__u8 volume_name[16];   /* volume name */
> +/* 80 */__le32 requirements;    /* (aka. feature_incompat) */
>  
> -/* 80 */__u8 reserved2[48];     /* 128 bytes */
> -} __packed;
> +/* 84 */__u8 reserved2[44];
> +} __packed;                     /* 128 bytes */
>  
>  /*
>   * erofs inode data mapping:
> diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
> index 911333cdeef4..fc732c86ecd8 100644
> --- a/drivers/staging/erofs/internal.h
> +++ b/drivers/staging/erofs/internal.h
> @@ -115,6 +115,8 @@ struct erofs_sb_info {
>  
>  	u8 uuid[16];                    /* 128-bit uuid for volume */
>  	u8 volume_name[16];             /* volume name */
> +	u32 requirements;
> +
>  	char *dev_name;
>  
>  	unsigned int mount_opt;
> diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
> index f580d4ef77a1..cadbcc11702a 100644
> --- a/drivers/staging/erofs/super.c
> +++ b/drivers/staging/erofs/super.c
> @@ -71,6 +71,22 @@ static void free_inode(struct inode *inode)
>  	kmem_cache_free(erofs_inode_cachep, vi);
>  }
>  
> +static bool check_layout_compatibility(struct super_block *sb,
> +				       struct erofs_super_block *layout)
> +{
> +	const unsigned int requirements = le32_to_cpu(layout->requirements);
> +
> +	EROFS_SB(sb)->requirements = requirements;
> +
> +	/* check if current kernel meets all mandatory requirements */
> +	if (requirements & (~EROFS_ALL_REQUIREMENTS)) {
> +		errln("unidentified requirements %x, please upgrade kernel version",
> +		      requirements & ~EROFS_ALL_REQUIREMENTS);
> +		return false;
> +	}
> +	return true;
> +}
> +
>  static int superblock_read(struct super_block *sb)
>  {
>  	struct erofs_sb_info *sbi;
> @@ -104,6 +120,9 @@ static int superblock_read(struct super_block *sb)
>  		goto out;
>  	}
>  
> +	if (!check_layout_compatibility(sb, layout))
> +		goto out;
> +
>  	sbi->blocks = le32_to_cpu(layout->blocks);
>  	sbi->meta_blkaddr = le32_to_cpu(layout->meta_blkaddr);
>  #ifdef CONFIG_EROFS_FS_XATTR
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
