Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDB72FBC0B
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 17:11:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EEA08695B;
	Tue, 19 Jan 2021 16:11:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DovF5upPku2D; Tue, 19 Jan 2021 16:11:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8702285693;
	Tue, 19 Jan 2021 16:11:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4C531BF9BD
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1A0586F65
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qe-E5l7CVclj for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 16:10:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E85A886F85
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 16:10:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D27B22DFB;
 Tue, 19 Jan 2021 16:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611072651;
 bh=ym77ocWKV10S+hX38ZBtUuhXsAT7fhTK688EHVretXs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YUcMHQqtxPIl8iToaHZ/0b5H0jKqjiWvebkjbKs+6GnllTfJ654yO7BX+D4NRsUCS
 pTKjUWUK88pNNzAuyuUjTd5mvLtlF/slCO14S+jcW67Bq+DT8US1PFvd4bvotxCO0D
 I+eDzyZlL+mxqyfDzN4syOfnCd/4oXoV8Qw1yC3jJulKIVGGEIaJN2ocrkOju66UjB
 PAJ1uEqSLwlh1ie4ZjeCc8Ysgm/EUY0DVS5B4zz8DAH463Al4Va8++V3+xI8CrFL7T
 N9dsp7VU3AGm9kx6YV98F9YZmaPyiooczV1R8zK4osuC9XYwf03u8aoy/ue8fd7m+S
 R0JVbJfV37e4A==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1tai-0012bX-Px; Tue, 19 Jan 2021 17:10:48 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v4 02/21] staging: hikey9xx: hisilicon,
 hi6421-spmi-pmic.yaml: simplify props
Date: Tue, 19 Jan 2021 17:10:28 +0100
Message-Id: <907c4757c16e7642be9948fbe01a390366c503a8.1611072387.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611072387.git.mchehab+huawei@kernel.org>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As all regulator-specific properties got moved to be part of the
driver, remove them from the DT spec.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 106 +++++++-----------
 1 file changed, 40 insertions(+), 66 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml b/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
index 80e74c261e05..f385146d2bd1 100644
--- a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
+++ b/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
@@ -55,47 +55,6 @@ properties:
 
         $ref: "/schemas/regulator/regulator.yaml#"
 
-        properties:
-          reg:
-            description: Enable register.
-
-          '#address-cells':
-            const: 1
-
-          '#size-cells':
-            const: 0
-
-          vsel-reg:
-            description: Voltage selector register.
-
-          enable-mask:
-            description: Bitmask used to enable the regulator.
-
-          voltage-table:
-            description: Table with the selector items for the voltage regulator.
-            minItems: 2
-            maxItems: 16
-
-          off-on-delay-us:
-            description: Time required for changing state to enabled in microseconds.
-
-          startup-delay-us:
-            description: Startup time in microseconds.
-
-          idle-mode-mask:
-            description: Bitmask used to put the regulator on idle mode.
-
-          eco-microamp:
-            description: Maximum current while on idle mode.
-
-        required:
-          - reg
-          - vsel-reg
-          - enable-mask
-          - voltage-table
-          - off-on-delay-us
-          - startup-delay-us
-
 required:
   - compatible
   - reg
@@ -117,43 +76,58 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
 
-        ldo3: ldo3@16 {
-          reg = <0x16>;
-          vsel-reg = <0x51>;
-
+        ldo3: LDO3 {
           regulator-name = "ldo3";
           regulator-min-microvolt = <1500000>;
           regulator-max-microvolt = <2000000>;
           regulator-boot-on;
-
-          enable-mask = <0x01>;
-
-          voltage-table = <1500000>, <1550000>, <1600000>, <1650000>,
-                          <1700000>, <1725000>, <1750000>, <1775000>,
-                          <1800000>, <1825000>, <1850000>, <1875000>,
-                          <1900000>, <1925000>, <1950000>, <2000000>;
-          off-on-delay-us = <20000>;
-          startup-delay-us = <120>;
         };
 
-        ldo4: ldo4@17 { /* 40 PIN */
-          reg = <0x17>;
-          vsel-reg = <0x52>;
-
+        ldo4: LDO4 {
           regulator-name = "ldo4";
           regulator-min-microvolt = <1725000>;
           regulator-max-microvolt = <1900000>;
           regulator-boot-on;
+        };
 
-          enable-mask = <0x01>;
-          idle-mode-mask = <0x10>;
-          eco-microamp = <10000>;
+        ldo9: LDO9 {
+          regulator-name = "ldo9";
+          regulator-min-microvolt = <1750000>;
+          regulator-max-microvolt = <3300000>;
+          regulator-boot-on;
+        };
 
-          hi6421-vsel = <0x52 0x07>;
-          voltage-table = <1725000>, <1750000>, <1775000>, <1800000>,
-                          <1825000>, <1850000>, <1875000>, <1900000>;
-          off-on-delay-us = <20000>;
-          startup-delay-us = <120>;
+        ldo15: LDO15 {
+          regulator-name = "ldo15";
+          regulator-min-microvolt = <1800000>;
+          regulator-max-microvolt = <3000000>;
+          regulator-always-on;
+        };
+
+        ldo16: LDO16 {
+          regulator-name = "ldo16";
+          regulator-min-microvolt = <1800000>;
+          regulator-max-microvolt = <3000000>;
+          regulator-boot-on;
+        };
+
+        ldo17: LDO17 {
+          regulator-name = "ldo17";
+          regulator-min-microvolt = <2500000>;
+          regulator-max-microvolt = <3300000>;
+        };
+
+        ldo33: LDO33 {
+          regulator-name = "ldo33";
+          regulator-min-microvolt = <2500000>;
+          regulator-max-microvolt = <3300000>;
+          regulator-boot-on;
+        };
+
+        ldo34: LDO34 {
+          regulator-name = "ldo34";
+          regulator-min-microvolt = <2600000>;
+          regulator-max-microvolt = <3300000>;
         };
       };
     };
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
