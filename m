Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D7A1D3215
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 16:05:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E353827085;
	Thu, 14 May 2020 14:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zFMZ-Kc4zTIg; Thu, 14 May 2020 14:05:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B7E7D26FC9;
	Thu, 14 May 2020 14:05:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E34CD1BF3D6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 14:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DA35822797
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 14:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sqIB3Om1UN15
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 14:05:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B972E2045F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 14:05:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2CBF20671;
 Thu, 14 May 2020 14:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589465117;
 bh=vi7D8odpHPsw+TiNG785ugnhclCugZpc3lIMz6dW5tQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dj/kGHb5sgxR/ZnDa93VjqDN51VZJcEt24DpUEBL6BMbqPsLs0PZ6N1sFsqgvI76E
 /BLEXqW7yODu+J1OTnTye14qNNCDcYYdkahLzJ7YAMhDSWMw5/3Rs+qqS2q4cCg2Ko
 uTla82i2aP/0UgSlcTibmY5Ge2xBWRKs5dri3Ai4=
Date: Thu, 14 May 2020 16:05:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH 2/7] staging: most: usb: remove reference to USB error
 codes
Message-ID: <20200514140515.GD2581983@kroah.com>
References: <1589463989-30029-1-git-send-email-christian.gromm@microchip.com>
 <1589463989-30029-3-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589463989-30029-3-git-send-email-christian.gromm@microchip.com>
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

On Thu, May 14, 2020 at 03:46:24PM +0200, Christian Gromm wrote:
> This patch removes the reference to the driver API file for USB error
> codes.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/most/usb/usb.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
> index 85d4fa0..76963c0 100644
> --- a/drivers/staging/most/usb/usb.c
> +++ b/drivers/staging/most/usb/usb.c
> @@ -477,8 +477,6 @@ static void hdm_write_completion(struct urb *urb)
>   * controller use to indicate a transfer has failed because of device
>   * disconnect.  In the interval before the hub driver starts disconnect
>   * processing, devices may receive such fault reports for every request.
> - *
> - * See <https://www.kernel.org/doc/Documentation/driver-api/usb/error-codes.rst>

Remove the whole text above this as well, as that just duplicates what
is written here and isn't needed at all as we all "know" the different
values that urb status returns.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
