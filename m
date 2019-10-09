Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3745FD0B87
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 11:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE73D86702;
	Wed,  9 Oct 2019 09:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4QFiapNO2RFa; Wed,  9 Oct 2019 09:41:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2968386469;
	Wed,  9 Oct 2019 09:41:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BFBF1BF404
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67B782286F
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G3xLkPNyqCGw for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 09:41:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710120.outbound.protection.outlook.com [40.107.71.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 07064214EC
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 09:41:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pd4CzFu/GmvKFTXoNKPsuJCB4WKUQoRkusqTBi7t5/DAP3zqwWVZn3eWuC+UXLjsrb5uTVWK5A2x5ldMZZF7k9/je2vlIDDJQdv98wwgZ5E6sMvr/CHgxOpQ+4Golpp0TSnYYfyQR1SxUnJ0CilfsPVSDn0cYD3Vn+jmyyX5Tyk8vVaJGY7BnVxeE6WyB9nWGslQ+m3bpGne0nWqNRewtplh1HRlvVBla+NIirEVkufnDEW1P8tzlha4SsWgwvML9iATlibgJS+A2o43eo4c6Z2ub+b86A3CcCoo2OsvuvyCuAhW3ZxociCtS0VTDfmcO3BaheTXsAaGgo+Hekf0Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f8tUA9PN3+q8T4MJJ0kraCUMeebvhUfsvzI0Hu1LZug=;
 b=HXkW1LxKaMOD4p6th/7mOxEPdgh4w8q1r8MFoy3g+moTXr7Wu7+LtPFUBFaiLNQuBJ3e+b4fIGMwwchTpGOem6rHsdHCtkIrtqzsX/2payzgc7zEONFgUHrM74lmybfXhVbI6rJTFVpu17/8ARnMDlISk1nOJQq0c/d6LobCQ4XTJ0j7toTt1BK1CCrt4mGaGIL9uDY5r31F9RGR1lCzlwo+SUMZ9ocKl5LwZD/eI5mIFdF8g6f3dUTUG7BAii37n0ZA1hpaA6Jfp7hjjC71WzQ10WCCiRR9Jri486gnLNfKZhalNb8hUrdXQLmaCQ6y8n9teN1jOgiLYlePTslcgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f8tUA9PN3+q8T4MJJ0kraCUMeebvhUfsvzI0Hu1LZug=;
 b=tDOPphOtJVU2vdhhADv+dGOVsg3MUG64lawGBbdBd+xBoUjhDmiSoE8hmvJv9vQhwemsKZZZeN4hlTaizjlZ/tO0HcPF3Je60jMO9LJg6GrOdPN/fB0UucwDvPD3PVoQg7PTwHamnboZ37TJICPT3Guv9Cx0cxBUDoVk4gsk7GU=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4189.namprd04.prod.outlook.com (52.135.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 09:27:07 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 09:27:07 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVfoO4ZRVMsEYORESrPx4IOG5NEQ==
Date: Wed, 9 Oct 2019 09:27:07 +0000
Message-ID: <82d9e3d505699da8f32069844b3cfe7c9fbfd0f1.1570588741.git.xji@analogixsemi.com>
References: <cover.1570588741.git.xji@analogixsemi.com>
In-Reply-To: <cover.1570588741.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0023.apcprd03.prod.outlook.com
 (2603:1096:203:2e::35) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1cd23233-6faf-4e39-95e2-08d74c9ada74
x-ms-traffictypediagnostic: SN6PR04MB4189:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4189D1C521073916C1542E27C7950@SN6PR04MB4189.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(39850400004)(346002)(396003)(136003)(199004)(189003)(478600001)(64756008)(66476007)(486006)(446003)(26005)(66946007)(66556008)(66446008)(2906002)(186003)(86362001)(11346002)(2616005)(476003)(52116002)(7736002)(66066001)(71200400001)(71190400001)(76176011)(99286004)(305945005)(54906003)(118296001)(6486002)(6436002)(6306002)(8676002)(25786009)(7416002)(81156014)(81166006)(8936002)(107886003)(6512007)(102836004)(14454004)(316002)(5660300002)(386003)(6506007)(110136005)(3846002)(4326008)(6116002)(36756003)(2501003)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4189;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6FI33n5Rwbg50xg9GcQDrYm/Su8yaMcXcI1fcwz0VvBleT+VeZuPn7JZu43knASjzi6DxWqYqvF4Vdc3HjH9aRyq2xQFfgb8vUZOULZXH8cDFV5iv2cSnOb4EL1aWZMyPQxRMdMk6557QxTIWi+6G3AHRcONBYKauIqYrl6X60NGZGFMM4Os5b2FmY0Ve9nW/FvuD2bb/Ba5OfqQR/oVwXzTfc3uRv8K47t6qll3f0h/kZbj5m/4X6gvAyn9nk++6VutnjQcV51sLWrLnfdQtawKbOdpJxOigGhAf/WEwMJyNiSOpko7MpEZ37VJhAp4s1SvnHcW0RMvX1BOnpwjUA1aiYBu+wSBtRpgGySx+cYq2iDRLyua2CimTkHSU/tSr6MWGiYcGoBiHD/SWKu4i+TICB530CEeIp8U8sZamELOL9tps9LxDMrZ9sCU28pueI0vu0O7MpyqSK714teaAQ==
Content-ID: <3F4D1B719F23EB478B5541F140A3EE1A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd23233-6faf-4e39-95e2-08d74c9ada74
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 09:27:07.2111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hhtWbDgRj80oXyPBGZTUkrn94rnQYlP/3CsisHSXuG0gHnTpCy9vTC7u2Fmdn+cuYdvGs0Nqwo+zGElfUzjWYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4189
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
	anx_bridge: anx7625@58 {
		compatible = "analogix,anx7625";
		reg = <0x58>;
		enable-gpios = <&gpio0 45 GPIO_ACTIVE_LOW>;
		reset-gpios = <&gpio0 73 GPIO_ACTIVE_LOW>;
		status = "okay";
		port@0 {
			reg = <0>;
			anx7625_1_in: endpoint {
				remote-endpoint = <&mipi_dsi_bridge_1>;
			};
		};
	};

Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 .../bindings/display/bridge/anx7625.yaml           | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
new file mode 100644
index 0000000..0ef6271
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
@@ -0,0 +1,79 @@
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
+  compatible:
+    items:
+      - const: analogix,anx7625
+
+  reg:
+    maxItems: 1
+
+  hpd-gpios:
+    description: used for HPD interrupt
+    maxItems: 1
+
+  enable-gpios:
+    description: used for power on chip control
+    maxItems: 1
+
+  reset-gpios:
+    description: used for reset chip control
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
+      A port node pointing to internal panel port node.
+
+  port@4:
+    type: object
+    description:
+      A port node pointing to normal eDP port node.
+
+required:
+  - compatible
+  - reg
+  - port@0 | port@1
+
+example:
+  - |
+    anx_bridge: anx7625@58 {
+        compatible = "analogix,anx7625";
+        reg = <0x58>;
+        status = "okay";
+        port@0 {
+          reg = <0>;
+          anx7625_1_in: endpoint {
+            remote-endpoint = <&mipi_dsi_bridge_1>;
+          };
+        };
+    };
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
