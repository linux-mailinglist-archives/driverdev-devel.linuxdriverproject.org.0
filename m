Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C3A2C1346
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 19:39:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3ED587057;
	Mon, 23 Nov 2020 18:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n9ROqQf2l6sP; Mon, 23 Nov 2020 18:39:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4540F87027;
	Mon, 23 Nov 2020 18:39:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1D2C1BF395
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 18:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D9A018701D
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 18:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pPgrMAIVBOIO for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 18:38:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2FCBE87019
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 18:38:54 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id C2B2BABDE;
 Mon, 23 Nov 2020 18:38:52 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 10/11] DO NOT MERGE: ARM: dts: Add RPi's official PoE hat
 support
Date: Mon, 23 Nov 2020 19:38:31 +0100
Message-Id: <20201123183833.18750-11-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201123183833.18750-1-nsaenzjulienne@suse.de>
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is an example on how to enable the fan on top of RPi's official PoE
hat.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes since v1:
 - Update patch to use 2 pwm cells

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 54 +++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 403bacf986eb..9ae44620c5b8 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -5,6 +5,7 @@
 #include "bcm283x-rpi-usb-peripheral.dtsi"
 
 #include <dt-bindings/reset/raspberrypi,firmware-reset.h>
+#include <dt-bindings/pwm/raspberrypi,firmware-poe-pwm.h>
 
 / {
 	compatible = "raspberrypi,4-model-b", "brcm,bcm2711";
@@ -68,6 +69,54 @@ sd_vcc_reg: sd_vcc_reg {
 		enable-active-high;
 		gpio = <&expgpio 6 GPIO_ACTIVE_HIGH>;
 	};
+
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 50 150 255>;
+		#cooling-cells = <2>;
+		pwms = <&fwpwm RASPBERRYPI_FIRMWARE_PWM_POE 80000>;
+	};
+
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			trips {
+				threshold: trip-point@0 {
+					temperature = <45000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				target: trip-point@1 {
+					temperature = <50000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				cpu_hot: cpu_hot@0 {
+					temperature = <55000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&threshold>;
+					cooling-device = <&fan 0 1>;
+				};
+
+				map1 {
+					trip = <&target>;
+					cooling-device = <&fan 1 2>;
+				};
+
+				map2 {
+					trip = <&cpu_hot>;
+					cooling-device = <&fan 2 3>;
+				};
+			};
+		};
+	};
 };
 
 &ddc0 {
@@ -103,6 +152,11 @@ reset: reset {
 		compatible = "raspberrypi,firmware-reset";
 		#reset-cells = <1>;
 	};
+
+	fwpwm: pwm {
+		compatible = "raspberrypi,firmware-poe-pwm";
+		#pwm-cells = <2>;
+	};
 };
 
 &gpio {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
