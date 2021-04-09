Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A23E35A6F1
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Apr 2021 21:21:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32B29402A0;
	Fri,  9 Apr 2021 19:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WDkpkPt5curQ; Fri,  9 Apr 2021 19:21:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56E7D401C9;
	Fri,  9 Apr 2021 19:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E95F81BF3DE
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 19:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6A6E401D2
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 19:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJKotDYnXKZz for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 19:20:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB042401C9
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 19:20:29 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id e34so1509543wmp.0
 for <devel@driverdev.osuosl.org>; Fri, 09 Apr 2021 12:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1Y7ZqJ7aphYkfKg9dEOtdy4V6nKSW7Mz/xYiwcmDq+A=;
 b=qSpSQdBL+dzm/82hNbwvAAX37lOYZydcQQkeZwGiiQcbb2hDdXM5iymORUa61QObu0
 h8dd9cUn3rRVrYR0z/kK9PfbZ+4lLzC4OY4r5UsrFlGQZRHjHZRPjAw4yEFH445UQ5J/
 Z/inJyWJLhINegk4n5WhhsbdUuP36+KvcIS9dUQ/uBdsgw8NkDP9cpo5yTEKHEPkf36u
 8eAG7nvM5sFi3TBZ7bSbYIo6n7iT8bXsLFqJ4rkOtbZLhssn/RgwfAdkuOp7+aRsF7Xi
 +FhaZ8wRHVA26reOqvA2hL+U7OQ3H5CxQoD5LCOwRu+RY5GcRFVjJYXNH4ot73vXiER3
 vZ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1Y7ZqJ7aphYkfKg9dEOtdy4V6nKSW7Mz/xYiwcmDq+A=;
 b=WcRQVGMpXeMsakkyIumVbtDzWIqrI0WWJoZ2SkXRJqCm0FzgZ5HemFSK+F2b81/cIa
 n4AldHUppCzZ1/LRrH0lJgyHT1EaiHEZquyDqtnPfoeTooLHJKvCUgZRLMmZDKowTiwW
 ZVOdYDQvX6niMtsOtFjzDk4pwT0GAhP3fO9eSNcxc1FYZuP6EPH2w81SGuWkh+4REJrJ
 8pZ53Pof0uLhTwQ0jrizULxJ+HjeylPTlbnqCYcZ9GI05HdZpGArqoXa6xjXJZb7Jj+e
 wHcaR1dPR+PXEzC+lha9fsiMMJnUS/weBDYeMGVHlTyFEOiX+47k1pZmiHf0BXVVgRbC
 5niA==
X-Gm-Message-State: AOAM5330Z+Cc1pbIP+8j0zkX7BhJs0GzaNkCQ/ksvUEt0rd86kUlyELg
 iyif8vVAlsKpGWBGG7fSZPc=
X-Google-Smtp-Source: ABdhPJy6uA85bjgA0B7th1bMJ9bT0cPk4OsGm9jN0qhbyDGS5Ly6UxuwiANxSBPDzjYcyqrnKUeUog==
X-Received: by 2002:a7b:c414:: with SMTP id k20mr1797608wmi.50.1617996028065; 
 Fri, 09 Apr 2021 12:20:28 -0700 (PDT)
Received: from localhost.localdomain
 (225.red-83-57-119.dynamicip.rima-tde.net. [83.57.119.225])
 by smtp.gmail.com with ESMTPSA id l9sm734259wrz.7.2021.04.09.12.20.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Apr 2021 12:20:27 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v12 2/4] staging: mt7621-dts: make use of new 'mt7621-clk'
