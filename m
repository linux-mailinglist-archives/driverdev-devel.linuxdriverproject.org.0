Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D046612F682
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 11:03:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5FF0A87D46;
	Fri,  3 Jan 2020 10:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gdTtlm1O71yF; Fri,  3 Jan 2020 10:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0B0287C88;
	Fri,  3 Jan 2020 10:03:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E87E11BF3AF
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 10:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E569B203E8
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 10:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IembL4LUCK1R for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 10:03:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0397F203BD
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 10:03:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 698DD20672;
 Fri,  3 Jan 2020 10:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578045800;
 bh=qb3IouJbx6DL+FKbvdc53N4TjvYBSn8mB0SmPXsylNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xcNyGYe3Qie6o4v5hmEgozsHFthtp7/Q4saC1pyB+YSHhxGKshEXUWP/DLjqGNMCY
 94egyk0P1AHOaognRHm+UX0D9z8es7W3QdHAQmTS9iaJ/c1daZAgvJKWIxm3oE7mPg
 /1DfAYY1V1e3B1+2PYjb8tgHH0oMfL71cSOMoJ6E=
Date: Fri, 3 Jan 2020 11:03:18 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 5/5] staging: vt6656: set usb_set_intfdata on driver fail.
Message-ID: <20200103100318.GA883102@kroah.com>
References: <6de448d7-d833-ef2e-dd7b-3ef9992fee0e@gmail.com>
 <20200103100159.GA882686@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103100159.GA882686@kroah.com>
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

On Fri, Jan 03, 2020 at 11:01:59AM +0100, Greg Kroah-Hartman wrote:
> On Fri, Dec 20, 2019 at 09:15:59PM +0000, Malcolm Priestley wrote:
> > intfdata will contain stale pointer when the device is detached after
> > failed initialization when referenced in vt6656_disconnect
> > 
> > Provide driver access to it here and NULL it.
> > 
> > Cc: stable <stable@vger.kernel.org>
> > Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> > ---
> >  drivers/staging/vt6656/device.h   | 1 +
> >  drivers/staging/vt6656/main_usb.c | 1 +
> >  drivers/staging/vt6656/wcmd.c     | 1 +
> >  3 files changed, 3 insertions(+)
> > 
> > diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
> > index 6074ceda78bf..50e1c8918040 100644
> > --- a/drivers/staging/vt6656/device.h
> > +++ b/drivers/staging/vt6656/device.h
> > @@ -259,6 +259,7 @@ struct vnt_private {
> >  	u8 mac_hw;
> >  	/* netdev */
> >  	struct usb_device *usb;
> > +	struct usb_interface *intf;
> >  
> >  	u64 tsf_time;
> >  	u8 rx_rate;
> > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > index 4a5d741f94f5..9cb924c54571 100644
> > --- a/drivers/staging/vt6656/main_usb.c
> > +++ b/drivers/staging/vt6656/main_usb.c
> > @@ -992,6 +992,7 @@ vt6656_probe(struct usb_interface *intf, const struct usb_device_id *id)
> >  	priv = hw->priv;
> >  	priv->hw = hw;
> >  	priv->usb = udev;
> > +	priv->intf = intf;
> >  
> >  	vnt_set_options(priv);
> >  
> > diff --git a/drivers/staging/vt6656/wcmd.c b/drivers/staging/vt6656/wcmd.c
> > index 3eb2f11a5de1..2c5250ca2801 100644
> > --- a/drivers/staging/vt6656/wcmd.c
> > +++ b/drivers/staging/vt6656/wcmd.c
> > @@ -99,6 +99,7 @@ void vnt_run_command(struct work_struct *work)
> >  		if (vnt_init(priv)) {
> >  			/* If fail all ends TODO retry */
> >  			dev_err(&priv->usb->dev, "failed to start\n");
> > +			usb_set_intfdata(priv->intf, NULL);
> >  			ieee80211_free_hw(priv->hw);
> >  			return;
> >  		}
> 
> You set this variable, but never reference it, so how does this change
> any behavior in the driver?

Nevermind, I've looked at the driver, it makes more sense now, sorry for
the noise.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
