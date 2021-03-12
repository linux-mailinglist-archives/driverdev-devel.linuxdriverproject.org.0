Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EDC338D0A
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 13:27:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEF914ED63;
	Fri, 12 Mar 2021 12:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8TtP-i8brxvW; Fri, 12 Mar 2021 12:27:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 869C34ED27;
	Fri, 12 Mar 2021 12:27:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 26C9C1BF303
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 12:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A224443269
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 12:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKsdWHEBlYSe for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 12:25:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECAC643027
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 12:25:26 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 66573B0BF;
 Fri, 12 Mar 2021 12:25:25 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de
Subject: [PATCH v8 09/11] dt-bindings: pwm: Add binding for RPi firmware PWM
 bus
Date: Fri, 12 Mar 2021 13:24:52 +0100
Message-Id: <20210312122454.24480-10-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210312122454.24480-1-nsaenzjulienne@suse.de>
References: <20210312122454.24480-1-nsaenzjulienne@suse.de>
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
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-input@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, bgolaszewski@baylibre.com,
 Rob Herring <robh@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The PWM bus controlling the fan in RPi's official PoE hat can only be
controlled by the board's co-processor.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes since v4:
 - Rename compatible string to be more explicit with the bus' limitations

Changes since v3:
 - Fix example

Changes since v1:
 - Update bindings to use 2 #pwm-cells

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 20 +++++++++++++++++++
 .../pwm/raspberrypi,firmware-poe-pwm.h        | 13 ++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 include/dt-bindings/pwm/raspberrypi,firmware-poe-pwm.h

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index a2c63c8b1d10..e3664eab0f6a 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -64,6 +64,21 @@ properties:
       - compatible
       - "#reset-cells"
 
+  pwm:
+    type: object
+
+    properties:
+      compatible:
+        const: raspberrypi,firmware-poe-pwm
+
+      "#pwm-cells":
+        # See pwm.yaml in this directory for a description of the cells format.
+        const: 2
+
+    required:
+      - compatible
+      - "#pwm-cells"
+
     additionalProperties: false
 
 required:
@@ -87,5 +102,10 @@ examples:
             compatible = "raspberrypi,firmware-reset";
             #reset-cells = <1>;
         };
+
+        pwm: pwm {
+            compatible = "raspberrypi,firmware-poe-pwm";
+            #pwm-cells = <2>;
+        };
     };
 ...
diff --git a/include/dt-bindings/pwm/raspberrypi,firmware-poe-pwm.h b/include/dt-bindings/pwm/raspberrypi,firmware-poe-pwm.h
new file mode 100644
index 000000000000..27c5ce68847b
--- /dev/null
+++ b/include/dt-bindings/pwm/raspberrypi,firmware-poe-pwm.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2020 Nicolas Saenz Julienne
+ * Author: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
+ */
+
+#ifndef _DT_BINDINGS_RASPBERRYPI_FIRMWARE_PWM_H
+#define _DT_BINDINGS_RASPBERRYPI_FIRMWARE_PWM_H
+
+#define RASPBERRYPI_FIRMWARE_PWM_POE		0
+#define RASPBERRYPI_FIRMWARE_PWM_NUM		1
+
+#endif
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
