Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B286822EF1
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:32:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DABE84F12;
	Mon, 20 May 2019 08:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oAtj6m2RhxaJ; Mon, 20 May 2019 08:32:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 177C984F4C;
	Mon, 20 May 2019 08:32:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBC601BF2EF
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D845921568
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELVQnBRG3Y+x for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:32:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr730078.outbound.protection.outlook.com [40.107.73.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 3BE3F2078B
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SltFkiEmWMyofTKjjBwrqz0lYSxMjQAm+yK8/VwcAzY=;
 b=CeIQfsyw77vkM//cgP80oL/UdNbTKD3oDFGdmkjoN6TW1Y+EgXD8kZyfLamq2p4nl09ZiC6/cxLmK+KQ+mI4SbTsZ6U2yPGAhr4kGkfTplUag8GlQxek049Wl//lbMaKinB/pbKoofSa2uuyD4YKTpc9GzgXV5wCQ8f+JKGY+tI=
Received: from CY4PR03CA0024.namprd03.prod.outlook.com (2603:10b6:903:33::34)
 by SN2PR03MB2271.namprd03.prod.outlook.com (2603:10b6:804:d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.16; Mon, 20 May
 2019 08:32:39 +0000
Received: from CY1NAM02FT016.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::209) by CY4PR03CA0024.outlook.office365.com
 (2603:10b6:903:33::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.18 via Frontend
 Transport; Mon, 20 May 2019 08:32:39 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 CY1NAM02FT016.mail.protection.outlook.com (10.152.75.164) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1900.16
 via Frontend Transport; Mon, 20 May 2019 08:32:38 +0000
Received: from NWD2HUBCAS9.ad.analog.com (nwd2hubcas9.ad.analog.com
 [10.64.69.109])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x4K8Wawm015432
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Mon, 20 May 2019 01:32:36 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS9.ad.analog.com ([fe80::44a2:871b:49ab:ea47%12]) with mapi id
 14.03.0415.000; Mon, 20 May 2019 04:32:36 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "renatogeh@gmail.com" <renatogeh@gmail.com>, "jic23@kernel.org"
 <jic23@kernel.org>
Subject: Re: [PATCH] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Thread-Topic: [PATCH] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Thread-Index: AQHVDcrSZKi34xwBdkOXGhwXr4r5gKZylHQAgAFgCAA=
Date: Mon, 20 May 2019 08:32:36 +0000
Message-ID: <5d7ad2935d1e357f1c0885badc5ce3c351c8ed89.camel@analog.com>
References: <9992a318aec777b9b7788bb40d976aa89e5963fe.1558219042.git.renatogeh@gmail.com>
 <20190519123208.26c864ce@archlinux>
In-Reply-To: <20190519123208.26c864ce@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.1.244]
x-adiroutedonprem: True
Content-ID: <94BFAD9BDF5AC84E86370057D67D2A39@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(136003)(346002)(376002)(39860400002)(2980300002)(189003)(199004)(7736002)(70586007)(7636002)(8936002)(106002)(7416002)(86362001)(2486003)(305945005)(7696005)(6116002)(3846002)(8676002)(76176011)(50466002)(70206006)(23676004)(102836004)(356004)(2501003)(246002)(446003)(6246003)(4326008)(110136005)(26005)(54906003)(53376002)(436003)(11346002)(426003)(118296001)(5660300002)(36756003)(186003)(47776003)(316002)(14454004)(2616005)(336012)(478600001)(6306002)(229853002)(486006)(476003)(14444005)(126002)(966005)(2906002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN2PR03MB2271; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 33c60071-0dae-4f12-234f-08d6dcfdb820
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:SN2PR03MB2271; 
X-MS-TrafficTypeDiagnostic: SN2PR03MB2271:
X-MS-Exchange-PUrlCount: 7
X-Microsoft-Antispam-PRVS: <SN2PR03MB22712271EA90A39627175D80F9060@SN2PR03MB2271.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 004395A01C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: r9mBznTUEDhkjI49NK8RZSe6PP0+GtrErKv0OmhORJ9GhRyngqfau17vmBflVp/IANE16zoSFS9xpR6bFZmWJn3eXn136xx5VgM4Gbrl9i3OGGvOOKB3rfwhbbz4zZwIOFh1KPGCspzxBLY97vk7bbtOkq24ileCTK26qCQiNdyEjaJdfz4diXjOPTSFEa6BDeVKJNQRb5/+3PrcRom8EkiIsHizi2/3i8rSm64Z9A8ghC0mLbcIXGYp0hfYLWlnP5PgxhAfrjofJAD/Bkx3305u2RPYx3fzZsTgj/55sRvgIt7FtUhFCetIbg7DkLWUvzAzBFC1v6qiw8gWJ+zqRwG8mvFztWqvKsLjHE/JHmTGop3BLN6rcQ7yswBG8PtsVHrqaMf0VCyHnxAWPUoN5C+83o3A8twB9D6jZ/EUn7g=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2019 08:32:38.5147 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 33c60071-0dae-4f12-234f-08d6dcfdb820
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR03MB2271
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "Popa,
 Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2019-05-19 at 12:32 +0100, Jonathan Cameron wrote:
> [External]
> 
> 
> On Sat, 18 May 2019 19:41:12 -0300
> Renato Lui Geh <renatogeh@gmail.com> wrote:
> 
> > This patch adds a YAML binding for the Analog Devices AD7780/1 and
> > AD7170/1 analog-to-digital converters.
> > 
> > Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
> 
> One comment inline.  I'll also be needing an ack from Analog on this,
> preferably Michael's.
> 
> Thanks,
> 
> Jonathan
> > ---
> >  .../bindings/iio/adc/adi,ad7780.txt           | 48 -----------
> >  .../bindings/iio/adc/adi,ad7780.yaml          | 85 +++++++++++++++++++

You should also update the MAINTAINERS file.
Maybe in a following patch.
It looks like there is not entry in there, so maybe you need to add a new
one.

Something like:


ANALOG DEVICES INC AD7780 DRIVER
M:      Michael Hennerich <Michael.Hennerich@analog.com>
M:      Renato Lui Geh <renatogeh@gmail.com>
L:      linux-iio@vger.kernel.org
W:      http://ez.analog.com/community/linux-device-drivers
S:      Supported
F:      drivers/iio/adc/ad7780.c
F:      Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml

This should be after this block
ANALOG DEVICES INC AD7768-1 DRIVER

Note that I added you as a co-maintainer.
If you want, you do not need to add that line.

> >  2 files changed, 85 insertions(+), 48 deletions(-)
> >  delete mode 100644
> > Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> > b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> > deleted file mode 100644
> > index 440e52555349..000000000000
> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> > +++ /dev/null
> > @@ -1,48 +0,0 @@
> > -* Analog Devices AD7170/AD7171/AD7780/AD7781
> > -
> > -Data sheets:
> > -
> > -- AD7170:
> > -     * 
> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
> > -- AD7171:
> > -     * 
> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
> > -- AD7780:
> > -     * 
> > https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
> > -- AD7781:
> > -     * 
> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
> > -
> > -Required properties:
> > -
> > -- compatible: should be one of
> > -     * "adi,ad7170"
> > -     * "adi,ad7171"
> > -     * "adi,ad7780"
> > -     * "adi,ad7781"
> > -- reg: spi chip select number for the device
> > -- vref-supply: the regulator supply for the ADC reference voltage
> > -
> > -Optional properties:
> > -
> > -- powerdown-gpios:  must be the device tree identifier of the PDRST
> > pin. If
> > -                 specified, it will be asserted during driver probe.
> > As the
> > -                 line is active high, it should be marked
> > GPIO_ACTIVE_HIGH.
> > -- adi,gain-gpios:   must be the device tree identifier of the GAIN
> > pin. Only for
> > -                 the ad778x chips. If specified, it will be asserted
> > during
> > -                 driver probe. As the line is active low, it should be
> > marked
> > -                 GPIO_ACTIVE_LOW.
> > -- adi,filter-gpios: must be the device tree identifier of the FILTER
> > pin. Only
> > -                 for the ad778x chips. If specified, it will be
> > asserted
> > -                 during driver probe. As the line is active low, it
> > should be
> > -                 marked GPIO_ACTIVE_LOW.
> > -
> > -Example:
> > -
> > -adc@0 {
> > -     compatible =  "adi,ad7780";
> > -     reg =         <0>;
> > -     vref-supply = <&vdd_supply>
> > -
> > -     powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
> > -     adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
> > -     adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
> > -};
> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> > b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> > new file mode 100644
> > index 000000000000..931bc4f8ec04
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> > @@ -0,0 +1,85 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/adc/adi,ad7780.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Analog Devices AD7170/AD7171/AD7780/AD7781 analog to digital
> > converters
> > +
> > +maintainers:
> > +  - Michael Hennerich <michael.hennerich@analog.com>
> > +
> > +description: |
> > +  The ad7780 is a sigma-delta analog to digital converter. This driver
> > provides
> > +  reading voltage values and status bits from both the ad778x and
> > ad717x series.
> > +  Its interface also allows writing on the FILTER and GAIN GPIO pins
> > on the
> > +  ad778x.
> > +
> > +  Specifications on the converters can be found at:
> > +    AD7170:
> > +      
> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
> > +    AD7171:
> > +      
> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
> > +    AD7780:
> > +      
> > https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
> > +    AD7781:
> > +      
> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - adi,ad7170
> > +      - adi,ad7171
> > +      - adi,ad7780
> > +      - adi,ad7781
> > +
> > +  reg:
> > +    description:
> > +      Chip select number for the device

No need to add a description.
This is pretty standard.

> > +    maxItems: 1
> > +
> > +  vref-supply:
> > +    description:
> > +      The regulator supply for the ADC reference voltage
> > +    maxItems: 1
> > +

As I see in the driver, it's not vref-supply, it's avdd-supply.

> > +  powerdown-gpios:
> > +    description:
> > +      Must be the device tree identifier of the PDRST pin. If
> > +      specified, it will be asserted during driver probe. As the
> > +      line is active high, it should be marked GPIO_ACTIVE_HIGH.
> > +    maxItems: 1
> > +
> > +  adi,gain-gpios:
> > +    description:
> > +      Must be the device tree identifier of the GAIN pin. Only for
> > +      the ad778x chips. If specified, it will be asserted during
> > +      driver probe. As the line is active low, it should be marked
> > +      GPIO_ACTIVE_LOW.
> > +    maxItems: 1
> > +
> > +  adi,filter-gpios:
> > +    description:
> > +      Must be the device tree identifier of the FILTER pin. Only
> > +      for the ad778x chips. If specified, it will be asserted
> > +      during driver probe. As the line is active low, it should be
> > +      marked GPIO_ACTIVE_LOW.
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - vref-supply
> 
> Is that actually true?  I'd imagine it'll use a stub regulator if
> it isn't supplied.

Hmm, I also think this can be omitted as required.
devm_regulator_get() is used.
devm_regulator_get_exclusive() would be needed to make this required.

> 
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    adc@0 {

The adc@0 block should be included in a spi block.

So, something like

spi0 {
     adc@0 {
            compatible =  "adi,ad7780";
            reg =         <0>;
            avdd-supply = <&vdd_supply>

            powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
            adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
            adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
     };
};

I know this wasn't the case before, but it should be (from what I recall).

> > +      compatible =  "adi,ad7780";
> > +      reg = <0>;
> > +      vref-supply = <&vdd_supply>;
> > +
> > +      powerdown-gpios  = <&gpio0 12 GPIO_ACTIVE_HIGH>;
> > +      adi,gain-gpios   = <&gpio1  5 GPIO_ACTIVE_LOW>;
> > +      adi,filter-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;

Rest looks good.

Thanks
Alex

> > +    };
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
