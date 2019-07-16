Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3B46A4AB
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 11:13:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B52222001;
	Tue, 16 Jul 2019 09:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0uBIxfEGyEDp; Tue, 16 Jul 2019 09:13:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72BCF21FEF;
	Tue, 16 Jul 2019 09:12:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0477E1BF303
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0004087E53
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 392WnGNUowsz for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 09:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D27D987E49
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 09:12:33 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8CD5A622070CC080290F;
 Tue, 16 Jul 2019 17:12:31 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.213) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 16 Jul
 2019 17:12:24 +0800
Subject: Re: [PATCH] staging: erofs: avoid opened loop codes
To: Chao Yu <yuchao0@huawei.com>, <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
References: <20190716085259.103481-1-yuchao0@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <55609788-6615-72e1-78cc-9eadadce68a7@huawei.com>
Date: Tue, 16 Jul 2019 17:12:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190716085259.103481-1-yuchao0@huawei.com>
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
Cc: chao@kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chao,

On 2019/7/16 16:52, Chao Yu wrote:
> Use __GFP_NOFAIL to avoid opened loop codes in z_erofs_vle_unzip().
> 
> Signed-off-by: Chao Yu <yuchao0@huawei.com>
> ---
>  drivers/staging/erofs/unzip_vle.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
> index f0dab81ff816..3a0dbcb8cc9f 100644
> --- a/drivers/staging/erofs/unzip_vle.c
> +++ b/drivers/staging/erofs/unzip_vle.c
> @@ -921,18 +921,17 @@ static int z_erofs_vle_unzip(struct super_block *sb,
>  		 mutex_trylock(&z_pagemap_global_lock))
>  		pages = z_pagemap_global;
>  	else {
> -repeat:
> -		pages = kvmalloc_array(nr_pages, sizeof(struct page *),
> -				       GFP_KERNEL);
> +		gfp_t flags = GFP_KERNEL;
> +
> +		if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
> +			flags |= __GFP_NOFAIL;
> +
> +		pages = kvmalloc_array(nr_pages, sizeof(struct page *), flags);

How about omitting variable `flags' since it's only used once, or
rename it since `flags' is too general?  some thoughts?

BTW, This piece of code has been changed in
"[PATCH v2 00/24] erofs: promote erofs from staging", I will sync the code
after some guys takes a look at v2....

Thanks,
Gao Xiang

>  
>  		/* fallback to global pagemap for the lowmem scenario */
>  		if (unlikely(!pages)) {
> -			if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
> -				goto repeat;
> -			else {
> -				mutex_lock(&z_pagemap_global_lock);
> -				pages = z_pagemap_global;
> -			}
> +			mutex_lock(&z_pagemap_global_lock);
> +			pages = z_pagemap_global;
>  		}
>  	}
>  
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
