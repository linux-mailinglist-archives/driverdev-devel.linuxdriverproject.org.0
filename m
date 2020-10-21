Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 844D7294AFA
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 12:00:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDA5E85F66;
	Wed, 21 Oct 2020 10:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ncYMNqVGgn7E; Wed, 21 Oct 2020 10:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C217385F67;
	Wed, 21 Oct 2020 10:00:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21FC11BF5A8
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 10:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14975872EF
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 10:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gbtrr9eumvnl for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 10:00:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24C1A872EA
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 10:00:26 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a8.dynamic.kabel-deutschland.de
 [95.90.213.168])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FAA821741;
 Wed, 21 Oct 2020 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603274425;
 bh=vMGHj7i4+owKzNMXhur9mOOxw32IG/TyxPr15+zBKSE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=azHwE7cTBtqVKOXdRr2ULr/HOJ9dCNEgcwvfx8Jl0QEwIFLO1mJ2Ati631voYBNDj
 LL6+gLcGFjJHsVA9d8jnOD5nDZ9zLGCTzAgGBKuLcERa+KqMKdxsn5MEwYHabnE1Xo
 0hUh3rw46NMa7Ly0FwbqrBFqne8ZSb8sbeSpPMiE=
Date: Wed, 21 Oct 2020 12:00:17 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] MAINTAINERS: fix broken doc refs due to yaml
 conversion
Message-ID: <20201021120017.3da0fe46@coco.lan>
In-Reply-To: <20201013105239.348efc0c@coco.lan>
References: <cover.1602245659.git.mchehab+huawei@kernel.org>
 <ba7319ab47bc7e80a57667f700ab677ceaa3ca8c.1602245659.git.mchehab+huawei@kernel.org>
 <20201012192114.GA1938842@bogus> <20201013105239.348efc0c@coco.lan>
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 Jonathan Corbet <corbet@lwn.net>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 13 Oct 2020 10:52:39 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> Em Mon, 12 Oct 2020 14:21:14 -0500
> Rob Herring <robh@kernel.org> escreveu:
> 
> > On Fri, Oct 09, 2020 at 02:15:30PM +0200, Mauro Carvalho Chehab wrote:  
> > > Several *.txt files got converted to yaml. Update their
> > > references at MAINTAINERS file accordingly.
> > > 
> > > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > > ---
> > >  Documentation/devicetree/bindings/clock/hi6220-clock.txt | 2 +-
> > >  MAINTAINERS                                              | 9 ++++-----
> > >  .../devicetree/bindings/net/wireless/silabs,wfx.yaml     | 2 +-
> > >  3 files changed, 6 insertions(+), 7 deletions(-)    
> > 
> > Doesn't apply for me.  
> 
> It is based on the top of -next, so perhaps it depends on some other
> changes that aren't upstream yet and comes from other trees. 
> 
> I could try to split it, but I guess the easiest way is
> to just push this one by the end of the merge window, together
> with the remaining patches I have left, fixing the other doc
> build issues.
> 
> Would that work for you?

It now applies cleanly on the top of upstream.

If it would be ok for you, I'll send this one together with the other
pending doc warning fix patch series.

Regards,
Mauro


[PATCH] MAINTAINERS: fix broken doc refs due to yaml conversion

Several *.txt files got converted to yaml. Update their
references at MAINTAINERS file accordingly.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

diff --git a/Documentation/devicetree/bindings/clock/hi6220-clock.txt b/Documentation/devicetree/bindings/clock/hi6220-clock.txt
index ef3deb7b86ea..17ac4a3dd26a 100644
--- a/Documentation/devicetree/bindings/clock/hi6220-clock.txt
+++ b/Documentation/devicetree/bindings/clock/hi6220-clock.txt
@@ -4,7 +4,7 @@ Clock control registers reside in different Hi6220 system controllers,
 please refer the following document to know more about the binding rules
 for these system controllers:
 
-Documentation/devicetree/bindings/arm/hisilicon/hisilicon.txt
+Documentation/devicetree/bindings/arm/hisilicon/hisilicon.yaml
 
 Required Properties:
 
diff --git a/MAINTAINERS b/MAINTAINERS
index 17ca7c8490a9..2cfcfa010b06 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -978,7 +978,7 @@ M:	Michael Hennerich <Michael.Hennerich@analog.com>
 L:	linux-iio@vger.kernel.org
 S:	Supported
 W:	http://ez.analog.com/community/linux-device-drivers
-F:	Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.txt
+F:	Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
 F:	drivers/iio/adc/ad7768-1.c
 
 ANALOG DEVICES INC AD7780 DRIVER
@@ -3847,7 +3847,7 @@ M:	Roger Quadros <rogerq@ti.com>
 L:	linux-usb@vger.kernel.org
 S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/peter.chen/usb.git
-F:	Documentation/devicetree/bindings/usb/cdns-usb3.txt
+F:	Documentation/devicetree/bindings/usb/cdns,usb3.yaml
 F:	drivers/usb/cdns3/
 
 CADET FM/AM RADIO RECEIVER DRIVER
@@ -7898,7 +7898,7 @@ HISILICON LPC BUS DRIVER
 M:	john.garry@huawei.com
 S:	Maintained
 W:	http://www.hisilicon.com
-F:	Documentation/devicetree/bindings/arm/hisilicon/hisilicon-low-pin-count.txt
+F:	Documentation/devicetree/bindings/arm/hisilicon/low-pin-count.yaml
 F:	drivers/bus/hisi_lpc.c
 
 HISILICON NETWORK SUBSYSTEM 3 DRIVER (HNS3)
@@ -14872,7 +14872,6 @@ RENESAS ETHERNET DRIVERS
 R:	Sergei Shtylyov <sergei.shtylyov@gmail.com>
 L:	netdev@vger.kernel.org
 L:	linux-renesas-soc@vger.kernel.org
-F:	Documentation/devicetree/bindings/net/renesas,*.txt
 F:	Documentation/devicetree/bindings/net/renesas,*.yaml
 F:	drivers/net/ethernet/renesas/
 F:	include/linux/sh_eth.h
@@ -18060,7 +18059,7 @@ M:	Yu Chen <chenyu56@huawei.com>
 M:	Binghui Wang <wangbinghui@hisilicon.com>
 L:	linux-usb@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/phy/phy-hi3660-usb3.txt
+F:	Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
 F:	drivers/phy/hisilicon/phy-hi3660-usb3.c
 
 USB ISP116X DRIVER
diff --git a/drivers/staging/wfx/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml b/drivers/staging/wfx/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
index 43b5630c0407..510edd12ed19 100644
--- a/drivers/staging/wfx/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
+++ b/drivers/staging/wfx/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
@@ -24,7 +24,7 @@ description:
     In addition, it is recommended to declare a mmc-pwrseq on SDIO host above
     WFx. Without it, you may encounter issues with warm boot. The mmc-pwrseq
     should be compatible with mmc-pwrseq-simple. Please consult
-    Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.txt for more
+    Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml for more
     information.
 
   For SPI':'




Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
