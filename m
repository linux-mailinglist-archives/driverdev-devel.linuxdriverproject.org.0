Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69032F889A
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 07:33:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AEFD8695B;
	Tue, 12 Nov 2019 06:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id svt7WojNuZH2; Tue, 12 Nov 2019 06:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10FD3860D5;
	Tue, 12 Nov 2019 06:33:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B698A1BF308
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A8EF0860D5
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:33:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MHd7tFxU6jxX for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 06:33:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820130.outbound.protection.outlook.com [40.107.82.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E05182BCE
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 06:33:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZeRc4z88YWQcJ5/vwHWtpGYie0x/c3wQsvBn1INMtHrqmBlCE3ueRBvIa0uUYhY1peyhSlWCl0T2OAnapDBIDLAiM1CnOmL3DEyvpBeUEEwutO1gW/TaMRAU7IleFGi8W1Bo3wB5Fu1kDFCnOb+ZN7yq9d4TH7Om7BcWuSlfzAKEH2yzah/BYtvdsWUk+1Y+7trjIRmjmjdMeQqCw+LJasEtt+wOHSen3eYrt6l7ku8M8AqBPAwrTSyu9M5I1kqOf4ntp/2qZKNJHIPe8Pm/xsJofCcHAbZEsQXk6qJOjDILO/cso+uN7LVu0g28poAsIZCaZ9R+ivR8fzjp/V7gvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5+GYu9VYFD1uOnMGbRWIfFjJqLaFA4oX3QHgEOliP0=;
 b=K0SNY3/rQ/4XDNXbgzAnZh0iDqkfHTg+SroVl7c4vh8uTL5uWz4vLzPQjLfnGah0zDjSxiBqBONSkYtWMs7FYMrMBv3qX/iydVJU2mhPvUxDt1zTdOBPg9/bhA5ckQNCf9ZEXWRw+nRXIhgPsRC16E6yNn5c3tV3t34Xq8saEwYqP+Wzm6Kl2xcPugA0ndLYMA1Rx/QUVRmaosBdkDX4NeR7R5ogknJJCiZ8W6muyhohYxYy6FZI/zCRcgPTVmqaynqXYB4xfDX8gGc9rpFCXBAUHxvzjjmLr0O4hsjhNQbnBEaKMXOndnVFyX1tGVpBQH9n17kC26i+YywPa2N75Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5+GYu9VYFD1uOnMGbRWIfFjJqLaFA4oX3QHgEOliP0=;
 b=iFA9I8sD2x4S8UyIgxkDRii9yvI6UbUYf94XetR3l6qpFvTcpHCoNv77mXvmuHQ1YWIRys0AZD7CY6EN/h60cVkH1SOBf8vhoLKw6YcVMQiqbW8edbuqzPqarGBDEddgqEvGIUyAOWVLSK8XpJ4oO2EOdksYE7Ebn5xNZuxBtvA=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4288.namprd04.prod.outlook.com (52.135.72.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Tue, 12 Nov 2019 06:33:30 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16%5]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 06:33:30 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v5 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v5 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVmSMZqzZdIpzJL0O/xSQqLi248A==
Date: Tue, 12 Nov 2019 06:33:30 +0000
Message-ID: <67ccead807b7d0a50df479cab2c9d325041224bc.1573540100.git.xji@analogixsemi.com>
References: <cover.1573540100.git.xji@analogixsemi.com>
In-Reply-To: <cover.1573540100.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR01CA0023.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::35) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f50372c7-da1f-4419-e399-08d7673a3b82
x-ms-traffictypediagnostic: SN6PR04MB4288:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4288C532E2D47AA8C67593C3C7770@SN6PR04MB4288.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39840400004)(346002)(376002)(396003)(136003)(189003)(199004)(66066001)(26005)(4326008)(6506007)(6306002)(6512007)(102836004)(6436002)(386003)(2906002)(6486002)(486006)(476003)(446003)(11346002)(2616005)(52116002)(76176011)(186003)(107886003)(118296001)(66446008)(64756008)(66556008)(66476007)(66946007)(86362001)(256004)(8936002)(99286004)(71200400001)(3846002)(71190400001)(25786009)(110136005)(7416002)(54906003)(5660300002)(2501003)(36756003)(81156014)(81166006)(478600001)(8676002)(305945005)(316002)(7736002)(6116002)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4288;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KRomdSYjK6S5i+DRIIlqrc60/L86WbzUpHhy/N5Bfgzp7cLWBXOU8XZwnCiPDTuMKdvQZDla+UX8AEVVIOH7I5O465PRD7fUQF7Gp4wLQ5RylvbvLjK7S976G9tGB6S5RJVxz/8zK5IE11Yatx/e4j9FyVVHR2eKbwUA8ndguL5H30VxNzUP5F9NZlAV/nAv7gvqFAmAcMDLOQ2FJmHiqeuwDWZ73qLqRXYkvu0Mdhruvxxitert4Dh9EtuKMknCTi5ccCw1AQ/G2Sxtc3cRMjUNfQcFfyo3HVs4KQX2QxZ4Iek8lPZ14atPQ6CHwtmwdl02Pm/SdcazmKQzJZu/BjAKg2BjY2ZBaqliKlHAHeFH8GxKZ9KJfqTtvS6oqeq3UrkInQfCCVrYeX2/Jt+t36A05JJhYUsrM+H0ErfbOH5SJJoN3Pm0N9ACQzjNwgrO/3AcWTwnjAXLS4G0pN9yIAUiNcoeXHjm6VWTgsS38l0=
Content-ID: <62656DF881A3F7439A9F7675021F5EAB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f50372c7-da1f-4419-e399-08d7673a3b82
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 06:33:30.3080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Qv0O74+xhZPs6Ly6DHkdNUh0kUm0QQsYAMSLizWJEpPmiBxKyMSpINmBHlbrK/hUpgHIkz46wAzGrgE5uGKSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4288
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
