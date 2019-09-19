Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F39FB77C0
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 12:51:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DBE286717;
	Thu, 19 Sep 2019 10:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wWnJ5857-vT; Thu, 19 Sep 2019 10:51:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45E1A84468;
	Thu, 19 Sep 2019 10:51:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B4151BF324
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 10:51:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 47DCE2043A
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 10:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAuEcv9Xb7Zy for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 10:51:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770119.outbound.protection.outlook.com [40.107.77.119])
 by silver.osuosl.org (Postfix) with ESMTPS id D848020439
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 10:51:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QtiDrEmMzxIc5zPcZ4hxP9uardI2OzdFafCQRVoNPBhYEFADRh6QUdkOO8lwo8SchqF+tAajhd1rpbcQf8IyKzq41nvPabIvXkOmKJNdVfXyELrpmPkRb+QXOG67ytlF8l1dAV5XXDaedEGiIgZGsHSItpxfeqM++nJLaQFdPtYZU8rBpkctb5F7D3tuGxZXxqnPyQq8wOK2NHJUc4qWOJ7V66KFcq6jnMuH+hcM7PxLZy/27q/33QnvdXaTRug9jFaKFCH3q70jauyRPJEAksdWhjdQz2wGrWUj6Oj7yeWWEA8qXk4f4w812bXOt1UvKkajUX21LjS8TnqiR69h0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fBTJSlswVOGD4whQ+j7Ii1uqhhDdxwbkPbhNhhWArO4=;
 b=k5zc+KdE3oHARcIELzTSKuMFWyOqylw/EycL7VE86umL9gNjCClsZYpkCR+V1JDkFjxU0XdAe/rabFipAYdHD81/zZbyQDJrFhJlee4WKlF7V4TVj3FFRMkNcOn5bODRf0yqV5vmr2xDYRIYqE9RKRz3QESsiHR5D/5VoXOS8I+S1BKtn3yUbUorbQixYqQ6PHa9+g0X/KHHyjzk8AaIZhm4ujW4tMGjKEx3jyEODlcR7e/3IDQJJk+2vcd0ubHSIJOGY0j/07H1ii2trrty1giDoQYkNMH/v5M9uwjVm6N2eDzT3zwXjm5vIfsl5UL38npjXuZO/UbMfqgray/Jnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fBTJSlswVOGD4whQ+j7Ii1uqhhDdxwbkPbhNhhWArO4=;
 b=qGZHDIyn2aTTVojqA0h/OWXAsvShk59ntS0DRhghmcM/sX9KcRaFnJcVJk26xozj0cDH7pbOg5vXhy1Po7f5tup43X7Jz4DpT/L5qpniAwjmG/sdnhmGd2EfSTMKiBontXMxmWUdaWYw7mdo/n/emoLrwrUho26xciTNllQ34xI=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6861.namprd04.prod.outlook.com (10.186.145.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Thu, 19 Sep 2019 10:51:08 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd%6]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 10:51:08 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v1 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVbrcoV2OyOAmcWUS3ygObr3iBRKcykX4AgABBUYA=
Date: Thu, 19 Sep 2019 10:51:08 +0000
Message-ID: <20190919105059.GB30631@xin-VirtualBox>
References: <cover.1568858880.git.xji@analogixsemi.com>
 <e41d10504b7d1e977a1f53663c287e4e7d53011a.1568858880.git.xji@analogixsemi.com>
 <446ff66c-8097-fca8-8371-9223679f16bb@baylibre.com>
