Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CDF14FECA
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Feb 2020 19:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCA2886180;
	Sun,  2 Feb 2020 18:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id asB3QowXtLlC; Sun,  2 Feb 2020 18:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0C40860E1;
	Sun,  2 Feb 2020 18:54:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E71CB1BF232
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 18:53:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE5C720429
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 18:53:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5KVNK-omOevK for <devel@linuxdriverproject.org>;
 Sun,  2 Feb 2020 18:53:56 +0000 (UTC)
X-Greylist: delayed 00:05:48 by SQLgrey-1.7.6
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by silver.osuosl.org (Postfix) with ESMTPS id B588320427
 for <devel@driverdev.osuosl.org>; Sun,  2 Feb 2020 18:53:55 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id EBB6120026;
 Sun,  2 Feb 2020 19:48:02 +0100 (CET)
Date: Sun, 2 Feb 2020 19:48:01 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Subject: Re: fbtft: 5 years in staging
Message-ID: <20200202184801.GA8948@ravnborg.org>
References: <a6cef26c-0f4b-47f0-d249-71f53891526b@tronnes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6cef26c-0f4b-47f0-d249-71f53891526b@tronnes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10 a=D19gQVrFAAAA:8
 a=e5mUnYsNAAAA:8 a=gAmX6pxEAAAA:20 a=fqf2UyZVoHTRZuSwULwA:9
 a=wPNLvfGTeEIA:10 a=W4TVW4IDbPiebHqcZpNg:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=pHzHmUro8NiASowvMSCR:22 a=6VlIyEUom7LUIeUMNQJH:22
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
Cc: OSUOSL Drivers <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Noralf

On Sun, Feb 02, 2020 at 04:41:54PM +0100, Noralf Tr=F8nnes wrote:
> Hi,
> =

> Since I'm the original author of fbtft I thought I'd highlight a couple
> of issues that's probably not well known.
> =

> Right after fbtft was added, fbdev was closed for new drivers[1] and
> the fbdev maintainer wanted to remove fbtft as a consequence of that
> decision, but Greg KH said he'd keep fbtft drivers in staging
> "until a matching DRM driver is present in the tree"[2].
> =

> There are 2 issues wrt the goal of making a matching DRM driver
> (strictly speaking). One is impossible to do (policy), the other is
> unlikely to happen:
> =

> 1. Device Tree 'init' property
> =

> All fbtft drivers have controller setup code that matches one
> particular display panel. From the start of fbtft it was possible to
> override this using platform data. Later when Device Tree support was
> added, an 'init=3D' property to do the same was added.
> =

> Example:
> 	init =3D <0x10000e5 0x78F0
> 		0x1000001 0x0100
> 		0x2000032
> 		0x1000007 0x0133>;
> =

> This translates to:
> 	register_write(0x00e5, 0x78F0);
> 	register_write(0x0001, 0x0100);
> 	mdelay(32);
> 	register_write(0x0007, 0x0133);
> =

> AFAIU setting register values from DT is a no-go, so this functionality
> can't be replicated in a DRM driver. Many displays are made to work
> using this mechanism, in particular ili9341 based ones.
> =

> 2. Parallel bus interface
> =

> All fbtft drivers support both a SPI and a parallel bus interface
> through the fbtft helper module. Many (not all) controllers support more
> than one interface. The parallel bus support was added to fbtft in its
> early days when not many SPI displays were available (nowadays there's
> lots to choose from). fbtft uses bitbanging to drive the parallel
> interface so it's really slow, even more slow than SPI and SPI with DMA
> beats it thoroughly. I know there are people that use the paralell bus
> support, but I don't see much point in it unless we get a parallel bus
> subsystem that can use the dedicated hw on certain SoC's (Beaglebone,
> Pi). And those SOC's most likely have a parallel video/RGB bus as well,
> which IMO is a much better option for a panel.
> =

> =

> The following drivers have DRM counterparts that have the same panel
> setup code:
> =

> - fb_hx8357d.c: drivers/gpu/drm/tiny/hx8357d.c
> - fb_ili9341.c: drivers/gpu/drm/tiny/mi0283qt.c
> - fb_st7735r.c: drivers/gpu/drm/tiny/st7735r.c
> - fb_ili9486.c: Patches are posted on dri-devel[3]
> =

> But they don't support all panels based on that controller and they
> don't have parallel bus support.
> =

> There is actually also another obstacle for conversion and that is, some
> of the displays (for which there is builtin driver support) might be
> impossible to source except as second hand. And it's not always obvious
> which panel is supported by a certain driver.
> At least the displays supported by these drivers are listed as
> discontinued on the fbtft wiki[4]:
> - fb_hx8340bn.c
> - fb_hx8347d.c
> - fb_ili9320
> =

> This one never made it from a prototype to an actual product, because
> it was too slow:
> - fb_watterott.c
> =

> I have no plans to convert fbtft drivers myself, but I figured a 5 year
> anniversary was a good excuse for a status update.

Thanks for the history lesson and the status update, a very informative
and interesting read.

Thanks for all your work in this area!

	Sam

> =

> Noralf.
> =

> [1] https://lkml.org/lkml/2015/9/24/253
> [2] https://lkml.org/lkml/2016/11/23/146
> [3] https://patchwork.freedesktop.org/series/72645/
> [4] https://github.com/notro/fbtft/wiki/LCD-Modules#discontinued-products
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
