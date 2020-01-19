Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D44141DD9
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 13:53:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5800385657;
	Sun, 19 Jan 2020 12:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TJBIAWWV8I8s; Sun, 19 Jan 2020 12:53:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DF0384B1F;
	Sun, 19 Jan 2020 12:53:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0161BF5A5
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C4458508E
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1W2bGNqN2RC for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 12:52:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4FE0884B1F
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 12:52:32 +0000 (UTC)
Received: from localhost (lns-bzn-36-82-251-23-53.adsl.proxad.net
 [82.251.23.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EBB220679;
 Sun, 19 Jan 2020 12:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579438352;
 bh=hkorFzS20Sg7Hls9B7ufciAKy2m5s8NGIxauhTm8x7w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TyibJUneDPHPt4IAkmsbiNZhCMbz3X3X0GMANMp6poBat48Gup9EY3XF0k6lgP+0N
 i9my6pj2goY4q3Qx769id5jHHFLpMFLz5j8/YyCmRGHWtKcR5ORaQPBD528z8nHsRz
 QnyZzaUPGd4gebybjmKASENKy1FXO2ftTPQeWy2E=
Date: Sun, 19 Jan 2020 13:52:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon Fong <simon.fongnt@gmail.com>
Subject: Re: [PATCH 3/3] Staging: comedi: usbdux: cleanup long line and align
 it
Message-ID: <20200119125229.GA149325@kroah.com>
References: <20200119035243.7819-1-simon.fongnt@gmail.com>
 <20200119125024.GA149057@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200119125024.GA149057@kroah.com>
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
Cc: devel@driverdev.osuosl.org, colin.king@canonical.com, abbotti@mev.co.uk,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 19, 2020 at 01:50:24PM +0100, Greg KH wrote:
> On Sun, Jan 19, 2020 at 11:52:43AM +0800, Simon Fong wrote:
> > Clean up long line and align it
> > 
> > Signed-off-by: Simon Fong <simon.fongnt@gmail.com>
> > ---
> >  drivers/staging/comedi/drivers/usbdux.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
> > index 0350f303d557..b9c0b1a1d86e 100644
> > --- a/drivers/staging/comedi/drivers/usbdux.c
> > +++ b/drivers/staging/comedi/drivers/usbdux.c
> > @@ -204,7 +204,8 @@ struct usbdux_private {
> >  	struct mutex mut;
> >  };
> >  
> > -static void usbdux_unlink_urbs(struct urb **urbs, int num_urbs)
> > +static void usbdux_unlink_urbs(struct urb **urbs,
> > +			       int num_urbs)
> 
> As Joe said, there is no reason to change this line that I can see, why
> do you want to do that?

Also, where are patches 1 and 2 of this 3 patch series?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