In-Reply-To: <446ff66c-8097-fca8-8371-9223679f16bb@baylibre.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0023.apcprd03.prod.outlook.com
 (2603:1096:203:2e::35) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72d95f34-7b12-4564-d93b-08d73cef46ea
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR04MB6861; 
x-ms-traffictypediagnostic: MN2PR04MB6861:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6861E22D15272EDA5249FFD3C7890@MN2PR04MB6861.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(346002)(396003)(376002)(366004)(136003)(39850400004)(189003)(199004)(33716001)(71200400001)(9686003)(4326008)(71190400001)(76176011)(256004)(81156014)(478600001)(66446008)(316002)(66946007)(64756008)(66476007)(52116002)(33656002)(81166006)(25786009)(8676002)(99286004)(66556008)(229853002)(6246003)(6116002)(386003)(5660300002)(11346002)(54906003)(186003)(3846002)(6512007)(14454004)(6436002)(53546011)(6916009)(6306002)(7736002)(6486002)(486006)(1076003)(7416002)(66066001)(446003)(6506007)(966005)(86362001)(8936002)(476003)(2906002)(305945005)(107886003)(26005)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6861;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mSIRyTcvH59qVvfscBrXYm6Ap0SN30T3XA9jCMQQGHZvCadfxoWy7z2ZDzhCtp40BdmfOGUjWqAwF361EgD2aajhe6hFvFnNVfT3Bj7vhh+muaRMAkkjThN9UhzqIvyDL8mBDG0axxMTWr71RMa+rVokMuq43hLRrTIDYSko5i5m+a6QVB0Cn83BvdIUqadxeeH5g73YySAyeouU9mBhc6Z0ZTTbRtZ34KQ8gVGCk0ZaZA0xrqFOywc8XgNsGJwKvLNr4g7+6+Wj9zc7mm3+00TAcKdWMgVyLVsXXctx6JEJyVOnEgiTJ66XKJlHuclqqm4Lz8INSyOI4kJq/7uNf6JJ1j/WT30K4ZcSA46PBEAE/tv6yIO+B3+vdwHCdcQM/nYXPcZIhXpEQ2e6hUxFXxiwrlOJoqJKknIxMiHOv1s=
Content-ID: <8248B93224CA044CA79F0C0DC8170CEA@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72d95f34-7b12-4564-d93b-08d73cef46ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 10:51:08.4658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MmCTS+sIgafubrF3v9cGHyEPaNDVYgdcQn3MYp5w+WDh2CjLmKHOP+tpFk1e644g9dsSTEjgdWhkVfIgApu0GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6861
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
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 08:57:12AM +0200, Neil Armstrong wrote:
> Hi,
> 
> On 19/09/2019 08:55, Xin Ji wrote:
> > The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > for portable device. It converts MIPI to DisplayPort 1.3 4K.
> > 
> > You can add support to your board with binding.
> > 
> > Example:
> > 	anx_bridge: anx7625@58 {
> > 		compatible = "analogix,anx7625";
> > 		reg = <0x58>;
> > 		anx,low_power_mode = <1>;
> > 		anx,dsi_supported = <1>;
> > 		anx,dsi_channel = <1>;
> > 		anx,dsi_lanes = <4>;
> > 		anx,internal_pannel = <1>;
> > 		anx,p-on-gpio = <&gpio0 45 GPIO_ACTIVE_LOW>;
> > 		anx,reset-gpio = <&gpio0 73 GPIO_ACTIVE_LOW>;
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
> >  .../devicetree/bindings/display/bridge/anx7625.txt | 42 ++++++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.txt b/Documentation/devicetree/bindings/display/bridge/anx7625.txt
> > new file mode 100644
> > index 0000000..f2a1c2a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/anx7625.txt
> > @@ -0,0 +1,42 @@
> > +Analogix ANX7625 SlimPort (4K Mobile HD Transmitter)
> > +-----------------------------------------------
> 
> New bindings should use yaml format:
> https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/example-schema.yaml
> 
> Neil
OK, I'll follow the yaml format in the next version.
Thanks,
Xin
> 
> > +
> > +The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
> > +designed for portable devices.
> > +
> > +Required properties:
> > +
> > + - compatible		: "analogix,anx7625"
> > + - reg			: I2C address of the device
> > + - anx,low_power_mode	: Low power mode support feature
> > + - anx,dsi_supported	: DSI or DPI
> > + - anx,dsi_channel	: DSI channel index
> > + - anx,dsi_lanes	: DSI lane count
> > + - anx,intr-hpd-gpio	: Which GPIO to use for interrupt
> > +
> > +Optional properties:
> > +
> > + - anx,extcon_supported
> > +	external connector interface support flag
> > + - anx,internal_pannel
> > +	Which indicate internal pannel
> > + - anx,p-on-gpio
> > +	Which GPIO to use for Power On chip
> > + - anx,reset-gpio
> > +	Which GPIO to use for RESET
> > + - port
> > +	SoC specific port nodes with endpoint definitions as defined in
> > +	Documentation/devicetree/bindings/media/video-interfaces.txt,
> > +
> > +Example:
> > +
> > +	anx_bridge: anx7625@58 {
> > +		compatible = "analogix,anx7625";
> > +		reg = <0x58>;
> > +		anx,low_power_mode = <0>;
> > +		anx,dsi_supported = <1>;
> > +		anx,dsi_channel = <1>;
> > +		anx,dsi_lanes = <4>;
> > +		anx,intr-hpd-gpio = <&gpio1 19 IRQ_TYPE_LEVEL_LOW>;
> > +		status = "okay";
> > +	};
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
