Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 789111E7DD
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 07:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DFCB230E73;
	Wed, 15 May 2019 05:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 801B0nELQgsO; Wed, 15 May 2019 05:19:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D7F4F30E07;
	Wed, 15 May 2019 05:19:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 51F481BF2A3
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 05:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F23186FE5
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 05:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WCyOPfaNO8OI for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 05:19:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42D8F86EC2
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 05:19:05 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3CBD5226CBCBF91AF1A7;
 Wed, 15 May 2019 13:19:01 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.212) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 15 May
 2019 13:18:53 +0800
Subject: Re: [PATCH] staging: erofs: drop unneeded -Wall addition
To: Masahiro Yamada <yamada.masahiro@socionext.com>
References: <20190515043123.9106-1-yamada.masahiro@socionext.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <1a69420a-95c1-bd96-4382-229bcae391b0@huawei.com>
Date: Wed, 15 May 2019 13:18:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190515043123.9106-1-yamada.masahiro@socionext.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/5/15 12:31, Masahiro Yamada wrote:
> The top level Makefile adds -Wall globally:
> 
>   KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
> 
> I see two "-Wall" added for compiling objects in drivers/staging/erofs/.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Looks good to me and sorry about adding this flag...

Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Thanks,
Gao Xiang

> ---
> 
>  drivers/staging/erofs/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/erofs/Makefile b/drivers/staging/erofs/Makefile
> index 38ab344a285e..a34248a2a16a 100644
> --- a/drivers/staging/erofs/Makefile
> +++ b/drivers/staging/erofs/Makefile
> @@ -2,7 +2,7 @@
>  
>  EROFS_VERSION = "1.0pre1"
>  
> -ccflags-y += -Wall -DEROFS_VERSION=\"$(EROFS_VERSION)\"
> +ccflags-y += -DEROFS_VERSION=\"$(EROFS_VERSION)\"
>  
>  obj-$(CONFIG_EROFS_FS) += erofs.o
>  # staging requirement: to be self-contained in its own directory
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
