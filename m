Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6C28886C
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 14:15:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 856C48771E;
	Fri,  9 Oct 2020 12:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9vj+bpSpLGQ; Fri,  9 Oct 2020 12:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F11598770D;
	Fri,  9 Oct 2020 12:15:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 823E81BF9BA
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 12:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E8C0876C6
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 12:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l4KPVAamPwfT for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 12:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C0FB5876D7
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 12:15:35 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d0.dynamic.kabel-deutschland.de
 [95.90.213.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 289B1222B8;
 Fri,  9 Oct 2020 12:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602245735;
 bh=pDC8468yRWXl1XwCHsZdpI1gGFIdnrS9rb6TGaSt7wI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VP3Z001XFILJTixrqR4GNf/XexaFVRWjSTLHA66XzOS38ujpyjKgxvtV6Dx8p2Ld5
 MZwjuC4wqhQ/ChsoXlrv7vzGg0O6yc+Oja/8RYMhaPvvdfbeEB+Q/Op5UWj8eFatPR
 /+w/mvXf1YXBnZkxc8/s1wQlLtWfjE0XDgW1U7uQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kQrJ6-003kt1-IP; Fri, 09 Oct 2020 14:15:32 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 1/2] MAINTAINERS: fix broken doc refs due to yaml conversion
Date: Fri,  9 Oct 2020 14:15:30 +0200
Message-Id: <ba7319ab47bc7e80a57667f700ab677ceaa3ca8c.1602245659.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1602245659.git.mchehab+huawei@kernel.org>
References: <cover.1602245659.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Several *.txt files got converted to yaml. Update their
references at MAINTAINERS file accordingly.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/devicetree/bindings/clock/hi6220-clock.txt | 2 +-
 MAINTAINERS                                              | 9 ++++-----
 .../devicetree/bindings/net/wireless/silabs,wfx.yaml     | 2 +-
 3 files changed, 6 insertions(+), 7 deletions(-)

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
index d55f55d89509..7b1183aaafe5 100644
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
@@ -3867,7 +3867,7 @@ M:	Roger Quadros <rogerq@ti.com>
 L:	linux-usb@vger.kernel.org
 S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/peter.chen/usb.git
-F:	Documentation/devicetree/bindings/usb/cdns-usb3.txt
+F:	Documentation/devicetree/bindings/usb/cdns,usb3.yaml
 F:	drivers/usb/cdns3/
 
 CADET FM/AM RADIO RECEIVER DRIVER
@@ -7918,7 +7918,7 @@ HISILICON LPC BUS DRIVER
 M:	john.garry@huawei.com
 S:	Maintained
 W:	http://www.hisilicon.com
-F:	Documentation/devicetree/bindings/arm/hisilicon/hisilicon-low-pin-count.txt
+F:	Documentation/devicetree/bindings/arm/hisilicon/low-pin-count.yaml
 F:	drivers/bus/hisi_lpc.c
 
 HISILICON NETWORK SUBSYSTEM 3 DRIVER (HNS3)
@@ -14911,7 +14911,6 @@ RENESAS ETHERNET DRIVERS
 R:	Sergei Shtylyov <sergei.shtylyov@gmail.com>
 L:	netdev@vger.kernel.org
 L:	linux-renesas-soc@vger.kernel.org
-F:	Documentation/devicetree/bindings/net/renesas,*.txt
 F:	Documentation/devicetree/bindings/net/renesas,*.yaml
 F:	drivers/net/ethernet/renesas/
 F:	include/linux/sh_eth.h
@@ -18107,7 +18106,7 @@ M:	Yu Chen <chenyu56@huawei.com>
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
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
