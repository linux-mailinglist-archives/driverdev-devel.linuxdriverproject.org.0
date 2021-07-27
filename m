Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3850E3D7C63
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Jul 2021 19:42:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4930B6079F;
	Tue, 27 Jul 2021 17:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUNo5_q3_DLw; Tue, 27 Jul 2021 17:42:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 952AA606B3;
	Tue, 27 Jul 2021 17:42:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0671BF359
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 17:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C7B9400DF
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 17:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXt_lPgJ255n for <devel@linuxdriverproject.org>;
 Tue, 27 Jul 2021 17:41:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com
 [91.221.196.228])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E858E400BF
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 17:41:37 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id ed670ac0-ef01-11eb-8d1a-0050568cd888;
 Tue, 27 Jul 2021 17:41:52 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 5727B194B1A;
 Tue, 27 Jul 2021 19:41:53 +0200 (CEST)
Date: Tue, 27 Jul 2021 19:41:30 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v3 1/3] drm/loongson: Add DRM Driver for Loongson 7A1000
 bridge chip
Message-ID: <YQBFSsecMNXKcXCy@ravnborg.org>
References: <20210723031251.200686-1-lichenyang@loongson.cn>
 <YPqElHRxMSvrzzqs@phenom.ffwll.local>
 <YPr65jnI2coEIY1j@ravnborg.org>
 <YP/TZ2VRqYsw+jQN@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YP/TZ2VRqYsw+jQN@phenom.ffwll.local>
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

Hi Chenyang,

I browsed the code on lore and noticed a few things and thought it
better to bring it to your attention now.

The general structure of the drivers seems good and coding style is
fine. The feedback is mostly stuff we have decided to do different over
time, so likely because you based the driver on some older driver.
And it can be hard to follow all the refactoring going on - something
that you get for free (almost) when is is mainlined.

1) Use drm_ for logging whereever possible (need drm_device)
2) Do not use irq mid-layer support in drm_driver, it is about to be
   legacy only. In other words avoid using drm_irq* stuff.
3) Look at drm_drv to see code snippet how to use the drmm*
   infrastructure. It will save you some cleanup and in general make the
   driver more stable
4) Sort includes alphabetically, and split them on in blocks.
   <linux/*> is one block
   <newline>
   <drm/drm_*> is next block
5) Put entry in makefile in alphabetical order
6) You most like can use the simple_encoder stuff we have today
7) The *_load and *_unlod names where used in the past. Maybe be
   inspired by some newer driver here. _load functiosn is something used
   by legacy drivers so it confuses me a little.

I look forward to see next revision of the patch-set.
And sorry for not providing these high-level feedback issues before - I
have not had time to look at your driver.

	Sam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
