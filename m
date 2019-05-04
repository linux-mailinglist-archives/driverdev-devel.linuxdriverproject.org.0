Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2270013862
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 11:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E6DD888973;
	Sat,  4 May 2019 09:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2JwInS+JkwQ2; Sat,  4 May 2019 09:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8F248839F;
	Sat,  4 May 2019 09:08:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AD041BF417
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 09:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67E412221C
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 09:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sZgI8rtqsUmj for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 09:08:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id AD7B6221F8
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 09:08:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E44BE20675;
 Sat,  4 May 2019 09:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556960898;
 bh=U13yRfNsyujPL4glFUm3JyfwktjWvzEjmbD29U+zzfc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LqldXs6Ae+9ZBPdjrm6Z3ZX5XCxN1JnU7mArT5vZbhUZCJ2LNbZYPZSx2vS1I4je9
 6fhxvwD06ZbzwiOr/Du9MmZr50QsGfOXpCLO8pxSO3jLn6ycHcamBkkBPqksp+lxCe
 UMuE3gKwZXpdIRIb8FN6aPo6Hppbc3czBu6mptgo=
Date: Sat, 4 May 2019 11:08:15 +0200
From: "'gregkh@linuxfoundation.org'" <gregkh@linuxfoundation.org>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: RFC: kpc2000 driver naming
Message-ID: <20190504090815.GF13840@kroah.com>
References: <SN6PR02MB4016C279A0BBC406734A06D8EE350@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB4016C279A0BBC406734A06D8EE350@SN6PR02MB4016.namprd02.prod.outlook.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 03, 2019 at 10:24:00PM +0000, Matt Sickler wrote:
> Hello,
> 
> Recently Greg KH posted the first set of drivers for our PCIe device (kpc2000) and shortly after that I posted the kpc2000_dma driver.   I was wondering about naming / structure standards in the Linux kernel.
> First, a real quick background on these devices:  Daktronics makes a PCIe card with an FPGA on it to drive our LED displays (and other processing tasks).  Inside the FPGA, we use something similar to AXI-4 to divide the PCIe BAR register space [1] into separate "IP cores".  The kpc2000 driver is responsible for probing the PCIe device, doing some basic setup (mapping the BAR, setting up an IRQ, PCIe configuration, etc) and then enumerating these "cores".  Enumeration of the cores is facilitated by the "board info" core that is always at the beginning of the BAR and has a defined format.   Most of the cores are controlled entirely by userspace - the driver will add a UIO sub device for each one which userspace uses to control FPGA registers.   Only 3 core types are handled by drivers: DMA, I2C, SPI.  These are IP cores inside the FPGA that (in the case of i2c and spi) interact with other physical devices on the PCIe card.
> Currently, we only have the one PCIe device (the "P2K" card) but we have more on our roadmap (one we've been calling "p3k" internally).   I'm 99% confident that the I2C and SPI cores will be exactly the same on the new FPGA design.   I'm 80% confident that the DMA engines themselves will be exactly the same on the new FPGA design.   The next card PCIe driver will quite likely be separate from the kpc2000 driver because how bitstreams are stored / loaded / configured is changing due to using a newer FPGA.  There will likely be common code between the two.

Please wrap your emails at a sane column, otherwise this is just a huge
wall of text that is hard to read/understand.

> Now on to my actual questions: Once the drivers are "good enough" to be moved outside of staging, I'm wondering where the drivers will end up and what their names will/should be.
> Since the I2C and SPI drivers are single-file, I'm guessing they're going to move to drivers/i2c/busses/i2c-dak/ and drivers/spi/spi-dak/, respectively.  I tweaked the names, since "i2c-dak" and "spi-dak" make more sense to me than "kpc_i2c" and "kpc_spi".

Feel free to rename them to whatever you want, I just randomly picked a
name when I did the import of the drivers.

> So that leaves the DMA and main PCIe drivers.  Where do those end up in the tree?   Would "dak-dma" and "dak-p2k" (and eventually "dak-p3k") make more sense as names for those drivers?

Maybe, as long as it is a "unique" name, that's all that should matter.
The subsystem maintainers of those areas might care more, but you can
deal with that when you get closer to moving the code out of staging.

> The final question relates to how Kconfig entries are setup.   The
> I2C, SPI, and DMA drivers could be "selected" on their own (even if
> the "dak-p2k" and "dak-p3k" drivers aren't selected), but that doesn't
> make much sense because they'd never get used in that configuration.
> Conversely, if you select the "dak-p2k" driver, the I2C, SPI, and DMA
> drivers better get selected too, otherwise the device won't function
> correctly.  From what I can tell with Kconfig, if A depends on B, you
> can't even see (let alone select) A without already selecting B.
> Right now, the Kconfig entries are setup like this (using the current names, not the new ones presented above):
> 	KPC2000_DMA depends on KPC2000 (this compiles the kpc2000_dma driver)
> 	KPC2000_I2C depends on KPC2000 && I2C (this compiles the kpc2000_i2c driver)
> 	KPC2000_SPI depends on KPC2000 && SPI (this compiles the kpc2000_spi driver)
> 	KPC2000_CORE depends on  KPC2000
> 	KPC2000 depends on PCI (this compiles the kpc2000 driver)
> Greg, what is the purpose of the KPC2000_CORE config option?  Nothing (that I see) depends on it, and it doesn't cause any code to get compiled.

I don't remember, I guess I thought that was a chunk of code the others
all depended on being present?  If that's not the case, please send a
patch to fix that up.

> I would have thought something like this makes more sense [2]:
> 	KPC2000_DMA depends nothing

Not any dma drivers/core?

> 	KPC2000_I2C depends on I2C
> 	KPC2000_SPI depends on SPI
> 	KPC2000 depends on PCI && KPC2000_DMA && KPC2000_I2C && KPC2000_SPI

It can't depend on them all, or does it?  If so, that's fine, I just got
this totally backwards, sorry.

> Which way is "better"?  Does it even matter which way it's setup?

It does matter, try to reflect what depends on what for the code and you
should be fine.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
