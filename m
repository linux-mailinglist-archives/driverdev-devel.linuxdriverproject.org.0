Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE083D1EF8
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:38:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FE5186B23;
	Thu, 10 Oct 2019 03:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igBk-iZOcRRK; Thu, 10 Oct 2019 03:38:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 606C786B16;
	Thu, 10 Oct 2019 03:38:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5A661BF2FB
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C547C86B16
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d0xCZGYjUS_f for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:38:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710100.outbound.protection.outlook.com [40.107.71.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9D6D286B10
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:38:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPJYZBc3wJ9gkNNMnEHpj1i+HPGEhVEIqukdC33Enrde0mUzhtJNny7VJyp2B5VPp+T/c6NU+sjGWe+MeGjmps8YNw6q5zQgYZDpgAQojg9K3azbB1J6VknsDDXS9SBIllomyFfUw52JcqDZE1C9LqXp27X5kVdjMCJzqUl89+X0WiNL1TSGZYi3roQnffDDV21vEQ75Fe/yLcuPIGwECDZtfeafO4qEkYNMvDPKhUmqvRCzXpUiyXpN7IrQpv2z3erFZlH6e5fFOE4fhVk7xrD7npPqhyLcYlb2MECqJCwDb7YcJht7mBbyT+TxjjY2CLFOQ1x394hB9QjvVqBywQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=itIcGg1VwFukEfeYFSdX4m+CFNJIWOltcoqvNKIS7gY=;
 b=ipNWzYzWFpbgErA9MDBFgRG/KGmL81enURxSx98JgErSPOv/AvPY7nzmEWGRgcoWEEJXqr3NkCb/G2KKISwUCQ0UnaEt3wBVjyeJSIDpIPFshB7kwJA/fRNINNj/gE8jRADZ/arG1ERaFx8yCcKbjKXamY6OyGnT11kAZvu0dRAiye63kzqV0Lflgo8Ev2XOzZcbL9rGacdUxvtUxMET6oGGkxaYxUGjDyax5jEE2STlpn1AVEUTX7ISVeCY5WqtG93wZlw+bHDtmherbG+3tkMV419taTOwYBviKnV/xY5lPN1bS0r8rw9oUhfpYUUTm/QfIWGNnumdqvf2heOdlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=itIcGg1VwFukEfeYFSdX4m+CFNJIWOltcoqvNKIS7gY=;
 b=Mvpunx0rzXCJLNN26aioFWMq6WqeYtwfWhu7NI4dhtbYlYx3MHdBD+Vj6NsgSNjYi+CCcq2UjRkiGKPe8aF3D7MiNpf2gBTyv44LVNU8SnQA+EbL5eu1KgSiYnbGJYrGENdv6F+d96z1BPpHe/jn36X9C0hHaBEWWGAj4lzfUWs=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4013.namprd04.prod.outlook.com (52.135.82.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Thu, 10 Oct 2019 03:38:40 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 03:38:40 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Topic: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Thread-Index: AQHVfoO4ZRVMsEYORESrPx4IOG5NEadSN+6AgAEDXgA=
Date: Thu, 10 Oct 2019 03:38:40 +0000
Message-ID: <20191010033822.GB10005@xin-VirtualBox>
References: <cover.1570588741.git.xji@analogixsemi.com>
 <82d9e3d505699da8f32069844b3cfe7c9fbfd0f1.1570588741.git.xji@analogixsemi.com>
 <20191009121003.GM22998@pendragon.ideasonboard.com>
In-Reply-To: <20191009121003.GM22998@pendragon.ideasonboard.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR04CA0012.apcprd04.prod.outlook.com
 (2603:1096:203:36::24) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e19dadbc-6f2e-4284-d440-08d74d335643
x-ms-traffictypediagnostic: SN6PR04MB4013:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4013E36999DEBFC22C4E2FB6C7940@SN6PR04MB4013.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(136003)(396003)(39850400004)(376002)(346002)(366004)(199004)(189003)(81166006)(386003)(6116002)(3846002)(7736002)(186003)(64756008)(86362001)(316002)(66476007)(66946007)(7416002)(26005)(8936002)(66446008)(66556008)(4326008)(102836004)(6506007)(8676002)(6916009)(99286004)(81156014)(476003)(11346002)(446003)(486006)(305945005)(52116002)(76176011)(107886003)(229853002)(6306002)(6512007)(9686003)(54906003)(6246003)(256004)(71190400001)(14454004)(33716001)(33656002)(6486002)(2906002)(6436002)(478600001)(66066001)(5660300002)(25786009)(1076003)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4013;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wi8fnq0cTwS8Stbe9WsLD0hRNevJ74A3sG2XqPmMG6D8ChYmBhkJ3RKACoUzRBom/LO3ePHkDRJcuwThqeckhJBheSPtPyYT3RxsfqfjZ75bBdQ1+/T3atqaJIxMmHf00Ihi9b4AYBtD/72UvWbh+cN4wmTcQecnNjoMUZTlk5wmK1c9z0mnrDY75Kd4KltHJitO6TvYkEiPy+IL2lBDmfdT9el7XYaVl7aNC27Rdsz1UKXLeI6JVCKilXIuZSdJL+Gewb792NcFkHZ5KqDXMyWr6mfPXpMhd1oKpITFoP0xn4ud32UZ2A/asD1WggV7FmlpCU9SMQubvoidl1fsJ4Aih4meR4OVpDdBFnZwuYQ6KqyZjynn6dFIp3IvuTyTKaPYjo/GmMufU0ctGULM3dmrdveVdmoq4Pq1Ak/MXGGXY1wKqn67JrdP3qSyoDvmoN7onKQutmvSu5YXoK1U8g==
Content-ID: <277EF7BA861E9D4F924E8A7EF332BAE0@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e19dadbc-6f2e-4284-d440-08d74d335643
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 03:38:40.7186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z96CJP5CSINPu43Cb1Y4YphPuuAagBpvpKgGqIs78Df8oJe/3f54iKkk8lnUdSDLEJVBITgo+VvzvSKUuicrbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4013
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
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Laurent Pinchart, thanks for your comments.


On Wed, Oct 09, 2019 at 03:10:03PM +0300, Laurent Pinchart wrote:
> Hi Xin Ji,
> 
> Thank you for the patch.
> 
> On Wed, Oct 09, 2019 at 09:27:07AM +0000, Xin Ji wrote:
> > The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > for portable device. It converts MIPI to DisplayPort 1.3 4K.
> > 
> > You can add support to your board with binding.
> > 
> > Example:
> > 	anx_bridge: anx7625@58 {
> > 		compatible = "analogix,anx7625";
> > 		reg = <0x58>;
> > 		enable-gpios = <&gpio0 45 GPIO_ACTIVE_LOW>;
> > 		reset-gpios = <&gpio0 73 GPIO_ACTIVE_LOW>;
> > 		status = "okay";
> > 		port@0 {
> > 			reg = <0>;
> > 			anx7625_1_in: endpoint {
> > 				remote-endpoint = <&mipi_dsi_bridge_1>;
> > 			};
> > 		};
> > 	};
> > 
> > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > ---
> >  .../bindings/display/bridge/anx7625.yaml           | 79 ++++++++++++++++++++++
> >  1 file changed, 79 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > new file mode 100644
> > index 0000000..0ef6271
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > @@ -0,0 +1,79 @@
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
> > +  hpd-gpios:
> > +    description: used for HPD interrupt
> > +    maxItems: 1
> 
> You explained in your reply to v1 review that this describes the
> interrupt generated by the ANX7625. It should be replaced by an
> interrupts property.
OK, I'll change it to interrupts property.
> 
> > +
> > +  enable-gpios:
> > +    description: used for power on chip control
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    description: used for reset chip control
> > +    maxItems: 1
> 
> Could you please mention the exact name of the corresponding pins on the
> chip for enable and reset ?
OK, I'll mention the exact name of the corresponding pins on the chip.
> 
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
> > +      A port node pointing to internal panel port node.
> > +
> > +  port@4:
> > +    type: object
> > +    description:
> > +      A port node pointing to normal eDP port node.
> 
> I don't think three output ports is correct. Ports 3 and 4 are really
> the same. I'm even unsure about port 2 and 3, someone with better
> knowledge of USB-C and DisplayPort would be in a better position to
> comment.
I used it to distinguish different output, port@2 used for USB Type-C
output, I need it to register external connector port notifier
interface, and I think it is OK to conbine port@3 and port@4.
> 
> > +
> 
> You're missing the #address-cells and #size-cells properties required
> for the ports. As the device is an I2C device we're lucky that the
> parent will specify compatible address and size cells numbers, but I'm
> not sure we should rely on that luck.
OK, I'll add it.
> 
> Rob, how does yaml schema handle this ?
> 
> > +required:
> > +  - compatible
> > +  - reg
> > +  - port@0 | port@1
> > +
> > +example:
> > +  - |
> > +    anx_bridge: anx7625@58 {
> 
> The node name should describe the device's function. How about
> encoder@58 ?
OK, I'll change it.
> 
> > +        compatible = "analogix,anx7625";
> > +        reg = <0x58>;
> > +        status = "okay";
> > +        port@0 {
> > +          reg = <0>;
> > +          anx7625_1_in: endpoint {
> > +            remote-endpoint = <&mipi_dsi_bridge_1>;
> > +          };
> > +        };
> > +    };
> 
> -- 
> Regards,
> 
> Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
