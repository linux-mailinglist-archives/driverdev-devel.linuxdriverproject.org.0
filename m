Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D6B12F67E
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 11:02:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 458CE87D48;
	Fri,  3 Jan 2020 10:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MjTlOtJF6uTw; Fri,  3 Jan 2020 10:02:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 864B787B0E;
	Fri,  3 Jan 2020 10:02:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 914921BF3AF
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 10:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B2FF203E8
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 10:02:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cSH0jhuNMrlQ for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 10:02:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 07D49203BD
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 10:02:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59A3620672;
 Fri,  3 Jan 2020 10:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578045721;
 bh=QnjaAtH/NxjcaVVub/1u9F2R30f5C+2nQzwT9p0F/Vg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oarTglD1/6hFgoopSQK13kHjJxvTGohFDSZ7v+HSqa4ofeBHEgRySuo1HmscIpJov
 DT86q0M9AY1Sjx+4FF6c5+GSTFcdFAbuDkRjJaBW8ssSCRaiYJEKi/XT2r9Tz2zitS
 wyR+NKnnWfztl1V8glJ/XOjEDbqK/SdsH+glO7Gg=
Date: Fri, 3 Jan 2020 11:01:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 5/5] staging: vt6656: set usb_set_intfdata on driver fail.
Message-ID: <20200103100159.GA882686@kroah.com>
References: <6de448d7-d833-ef2e-dd7b-3ef9992fee0e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6de448d7-d833-ef2e-dd7b-3ef9992fee0e@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 20, 2019 at 09:15:59PM +0000, Malcolm Priestley wrote:
> intfdata will contain stale pointer when the device is detached after
> failed initialization when referenced in vt6656_disconnect
> 
> Provide driver access to it here and NULL it.
> 
> Cc: stable <stable@vger.kernel.org>
> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> ---
>  drivers/staging/vt6656/device.h   | 1 +
>  drivers/staging/vt6656/main_usb.c | 1 +
>  drivers/staging/vt6656/wcmd.c     | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
> index 6074ceda78bf..50e1c8918040 100644
> --- a/drivers/staging/vt6656/device.h
> +++ b/drivers/staging/vt6656/device.h
> @@ -259,6 +259,7 @@ struct vnt_private {
>  	u8 mac_hw;
>  	/* netdev */
>  	struct usb_device *usb;
> +	struct usb_interface *intf;
>  
>  	u64 tsf_time;
>  	u8 rx_rate;
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 4a5d741f94f5..9cb924c54571 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -992,6 +992,7 @@ vt6656_probe(struct usb_interface *intf, const struct usb_device_id *id)
>  	priv = hw->priv;
>  	priv->hw = hw;
>  	priv->usb = udev;
> +	priv->intf = intf;
>  
>  	vnt_set_options(priv);
>  
> diff --git a/drivers/staging/vt6656/wcmd.c b/drivers/staging/vt6656/wcmd.c
> index 3eb2f11a5de1..2c5250ca2801 100644
> --- a/drivers/staging/vt6656/wcmd.c
> +++ b/drivers/staging/vt6656/wcmd.c
> @@ -99,6 +99,7 @@ void vnt_run_command(struct work_struct *work)
>  		if (vnt_init(priv)) {
>  			/* If fail all ends TODO retry */
>  			dev_err(&priv->usb->dev, "failed to start\n");
> +			usb_set_intfdata(priv->intf, NULL);
>  			ieee80211_free_hw(priv->hw);
>  			return;
>  		}

You set this variable, but never reference it, so how does this change
any behavior in the driver?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
