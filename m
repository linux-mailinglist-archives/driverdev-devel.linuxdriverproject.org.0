Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A56972AF672
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 17:30:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E6E5867CF;
	Wed, 11 Nov 2020 16:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OamR-V5zhV23; Wed, 11 Nov 2020 16:30:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDBC286775;
	Wed, 11 Nov 2020 16:30:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45FC61BF29D
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D0F68679A
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5s0lQGKk7992 for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 16:30:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EFE9F86791
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 16:30:25 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w24so2916159wmi.0
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 08:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FYKOUWD0OJw73iZ7JD4H1o7QmbZcn/nhEwwRlMzqiAE=;
 b=L8SwnQiC1gEWAQMAmdLFvvbpMlKy/y5IyRJEQipiXdWeEqtzVNZrYHFyr1VWxIsSol
 cEiJcGB56zoTuiNf+pJMdlW5X5arw+R4k/wnjRVlT+Lid5YS5MuxRf+ZtkGo+Z1ST7Hd
 gRrCWt8Fs7kZkRwy6ckIIdK8UuJqFIlS3VtM2YBPWeG0yYDZgX+qphamlWvZ8eh+XTQO
 OqZM0pd525lEAVKH3m9z+86KgnTmucbckaktA8G4oRUOUuQnRL+KGXzjNsHVft82LmKo
 92iqmluN1pcw6mLuPy8Bh2sDJvbBpQzUGP1xh46UW0d6q0+VOMOptVzF98uGdvI+BD+0
 N1Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FYKOUWD0OJw73iZ7JD4H1o7QmbZcn/nhEwwRlMzqiAE=;
 b=Bzmi9FwCk4j4jJSczWHR/lF9P80n4DnpuP7YcWnSMY/NHH3v71Kue6WgJABI37KWt9
 E80fv5eK3SoXZXXlHLEGTIeFn2cIioiWf8K627Y9nR7NdFmZq6eBcl5hElHkaawjiHFl
 j24HO56M1/rZbCbrdc3TCa3nPZzoOY/Z9NglfpS8t73xz4UHrtXO3X0PAT0EDhMoq5oq
 yy32D8/a4XVCEL+it+zhT+8gw1urejizjY8muCsf68XZMHfU/gJTaLK0sx5Vt9IBq7+K
 BKB5aMJgzyANZCpgcNx2jU1nBRy3uzgC9tRmIOK5S0+0eRWYiKCiJuvi2kjUCYRgemBz
 Ty8A==
X-Gm-Message-State: AOAM530+v6+N5+BKRUFX8x1TnItcfu87Vvp9b3297SC1zg4IMNn6Y9+3
 ise6Bt7fHjMayvLh7t9FMXI=
X-Google-Smtp-Source: ABdhPJzGnoLjgNUq+bouW7p8xVRr2Jpc+VKbjdQa4AJBHypdOVF7BcMeR6QuYHGiHnAAkWXizxg/JA==
X-Received: by 2002:a1c:7303:: with SMTP id d3mr5374141wmb.152.1605112224529; 
 Wed, 11 Nov 2020 08:30:24 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id w186sm3196753wmb.26.2020.11.11.08.30.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 08:30:24 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH 6/7] staging: mt7621-dts: make use of new 'mt7621-pll' and
 'mt7621-clk'
Date: Wed, 11 Nov 2020 17:30:12 +0100
Message-Id: <20201111163013.29412-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devicetree@vger.kernel.org, tsbogend@alpha.franken.de,
 sboyd@kernel.org, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, jiaxun.yang@flygoat.com,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clocks for SoC mt7621 have been properly integrated so there is
