Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED18ABAD45
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 06:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65C46872E8;
	Mon, 23 Sep 2019 04:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ucASYlGOPGC0; Mon, 23 Sep 2019 04:27:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 246548700E;
	Mon, 23 Sep 2019 04:27:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81D841BF3FC
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 04:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 737E285010
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 04:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIlqAIYmEFIg for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 04:27:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770099.outbound.protection.outlook.com [40.107.77.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 940E284EE2
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 04:27:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KZc0OnYUh926rsyyWSGfWuYOTWCue1mbxjFowxY5jizHIG6A286k1v1chHgW8xoP1mFXURnYbjS16WBlH0wF9ihrQL/9EY+H+U83QcCfuTvmSD3moIVxbmtKDRWSOIwJL9tzZu+0TYK593U/gyBh1Qa6rzeAYGsi7ih05TD9I6ngJV/jbfiTkMVIY1z5mdARsOHeXExkI0qyI/2OryXNcGyCpTSe7WujSvIEHqCdhy6JZczhGZFcmm0JAX9vIpz2hUdB0AQ2tChkApzLUa+QZKyBAREw9e4Jotpreb92Fq2KLXLmU04AezmwTKT7zSrtt2N1J5+/9OqVotwQJ5IIAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rZCDla+ZOw8RIuckNTUIarFxnev7m17JqNc5imAC98=;
 b=NAyfipsjF2+42YUajnIschZ7rMj6ekNKiMNmahC40r1+bcFk49SgQ/lT9yPIOUhGWtXfuhRHDosYskSPe+2lquLzLunZyWRKuqDQKAWQb/aQNqsadzjpx7GHB5WZyHAC3iW4k3OPszVqBoBCsLvAvki7U0dKkbB93VgdDRlpN6XHU4B7S0N5HPL5L/9ivG4E4Px9OHVtqBJNqHgTTgm7x+9BWLQ4ShsYBPPGoEF4Ki6ZuzWCu1aSLkABNfeMi8wY8pnhZiHtCkCM2r5fa7cxYg+QXBSAQM+khO0S21tw1TpfRelgK3TNOPBzRnHSsKRBnhU44CsfuRN6vqWIXCNU9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rZCDla+ZOw8RIuckNTUIarFxnev7m17JqNc5imAC98=;
 b=kzQDPNpzWNUUTsxDhoq26HO78hkpuwVPv4BRy8Tz1s0bGokL8Nvm4+ewf2RyArrApiDE6DPNRiL+/XooslyxR1mu6rSg4tPFH50Xf7NwCCjAJYbRbEf1yCw4V7hVWaOCRaAjH0wNoNQmDPrQoiZ0YY5aoLnrgDA8DAfM7efFwfw=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6685.namprd04.prod.outlook.com (10.186.147.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Mon, 23 Sep 2019 03:55:49 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd%6]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 03:55:48 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVb3j75RwTQ/LQlEe1c7kQ788vf6c0UZKAgARVAoA=
Date: Mon, 23 Sep 2019 03:55:48 +0000
Message-ID: <20190923035539.GA5916@xin-VirtualBox>
References: <cover.1568957788.git.xji@analogixsemi.com>
 <606dba07640f0c9aba930e1dfb5d6a797f393ecc.1568957789.git.xji@analogixsemi.com>
 <20190920094621.GA12950@pendragon.ideasonboard.com>
In-Reply-To: <20190920094621.GA12950@pendragon.ideasonboard.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR04CA0017.apcprd04.prod.outlook.com
 (2603:1096:203:36::29) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [222.35.23.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31f2ea73-14f9-49ad-658b-08d73fd9eb1a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR04MB6685; 
x-ms-traffictypediagnostic: MN2PR04MB6685:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB668570FE1C86BDEF2A3C3320C7850@MN2PR04MB6685.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(346002)(366004)(136003)(396003)(376002)(39840400004)(189003)(199004)(2906002)(3846002)(6116002)(66066001)(33716001)(25786009)(54906003)(1076003)(316002)(33656002)(4326008)(6306002)(14444005)(256004)(6916009)(305945005)(6512007)(9686003)(86362001)(107886003)(6246003)(229853002)(6436002)(486006)(99286004)(6486002)(7736002)(7416002)(14454004)(476003)(966005)(386003)(6506007)(5660300002)(52116002)(76176011)(71190400001)(71200400001)(26005)(186003)(102836004)(446003)(64756008)(66446008)(66946007)(11346002)(478600001)(8936002)(81166006)(66476007)(66556008)(81156014)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6685;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 30JRXtlTVAQ1I9K8EwJpLQ+13TuR/YtQztmHxF41Zmf6E/sNZMmtnckyv6tfybeNw+zJAiSivHCL5gFwMxE7sMzwYLeWN2Khes3/yjWcbKnl+TIMBpqMrDNvUl4OjBFciwAVVDeD986GC1I+/0dzAlLsAB72PGIaTQGO01+FZ6eAobGTs6uwTFY5l43HDlDlusX7j0o50Erfr430diRYn5kc+CZjhyq9Ak87RNV1esVzy7j9gff95/uYe+2JPsvATD3pDciWE0/iIjfmbsO+Y3C5VKq9U5yPOKHi9LJJn1cXr5vB2ClZ+ZAVQ+KTSvH/oHAz8Z1BPNaWYTZkU96CLDJv1kIYjiBXpQoRYFNxZtC1/cZNdY44ifFGUt2thL8ZYr9P3hwv1n8kwpAqjDj7wiXYEcLJcsxP1D8M6BUSFwE=
Content-ID: <89EF8D1BB3962448B6334707B56223DD@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31f2ea73-14f9-49ad-658b-08d73fd9eb1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 03:55:48.7909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1rBaGtbvau8EEnF/+S7kZX3fbnrwSHD0BK+LPME0OSjpT7X1z9xJ5A+JK6gAF6iAyM2MKiHKzKJkt3FjY6XpCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6685
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Sheng Pan <span@analogixsemi.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Laurent Pinchart, thanks for your comment.

On Fri, Sep 20, 2019 at 12:46:21PM +0300, Laurent Pinchart wrote:
> Hello Xin Ji,
> 
> Thank you for the patch.
> 
> On Fri, Sep 20, 2019 at 06:05:03AM +0000, Xin Ji wrote:
> > The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > for portable device. It converts MIPI to DisplayPort 1.3 4K.
> 
> I assume you meant MIPI DSI ? MIPI has released more standards than DSI,
> so it doesn't hurt to specify this explicitly.
It support DSI and DPI, I will to point out.
> 
> According to
> https://www.analogix.com/en/system/files/AA-002291-PB-6-ANX7625_ProductBrief_0.pdf,
> the ANX7625 supports for MIPI DSI and DPI on the input side.
> Furthermore, it seems to output DisplayPort on USB Type-C. Should this
> be documented ?
It can support both eDP output or USB Type-C output.
> 
> > You can add support to your board with binding.
> > 
> > Example:
> > 	anx_bridge: anx7625@58 {
> > 		compatible = "analogix,anx7625";
> > 		reg = <0x58>;
> > 		low-power-mode = <1>;
> > 		dsi-supported = <1>;
> > 		dsi-channel-id = <1>;
> > 		dsi-lanes-num = <4>;
> > 		internal-pannel-supported = <1>;
> > 		pon-gpios = <&gpio0 45 GPIO_ACTIVE_LOW>;
> > 		reset-gpios = <&gpio0 73 GPIO_ACTIVE_LOW>;
> > 		status = "okay";
> > 		port {
> > 			anx7625_1_in: endpoint {
> > 				remote-endpoint = <&mipi_dsi_bridge_1>;
> > 			};
> > 		};
> > 	};
> > 
> > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > ---
> >  .../bindings/display/bridge/anx7625.yaml           | 84 ++++++++++++++++++++++
> >  1 file changed, 84 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > new file mode 100644
> > index 0000000..95fe18b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > @@ -0,0 +1,84 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright 2019 Analogix Semiconductor, Inc.
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/display/bridge/anx7625.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Analogix ANX7625 SlimPort (4K Mobile HD Transmitter)
> > +
> > +maintainers:
> > +  - Xin Ji <xji@analogixsemi.com>
> > +
> > +description: |
> > +  The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
> > +  designed for portable devices.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: analogix,anx7625
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  low-power-gpios:
> > +    description: Low power mode support feature
> > +    maxItems: 1
> > +
> > +  hpd-gpios:
> > +    description: used for HPD interrupt
> > +    maxItems: 1
> > +
> > +  pon-gpios:
> > +    description: used for power on chip control
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    description: used for reset chip control
> > +    maxItems: 1
> 
> How about mentioning which pin of the ANX7625 each GPIO refers to ? For
> the low-power, pon and reset GPIOs I assume they directly control the
> chip. We have standard names for some GPIOs, such as reset or enable. Is
> there one of the low-power and pon GPIOs that would qualify as an enable
> signal ?
OK, I think pon-gpios can qualify as an enable.
> 
> What is the HPD GPIO for ? Does the chip output and HPD signal ?
Once the anx7625 received eDP HPD signal, the firmware will report HPD
interrupt to AP through defined gpio interrupt pin "hpd-gpios". It used
for interrupt between anx7625 and AP, not used for output.
> 
> > +
> > +  extcon-supported:
> > +    description: external connector interface support flag
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +
> > +  internal-pannel-supported:
> > +    description: indicate does internal pannel exist or not
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> 
> s/pannel/panel/
OK, will fix it.
> 
> Are those two properties mutually exclusive ? If so you should combine
> them in a single required property with two values. My feeling is that
> they should be dropped though, please see below.
Yes, they are mutually exclusive.
There are 3 case, one is support google "external connector" framework,
one support internal panel, the other is support normal eDP output, so I
defined two flags to distinguish them here. Based on your comment below,
I'll define output port to distinguish them.
> 
> > +
> > +  dsi-supported:
> > +    description: support MIPI DSI or DPI
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +
> > +  dsi-channel-id:
> > +    description: dsi channel index
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> 
> This does not belong to DT, the virtual channel used by the DSI source
> should be queried at runtime by communicating between drivers.
I didn't know where can quiry this value. Can you give me more detail?
> 
> > +
> > +  dsi-lanes-num:
> > +    description: dsi lanes used num
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> 
> Please use the standard data-lanes property as defined in
> video-interface.txt. It should be specified in the DSI endpoints.
OK, I'll fetch the dsi lanes from DSI endpoints.
> 
> > +
> > +  port@0:
> > +    type: object
> > +    description:
> > +      A port node pointing to MIPI DSI host port node.
> 
> You need at least 3 ports:
> 
> - a DPI input port
I'll add DPI input port.
> - a DSI input port
> - an output port
> 
> The dsi-supported property should be dropped, detecting the type of
> input should be done based on which of the DPI or DSI input port is
> connected.
OK.
> 
> Assuming the ANX7625 can also output DisplayPort directly without going
> through USB Type-C (I can't verify that without the datasheet), I think
> you should use two output ports, one for USB Type-C and one for
> DisplayPort. The extcon-supported and internal-pannel-supported
> properties should be removed, and deduced from the connect output port.
I think there should exist 3 output port, one is for extern connector,
one is for normal eDP, other is for internal panel eDP.
> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - dsi-channel-id
> > +  - dsi-lanes-num
> > +  - port@0
> > +
> > +example:
> > +  - |
> > +    anx_bridge: anx7625@58 {
> > +        compatible = "analogix,anx7625";
> > +        reg = <0x58>;
> > +        low-power-gpios = <0>;
> > +        dsi-supported = <1>;
> > +        dsi-channel-id = <1>;
> > +        dsi-lanes-num = <4>;
> > +        hpd-gpios = <&gpio1 19 IRQ_TYPE_LEVEL_LOW>;
> > +        status = "okay";
> > +    };
> 
> You mention the port@0 node as being required, but it's missing from the
> example.
OK, I'll change it in the next series.
> 
> -- 
> Regards,
> 
> Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
