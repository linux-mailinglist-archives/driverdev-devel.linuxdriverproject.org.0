Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4D6248782
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:28:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F93A862E6;
	Tue, 18 Aug 2020 14:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJ-rhjxAR+Kd; Tue, 18 Aug 2020 14:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E9CF861F4;
	Tue, 18 Aug 2020 14:28:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9C8D1BF23B
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 914691FFFF
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DEBzUHPmBV6u for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:28:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CC2911FE2F
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:28:26 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A1CD207D3;
 Tue, 18 Aug 2020 14:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597760906;
 bh=TyjAOtFLUcdkHJqVznsWOj1rsY2m5SGYugIkegCaavY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bxizRbar0YqT2TrzigWWLFiyjHd8OrzPxdbiHrSL99ATPBIiho1ScQAO7glgsBm1d
 CbqL8TXLmE9kPn/MY2ElMs8rz7fnLBvYK+P6j8yH2z/fv3Q506iLRcxsBsCOKM8oYr
 TVBv9HaIJ85o0Un2VIykpVXUobCuAXfcoKVL/ss4=
Date: Tue, 18 Aug 2020 16:28:20 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 00/44] SPMI patches needed by Hikey 970
Message-ID: <20200818162820.3c78c33c@coco.lan>
In-Reply-To: <20200818141750.GA608639@kroah.com>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
 <20200818141750.GA608639@kroah.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, linuxarm@huawei.com,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 18 Aug 2020 16:17:50 +0200
Greg Kroah-Hartman <gregkh@linuxfoundation.org> escreveu:

> On Mon, Aug 17, 2020 at 09:10:19AM +0200, Mauro Carvalho Chehab wrote:
> > Hi Greg,
> > 
> > This patch series is part of a work I'm doing in order to be able to support
> > a HiKey 970 board that I recently got on my hands.  
> 
> With this applied, I get the following build error:
> ERROR: modpost: "__spmi_driver_register" [drivers/staging/hikey9xx/hi6421-spmi-pmic.ko] undefined!
> ERROR: modpost: "spmi_ext_register_writel" [drivers/staging/hikey9xx/hi6421-spmi-pmic.ko] undefined!
> ERROR: modpost: "spmi_ext_register_readl" [drivers/staging/hikey9xx/hi6421-spmi-pmic.ko] undefined!
> ERROR: modpost: "spmi_controller_add" [drivers/staging/hikey9xx/hisi-spmi-controller.ko] undefined!
> ERROR: modpost: "spmi_controller_alloc" [drivers/staging/hikey9xx/hisi-spmi-controller.ko] undefined!
> ERROR: modpost: "spmi_controller_remove" [drivers/staging/hikey9xx/hisi-spmi-controller.ko] undefined!
> 
> 
> I'll take this in my testing tree for now, can you send a follow-on
> patch to fix this?

Surely. That's because it got moved from drivers/spmi/Kconfig.
The Kconfig var was inside a:

if SPMI
...
endif

This driver should "depends on SPMI". I'll send you a patch in a few.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
