Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3949E31E6A4
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 08:07:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A5DD867C5;
	Thu, 18 Feb 2021 07:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EWmY9ipOfRz; Thu, 18 Feb 2021 07:07:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E34F8866B8;
	Thu, 18 Feb 2021 07:07:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 850FA1BF32C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 81EBC85190
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id elo4h7Jozanr for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 07:07:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79F2185036
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 07:07:18 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id m1so1942662wml.2
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 23:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sNdxnPBB1kEb0+aNQKnhNFwi4Oy3m/rjIZAaTovgQYM=;
 b=ISfOt2+caKW86JQB6JsFsJ4qBYVDDA9roKlIo7VMdnVO+43+FaXjRymQtR4Q0HDVs4
 urSw2aU/OywNJb1DHl0DcWmYRK6+W5LMK55qB5gfSNwk25q4QQGl3n8cgTXQbS/7mBJn
 dix6LvkMX/KTdy0s1KKCRvSJqV9fwhBQ2mhkyWshndF8hcvMzAC8/4t7DYaoeW6G0CyU
 bP/IMOCcRCG+9kdGtlRYu5yXQIH5WxZmH1Ad2oAMv5mz0rIKlOtICbiirrtFUfzPM559
 3i3sqUmq9rThy+Ue3UBE+s4ON4E6Mw8lICTTG+PnS1LHZmxhG+xX+pohmv9J1eFWleBk
 63UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sNdxnPBB1kEb0+aNQKnhNFwi4Oy3m/rjIZAaTovgQYM=;
 b=V/YGA1y95yVP6XYl0p4FvCvI3Sb2W0cB6mufeCbVUUpvzPtS042tuwyKypcf8956L/
 piJ23t/eV4/RHDyjPWULkm9MiPqJJAsTHjKSqWYjrekuRmewhsDo4/wBKsVxnNNgpL7F
 ONElkZdceBjKoJ3SUrPFEalFJThrdMBj8/P1tX5e6UxDgJd4UO+gzDNVDH3ZoKGE9GMm
 1tnHOSlooiVZ+n0RRV4nuEXkHbmeWs8SK9M4rEpIYZ/tagwD61hsLXdGWfTarbG0LJHt
 WGJsQN+ARKCL5h1Pb9y4+cKEQXQfEyOWfV55nW9VOC+SG0yVlvmehvuvlnubpTe7yAz+
 +d3g==
X-Gm-Message-State: AOAM533+SaQ7dwg8VDmAyS2pcwPUlhsn9LezcF6W7oz7Hl6ajjfQG20P
 Qx5dRfeiSvBQeQPM4Dy8bKw=
X-Google-Smtp-Source: ABdhPJwWn2EJLbWpBmO8oTpW9O/F6EXep8XBhYRYkJlnYgG3NyAy7kg5GJE3A1fhcXy/6fsGS0cvTg==
X-Received: by 2002:a7b:cd07:: with SMTP id f7mr2214722wmj.126.1613632036787; 
 Wed, 17 Feb 2021 23:07:16 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id 4sm6136555wma.0.2021.02.17.23.07.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 23:07:16 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v9 4/6] staging: mt7621-dts: make use of new 'mt7621-clk'
