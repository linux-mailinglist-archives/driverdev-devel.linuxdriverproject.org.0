Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDB013C800
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 16:37:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8F069204FC;
	Wed, 15 Jan 2020 15:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dT2OtvI87Rp8; Wed, 15 Jan 2020 15:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C811E204CC;
	Wed, 15 Jan 2020 15:37:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C12491BF42C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 15:37:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE15C862BC
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 15:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n0DC2suqGAlF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 15:37:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3E8E786256
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 15:37:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 651812053B;
 Wed, 15 Jan 2020 15:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579102636;
 bh=rfog6jXt5Smlbw+F8h3Qa/b/Hk5EQB82crvpNQM9BoE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GHkeqLMEdlpSMU6yuhlcm3jhzEjayM0/EseMMZpUSXQ/8FkERG0oMkZ07ARs4UVPL
 P8ie0uQBFgP3d4iYzVwQtWDiw58dOD485ARhsVzkNNIxR27o5s4pgUmLJRJONz3tkU
 10iLKiP45d2AFlLhSRlo0829Jdj8HMT/f89crpwk=
Date: Wed, 15 Jan 2020 16:37:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH RFC v3 5/9] staging: most: usb: check for NULL device
Message-ID: <20200115153713.GA3881751@kroah.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
 <1579017478-3339-6-git-send-email-christian.gromm@microchip.com>
 <20200115121801.GB3394319@kroah.com>
 <570cc8ba04c4939b57726e21064ea5a1357417cb.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <570cc8ba04c4939b57726e21064ea5a1357417cb.camel@microchip.com>
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

On Wed, Jan 15, 2020 at 03:32:48PM +0000, Christian.Gromm@microchip.com wrote:
> On Wed, 2020-01-15 at 13:18 +0100, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Tue, Jan 14, 2020 at 04:57:54PM +0100, Christian Gromm wrote:
> > > Check if the dci structer has been allocated before trying to
> > > release it.
> > > 
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > ---
> > > v3:
> > >       This patch has been added to the series.
> > > 
> > >  drivers/staging/most/usb/usb.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/most/usb/usb.c
> > > b/drivers/staging/most/usb/usb.c
> > > index fe3384a..cae7553 100644
> > > --- a/drivers/staging/most/usb/usb.c
> > > +++ b/drivers/staging/most/usb/usb.c
> > > @@ -1205,8 +1205,10 @@ static void hdm_disconnect(struct
> > > usb_interface *interface)
> > >       del_timer_sync(&mdev->link_stat_timer);
> > >       cancel_work_sync(&mdev->poll_work_obj);
> > > 
> > > -     most_put_iface_dev(mdev->dci->dev.parent);
> > > -     device_unregister(&mdev->dci->dev);
> > > +     if (mdev->dci) {
> > > +             most_put_iface_dev(mdev->dci->dev.parent);
> > > +             device_unregister(&mdev->dci->dev);
> > > +     }
> > 
> > How can this happen?
> 
> Depending on the Vendor/Product ID pair of the device that
> probes the USB driver, this 'dci' structure is being allocated
> and registered or not. And that is why this check is necessary. 
> 
> > 
> > And why is it up to the child function here to unregister the device,
> 
> Child function? The device is being registered in the probe function
> and unregistered in the disconnect function. What is wrong here?

Ah, ok, I got confused here with the previous patch, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
