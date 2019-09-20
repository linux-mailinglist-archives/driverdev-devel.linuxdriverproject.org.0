Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F54BB8AB1
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Sep 2019 08:05:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D2D885DF6;
	Fri, 20 Sep 2019 06:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 97fpj54HtVry; Fri, 20 Sep 2019 06:05:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E34B885D8E;
	Fri, 20 Sep 2019 06:05:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E182E1BF2AA
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 06:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DD53085D8E
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 06:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F2sgljkwOM8R for <devel@linuxdriverproject.org>;
 Fri, 20 Sep 2019 06:05:04 +0000 (UTC)
X-Greylist: delayed 20:14:32 by SQLgrey-1.7.6
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr810107.outbound.protection.outlook.com [40.107.81.107])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9B8A585C86
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 06:05:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vt1p7Ld5J5t8cWG6basDZfCpljg67dF6zUg/PJ9qDLJ9LL7RHELEJoqNyIBGLacAoPQ1k689tfFlJ8n5A5zrCpDqP86wYclifAB04P8wlNZ8wb8gLbjgu3ADIry5+xSTe5zIjHgOqfluIpmwciF7X63lqFz3oHHGZfS2XbA6MHjadfz9PjrZqmiQladJjwMiNrfHCbxmIQ6ALxL64hhuvsZlbsMDpN4i+guhXgrHVNqQqNs9Ojvug3/T1cLBdf/PLlg9fZuwDfqDHTro3I/AyP14OjFY6buZWAvpMdhMsGEF5JcNqVkN9nZMiSj6Ppew9jg0Y0mUESgwf5sY+ygI0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZbyxqoDfsSEBJm/62GjTKW3U/CyBbHQyU77+ew/xPs=;
 b=VpFIeBKvIlNuo9cXUyXDzpqdJ78vnYdLpsTyfwapghhsbuoN3944lp3J7INbo+9GL1QkjLEgPF+Y7m/VX9rsG/7ZgSS9zu95yhOAMxYxOWwSdzpVCh6jSBYdTKsY8FyMXbhn3x7haFcCX2z6JyEu/Y54MlTP89y9qSoK1upV629pFl6FaAJ8gaJEpnMz3GkpE1SdG6PGJmagUJGG7pt/b7ykEas4KamULSzIzSXxkxQ42gMA9d6GqaRPkaSYq8YyzXFFVBFad4JXDdWm6hrg3jlD5NBsFs4JkDwkOoC8fF44VYGOtU6sh0lZ3PXdYbGgX/6duRnf8YXpBtButC30Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZbyxqoDfsSEBJm/62GjTKW3U/CyBbHQyU77+ew/xPs=;
 b=EtIJAv54pHfZ/B150xnB1xGho0a3i8tWSkv0y2vyKxO30toQWV717pZBJWxKkCizizBSDoT76MdRLrooemjxAIFq2WCmIyAgNrTfL3nB7SaLwjKdcjF15dVLe5J+7tomAuFxGG8spjmqAfJNFJR54xqaC0YxL/xC359lZZcUy2U=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB5855.namprd04.prod.outlook.com (20.179.23.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.22; Fri, 20 Sep 2019 06:05:03 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd%6]) with mapi id 15.20.2284.009; Fri, 20 Sep 2019
 06:05:03 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVb3lXQwBziOXQuEKo5Zf6i7JBmw==
