Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4D729A844
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 10:51:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5478786712;
	Tue, 27 Oct 2020 09:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jdni95+B+JUI; Tue, 27 Oct 2020 09:51:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBD5D866DA;
	Tue, 27 Oct 2020 09:51:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A20781BF2FB
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 09:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9E3EE8562D
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 09:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xnzi1ggxE9M6 for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 09:51:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E34F885643
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 09:51:42 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5af.dynamic.kabel-deutschland.de
 [95.90.213.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E7ED24179;
 Tue, 27 Oct 2020 09:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603792301;
 bh=P+4hgRaJiwOFtFWPGSIkLjccBO+KlAPIlwaQSCUk+mg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g0Ax6670SZ19vUkEx2aYgLdaGXKJns0PZJ68PGsxL4ckZYt3b2Bs9FMmz7ZbfE3Ai
 RFsYVwmxse0VTPFOONVXWL6cmw5f0DFlHj7NG02GA8WP5i1caXBPm04VQMyxv4Xlnf
 Ibjri8PIGP+1TbQ/wAagk3zuaAm1gliT8GBtQeZM=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kXLdj-003FFB-Gk; Tue, 27 Oct 2020 10:51:39 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH v3 17/32] MAINTAINERS: fix broken doc refs due to yaml
 conversion
Date: Tue, 27 Oct 2020 10:51:21 +0100
Message-Id: <3b58afec5195d4ea505ea9b3f74d53f7abed4e6f.1603791716.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1603791716.git.mchehab+huawei@kernel.org>
References: <cover.1603791716.git.mchehab+huawei@kernel.org>
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

Acked-by: Stephen Boyd <sboyd@kernel.org>
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
index e73636b75f29..4511501cd59c 100644
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
@@ -3860,7 +3860,7 @@ M:	Roger Quadros <rogerq@ti.com>
 L:	linux-usb@vger.kernel.org
 S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/peter.chen/usb.git
-F:	Documentation/devicetree/bindings/usb/cdns-usb3.txt
+F:	Documentation/devicetree/bindings/usb/cdns,usb3.yaml
 F:	drivers/usb/cdns3/
 
 CADET FM/AM RADIO RECEIVER DRIVER
@@ -7920,7 +7920,7 @@ HISILICON LPC BUS DRIVER
 M:	john.garry@huawei.com
 S:	Maintained
 W:	http://www.hisilicon.com
-F:	Documentation/devicetree/bindings/arm/hisilicon/hisilicon-low-pin-count.txt
+F:	Documentation/devicetree/bindings/arm/hisilicon/low-pin-count.yaml
 F:	drivers/bus/hisi_lpc.c
 
 HISILICON NETWORK SUBSYSTEM 3 DRIVER (HNS3)
@@ -14902,7 +14902,6 @@ RENESAS ETHERNET DRIVERS
 R:	Sergei Shtylyov <sergei.shtylyov@gmail.com>
 L:	netdev@vger.kernel.org
 L:	linux-renesas-soc@vger.kernel.org
-F:	Documentation/devicetree/bindings/net/renesas,*.txt
 F:	Documentation/devicetree/bindings/net/renesas,*.yaml
 F:	drivers/net/ethernet/renesas/
 F:	include/linux/sh_eth.h
@@ -18106,7 +18105,7 @@ M:	Yu Chen <chenyu56@huawei.com>
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
