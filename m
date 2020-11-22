Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E6F2BC4CD
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 10:56:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 667388636D;
	Sun, 22 Nov 2020 09:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IKpQdeNBV2AZ; Sun, 22 Nov 2020 09:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D80E786208;
	Sun, 22 Nov 2020 09:56:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF0481BF568
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB89287217
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LUEabi-kREny for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 09:56:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C709787219
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 09:56:05 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id h21so14468437wmb.2
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 01:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=34c/ORCVvKeqOFHhpB6vUqWtlqnfaCl8EHETq+kfQnc=;
 b=HZ9OppMbRFhsSZtBEXaVZOorhERtMMs/AkkCrlOwmY9yI6Yf1zIYnoOYZ3ceTl1pw/
 J9mqmeMbM/XOCH9ddHV8wOQDgdNUM7jpTJhGyeZ1CrGJgDur2xN5Mtr2W/FNDoXVHsTA
 qn72WbknS2Sc3oHjsUyZFTqvdch5yyL46C1TkeIsbWKqF8c129Hz/mtuXY2r3fwwG19K
 nGcqG5Wakk5S4LN4X2Dlh+p4JQsBN8BOys8nAoJ+KjKCh7JnqaymGA4Ti3muF/ALgVId
 t5qdxGwQ+s6agOi1uq/EzJTbjvMSMKJWWZDfqEOZoJ6kMHbJ6i78FUF8qUwd9hKmukjJ
 TeVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=34c/ORCVvKeqOFHhpB6vUqWtlqnfaCl8EHETq+kfQnc=;
 b=nyDOT9kf/UacbPs5Te9bQPq3KeH/0IlgsNArnKriwlVisLz3Fat178fnqNchVckwuh
 LdzFdipax/a+nOLK2zPGSQ+3enS5A79jlyH7GF99yvRghQ6nySU8FNClX+aoggRRzgsJ
 UARkVsSgrKRra2KMkIDK9B0dwcmHlLYFID/OlYQwHoJv9Z+bkvKQDmY6MG6w2qfwF2zH
 Y7TV1TxDLRvweJT1xkwCW9Y1hSx5mOplzpX37QwimksUgtwxhqi/JZe2xUptdiUJDKk9
 CLADCaB4LDud/fzzVj4HpMZXGHcUb+tE5WLrvXi8WfyUEg42Hw+TH3BqDkBhoIz6/W7a
 gysg==
X-Gm-Message-State: AOAM5312iM7NGBRvevINrOlmB0ZnuTJ+jmcOmuaehV0mFAeeHe8by4BJ
 A0pmI5HW/zWMGD4UEpWDskyB7ySkO7n89fKZ
X-Google-Smtp-Source: ABdhPJyoz2wKHJsubf2UrBMB8U9DVoWcZQSJcmhGk4VVpWN1P2rzDHxfJx4/VrzZCTyaE/pnbGfjoQ==
X-Received: by 2002:a1c:205:: with SMTP id 5mr17760812wmc.7.1606038964354;
 Sun, 22 Nov 2020 01:56:04 -0800 (PST)
Received: from localhost.localdomain (196.red-83-40-48.dynamicip.rima-tde.net.
 [83.40.48.196])
 by smtp.gmail.com with ESMTPSA id p21sm10593570wma.41.2020.11.22.01.56.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Nov 2020 01:56:03 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v4 4/6] staging: mt7621-dts: make use of new 'mt7621-clk'
Date: Sun, 22 Nov 2020 10:55:54 +0100
Message-Id: <20201122095556.21597-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devel@driverdev.osuosl.org, tsbogend@alpha.franken.de,
 sboyd@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 evicetree@vger.kernel.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clocks for SoC mt7621 have been properly integrated so there is
no need to declare fixed clocks at all in the device tree. Remove
all of them, add new device tree nodes for mt7621-clk and update
the rest of the nodes to use them.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/gbpc1.dts   | 11 ----
 drivers/staging/mt7621-dts/mt7621.dtsi | 75 ++++++++++++--------------
 2 files changed, 35 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/mt7621-dts/gbpc1.dts b/drivers/staging/mt7621-dts/gbpc1.dts
index a7c0d3115d72..7716d0efe524 100644
--- a/drivers/staging/mt7621-dts/gbpc1.dts
+++ b/drivers/staging/mt7621-dts/gbpc1.dts
@@ -100,17 +100,6 @@ partition@50000 {
 	};
 };
 