Date: Thu, 18 Feb 2021 08:07:07 +0100
Message-Id: <20210218070709.11932-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
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
 drivers/staging/mt7621-dts/mt7621.dtsi | 79 +++++++++++++-------------
 2 files changed, 38 insertions(+), 52 deletions(-)

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
index 16fc94f65486..11d1670d4339 100644
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
@@ -76,10 +56,20 @@ palmbus: palmbus@1E000000 {
 		#size-cells = <1>;
 
 		sysc: sysc@0 {
-			compatible = "mtk,mt7621-sysc";
+			compatible = "mtk,mt7621-sysc", "syscon";
 			reg = <0x0 0x100>;
 		};
 
+		pll: pll {
+			compatible = "mediatek,mt7621-clk";
+			#clock-cells = <1>;
+			ralink,sysctl = <&sysc>;
+			ralink,memctl = <&memc>;
+			clock-output-names = "xtal", "cpu", "bus",
+					     "50m", "125m", "150m",
+					     "250m", "270m";
+		};
+
 		wdt: wdt@100 {
 			compatible = "mtk,mt7621-wdt";
 			reg = <0x100 0x100>;
@@ -101,8 +91,8 @@ i2c: i2c@900 {
 			compatible = "mediatek,mt7621-i2c";
 			reg = <0x900 0x100>;
 
-			clocks = <&sysclock>;
-
+			clocks = <&pll MT7621_CLK_I2C>;
+			clock-names = "i2c";
 			resets = <&rstctrl 16>;
 			reset-names = "i2c";
 
@@ -119,8 +109,8 @@ i2s: i2s@a00 {
 			compatible = "mediatek,mt7621-i2s";
 			reg = <0xa00 0x100>;
 
-			clocks = <&sysclock>;
-
+			clocks = <&pll MT7621_CLK_I2S>;
+			clock-names = "i2s";
 			resets = <&rstctrl 17>;
 			reset-names = "i2s";
 
@@ -138,7 +128,7 @@ i2s: i2s@a00 {
 		};
 
 		memc: memc@5000 {
-			compatible = "mtk,mt7621-memc";
+			compatible = "mtk,mt7621-memc", "syscon";
 			reg = <0x5000 0x1000>;
 		};
 
@@ -156,8 +146,8 @@ uartlite: uartlite@c00 {
 			compatible = "ns16550a";
 			reg = <0xc00 0x100>;
 
-			clocks = <&sysclock>;
-			clock-frequency = <50000000>;
+			clocks = <&pll MT7621_CLK_UART1>;
+			clock-names = "uart1";
 
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SHARED 26 IRQ_TYPE_LEVEL_HIGH>;
@@ -173,7 +163,8 @@ spi0: spi@b00 {
 			compatible = "ralink,mt7621-spi";
 			reg = <0xb00 0x100>;
 
-			clocks = <&sysclock>;
+			clocks = <&pll MT7621_CLK_SPI>;
+			clock-names = "spi";
 
 			resets = <&rstctrl 18>;
 			reset-names = "spi";
@@ -189,6 +180,8 @@ gdma: gdma@2800 {
 			compatible = "ralink,rt3883-gdma";
 			reg = <0x2800 0x800>;
 
+			clocks = <&pll MT7621_CLK_GDMA>;
+			clock-names = "gdma";
 			resets = <&rstctrl 14>;
 			reset-names = "dma";
 
@@ -206,6 +199,8 @@ hsdma: hsdma@7000 {
 			compatible = "mediatek,mt7621-hsdma";
 			reg = <0x7000 0x1000>;
 
+			clocks = <&pll MT7621_CLK_HSDMA>;
+			clock-names = "hsdma";
 			resets = <&rstctrl 5>;
 			reset-names = "hsdma";
 
@@ -311,11 +306,6 @@ rstctrl: rstctrl {
 		#reset-cells = <1>;
 	};
 
-	clkctrl: clkctrl {
-		compatible = "ralink,rt2880-clock";
-		#clock-cells = <1>;
-	};
-
 	sdhci: sdhci@1E130000 {
 		status = "disabled";
 
@@ -334,7 +324,8 @@ sdhci: sdhci@1E130000 {
 		pinctrl-0 = <&sdhci_pins>;
 		pinctrl-1 = <&sdhci_pins>;
 
-		clocks = <&mmc_clock &mmc_clock>;
+		clocks = <&pll MT7621_CLK_SHXC>,
+			 <&pll MT7621_CLK_50M>;
 		clock-names = "source", "hclk";
 
 		interrupt-parent = <&gic>;
@@ -349,7 +340,7 @@ xhci: xhci@1E1C0000 {
 		       0x1e1d0700 0x0100>;
 		reg-names = "mac", "ippc";
 
-		clocks = <&sysclock>;
+		clocks = <&pll MT7621_CLK_XTAL>;
 		clock-names = "sys_ck";
 
 		interrupt-parent = <&gic>;
@@ -368,7 +359,7 @@ gic: interrupt-controller@1fbc0000 {
 		timer {
 			compatible = "mti,gic-timer";
 			interrupts = <GIC_LOCAL 1 IRQ_TYPE_NONE>;
-			clocks = <&cpuclock>;
+			clocks = <&pll MT7621_CLK_CPU>;
 		};
 	};
 
@@ -381,6 +372,9 @@ nand: nand@1e003000 {
 			0x1e003800 0x800>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+
+		clocks = <&pll MT7621_CLK_NAND>;
+		clock-names = "nand";
 	};
 
 	ethsys: syscon@1e000000 {
@@ -394,8 +388,9 @@ ethernet: ethernet@1e100000 {
 		compatible = "mediatek,mt7621-eth";
 		reg = <0x1e100000 0x10000>;
 
-		clocks = <&sysclock>;
-		clock-names = "ethif";
+		clocks = <&pll MT7621_CLK_FE>,
+			 <&pll MT7621_CLK_ETH>;
+		clock-names = "fe", "ethif";
 
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -521,7 +516,9 @@ GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
 
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
