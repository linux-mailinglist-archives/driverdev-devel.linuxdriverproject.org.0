Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 613382D5A60
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 13:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3FDF08682A;
	Thu, 10 Dec 2020 12:22:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cALFfyfu3pop; Thu, 10 Dec 2020 12:22:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A030F86861;
	Thu, 10 Dec 2020 12:22:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B58111BF31C
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 12:22:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B2A3C87798
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 12:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v1Qg_nwrdfzV for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 12:22:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bmail1.ministro.hu (bmail1.ministro.hu [5.249.150.236])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EC6678778C
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 12:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bmail1.ministro.hu (Postfix) with ESMTP id 17349123B01;
 Thu, 10 Dec 2020 13:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ministro.hu;
 s=201804; t=1607602948;
 bh=stdRd1Ge1u9OB3/zaOc1WCQ0FTlN9r2WHM/06jMJo8k=;
 h=Date:From:To:Subject:From;
 b=K5cL9Xpmn4q5In4An3pa1zlIAo+o35kI1Fvodu+o1M1MnvZug/Yf8emmew8t9lW5w
 BeWSGYFoYZzoazG/deG1UABmSvcLaYd4/ntbmmQXNEZ+rkSpLNkkp0w5jq1KVEraDq
 RZJ9mIa5+c875Zwfh5ud0z2yY8nHt3dG454QN4rgKkctHyN/pm9NiGIHYcJoeo2i1G
 +NvwQKCipnap7ce6Al+0N8tyYiF2Z/+FG9YP4Kg1X0JyaRbjavpdZE8YJHId5ylb4v
 OsWW2VNHG0sJGXS6biNWYzONoN43hen0+nFM/KEvEwCJG2UyXEkb44bmLQqfEjduHV
 OYBDhLmnqq1jA==
X-Virus-Scanned: Debian amavisd-new at ministro.hu
Received: from bmail1.ministro.hu ([127.0.0.1])
 by localhost (bmail1.ministro.hu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pHo5vC9icYe; Thu, 10 Dec 2020 13:21:58 +0100 (CET)
Received: from dincontrollerdev (localhost [127.0.0.1])
 by bmail1.ministro.hu (Postfix) with ESMTPSA id C0F9E123AFF;
 Thu, 10 Dec 2020 13:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ministro.hu;
 s=201804; t=1607602918;
 bh=stdRd1Ge1u9OB3/zaOc1WCQ0FTlN9r2WHM/06jMJo8k=;
 h=Date:From:To:Subject:From;
 b=U5jhQoeTF29WCd56hwxzIcTs+KhBMWWyKbGeyWzGJavFnSC5p/E6kb/R8kEPGJ38z
 XW7EDuIfzppK/2XC4j5vD20Q/vsAPsY+lFDQRc16fQwTPAoIZj/FKpFPcWIWyNSKM3
 kfELTHGsDktZ13LpG+kKj2JPg+etMZ+YWwS7R7lKIBaCudl+VWf31hbgWX+ko6m/UJ
 K3aT1C5NUbx5A5U5FWBEUvToYcNg5h8q9li0CbC7fjxtUCpzXt1W8pPLQp66WPcF9F
 8wiseSy9/HfgwWVJ/y2sJP9/I9UvGrftEm1lRNDWKvgcEprT461WCNVtlYK/Dg5aTS
 gNPgn4RAuiYDw==
Date: Thu, 10 Dec 2020 12:21:56 +0000
From: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
To: 'Rob Herring' <robh+dt@kernel.org>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 =?iso-8859-1?Q?'J=F3zsef_Horv=E1th'?= <info@ministro.hu>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v1 2/2] Staging: silabs si4455 serial driver: docs device
 tree binding
Message-ID: <20201210122154.GA31799@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

add: device tree binding schema

Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>
---
 .../bindings/serial/silabs,si4455.yaml        | 53 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 2 files changed, 54 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/serial/silabs,si4455.=
yaml

diff --git a/Documentation/devicetree/bindings/serial/silabs,si4455.yaml b/=
Documentation/devicetree/bindings/serial/silabs,si4455.yaml
new file mode 100644
index 000000000000..80a73a61755b
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/silabs,si4455.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/serial/silabs,si4455.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Silicon Labs Si4455 device tree bindings
+
+maintainers:
+  - J=F3zsef Horv=E1th <info@ministro.hu>
+
+allOf:
+  - $ref: "/schemas/serial.yaml#"
+
+properties:
+  compatible:
+    const: silabs,si4455
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  spi-max-frequency:
+    description: maximum clock frequency on SPI port
+    maximum: 500000
+
+  shutdown-gpios:
+    description: gpio pin for SDN
+    maxItems: 1
+
+required:
+  - reg
+  - interrupts
+  - spi-max-frequency
+  - shutdown-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    &spi0 {
+      serial0: si4455@0 {
+        compatible =3D "silabs,si4455";
+        reg =3D <0>;
+        interrupt-parent =3D <&gpio>;
+        interrupts =3D <7 IRQ_TYPE_LEVEL_LOW>;
+        shutdown-gpios =3D <&gpio 26 1>;
+        spi-max-frequency =3D <300000>;
+      };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index a29bc17d446d..16cc96971ac2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15937,7 +15937,7 @@ F:	drivers/platform/x86/touchscreen_dmi.c
 SILICON LABS SI4455 SERIAL DRIVER
 M:	J=F3zsef Horv=E1th <info@ministro.hu>
 S:	Maintained
-F:	Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
+F:	Documentation/devicetree/bindings/serial/silabs,si4455.yaml
 F:	drivers/tty/serial/si4455.c
 F:	drivers/tty/serial/si4455_api.h
 =

-- =

2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
