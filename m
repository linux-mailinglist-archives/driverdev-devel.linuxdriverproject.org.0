Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5755C343F62
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 12:14:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9690D82848;
	Mon, 22 Mar 2021 11:14:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WB9XyG6DmSCj; Mon, 22 Mar 2021 11:14:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF8E8823E8;
	Mon, 22 Mar 2021 11:14:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B809A1BF398
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6939401EC
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZYUnCM7Nnevx for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 11:13:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA5EB401EB
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 11:13:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 492ED6198E;
 Mon, 22 Mar 2021 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616411633;
 bh=MmdQR1dEmdHbDyukqcT2pW9HWuOlB5PSPi63m85UTG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RdctlYaSx5YrEOLbgTdnTP7pyB7NgwhspReH6FZgRGKJsTkvZaZmHiQWMGKBVudVp
 2RiZUe63WCT1HzUQqu7VwWeHRZp/4HdSc8L0gvEtmOMmsWUc8sUrKefnhkSv7Lx94q
 Azbvsa2lt/X6zrqSbXGzsn9d/ZO7VdxO1dqmcNis=
Date: Mon, 22 Mar 2021 12:13:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH v4 2/2] staging: Add driver for XillyUSB (Xillybus
 variant for USB)
Message-ID: <YFh77/L3o4MbuQxi@kroah.com>
References: <20210311095033.20956-1-eli.billauer@gmail.com>
 <20210311095033.20956-3-eli.billauer@gmail.com>
 <YFc6z9REEo27FMA+@kroah.com> <60587922.2040903@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <60587922.2040903@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org, arnd@arndb.de,
 linux-kernel@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 01:01:54PM +0200, Eli Billauer wrote:
> Hello, Greg.
> 
> Thanks for your comments. I'd like to address a couple of them.
> 
> First, there's the lockless FIFO that is implemented in the driver:
> 
> On 21/03/21 14:23, Greg KH wrote:
> > 
> > > +
> > > +static unsigned int fifo_read(struct xillyfifo *fifo,
> > > +			      void *data, unsigned int len,
> > > +			      int (*copier)(void *, const void *, int))
> > > +{
> > > +	unsigned int done = 0;
> > > +	unsigned int todo = len;
> > > +	unsigned int fill;
> > > +	unsigned int readpos = fifo->readpos;
> > > +	unsigned int readbuf = fifo->readbuf;
> > > +
> > > +	fill = atomic_read(&fifo->fill);
> > And the number changed right after reading it :(
> > 
> > Again, no atomics, use a lock please.
> > 
> > This is a USB device, you are NOT doing high-speed data transfers at
> > all.
> > 
> The current XillyUSB hardware is USB 3.0 based, running at ~400 MB/s, and
> this is just the beginning. For comparison, when the PCIe-based Xillybus
> started at 200 MB/s, I didn't believe it would reach 6.6 GB/s.
> 
> So that's why I made the effort to implement a lockless FIFO, with all the
> extra synchronization fuss. And yes, it works perfectly, and has been
> heavily fuzz tested on an x86_64 machine. The memory barriers are carefully
> placed to make this work on less favorable platforms as well, but even if I
> got it wrong -- odds are that the fix will be a line or two.
> 
> Replacing atomics with spinlocks is a piece of cake, of course. But given
> this extra information, do you still think it's a good idea?

Trying to review this code is hard, if not impossible because of the
structure.  Again, USB interfaces are slow, a "custom lockless FIFO" is
something for the core kernel to implement, not for a random individual
driver, to ensure it is working properly.

And it seems like an overkill, are you sure those locks are a slowdown?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
