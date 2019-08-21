Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F1596F87
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 04:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D75F386C71;
	Wed, 21 Aug 2019 02:32:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iVOFGhDtQ0kz; Wed, 21 Aug 2019 02:32:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FD3386C6E;
	Wed, 21 Aug 2019 02:32:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14F7C1BF342
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 02:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0B8D7228DB
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 02:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VDQ2okQtqfd3 for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 02:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by silver.osuosl.org (Postfix) with ESMTPS id DE6C021F69
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 02:32:07 +0000 (UTC)
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id AAA6243E135E022D3262;
 Wed, 21 Aug 2019 10:32:03 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 21 Aug 2019 10:32:03 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 21 Aug 2019 10:32:02 +0800
Date: Wed, 21 Aug 2019 10:31:22 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 2/2] staging/erofs: Balanced braces around a few
 conditional statements.
Message-ID: <20190821023122.GA159802@architecture4>
References: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
 <1566346700-28536-3-git-send-email-caitlynannefinn@gmail.com>
 <7aaca457a3d3feb951082d0659eec568a908971f.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7aaca457a3d3feb951082d0659eec568a908971f.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme713-chm.china.huawei.com (10.1.199.109) To
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
Cc: devel@driverdev.osuosl.org, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <yuchao0@huawei.com>,
 linux-kernel@vger.kernel.org, Caitlyn <caitlynannefinn@gmail.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 20, 2019 at 07:26:46PM -0700, Joe Perches wrote:
> On Tue, 2019-08-20 at 20:18 -0400, Caitlyn wrote:
> > Balanced braces to fix some checkpath warnings in inode.c and
> > unzip_vle.c
> []
> > diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
> []
> > @@ -915,21 +915,21 @@ static int z_erofs_vle_unzip(struct super_block *sb,
> >  	mutex_lock(&work->lock);
> >  	nr_pages = work->nr_pages;
> >  
> > -	if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES))
> > +	if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES)) {
> >  		pages = pages_onstack;
> > -	else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
> > -		 mutex_trylock(&z_pagemap_global_lock))
> > +	} else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
> > +		 mutex_trylock(&z_pagemap_global_lock)) {
> 
> Extra space after tab

There is actually balanced braces in linux-next.
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/staging/erofs/zdata.c#n762

> 
> >  		pages = z_pagemap_global;
> > -	else {
> > +	} else {
> >  repeat:
> >  		pages = kvmalloc_array(nr_pages, sizeof(struct page *),
> >  				       GFP_KERNEL);
> >  
> >  		/* fallback to global pagemap for the lowmem scenario */
> >  		if (unlikely(!pages)) {
> > -			if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
> > +			if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES) {
> >  				goto repeat;
> > -			else {
> > +			} else {
> 
> Unnecessary else

There is not the "goto repeat" in linux-next anymore.
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/staging/erofs/zdata.c#n765

Thanks,
Gao Xiang

> 
> >  				mutex_lock(&z_pagemap_global_lock);
> >  				pages = z_pagemap_global;
> >  			}
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
