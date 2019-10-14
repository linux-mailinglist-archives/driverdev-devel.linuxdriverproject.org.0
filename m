Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D74D59D6
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Oct 2019 05:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3ED586A16;
	Mon, 14 Oct 2019 03:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J4BR+2rWf5Iw; Mon, 14 Oct 2019 03:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF3E086988;
	Mon, 14 Oct 2019 03:18:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53A4A1BF976
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 03:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5029587B6A
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 03:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yE6AnAn-JJFq for <devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 03:18:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770125.outbound.protection.outlook.com [40.107.77.125])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B035887ADF
 for <devel@driverdev.osuosl.org>; Mon, 14 Oct 2019 03:18:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAc6Edn65vggOx6qEpftT5WUa+vD5pHw55GYOwuAalLMgAo+Qrmfd4F8aj+UkjXRIXX+IDBsHH/0tW8y5kEXPrRLwdtLvE0LQtiV5nSbIo+jjp+aw/p+6l1vPF7AufmWY+wnk1CSrHBxuuYLkFqwUJn3FM8y3/nL65R06lTtoBeqYG3oePqr4HjEoKqcC3frOedeC8siUvla0xZllg8r25SdaYf2aE4jiC8ss3aNeaDKKQGUfo/DcPELxHCJVcOS6b6BxNcXxn97tjXtp1oNhRsNfU1l2WqyXYy+hiOWiU1d0HF6KVKQWhLNyM+iZwjFMg8PdmIResgV0xtF/nVXkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OHwvHJRgFuXHx1ZnddkkpCbKvQFCt0c/f0/1IeqLROU=;
 b=cOBmKFO2CpKyUsiGKg4Ia4N06F3hOIizLTQHfbxfa73WLSL8XzdDgYZL9MfRz0c+LRKFazmCbtyIYoNtyixpuyxverKGlSseDNKlh3L9s3PVZGb9L6GlVKCMww6PkaUNtRWu7Lh7Z0P/v1CAJtbkcZGgbnwDwXIt35d+TRMcqb3cmdV+kyf0yTH/+Ms0g1NncZ9U32x9zo7Fhycb4rIaow/9DxmSyvKaUQYixwUZpTdgfRZpJdA9tyfRpccqsVvXfRwEeIdAXQ2EzUVOcFHNq8pprmlZJo/W46Kig4a1qZPgqH5A5OgC5Y08YVst2gZOqAUE9eKXfD4+DDcfRcQK2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OHwvHJRgFuXHx1ZnddkkpCbKvQFCt0c/f0/1IeqLROU=;
 b=NzNpjR+XlOR4ZkY+JrQOnoaKeKg/EMsnMXprD/0r2qozot1e5QyD799uxQN9CyNEWxrF0nZ4TrsYMT0a07qjBjX4awF2jShmdEQfSf8V9NKHxl0yohmxBdGUwU6bqc/DuN8VaxGmxUeekspaFDnF/g9bhg9ee0ZTMvKCihSUlDg=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4512.namprd04.prod.outlook.com (52.135.120.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Mon, 14 Oct 2019 03:02:48 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.021; Mon, 14 Oct 2019
 03:02:48 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVf9qi2ZQPn8IAhkqsNtop++SEM6dVTGmAgAAZ3gCABBGvAA==
Date: Mon, 14 Oct 2019 03:02:48 +0000
Message-ID: <20191014030238.GB2390@xin-VirtualBox>
References: <cover.1570760115.git.xji@analogixsemi.com>
 <CGME20191011022154epcas3p1a719423a23f8bf193b6136e853e66b04@epcas3p1.samsung.com>
 <75bb8a47d2c3c1f979c6d62158c21988b846e79b.1570760115.git.xji@analogixsemi.com>
 <3c6067de-9f3c-b93c-f263-fa5dd09c3270@samsung.com>
 <20191011125418.GE4882@pendragon.ideasonboard.com>
In-Reply-To: <20191011125418.GE4882@pendragon.ideasonboard.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0179.apcprd02.prod.outlook.com
 (2603:1096:201:21::15) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc7ed789-407d-4966-a3bb-08d75052fe7c
x-ms-traffictypediagnostic: SN6PR04MB4512:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4512A113D000E6233E5D8A96C7900@SN6PR04MB4512.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01901B3451
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(136003)(39840400004)(376002)(396003)(346002)(366004)(189003)(199004)(99286004)(54906003)(9686003)(6306002)(33656002)(26005)(7736002)(186003)(8936002)(6512007)(52116002)(25786009)(6486002)(229853002)(386003)(6506007)(53546011)(2906002)(76176011)(1076003)(6436002)(102836004)(446003)(6916009)(11346002)(256004)(8676002)(14444005)(7416002)(71200400001)(478600001)(71190400001)(81156014)(107886003)(4326008)(86362001)(33716001)(81166006)(66556008)(64756008)(66446008)(966005)(305945005)(66066001)(316002)(66946007)(66476007)(14454004)(476003)(5660300002)(6116002)(486006)(3846002)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4512;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yjI0/kAxIdrhFFxiN6pcGWOi8rYc9Jj+2srWwcAWoaSxEKE/AsCTGh1MD6FX/vzMrsC4diF2EOJVc1sDxpyfNcjdWx25UWKH6cFZmOpIL9f14wuCQvnOpkxqHtDDQUbgocHem9re2ncieesMuajQ6CKefIF0KIJ4TYUm5dHdGcP1lV7uR0JD0n9FxioaiZb5cnxlpJvqMZRfwMtF3Il6hcnX/HxW0a8obloGA8QrUn48E1r6Sl+Bg0TFkMeUHtRGfbGDQOKemylDUXj7WnJ9OCnnqYbWmN71ERLoIyC6aD0R+QL/A6/gXc9EtQtnuSseUr9hku7+LvmDhlW28eyfoakapepaXSyjASGpvHzk905zLblLXqRIyDsdeI8/ZbthOCJA3hg7sZDXugwE0fHwFhWtB8VadYbOuJO1nrHqWG3kY+6SoztxMwhSG+FLaXxZfgNLDJX73DEhVhyGymJd+w==
Content-ID: <D47E5064666E4E4C9B07F0792B572D1F@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc7ed789-407d-4966-a3bb-08d75052fe7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2019 03:02:48.6963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TaweKUWg0Hm8TqrKDnwRV8kbVAO4ZUxD2PVAYE+iyB72uzZieQ8/FbSlvbm4a980bDB0GsF3AX6FMb4evFpI8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4512
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

Hi Laurent Pinchart, please check my comment below.

Thanks,
Xin

On Fri, Oct 11, 2019 at 03:54:18PM +0300, Laurent Pinchart wrote:
> Hi Andrzej,
> 
> On Fri, Oct 11, 2019 at 01:21:43PM +0200, Andrzej Hajda wrote:
> > On 11.10.2019 04:21, Xin Ji wrote:
> > > The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > > for portable device. It converts MIPI to DisplayPort 1.3 4K.
> > >
> > > You can add support to your board with binding.
> > >
> > > Example:
> > > 	anx7625_bridge: encoder@58 {
> > > 		compatible = "analogix,anx7625";
> > > 		reg = <0x58>;
> > > 		status = "okay";
> > > 		panel-flags = <1>;
> > > 		enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > > 		reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > > 		#address-cells = <1>;
> > > 		#size-cells = <0>;
> > >
> > > 		port@0 {
> > > 		  reg = <0>;
> > > 		  anx_1_in: endpoint {
> > > 		    remote-endpoint = <&mipi_dsi>;
> > > 		  };
> > > 		};
> > >
> > > 		port@3 {
> > > 		  reg = <3>;
> > > 		  anx_1_out: endpoint {
> > > 		    remote-endpoint = <&panel_in>;
> > > 		  };
> > > 		};
> > > 	};
> > >
> > > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > > ---
> > >  .../bindings/display/bridge/anx7625.yaml           | 96 ++++++++++++++++++++++
> > >  1 file changed, 96 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > > new file mode 100644
> > > index 0000000..fc84683
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > > @@ -0,0 +1,96 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +# Copyright 2019 Analogix Semiconductor, Inc.
> > > +%YAML 1.2
> > > +---
> > > +$id: "http://devicetree.org/schemas/display/bridge/anx7625.yaml#"
> > > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > > +
> > > +title: Analogix ANX7625 SlimPort (4K Mobile HD Transmitter)
> > > +
> > > +maintainers:
> > > +  - Xin Ji <xji@analogixsemi.com>
> > > +
> > > +description: |
> > > +  The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
> > > +  designed for portable devices.
> > > +
> > > +properties:
> > > +  "#address-cells": true
> > > +  "#size-cells": true
> > > +
> > > +  compatible:
> > > +    items:
> > > +      - const: analogix,anx7625
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  panel-flags:
> > > +    description: indicate the panel is internal or external
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  enable-gpios:
> > > +    description: used for power on chip control, POWER_EN pin D2.
> > > +    maxItems: 1
> > > +
> > > +  reset-gpios:
> > > +    description: used for reset chip control, RESET_N pin B7.
> > > +    maxItems: 1
> > > +
> > > +  port@0:
> > > +    type: object
> > > +    description:
> > > +      A port node pointing to MIPI DSI host port node.
> > > +
> > > +  port@1:
> > > +    type: object
> > > +    description:
> > > +      A port node pointing to MIPI DPI host port node.
> > > +
> > > +  port@2:
> > > +    type: object
> > > +    description:
> > > +      A port node pointing to external connector port node.
> > > +
> > > +  port@3:
> > > +    type: object
> > > +    description:
> > > +      A port node pointing to eDP port node.
> > 
> > 
> > Decrypting available product brief[1], there are following physical lines:
> > 
> > Input:
> > 
> > - MIPI DSI/DPI - video data, are DSI and DPI lines shared?
> 
> It would be much easier if we could have access to more complete
> information. I believe the DSI and DPI pins could be muxed, but there
> should be more DPI pins than DSI pins.
Yes DPI pins more than DSI pins.
> 
> > 
> > - I2S - audio data,
> > 
> > - I2C - control line,
> > 
> > - ALERT/INTP - interrupt,
> > 
> > - USB 3.1 SSRc/Tx - for USB forwarding,
> > 
> > Output:
> > 
> > - SS1, SS2,
> > 
> > - SBU/AUX,
> > 
> > - CC1/2.
> > 
> > 
> > Having this information I try to understand ports defined by you:
> > 
> > - port@2 you have defined as pointing to external port, but here the
> > port should be rather subnode of ANX7625 - the chip has CC lines, see
> > beginning of [2].
> > 
> > - port@3 describes SS1, SS2 and SBU/AUX lines together, am I right? In
> > USB-C binding SBU and SS lines are represented by different ports,
> > different approach, but maybe better in this case.
> 
> I believe that, when connected to a DP display (either DP or eDP), the
> DisplayPort signals are output on SS1 and/or SS2. I this really wonder
> if we need two separate ports for this, it seems that port@2 and port@3
> should be merged.
OK, I will merge the port@2 and port@3, and use a flag to indicate
whether the control is external connector control or not.
> 
> > Maybe it would be good to add 2nd example with USB-C port.
> 
> That would help with the discussion, yes.
As we disabled USB-C feature in anx7625, we cannot define a USB-C port.
> 
> > [1]:
> > https://www.analogix.com/system/files/AA-002291-PB-6-ANX7625_ProductBrief.pdf
> > 
> > [2]: Documentation/devicetree/bindings/connector/usb-connector.txt
> > 
> > > +
> > > +required:
> > > +  - "#address-cells"
> > > +  - "#size-cells"
> > > +  - compatible
> > > +  - reg
> > > +  - port@0
> > > +  - port@3
> > > +
> > > +example:
> > > +  - |
> > > +    anx7625_bridge: encoder@58 {
> > > +        compatible = "analogix,anx7625";
> > > +        reg = <0x58>;
> > > +        status = "okay";
> > > +        panel-flags = <1>;
> > > +        enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > > +        reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +
> > > +        port@0 {
> > > +          reg = <0>;
> > > +          anx_1_in: endpoint {
> > > +            remote-endpoint = <&mipi_dsi>;
> > > +          };
> > > +        };
> > > +
> > > +        port@3 {
> > > +          reg = <3>;
> > > +          anx_1_out: endpoint {
> > > +            remote-endpoint = <&panel_in>;
> > > +          };
> > > +        };
> > > +    };
> 
> -- 
> Regards,
> 
> Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
