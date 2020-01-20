Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D94A81424D1
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jan 2020 09:11:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD5C02042E;
	Mon, 20 Jan 2020 08:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oI-+8kJ6d7R2; Mon, 20 Jan 2020 08:11:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7002820419;
	Mon, 20 Jan 2020 08:11:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2EE31BF20F
 for <devel@linuxdriverproject.org>; Mon, 20 Jan 2020 08:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BF1B120415
 for <devel@linuxdriverproject.org>; Mon, 20 Jan 2020 08:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id duAywP3yr0F8 for <devel@linuxdriverproject.org>;
 Mon, 20 Jan 2020 08:11:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 4FDFF20408
 for <devel@driverdev.osuosl.org>; Mon, 20 Jan 2020 08:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tfnr7fgwUzY0661lGsqsca78ntQOx3kYCD8AbDmh97I=; b=cioTpemugEnAmmctrZODuxm5/
 s65pdNxpMaD19a79SmIp/2bv445UqvB83Q/GnSNwfkqYLwoYZShJag/REWd+MR9JN5J/KSrO3EvzD
 E9SCPOFedoVrfsox0Rc9VgqEqrZv0NRKGtXfLTmOETDyZe+zFe/EBF+a6C5dYil2qhLKwVbaXsjPR
 9f9uP7UnDz8b0KXvUbAsgsbs7AZLYUPKYxO9myCaSn57n8b+TG4nPUfLpw2BXfQRMIiRtPPUSB7xD
 vq/SMTGx1m7Fl3h3UF4cfXKtDIva9hUhPsai/7ksru3pgVtIlKwiIsBUN9E4AWjvq5XQ3RlDJ4+us
 5kEVEGOrQ==;
Received: from [179.179.33.167] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itS9M-00067O-G3; Mon, 20 Jan 2020 08:11:09 +0000
Date: Mon, 20 Jan 2020 09:10:50 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
Subject: Re: [PATCH v2] media: staging: rkisp1: The rkisp1 should be
 depended on CONFIG_OF
Message-ID: <20200120091050.490a4910@kernel.org>
In-Reply-To: <20200114021720.30826-1-zhangxiaoxu5@huawei.com>
References: <20200114021720.30826-1-zhangxiaoxu5@huawei.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 14 Jan 2020 10:17:20 +0800
Zhang Xiaoxu <zhangxiaoxu5@huawei.com> escreveu:

> If 'CONFIG_VIDEO_ROCKCHIP_ISP1' configured but no 'CONFIG_OF', the
> default configuration maybe:
>   # CONFIG_OF is not set
>   CONFIG_PHY_ROCKCHIP_DPHY_RX0=y
>   CONFIG_VIDEO_ROCKCHIP_ISP1=y
> 
> This will cause the following compilation errors:
>   drivers/staging/media/rkisp1/rkisp1-isp.o:
>       In function `rkisp1_mipi_csi2_start.isra.5':
>   rkisp1-isp.c:(.text+0x1238):
>       undefined reference to `phy_mipi_dphy_get_default_config'
>   make: *** [vmlinux] Error 1
> 
> Signed-off-by: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
> ---
>  drivers/staging/media/rkisp1/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/Kconfig b/drivers/staging/media/rkisp1/Kconfig
> index b859a493caba..23080b7f07a6 100644
> --- a/drivers/staging/media/rkisp1/Kconfig
> +++ b/drivers/staging/media/rkisp1/Kconfig
> @@ -3,7 +3,7 @@
>  config VIDEO_ROCKCHIP_ISP1
>  	tristate "Rockchip Image Signal Processing v1 Unit driver"
>  	depends on VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
> -	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF

Makes sense. Yet, I would prefer to have this as:

  	depends on VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API && OF
	depends on ARCH_ROCKCHIP || COMPILE_TEST

Just to let the arch-specific/compile test dependency line clearer.

>  	select VIDEOBUF2_DMA_CONTIG
>  	select VIDEOBUF2_VMALLOC
>  	select V4L2_FWNODE


Cheers,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
