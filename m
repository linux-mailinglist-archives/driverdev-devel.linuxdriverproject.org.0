Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE6522F334
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 16:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27FB4204AB;
	Mon, 27 Jul 2020 14:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXC9Lz1au1Xr; Mon, 27 Jul 2020 14:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 96AAE20461;
	Mon, 27 Jul 2020 14:59:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0601BF232
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 14:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 594DC87E76
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 14:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqAco6YT5YJ2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 14:59:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6A41586C7A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 14:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=42wu5vJ4HqsdpVpb8ocOuHtna+9P01FRJGqSJgZWXYs=; b=WQmQbm0LY9WgoL2I3BEUv2P/Sv
 t43p8gRRN7MUL0esOlDRKvQKGzrf6ExDTSwmYT7ikmwhIhxquFmd998tjWi/wJ+qgkYxr1L1oUltj
 Xl7sFwRERwYsFMKS1VgbQuE9VGcAXUMuXxYIp6UUlH6Fz2HbK+r1tF1Fy+iVb86K91itggYekb3mG
 Rf2seDNSlmbd7l64p8BXGySn+P8KNZAL3UMRgbrNPy9bOQ0zXd9q2WESAAvCKiyvaMgZ/Qd8dpVcX
 esN1HNrjvwmBIOf7L4TqGsehx+RdkLCBIV/JMDQCLuWUibb93GjxZQsrEY6BZxaNK5/RUHqYHXaWu
 3sMmGPfg==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k04as-0007go-Rf; Mon, 27 Jul 2020 14:59:11 +0000
Subject: Re: [RESEND PATCH v5] drivers: most: add USB adapter driver
To: Christian Gromm <christian.gromm@microchip.com>, gregkh@linuxfoundation.org
References: <1595838646-12674-1-git-send-email-christian.gromm@microchip.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <616b53fb-3d51-2728-6bf1-a5d5dd0c5b4d@infradead.org>
Date: Mon, 27 Jul 2020 07:59:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1595838646-12674-1-git-send-email-christian.gromm@microchip.com>
Content-Language: en-US
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi--

On 7/27/20 1:30 AM, Christian Gromm wrote:
> This patch adds the usb driver source file most_usb.c and
> modifies the Makefile and Kconfig accordingly.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
> 
>  drivers/most/Kconfig    |   12 +
>  drivers/most/Makefile   |    2 +
>  drivers/most/most_usb.c | 1170 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 1184 insertions(+)
>  create mode 100644 drivers/most/most_usb.c
> 
> diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
> index 58d7999..7b65320 100644
> --- a/drivers/most/Kconfig
> +++ b/drivers/most/Kconfig
> @@ -13,3 +13,15 @@ menuconfig MOST
>  	  module will be called most_core.
>  
>  	  If in doubt, say N here.
> +
> +if MOST
> +config MOST_USB_HDM
> +	tristate "USB"
> +	depends on USB && NET
> +	help
> +	  Say Y here if you want to connect via USB to network transceiver.
> +	  This device driver depends on the networking AIM.

What does that last sentence above mean?

> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called most_usb.
> +endif

thanks.
-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
