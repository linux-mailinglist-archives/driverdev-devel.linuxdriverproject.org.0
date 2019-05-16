Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE64D2034F
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 12:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA9EF87296;
	Thu, 16 May 2019 10:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6pIoLHtjwcpc; Thu, 16 May 2019 10:20:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DF9D87198;
	Thu, 16 May 2019 10:19:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4661BF352
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 10:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 30C3D871A6
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 10:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LnCXiM+bFrLu for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 10:19:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4263887198
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 10:19:56 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A2E1205ED;
 Thu, 16 May 2019 10:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558001996;
 bh=GNeZk44iUjZpvezqnuLxWMKIOov7x5+FAxK5yoRztyA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cvujyhHb+Shb0guDQ9USF9pVhy8GIqVvT7ze92sQe7HWnl+yu6cTJorhjB3Kf6xpa
 qz0hoxpAOIvy3Y2rRf/DThinRBTO9QC+fWrTauvjXL0yGC88V9UmxWlZ7eC0mXwgkB
 /klQUdWkURbxFEXBkb5GYhprJW+AnaEvPeLRQXPw=
Date: Thu, 16 May 2019 12:19:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Subject: Re: [PATCH] staging: vt6656: remove unused variable
Message-ID: <20190516101953.GA22358@kroah.com>
References: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
 <20190516093951.GA19798@kroah.com>
 <20190516095035.GA1692@qd-ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516095035.GA1692@qd-ubuntu>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 16, 2019 at 09:50:38AM +0000, Quentin Deslandes wrote:
> On Thu, May 16, 2019 at 11:39:51AM +0200, Greg Kroah-Hartman wrote:
> > On Thu, May 16, 2019 at 09:31:05AM +0000, Quentin Deslandes wrote:
> > > Fixed 'set but not used' warning message on a status variable. The
> > > called function returning the status code 'vnt_start_interrupt_urb()'
> > > clean up after itself and the caller function
> > > 'vnt_int_start_interrupt()' does not returns any value.
> > > 
> > > Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > > ---
> > >  drivers/staging/vt6656/int.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
> > > index 504424b19fcf..ac30ce72db5a 100644
> > > --- a/drivers/staging/vt6656/int.c
> > > +++ b/drivers/staging/vt6656/int.c
> > > @@ -42,13 +42,12 @@ static const u8 fallback_rate1[5][5] = {
> > >  void vnt_int_start_interrupt(struct vnt_private *priv)
> > >  {
> > >  	unsigned long flags;
> > > -	int status;
> > >  
> > >  	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
> > >  
> > >  	spin_lock_irqsave(&priv->lock, flags);
> > >  
> > > -	status = vnt_start_interrupt_urb(priv);
> > > +	vnt_start_interrupt_urb(priv);
> > 
> > Shouldn't you fix this by erroring out if this fails?  Why ignore the
> > errors?
> > 
> > thanks,
> > 
> > greg k-h
> 
> I could, however 'vnt_start_interrupt_urb()' already call 'dev_dbg()' if
> it fails. Nothing is done after this debug call except returning an
> error code.

Returning an error code is fine for that function.  But then you have to
do something with that error.

> 'vnt_int_start_interrupt()' should, IMHO, return a status code, but the
> original developer may have good reasons not to do so.

I think that is the real problem that needs to be fixed here, don't
paper over the issue by ignoring the return value.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