-&sysclock {
-			compatible = "fixed-clock";
-			/* This is normally 1/4 of cpuclock */
-			clock-frequency = <225000000>;
-};
-
-&cpuclock {
-			compatible = "fixed-clock";
-			clock-frequency = <900000000>;
-};
-
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_pins>;
diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 82aa93634eda..35cfda8f6faf 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -1,5 +1,6 @@
 #include <dt-bindings/interrupt-controller/mips-gic.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/clock/mt7621-clk.h>
 
 / {
 	#address-cells = <1>;
@@ -27,27 +28,6 @@ aliases {
 		serial0 = &uartlite;
 	};
 
-	cpuclock: cpuclock@0 {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
-
-		/* FIXME: there should be way to detect this */
-		clock-frequency = <880000000>;
-	};
-
-	sysclock: sysclock@0 {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
-
-		/* This is normally 1/4 of cpuclock */
-		clock-frequency = <220000000>;
-	};
-
-	mmc_clock: mmc_clock@0 {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
-		clock-frequency = <48000000>;
-	};
 
 	mmc_fixed_3v3: fixedregulator@0 {
 		compatible = "regulator-fixed";
@@ -76,8 +56,16 @@ palmbus: palmbus@1E000000 {
 		#size-cells = <1>;
 
 		sysc: sysc@0 {
-			compatible = "mtk,mt7621-sysc";
+			compatible = "mtk,mt7621-sysc", "syscon";
 			reg = <0x0 0x100>;
+
+			pll: pll {
+				compatible = "mediatek,mt7621-clk";
+				#clock-cells = <1>;
+				clock-output-names = "xtal", "cpu", "bus",
+						     "50m", "125m", "150m",
+						     "250m", "270m";
+			};
 		};
 
 		wdt: wdt@100 {
@@ -100,8 +88,8 @@ i2c: i2c@900 {
 			compatible = "mediatek,mt7621-i2c";
 			reg = <0x900 0x100>;
 
-			clocks = <&sysclock>;
-
+			clocks = <&pll MT7621_CLK_I2C>;
+			clock-names = "i2c";
 			resets = <&rstctrl 16>;
 			reset-names = "i2c";
 
@@ -118,8 +106,8 @@ i2s: i2s@a00 {
 			compatible = "mediatek,mt7621-i2s";
 			reg = <0xa00 0x100>;
 
-			clocks = <&sysclock>;
-
+			clocks = <&pll MT7621_CLK_I2S>;
+			clock-names = "i2s";
 			resets = <&rstctrl 17>;
 			reset-names = "i2s";
 
@@ -155,8 +143,8 @@ uartlite: uartlite@c00 {
 			compatible = "ns16550a";
 			reg = <0xc00 0x100>;
 
-			clocks = <&sysclock>;
-			clock-frequency = <50000000>;
+			clocks = <&pll MT7621_CLK_UART1>;
+			clock-names = "uart1";
 
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SHARED 26 IRQ_TYPE_LEVEL_HIGH>;
@@ -172,7 +160,8 @@ spi0: spi@b00 {
 			compatible = "ralink,mt7621-spi";
 			reg = <0xb00 0x100>;
 
-			clocks = <&sysclock>;
+			clocks = <&pll MT7621_CLK_SPI>;
+			clock-names = "spi";
 
 			resets = <&rstctrl 18>;
 			reset-names = "spi";
@@ -188,6 +177,8 @@ gdma: gdma@2800 {
 			compatible = "ralink,rt3883-gdma";
 			reg = <0x2800 0x800>;
 
+			clocks = <&pll MT7621_CLK_GDMA>;
+			clock-names = "gdma";
 			resets = <&rstctrl 14>;
 			reset-names = "dma";
 
@@ -205,6 +196,8 @@ hsdma: hsdma@7000 {
 			compatible = "mediatek,mt7621-hsdma";
 			reg = <0x7000 0x1000>;
 
+			clocks = <&pll MT7621_CLK_HSDMA>;
+			clock-names = "hsdma";
 			resets = <&rstctrl 5>;
 			reset-names = "hsdma";
 
@@ -315,11 +308,6 @@ rstctrl: rstctrl {
 		#reset-cells = <1>;
 	};
 
-	clkctrl: clkctrl {
-		compatible = "ralink,rt2880-clock";
-		#clock-cells = <1>;
-	};
-
 	sdhci: sdhci@1E130000 {
 		status = "disabled";
 
@@ -338,7 +326,8 @@ sdhci: sdhci@1E130000 {
 		pinctrl-0 = <&sdhci_pins>;
 		pinctrl-1 = <&sdhci_pins>;
 
-		clocks = <&mmc_clock &mmc_clock>;
+		clocks = <&pll MT7621_CLK_SHXC>,
+			 <&pll MT7621_CLK_50M>;
 		clock-names = "source", "hclk";
 
 		interrupt-parent = <&gic>;
@@ -353,7 +342,7 @@ xhci: xhci@1E1C0000 {
 		       0x1e1d0700 0x0100>;
 		reg-names = "mac", "ippc";
 
-		clocks = <&sysclock>;
+		clocks = <&pll MT7621_CLK_XTAL>;
 		clock-names = "sys_ck";
 
 		interrupt-parent = <&gic>;
@@ -372,7 +361,7 @@ gic: interrupt-controller@1fbc0000 {
 		timer {
 			compatible = "mti,gic-timer";
 			interrupts = <GIC_LOCAL 1 IRQ_TYPE_NONE>;
-			clocks = <&cpuclock>;
+			clocks = <&pll MT7621_CLK_CPU>;
 		};
 	};
 
@@ -385,6 +374,9 @@ nand: nand@1e003000 {
 			0x1e003800 0x800>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+
+		clocks = <&pll MT7621_CLK_NAND>;
+		clock-names = "nand";
 	};
 
 	ethsys: syscon@1e000000 {
@@ -398,8 +390,9 @@ ethernet: ethernet@1e100000 {
 		compatible = "mediatek,mt7621-eth";
 		reg = <0x1e100000 0x10000>;
 
-		clocks = <&sysclock>;
-		clock-names = "ethif";
+		clocks = <&pll MT7621_CLK_FE>,
+			 <&pll MT7621_CLK_ETH>;
+		clock-names = "fe", "ethif";
 
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -532,7 +525,9 @@ GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
 
 		resets = <&rstctrl 24 &rstctrl 25 &rstctrl 26>;
 		reset-names = "pcie0", "pcie1", "pcie2";
-		clocks = <&clkctrl 24 &clkctrl 25 &clkctrl 26>;
+		clocks = <&pll MT7621_CLK_PCIE0>,
+			 <&pll MT7621_CLK_PCIE1>,
+			 <&pll MT7621_CLK_PCIE2>;
 		clock-names = "pcie0", "pcie1", "pcie2";
 		phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
 		phy-names = "pcie-phy0", "pcie-phy2";
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