Date: Fri, 20 Sep 2019 06:05:03 +0000
Message-ID: <606dba07640f0c9aba930e1dfb5d6a797f393ecc.1568957789.git.xji@analogixsemi.com>
References: <cover.1568957788.git.xji@analogixsemi.com>
In-Reply-To: <cover.1568957788.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2P15301CA0019.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::29) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b51af266-fc3d-4176-a053-08d73d907a05
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB5855; 
x-ms-traffictypediagnostic: MN2PR04MB5855:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5855731FEFE606F8AC828775C7880@MN2PR04MB5855.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(376002)(396003)(39850400004)(346002)(189003)(199004)(6306002)(7416002)(6512007)(14454004)(81156014)(81166006)(316002)(86362001)(6436002)(25786009)(4326008)(2906002)(8936002)(6116002)(6486002)(3846002)(478600001)(305945005)(7736002)(8676002)(52116002)(486006)(54906003)(66476007)(26005)(186003)(66066001)(66556008)(66446008)(107886003)(256004)(2501003)(5660300002)(66946007)(64756008)(71200400001)(36756003)(71190400001)(11346002)(446003)(102836004)(6506007)(386003)(2616005)(476003)(76176011)(118296001)(110136005)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5855;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +UYZd0uEkaKtb+Xws0YpNL608GazaWWAetAu5sKsNtnEbN79AQbkT6T16W6S5ALP/QAK9uUKsqmfmubWITcX5AqlndsGhQSCgFE85l5PbemQf2kvhm40MEFnA7qPo9UY+Fuamfe3IlhB1WRATfM0mvbDf2ZyFyGfJY3OolfnWRnyNK/ANWwVez+pHnpeh4pC34Mhcabxk+J6WshI8SRt4iIB075lY6DQ+D6B8CBu2u5v9TTxd3mohkeiiHJC+AGEhky2eggv3xZ9Ch/3wGoFAa/7JUyGjQunAhQDDcTd0r7X6S7McXVpruJD/LpVIvXr/umQ2OCvdxvrZiVovxWqgGupmvPTke7ubKrnvT9gyzoOjax0+G9VSkXaXTtvyMIcqnRRglWPS2MBeDuq0foWJrrLj94lGU7mYQtIkPdjvv8=
Content-ID: <FA40A5B2F8942640838DA5B7DDDD766E@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b51af266-fc3d-4176-a053-08d73d907a05
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 06:05:03.0107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f3jdEM7py+7IN3uuxbVqG9isuJyx1m3gUeA78xNYNQA6wfi8+a5bAAYxseWyuwnLYr9/VJIquk5R6uyzvSZlUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5855
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>
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
		low-power-mode = <1>;
		dsi-supported = <1>;
		dsi-channel-id = <1>;
		dsi-lanes-num = <4>;
		internal-pannel-supported = <1>;
		pon-gpios = <&gpio0 45 GPIO_ACTIVE_LOW>;
		reset-gpios = <&gpio0 73 GPIO_ACTIVE_LOW>;
		status = "okay";
		port {
			anx7625_1_in: endpoint {
				remote-endpoint = <&mipi_dsi_bridge_1>;
			};
		};
	};

Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 .../bindings/display/bridge/anx7625.yaml           | 84 ++++++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
new file mode 100644
index 0000000..95fe18b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
@@ -0,0 +1,84 @@
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
+  low-power-gpios:
+    description: Low power mode support feature
+    maxItems: 1
+
+  hpd-gpios:
+    description: used for HPD interrupt
+    maxItems: 1
+
+  pon-gpios:
+    description: used for power on chip control
+    maxItems: 1
+
+  reset-gpios:
+    description: used for reset chip control
+    maxItems: 1
+
+  extcon-supported:
+    description: external connector interface support flag
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  internal-pannel-supported:
+    description: indicate does internal pannel exist or not
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  dsi-supported:
+    description: support MIPI DSI or DPI
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  dsi-channel-id:
+    description: dsi channel index
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  dsi-lanes-num:
+    description: dsi lanes used num
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  port@0:
+    type: object
+    description:
+      A port node pointing to MIPI DSI host port node.
+
+required:
+  - compatible
+  - reg
+  - dsi-channel-id
+  - dsi-lanes-num
+  - port@0
+
+example:
+  - |
+    anx_bridge: anx7625@58 {
+        compatible = "analogix,anx7625";
+        reg = <0x58>;
+        low-power-gpios = <0>;
+        dsi-supported = <1>;
+        dsi-channel-id = <1>;
+        dsi-lanes-num = <4>;
+        hpd-gpios = <&gpio1 19 IRQ_TYPE_LEVEL_LOW>;
+        status = "okay";
+    };
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
