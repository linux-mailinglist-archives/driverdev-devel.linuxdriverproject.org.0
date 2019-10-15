Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C1BD72B8
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 12:02:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51AF988262;
	Tue, 15 Oct 2019 10:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7MsIKpcvN+ZL; Tue, 15 Oct 2019 10:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FE9588249;
	Tue, 15 Oct 2019 10:02:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0AA8A1BF271
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 10:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 073D08650D
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 10:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hmrBGBYb833R for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 10:02:43 +0000 (UTC)
X-Greylist: delayed 05:25:47 by SQLgrey-1.7.6
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr730101.outbound.protection.outlook.com [40.107.73.101])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F18FA865B0
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 10:02:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JV2GguyVgEshT+sg1sf+Y6TtaYnNiILQvQyubbPeYjaCYooFzsIHbDiqFvru8jIxy4qvNb6vh9DV8lHK15zvYAyq8O9HgKv0z+585wGyxhbvZeymdTmGUHZ6+1hl+yzT0HrxnbiObFR67dYXCyTpGlcAx4hPWHclNKn1yeo1EQvPzoloVkRuu6cuteQzpnKWl/WdaqLzrA9D3MGKeyN30jUzLtWZGBA3vSrzQYqFMasOo+382qjYDb1h0h9zgVQZL9iVmNbKvEv2L5AOklD0ynBAiypHLvAMQVE8wW7Qkt76A1XyXfWERfo5MvBWoWLK3Mz8pXhKzCTvTnPM90gRvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5+GYu9VYFD1uOnMGbRWIfFjJqLaFA4oX3QHgEOliP0=;
 b=eeJIKLJ9HkWWGCPQ94K+CrYDBM4rhukYg/qh7djkfbb+cDrI7Mv9NJDx7p3TfA4xPMmg41JtDPxQr1MqDUtUL9PEkzAWkSFEQpB4tdOfDUsHamG8FrYXr4/wJuaiuvq/VnZsaviwVOjjycfQ2yrYtUo5pzB4kGz2muZmNZ7WQRYPpS9A948kVCUu44ciyAoHP2cuIxIBCKRF1y8BTyBBwqp37kFquTGEzzT+nypJSLpTLnJ3vdB+dkwBm+cpAZsf0G5ONX0x7j0B+W1qKSJXuLuoXEjOi3oG3YHjvn6AG/3A8G+dqKOWSLGv57QjY+GqoszDeQWWmaXBjnyQVvE8RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5+GYu9VYFD1uOnMGbRWIfFjJqLaFA4oX3QHgEOliP0=;
 b=roHHYmBTbOyi1MLwAr5c9y+UuNUBmu9YC8jR/HgBG+tBEG0z+h1/1da3eo1XyL1NqqJFi0BEQxcblqjZ0XLDbSrLq7d/ovuC5TCUU5132gqXMuQ6CRmdtAj5tWM+LZFEtqNALVN06LkYVbKejtyNGFqzI/wfeDoftAY1LRCSWRk=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB5360.namprd04.prod.outlook.com (20.178.6.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Tue, 15 Oct 2019 09:47:49 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 09:47:49 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v3 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v3 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVgz2aARDq5pUGhEq7iSQbrjmgeg==
Date: Tue, 15 Oct 2019 09:47:49 +0000
Message-ID: <67ccead807b7d0a50df479cab2c9d325041224bc.1571132350.git.xji@analogixsemi.com>
References: <cover.1571132350.git.xji@analogixsemi.com>
In-Reply-To: <cover.1571132350.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0028.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:69::41) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fa2170f-2f16-42a2-9470-08d75154bd20
x-ms-traffictypediagnostic: SN6PR04MB5360:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB5360B6AE6F5CF2D1A0644DB4C7930@SN6PR04MB5360.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39850400004)(396003)(366004)(376002)(346002)(189003)(199004)(118296001)(99286004)(6486002)(4326008)(2906002)(256004)(14454004)(66066001)(36756003)(2501003)(5660300002)(25786009)(8936002)(386003)(8676002)(81156014)(6436002)(81166006)(478600001)(71200400001)(71190400001)(486006)(476003)(54906003)(316002)(64756008)(66556008)(2616005)(6306002)(6512007)(110136005)(6506007)(446003)(7416002)(305945005)(7736002)(76176011)(11346002)(3846002)(66946007)(26005)(186003)(52116002)(6116002)(66446008)(102836004)(86362001)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5360;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GZzdFdt/kcrL5M229sMgVXQsjkz8ulRrTsv5OqXLVAqAhvfTnlTKcGFQJxbSZC+ngNs9tVindRZn6yKYf/NCfyHNGkG+YfRMK6ylfZ1ryQMDGC0VnCE9MXqC/orooBW45Lxjedi0gMjxXkzNHQjRYzXK7OjuMGXE/k0whevVAO7P1MbJ7ZiWgdOgU+vW4l9nYCiedUW8VS/UvGiKC2RUB6DxkNSZwog62N8+BuMibLtYVc9j6dM13rA/xSKrGlHloRrw3fWqcprRY19ybKjWfo+lGBdDgecKASh8nD1h22nBKbG2+6xyvGJ3QGTYK0cB0OMmc0zpIAuaLokdQjsHHw4POE9HUDZeikOX6Kj9w/PsIN7fmtdeEmK8lrWxm+kHE8JfLLCupejc/ebn5GIxS3zMtzqfIgEdb05dsIcaeM8xYZXtxZFcz1Fh8ORR3m+XkM42Hk3Iv0vHojc8pqvBlg==
Content-ID: <B0C10784B4823C45925D40791815413A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fa2170f-2f16-42a2-9470-08d75154bd20
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 09:47:49.2094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g42dOBjQ4AHTwICyyI5HrBMsBeCrxo4gg/y3an5HnaNQYdatw8NHTVs5BVOSFhkUAz4cHeBB+5r6zTst19KmOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5360
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
