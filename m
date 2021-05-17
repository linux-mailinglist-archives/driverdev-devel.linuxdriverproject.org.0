Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9953827CF
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 11:09:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 704C6605C3;
	Mon, 17 May 2021 09:09:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3pk_r-Ngmm9g; Mon, 17 May 2021 09:09:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD34C60770;
	Mon, 17 May 2021 09:09:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 06D361BF35B
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 09:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03032400F6
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 09:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id COisbYqzkDns for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 09:08:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E79D401A4
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 09:08:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 41DC0611C2;
 Mon, 17 May 2021 09:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621242535;
 bh=BRGz+Os9JiMGd3fXuweYLwu0b6U6pfMRs8vms0cIF4E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YuzGYw8ynk+yr0zyDt1Tw3qHniQtoVCQChSHu55WUnSsIdQEpfp8wwSjt5/Wq1aFr
 vMcYJ1luC8jDU+WGxBKnx8CfBA14UIZgbUt2dFLF0DB9yIIJfrVkfdIDXlug7B6OJW
 Yi+sdwd2ctRqyhLWDlPuozfr3xIVCVJFF6T4na80=
Date: Mon, 17 May 2021 11:08:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/17] Add an experimental driver for Intel NUC leds
Message-ID: <YKIypSbaft0euIoY@kroah.com>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
 <YKIm8TNJfXIMFl+W@kroah.com> <20210517110258.341da12c@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517110258.341da12c@coco.lan>
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
Cc: devel@driverdev.osuosl.org, linux-staging@lists.linux.dev,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 17, 2021 at 11:02:58AM +0200, Mauro Carvalho Chehab wrote:
> Em Mon, 17 May 2021 10:18:57 +0200
> Greg KH <gregkh@linuxfoundation.org> escreveu:
> 
> > On Sun, May 16, 2021 at 12:53:28PM +0200, Mauro Carvalho Chehab wrote:
> > > Hi Greg,
> > > 
> > > This series add support for the LEDs found at Intel NUCs since
> > > NUC version 6.
> > > 
> > > On several NUC models, the function of the LEDs are programmable,
> > > which allow them to indicate several different hardware events.
> > > 
> > > They can even be programmed to represent an userspace-driven event.
> > > 
> > > Some models come with single colored or dual-colored LEDs, but
> > > high end models have RGB LEDs.
> > > 
> > > Programming them can ether be done via BIOS or by the OS.
> > > 
> > > There are 3 different API types, and there is already some OOT
> > > drivers that were written to support them, using procfs, each
> > > one using a different (and IMO confusing) API.
> > > 
> > > After looking at the existing drivers and not liking the uAPI
> > > interfaces there, I opted to write a new driver from scratch,
> > > unifying support for all different versions and using sysfs
> > > via the leds class.  
> > 
> > Just do this the "right way" and not add it to staging first.  Just use
> > the existing LED class apis and all should be fine, no need for doing
> > anything unusual here.
> 
> I'm using the standard LED class already (but not triggers), and the
> standard WMI support.
> 
> Still, this API is complex, as it controls the LED behavior even when
> the machine is suspended. I would feel more comfortable if the ABI
> is not set into a stone at the beginning.

code in drivers/staging/ does not mean that you can mess with the
userspace api at will.  It still follows the same "rules" of any other
kernel code when it comes to that.

So just work with the LED developers to come to a valid api that works
properly within that framework please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
