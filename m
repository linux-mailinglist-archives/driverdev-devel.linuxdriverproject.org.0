Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DDA18EF08
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 06:08:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D551022850;
	Mon, 23 Mar 2020 05:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SDRTP7pUuUJ5; Mon, 23 Mar 2020 05:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F3DD82281C;
	Mon, 23 Mar 2020 05:08:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D5001BF57B
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 05:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0A1C387D81
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 05:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y3usJVrFDaUA for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 05:07:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 321A687D7F
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 05:07:58 +0000 (UTC)
IronPort-SDR: r3eX6wQeqobn4Vij2XRtnaEkFMctDP057dry/cvBVbyCmcS1GL3QwpsstJ+3jrqlA0P+JMpFZU
 nycCK1ti9D0Vij88u5yoK+iaSvgb3I/HZ7xO+4YiOR1Iv92YVDT8kC+DwPf1S1bzbnRU6YajAG
 7SrPW7UFCtILCykElojmgEPThWb8akXeOa8iBnEBLJzGXmUwbofIUIg6h6QAH17s7ZX9LO1pFi
 BmPGf68UzxoO/xrzg1335LyrSYTvUT4t16yceuF0NDyVqFcQO6PFn1x11beva67hYD3uyCmyHy
 ZgY=
X-IronPort-AV: E=Sophos;i="5.72,295,1580799600"; d="scan'208";a="68052307"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Mar 2020 22:07:57 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 22 Mar 2020 22:07:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 22 Mar 2020 22:07:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmvrHVHLF79k44itUfw+XFFpc+nrPAh4TEccZmqFM9zjrKDFPV6UFgPBZS5be2FNAic2DkKLWEBrxOcV5qSbv3OncLuap9VWkwjF0TAsvn2O67rESUo6Wx/Hw4lU7v4zLjmd/aklWl4HLuoaU02dGXzgfGh9Mje0Ii2GfTvhiO/rTOIA/t1587yeSVLrEdKG+WUdApoDcXwalnCftqrYWoP0a6fSns+YABCScSb3VrkI/QCcyr58UZBzcl9hK55LDpvyz0X5wF1CfFULiqNrBcwLC8jd4lWsyS7oeEIKUqNK9/29yMfMrtwFv7RQAOik1P2VRQf0VCxph99s10cl6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dhGAP5MYnL58O5L4fEW2/H/Gn9JYp4UDx4jVxcGQN/g=;
 b=MTn5Y551S9bQUDR2AndD0WbvgO8otgXCFBi/YVpcfzP/oHZIW8JjCR9g9nHtm/xtxSTXm/bbcBQjOL6yrAHhF9rNHkj4SCFBNEYIQ2z7ucy6sdv6cVDf9tmvBspDSS4C/JIL0haLsHkROXclHlCvTeL+3+Oo0wIp9I7ss0pmABuIr2kMARiO06vD8D7xEPOjRwGdl+hEC6qoBo0gSxZ3j6Ik6EAOce9UHKDjoCXDPt3NSJ8jimxdjsfi2oLPKoivprKiyRfn+jLN5vRT7f6bNWbNd3Fnsp7w25JdHMkpGdeKgkdLfZxfWtzy8HjBuvsGvhQGRsRGt6nPiea72RccMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dhGAP5MYnL58O5L4fEW2/H/Gn9JYp4UDx4jVxcGQN/g=;
 b=SwbRUs1X9lFYftHQJm5X95bSypFYcEWuatzbwh4qcEFDT6Jl9m6besqW6tb0yOsTOpMZPx1T8RcVldNaLZoM+DHGjOAcavp+IEwyI3e79RQCsOkJxitgDNxdKCeYOso43J1oC5kJhVzURvDlL0wl7+Nsq9xx/CuMTVNYjYnNIYM=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB2645.namprd11.prod.outlook.com (2603:10b6:a02:c0::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Mon, 23 Mar
 2020 05:07:55 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 05:07:55 +0000
From: <Ajay.Kathat@microchip.com>
To: <robh@kernel.org>
Subject: Re: [PATCH v5 16/17] dt: bindings: net: add microchip,wilc1000.yaml
Thread-Topic: [PATCH v5 16/17] dt: bindings: net: add microchip,wilc1000.yaml
Thread-Index: AQHV9585ZPX9+wP3gkivIpFS8gVFT6hR01AAgAPfdIA=
Date: Mon, 23 Mar 2020 05:07:55 +0000
Message-ID: <6c9f2819-30bb-9e7f-ff26-0b59a22624e6@microchip.com>
References: <20200311121809.5610-1-ajay.kathat@microchip.com>
 <20200311121809.5610-17-ajay.kathat@microchip.com>
 <20200320175920.GA31641@bogus>
In-Reply-To: <20200320175920.GA31641@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ajay.Kathat@microchip.com; 
x-originating-ip: [183.82.16.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77ac9c18-b571-45cb-3e15-08d7cee825a0
x-ms-traffictypediagnostic: BYAPR11MB2645:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB26456F33DB8E8C221063D391E3F00@BYAPR11MB2645.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(346002)(376002)(366004)(396003)(199004)(54906003)(966005)(6512007)(6916009)(4326008)(5660300002)(71200400001)(26005)(107886003)(478600001)(316002)(186003)(91956017)(76116006)(6506007)(53546011)(66476007)(66556008)(64756008)(66446008)(31686004)(6486002)(66946007)(2616005)(31696002)(81166006)(81156014)(2906002)(36756003)(86362001)(8936002)(8676002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2645;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3MpiSVrv7IpQ82rjKvIamJxWqxic+zuUajD3jjdMZcvZiI85pwWK9uvSpLTKB652PPg+3YVkJewtVl/H0Otf0dmwh8J8wSfKW+Sj0OItiDnfZ2HLmRpybgYt9CnoFOqfk7PBdiXZG0sr8ZFGW6kW0N7FiW0xeJK9d4gLvLbJU31R7qMeO/eEiLNztTab8km6bW1D/Xo0UtOUXYtfAyv5MRid/StGHy7qf0IVypmMK4aYm+AflJcz8gff48zhj0KksyIXWBNyAIM6GyPE8sdMIA8MMcDf002LAKK8Gj4lsrzZADIdVEwQkK3hxPRF/5ktGJ+XA/id3iIP6svruMFT+6MLNFVt6zQovMT5EcVIt4RvvgyzBWLZ05xyLUOVb0ZTEOeKlubmamsKXMFV1Zq7fylaT8Y6Bn39IXkin61N8X1kBuyP0gAR6/MrvsHBUsvXE3qnaAXyuoLeqxaoRYP/QXEdr0TcKc+eP1S1/gTW3ThU6/HSAv9qPs+eyhSQNIpQnErEsYjN6Wy6xHilZNUtgIesocn6FAm7SrYoVsJ1oAkUdzTDhD9M+bXJ0P+T29x7
x-ms-exchange-antispam-messagedata: NwGHcWU8IPcU+90VDSYTiYzpPPjX+w4ZTYeNLZYooD18JIFfalHLIK1Le3jZZUv3l+vlcdriPk3C3Wiq+4BwwmVZWVNB8gQFQMoUUFzHuBgczwtIV2/lXE1sXHqP96J84FgOrTh3wSY/rxzgELUS9g==
Content-ID: <9DBF9AC3451B224EA21393AB69E13A52@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 77ac9c18-b571-45cb-3e15-08d7cee825a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 05:07:55.3478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i14tk9i/CcgETbaB76Px+UtNnC9DmvOkbOtSObAhlyvfB+kqhFrNm5X5RiAojh/XokF0QiufDAiEVcN31kpuO6MCVCa4ZYnuRPWWPZc0e1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2645
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Venkateswara.Kaja@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rob,

On 20/03/20 11:29 pm, Rob Herring wrote:
> 
> On Wed, Mar 11, 2020 at 12:18:50PM +0000, Ajay.Kathat@microchip.com wrote:
>> From: Ajay Singh <ajay.kathat@microchip.com>
>>
>> This file describes the binding details to connect wilc1000 device. It's
>> moved from staging to 'Documentation/devicetree/bindings/net/wireless'
>> path.
>>
>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
>> ---
>>  .../net/wireless/microchip,wilc1000.yaml      | 72 +++++++++++++++++++
>>  1 file changed, 72 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
>> new file mode 100644
>> index 000000000000..bc6cc5d3f347
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
>> @@ -0,0 +1,72 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Microchip WILC wireless devicetree bindings
>> +
>> +maintainers:
>> +  - Adham Abozaeid <adham.abozaeid@microchip.com>
>> +  - Ajay Singh <ajay.kathat@microchip.com>
>> +
>> +description:
>> +  The wilc1000 chips can be connected via SPI or SDIO. This document
>> +  describes the binding to connect wilc devices.
>> +
>> +properties:
>> +  compatible:
>> +    const: microchip,wilc1000
>> +
>> +  spi-max-frequency: true
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    description: phandle to the clock connected on rtc clock line.
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    const: rtc
>> +
>> +required:
>> +  - compatible
>> +  - interrupts
>> +
>> +examples:
>> +  - |
>> +    spi1: spi@fc018000 {
> 
> spi {
> 
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      cs-gpios = <&pioB 21 0>;
> 
> Drop this. Not relevant to the example.

Ok.

> 
>> +      wifi@0 {
>> +        compatible = "microchip,wilc1000";
>> +        spi-max-frequency = <48000000>;
>> +        reg = <0>;
>> +        interrupt-parent = <&pioC>;
>> +        interrupts = <27 0>;
>> +        clocks = <&pck1>;
>> +        clock-names = "rtc";
>> +      };
>> +    };
>> +
>> +  - |
>> +    mmc1: mmc@fc000000 {
> 
> Drop the label. Either drop the unit address or add a 'reg' property to
> match.

Ok. I will drop the label and unit address in this.


Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
