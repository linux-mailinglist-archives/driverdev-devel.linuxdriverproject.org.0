Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2A8199A3B
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 17:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A0A586AD0;
	Tue, 31 Mar 2020 15:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aI3O1JnFLZp8; Tue, 31 Mar 2020 15:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E008986969;
	Tue, 31 Mar 2020 15:49:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68CC11BF831
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 15:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 643D9227FF
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 15:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNVUUeYy62YJ for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 15:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 4F57821551
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 15:49:21 +0000 (UTC)
Received: from coco.lan (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BAA820714;
 Tue, 31 Mar 2020 15:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585669761;
 bh=cKeBnZ340s/3Wc8cYt7l64sbcQ/n5gd0b1gXKRjgmNE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=izv08sg0h7mu5Q67SxYzpInzivHyMXQgCJmjriTyA5M+yN9kIKLtMMz5m0pwqjMyP
 Co3XN1kwF5Hm+QRdHZMabF2mQOOXk+jKicqGsxvZMYUwP78rv5FOvL04PqWbuV9FpS
 J7bcmM/s3z5tL9db5p6M0e2eJ7yANt3L7add1dGg=
Date: Tue, 31 Mar 2020 17:49:14 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: SPDX headers - Was: Re: [PATCH v4 17/33] media: add SPDX headers on
 Kconfig and Makefile files
Message-ID: <20200331174914.2789865e@coco.lan>
In-Reply-To: <20200331120608.GB4767@pendragon.ideasonboard.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
 <20200331120608.GB4767@pendragon.ideasonboard.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 31 Mar 2020 15:06:08 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> I've however been thinking about licenses for
> build system files recently, and I'll hijack this thread a bit to ask a
> question :-)

Ok, I'll change the subject, as the answers won't be related to the
Kernel :-)

> For a project like the Linux kernel, and especially for subsystems that
> are covered by a single license, the choice is easy, we can apply the
> same license to the build files. However, for a project that contains
> components covered by different licenses (such as, for instance, an LGPL
> library, a GPL application and a BSD plugin), how should the license
> covering the build system files be selected ? I searched a bit for
> guidance on this topic, and couldn't find much.

Then everything becomes a way more complex :-)

I guess nobody has a clear answer for that. Also, IANAL.

What I can tell is what it would makes sense for me.

The big impact of a complex licenses model would be for the ones
packaging it on some distro, and for the users of such distros.

The distros need to know if they have the rights to redistribute,
and need to notify their usages about each package's license.

Let's assume a project "foo-utils" that has such complexity.

Assuming a project that started on a green field (like libcamera),
and such project doesn't use stuff from external libraries, what
one could do would be to design it in a way that different licenses
would be packaged differently. For instance:

	foo-libs	# everything here is under LGPL
	foo-bsd-plugin	# everything here is under BSD
	foo-utils	# everything here is under GPLv3

Then, on each of them, a COPYING.foo file (or whatever other way
distros would use to identify the per-package license) would contain
the license with applied to it.

Btw, if you want to take a look on a real-case scenario, see, for
example:

	https://build.opensuse.org/package/view_file/devel:libraries:c_c++/v4l-utils/v4l-utils.spec?rev=a250bff0f849e8c2fa7e476a1f2849a8

	%package -n libv4l-devel
	License:        LGPLv2+
	
	...

	%package -n     qv4l2
	License:        GPLv2+

Btw, GStreamer actually follows a similar approach, but they even split
those into different git trees (core, good, bad and ugly plugins).

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
