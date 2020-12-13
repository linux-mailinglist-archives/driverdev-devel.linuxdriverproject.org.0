Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182202D8E03
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 15:41:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D98C872B5;
	Sun, 13 Dec 2020 14:41:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9us2Lt2hryD; Sun, 13 Dec 2020 14:41:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C90886FD9;
	Sun, 13 Dec 2020 14:41:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D00541BF2C9
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 14:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCF3787310
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 14:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3cVCCyPwr1sk for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 14:41:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CCBCE871FE
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 14:41:33 +0000 (UTC)
Date: Sun, 13 Dec 2020 15:41:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607870493;
 bh=lrc0i225WKIWHAG05yCH09jeXgang9pZ0NF8NL0NLc0=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=nN4ywPSjIz3KSGCTBK/cTFZ0uweiYnmyHO5VNz6ZGWXOmex7uGhFH+/6j9+OOon40
 kCON6oBWln175KIvuBMEk6lgfB4LbeBiIJLbr2mprKZQWpf/yJjuQwOJffu/ZGlcr1
 YCkqHIzGZG6yU5MJ68Awy/xZI1uYoRY+U3V2s0JA=
From: Greg KH <gregkh@linuxfoundation.org>
To: eli.billauer@gmail.com
Subject: Re: [PATCH] staging: Add xillyusb driver (Xillybus variant for USB)
Message-ID: <X9YoGnkD7fjPdr4x@kroah.com>
References: <20201213115933.58823-1-eli.billauer@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201213115933.58823-1-eli.billauer@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 13, 2020 at 01:59:33PM +0200, eli.billauer@gmail.com wrote:
> From: Eli Billauer <eli.billauer@gmail.com>
> 
> Xillybus is a means for exchanging data between an FPGA and a Linux
> host, which helps making the task easier on both sides. The already
> existing driver resides in drivers/char/xillybus/ and it supports
> communication with the FPGA over the PCIe bus. For Xilinx' Zynq-7000
> processors, it also supports the device's native AXI3 bus.
> 
> The XillyUSB driver, which is added with this patch as a staging driver,
> uses the USB transport for communicating with the FPGA. Even though it
> presents a nearly identical API on the FPGA and host, it's almost a
> complete rewrite of the driver: The framework for exchanging data on a
> USB bus is fundamentally different from doing the same with a PCIe
> interface, which leaves very little in common between the existing
> driver and the new one for XillyUSB.
> 
> Signed-off-by: Eli Billauer <eli.billauer@gmail.com>
> ---
>  MAINTAINERS                         |    1 +
>  drivers/staging/Kconfig             |    2 +
>  drivers/staging/Makefile            |    1 +
>  drivers/staging/xillyusb/Kconfig    |   19 +
>  drivers/staging/xillyusb/Makefile   |    6 +
>  drivers/staging/xillyusb/xillyusb.c | 2363 +++++++++++++++++++++++++++

Why add this driver to staging?  All drivers in staging need a TODO file
that lists what is needed to be done to it in order to get it out of
staging.  Why not just submit it to the "real" part of the kernel?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
