Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0312015F744
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 21:02:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8FB2D2274B;
	Fri, 14 Feb 2020 20:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y3TlhkZ9FJCM; Fri, 14 Feb 2020 20:02:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72D5422708;
	Fri, 14 Feb 2020 20:02:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 877171BF2C8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 20:02:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 83B2087781
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 20:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OlE208u-d5-N
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 20:02:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 89ADD8777D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 20:02:12 +0000 (UTC)
Received: from localhost (unknown [12.246.51.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15D422465D;
 Fri, 14 Feb 2020 20:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581710532;
 bh=MjRyh5v9YeuOrhEKb8hYeVoz1eVcjtklSY++DdY85mU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rUik3ODnImYUNu/YU3IzqFx/NxYMMb03OGjRcqcVOsCm7Y/8z3XGIsfhDDrynCLrH
 Q9CCryA0+v7mSlxMOU+wvfZrKLtKrmv+dP2mRL4cB7VEG0mybHy/AmUUU8mhV3n6+0
 hAzdmNR2193KEXhLWbBun0fIa06k9bN5KIZt4ClE=
Date: Fri, 14 Feb 2020 08:17:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Message-ID: <20200214161706.GA3964402@kroah.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
 <1579793906-5054-2-git-send-email-christian.gromm@microchip.com>
 <20200123181837.GA1927902@kroah.com>
 <2dc825b7ff12cf90de21f9f2486952a935401dba.camel@microchip.com>
 <20200124090955.GA2980450@kroah.com>
 <b8a77d5c7947dd4fb0f06f9938e15b1496f64cd4.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8a77d5c7947dd4fb0f06f9938e15b1496f64cd4.camel@microchip.com>
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

On Thu, Feb 06, 2020 at 09:14:55AM +0000, Christian.Gromm@microchip.com wrote:
> On Fri, 2020-01-24 at 10:09 +0100, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Fri, Jan 24, 2020 at 08:56:56AM +0000, 
> > Christian.Gromm@microchip.com wrote:
> > > On Thu, 2020-01-23 at 19:18 +0100, Greg KH wrote:
> > > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > > know the content is safe
> > > > 
> > > > On Thu, Jan 23, 2020 at 04:38:17PM +0100, Christian Gromm wrote:
> > > > > This patch makes the adapter drivers use their own device
> > > > > structures
> > > > > when registering a most interface with the core module.
> > > > > With this the module that actually operates the physical device
> > > > > is
> > > > > the
> > > > > owner of the device.
> > > > 
> > > > Ick, why?  The interface should be part of sysfs, right, and now
> > > > it
> > > > isn't?
> > > 
> > > It still is. What has changed is that the device that actually
> > > represents the attached hardware is used (see probe function of
> > > the USB adapter driver for instance).
> > 
> > Ah.  Ick.  odd...
> > 
> > > > Who handles the lifetime rules of these interfaces now?  Why
> > > > remove this?
> > > 
> > > The struct device that is allocated when attaching a MOST device is
> > > handling the lifetime and the struct most_interface is
> > > representing this device in the kernel. Hence, registered with
> > > sysfs.
> > > 
> > > This ensures that the device is present in the kernel until its
> > > physical stature is being detached from the system.
> > > The core driver is just the man in the middle that registers the
> > > bus and itself as the driver and organizes the configfs, sysfs and
> > > communication paths to user space.
> > > 
> > > > 
> > > > Why isn't the interface dynamically created properly?  That
> > > > should
> > > > solve
> > > > the lifetime rules here, right?
> > > 
> > > The interface is dynamically allocated. This happens inside the
> > > USB, DIM2, I2C etc. drivers. The struct most_interface is part of
> > > the container struct there.
> > 
> > Ok, I'll take the first 7 of these patches and see what the end
> > result
> > looks like after that, it will make reviewing the code easier...
> 
> Did you find some time for the review yet?

I haven't, sorry.  Can you resend the movement patch so that I can just
see it from that point?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
