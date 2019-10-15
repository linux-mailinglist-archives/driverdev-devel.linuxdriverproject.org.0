Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5058CD6F2A
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 07:36:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A54A587591;
	Tue, 15 Oct 2019 05:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sHDSH0CHsO+g; Tue, 15 Oct 2019 05:36:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0736087482;
	Tue, 15 Oct 2019 05:36:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A5E71BF372
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 05:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9641086149
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 05:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VA1znSW9PqeS for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 05:36:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710133.outbound.protection.outlook.com [40.107.71.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3761854DF
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 05:36:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R+J2h+VZ2WnvSn8b73n4oMQmxkkzngUD0j1DVkXRMcSQWNNZ5ET0KsKZ+0VJEimfT1dRjFZpYNVTt0ILtfUy9LkeqkdtRoF7wwhBzOvMrKBrvytMcUP7wEU5akqS2MGGrAoSPudb+DPwz4tFW5a8wn69em3MxG8lcFuPhPUv19ZRyCHTmaHx0NgUE5ar1rQn7dLUe93HdmoK/bZ6I54wfeRQRJBKh4fPC8XY0se+1l5gQ4CvpSOUn2PJ4fembUrFI2chklV/W1qlja7klVpXCpJ7YC3Yw+vo4Z+IDVi9WSkHNPHXb+9pwFifbOwMThmL3bUv6LvwZ3fArpQS5sMrQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d80GwwOIkGn7PAa7+DdYtObkJHfV4UlhDCj04ShgP1s=;
 b=QYrDPsPZLAbg0Yq433VKnaAwp5xM1KRpWudCy6QnIXNZ6vojANGVDTUc+JlOO828T02oeZb/BEGbIDVtvEOq5GBTazu6I4PywITHIe3XcXE/Ctn/NYCOD5NWJIP9OZllAFmRXMUFaizmjCffXpAbSIejJQguC5Xao+4cE44CiHTVfgcmZmI4lb/swxZTOhqd0zxIyKkvHxDgNP3mAnzagpvTyA3/aWDkOacdd7vYdW8wmJK61dlqunBgQT2ePhSOqBHgg9iD1Q1qq1XhlOHuMd0XSdZ0ae0sRWrlHfHZoYfqgka70J8lupliQTKJIIv1b7EILNz/atgQdTBjfQPbmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d80GwwOIkGn7PAa7+DdYtObkJHfV4UlhDCj04ShgP1s=;
 b=TLkvG/LSzYXBIYOD+VL9UGyVESpZ6n5Cm/xOyGTvfGlk6wMw0OPH3deO02kILAg+XgE8uQzcbJvf7aVwa56vWw66MmgsQEWqjs/WCF5rF02vcZdp+wrRMVm0H791DiC+liShqRMT4s44PFojlqX9bpKEqqsoBVjThlwccAdUYXY=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB5197.namprd04.prod.outlook.com (20.178.6.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Tue, 15 Oct 2019 03:03:00 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 03:03:00 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVf9qi2ZQPn8IAhkqsNtop++SEM6dVTGmAgAAZ3gCABBGvAIABQksAgABQGAA=
Date: Tue, 15 Oct 2019 03:02:59 +0000
Message-ID: <20191015030250.GA11971@xin-VirtualBox>
References: <cover.1570760115.git.xji@analogixsemi.com>
 <CGME20191011022154epcas3p1a719423a23f8bf193b6136e853e66b04@epcas3p1.samsung.com>
 <75bb8a47d2c3c1f979c6d62158c21988b846e79b.1570760115.git.xji@analogixsemi.com>
 <3c6067de-9f3c-b93c-f263-fa5dd09c3270@samsung.com>
 <20191011125418.GE4882@pendragon.ideasonboard.com>
 <20191014030238.GB2390@xin-VirtualBox>
 <20191014221610.GK23442@pendragon.ideasonboard.com>
In-Reply-To: <20191014221610.GK23442@pendragon.ideasonboard.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0089.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::30) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0eb85643-6c7f-4788-e88f-08d7511c2f7c
x-ms-traffictypediagnostic: SN6PR04MB5197:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB5197CB6E1EA5934DCE1915F7C7930@SN6PR04MB5197.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(136003)(396003)(376002)(39850400004)(366004)(346002)(189003)(199004)(71190400001)(54906003)(33716001)(66946007)(99286004)(305945005)(26005)(7736002)(86362001)(186003)(7416002)(71200400001)(5660300002)(66556008)(66476007)(14454004)(64756008)(66446008)(1076003)(66066001)(478600001)(966005)(6512007)(6916009)(256004)(6306002)(53546011)(3846002)(6116002)(386003)(6506007)(8936002)(9686003)(14444005)(33656002)(316002)(2906002)(25786009)(446003)(6486002)(11346002)(476003)(486006)(6246003)(52116002)(4326008)(102836004)(81156014)(81166006)(107886003)(8676002)(6436002)(229853002)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5197;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nCY8e8wWzzWu1ZiRHVfc/BmypzO4fYMXPlQUQKg5b3yUXCVYIV25PUfVTcFTj6QaWe3mrcd5+1zzi4fdUwXi4NT3p8SQe2T38Q1VcW/KiT+kc49XbxJz7tCMRtbpjVXvJgddR1+5IdeGKcWD0uY56wdH8LpsBtACJwuQwalAC9TwJsZ7eO7FfxXabHbEEqK1dOTzfMnFdZAD3wu9UnEUYoMCbr/eLtJWtjdJ5ILG2wzKwmAIGwDTw0LaRxBUqHEGWQpzL9MWQTRhU482/z3SWS6ktwm1M/j8GQuFUVr2808o5UHZdSgYX1vcDnL1e6trLnWIAMp+QcZbtSHMwarkQK2e0WHIlW6DecFrds+paSKqaFsyAvNU8IVN71zCe6uDC5RkgR/zwfABBHk87C9qk/uRZIyYUhKvyfgk3WBVCxOPwCMiO0sEWOeahByiHVNKuFEtpF/aRUKcNliLTd36yQ==
Content-ID: <AD3DBB8972A3BB47ADF3029370BB7AEF@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eb85643-6c7f-4788-e88f-08d7511c2f7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 03:03:00.0559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x7dUDx6AqxbNoKIN4DlEgHoCMefIldj7bkqUxGVou5NqpSl0MKzEqnB/opZsdVvbdoAih30b8Bh7tahs9hVK8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5197
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
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Laurent Pinchart,

On Tue, Oct 15, 2019 at 01:16:10AM +0300, Laurent Pinchart wrote:
> Hi Xin Ji,
> 
> On Mon, Oct 14, 2019 at 03:02:48AM +0000, Xin Ji wrote:
> > On Fri, Oct 11, 2019 at 03:54:18PM +0300, Laurent Pinchart wrote:
> > > On Fri, Oct 11, 2019 at 01:21:43PM +0200, Andrzej Hajda wrote:
> > >> On 11.10.2019 04:21, Xin Ji wrote:
> > >>> The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > >>> for portable device. It converts MIPI to DisplayPort 1.3 4K.
> > >>>
> > >>> You can add support to your board with binding.
> > >>>
> > >>> Example:
> > >>> 	anx7625_bridge: encoder@58 {
> > >>> 		compatible = "analogix,anx7625";
> > >>> 		reg = <0x58>;
> > >>> 		status = "okay";
> > >>> 		panel-flags = <1>;
> > >>> 		enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > >>> 		reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > >>> 		#address-cells = <1>;
> > >>> 		#size-cells = <0>;
> > >>>
> > >>> 		port@0 {
> > >>> 		  reg = <0>;
> > >>> 		  anx_1_in: endpoint {
> > >>> 		    remote-endpoint = <&mipi_dsi>;
> > >>> 		  };
> > >>> 		};
> > >>>
> > >>> 		port@3 {
> > >>> 		  reg = <3>;
> > >>> 		  anx_1_out: endpoint {
> > >>> 		    remote-endpoint = <&panel_in>;
> > >>> 		  };
> > >>> 		};
> > >>> 	};
> > >>>
> > >>> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > >>> ---
> > >>>  .../bindings/display/bridge/anx7625.yaml           | 96 ++++++++++++++++++++++
> > >>>  1 file changed, 96 insertions(+)
> > >>>  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > >>>
> > >>> diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > >>> new file mode 100644
> > >>> index 0000000..fc84683
> > >>> --- /dev/null
> > >>> +++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > >>> @@ -0,0 +1,96 @@
> > >>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > >>> +# Copyright 2019 Analogix Semiconductor, Inc.
> > >>> +%YAML 1.2
> > >>> +---
> > >>> +$id: "http://devicetree.org/schemas/display/bridge/anx7625.yaml#"
> > >>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > >>> +
> > >>> +title: Analogix ANX7625 SlimPort (4K Mobile HD Transmitter)
> > >>> +
> > >>> +maintainers:
> > >>> +  - Xin Ji <xji@analogixsemi.com>
> > >>> +
> > >>> +description: |
> > >>> +  The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
> > >>> +  designed for portable devices.
> > >>> +
> > >>> +properties:
> > >>> +  "#address-cells": true
> > >>> +  "#size-cells": true
> > >>> +
> > >>> +  compatible:
> > >>> +    items:
> > >>> +      - const: analogix,anx7625
> > >>> +
> > >>> +  reg:
> > >>> +    maxItems: 1
> > >>> +
> > >>> +  panel-flags:
> > >>> +    description: indicate the panel is internal or external
> > >>> +    maxItems: 1
> > >>> +
> > >>> +  interrupts:
> > >>> +    maxItems: 1
> > >>> +
> > >>> +  enable-gpios:
> > >>> +    description: used for power on chip control, POWER_EN pin D2.
> > >>> +    maxItems: 1
> > >>> +
> > >>> +  reset-gpios:
> > >>> +    description: used for reset chip control, RESET_N pin B7.
> > >>> +    maxItems: 1
> > >>> +
> > >>> +  port@0:
> > >>> +    type: object
> > >>> +    description:
> > >>> +      A port node pointing to MIPI DSI host port node.
> > >>> +
> > >>> +  port@1:
> > >>> +    type: object
> > >>> +    description:
> > >>> +      A port node pointing to MIPI DPI host port node.
> > >>> +
> > >>> +  port@2:
> > >>> +    type: object
> > >>> +    description:
> > >>> +      A port node pointing to external connector port node.
> > >>> +
> > >>> +  port@3:
> > >>> +    type: object
> > >>> +    description:
> > >>> +      A port node pointing to eDP port node.
> > >> 
> > >> 
> > >> Decrypting available product brief[1], there are following physical lines:
> > >> 
> > >> Input:
> > >> 
> > >> - MIPI DSI/DPI - video data, are DSI and DPI lines shared?
> > > 
> > > It would be much easier if we could have access to more complete
> > > information. I believe the DSI and DPI pins could be muxed, but there
> > > should be more DPI pins than DSI pins.
> >
> > Yes DPI pins more than DSI pins.
> > 
> > >> 
> > >> - I2S - audio data,
> > >> 
> > >> - I2C - control line,
> > >> 
> > >> - ALERT/INTP - interrupt,
> > >> 
> > >> - USB 3.1 SSRc/Tx - for USB forwarding,
> > >> 
> > >> Output:
> > >> 
> > >> - SS1, SS2,
> > >> 
> > >> - SBU/AUX,
> > >> 
> > >> - CC1/2.
> > >> 
> > >> 
> > >> Having this information I try to understand ports defined by you:
> > >> 
> > >> - port@2 you have defined as pointing to external port, but here the
> > >> port should be rather subnode of ANX7625 - the chip has CC lines, see
> > >> beginning of [2].
> > >> 
> > >> - port@3 describes SS1, SS2 and SBU/AUX lines together, am I right? In
> > >> USB-C binding SBU and SS lines are represented by different ports,
> > >> different approach, but maybe better in this case.
> > > 
> > > I believe that, when connected to a DP display (either DP or eDP), the
> > > DisplayPort signals are output on SS1 and/or SS2. I this really wonder
> > > if we need two separate ports for this, it seems that port@2 and port@3
> > > should be merged.
> >
> > OK, I will merge the port@2 and port@3, and use a flag to indicate
> > whether the control is external connector control or not.
> 
> Could this be inferred from the connected DT node ? If the node
> connected to the endpoint is a display connector node, then we have an
> external connector. Otherwise we have an eDP panel. Ideally this should
> even be done at runtime, by communicating with the drm_bridge or
> drm_panel corresponding to the connected node.

I think the port@2 should be removed, it could not be inferred from the
connected DT node.

> 
> > >> Maybe it would be good to add 2nd example with USB-C port.
> > > 
> > > That would help with the discussion, yes.
> >
> > As we disabled USB-C feature in anx7625, we cannot define a USB-C port.
> 
> It's fine if the feature isn't implemented in the driver, but we should
> still take it into account to design the DT bindings. Otherwise, when
> someone will want to add support for USB-C to the ANX7625 bindings, they
> may find it impossible to do so in a nice backward-compatible way.
> That's why an example would already be useful.
OK.
> 
> > >> [1]:
> > >> https://www.analogix.com/system/files/AA-002291-PB-6-ANX7625_ProductBrief.pdf
> > >> 
> > >> [2]: Documentation/devicetree/bindings/connector/usb-connector.txt
> > >> 
> > >>> +
> > >>> +required:
> > >>> +  - "#address-cells"
> > >>> +  - "#size-cells"
> > >>> +  - compatible
> > >>> +  - reg
> > >>> +  - port@0
> > >>> +  - port@3
> > >>> +
> > >>> +example:
> > >>> +  - |
> > >>> +    anx7625_bridge: encoder@58 {
> > >>> +        compatible = "analogix,anx7625";
> > >>> +        reg = <0x58>;
> > >>> +        status = "okay";
> > >>> +        panel-flags = <1>;
> > >>> +        enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > >>> +        reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > >>> +        #address-cells = <1>;
> > >>> +        #size-cells = <0>;
> > >>> +
> > >>> +        port@0 {
> > >>> +          reg = <0>;
> > >>> +          anx_1_in: endpoint {
> > >>> +            remote-endpoint = <&mipi_dsi>;
> > >>> +          };
> > >>> +        };
> > >>> +
> > >>> +        port@3 {
> > >>> +          reg = <3>;
> > >>> +          anx_1_out: endpoint {
> > >>> +            remote-endpoint = <&panel_in>;
> > >>> +          };
> > >>> +        };
> > >>> +    };
> 
> -- 
> Regards,
> 
> Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
