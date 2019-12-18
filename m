Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5920B124919
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 15:08:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 100B48836B;
	Wed, 18 Dec 2019 14:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGqJkg-OPcYP; Wed, 18 Dec 2019 14:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5598A86CD7;
	Wed, 18 Dec 2019 14:08:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2431BF299
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:08:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3667F87E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l3CcGnoDeN+4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:08:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6C7DF86CD7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:08:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6B762176D;
 Wed, 18 Dec 2019 14:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576678124;
 bh=Y7I4jyBHkh2AU9AD6rxd55FmrqSepOQhSWwXDRdn530=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CB/8F3dT5UL93S/uSOasfjpMbM1Y1F4+irbuyCpSn89bZ0ZRI1b5ywlpatMnYEejM
 O7ClC4xh3YnfGL7K+cDue0pWTiwzHmUyEiTczv7ranw9WhhJjOWasWTbW42vPq/Ltq
 sKzMAnmlRw2pDdHdmDxfM6YAheCRGylEwYoqVFCQ=
Date: Wed, 18 Dec 2019 15:08:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Message-ID: <20191218140842.GA234539@kroah.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
 <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
 <20191217130548.GA3227907@kroah.com>
 <553516df78dcb750d107ad35bd56a164e7fe7e72.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <553516df78dcb750d107ad35bd56a164e7fe7e72.camel@microchip.com>
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

On Wed, Dec 18, 2019 at 02:02:43PM +0000, Christian.Gromm@microchip.com wrote:
> On Tue, 2019-12-17 at 14:05 +0100, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Fri, Dec 13, 2019 at 01:04:20PM +0100, Christian Gromm wrote:
> > > This patch moves the core module to the /drivers/most directory
> > > and makes all necessary changes in order to not break the build.
> > > 
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > 
> > I've applied the patches up to this one in the series, but I still
> > have
> > questions about the file you are trying to move here.
> > 
> > It's not in this patch, but I'll just quote from the file
> > drivers/staging/most/core.c directly:
> > 
> >  * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co.
> > KG
> > 
> > You've touched this file since 2015 :)
> > 
> > #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > 
> > No need for this, You have drivers here, no need to use any pr_*
> > calls,
> > as you always have a device structure.
> > Along with that, almost all of your pr_info() calls are really
> > errors/warnigns, so use dev_err() or dev_warn() instead please.
> > 
> > The one:
> > pr_info("registered new core component %s\n", comp->name);
> > 
> > Should at best be a dev_info() line, but really, you don't need to be
> > loud if all goes well, right?
> > 
> > pr_info("deregistering component %s\n", comp->name);
> > 
> > Should be dev_dbg().
> > 
> > static void release_interface(struct device *dev)
> > {
> >         pr_info("releasing interface dev %s...\n", dev_name(dev));
> > }
> > 
> > static void release_channel(struct device *dev)
> > {
> >         pr_info("releasing channel dev %s...\n", dev_name(dev));
> > }
> > 
> > How did I miss this before?
> > 
> > The driver core documentation used to have a line saying I was
> > allowed
> > to make fun of programmers who did this, but that had to be removed
> > :(
> > 
> > Anyway, this is totally wrong, first off, delete the debugging lines.
> > Secondly how are you really releasing anything?
> 
> Allocated memory is being freed inside the deregister* functions,
> once a device is detached from the system or the physical adapter
> driver has been removed. There a loop frees all channels and interfaces
> and the devices are unregistered with the kernel.
> 
> I can move this to the release functions.

It has to go there, as you have no idea if someone else has a reference
to those structures.  You have to abide by the fact that they are
dynamic reference-counted structures, and that means you never "know"
what the reference count is :)

> > You have to free the
> > memory here.  You can not have an "empty" release function, the
> > driver
> > core requires you to actually do something here.
> > 
> > Same for release_most_sub() and anywhere else I missed in my review.
> 
> Here no memory has been allocated dynamically. What am I supposed to
> free up?

You have a structure that is reference counted, it had to be allocated
dynamically, otherwise why is there a release function?

> I've seen code in the kernel that does host empty release functions.

Where?  I'll go yell at them :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
