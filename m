Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806EFF4483
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 11:32:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CE1787C66;
	Fri,  8 Nov 2019 10:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j7w3B91R4lmz; Fri,  8 Nov 2019 10:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0494487C10;
	Fri,  8 Nov 2019 10:32:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4CA11BF298
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 10:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C036585F44
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 10:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MR5SXwowrBeb for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 10:31:56 +0000 (UTC)
X-Greylist: delayed 01:34:58 by SQLgrey-1.7.6
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820103.outbound.protection.outlook.com [40.107.82.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8F4BB85EF3
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 10:31:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aJyWU0h31FC43F7PLDtgG0axCJ9XXUVDVVx8wHNN4PuysJIAxTA7xl3+Mu7rKuPySGrwrwThIu6szs8A/0WihiOoxQ758ZwdnpbNZXzNkp11sGum8iEQDfiRi5crScDukTbv+PjQ/oaqRbYO22mgjXRznnVu7HNZodB0k1c0yItWNa51r9cxRv629nCdz6O+NOMZ2r1k6tX5PqcKoRP24+YgpGGwQr221xTZbGdN6W5+BlkRyUAhg7G+eO3hPNFxI/oXhZUgWBOK/5/jjWdTW2QSH4mCh+/z5v4AXLckw8Dw4NpP9Z2JvrJL+yndwSrgOdcJXrIeE/IXJDrZ7zTOHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5+GYu9VYFD1uOnMGbRWIfFjJqLaFA4oX3QHgEOliP0=;
 b=nH//AnFZVOZuro4vVpuxiZQKRb9pcotK8TP6+8GfHjkhDycWX6cznF6i8gf/ajO1je/m1Jvj8Cfs1MuokFaS3LSRZlngVcJRx652qLx0ZhPLp+muOtyCYJXNoalIdobHlZZJr/uidczIwlZDtsaaMJoQeufKeqyd/6uiQ0b1MBt/9C5KJWgySoys090gO9saHNIaSTk3OtZN/FJmo0OzrEepX58OF/zkH/1BA0N/HWyWS2gunt8Oo21w8Ju1tST/T4Ju7Fb+CXVguKqYOmqw0ioGiruYbOzf8/5Xr6kLEM0Lndm6+oMlokQmhjpd4OpwyUJQ2J+VdxAPRjkiZ0KoaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5+GYu9VYFD1uOnMGbRWIfFjJqLaFA4oX3QHgEOliP0=;
 b=cRuJWMQeN83dRadZQJknUZDy+lAYeJeCI4F4fVB9WRbrUcOhiIEgVL1m9EvnbxDolCRXiuyaurLHeBk8X7Q+VU50H4+rRLqTdv4LYjzJRTVcPpiBaLV0DqNOXD4Rpoz7azq2t96+PaBWpa6P0plr8HaaT5sLvz1Jz4BnKaqqKvg=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4942.namprd04.prod.outlook.com (52.135.114.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 8 Nov 2019 08:59:29 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16%5]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 08:59:29 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v4 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v4 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVlhLT9mIfq1mje06JeNP9Te/Hmg==
Date: Fri, 8 Nov 2019 08:59:27 +0000
Message-ID: <67ccead807b7d0a50df479cab2c9d325041224bc.1573203023.git.xji@analogixsemi.com>
References: <cover.1573203022.git.xji@analogixsemi.com>
In-Reply-To: <cover.1573203022.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0036.apcprd03.prod.outlook.com
 (2603:1096:203:2f::24) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 782ee8a9-9f06-4456-7310-08d76429f4e4
x-ms-traffictypediagnostic: SN6PR04MB4942:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4942AB984473BE8BC5EA31B6C77B0@SN6PR04MB4942.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(71200400001)(256004)(2501003)(486006)(8676002)(54906003)(2906002)(6486002)(107886003)(6512007)(6306002)(11346002)(446003)(6436002)(2616005)(4326008)(476003)(25786009)(102836004)(66066001)(8936002)(26005)(118296001)(7416002)(52116002)(7736002)(66446008)(66476007)(66556008)(66946007)(99286004)(316002)(5660300002)(86362001)(71190400001)(186003)(36756003)(305945005)(386003)(81166006)(110136005)(81156014)(3846002)(6506007)(76176011)(14454004)(6116002)(64756008)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4942;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DBLSB9luvgYbuGSsNVOTbiyltskqmeKuDE2mgktBGrVI9Dtji22ITF+8POKHN2xobynzSsuDy8E4dPffclr3J0c9frW7TMGT4oxAZf6iZVcd33qrcyN3cyvvDOrFFhV5wDyX/vjM3gQVdegF9E4IgVhQlno0BEE4XGum1ZVo3NyPSDhljuVS/vmKw/pqcBJcw9DPhnbYyrWU9wIAup+9iOwIo/N/p1Y096KNOcPsKVaT7MYYYAZBSjGyKRsDzVMQVEuj/ZBsID7rHrmUSlJQgFE9w6jM2lE/U0ND9cY9Qe+ECrln9LjKItnMqq4pGkPv74ZYUjulvCkOfakGLrmBkFT3bVkoiZrTKl5a2OxJ6W3UTW0HBnxK7V5fGvAnN5rDDlmwN+bylaH5bLf+gX+GiPGPXxsTG/ON2UBA9IqlUXPSbkCrhj1HuaOKRfPOKXRk/it/qdm9W7vT2gUb3toxwDFKmbM0UtlmI5DcOvlKQiQ=
Content-ID: <457F594ADA47CC4FBDFBC5F56E002D87@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 782ee8a9-9f06-4456-7310-08d76429f4e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 08:59:28.3150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hiu1z2SSoVEDFsKT9cLQ1LCv5eWmMJbvXh7MISMY9KPIDWr14UGQ56/Xes9hmms1dQeqT2BkVi3N01JU0ksi2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4942
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
 Nicolas Boichat <drinkcat@chromium.org>, Pi-Hsun Shih <pihsun@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>,
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

		port@2 {
		  reg = <2>;
		  anx_1_out: endpoint {
		    remote-endpoint = <&panel_in>;
		  };
		};
	};

Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 .../bindings/display/bridge/anx7625.yaml           | 91 ++++++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
new file mode 100644
index 0000000..1149ebb
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
@@ -0,0 +1,91 @@
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
+    description: indicate the panel is internal or external.
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
+      A port node pointing to panel port node.
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - port@0
+  - port@2
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
+        port@2 {
+          reg = <2>;
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
