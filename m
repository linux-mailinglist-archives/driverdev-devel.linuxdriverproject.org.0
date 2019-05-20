Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7824922F3C
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:49:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F92087360;
	Mon, 20 May 2019 08:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C0bDR+hfM6R8; Mon, 20 May 2019 08:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE2378715D;
	Mon, 20 May 2019 08:48:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3CAC1BF83A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1C6584E8C
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvjk1g1TGyxb for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:48:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 60767847D3
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:48:53 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD81E206BA;
 Mon, 20 May 2019 08:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342133;
 bh=NcGHUP5bfjC+KvBqbjpW3Rz+kDpoXWvwotRjq0NhZes=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bE9NkMdtE28blg0UokXhR1YvVgQAauR4AcLN+luyqhyUXtYu9J9qrZO/TytqsOQe8
 WrV/rGyWHaB74clMMqKclgBcIRI2ALkWmg7/p9EOv9tD1JFpeEss3X+nnAxqHLtgAD
 R7EPilrv+UyoNe/DOEIrOkU/bfSkaFas5p2ONIt4=
Date: Mon, 20 May 2019 10:48:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Moses Christopher <moseschristopherb@gmail.com>
Subject: Re: [PATCH v1 5/6] staging: rtl8723bs: use help instead of
 ---help--- in Kconfig
Message-ID: <20190520084850.GA703@kroah.com>
References: <20190518063341.11178-1-moseschristopherb@gmail.com>
 <20190518063341.11178-6-moseschristopherb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190518063341.11178-6-moseschristopherb@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, insafonov@gmail.com,
 sparmaintainer@unisys.com, linux-kernel@vger.kernel.org, hdegoede@redhat.com,
 forest@alittletooquiet.net, yangbo.lu@nxp.com, christian.gromm@microchip.com,
 davem@davemloft.net, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 18, 2019 at 12:03:40PM +0530, Moses Christopher wrote:
>   - Resolve the following warning from the Kconfig,
>     "WARNING: prefer 'help' over '---help---' for new help texts"
> 
> Signed-off-by: Moses Christopher <moseschristopherb@gmail.com>
> ---
>  drivers/staging/rtl8723bs/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723bs/Kconfig b/drivers/staging/rtl8723bs/Kconfig
> index 744091d46f4c..a88467334dac 100644
> --- a/drivers/staging/rtl8723bs/Kconfig
> +++ b/drivers/staging/rtl8723bs/Kconfig
> @@ -5,7 +5,7 @@ config RTL8723BS
>  	depends on m
>  	select WIRELESS_EXT
>  	select WEXT_PRIV
> -	---help---
> +	help
>  	This option enables support for RTL8723BS SDIO drivers, such as
>  	the wifi found on the 1st gen Intel Compute Stick, the CHIP
>  	and many other Intel Atom and ARM based devices.

No indentation here?  Why not?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
