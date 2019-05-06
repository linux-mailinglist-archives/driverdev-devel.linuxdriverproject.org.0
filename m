Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CE914FD6
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 17:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D48C825A4D;
	Mon,  6 May 2019 15:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 542XF48XZFRX; Mon,  6 May 2019 15:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9C4724BF3;
	Mon,  6 May 2019 15:16:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDB011BF95C
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 15:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E5C338777B
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 15:16:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnggRyKrAtRi for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 15:16:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 90EAE86DDB
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 15:16:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6DAC2053B;
 Mon,  6 May 2019 15:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557155788;
 bh=Bu5DrKRyjcDU7LOToFqHrGXk+J5oS4sJx3wI629Nd5Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dcCvm2QJz7wBN2w6Bb3vlJoBNKGj9thCPaHsn4Blcgmaxuss6wH42h7VpekdnoOmN
 P4zTfQ9Vlg5rug4usS8cwIsLOCNJn8dq4zSRZNLvY0gVeKEVfp5DLbmm2odG/HJXTm
 Ti0vk130VuHvmJpPRLLJ5BLxD0dQSyTDjDP8b2PU=
Date: Mon, 6 May 2019 17:16:25 +0200
From: "'gregkh@linuxfoundation.org'" <gregkh@linuxfoundation.org>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: RFC: kpc2000 driver naming
Message-ID: <20190506151625.GB12755@kroah.com>
References: <SN6PR02MB4016C279A0BBC406734A06D8EE350@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190504090815.GF13840@kroah.com>
 <SN6PR02MB4016E7E37044C3C47C3D1AF4EE370@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190506062031.GA9557@kroah.com>
 <SN6PR02MB40162960AA3990F37CC0F885EE300@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB40162960AA3990F37CC0F885EE300@SN6PR02MB4016.namprd02.prod.outlook.com>
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

On Mon, May 06, 2019 at 02:38:16PM +0000, Matt Sickler wrote:
> >-----Original Message-----
> >From: 'gregkh@linuxfoundation.org' <gregkh@linuxfoundation.org>
> >On Sun, May 05, 2019 at 10:14:17PM +0000, Matt Sickler wrote:
> >> The I2C and SPI drivers don't depend on anything other than the I2C
> >> and SPI subsystems.  Actually, they might be depending on the kp2000
> >> driver having the PCIe registers mapped into kernel space instead of doing
> >> that themselves.
> >> I'm not sure if that's the correct thing to do or not, so that might
> >> be something to look closely at with all these drivers.
> >
> >Are all of these drivers needed for this hardware to work?  Should they even
> >be separate drivers or should they all be mushed into one?  Can anyone do
> >anything useful with just one of them?
> >
> >> Yes, all 4 drivers are required for proper functioning of the card.
> >> SPI is used to reprogram the flash chips that store the FPGA
> >> bitstream.  I2C is used for monitoring and programming clock
> >> generators.  DMA is required for some parts of other cores.
> >
> >So should we just merge this into one driver at link time?  That would make
> >more sense, right?
> 
> Yes.  All the drivers are required for the hardware to work.
> In some sense, they "could" be used independently, but most likely only within
> Daktronics hardware.  I guess if someone else had an FPGA design that needed a
> SPI controller, they could reuse our driver as long as their FPGA implemented
> a compatible SPI controller.
> 
> One thing I would be concerned with would be future FPGA designs that need to
> mix-and-match.
> For example (using new names), today we have the P2K card which uses the dak-p2k
> main driver, and dak-i2c, dak-spi, and dak-dma "sub-drivers".
> Perhaps the next generation hardware would need to use a new dak-p3k main driver
> but can reuse the dak-i2c and dak-dma sub-drivers.  And maybe it needs a new
> dak-spi-v2 driver (because something in the hardware changed in an incompatible
> way).  This is all hypothetical though - it could range from complete driver
> reuse to needing all new drivers for everything - we won't know for sure until
> the new hardware designs ramp up in the next 6-12 months.
> 
> If there's a way to do link-time trickery to get all 4 drivers compiled into
> one .ko, I'd be fine with that.  I do think it's a good idea to keep them at
> least slightly separated to facilitate that mix-and-match scenario as well as
> just ease of maintaining the code.

Ok, keeping them separate is fine, just wanted to make sure, thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
