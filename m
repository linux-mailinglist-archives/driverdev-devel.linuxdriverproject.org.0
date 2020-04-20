Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB231B1604
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 21:38:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AC038785D;
	Mon, 20 Apr 2020 19:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v2+Po1GBYIsf; Mon, 20 Apr 2020 19:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB6598780E;
	Mon, 20 Apr 2020 19:38:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F1731BF29A
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 19:38:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7693687ED9
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 19:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hw6OfTcIIKLO for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 19:38:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9BFF287EB0
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 19:38:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3FC920782;
 Mon, 20 Apr 2020 19:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587411489;
 bh=st5ryvnuuzHW/y5jQcD6ktJkLyF7FZY29U4HdlKnUxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2wD1wB3o85g4p18KfuQgQ3nh5QvCYEtTG0WYpX2GAGyHlT6o9hYsCH9TMSUvirVCH
 NtzWAtFykY9kByx0zNIJvrMTE+0mik2BW1te8Ol1bf0wRVpyOz8//ClGC0CwkfIjpC
 9O07/3WEqn3OTereZBM+G5I0mN7USdlnCHZyGqV4=
Date: Mon, 20 Apr 2020 21:38:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] media: usbvision: depends on USB
Message-ID: <20200420193806.GB300350@kroah.com>
References: <a0ed60978af23b398d128d1075a7961ef57f0694.1587401420.git.mchehab+huawei@kernel.org>
 <7034ba29-035c-6f0b-e553-68a369e8aaf8@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7034ba29-035c-6f0b-e553-68a369e8aaf8@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 20, 2020 at 10:41:28AM -0700, Randy Dunlap wrote:
> On 4/20/20 9:50 AM, Mauro Carvalho Chehab wrote:
> > When built with:
> > 	CONFIG_USB=m
> > 	CONFIG_VIDEO_USBVISION=y
> > 
> > It causes ld errors:
> > 
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_write_reg_irq':
> > usbvision-core.c:(.text+0x8a4): undefined reference to `usb_submit_urb'
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_isoc_irq':
> > usbvision-core.c:(.text+0x2ee8): undefined reference to `usb_submit_urb'
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_read_reg':
> > usbvision-core.c:(.text+0x30ad): undefined reference to `usb_control_msg'
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_write_reg':
> > usbvision-core.c:(.text+0x3178): undefined reference to `usb_control_msg'
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_output':
> > usbvision-core.c:(.text+0x344e): undefined reference to `usb_control_msg'
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_input':
> > usbvision-core.c:(.text+0x3b9b): undefined reference to `usb_control_msg'
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_setup':
> > usbvision-core.c:(.text+0x4009): undefined reference to `usb_control_msg'
> > ld: drivers/staging/media/usbvision/usbvision-core.o:usbvision-core.c:(.text+0x417f): more undefined references to `usb_control_msg' follow
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_alternate':
> > usbvision-core.c:(.text+0x4518): undefined reference to `usb_set_interface'
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_init_isoc':
> > usbvision-core.c:(.text+0x4673): undefined reference to `usb_alloc_urb'
> > ld: usbvision-core.c:(.text+0x46a5): undefined reference to `usb_alloc_coherent'
> > ld: usbvision-core.c:(.text+0x4765): undefined reference to `usb_submit_urb'
> > ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_stop_isoc':
> > usbvision-core.c:(.text+0x4837): undefined reference to `usb_kill_urb'
> > ld: usbvision-core.c:(.text+0x485f): undefined reference to `usb_free_coherent'
> > ld: usbvision-core.c:(.text+0x4874): undefined reference to `usb_free_urb'
> > ld: usbvision-core.c:(.text+0x48f1): undefined reference to `usb_set_interface'
> > ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_release':
> > usbvision-video.c:(.text+0x1a8a): undefined reference to `usb_free_urb'
> > ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_disconnect':
> > usbvision-video.c:(.text+0x1b74): undefined reference to `usb_put_dev'
> > ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_radio_close':
> > usbvision-video.c:(.text+0x1c89): undefined reference to `usb_set_interface'
> > ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_probe':
> > usbvision-video.c:(.text+0x1e4b): undefined reference to `usb_get_dev'
> > ld: usbvision-video.c:(.text+0x20e1): undefined reference to `usb_alloc_urb'
> > ld: usbvision-video.c:(.text+0x2797): undefined reference to `usb_put_dev'
> > ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_exit':
> > usbvision-video.c:(.exit.text+0x37): undefined reference to `usb_deregister'
> > ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_init':
> > usbvision-video.c:(.init.text+0xf9): undefined reference to `usb_register_driver'
> > ld: drivers/staging/media/usbvision/usbvision-i2c.o: in function `usbvision_i2c_write':
> > usbvision-i2c.c:(.text+0x2f4): undefined reference to `usb_control_msg'
> > 
> > Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> 
> Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
