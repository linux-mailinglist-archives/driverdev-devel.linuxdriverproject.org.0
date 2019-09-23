Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B325EBB0E9
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 11:07:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B500685876;
	Mon, 23 Sep 2019 09:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Yqn3lFLoaEp; Mon, 23 Sep 2019 09:07:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30D0A84EE2;
	Mon, 23 Sep 2019 09:07:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBDC51BF3DD
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 09:07:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E75FE85F53
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 09:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQJTxBpvzKd2 for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 09:07:12 +0000 (UTC)
X-Greylist: delayed 05:11:20 by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780114.outbound.protection.outlook.com [40.107.78.114])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A37A985EA8
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 09:07:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPH/5d0BwrGY9VQyvv4PDljNgl3feAPF3YCjPLarTYtgeKmYDMUus1sJHmzf6lj/M/90KU/BpPRTkOO8JMOZaWf6VGK60Osru3a146YjC7CGxQZV6g0gHPnlWhmnDSe7mKGEuaN8m+qdi13WUlt8YKUNYYT7Au/2Fa8gR0cnSLZ5fik648VJzIM99HjBz9HQPthAoE+26DNS2WuoGHe6mB1qedc7hHEwdr6yhgX966Jsz85zKHlWW3sB8fCMtATzSXAOcHSHptzic+a0MLnn76eu7oMcPANpP6SrqAMEeI9MS1YUrt+WMeis3QIp69LwtmWMMqEyzqdUBRcKyWZ+Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N+S2CWm5kGm/Uu+OLCLguSa5qkZptRgxpnU3HJ34PMk=;
 b=UNvpcWctecbOUexNSdH76IZ/gdLWxAI5V+NmdFqO/NFjH5WvUKQVjWR+oIc03/EOeT+RDF2HdzoPV3WdjGqQNPEEKkEQlua+Fklam22aVrOAd70FZahA9uv7NhPJain81iewgqteJ067MSA5sjHqQeD9OA9g5rVCWzHrJTC7CNoo6bGvf6ogYnx6LC14B0AJhbl+WwSm5Pn37Gn6wouQjHYm+eYDNppP99mZJy62pXLbUQZe0AJMlyWJn5tkJoP5Mmg5ZPiPJlgoHVnQV9E1RBvo2kazjA574R8halOSPaQkPO+TnsIMbxgjKSFLLfzIUecq08DlfgfIhwOKPdqIFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N+S2CWm5kGm/Uu+OLCLguSa5qkZptRgxpnU3HJ34PMk=;
 b=zai3pCSTIbntRMVTDGPR9UvUfEup9pcxa8GOQcX5bYjMqfTGJ2lGzWgeJtvFXUL+KOUMQhMnrdsVfe0DgUK+xEUZq2n/jfd5ktmKvH+1C1UYp6DBW21r4sNtxSRHsrFOMtNh4fiuRVrZGFm2qaPyOQoqjdjP+Q7q/r1IaKXhQZg=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6079.namprd04.prod.outlook.com (20.178.247.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Mon, 23 Sep 2019 09:07:11 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd%6]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 09:07:11 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVce5I8PjxKPS5PEGdfXNMa0Wt9w==
Date: Mon, 23 Sep 2019 09:07:10 +0000
Message-ID: <8415b5229354359732052f6ba7ae9ce063c34983.1569229197.git.xji@analogixsemi.com>
References: <cover.1569229197.git.xji@analogixsemi.com>
In-Reply-To: <cover.1569229197.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR01CA0049.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::13) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a465587d-34dc-47c0-4cb7-08d740056ad9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR04MB6079; 
x-ms-traffictypediagnostic: MN2PR04MB6079:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6079553C6E9193CAE0C0E149C7850@MN2PR04MB6079.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(136003)(39840400004)(366004)(346002)(199004)(189003)(66556008)(64756008)(66446008)(11346002)(3846002)(446003)(76176011)(8676002)(6306002)(54906003)(305945005)(7736002)(66476007)(6486002)(4326008)(81156014)(110136005)(25786009)(81166006)(66946007)(6512007)(8936002)(36756003)(6506007)(476003)(386003)(486006)(26005)(102836004)(2906002)(2616005)(71200400001)(186003)(71190400001)(478600001)(118296001)(52116002)(66066001)(14454004)(99286004)(5660300002)(107886003)(6436002)(7416002)(6116002)(86362001)(256004)(2501003)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6079;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0p9H7mHaP+DkBch2NxtKl+O5RgcBOqKKTtirCFI6/Caae1yKOqbotgSwYiGUhHCuHh0sm0/iQHrWXaIvzYDmB0alkXeMlBHgdgtSqGrpTNunpLFMunu4mkDO3g9pX1kVFUIp3K7Fb0FSoCUBatMWhEACeUeXmac/6e2UZf2OvqYf9gxFN3KplNfla/aO6zV9IrKAD19GtSMAkNpEkxfSxG68ScBqaYvM8CivLvlyyjGDAI1Q2A7u9b9SjHIdzx/AQfVdy0CN82lvFf+b3/0rUw0n/ppMNhJFsZrUp3XUAYycLrZa8wt9a6tdqecnhzCmC6HF4e62d4vhJCjfMzHDQKE/KwfyOzkUWOLOOmLq6leEdo8GhtN6azXD2vuYrf4uVjWyWfp+Fl+Axk7icGxga9ihqFb2L7gmhaT1VGcCWkw=
Content-ID: <B393E0F35731364991EA500670F9D114@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a465587d-34dc-47c0-4cb7-08d740056ad9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 09:07:11.0083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kz/qouMh6YZnV8K9ufadFstqrRfkc1hvx0ciwAPDTIvvoEaYxlA00gev5myM/eYDXAaYjY3krjqYUwQU7Jg3hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6079
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
 .../bindings/display/bridge/anx7625.yaml           | 84 ++++++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
new file mode 100644
index 0000000..2991039
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
+  low-power-mode:
+    description: Low power mode support feature
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
+        low-power-mode = <0>;
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
