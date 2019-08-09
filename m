Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D2A87AA9
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 14:57:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3151620343;
	Fri,  9 Aug 2019 12:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3vxi2GeP2gSD; Fri,  9 Aug 2019 12:56:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3CA03227B1;
	Fri,  9 Aug 2019 12:56:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A36661BF2CF
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 12:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9F0BA85BCD
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 12:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SIcPS-noTaWv for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 12:56:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E446686A24
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 12:56:51 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4986720B7C;
 Fri,  9 Aug 2019 12:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565355411;
 bh=bGD8aEP4a64R/eBVC495DgtcJcfd4ZnnlriZrZK79Us=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ux8v/VdR2h69DjRbe8tj7TUsxRePrHFrq+HMokZcYj7W6xxGOkp6olVTYKRP2bl6l
 kgewB1RUyhSfGj30WTAcDlv/PDAuyAj5V81Si2/F9TAXe6CLgJ3+XhZ1OYqbbVgJP/
 lIw+bpHXQH72GcuoxdcPRR189Qwdf7HB1qg+yV3s=
Date: Fri, 9 Aug 2019 14:56:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH] staging: wusbcore: Fix build error without CONFIG_USB
Message-ID: <20190809125649.GA2531@kroah.com>
References: <20190809102150.66896-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809102150.66896-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 09, 2019 at 06:21:50PM +0800, YueHaibing wrote:
> USB_WUSB should depends on CONFIG_USB, otherwise building fails
> 
> drivers/staging/wusbcore/wusbhc.o: In function `wusbhc_giveback_urb':
> wusbhc.c:(.text+0xa28): undefined reference to `usb_hcd_giveback_urb'
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 71ed79b0e4be ("USB: Move wusbcore and UWB to staging as it is obsolete")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/wusbcore/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wusbcore/Kconfig b/drivers/staging/wusbcore/Kconfig
> index 056c60b..a559d02 100644
> --- a/drivers/staging/wusbcore/Kconfig
> +++ b/drivers/staging/wusbcore/Kconfig
> @@ -4,7 +4,7 @@
>  #
>  config USB_WUSB
>  	tristate "Enable Wireless USB extensions"
> -	depends on UWB
> +	depends on UWB && USB
>  	select CRYPTO
>  	select CRYPTO_AES
>  	select CRYPTO_CCM
> -- 
> 2.7.4

Ah, good catch, sorry about that!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