no need to declare fixed clocks at all in the device tree. Remove
all of them, add new device tree nodes for new mt7621-pll and mt7621-clk
and update the rest of the nodes to use them.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/gbpc1.dts   | 11 ----
 drivers/staging/mt7621-dts/mt7621.dtsi | 71 ++++++++++++--------------
 2 files changed, 34 insertions(+), 48 deletions(-)

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
index 82aa93634eda..e615139d2ccb 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -1,5 +1,6 @@
 #include <dt-bindings/interrupt-controller/mips-gic.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/clock/mt7621-clk.h>
 
 / {
 	#address-cells = <1>;
@@ -27,26 +28,16 @@ aliases {
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
+	pll: pll {
+		compatible = "mediatek,mt7621-pll";
+		#clock-cells = <1>;
+		clock-output-names = "cpu", "ahb", "apb";
 	};
 
-	mmc_clock: mmc_clock@0 {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
-		clock-frequency = <48000000>;
+	clkctrl: clkctrl {
+		compatible = "mediatek,mt7621-clk";
+		#clock-cells = <1>;
+		ralink,sysctl = <&sysc>;
 	};
 
 	mmc_fixed_3v3: fixedregulator@0 {
@@ -76,7 +67,7 @@ palmbus: palmbus@1E000000 {
 		#size-cells = <1>;
 
 		sysc: sysc@0 {
-			compatible = "mtk,mt7621-sysc";
+			compatible = "mtk,mt7621-sysc", "syscon";
 			reg = <0x0 0x100>;
 		};
 
@@ -100,8 +91,8 @@ i2c: i2c@900 {
 			compatible = "mediatek,mt7621-i2c";
 			reg = <0x900 0x100>;
 
-			clocks = <&sysclock>;
-
+			clocks = <&clkctrl MT7621_CLK_I2C>;
+			clock-names = "i2c";
 			resets = <&rstctrl 16>;
 			reset-names = "i2c";
 
@@ -118,8 +109,8 @@ i2s: i2s@a00 {
 			compatible = "mediatek,mt7621-i2s";
 			reg = <0xa00 0x100>;
 
-			clocks = <&sysclock>;
-
+			clocks = <&clkctrl MT7621_CLK_I2S>;
+			clock-names = "i2s";
 			resets = <&rstctrl 17>;
 			reset-names = "i2s";
 
@@ -155,8 +146,8 @@ uartlite: uartlite@c00 {
 			compatible = "ns16550a";
 			reg = <0xc00 0x100>;
 
-			clocks = <&sysclock>;
-			clock-frequency = <50000000>;
+			clocks = <&clkctrl MT7621_CLK_UART1>;
+			clock-names = "uart1";
 
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SHARED 26 IRQ_TYPE_LEVEL_HIGH>;
@@ -172,7 +163,7 @@ spi0: spi@b00 {
 			compatible = "ralink,mt7621-spi";
 			reg = <0xb00 0x100>;
 
-			clocks = <&sysclock>;
+			clocks = <&pll MT7621_CLK_AHB>;
 
 			resets = <&rstctrl 18>;
 			reset-names = "spi";
@@ -188,6 +179,8 @@ gdma: gdma@2800 {
 			compatible = "ralink,rt3883-gdma";
 			reg = <0x2800 0x800>;
 
+			clocks = <&clkctrl MT7621_CLK_GDMA>;
+			clock-names = "gdma";
 			resets = <&rstctrl 14>;
 			reset-names = "dma";
 
@@ -205,6 +198,8 @@ hsdma: hsdma@7000 {
 			compatible = "mediatek,mt7621-hsdma";
 			reg = <0x7000 0x1000>;
 
+			clocks = <&clkctrl MT7621_CLK_HSDMA>;
+			clock-names = "hsdma";
 			resets = <&rstctrl 5>;
 			reset-names = "hsdma";
 
@@ -315,11 +310,6 @@ rstctrl: rstctrl {
 		#reset-cells = <1>;
 	};
 
-	clkctrl: clkctrl {
-		compatible = "ralink,rt2880-clock";
-		#clock-cells = <1>;
-	};
-
 	sdhci: sdhci@1E130000 {
 		status = "disabled";
 
@@ -338,7 +328,8 @@ sdhci: sdhci@1E130000 {
 		pinctrl-0 = <&sdhci_pins>;
 		pinctrl-1 = <&sdhci_pins>;
 
-		clocks = <&mmc_clock &mmc_clock>;
+		clocks = <&pll MT7621_CLK_APB>,
+			 <&pll MT7621_CLK_APB>;
 		clock-names = "source", "hclk";
 
 		interrupt-parent = <&gic>;
@@ -353,7 +344,7 @@ xhci: xhci@1E1C0000 {
 		       0x1e1d0700 0x0100>;
 		reg-names = "mac", "ippc";
 
-		clocks = <&sysclock>;
+		clocks = <&pll MT7621_CLK_AHB>;
 		clock-names = "sys_ck";
 
 		interrupt-parent = <&gic>;
@@ -372,7 +363,7 @@ gic: interrupt-controller@1fbc0000 {
 		timer {
 			compatible = "mti,gic-timer";
 			interrupts = <GIC_LOCAL 1 IRQ_TYPE_NONE>;
-			clocks = <&cpuclock>;
+			clocks = <&pll MT7621_CLK_CPU>;
 		};
 	};
 
@@ -385,6 +376,9 @@ nand: nand@1e003000 {
 			0x1e003800 0x800>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+
+		clocks = <&clkctrl MT7621_CLK_NAND>;
+		clock-names = "nand";
 	};
 
 	ethsys: syscon@1e000000 {
@@ -398,8 +392,9 @@ ethernet: ethernet@1e100000 {
 		compatible = "mediatek,mt7621-eth";
 		reg = <0x1e100000 0x10000>;
 
-		clocks = <&sysclock>;
-		clock-names = "ethif";
+		clocks = <&pll MT7621_CLK_AHB>,
+			 <&clkctrl MT7621_CLK_ETH>;
+		clock-names = "ethif", "eth";
 
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -532,7 +527,9 @@ GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
 
 		resets = <&rstctrl 24 &rstctrl 25 &rstctrl 26>;
 		reset-names = "pcie0", "pcie1", "pcie2";
-		clocks = <&clkctrl 24 &clkctrl 25 &clkctrl 26>;
+		clocks = <&clkctrl MT7621_CLK_PCIE0>,
+			 <&clkctrl MT7621_CLK_PCIE1>,
+			 <&clkctrl MT7621_CLK_PCIE2>;
 		clock-names = "pcie0", "pcie1", "pcie2";
 		phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
 		phy-names = "pcie-phy0", "pcie-phy2";
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
