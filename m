Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0157F3C0F0
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 03:37:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32D04845D9;
	Tue, 11 Jun 2019 01:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mF0sJWV-Zbg; Tue, 11 Jun 2019 01:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FC858456F;
	Tue, 11 Jun 2019 01:37:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 041C51BF406
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 01:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EFFCA845A3
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 01:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dJEnrInYkKmI for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 01:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B89578456F
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 01:37:29 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9C5ADD4619E6F16E261B;
 Tue, 11 Jun 2019 09:37:25 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.205) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun
 2019 09:37:18 +0800
Subject: Re: [PATCH 1/2] staging: erofs: add requirements field in superblock
To: Gao Xiang <gaoxiang25@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
References: <20190610093640.96705-1-gaoxiang25@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <f4fbd407-7f0d-bbe3-2283-f7291a29026a@huawei.com>
Date: Tue, 11 Jun 2019 09:37:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190610093640.96705-1-gaoxiang25@huawei.com>
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/6/10 17:36, Gao Xiang wrote:
> There are some backward incompatible optimizations pending
> for months, mainly due to on-disk format expensions.
> 
> However, we should ensure that it cannot be mounted with
> old kernels. Otherwise, it will causes unexpected behaviors.
> 
> Fixes: ba2b77a82022 ("staging: erofs: add super block operations")
> Cc: <stable@vger.kernel.org> # 4.19+
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> ---
>  drivers/staging/erofs/erofs_fs.h | 11 +++++++++--
>  drivers/staging/erofs/super.c    |  8 ++++++++
>  2 files changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/erofs/erofs_fs.h b/drivers/staging/erofs/erofs_fs.h
> index fa52898df006..531821757845 100644
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
> +/*  8 */__le32 features;        /* extra features for the image */
>  /* 12 */__u8 blkszbits;         /* support block_size == PAGE_SIZE only */
>  /* 13 */__u8 reserved;
>  
> @@ -34,8 +40,9 @@ struct erofs_super_block {
>  /* 44 */__le32 xattr_blkaddr;
>  /* 48 */__u8 uuid[16];          /* 128-bit uuid for volume */
>  /* 64 */__u8 volume_name[16];   /* volume name */
> +/* 80 */__le32 requirements;    /* all mandatory minimum requirements */
>  
> -/* 80 */__u8 reserved2[48];     /* 128 bytes */
> +/* 84 */__u8 reserved2[44];     /* 128 bytes */

Xiang,

It needs to update the comment behind reserved2, it's locating at 132 bytes.

>  } __packed;
>  
>  /*
> diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
> index f580d4ef77a1..815e5825db59 100644
> --- a/drivers/staging/erofs/super.c
> +++ b/drivers/staging/erofs/super.c
> @@ -104,6 +104,14 @@ static int superblock_read(struct super_block *sb)
>  		goto out;
>  	}
>  
> +	/* check if the kernel meets all mandatory requirements */
> +	if (le32_to_cpu(layout->requirements) & (~EROFS_ALL_REQUIREMENTS)) {
> +		errln("too old to meet minimum requirements: %x supported: %x",

It will be better to give a suggestion to user to upgrade kernel version to
match the image with new layout, otherwise it's just a little confused about
above printed message.

Thanks,

> +		      le32_to_cpu(layout->requirements),
> +		      EROFS_ALL_REQUIREMENTS);
> +		goto out;
> +	}
> +
>  	sbi->blocks = le32_to_cpu(layout->blocks);
>  	sbi->meta_blkaddr = le32_to_cpu(layout->meta_blkaddr);
>  #ifdef CONFIG_EROFS_FS_XATTR
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
