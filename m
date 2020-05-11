Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6DB1CEF1A
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 10:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 593F386FA3;
	Tue, 12 May 2020 08:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id weuadgkSy2PP; Tue, 12 May 2020 08:28:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D523886F78;
	Tue, 12 May 2020 08:28:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BFA11BF2AB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 May 2020 08:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 47DDD2046C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 May 2020 08:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3zHaHbpdOZCI
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 May 2020 08:28:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 18E70203A2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 May 2020 08:28:43 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43E95206A3;
 Tue, 12 May 2020 08:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589272122;
 bh=7RuoiwtdXbjU5E/bE+GPnT11/3NNMit5u9rAnsnFk9s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hURymR3FiR13WuWVys7r7yn6p1lKKJKhuOl2Z3MYBq2KJyKKgnIqXOOR1ht1dDXpb
 X+vtTZCkoB9hEjTuc2KyG9tne4q3HkiN92Z39eb5wwr6B7nTfKokX8Pp3bGQB5YKTk
 aWAtRI4tHJv9NAb7uVVD/HNJIzF8LNSzbQt+OEqE=
Date: Mon, 11 May 2020 18:33:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH RFC] drivers: most: add USB adapter driver
Message-ID: <20200511163346.GA2236392@kroah.com>
References: <1589190675-21145-1-git-send-email-christian.gromm@microchip.com>
 <20200511114713.GA1671075@kroah.com>
 <266714a09283d7b5cc9f0720415db7e86bf18387.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <266714a09283d7b5cc9f0720415db7e86bf18387.camel@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 11, 2020 at 02:46:58PM +0000, Christian.Gromm@microchip.com wrote:
> On Mon, 2020-05-11 at 13:47 +0200, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Mon, May 11, 2020 at 11:51:15AM +0200, Christian Gromm wrote:
> > > This patch adds the MOST USB adapter driver to the stable branch.
> > > This is
> > > a follow-up to commit <b276527>.
> > 
> > I do not understand the "a follow-up..." sentance.  Always use the
> > format of:
> >         b27652753918 ("staging: most: move core files out of the
> > staging area")
> > when writing kernel commits in changelogs.
> > 
> > Also, that commit doesn't really mean anything here, this is a
> > stand-alone driver for the most subsystem.  This changelog needs
> > work.
> 
> Purpose was sharing the information that this is patch is
> only one part of moving the complete driver stack. That a
> first step has alread been done and others are to follow.
> But you're probably right and nobody realy needs to know.
> 
> I'll skip this.
> 
> > 
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > ---
> > >  drivers/most/Kconfig          |    6 +
> > >  drivers/most/Makefile         |    2 +
> > >  drivers/most/usb/Kconfig      |   14 +
> > >  drivers/most/usb/Makefile     |    4 +
> > >  drivers/most/usb/usb.c        | 1262
> > > +++++++++++++++++++++++++++++++++++++++++
> > 
> > Why not just call this file most-usb.c so you don't have to do the
> > 2-step Makefile work.  Also, why a whole subdir for a single .c file?
> 
> To keep the staging layout.

No need to do that, this is a new layout :)

> > > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > 
> > You shouldn't need any pr_*() calls because this is a driver and you
> > always have access to the struct device * it controls.  So drop this
> > and
> > fix up the remaining pr_*() calls to be dev_*() instead.
> 
> There are helper functions that actually don't have access to the
> struct device and it felt like an overhead to pass the device
> pointer just for logging purposes.

pr_* calls show almost nothing when it comes to the actual device/driver
being affected.  That's why the dev_*() functions are there, please use
them.

> > > +/**
> > > + * struct most_dci_obj - Direct Communication Interface
> > > + * @kobj:position in sysfs
> > > + * @usb_device: pointer to the usb device
> > > + * @reg_addr: register address for arbitrary DCI access
> > > + */
> > > +struct most_dci_obj {
> > > +     struct device dev;
> > 
> > Wait, why is a USB driver creating something with a separate struct
> > device embedded in it?  Shouldn't the most core handle stuff like
> > this?
> 
> The driver adds an ABI interface that belongs to USB only. This keeps
> the core generic.

So this same type of thing is also needed in the other bus controllers
(serial, i2c, etc.)?

Creating a new device implies it lives on a bus, and almost always the
bus code for creating/managing that code lives in a single place, not in
the individual drivers.  Why doesn't the most core handle this?  What
does the most core do?  :)


> > > +static DEVICE_ATTR(arb_address, 0644, value_show, value_store);
> > > +static DEVICE_ATTR(arb_value, 0644, value_show, value_store);
> > 
> > Loads of sysfs files with no documentation for them?
> > 
> 
> see driver/staging/most/Documentation

Add it as part of this patch series, as you are moving these sysfs files
into the "real" part of the kernel and belong out of drivers/staging/

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
