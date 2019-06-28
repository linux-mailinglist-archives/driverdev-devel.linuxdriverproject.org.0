Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C6559230
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 05:50:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3B0E9226B2;
	Fri, 28 Jun 2019 03:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TTCGog-Juo43; Fri, 28 Jun 2019 03:50:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C7A5522179;
	Fri, 28 Jun 2019 03:50:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A706B1BF30F
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 03:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A44F48648E
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 03:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O08DTNUhcCbC for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 03:50:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98A6E8647E
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:50:44 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7CB03DD74085E2E76CE9;
 Fri, 28 Jun 2019 11:50:40 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.206) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun
 2019 11:50:30 +0800
Subject: Re: [PATCH] staging: erofs: don't check special inode layout
To: Yue Hu <zbestahu@gmail.com>, <yuchao0@huawei.com>,
 <gregkh@linuxfoundation.org>
References: <20190628034234.8832-1-zbestahu@gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <276837dc-b18a-6f20-fc33-d988dff5ae9f@huawei.com>
Date: Fri, 28 Jun 2019 11:50:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190628034234.8832-1-zbestahu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Miao Xie <miaoxie@huawei.com>,
 huyue2@yulong.com, linux-erofs@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Yue,

On 2019/6/28 11:42, Yue Hu wrote:
> From: Yue Hu <huyue2@yulong.com>
> 
> Currently, we will check if inode layout is compression or inline if
> the inode is special in fill_inode(). Also set ->i_mapping->a_ops for
> it. That is pointless since the both modes won't be set for special
> inode when creating EROFS filesystem image. So, let's avoid it.
> 
> Signed-off-by: Yue Hu <huyue2@yulong.com>

Have you test this patch with some actual image with legacy mkfs since
new mkfs framework have not supported special inode...

I think that is fine in priciple, however, in case to introduce some potential
issues, I will test this patch later. I will give a Reviewed-by tag after I tested
this patch.

Thanks,
Gao Xiang

> ---
>  drivers/staging/erofs/inode.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
> index 1433f25..2fe0f6d 100644
> --- a/drivers/staging/erofs/inode.c
> +++ b/drivers/staging/erofs/inode.c
> @@ -205,6 +205,7 @@ static int fill_inode(struct inode *inode, int isdir)
>  			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
>  			inode->i_op = &erofs_generic_iops;
>  			init_special_inode(inode, inode->i_mode, inode->i_rdev);
> +			goto out_unlock;
>  		} else {
>  			err = -EIO;
>  			goto out_unlock;
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
