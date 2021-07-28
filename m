Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AC93D85F6
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Jul 2021 04:56:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7836160736;
	Wed, 28 Jul 2021 02:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UYFGudQ1Y-VZ; Wed, 28 Jul 2021 02:56:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 914E56058C;
	Wed, 28 Jul 2021 02:56:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67C141BF3D6
 for <devel@linuxdriverproject.org>; Wed, 28 Jul 2021 02:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64229405CE
 for <devel@linuxdriverproject.org>; Wed, 28 Jul 2021 02:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kuN0h50L2eTy for <devel@linuxdriverproject.org>;
 Wed, 28 Jul 2021 02:55:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E695405CC
 for <devel@linuxdriverproject.org>; Wed, 28 Jul 2021 02:55:55 +0000 (UTC)
Received: by ajax-webmail-mail.loongson.cn (Coremail) ; Wed, 28 Jul 2021
 10:55:47 +0800 (GMT+08:00)
X-Originating-IP: [10.20.41.133]
Date: Wed, 28 Jul 2021 10:55:47 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: =?UTF-8?B?5p2O5pmo6Ziz?= <lichenyang@loongson.cn>
To: "Sam Ravnborg" <sam@ravnborg.org>
Subject: Reply: Re: [PATCH v3 1/3] drm/loongson: Add DRM Driver for Loongson
 7A1000 bridge chip
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10a build 20191018(4c4f6d15)
 Copyright (c) 2002-2021 www.mailtech.cn .loongson.cn
In-Reply-To: <YQBFSsecMNXKcXCy@ravnborg.org>
References: <20210723031251.200686-1-lichenyang@loongson.cn>
 <YPqElHRxMSvrzzqs@phenom.ffwll.local> <YPr65jnI2coEIY1j@ravnborg.org>
 <YP/TZ2VRqYsw+jQN@phenom.ffwll.local> <YQBFSsecMNXKcXCy@ravnborg.org>
MIME-Version: 1.0
Message-ID: <2c5313e0.10541.17aeb0a2210.Coremail.lichenyang@loongson.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: AQAAf9BxsOIzxwBhc+0kAA--.17811W
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQAQA13QvNu3SwAAsE
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Huacai Chen <chenhuacai@kernel.org>, dri-devel@lists.freedesktop.org,
 Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>,
 devel@linuxdriverproject.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sam,

Thank you very much for your attention to our driver.
I will consider your opinion, The next version is due in the near future.

&gt; -----Original Messages-----
&gt; From: "Sam Ravnborg" <sam@ravnborg.org>
&gt; Sent Time: 2021-07-28 01:41:30 (Wednesday)
&gt; To: "Daniel Vetter" <daniel@ffwll.ch>
&gt; Subject: Re: [PATCH v3 1/3] drm/loongson: Add DRM Driver for Loongson 7A1000 bridge chip
&gt; 
&gt; Hi Chenyang,
&gt; 
&gt; I browsed the code on lore and noticed a few things and thought it
&gt; better to bring it to your attention now.
&gt; 
&gt; The general structure of the drivers seems good and coding style is
&gt; fine. The feedback is mostly stuff we have decided to do different over
&gt; time, so likely because you based the driver on some older driver.
&gt; And it can be hard to follow all the refactoring going on - something
&gt; that you get for free (almost) when is is mainlined.
&gt; 
&gt; 1) Use drm_ for logging whereever possible (need drm_device)
&gt; 2) Do not use irq mid-layer support in drm_driver, it is about to be
&gt;    legacy only. In other words avoid using drm_irq* stuff.
&gt; 3) Look at drm_drv to see code snippet how to use the drmm*
&gt;    infrastructure. It will save you some cleanup and in general make the
&gt;    driver more stable
&gt; 4) Sort includes alphabetically, and split them on in blocks.
&gt;    <linux *=""> is one block
&gt;    <newline>
&gt;    <drm drm_*=""> is next block
&gt; 5) Put entry in makefile in alphabetical order
&gt; 6) You most like can use the simple_encoder stuff we have today
&gt; 7) The *_load and *_unlod names where used in the past. Maybe be
&gt;    inspired by some newer driver here. _load functiosn is something used
&gt;    by legacy drivers so it confuses me a little.
&gt; 
&gt; I look forward to see next revision of the patch-set.
&gt; And sorry for not providing these high-level feedback issues before - I
&gt; have not had time to look at your driver.
&gt; 
&gt; 	Sam


------------------------------
LiChenyang</drm></newline></linux></daniel@ffwll.ch></sam@ravnborg.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
