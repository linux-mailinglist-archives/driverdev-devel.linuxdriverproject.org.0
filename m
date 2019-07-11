Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A99265226
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 09:00:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9117A20485;
	Thu, 11 Jul 2019 07:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8BIKqGqjYNS; Thu, 11 Jul 2019 07:00:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB19C20461;
	Thu, 11 Jul 2019 07:00:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3597E1BF35A
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 07:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3266E860C2
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 07:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JTGJKzgkfU_c for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 07:00:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA56686090
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 07:00:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D0D721019;
 Thu, 11 Jul 2019 07:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562828445;
 bh=8tYiPo23RhF+zMZps2Ew0kc5pCJq6pKf0897T8FJ+mk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iV0jZspRmlN9/eN2/iuxb829Lq2LG2suZ25E6HocavImKwEzdEv108DDo4NCerNEm
 7kVfWGPvYAKHrpHMGfChBYvD8/+wbDUbvW8+x3gc1HSB8LCF+LSejxETDVJHT3AHlu
 Y6O63tlyFRfvSFZOZ9Abr7F0aKIkbhep61tYYQ6Q=
Date: Thu, 11 Jul 2019 09:00:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Keyur Patel <iamkeyur96@gmail.com>
Subject: Re: [PATCH] staging: greybus: add logging statement when kfifo_alloc
 fails
Message-ID: <20190711070042.GA28487@kroah.com>
References: <20190710122018.2250-1-iamkeyur96@gmail.com>
 <20190710163538.GA30902@kroah.com> <20190710142406.GA6669@keyur-pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710142406.GA6669@keyur-pc>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 David Lin <dtwlin@gmail.com>, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 10, 2019 at 10:24:06AM -0400, Keyur Patel wrote:
> On Wed, Jul 10, 2019 at 06:35:38PM +0200, Greg Kroah-Hartman wrote:
> > On Wed, Jul 10, 2019 at 08:20:17AM -0400, Keyur Patel wrote:
> > > Added missing logging statement when kfifo_alloc fails, to improve
> > > debugging.
> > > 
> > > Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
> > > ---
> > >  drivers/staging/greybus/uart.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> > > index b3bffe91ae99..86a395ae177d 100644
> > > --- a/drivers/staging/greybus/uart.c
> > > +++ b/drivers/staging/greybus/uart.c
> > > @@ -856,8 +856,10 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
> > >  
> > >  	retval = kfifo_alloc(&gb_tty->write_fifo, GB_UART_WRITE_FIFO_SIZE,
> > >  			     GFP_KERNEL);
> > > -	if (retval)
> > > +	if (retval) {
> > > +		pr_err("kfifo_alloc failed\n");
> > >  		goto exit_buf_free;
> > > +	}
> > 
> > You should have already gotten an error message from the log if this
> > fails, from the kmalloc_array() call failing, right?
> > 
> > So why is this needed?  We have been trying to remove these types of
> > messages and keep them in the "root" place where the failure happens.
> > 
> > thanks,
> > 
> > greg k-h
> 
> Didn't notice that. I agree that this will result only into redundancy. 
> Quick look over files reveal that there are multiple places
> where people are using print statements after memory allocation fails. 
> Should I go ahead and send patches to remove those
> redundant print statements?

It all depends on where in the kernel those are.  Some subsystems want
minor cleanups like this, but most do not.  So unless the issue you find
is in the drivers/staging/ directory, I would not worry about it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
