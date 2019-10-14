Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3669CD5A5B
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Oct 2019 06:25:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 10DF221567;
	Mon, 14 Oct 2019 04:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pw0KOHoTtdOm; Mon, 14 Oct 2019 04:25:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D681820111;
	Mon, 14 Oct 2019 04:25:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CA201BF2BB
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 04:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4581086581
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 04:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bM88--udrVnB for <devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 04:25:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-eopbgr750095.outbound.protection.outlook.com [40.107.75.95])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7BE1886506
 for <devel@driverdev.osuosl.org>; Mon, 14 Oct 2019 04:25:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dUCJlufzAi5V7pv6bammKlOiI04/7V93LFIcao462VVxotDgeTdNQetSBh5E4lioS4LA13FHC42T14Brgc2mvKQsZAnoTklyEIzOUDcVneGvsfwf01szu7aInsd/Tvtdh5Iwmmuedc1Jytb5njuIkQkDDcqMs0GrYqNm5fMgNs7gROkz89DW3j+3dDcGI5yO8mA+o5Xv8Nv9xo47PRLDvHJM0ou+XtGmLgqvAUysbONkRR79XWCDqhvJAvxH6w3T2hyulF4+nCDOIjO0IATvmkN2CAMhSO/9ZyD2C/ugoL7SwOhbWm32bsb6o4cYkTSfwJmKxrUmja51D0oa7nyH8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hpP7ocOwyme+KvszB4vYQpewzyYmu7E4aS6LnB6QbcE=;
 b=QbiZbPpVL/KU+m6EbpQ2SYUHp2wtmdQR5+DH27EyteU3t+ooQo6fyBYuDUPPV4ZjlaTXRV5pL+IJXmkrWRf5I6q/AzHAGvWZpZc4qwkQt7ld3F9cjvImT91l/lSEx+FU51L/edDXmzKjPec8AzfigOm8gz9aMLfK/36Z1sd92Vdp3aDjJmXciuVtBruD6JIsngpbBdhUFrl83v3UPx18REmgSX0h2y5BqV0lphCJrPmT7YNLumoNwD75L/AXYCHkDUtjF79B37z8fexmBK2fqyMIvDNkJPM6lcKCJEmPQPcyg5/ZUhz8pQaLDMzztA+8vSkO7Bhvf1rQD4+/a69s0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hpP7ocOwyme+KvszB4vYQpewzyYmu7E4aS6LnB6QbcE=;
 b=kFInHfcThUNiX652RZ8ryLFURIAteqRAX076A6ZnOqH7p2+SGkp8vNOcQ8tGRGsciKsEbxKcIibc4iMRUzHOSjmuepcG5CpMtXqwZd/QV4n0acTwabp4q3I91uDvgyDZEOG5soEx/uzA4/jqISOuk08jFpJv+dosDm3d79FUMOk=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB3791.namprd04.prod.outlook.com (52.135.81.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Mon, 14 Oct 2019 02:53:33 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.021; Mon, 14 Oct 2019
 02:53:33 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVf9qi2ZQPn8IAhkqsNtop++SEM6dVTGmAgAQo94A=
Date: Mon, 14 Oct 2019 02:53:33 +0000
Message-ID: <20191014025322.GA2390@xin-VirtualBox>
References: <cover.1570760115.git.xji@analogixsemi.com>
 <CGME20191011022154epcas3p1a719423a23f8bf193b6136e853e66b04@epcas3p1.samsung.com>
 <75bb8a47d2c3c1f979c6d62158c21988b846e79b.1570760115.git.xji@analogixsemi.com>
 <3c6067de-9f3c-b93c-f263-fa5dd09c3270@samsung.com>
In-Reply-To: <3c6067de-9f3c-b93c-f263-fa5dd09c3270@samsung.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0P153CA0024.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::36) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 536e5202-1e21-4dbe-78ec-08d75051b33e
x-ms-traffictypediagnostic: SN6PR04MB3791:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB3791AF83122ACDA5C238C202C7900@SN6PR04MB3791.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01901B3451
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(136003)(39840400004)(376002)(396003)(346002)(366004)(189003)(199004)(6512007)(9686003)(6306002)(54906003)(186003)(99286004)(26005)(7736002)(33656002)(8936002)(52116002)(25786009)(6486002)(53546011)(2906002)(229853002)(76176011)(6506007)(386003)(6436002)(1076003)(102836004)(107886003)(6916009)(4326008)(11346002)(256004)(8676002)(71190400001)(71200400001)(81166006)(478600001)(81156014)(446003)(7416002)(86362001)(33716001)(66556008)(64756008)(66446008)(966005)(66066001)(316002)(66946007)(66476007)(6116002)(14454004)(5660300002)(476003)(486006)(3846002)(305945005)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3791;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xsomvpfWCxbKmmVoa69tYSEK/MwbI0srJR/+DAlcbkkIqlmE9xfsnaA+h+FnOmXI/XcVjVMCM936thWXWZh+jUVYuCcQvwAAQyyCOs7Bcbkwz2rTKr08auw0V+/wTHjEp+TSNdb4kE+fgnY0s8TC25WlubrdLHpMM6D25Z0t5AM9Yom1WKToymHMEpxe32AZ0JDaAmG/+XHk2EzZD6UoDSiMdS5YZq/NoFMQsHWB25EbazBu+rqIaN9UybBBE2y4X+Xtuf4gW8DV5fNm8syVII+zw7RpJ6oYhG1w9nxgTAWwCP1IKAagJ7UrjxgBnAUu+TJNHVfyp4B9R1dpiQPBEe8fRllpgVnVkyq/4eRDMwXpGVvKY46OO4hCOxQyVphgepF2VRwj4XqbsT1fKVZslj69osuj+rVA9QYiLoCuXCDK25IJZf2mMJXGoCD1FRpktywkz4hxBmQzbqVUaiAPUg==
Content-ID: <7D2EC0DAA8B81945BC9C60B8717ED260@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 536e5202-1e21-4dbe-78ec-08d75051b33e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2019 02:53:33.3629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O95mewymmSIHyYBWGfqtRqRyaF/SovpzxFGYeU5tbthdRGUiRXKJqea9U8Vd8BwsQzNHqyH19AmSIs+Lb+i0dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3791
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andrzej Hajda, please check my comment below.

