Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7C22B5AB8
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 09:08:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F00FF87116;
	Tue, 17 Nov 2020 08:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pLa5eNmpDGJb; Tue, 17 Nov 2020 08:08:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F3BF8704E;
	Tue, 17 Nov 2020 08:08:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD5A41BF340
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 08:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B277E2038B
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 08:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AYqlK+BfayaY for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:08:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9365F1FB6B
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 08:08:29 +0000 (UTC)
Received: from coco.lan (ip5f5ad5cc.dynamic.kabel-deutschland.de
 [95.90.213.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE5DA217A0;
 Tue, 17 Nov 2020 08:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605600509;
 bh=cRiR775sbP/iM4xvFYf2hnVUp7zOkSPpk4O4Ifcuc+I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OcdWHYNAp9Idh3juVnQys4lCUIATjqkUV9VMjC0eC76liXginBdO3BsXsudMTb8Da
 aE10utKWj9StftQrGI4Nsbzed7t/e31IyQKmeMLqW5ieiA5rZ0ZIuUoomHq2Xp4NjU
 +enwnfYCSLAn+zSobcyol2YJzku7RMPp1nagUl88=
Date: Tue, 17 Nov 2020 09:08:22 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 4/8] regulator: hi6421v600-regulator: move it from staging
Message-ID: <20201117090724.4ade833a@coco.lan>
In-Reply-To: <20201116183833.GC4739@sirena.org.uk>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <471362653f22a8748202c55babd2b462056a5797.1605530560.git.mchehab+huawei@kernel.org>
 <20201116183833.GC4739@sirena.org.uk>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mayulong <mayulong1@huawei.com>, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linuxarm@huawei.com,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mark,

Em Mon, 16 Nov 2020 18:38:33 +0000
Mark Brown <broonie@kernel.org> escreveu:

> > This driver is ready for mainstream. Move it out of staging.  
> 
> There's quite a few issues here, to be honest I'm disappointed some of
> them weren't caught during staging review, this needs fairly substantial
> work and there's signs that this also applies to at least the MFD
> portion.
> 
...
> > +static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
> > +                                          struct device_node *np,
> > +                                          struct hi6421_spmi_pmic *pmic)
> > +{  
> 
> This probe code looks very different to other regulator drivers, this
> alone should have been a warning that the driver needs some substantial
> refactoring here.  As indicated information about what regulators are
> present on devices and their properties should be in the driver not the
> DT, the driver should just be able to register them unconditionally and
> use of_match and regulators_node to allow the core to find any
> constraints that are provided by the platform.

Let me reply to this before handling the other issues you pointed, as
this one is related to some design decisions I had to make for this driver
to properly work upstream.

FYI, all documentation I have about this board is at:
	https://www.96boards.org/documentation/consumer/hikey/hikey970/

-

The setup for MFD/regulator is different than almost all other
regulator drivers currently upstreamed[1]. 

The PM part of Hikey970 is based on a master/slave SPMI bus. Each
bus can have up to 16 PM chips connected into it.

It means that, for the regulator driver to work, two drivers
should be probed first: the SPMI bus controller driver
(hisi-spmi-controller.c) and the SPMI bus client driver, which is
at the MFD driver(hi6421-spmi-pmic.c).

Only after having both probed, the regulator driver can be
probed.

Also, as all the communication between the PM chip
and the SoC happens via a single serial bus, there's no
sense on probing the regulators in parallel.

That's mainly the reason why I opted to serialize the probe
inside hi6421v600-regulator.c. 

The relevant changeset that ensures that everything is
probed the right way is this one:
	75937f8f961e ("staging: regulator: hi6421v600-regulator: change the binding logic")

Without such change, the driver doesn't work upstream, as the 
regulator driver ends by being probed before the bus client
driver (MFD).

There's a second reason, though: when letting regulator probe to
happen in parallel, the LDOs got probed on a random order, which
makes more difficult to debug the driver, as the LDO numbering
may not be following the LDO name, making harder to debug the
drivers that depend on regulator support.

Thanks,
Mauro

[1] The only other drivers for SPMI bus are from some Qualcomm
based boards - those seem to be using a different setup.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
