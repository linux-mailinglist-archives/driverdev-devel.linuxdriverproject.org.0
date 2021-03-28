Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCC534BC3C
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Mar 2021 13:47:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D21A16070C;
	Sun, 28 Mar 2021 11:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SB-jU0oTBCwI; Sun, 28 Mar 2021 11:47:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AE73606BE;
	Sun, 28 Mar 2021 11:46:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 583381BF4D8
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 11:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54A9B83C43
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 11:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pk7DCd3ECkJE for <devel@linuxdriverproject.org>;
 Sun, 28 Mar 2021 11:46:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 707CE83C42
 for <devel@driverdev.osuosl.org>; Sun, 28 Mar 2021 11:46:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F175C61941;
 Sun, 28 Mar 2021 11:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616932007;
 bh=M03bi7a09kKMaiL8zfuIoUIH/ryWLbTyZYNO5lendgk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xxF4LxBCH2dHD3mn+2oOZcEFHMrXY05NG5tAzKyysx9k+8xdqD8ISYgKnVYY090GO
 4ztdV0uoVpfmbZChASboEXdGLe3KvH7ZRNNNlvhI56dRE3fSiGcFxAjkBrM2+8q4VR
 71n8A0LJkgPtOg2kPLXpkny/pmC29PEkuDkEbemA=
Date: Sun, 28 Mar 2021 13:46:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH v4 1/2] char: xillybus: Move class-related functions to
 new xillybus_class.c
Message-ID: <YGBspAmjcIO6agIm@kroah.com>
References: <20210311095033.20956-1-eli.billauer@gmail.com>
 <20210311095033.20956-2-eli.billauer@gmail.com>
 <YFc65bvAN3/ZNsww@kroah.com> <6058792C.90801@gmail.com>
 <YFh7dlY9cntgoLXD@kroah.com> <6059D983.5080306@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6059D983.5080306@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 23, 2021 at 02:05:23PM +0200, Eli Billauer wrote:
> On 22/03/21 13:11, Greg KH wrote:
> > 
> > > XILLYBUS and XILLYBUS_PCIE are currently enabled as M in several Linux
> > > distributions. Making them depend on, rather than select XILLYBUS_CLASS is
> > > likely to disable the driver in those distributions.
> > That's not an issue here, depends-on will allow those distros to also
> > enable this option.
> > 
> > But wait, why is this a separate option at all?  Shouldn't the class
> > code just be part of the "core" XILLYBUS code anyway?
> > 
> I'll try to explain the whole picture:
> 
>            XILLYBUS_CLASS
>               /        \
>              |          |
>          XILLYBUS   XILLYUSB
>       /           \
>      |             |
> XILLYBUS_PCIE  XILLYBUS_OF
> 
> XILLYBUS_CLASS is new and common to all drivers in this group.
> 
> XILLYBUS is for drivers based upon memory registers + DMA-based interfaces,
> and it's combined with XILLYBUS_PCIE and/or XILLYBUS_OF. XILLYUSB is for the
> USB variant only.
> 
> Or a more detailed, bottom-up outline:
> 
> * CONFIG_XILLYBUS_PCIE -> xillybus_pcie.c: Functions related to PCIe.
> * CONFIG_XILLYBUS_OF -> xillybus_of.c: Functions related to Xillybus as a
> peripheral on an FPGA / Processor combo chip.
> * CONFIG_XILLYBUS -> xillybus_core.c: Functions that are common to the two
> above, mainly access to the peripheral with memory-mapped registers and DMA.
> * CONFIG_XILLYUSB -> xillyusb.c: The driver for the USB variant, accesses
> the peripheral through the USB framework.
> * CONFIG_XILLYBUS_CLASS -> xillybus_class.c: The new module, which contains
> the class and API parts that would otherwise appear both in xillybus_core.c
> and xillyusb.c. Contains utility functions for the two latter.
> 
> Because XILLYBUS_CLASS is new and "N" by default, making a "depends on"
> relationship means that "make olddefconfig" silently turns off
> CONFIG_XILLYBUS and CONFIG_XILLYBUS_PCIE. That's a bug: Adding a new driver
> shouldn't change anything in the existing configuration.
> 
> That's why I had the "select XILLYBUS_CLASS" to begin with: It ensures a
> smooth transition on a kernel upgrade, by adding XILLYBUS_CLASS to kernels
> that had CONFIG_XILLYBUS enabled. Is there another way to prevent the said
> bug, without "select"?

Ok, that explains it a bit better, thanks for taking the time to explain
it.  At first glance it seems odd, but this looks better, if you include
this information in the changelog texts for your patches when you send
the next series, that will help out with the review.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
