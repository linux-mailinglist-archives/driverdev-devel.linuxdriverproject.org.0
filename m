Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 218E0124A94
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 16:02:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DC9686C28;
	Wed, 18 Dec 2019 15:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tYftHNSUumay; Wed, 18 Dec 2019 15:02:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84B5B86B66;
	Wed, 18 Dec 2019 15:02:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 568591BF299
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 15:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5348786B66
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 15:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uutE7lLGuu7W
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 15:02:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98EA986B63
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 15:02:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5759227BF;
 Wed, 18 Dec 2019 15:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576681355;
 bh=QCDsGFXidgE7hRzO0dzzNu6kO4GmbUjYmUbyBI2l62A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A7xW0mdF+AmYX1edF2EfMH9JmguLeIzoH8cPnq0pccDcSKgvQNMo9zJnUDzfajmT9
 hOJ/23USSfh6NsMkHZHn8d/3aocY9hILSzta/KHO0euD1i/115ObJTP9MpddCdAdHl
 pqlSgrCkPVnKVu/s4Q35pT9oB8So2kIcoRCmNGho=
Date: Wed, 18 Dec 2019 16:02:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Message-ID: <20191218150233.GA428016@kroah.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
 <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
 <20191217130548.GA3227907@kroah.com>
 <553516df78dcb750d107ad35bd56a164e7fe7e72.camel@microchip.com>
 <20191218140842.GA234539@kroah.com>
 <a1544f39e1849f0db2809a93f226bb107423d485.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a1544f39e1849f0db2809a93f226bb107423d485.camel@microchip.com>
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

On Wed, Dec 18, 2019 at 02:50:32PM +0000, Christian.Gromm@microchip.com wrote:
> On Wed, 2019-12-18 at 15:08 +0100, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Wed, Dec 18, 2019 at 02:02:43PM +0000, 
> > Christian.Gromm@microchip.com wrote:
> > > On Tue, 2019-12-17 at 14:05 +0100, Greg KH wrote:
> > > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > > know the content is safe
> > > > 
> > > > On Fri, Dec 13, 2019 at 01:04:20PM +0100, Christian Gromm wrote:
> > > > > This patch moves the core module to the /drivers/most directory
> > > > > and makes all necessary changes in order to not break the
> > > > > build.
> > > > > 
> > > > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > > 
> > > > I've applied the patches up to this one in the series, but I
> > > > still
> > > > have
> > > > questions about the file you are trying to move here.
> > > > 
> > > > It's not in this patch, but I'll just quote from the file
> > > > drivers/staging/most/core.c directly:
> > > > 
> > > >  * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH &
> > > > Co.
> > > > KG
> > > > 
> > > > You've touched this file since 2015 :)
> > > > 
> > > > #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > > > 
> > > > No need for this, You have drivers here, no need to use any pr_*
> > > > calls,
> > > > as you always have a device structure.
> > > > Along with that, almost all of your pr_info() calls are really
> > > > errors/warnigns, so use dev_err() or dev_warn() instead please.
> > > > 
> > > > The one:
> > > > pr_info("registered new core component %s\n", comp->name);
> > > > 
> > > > Should at best be a dev_info() line, but really, you don't need
> > > > to be
> > > > loud if all goes well, right?
> > > > 
> > > > pr_info("deregistering component %s\n", comp->name);
> > > > 
> > > > Should be dev_dbg().
> > > > 
> > > > static void release_interface(struct device *dev)
> > > > {
> > > >         pr_info("releasing interface dev %s...\n",
> > > > dev_name(dev));
> > > > }
> > > > 
> > > > static void release_channel(struct device *dev)
> > > > {
> > > >         pr_info("releasing channel dev %s...\n", dev_name(dev));
> > > > }
> > > > 
> > > > How did I miss this before?
> > > > 
> > > > The driver core documentation used to have a line saying I was
> > > > allowed
> > > > to make fun of programmers who did this, but that had to be
> > > > removed
> > > > :(
> > > > 
> > > > Anyway, this is totally wrong, first off, delete the debugging
> > > > lines.
> > > > Secondly how are you really releasing anything?
> > > 
> > > Allocated memory is being freed inside the deregister* functions,
> > > once a device is detached from the system or the physical adapter
> > > driver has been removed. There a loop frees all channels and
> > > interfaces
> > > and the devices are unregistered with the kernel.
> > > 
> > > I can move this to the release functions.
> > 
> > It has to go there, as you have no idea if someone else has a
> > reference
> > to those structures.  You have to abide by the fact that they are
> > dynamic reference-counted structures, and that means you never "know"
> > what the reference count is :)
> > 
> > > > You have to free the
> > > > memory here.  You can not have an "empty" release function, the
> > > > driver
> > > > core requires you to actually do something here.
> > > > 
> > > > Same for release_most_sub() and anywhere else I missed in my
> > > > review.
> > > 
> > > Here no memory has been allocated dynamically. What am I supposed
> > > to
> > > free up?
> > 
> > You have a structure that is reference counted, it had to be
> > allocated
> > dynamically, otherwise why is there a release function?
> 
> Actually, no! The release function is there, because I have
> a struct device embedded. And the kernel prints this
> "scary complaint", when I try to register it with no release
> function assigned. :)

Stop and think _why_ someone (i.e. me) took the time and energy to write
code to have the kernel print out that scary complaint.  It wasn't just
because I had nothing better to do...

I wrote that code in order to tell people "hey, your code is buggy, fix
it properly!"  I didn't do that to tell people, "hey, provide an empty
release function to quiet this foolish warning that I should never have
added!"

When the kernel complains about something, don't try to work around it.
It is complaining for a good reason.

You owe me 5 recitations of Documentation/driver-api/driver-model/* and
Documentation/kobject.txt :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