Thanks,
Xin

On Fri, Oct 11, 2019 at 01:21:43PM +0200, Andrzej Hajda wrote:
> On 11.10.2019 04:21, Xin Ji wrote:
> > The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > for portable device. It converts MIPI to DisplayPort 1.3 4K.
> >
> > You can add support to your board with binding.
> >
> > Example:
> > 	anx7625_bridge: encoder@58 {
> > 		compatible = "analogix,anx7625";
> > 		reg = <0x58>;
> > 		status = "okay";
> > 		panel-flags = <1>;
> > 		enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > 		reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > 		#address-cells = <1>;
> > 		#size-cells = <0>;
> >
> > 		port@0 {
> > 		  reg = <0>;
> > 		  anx_1_in: endpoint {
> > 		    remote-endpoint = <&mipi_dsi>;
> > 		  };
> > 		};
> >
> > 		port@3 {
> > 		  reg = <3>;
> > 		  anx_1_out: endpoint {
> > 		    remote-endpoint = <&panel_in>;
> > 		  };
> > 		};
> > 	};
> >
> > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > ---
> >  .../bindings/display/bridge/anx7625.yaml           | 96 ++++++++++++++++++++++
> >  1 file changed, 96 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > new file mode 100644
> > index 0000000..fc84683
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > @@ -0,0 +1,96 @@
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
> > +  "#address-cells": true
> > +  "#size-cells": true
> > +
> > +  compatible:
> > +    items:
> > +      - const: analogix,anx7625
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  panel-flags:
> > +    description: indicate the panel is internal or external
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  enable-gpios:
> > +    description: used for power on chip control, POWER_EN pin D2.
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    description: used for reset chip control, RESET_N pin B7.
> > +    maxItems: 1
> > +
> > +  port@0:
> > +    type: object
> > +    description:
> > +      A port node pointing to MIPI DSI host port node.
> > +
> > +  port@1:
> > +    type: object
> > +    description:
> > +      A port node pointing to MIPI DPI host port node.
> > +
> > +  port@2:
> > +    type: object
> > +    description:
> > +      A port node pointing to external connector port node.
> > +
> > +  port@3:
> > +    type: object
> > +    description:
> > +      A port node pointing to eDP port node.
> 
> 
> Decrypting available product brief[1], there are following physical lines:
> 
> Input:
> 
> - MIPI DSI/DPI - video data, are DSI and DPI lines shared?
> 
> - I2S - audio data,
> 
> - I2C - control line,
> 
> - ALERT/INTP - interrupt,
> 
> - USB 3.1 SSRc/Tx - for USB forwarding,
> 
> Output:
> 
> - SS1, SS2,
> 
> - SBU/AUX,
> 
> - CC1/2.
At this application, we didn't use CC1/2 line, we only use the video
format convert(MIPI to DP) feature on anx7625.
> 
> 
> Having this information I try to understand ports defined by you:
> 
> - port@2 you have defined as pointing to external port, but here the
> port should be rather subnode of ANX7625 - the chip has CC lines, see
> beginning of [2].
The port@2 is for Chromium book external port low power mode control,
the driver according this port to register external connector
notify interface to receive "connect/disconnect" event to do low power
control.
> 
> - port@3 describes SS1, SS2 and SBU/AUX lines together, am I right? In
> USB-C binding SBU and SS lines are represented by different ports,
> different approach, but maybe better in this case.
> 
> 
> Maybe it would be good to add 2nd example with USB-C port.
No need to add 2nd example with USB-C port, as I said, we didn't use the
USB Type-C PD feature at anx7625.
> 
> 
> [1]:
> https://www.analogix.com/system/files/AA-002291-PB-6-ANX7625_ProductBrief.pdf
> 
> [2]: Documentation/devicetree/bindings/connector/usb-connector.txt
> 
> 
> Regards
> 
> Andrzej
> 
> 
> > +
> > +required:
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +  - compatible
> > +  - reg
> > +  - port@0
> > +  - port@3
> > +
> > +example:
> > +  - |
> > +    anx7625_bridge: encoder@58 {
> > +        compatible = "analogix,anx7625";
> > +        reg = <0x58>;
> > +        status = "okay";
> > +        panel-flags = <1>;
> > +        enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > +        reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        port@0 {
> > +          reg = <0>;
> > +          anx_1_in: endpoint {
> > +            remote-endpoint = <&mipi_dsi>;
> > +          };
> > +        };
> > +
> > +        port@3 {
> > +          reg = <3>;
> > +          anx_1_out: endpoint {
> > +            remote-endpoint = <&panel_in>;
> > +          };
> > +        };
> > +    };
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
