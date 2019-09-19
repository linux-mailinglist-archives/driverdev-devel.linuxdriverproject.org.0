Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4B0B7636
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 11:26:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A339D86959;
	Thu, 19 Sep 2019 09:26:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NSEEiNlGHlls; Thu, 19 Sep 2019 09:26:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE8AD868A8;
	Thu, 19 Sep 2019 09:26:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CE091BF27E
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:26:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EF4586866
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:26:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IeH2msxg3AV4 for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 09:26:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710133.outbound.protection.outlook.com [40.107.71.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C66D0818B2
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 09:26:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJAMUz0D/jZO4gtiwsZtTQUGm2yXmx2aB0myGDsmKyJDwqR80mnuEi+OIs3MztlivQDqmyJ3FX5bbctJrcKYkx+OSSRFAx1IS0yo1miPQm9lz+SoXGTgA0eRKC5aaj7qLQpkAcK5qCFfo6pfC8YYpP055vo4rzGATqJy2Emjh1o8Te83zGIi3VCYQb2/gEvdiOMxwPxNK+Z3lvRh0M8NbcgVHIP6T+M3NuMk9r1Cukh1aDnpIAHayfZNrPCSGIoqN7/lANZScAKz5PcUWDA88A/1XA186OYkWoKrL6NhAFr4SE8YAAop6huZTsmFksSSbWnoMbXb0eYFYj05NDvR0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XG4RKisKZlFbQHhiEHyq7gc/XHkBGX+BFeFpX4TQup4=;
 b=Vb9MX7jfYOFvgO0NZL6/QzkpcDGBXVetCKbAXLhTvKpvkER+rpo7ck4j8nxEdeln/pTQW5k8S4YLYLGqmocClpvumy8KjFO580eFOlwCIDEH1mPMLrI0g6aJZ3gJS6Re8isikGg6Vf/A0fKF6s/GCT6MbcQ2Bv7OiBe6W1WkX6ocUh3N4eutpX9W+ryT8RQ3GQNYiNflJ60rIU3iW72h8VUFZJ01xf1XIWSARqfqTMiJi2I8/uLfGt2CVkcUIlzEIHy8KcNPIIh1fD1ZGqP/i7TV2tXUtxUnsuP4gcxtQBDDgaEJnaHQO9SkLWw5H94/TX5qHFD3uAUB1mQSFx7SYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XG4RKisKZlFbQHhiEHyq7gc/XHkBGX+BFeFpX4TQup4=;
 b=ldGhZ5dAcT7PxTebdyu0t3L4W76IFz+U/p6kczYjuDR7aWbt1Dy/L1WZwppEfgh8khgCN7Y0MelaBqugeCasa/307FqBgAjxGM7YTE8uKraOFNLfXKq0zyjGp6SKTVVzeXVNQK4DS8TnUbLZjXA98I5IKiykP3UyDpsPYbMcMDc=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6207.namprd04.prod.outlook.com (20.178.247.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Thu, 19 Sep 2019 06:55:01 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd%6]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 06:55:01 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVbrcoV2OyOAmcWUS3ygObr3iBRA==
Date: Thu, 19 Sep 2019 06:55:01 +0000
Message-ID: <e41d10504b7d1e977a1f53663c287e4e7d53011a.1568858880.git.xji@analogixsemi.com>
References: <cover.1568858880.git.xji@analogixsemi.com>
In-Reply-To: <cover.1568858880.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0101.apcprd03.prod.outlook.com
 (2603:1096:203:b0::17) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca9fe5b7-6009-4a57-3364-08d73cce4aae
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB6207; 
x-ms-traffictypediagnostic: MN2PR04MB6207:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB62073F814121BFC711FE12EBC7890@MN2PR04MB6207.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(366004)(376002)(346002)(396003)(39850400004)(136003)(199004)(189003)(8936002)(6436002)(71200400001)(3846002)(54906003)(107886003)(26005)(81156014)(102836004)(6506007)(8676002)(6512007)(7736002)(386003)(81166006)(2501003)(52116002)(99286004)(118296001)(71190400001)(6116002)(76176011)(186003)(486006)(11346002)(66446008)(6486002)(36756003)(4326008)(2616005)(316002)(64756008)(66476007)(305945005)(2906002)(476003)(86362001)(66946007)(478600001)(66556008)(256004)(25786009)(446003)(66066001)(14454004)(5660300002)(110136005)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6207;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: t8Wjqweobap34pCEn+ULIeDPvAZwu03O2cqOtctMcPkGO9f0uCDGqYCWP2lrv6yutzB9t8TWE6O+Zdg0aoFs4LKt1k7IwsIMdogS8nDMb3R+oXNrb0i74Gs7NurG6E3TPjt/WAqYbCt+hcp7JM4xB5KoRNO2lAH8R1aIZvFlsXxQ4SxoR5dkjcWdUJY2dwny23IhDueyR3ns9rgs+0ecObLvBqSSMFQ6VzAfXCD3dfhTpTQWUtCakH3DnRZqGmbmKccFjufnyXJhEes3iaOapkH/qGjKXfbYk6w2hFfJ+WyDKgsL3+MdtBb/WNTwX9gufz4raKAo489/UN/pPsRz38sAekYt7EYaCmk74xkKAVYhumnXZtkb5CIlzjn+LS42FeNKe57Hp4BffDmuLdn6oLGU/H09Vfi3IyKYr9UWIuc=
Content-ID: <4BBE5A8C1A59B143BA5A871048E9E0E1@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca9fe5b7-6009-4a57-3364-08d73cce4aae
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 06:55:01.5311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e2MmK9wcJeNOVNjPyTdy2msJo2OUvtWPRlObkpI9BhU2mvD1GmbQPlTqCpegvj3lDCub+eR5tQrZ/zJBV2Dh4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6207
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
		anx,low_power_mode = <1>;
		anx,dsi_supported = <1>;
		anx,dsi_channel = <1>;
		anx,dsi_lanes = <4>;
		anx,internal_pannel = <1>;
		anx,p-on-gpio = <&gpio0 45 GPIO_ACTIVE_LOW>;
		anx,reset-gpio = <&gpio0 73 GPIO_ACTIVE_LOW>;
		status = "okay";
		port {
			anx7625_1_in: endpoint {
				remote-endpoint = <&mipi_dsi_bridge_1>;
			};
		};
	};

Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 .../devicetree/bindings/display/bridge/anx7625.txt | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.txt b/Documentation/devicetree/bindings/display/bridge/anx7625.txt
new file mode 100644
index 0000000..f2a1c2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx7625.txt
@@ -0,0 +1,42 @@
+Analogix ANX7625 SlimPort (4K Mobile HD Transmitter)
+-----------------------------------------------
+
+The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
+designed for portable devices.
+
+Required properties:
+
+ - compatible		: "analogix,anx7625"
+ - reg			: I2C address of the device
+ - anx,low_power_mode	: Low power mode support feature
+ - anx,dsi_supported	: DSI or DPI
+ - anx,dsi_channel	: DSI channel index
+ - anx,dsi_lanes	: DSI lane count
+ - anx,intr-hpd-gpio	: Which GPIO to use for interrupt
+
+Optional properties:
+
+ - anx,extcon_supported
+	external connector interface support flag
+ - anx,internal_pannel
+	Which indicate internal pannel
+ - anx,p-on-gpio
+	Which GPIO to use for Power On chip
+ - anx,reset-gpio
+	Which GPIO to use for RESET
+ - port
+	SoC specific port nodes with endpoint definitions as defined in
+	Documentation/devicetree/bindings/media/video-interfaces.txt,
+
+Example:
+
+	anx_bridge: anx7625@58 {
+		compatible = "analogix,anx7625";
+		reg = <0x58>;
+		anx,low_power_mode = <0>;
+		anx,dsi_supported = <1>;
+		anx,dsi_channel = <1>;
+		anx,dsi_lanes = <4>;
+		anx,intr-hpd-gpio = <&gpio1 19 IRQ_TYPE_LEVEL_LOW>;
+		status = "okay";
+	};
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
