Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBA52FA189
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 14:28:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CEBE92046B;
	Mon, 18 Jan 2021 13:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rjJCaZTHwjjr; Mon, 18 Jan 2021 13:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8BF3B2049E;
	Mon, 18 Jan 2021 13:28:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 078D01BF3CD
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0438886443
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DuV3lmmdM2KG for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 749A686418
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F0E9922BEA;
 Mon, 18 Jan 2021 13:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610976499;
 bh=ym77ocWKV10S+hX38ZBtUuhXsAT7fhTK688EHVretXs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=F/bR2qOyM2IEl1XrPvqnFotwdtyBg9riyeibIOQstoourZLQEi6Ll5qo/WDRGsVyR
 6octrduBNlPD3/wqWml30q6naWEFsja0qgWZUTlf0R8RIqlhgGx36ldtsUIHMICDPL
 XyhgKzeRK/tpmFhAtNBm7eENJbnW5yZsV2Eaw22TalLaj92r93ylJusmpi8WFZYy+k
 u2MjORs6TBiqVFLpKWJ7t8+CA6CCCBOVO7zwaCR9Rq8S3h667FyXG/uNQN5vTQZfIa
 g4z75mNwdDa2+9ELraJIbcM1Oqmy1+NPHBBtGGm+X9eg2mSnd458bcOvEbfSIXB9vX
 DgfGf4hgYMZsA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1UZs-000Vko-Ha; Mon, 18 Jan 2021 14:28:16 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 06/13] staging: hikey9xx: hisilicon,
 hi6421-spmi-pmic.yaml: simplify props
Date: Mon, 18 Jan 2021 14:28:07 +0100
Message-Id: <454a76ea63fe9ecae55c7762aeafd1e5a65ab142.1610975633.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1610975633.git.mchehab+huawei@kernel.org>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
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
