Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8254167D78
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 13:27:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6003887476;
	Fri, 21 Feb 2020 12:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRt8njlAoOzj; Fri, 21 Feb 2020 12:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F8C586FFF;
	Fri, 21 Feb 2020 12:26:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B9091BF2B4
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 12:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 87FFC22011
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 12:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O38hJXff6oB0 for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 12:26:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from albert.telenet-ops.be (albert.telenet-ops.be [195.130.137.90])
 by silver.osuosl.org (Postfix) with ESMTPS id 3354D21FF6
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 12:26:46 +0000 (UTC)
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id 5QMi2200D5USYZQ06QMinh; Fri, 21 Feb 2020 13:21:42 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j57JO-0002E9-7I; Fri, 21 Feb 2020 13:21:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j57JO-0008LS-5n; Fri, 21 Feb 2020 13:21:42 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Marcus Wolf <linux@Wolf-Entwicklungen.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/3] staging: pi433: overlay: Convert to sugar syntax
Date: Fri, 21 Feb 2020 13:21:33 +0100
Message-Id: <20200221122133.32024-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200221122133.32024-1-geert+renesas@glider.be>
References: <20200221122133.32024-1-geert+renesas@glider.be>
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
 Geert Uytterhoeven <geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Using overlay sugar syntax makes the DTS overlay files easier to read
(and write).

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Why are there two separate fragments for spi0? Can't they be combined?
Why do you need the spidev@1 entry?
---
 .../devicetree/pi433-overlay.dts              | 79 ++++++++-----------
 1 file changed, 35 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
index b584180d78d019aa..096137fcd5cc0131 100644
--- a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
+++ b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
@@ -4,54 +4,45 @@
 
 / {
 	compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
+};
+
+&spi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	spidev@0{
+		reg = <0>;
+		status = "disabled";
+	};
 
-	fragment@0 {
-		target = <&spi0>;
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			status = "okay";
-
-			spidev@0{
-				reg = <0>;
-				status = "disabled";
-			};
-
-			spidev@1{
-				reg = <1>;
-				status = "disabled";
-			};
-		};
+	spidev@1{
+		reg = <1>;
+		status = "disabled";
 	};
+};
 
-	fragment@1 {
-		target = <&gpio>;
-		__overlay__ {
-			pi433_pins: pi433_pins {
-				brcm,pins = <7 25 24>;
-				brcm,function = <0 0 0>; // in in in
-			};
-		};
+&gpio {
+	pi433_pins: pi433_pins {
+		brcm,pins = <7 25 24>;
+		brcm,function = <0 0 0>; // in in in
 	};
+};
 
-	fragment@2 {
-		target = <&spi0>;
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			status = "okay";
-
-			pi433: pi433@0 {
-				compatible = "Smarthome-Wolf,pi433";
-				reg = <0>;
-				spi-max-frequency = <10000000>;
-				status = "okay";
-
-				pinctrl-0 = <&pi433_pins>;
-				DIO0-gpio = <&gpio 24 0>;
-				DIO1-gpio = <&gpio 25 0>;
-				DIO2-gpio = <&gpio  7 0>;
-			};
-		};
+&spi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	pi433: pi433@0 {
+		compatible = "Smarthome-Wolf,pi433";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+		status = "okay";
+
+		pinctrl-0 = <&pi433_pins>;
+		DIO0-gpio = <&gpio 24 0>;
+		DIO1-gpio = <&gpio 25 0>;
+		DIO2-gpio = <&gpio  7 0>;
 	};
 };
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
