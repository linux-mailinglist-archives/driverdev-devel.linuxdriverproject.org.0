Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D911614FE28
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Feb 2020 16:51:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8ADE385755;
	Sun,  2 Feb 2020 15:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTQrawDLyJYD; Sun,  2 Feb 2020 15:50:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7F2C85081;
	Sun,  2 Feb 2020 15:50:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 352C21BF3BF
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 15:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 31D438733B
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 15:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xTmsqCROc0w for <devel@linuxdriverproject.org>;
 Sun,  2 Feb 2020 15:50:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C314287327
 for <devel@driverdev.osuosl.org>; Sun,  2 Feb 2020 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8BrTQRhg7pIITe4Ky5qfFRFO6d8XGvLMzLEIHUrz1SQ=; b=edpdE6TMnKNhvCH59wGUPsdHTx
 1zyD/+WmBiXkUQsHfkpA79cxmW4fQJZY5CADfwZiv1YjVWNMsm3OiC+6O6vxdEKliYi1iphZRWeVI
 JfuQiiBkkYTIk7JXf3mbnJSzeSremA0L0GNmJ6wxe8iOc42WMlWve50xhFIgMnjBGmjmp8AnJbrJP
 ETzyYqi6gsYJPfN1S5dc+6XsU/whlaYZZDxlsTN7C1WqSfpm6AVtkbtUegCnq3awOdY/joredxVc1
 ghtn5u9WJx2a4lPoPmtY/SLeJtPCA8ArclwMr4DmENBSk/ESWJv4njVHeCW098ZcTiCjhfm02Se36
 sZdGYeKQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:51596
 helo=[192.168.10.61])
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1iyHNn-0007M8-2b; Sun, 02 Feb 2020 16:41:59 +0100
To: OSUOSL Drivers <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Subject: fbtft: 5 years in staging
Message-ID: <a6cef26c-0f4b-47f0-d249-71f53891526b@tronnes.org>
Date: Sun, 2 Feb 2020 16:41:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

Since I'm the original author of fbtft I thought I'd highlight a couple
of issues that's probably not well known.

Right after fbtft was added, fbdev was closed for new drivers[1] and
the fbdev maintainer wanted to remove fbtft as a consequence of that
decision, but Greg KH said he'd keep fbtft drivers in staging
"until a matching DRM driver is present in the tree"[2].

There are 2 issues wrt the goal of making a matching DRM driver
(strictly speaking). One is impossible to do (policy), the other is
unlikely to happen:

1. Device Tree 'init' property

All fbtft drivers have controller setup code that matches one
particular display panel. From the start of fbtft it was possible to
override this using platform data. Later when Device Tree support was
added, an 'init=' property to do the same was added.

Example:
	init = <0x10000e5 0x78F0
		0x1000001 0x0100
		0x2000032
		0x1000007 0x0133>;

This translates to:
	register_write(0x00e5, 0x78F0);
	register_write(0x0001, 0x0100);
	mdelay(32);
	register_write(0x0007, 0x0133);

AFAIU setting register values from DT is a no-go, so this functionality
can't be replicated in a DRM driver. Many displays are made to work
using this mechanism, in particular ili9341 based ones.

2. Parallel bus interface

All fbtft drivers support both a SPI and a parallel bus interface
through the fbtft helper module. Many (not all) controllers support more
than one interface. The parallel bus support was added to fbtft in its
early days when not many SPI displays were available (nowadays there's
lots to choose from). fbtft uses bitbanging to drive the parallel
interface so it's really slow, even more slow than SPI and SPI with DMA
beats it thoroughly. I know there are people that use the paralell bus
support, but I don't see much point in it unless we get a parallel bus
subsystem that can use the dedicated hw on certain SoC's (Beaglebone,
Pi). And those SOC's most likely have a parallel video/RGB bus as well,
which IMO is a much better option for a panel.


The following drivers have DRM counterparts that have the same panel
setup code:

- fb_hx8357d.c: drivers/gpu/drm/tiny/hx8357d.c
- fb_ili9341.c: drivers/gpu/drm/tiny/mi0283qt.c
- fb_st7735r.c: drivers/gpu/drm/tiny/st7735r.c
- fb_ili9486.c: Patches are posted on dri-devel[3]

But they don't support all panels based on that controller and they
don't have parallel bus support.

There is actually also another obstacle for conversion and that is, some
of the displays (for which there is builtin driver support) might be
impossible to source except as second hand. And it's not always obvious
which panel is supported by a certain driver.
At least the displays supported by these drivers are listed as
discontinued on the fbtft wiki[4]:
- fb_hx8340bn.c
- fb_hx8347d.c
- fb_ili9320

This one never made it from a prototype to an actual product, because
it was too slow:
- fb_watterott.c

I have no plans to convert fbtft drivers myself, but I figured a 5 year
anniversary was a good excuse for a status update.

Noralf.

[1] https://lkml.org/lkml/2015/9/24/253
[2] https://lkml.org/lkml/2016/11/23/146
[3] https://patchwork.freedesktop.org/series/72645/
[4] https://github.com/notro/fbtft/wiki/LCD-Modules#discontinued-products
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
