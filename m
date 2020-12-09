Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C5A2D4525
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 16:12:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A839873DE;
	Wed,  9 Dec 2020 15:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ubAFQQAaxIjp; Wed,  9 Dec 2020 15:12:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 296BF87336;
	Wed,  9 Dec 2020 15:12:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 739A01BF3C6
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 15:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6BCD12E2C7
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 15:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aG29ne3dXfc4 for <devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 15:12:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DA472204EA
 for <devel@driverdev.osuosl.org>; Wed,  9 Dec 2020 15:12:24 +0000 (UTC)
Date: Wed, 9 Dec 2020 16:13:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607526744;
 bh=rXgoUOratmeo5sC/HBwZuLZjYniTRKmfBVg6PzO6Ovg=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=s7/XsrxReGM6YIKq9N103xhBUxwSSKtTkLWTynuPUPZ/N9lR71imAbF8qHHXrBPOR
 4FckpwKFbrUh8/pzXFJ/iuBHxnpOLVzK72FWQPA89/V7lH4/A2Cd0MH4WLNt3wJ94q
 UkDoZjL7k0YP3XmqkiRAqvwiYLecQRd3htqQlFGQ=
From: Greg KH <gregkh@linuxfoundation.org>
To: shaojie.dong@isrc.iscas.ac.cn
Subject: Re: [PATCH] staging: rtl8712: check register_netdev() return value
Message-ID: <X9DppHini6848vTM@kroah.com>
References: <20201209150124.23446-1-shaojie.dong@isrc.iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209150124.23446-1-shaojie.dong@isrc.iscas.ac.cn>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 09, 2020 at 11:01:24PM +0800, shaojie.dong@isrc.iscas.ac.cn wrote:
> From: "shaojie.dong" <shaojie.dong@isrc.iscas.ac.cn>
> 
> Function register_netdev() can fail, so we should check it's return value
> 
> Signed-off-by: shaojie.dong <shaojie.dong@isrc.iscas.ac.cn>

I doubt you sign your name with a '.' in it, right?

Please resend with the correct name, and using Capital letters where
needed.

> ---
>  drivers/staging/rtl8712/hal_init.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 715f1fe8b..38a3e3d44 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -45,7 +45,10 @@ static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
>  	}
>  	adapter->fw = firmware;
>  	/* firmware available - start netdev */
> -	register_netdev(adapter->pnetdev);
> +	if (register_netdev(adapter->pnetdev) != 0) {
> +		netdev_err(adapter->pnetdev, "register_netdev() failed\n");
> +		free_netdev(adapter->pnetdev);
> +	}

Did you test this to see if this really properly cleans everything up?

And your if statement can be simplified, please do so.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
