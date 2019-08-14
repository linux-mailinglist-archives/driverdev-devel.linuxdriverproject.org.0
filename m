Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F08A8C597
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 03:42:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D8A887E6C;
	Wed, 14 Aug 2019 01:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id esNsjvLxmz77; Wed, 14 Aug 2019 01:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9BA5487B4C;
	Wed, 14 Aug 2019 01:42:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FBBF1BF297
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 01:42:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B11A85F88
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 01:42:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCAHtnpX8sir for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 01:42:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1CA7785F56
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 01:42:40 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id 0FC34E592DD2A1246BF6;
 Wed, 14 Aug 2019 09:42:37 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 14 Aug 2019 09:42:36 +0800
Received: from 138 (10.175.124.28) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10; Wed, 14
 Aug 2019 09:42:36 +0800
Date: Wed, 14 Aug 2019 09:59:44 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Pratik Shinde <pratikshinde320@gmail.com>
Subject: Re: [PATCH] staging: erofs: removing an extra call to iloc() in
 fill_inode()
Message-ID: <20190814015944.GA11254@138>
References: <20190813203840.13782-1-pratikshinde320@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813203840.13782-1-pratikshinde320@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Originating-IP: [10.175.124.28]
X-ClientProxiedBy: dggeme701-chm.china.huawei.com (10.1.199.97) To
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, yuchao0@huawei.com,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Pratik,

On Wed, Aug 14, 2019 at 02:08:40AM +0530, Pratik Shinde wrote:
> in fill_inode() we call iloc() twice.Avoiding the extra call by
> storing the result.
> 
> Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>

I have no objection of this patch, but I'd like to
hear Chao/Greg's idea about this...

Thanks,
Gao Xiang

> ---
>  drivers/staging/erofs/inode.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
> index 4c3d8bf..d82ba6c 100644
> --- a/drivers/staging/erofs/inode.c
> +++ b/drivers/staging/erofs/inode.c
> @@ -167,11 +167,12 @@ static int fill_inode(struct inode *inode, int isdir)
>  	int err;
>  	erofs_blk_t blkaddr;
>  	unsigned int ofs;
> +	erofs_off_t inode_loc;
>  
>  	trace_erofs_fill_inode(inode, isdir);
> -
> -	blkaddr = erofs_blknr(iloc(sbi, vi->nid));
> -	ofs = erofs_blkoff(iloc(sbi, vi->nid));
> +	inode_loc = iloc(sbi, vi->nid);
> +	blkaddr = erofs_blknr(inode_loc);
> +	ofs = erofs_blkoff(inode_loc);
>  
>  	debugln("%s, reading inode nid %llu at %u of blkaddr %u",
>  		__func__, vi->nid, ofs, blkaddr);
> -- 
> 2.9.3
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
