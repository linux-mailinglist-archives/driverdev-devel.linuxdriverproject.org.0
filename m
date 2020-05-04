Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0701C3E73
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 17:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AF818693D;
	Mon,  4 May 2020 15:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4GKQDncLukA; Mon,  4 May 2020 15:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C26D7868C0;
	Mon,  4 May 2020 15:26:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40B5A1BF3E0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3ADF320412
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id crk912Nw5NSb
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:26:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 40F89203AD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:26:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A771206D9;
 Mon,  4 May 2020 15:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588606010;
 bh=yASSrZveVl4pJub8DvxyaADhNRslcWuk9J5uFtfjISA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MAFN/SEixK7t8g/wTOF5MPGPPFMWFkmHZpP+AOKEJMb60i6fTeSXys6P3U+5ckYJc
 yuYh8UH1+JSh3I2p4jG9G2AmYljLtCu8bocdGO3iwcVzV9NLjejPySXOq7sOxtL3m1
 l5oS7KyJ1vHK/juSSqNI9icN5SLOsPfRxd42VbKs=
Date: Mon, 4 May 2020 17:26:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH] staging: most: usb: fix exception handling
Message-ID: <20200504152647.GA2652288@kroah.com>
References: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
 <20200504135546.GB2311301@kroah.com>
 <d73c0031012925edca79d5d2a8419d2f2ffc7f5c.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d73c0031012925edca79d5d2a8419d2f2ffc7f5c.camel@microchip.com>
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

On Mon, May 04, 2020 at 03:22:08PM +0000, Christian.Gromm@microchip.com wrote:
> On Mon, 2020-05-04 at 15:55 +0200, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Mon, May 04, 2020 at 03:44:00PM +0200, Christian Gromm wrote:
> > > This patch fixes error handling on function parameters.
> > > 
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > ---
> > >  drivers/staging/most/usb/usb.c | 33 +++++++++++++++++-------------
> > > ---
> > >  1 file changed, 17 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/staging/most/usb/usb.c
> > > b/drivers/staging/most/usb/usb.c
> > > index e8c5a8c..e5276524 100644
> > > --- a/drivers/staging/most/usb/usb.c
> > > +++ b/drivers/staging/most/usb/usb.c
> > > @@ -229,14 +229,14 @@ static unsigned int
> > > get_stream_frame_size(struct most_channel_config *cfg)
> > >   */
> > >  static int hdm_poison_channel(struct most_interface *iface, int
> > > channel)
> > >  {
> > > -     struct most_dev *mdev = to_mdev(iface);
> > > +     struct most_dev *mdev;
> > >       unsigned long flags;
> > >       spinlock_t *lock; /* temp. lock */
> > > 
> > >       if (unlikely(!iface)) {
> > > -             dev_warn(&mdev->usb_device->dev, "Poison: Bad
> > > interface.\n");
> > > -             return -EIO;
> > > +             return -EFAULT;
> > 
> > -EFAULT is ONLY for when you have an error with copying memory
> > to/from
> > userspace.
> 
> Ok.
> 
> > 
> > This should just be -EINVAL, right?
> > 
> > And how can iface ever be NULL?
> 
> It should never become NULL. But you never know, right?
> Too paranoid?

Yes, never check things that can not happen otherwise all functions
would be nothing but checking parameters all the time.

So just drop this check entirely.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
