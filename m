Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EAB2C8E6
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 16:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A3C468532B;
	Tue, 28 May 2019 14:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4WTJlBmkO6ZP; Tue, 28 May 2019 14:36:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 384598523B;
	Tue, 28 May 2019 14:36:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DF201BF308
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 14:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 79B9B87804
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 14:36:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkFod9rX6ivn for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 14:36:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB72D877D1
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 14:36:52 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D565B3A651F320E2EBF3;
 Tue, 28 May 2019 22:36:49 +0800 (CST)
Received: from [127.0.0.1] (10.177.31.96) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 22:36:44 +0800
Subject: Re: [PATCH v2 -next] staging: fieldbus: Fix build error without
 CONFIG_REGMAP_MMIO
To: <TheSven73@gmail.com>, <gregkh@linuxfoundation.org>
References: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
 <20190528142912.13224-1-yuehaibing@huawei.com>
From: YueHaibing <yuehaibing@huawei.com>
Message-ID: <428cde8a-00cd-9023-9f09-deec4834507d@huawei.com>
Date: Tue, 28 May 2019 22:36:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190528142912.13224-1-yuehaibing@huawei.com>
X-Originating-IP: [10.177.31.96]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sorry, this is broken, Pls igore this.

On 2019/5/28 22:29, YueHaibing wrote:
> Fix gcc build error while CONFIG_REGMAP_MMIO is not set
> 
> drivers/staging/fieldbus/anybuss/arcx-anybus.o: In function `controller_probe':
> arcx-anybus.c: undefined reference to `__devm_regmap_init_mmio_clk'
> 
> Select REGMAP_MMIO to fix it.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 2411a336c8ce ("staging: fieldbus: arcx-anybus: change custom -> mmio regmap")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
> v2: fix patch style warning
> ---
>  drivers/staging/fieldbus/anybuss/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/fieldbus/anybuss/Kconfig b/drivers/staging/fieldbus/anybuss/Kconfig
> index 8bc3d9a..635a0a7 100644
> --- a/drivers/staging/fieldbus/anybuss/Kconfig
> +++ b/drivers/staging/fieldbus/anybuss/Kconfig
> @@ -14,6 +14,7 @@ if HMS_ANYBUSS_BUS
>  config ARCX_ANYBUS_CONTROLLER
>  	tristate "Arcx Anybus-S Controller"
>  	depends on OF && GPIOLIB && HAS_IOMEM && REGULATOR
> +	select REGMAP_MMIO
>  	help
>  	  Select this to get support for the Arcx Anybus controller.
>  	  It connects to the SoC via a parallel memory bus, and
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
