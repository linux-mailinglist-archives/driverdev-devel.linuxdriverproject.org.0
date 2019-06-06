Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34214372D2
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 13:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90F8486308;
	Thu,  6 Jun 2019 11:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ANpd-ZmHnPbu; Thu,  6 Jun 2019 11:28:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C9DB862BE;
	Thu,  6 Jun 2019 11:28:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5338B1BF423
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 11:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F29886AFD
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 11:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ZmjjbsoJ5VA for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 11:28:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770087.outbound.protection.outlook.com [40.107.77.87])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 474CC869C9
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 11:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hI74nD7KRye9xHaTcbOo+4UWxTporcUtYbjDdTHOiuE=;
 b=qg4ZEC7VG7Y/tnZPdccSV2DTxgN5xqSoihQv5+ohMOiDc/oVMrlwkZ9MnWMF1M8JVXKIWSkMv2Y7qfGMe0viFb1OkiFUPk3bSV9EdHisfns5HCiqKuSkj4o3TST/maU/VgyuRJbbFiYPLCnApiMvDueQpmwIjfn24ySB+T5wNmY=
Received: from BN6PR03CA0064.namprd03.prod.outlook.com (2603:10b6:404:4c::26)
 by BL2PR03MB545.namprd03.prod.outlook.com (2a01:111:e400:c23::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.12; Thu, 6 Jun
 2019 11:13:57 +0000
Received: from CY1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by BN6PR03CA0064.outlook.office365.com
 (2603:10b6:404:4c::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.14 via Frontend
 Transport; Thu, 6 Jun 2019 11:13:56 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 CY1NAM02FT047.mail.protection.outlook.com (10.152.74.177) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1965.12
 via Frontend Transport; Thu, 6 Jun 2019 11:13:54 +0000
Received: from NWD2HUBCAS8.ad.analog.com (nwd2hubcas8.ad.analog.com
 [10.64.69.108])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x56BDr2L029599
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 6 Jun 2019 04:13:53 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS8.ad.analog.com ([fe80::90a0:b93e:53c6:afee%12]) with mapi id
 14.03.0415.000; Thu, 6 Jun 2019 07:13:53 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "renatogeh@gmail.com" <renatogeh@gmail.com>, "jic23@kernel.org"
 <jic23@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Thread-Topic: [PATCH v2 1/2] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Thread-Index: AQHVEpjnzzdTbL78DUqRDpYuJzSJpqZ94POAgA/5dgCAAPVLAA==
Date: Thu, 6 Jun 2019 11:13:52 +0000
Message-ID: <d70b1ffcc903495cd5eac04e17fd1600e67b9c53.camel@analog.com>
References: <cover.1558746978.git.renatogeh@gmail.com>
 <2426649b2d8224ae72e7706bcb8c4f2c44c581d2.1558746978.git.renatogeh@gmail.com>
 <20190526173911.57ae3d11@archlinux>
 <20190605203554.podktlonhp527iqq@renatolg>
In-Reply-To: <20190605203554.podktlonhp527iqq@renatolg>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.48.65.129]
x-adiroutedonprem: True
Content-ID: <EC1375F4AEF94D4CB95D2D64378F66F1@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(39860400002)(346002)(2980300002)(189003)(199004)(50466002)(106002)(8676002)(8936002)(336012)(6116002)(6306002)(118296001)(436003)(5660300002)(476003)(26005)(3846002)(70206006)(14454004)(486006)(47776003)(426003)(7416002)(2501003)(23676004)(186003)(2486003)(478600001)(76176011)(7696005)(102836004)(229853002)(966005)(246002)(14444005)(126002)(53376002)(86362001)(110136005)(356004)(6246003)(316002)(70586007)(11346002)(7636002)(7736002)(2616005)(446003)(2906002)(305945005)(36756003)(4326008)(54906003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL2PR03MB545; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c735c048-131a-4aee-74dd-08d6ea7010b5
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:BL2PR03MB545; 
X-MS-TrafficTypeDiagnostic: BL2PR03MB545:
X-MS-Exchange-PUrlCount: 6
X-Microsoft-Antispam-PRVS: <BL2PR03MB545E46165CFF1A78F66A284F9170@BL2PR03MB545.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 00603B7EEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Q2/Xow+6YdWcPsdwbqXfco4H54AO5XUbXHSFJ06kpYQwO//PDk3n6nc8MsvZpwoiDOce12DEpaRQPeUKmMWUG9TrCdSRf3jqbexivWSaoKhW6PpUAQcK9BhliCK6ySabKIIGy1CFu/ZPl7lJxil9cu+Drvq2vESbRQqc2LSURH+rGff7wzqpkF8rndnBPCpGAohWy/VRF77f0zsjTyzXnwt8s+hMf9MyVwrRyIHlEsBtiEWnUCK3TGN6hlhrLfg3Rck1eEv4OJLgw2xAXrkjpAhEj7fAeFKatCrunvvf7IFx6j4ATi5IBRtVRFtr2CfYl7ic74yk/1blfHvZ4LxNkyHtpjnv+YExb6XaJN4PL1DzNJJ2LjeB9pUdBI8ADZoLOje1FEi/Zgf2uIEajBm7EKeQjTxzUplq6w0xnAO0xeM=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2019 11:13:54.8603 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c735c048-131a-4aee-74dd-08d6ea7010b5
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR03MB545
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2019-06-05 at 17:35 -0300, Renato Lui Geh wrote:
> [External]
> 
> 
> On 05/26, Jonathan Cameron wrote:
> > On Fri, 24 May 2019 22:26:30 -0300
> > Renato Lui Geh <renatogeh@gmail.com> wrote:
> > 
> > > This patch adds a YAML binding for the Analog Devices AD7780/1 and
> > > AD7170/1 analog-to-digital converters.
> > > 
> > > Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
> > Looks good to me, but I'm still finding my feet with these so will
> > leave it for a few days for others to have time to comment.
> > 
> > Michael, looking for a quick reply from you to say if you are happy
> > being explicitly listed as maintainer for this one, or if you'd
> > rather land it on someone else.  Same applies for patch 2.
> > 
> > Renato, if I seem to have forgotten this in a week or so, feel
> > free to give me a poke. I've been known to loose patches entirely!
> 
> Hi Jonathan,
> 
> Just here to give you a poke. :)
> 
> By the way, in these cases, which would be easier for you? To send you
> an email like I'm doing right now on last week's thread; or to resend
> the entire patch(set)?
> 

I think in this case, maybe let's wait a bit longer.
Jonathan has not been active recently.

I think a [RESEND] would be a good idea when he gets back/active and misses your patchset.

Thanks
Alex

> Thanks,
> Renato
> > Thanks,
> > 
> > Jonathan
> > > ---
> > > Changes in v2:
> > >  - vref-supply to avdd-supply
> > >  - remove avdd-supply from required list
> > >  - include adc block in an spi block
> > > 
> > >  .../bindings/iio/adc/adi,ad7780.txt           | 48 ----------
> > >  .../bindings/iio/adc/adi,ad7780.yaml          | 87 +++++++++++++++++++
> > >  2 files changed, 87 insertions(+), 48 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> > >  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> > > b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> > > deleted file mode 100644
> > > index 440e52555349..000000000000
> > > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> > > +++ /dev/null
> > > @@ -1,48 +0,0 @@
> > > -* Analog Devices AD7170/AD7171/AD7780/AD7781
> > > -
> > > -Data sheets:
> > > -
> > > -- AD7170:
> > > -    * https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
> > > -- AD7171:
> > > -    * https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
> > > -- AD7780:
> > > -    * https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
> > > -- AD7781:
> > > -    * https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
> > > -
> > > -Required properties:
> > > -
> > > -- compatible: should be one of
> > > -    * "adi,ad7170"
> > > -    * "adi,ad7171"
> > > -    * "adi,ad7780"
> > > -    * "adi,ad7781"
> > > -- reg: spi chip select number for the device
> > > -- vref-supply: the regulator supply for the ADC reference voltage
> > > -
> > > -Optional properties:
> > > -
> > > -- powerdown-gpios:  must be the device tree identifier of the PDRST pin. If
> > > -                specified, it will be asserted during driver probe. As the
> > > -                line is active high, it should be marked GPIO_ACTIVE_HIGH.
> > > -- adi,gain-gpios:   must be the device tree identifier of the GAIN pin. Only for
> > > -                the ad778x chips. If specified, it will be asserted during
> > > -                driver probe. As the line is active low, it should be marked
> > > -                GPIO_ACTIVE_LOW.
> > > -- adi,filter-gpios: must be the device tree identifier of the FILTER pin. Only
> > > -                for the ad778x chips. If specified, it will be asserted
> > > -                during driver probe. As the line is active low, it should be
> > > -                marked GPIO_ACTIVE_LOW.
> > > -
> > > -Example:
> > > -
> > > -adc@0 {
> > > -    compatible =  "adi,ad7780";
> > > -    reg =         <0>;
> > > -    vref-supply = <&vdd_supply>
> > > -
> > > -    powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
> > > -    adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
> > > -    adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
> > > -};
> > > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> > > b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> > > new file mode 100644
> > > index 000000000000..d1109416963c
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> > > @@ -0,0 +1,87 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/adc/adi,ad7780.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Analog Devices AD7170/AD7171/AD7780/AD7781 analog to digital converters
> > > +
> > > +maintainers:
> > > +  - Michael Hennerich <michael.hennerich@analog.com>
> > > +
> > > +description: |
> > > +  The ad7780 is a sigma-delta analog to digital converter. This driver provides
> > > +  reading voltage values and status bits from both the ad778x and ad717x series.
> > > +  Its interface also allows writing on the FILTER and GAIN GPIO pins on the
> > > +  ad778x.
> > > +
> > > +  Specifications on the converters can be found at:
> > > +    AD7170:
> > > +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
> > > +    AD7171:
> > > +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
> > > +    AD7780:
> > > +      https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
> > > +    AD7781:
> > > +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - adi,ad7170
> > > +      - adi,ad7171
> > > +      - adi,ad7780
> > > +      - adi,ad7781
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  avdd-supply:
> > > +    description:
> > > +      The regulator supply for the ADC reference voltage.
> > > +    maxItems: 1
> > > +
> > > +  powerdown-gpios:
> > > +    description:
> > > +      Must be the device tree identifier of the PDRST pin. If
> > > +      specified, it will be asserted during driver probe. As the
> > > +      line is active high, it should be marked GPIO_ACTIVE_HIGH.
> > > +    maxItems: 1
> > > +
> > > +  adi,gain-gpios:
> > > +    description:
> > > +      Must be the device tree identifier of the GAIN pin. Only for
> > > +      the ad778x chips. If specified, it will be asserted during
> > > +      driver probe. As the line is active low, it should be marked
> > > +      GPIO_ACTIVE_LOW.
> > > +    maxItems: 1
> > > +
> > > +  adi,filter-gpios:
> > > +    description:
> > > +      Must be the device tree identifier of the FILTER pin. Only
> > > +      for the ad778x chips. If specified, it will be asserted
> > > +      during driver probe. As the line is active low, it should be
> > > +      marked GPIO_ACTIVE_LOW.
> > > +    maxItems: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +    spi0 {
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +
> > > +        adc@0 {
> > > +            compatible = "adi,ad7780";
> > > +            reg = <0>;
> > > +
> > > +            avdd-supply      = <&vdd_supply>;
> > > +            powerdown-gpios  = <&gpio0 12 GPIO_ACTIVE_HIGH>;
> > > +            adi,gain-gpios   = <&gpio1  5 GPIO_ACTIVE_LOW>;
> > > +            adi,filter-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
> > > +        };
> > > +    };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
