Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E431248721
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0E52220444;
	Tue, 18 Aug 2020 14:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btVZ1kotzhEz; Tue, 18 Aug 2020 14:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89C382001D;
	Tue, 18 Aug 2020 14:17:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90FCB1BF3D0
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A49D844D5
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tJvvrfEXcXvx for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:17:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2549184465
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:17:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A9E420786;
 Tue, 18 Aug 2020 14:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597760246;
 bh=eSFoLxHwdLUVD42aGFcehpFNLZeM+rpJJpdSFzwbbd8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hOawlG2jnT0bXKUdagyBt6vUy7oIzfSBGUhVHLcBii7V5LVdlibE3qlleRC8DE+53
 pOwwII18PRbpUGcJOk+1mva66phcyNwSBMQ4eZdMk4ugGI9NYbs21Ron6ApZchtFP0
 CVB7irNMG8X5RKj+ihiqsnyuFEjCYcpnrRBbV4qY=
Date: Tue, 18 Aug 2020 16:17:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v3 00/44] SPMI patches needed by Hikey 970
Message-ID: <20200818141750.GA608639@kroah.com>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 17, 2020 at 09:10:19AM +0200, Mauro Carvalho Chehab wrote:
> Hi Greg,
> 
> This patch series is part of a work I'm doing in order to be able to support
> a HiKey 970 board that I recently got on my hands.

With this applied, I get the following build error:
ERROR: modpost: "__spmi_driver_register" [drivers/staging/hikey9xx/hi6421-spmi-pmic.ko] undefined!
ERROR: modpost: "spmi_ext_register_writel" [drivers/staging/hikey9xx/hi6421-spmi-pmic.ko] undefined!
ERROR: modpost: "spmi_ext_register_readl" [drivers/staging/hikey9xx/hi6421-spmi-pmic.ko] undefined!
ERROR: modpost: "spmi_controller_add" [drivers/staging/hikey9xx/hisi-spmi-controller.ko] undefined!
ERROR: modpost: "spmi_controller_alloc" [drivers/staging/hikey9xx/hisi-spmi-controller.ko] undefined!
ERROR: modpost: "spmi_controller_remove" [drivers/staging/hikey9xx/hisi-spmi-controller.ko] undefined!


I'll take this in my testing tree for now, can you send a follow-on
patch to fix this?

And I only took the first 41 patches in this series, see my comments on
the rest.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
