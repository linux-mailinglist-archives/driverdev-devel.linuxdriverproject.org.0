Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2333D3E89
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Jul 2021 19:23:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BF79405C9;
	Fri, 23 Jul 2021 17:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id en8DBtSXOxNh; Fri, 23 Jul 2021 17:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 592C4400ED;
	Fri, 23 Jul 2021 17:23:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 603F91BF306
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 17:22:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F7A0606EF
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 17:22:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JyztLsMrT3Bu for <devel@linuxdriverproject.org>;
 Fri, 23 Jul 2021 17:22:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com
 [91.221.196.228])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E21D0606DA
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 17:22:53 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id a479d121-ebda-11eb-8d1a-0050568cd888;
 Fri, 23 Jul 2021 17:23:05 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id DE931194B25;
 Fri, 23 Jul 2021 19:23:06 +0200 (CEST)
Date: Fri, 23 Jul 2021 19:22:46 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel@ffwll.ch>, lichenyang <lichenyang@loongson.cn>
Subject: Re: [PATCH v3 1/3] drm/loongson: Add DRM Driver for Loongson 7A1000
 bridge chip
Message-ID: <YPr65jnI2coEIY1j@ravnborg.org>
References: <20210723031251.200686-1-lichenyang@loongson.cn>
 <YPqElHRxMSvrzzqs@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YPqElHRxMSvrzzqs@phenom.ffwll.local>
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
Cc: David Airlie <airlied@linux.ie>, Huacai Chen <chenhuacai@kernel.org>,
 dri-devel@lists.freedesktop.org, lichenyang <lichenyang@loongson.cn>,
 Thomas Zimmermann <tzimmermann@suse.de>, devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 23, 2021 at 10:57:56AM +0200, Daniel Vetter wrote:
> On Fri, Jul 23, 2021 at 11:12:49AM +0800, lichenyang wrote:
> > From: Chenyang Li <lichenyang@loongson.cn>
> > 
> > This patch adds an initial DRM driver for the Loongson LS7A1000
> > bridge chip(LS7A). The LS7A bridge chip contains two display
> > controllers, support dual display output. The maximum support for
> > each channel display is to 1920x1080@60Hz.
> > At present, DC device detection and DRM driver registration are
> > completed, the crtc/plane/encoder/connector objects has been
> > implemented.
> > On Loongson 3A4000 CPU and 7A1000 system, we have achieved the use
> > of dual screen, and support dual screen clone mode and expansion
> > mode.
> > 
> > v9:
> > - Optimize the error handling process.
> > - Remove the useless flags parameter.
> > - Fix some incorrect use of variables and constructs.
> > 
...
> 
> Somehow this simple driver is at v9 and still not landed. Do you have
> someone from the drm maintainers/committers who's guiding you through all
> this? I'm not seeing you Cc: a specific person, without that there's good
> chances your contribution gets lost. I'm swamped myself, which is why I've
> ignored this and hope you'd fine someone else and stick to them.

Hi Chenyang,

Please cc: me on the next revision - then I will take a look.
But I count on someone more familiar with atomic modesetting can also
take a look. Thomas? Maxime?

	Sam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
