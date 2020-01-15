Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC2C13C04B
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:18:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8024287A43;
	Wed, 15 Jan 2020 12:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6+WxaqeGFMIS; Wed, 15 Jan 2020 12:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4690A87A0A;
	Wed, 15 Jan 2020 12:18:09 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0D991BF5A0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:18:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA6D886156
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5N40zY5pFBhG
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:18:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BDDFD86117
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:18:04 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DC27207FF;
 Wed, 15 Jan 2020 12:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579090684;
 bh=UkqMz/+5zdANRFwaBysZJ/WcQ8FHzdnzpk+mbNW33Ls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pQHKFz4OMBnpCduj5EQnXzjtd6FWeN1si59XfGUJ4brvqDPU8eoVqq4Ex33BEWnZF
 9y5u660Ii/W9hDE1zcyU5+/SVoqkRFneraniHq2oXL+dtaSITUUFCdbxtf5aX9VD+d
 naum4i81mJIXAHx7r5jvE35RXBz/XVQakFWokb04=
Date: Wed, 15 Jan 2020 13:18:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC v3 5/9] staging: most: usb: check for NULL device
Message-ID: <20200115121801.GB3394319@kroah.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
 <1579017478-3339-6-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579017478-3339-6-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 14, 2020 at 04:57:54PM +0100, Christian Gromm wrote:
> Check if the dci structer has been allocated before trying to release it.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
> v3:
> 	This patch has been added to the series.
> 
>  drivers/staging/most/usb/usb.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
> index fe3384a..cae7553 100644
> --- a/drivers/staging/most/usb/usb.c
> +++ b/drivers/staging/most/usb/usb.c
> @@ -1205,8 +1205,10 @@ static void hdm_disconnect(struct usb_interface *interface)
>  	del_timer_sync(&mdev->link_stat_timer);
>  	cancel_work_sync(&mdev->poll_work_obj);
>  
> -	most_put_iface_dev(mdev->dci->dev.parent);
> -	device_unregister(&mdev->dci->dev);
> +	if (mdev->dci) {
> +		most_put_iface_dev(mdev->dci->dev.parent);
> +		device_unregister(&mdev->dci->dev);
> +	}

How can this happen?

And why is it up to the child function here to unregister the device,
that feels wrong, and is further justification to me that your previous
patch is going the wrong way here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
