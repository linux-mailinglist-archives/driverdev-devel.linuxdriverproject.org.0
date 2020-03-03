Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2261775DC
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 13:28:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DDDEA2050A;
	Tue,  3 Mar 2020 12:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id odVKaxwh3o38; Tue,  3 Mar 2020 12:28:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35DC8204E6;
	Tue,  3 Mar 2020 12:28:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B68271BF317
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 12:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADB7A86F13
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 12:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9HH5C5c5OXUU for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 12:28:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B592986E88
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 12:28:14 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: L1OlvvkVQZx8/8Vmr9raaEqiq2XFcIfG5Fy0U/vgfHewXw3fU0fBye6+H2hZkhgbhB5ELZJplH
 KFMHeNK9AVsyCogTTuR1/sSfD195PXopOjYZfPtevzMKZBxznG9l55h1EZwrzMKIgmHm0IwZ6E
 H8YTbcte/VM+6KJedv+VMuEvyjD0cnyjUNJK7Yz8aCQpKa6+p+IRw8O2sBN+ul+adDnzfX4PIt
 PXcOolx0dDT64Fuf0uYaMuBNbIdcio7MdDujPsgtT/sJHp5/OauehB5fqvHcYZf3pfphoqS5oo
 7AI=
X-IronPort-AV: E=Sophos;i="5.70,511,1574146800"; 
   d="scan'208";a="4309743"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Mar 2020 05:28:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Mar 2020 05:28:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 3 Mar 2020 05:28:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cayxk7D02K742c8mwFe8rXXr8ITAc6KHXiVu2O7+izlJ7Lk5aIbPH9JYDh/3FjxmVgfTN33CGEUBRFQMvDpLQR/sVFgrDqZLJUfGEgx9oatiGzLcvwTHh671SOgbEUSU8tvu/c9x+fX1Mk5nmtKCw57MA30R+9gC7HehuoWEz3C0HJ7Mb9k8n5xWzAt7Le8EiKtTDhLO9QQoyXo0LrxGYVLXwhRQK2/3zJJb4xYcu/afYkT0JiG6OHsWzMD7MW3w79kK9D3iR0eQXanMiGPvtcIDbyWTjHI7tw9hOjZyVN2umuXgCaBBV9+oSNN9ZhIZktnVGkq5ZxcNSmg1t36h3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F4UYHSQJTghL2axWoO+U0ypyro3tNhbjS2+pn7gwicc=;
 b=N4kUdbjSPfaSjb/Tc+1JVwgFtSe09XsV3mI46yZhdT6nDkeOGiifoG+0aR4t3v+Lx7yf6bFWsknSRieHKqB81VI8p5X/MlGL1r7z6zvf5/04btlfMxUdNgdMydE4tpND5NiH3P2bdU6IR//mM4gCsA8+FxTW/C+dKzBIy5T7t5Z0vwJVXW+CrUVgMmAJr8yOlUh/p8jRuD5ywK9+HGKvIeRImzxl8Ru0sZhammgK3TyGZge86YLtIEVKreiKo7sRmglLAS/7mP3hiIVjuxzKlC+dLVw9MnhV87rO+NBKJA5mQdCqHwlw/zOLEXA3nL9W/ONQ3pwWtgXW0/Xvd3sryg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F4UYHSQJTghL2axWoO+U0ypyro3tNhbjS2+pn7gwicc=;
 b=CsKyoEsIrceASe6K+Gufv0oYuBZcDHjo3LM+PzP/tz2L+bNZWuDGMmUTp7+ODCDwjnt3+GMr+mthe/Ro8KGqpfazHIft5N9j0EwPAJiJ29gMsF6mofjbGWzdH1aNxgwnHNjqGHH3Z3GwnTo4joLzLNEHYDayiDFmir1KQT5qQUE=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1281.namprd11.prod.outlook.com (2603:10b6:404:47::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Tue, 3 Mar
 2020 12:28:11 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 12:28:10 +0000
From: <Ajay.Kathat@microchip.com>
To: <robh@kernel.org>
Subject: Re: [PATCH v4 16/18] dt: bindings: net: add
 microchip,wilc1000,sdio.yaml
Thread-Topic: [PATCH v4 16/18] dt: bindings: net: add
 microchip,wilc1000,sdio.yaml
Thread-Index: AQHV8LB4evB5uOBIuUadeV/L9u3vJKg2HGIAgACwowA=
Date: Tue, 3 Mar 2020 12:28:10 +0000
Message-ID: <3b22e640-bce1-7b09-8c75-f53d241cf9bc@microchip.com>
References: <20200302163414.4342-1-ajay.kathat@microchip.com>
 <20200302163414.4342-17-ajay.kathat@microchip.com>
 <20200303015558.GA6876@bogus>
In-Reply-To: <20200303015558.GA6876@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01bc8272-0059-498c-ed78-08d7bf6e561c
x-ms-traffictypediagnostic: BN6PR11MB1281:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1281093C1F22F9EF693E08B5E3E40@BN6PR11MB1281.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(6512007)(36756003)(6486002)(26005)(498600001)(966005)(66946007)(2616005)(71200400001)(31696002)(86362001)(66446008)(66556008)(76116006)(186003)(91956017)(66476007)(64756008)(4326008)(31686004)(8936002)(8676002)(53546011)(81166006)(81156014)(5660300002)(6506007)(6916009)(54906003)(107886003)(2906002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1281;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fby7MNgNfaBWB+dMuwE4vPWoUn2zLbf5tyFuLNEdoUUTUhQVrSE391grWGRRSpN3FP4zUZ/WAxzKmx3vFysQjqHeOgwGJ6ZFRfl3FuUUolcvJppk9GSWcVsp6MCBwbwP44fYzLYvoIXE7nb0Rgef+wgo5Q6l7NjFGjq8ZS4xavH39W7Q9U+JKxccM4qQecDC1wIdWKa5OSI1h/p3OseXyMvbUpUylUFoLK/wU2/S7aGg4tDxAFyYptJ6Q/8CeN7CkeFrn1QTiJH/C/SP42VlJgpcIe37Z9d94IMKb7ZdE45gi4UCkbmOg/6ggN5wpCHkWe8e4FDeQHAddx64CasHDDwFkkYlvgAvXTIEdqRqJRrxttli0vGJ5MYzwiK1kmbXb4vokwIF7I5y/z4caKolNoNE2/Fu9iNbqN0KBZ7H2T8M/8d/9/mG0Blf+2vIgInnl2YNE+Zj6GyMXz98qE/fh2dwMk8sLI5nYIGvs1u1P37QfTilvGphTPnbhxDAmi9G3c6b+RenkuJehf913Aw0Lxt8Djl75Bz38n7gQNmRpLY5zt7REWPKHh/z/YfvL5GG
x-ms-exchange-antispam-messagedata: 5QJ28rpgWo1rfL6mjTNtqb1twmq7a+K4XJHZ5JsKA4YPbVUTz3cF+Oi8/4+4Udq89Yr295b8YFxt2FhxRf0OXx9RsUekwBd446Jgwn4iNs1QXQYGmpZKOjCHTS23t0aHF4/NmopC/kGK1dWmxPuLEA==
Content-ID: <38F2A6F8940ABB42821B0F2AEA36D234@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 01bc8272-0059-498c-ed78-08d7bf6e561c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 12:28:10.6439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3xwTtuC5zOd8JQxY6Tk1MqStVUz7NueAXGJjZlE+Ih25PqvTFyV6l4TRFwT1rbN7tydry5Z3U6teMT3IIIIYvP+KneNv6Xrqnrw2gakkrEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1281
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

Thanks for reviewing.

On 03/03/20 7:25 am, Rob Herring wrote:
> 
> On Mon, Mar 02, 2020 at 04:34:40PM +0000, Ajay.Kathat@microchip.com wrote:
>> From: Ajay Singh <ajay.kathat@microchip.com>
>>
>> Moved '/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml' to
>> 'Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml'.
>>
>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
>> ---
>>  .../net/wireless/microchip,wilc1000,sdio.yaml | 68 +++++++++++++++++++
>>  1 file changed, 68 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml
>> new file mode 100644
>> index 000000000000..b338f569f7e2
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml
>> @@ -0,0 +1,68 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000,sdio.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Microchip WILC wireless SDIO devicetree bindings
>> +
>> +maintainers:
>> +  - Adham Abozaeid <adham.abozaeid@microchip.com>
>> +  - Ajay Singh <ajay.kathat@microchip.com>
>> +
>> +description:
>> +  The wilc1000 chips can be connected via SDIO. The node is used to
>> +  specify child node to the SDIO controller that connects the device
>> +  to the system.
>> +
>> +properties:
>> +  compatible:
>> +    const: microchip,wilc1000-sdio
>> +
>> +  irq-gpios:
> 
> Unless you need GPIO control of the line, use 'interrupts' instead.

I will check this.

> 
>> +    description: The GPIO phandle connect to a host IRQ.
>> +    maxItems: 1
>> +
>> +  reg:
>> +    description: Slot ID used in the controller.
> 
> No, it's the function number. But you can just drop this.
> 

Ok. I will drop this description.

>> +    maxItems: 1
>> +
>> +  clocks:
>> +    description: phandle to the clock connected on rtc clock line.
>> +    maxItems: 1
>> +
>> +  bus-width:
> 
> I believe this is defined to go in the parent node.
> 

In that case, I think we can drop this description here by moving it to
parent node. right?

>> +    description: The number of data lines wired up the slot.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - enum: [1, 4, 8]
>> +      - default: 1
>> +
>> +required:
>> +  - compatible
>> +  - irq-gpios
>> +  - reg
>> +
>> +examples:
>> +  - |
>> +    mmc1: mmc@fc000000 {
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      pinctrl-names = "default";
>> +      pinctrl-0 = <&pinctrl_mmc1_clk_cmd_dat0 &pinctrl_mmc1_dat1_3>;
>> +      non-removable;
>> +      vmmc-supply = <&vcc_mmc1_reg>;
>> +      vqmmc-supply = <&vcc_3v3_reg>;
>> +      status = "okay";
> 
> Don't show 'status' in examples.
> 

OK. I will remove this.

>> +      wilc_sdio@0 {
> 
> wifi@0
> 
>> +        compatible = "microchip,wilc1000-sdio";
>> +          irq-gpios = <&pioC 27 0>;
>> +          reg = <0>;
>> +          clocks = <&pck1>;
>> +          clock-names = "rtc_clk";
>> +          assigned-clocks = <&pck1>;
>> +          assigned-clock-rates = <32768>;
>> +          status = "okay";

I will remove 'status' here also.

>> +          bus-width = <4>;

I will move this property to parent node.

>> +        };
>> +    };
>> --
>> 2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
