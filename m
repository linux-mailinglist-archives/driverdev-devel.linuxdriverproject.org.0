Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 098102FB532
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:14:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D9EAF204CA;
	Tue, 19 Jan 2021 10:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5y0kgVMCvTqb; Tue, 19 Jan 2021 10:14:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B24A520477;
	Tue, 19 Jan 2021 10:14:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26E941BF27F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 24156843ED
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HaIi-R0d3nDu for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C95218441F
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 10C5323133;
 Tue, 19 Jan 2021 10:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611051267;
 bh=ym77ocWKV10S+hX38ZBtUuhXsAT7fhTK688EHVretXs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PYz9pscn2Sm9xqEgtWOZx8a7munbIVsulk2a0oIjnNtUoq2TSvYayJdwht40NCsy9
 dnC6TD6vNXqvKfuqxRRzxVhl7DVN4hI0WeApi0XWHo39XIhz4qVCtlGVw7jd2WohwF
 k7y3IaxDpw0tJj4LlV8G3cJEoHTQiLkJUNUudM1mDj+0heiXd9NqnbdOFPsN8WV8Js
 EmOXEXKJQs2r6l7IIsLNAghOmBIE+906nFl2MfnQLf8mMq0b97uKxK6Ft7eOArtGL0
 jA/2j6Pqy/vh1XhC+X39qjeSnQmTq5OYBL35IebRJOjSsqqd7va5IWQP8sSux7dR/C
 sdkSEh1fK7a3g==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1o1o-000tOe-IM; Tue, 19 Jan 2021 11:14:24 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v3 02/18] staging: hikey9xx: hisilicon,
 hi6421-spmi-pmic.yaml: simplify props
Date: Tue, 19 Jan 2021 11:14:07 +0100
Message-Id: <bfb4ecb4a6b830259f59bfe1da203d9c01997d2f.1611048785.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611048785.git.mchehab+huawei@kernel.org>
References: <cover.1611048785.git.mchehab+huawei@kernel.org>
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