Date: Fri,  9 Apr 2021 21:20:22 +0200
Message-Id: <20210409192024.10024-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210409192024.10024-1-sergio.paracuellos@gmail.com>
References: <20210409192024.10024-1-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clocks for SoC mt7621 have been properly integrated so there is
no need to declare fixed clocks at all in the device tree. Remove
all of them, add new device tree nodes for mt7621-clk and update
the rest of the nodes to use them.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/gbpc1.dts   | 11 ----
 drivers/staging/mt7621-dts/mt7621.dtsi | 74 ++++++++++++--------------
 2 files changed, 33 insertions(+), 52 deletions(-)

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
index 16fc94f65486..b68183e7e6ad 100644
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
@@ -76,8 +56,13 @@ palmbus: palmbus@1E000000 {
 		#size-cells = <1>;
 
 		sysc: sysc@0 {
-			compatible = "mtk,mt7621-sysc";
+			compatible = "mtk,mt7621-sysc", "syscon";
 			reg = <0x0 0x100>;
+			#clock-cells = <1>;
+			ralink,memctl = <&memc>;
+			clock-output-names = "xtal", "cpu", "bus",
+					     "50m", "125m", "150m",
+					     "250m", "270m";
 		};
 
 		wdt: wdt@100 {
@@ -101,8 +86,8 @@ i2c: i2c@900 {
 			compatible = "mediatek,mt7621-i2c";
 			reg = <0x900 0x100>;
 
-			clocks = <&sysclock>;
-
+			clocks = <&sysc MT7621_CLK_I2C>;
+			clock-names = "i2c";
 			resets = <&rstctrl 16>;
 			reset-names = "i2c";
 
@@ -119,8 +104,8 @@ i2s: i2s@a00 {
 			compatible = "mediatek,mt7621-i2s";
 			reg = <0xa00 0x100>;
 
-			clocks = <&sysclock>;
-
+			clocks = <&sysc MT7621_CLK_I2S>;
+			clock-names = "i2s";
 			resets = <&rstctrl 17>;
 			reset-names = "i2s";
 
@@ -138,7 +123,7 @@ i2s: i2s@a00 {
 		};
 
 		memc: memc@5000 {
-			compatible = "mtk,mt7621-memc";
+			compatible = "mtk,mt7621-memc", "syscon";
 			reg = <0x5000 0x1000>;
 		};
 
@@ -156,8 +141,8 @@ uartlite: uartlite@c00 {
 			compatible = "ns16550a";
 			reg = <0xc00 0x100>;
 
-			clocks = <&sysclock>;
-			clock-frequency = <50000000>;
+			clocks = <&sysc MT7621_CLK_UART1>;
+			clock-names = "uart1";
 
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SHARED 26 IRQ_TYPE_LEVEL_HIGH>;
@@ -173,7 +158,8 @@ spi0: spi@b00 {
 			compatible = "ralink,mt7621-spi";
 			reg = <0xb00 0x100>;
 
-			clocks = <&sysclock>;
+			clocks = <&sysc MT7621_CLK_SPI>;
+			clock-names = "spi";
 
 			resets = <&rstctrl 18>;
 			reset-names = "spi";
@@ -189,6 +175,8 @@ gdma: gdma@2800 {
 			compatible = "ralink,rt3883-gdma";
 			reg = <0x2800 0x800>;
 
+			clocks = <&sysc MT7621_CLK_GDMA>;
+			clock-names = "gdma";
 			resets = <&rstctrl 14>;
 			reset-names = "dma";
 
@@ -206,6 +194,8 @@ hsdma: hsdma@7000 {
 			compatible = "mediatek,mt7621-hsdma";
 			reg = <0x7000 0x1000>;
 
+			clocks = <&sysc MT7621_CLK_HSDMA>;
+			clock-names = "hsdma";
 			resets = <&rstctrl 5>;
 			reset-names = "hsdma";
 
@@ -311,11 +301,6 @@ rstctrl: rstctrl {
 		#reset-cells = <1>;
 	};
 
-	clkctrl: clkctrl {
-		compatible = "ralink,rt2880-clock";
-		#clock-cells = <1>;
-	};
-
 	sdhci: sdhci@1E130000 {
 		status = "disabled";
 
@@ -334,7 +319,8 @@ sdhci: sdhci@1E130000 {
 		pinctrl-0 = <&sdhci_pins>;
 		pinctrl-1 = <&sdhci_pins>;
 
-		clocks = <&mmc_clock &mmc_clock>;
+		clocks = <&sysc MT7621_CLK_SHXC>,
+			 <&sysc MT7621_CLK_50M>;
 		clock-names = "source", "hclk";
 
 		interrupt-parent = <&gic>;
@@ -349,7 +335,7 @@ xhci: xhci@1E1C0000 {
 		       0x1e1d0700 0x0100>;
 		reg-names = "mac", "ippc";
 
-		clocks = <&sysclock>;
+		clocks = <&sysc MT7621_CLK_XTAL>;
 		clock-names = "sys_ck";
 
 		interrupt-parent = <&gic>;
@@ -368,7 +354,7 @@ gic: interrupt-controller@1fbc0000 {
 		timer {
 			compatible = "mti,gic-timer";
 			interrupts = <GIC_LOCAL 1 IRQ_TYPE_NONE>;
-			clocks = <&cpuclock>;
+			clocks = <&sysc MT7621_CLK_CPU>;
 		};
 	};
 
@@ -381,6 +367,9 @@ nand: nand@1e003000 {
 			0x1e003800 0x800>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+
+		clocks = <&sysc MT7621_CLK_NAND>;
+		clock-names = "nand";
 	};
 
 	ethsys: syscon@1e000000 {
@@ -394,8 +383,9 @@ ethernet: ethernet@1e100000 {
 		compatible = "mediatek,mt7621-eth";
 		reg = <0x1e100000 0x10000>;
 
-		clocks = <&sysclock>;
-		clock-names = "ethif";
+		clocks = <&sysc MT7621_CLK_FE>,
+			 <&sysc MT7621_CLK_ETH>;
+		clock-names = "fe", "ethif";
 
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -521,7 +511,9 @@ GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
 
 		resets = <&rstctrl 24 &rstctrl 25 &rstctrl 26>;
 		reset-names = "pcie0", "pcie1", "pcie2";
-		clocks = <&clkctrl 24 &clkctrl 25 &clkctrl 26>;
+		clocks = <&sysc MT7621_CLK_PCIE0>,
+			 <&sysc MT7621_CLK_PCIE1>,
+			 <&sysc MT7621_CLK_PCIE2>;
 		clock-names = "pcie0", "pcie1", "pcie2";
 		phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
 		phy-names = "pcie-phy0", "pcie-phy2";
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
