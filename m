Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F6E5B281
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 02:53:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D9D5204D5;
	Mon,  1 Jul 2019 00:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lk7VZP90Fc-L; Mon,  1 Jul 2019 00:53:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E1122033F;
	Mon,  1 Jul 2019 00:53:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BFFA1BF2C2
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 00:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 57CF085108
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 00:53:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jeFxouPB5wfM for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 00:53:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E76858511B
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 00:53:46 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2396EAE07;
 Mon,  1 Jul 2019 00:43:37 +0000 (UTC)
From: NeilBrown <neil@brown.name>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Mon, 01 Jul 2019 10:43:07 +1000
Subject: [PATCH 1/2] staging: mt7621-dts: update sdhci config.
Message-ID: <156194178761.1430.1625105851941268306.stgit@noble.brown>
In-Reply-To: <156194175140.1430.2478988354194078582.stgit@noble.brown>
References: <156194175140.1430.2478988354194078582.stgit@noble.brown>
User-Agent: StGit/0.17.1-dirty
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
Cc: devel@driverdev.osuosl.org, lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The mtk-sd driver has been updated to support
the IP in the mt7621, so update our configuration
to work with it.

Signed-off-by: NeilBrown <neil@brown.name>
---
 drivers/staging/mt7621-dts/mt7621.dtsi |   41 +++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 9c90cac82efc..549ff5a0699e 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -43,6 +43,30 @@
 		clock-frequency = <220000000>;
 	};
 
+	mmc_clock: mmc_clock@0 {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <48000000>;
+	};
+
+	mmc_fixed_3v3: fixedregulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "mmc_power";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		regulator-always-on;
+	  };
+
+	  mmc_fixed_1v8_io: fixedregulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "mmc_io";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
 	palmbus: palmbus@1E000000 {
 		compatible = "palmbus";
 		reg = <0x1E000000 0x100000>;
@@ -299,9 +323,24 @@
 	sdhci: sdhci@1E130000 {
 		status = "disabled";
 
-		compatible = "ralink,mt7620-sdhci";
+		compatible = "mediatek,mt7620-mmc";
 		reg = <0x1E130000 0x4000>;
 
+		bus-width = <4>;
+		max-frequency = <48000000>;
+		cap-sd-highspeed;
+		cap-mmc-highspeed;
+		vmmc-supply = <&mmc_fixed_3v3>;
+		vqmmc-supply = <&mmc_fixed_1v8_io>;
+		disable-wp;
+
+		pinctrl-names = "default", "state_uhs";
+		pinctrl-0 = <&sdhci_pins>;
+		pinctrl-1 = <&sdhci_pins>;
+
+		clocks = <&mmc_clock &mmc_clock>;
+		clock-names = "source", "hclk";
+
 		interrupt-parent = <&gic>;
 		interrupts = <GIC_SHARED 20 IRQ_TYPE_LEVEL_HIGH>;
 	};


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
