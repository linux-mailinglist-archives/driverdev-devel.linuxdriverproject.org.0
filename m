Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A28D3812
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 05:54:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACCCD887F8;
	Fri, 11 Oct 2019 03:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJBej6v3m8hh; Fri, 11 Oct 2019 03:54:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D589A887DD;
	Fri, 11 Oct 2019 03:54:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1DF61BF2EA
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 03:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D60E887DC
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 03:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t+YTvP-bF9qz for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 03:54:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780103.outbound.protection.outlook.com [40.107.78.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47FC8887BF
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 03:54:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKV2LwnziDrtcf+zeUwojhGHsz1WbJ68KHMl6XsQqilJZzI+T86nrwpntbxq+54KACUYkseqqujX/Ijh/pvwivJ5mcxzV9YgZ1LBlgTipIp/OiXxVcCuUGVNQy7dvcgOvCYj7iigIYPq5i4kN62jRJ6it3MGj2m5JVduF2UmsBR5ArHwdFtLL3G64WUa3g8OcyzsKIvhNXUuvw5B8woVQe6syxtjRHsQ27GMf+JG3+28PMoK8G2lfmIUo+KfVIgUOoh9/GiMPRT/bHtqSkTHhPQn2dDPvktx4ZX82EYRT8JOrgkQ4ZfheJm8gWNIMgVphS92L0GCqwOVAKiRQNKGMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrgTNskGg8ZuhmFhtCjGXkTrtLDGZr+OZQHgY6yQ/BY=;
 b=PR2/BH3MH424cJXKgOpif1ER+izAe6jFgQrjK77gI9x7c6dfsa67oN23zirtCPDSs+o4GmgZSBxIRXiKTjpdQJ2WfnKRqFOQg3sCpWvapzaDN/hmB2bYhRgyom07B8DJ9rQqUxhpdpb2o1lD6IETTu3p+Tei93qei7/zSeGqPHfarcNErbRtGN1/jJ+xVk+hmJzc5B9I3zu0s1Png4OXF6INoQA/Ijma4UA6G0k0r2tPARujEjSEZorPOmwaoM01uWP4y75WX7xzzPR0JO0yMZe07ap2xh/knUGxS45yfVDpEykCTPNq82+QJbco6iwWrhisPwbgqahNezdsoEah/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrgTNskGg8ZuhmFhtCjGXkTrtLDGZr+OZQHgY6yQ/BY=;
 b=Qq8QQKGVaQlpi9mZKTqvEGVIxZBdQ/xINUxuqV1YSlO/o4dsoDHUMaxaTzysoRAmq/QjyzUkSHtM09aVrz/DkxtiN8iEri/jK6l3vq9B2u+zZ0nEj9UYYZhvfsE8fi4ISVacs5amd1zhYA8b4G1vb4kVqvofgfU8rnFIcU2MxLQ=
Received: from BL0PR04MB4532.namprd04.prod.outlook.com (10.167.181.144) by
 BL0PR04MB4721.namprd04.prod.outlook.com (10.167.181.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Fri, 11 Oct 2019 02:21:48 +0000
Received: from BL0PR04MB4532.namprd04.prod.outlook.com
 ([fe80::c184:37a4:7e6e:aa42]) by BL0PR04MB4532.namprd04.prod.outlook.com
 ([fe80::c184:37a4:7e6e:aa42%7]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 02:21:48 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVf9qi2ZQPn8IAhkqsNtop++SEMw==
Date: Fri, 11 Oct 2019 02:21:48 +0000
Message-ID: <75bb8a47d2c3c1f979c6d62158c21988b846e79b.1570760115.git.xji@analogixsemi.com>
References: <cover.1570760115.git.xji@analogixsemi.com>
In-Reply-To: <cover.1570760115.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0024.apcprd03.prod.outlook.com
 (2603:1096:203:2e::36) To BL0PR04MB4532.namprd04.prod.outlook.com
 (2603:10b6:208:4f::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e278aa5a-063f-406b-c6c4-08d74df1c4da
x-ms-traffictypediagnostic: BL0PR04MB4721:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR04MB472161CBE451CC2AEFD82939C7970@BL0PR04MB4721.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(366004)(39850400004)(376002)(346002)(189003)(199004)(305945005)(81156014)(64756008)(66446008)(6486002)(107886003)(81166006)(6436002)(7736002)(66066001)(8936002)(66946007)(8676002)(66556008)(4326008)(3846002)(25786009)(66476007)(14454004)(86362001)(6116002)(76176011)(256004)(52116002)(26005)(2501003)(386003)(118296001)(6506007)(478600001)(7416002)(6512007)(446003)(102836004)(99286004)(110136005)(486006)(476003)(316002)(54906003)(2616005)(6306002)(11346002)(186003)(71190400001)(36756003)(71200400001)(5660300002)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR04MB4721;
 H:BL0PR04MB4532.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BsAXAZmWR5r/jd1mkeUMZAy72h+4hzCiv/hmCqVaPv3G78k+Ifb5kbW56aOxPqf7dG4PzwEaRUA58+JoC8B9Iyo33Eo8K7WLm9F5gP/UmOVMRGunaoTp/t8Jei7RUMLepQBPvX9s9JL3gfGK4/agCNoW2aqIq/Tpd2FnRS8Fd/vJPJG98KOilGWgGzNY8/UFIek1DIPY0Bd7aO4dIP5sY/rsbZTS8H/yVNGLRUJ1SRq3ksaIWAWPIyqUVbYsqYieW75lOHpB/TTzZUdiUnwI2Iaf+cXk2L6eWiKGDGlRcZaM8kq3i8u6EPck7LvXxMS/eZ07NpGqOh3+NfROScRpN73onDih/pYmuQo2PgO3Nnd07WieU9VkesEcMnbGf4YByzOEiPWQQyGmn6o3fXejXl/CMZHIG0lZKTKsLBxNcl3sIBh8cQVxAmE4kRLlQOcXAgA6YaSBwsGpaIV0rlQGwQ==
Content-ID: <E6BAA219035DF14EBD0997C840B0FB74@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e278aa5a-063f-406b-c6c4-08d74df1c4da
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 02:21:48.5211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WOZikUEpiHmkylrdEa9K+Q8iZpMZ0Bvgz+/HEqsCn4FtIjbG1G4f1ifuNoExg65k3NkuUQl/dAm/sNxn+vt5lA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB4721
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
for portable device. It converts MIPI to DisplayPort 1.3 4K.

You can add support to your board with binding.

Example:
	anx7625_bridge: encoder@58 {
		compatible = "analogix,anx7625";
		reg = <0x58>;
		status = "okay";
		panel-flags = <1>;
		enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
		reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
		#address-cells = <1>;
		#size-cells = <0>;

		port@0 {
		  reg = <0>;
		  anx_1_in: endpoint {
		    remote-endpoint = <&mipi_dsi>;
		  };
		};

		port@3 {
		  reg = <3>;
		  anx_1_out: endpoint {
		    remote-endpoint = <&panel_in>;
		  };
		};
	};

Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 .../bindings/display/bridge/anx7625.yaml           | 96 ++++++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
new file mode 100644
index 0000000..fc84683
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 Analogix Semiconductor, Inc.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/display/bridge/anx7625.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Analogix ANX7625 SlimPort (4K Mobile HD Transmitter)
+
+maintainers:
+  - Xin Ji <xji@analogixsemi.com>
+
+description: |
+  The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
+  designed for portable devices.
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    items:
+      - const: analogix,anx7625
+
+  reg:
+    maxItems: 1
+
+  panel-flags:
+    description: indicate the panel is internal or external
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  enable-gpios:
+    description: used for power on chip control, POWER_EN pin D2.
+    maxItems: 1
+
+  reset-gpios:
+    description: used for reset chip control, RESET_N pin B7.
+    maxItems: 1
+
+  port@0:
+    type: object
+    description:
+      A port node pointing to MIPI DSI host port node.
+
+  port@1:
+    type: object
+    description:
+      A port node pointing to MIPI DPI host port node.
+
+  port@2:
+    type: object
+    description:
+      A port node pointing to external connector port node.
+
+  port@3:
+    type: object
+    description:
+      A port node pointing to eDP port node.
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - port@0
+  - port@3
+
+example:
+  - |
+    anx7625_bridge: encoder@58 {
+        compatible = "analogix,anx7625";
+        reg = <0x58>;
+        status = "okay";
+        panel-flags = <1>;
+        enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
+        reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        port@0 {
+          reg = <0>;
+          anx_1_in: endpoint {
+            remote-endpoint = <&mipi_dsi>;
+          };
+        };
+
+        port@3 {
+          reg = <3>;
+          anx_1_out: endpoint {
+            remote-endpoint = <&panel_in>;
+          };
+        };
+    };
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
