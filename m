Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4592A2EE
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 07:00:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F12888CAD;
	Sat, 25 May 2019 05:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AzyLoBm0X9yf; Sat, 25 May 2019 05:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA14088BED;
	Sat, 25 May 2019 05:00:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 735391BF292
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 05:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 705A088BF6
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 05:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5vOi-Kau9w9k for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 05:00:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C4EBA88BED
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 05:00:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1488B2177E;
 Sat, 25 May 2019 05:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558760420;
 bh=mIXbDXcQPMJSc4UESXKNywctOSB6Moa7tm6Jt46hGR4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=00FgJh01/Thls1CggdEZBj8yQBkONkK7KKarlpioeuDiFOyer6WSHGtYbOSnyrJ60
 tHdAcyGob9MFtufyHhv2JzLmHzs4vgpLTUtssIJEZ39/jF1EUOI8wN9wbtFPPR0FaK
 DQE+bvaZ6bUXPRsbh2hnM2kBUCyZPQi+EfUR64ok=
Date: Sat, 25 May 2019 07:00:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 2/2] staging: kpc2000: add missing dependencies for kpc2000
Message-ID: <20190525050017.GA18684@kroah.com>
References: <20190524203058.30022-1-simon@nikanor.nu>
 <20190524203058.30022-3-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524203058.30022-3-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 10:30:58PM +0200, Simon Sandstr=F6m wrote:
> Fixes build errors:
> =

> ERROR: "mfd_remove_devices" [kpc2000.ko] undefined!
> ERROR: "uio_unregister_device" [kpc2000.ko] undefined!
> ERROR: "mfd_add_devices" [kpc2000.ko] undefined!
> ERROR: "__uio_register_device" [kpc2000.ko] undefined!
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
>  drivers/staging/kpc2000/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/staging/kpc2000/Kconfig b/drivers/staging/kpc2000/Kc=
onfig
> index c463d232f2b4..5188b56123ab 100644
> --- a/drivers/staging/kpc2000/Kconfig
> +++ b/drivers/staging/kpc2000/Kconfig
> @@ -3,6 +3,8 @@
>  config KPC2000
>  	bool "Daktronics KPC Device support"
>  	depends on PCI
> +	select MFD_CORE
> +	select UIO
>  	help
>  	  Select this if you wish to use the Daktronics KPC PCI devices
>  =


This is already in linux-next (in a different form), are you sure you
are working against the latest kernel tree?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
