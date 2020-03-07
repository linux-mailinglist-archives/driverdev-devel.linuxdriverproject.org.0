Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D2A17CD00
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Mar 2020 09:51:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B9C620419;
	Sat,  7 Mar 2020 08:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJ95TiIP4QIK; Sat,  7 Mar 2020 08:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 61A91203CE;
	Sat,  7 Mar 2020 08:51:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E40A61BF2BF
 for <devel@linuxdriverproject.org>; Sat,  7 Mar 2020 08:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF7908765D
 for <devel@linuxdriverproject.org>; Sat,  7 Mar 2020 08:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mYcEmXVuq1es for <devel@linuxdriverproject.org>;
 Sat,  7 Mar 2020 08:50:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E94BC84EB0
 for <devel@driverdev.osuosl.org>; Sat,  7 Mar 2020 08:50:58 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: BYzFmIas2J56mLER/TmmFc8tFoTJD9h7WqxcoAsuirEoAB2tkoUcmPHQNeaHS4FaG059vWzjC0
 ZF+iAGnWIFaBajOI/9YU+IZS2dL1UsugNP/oOvgeosfUsBoJDlVX3zCJpZUHCtscUfdVq31wNJ
 OqmnN2aJeZxZJECWAJNjawfD7X1ELYFqB3XZ4GevPutFME2yVc4TpHeYw8keyWLuuRYmZ5w365
 D5RFK6fcX38rkXH4hDKa6Jv3gSJDc+XAsSL2uklbbP5JtadxIkMIsbBiSEeyTklp4ao9MetjkX
 pRQ=
X-IronPort-AV: E=Sophos;i="5.70,525,1574146800"; d="scan'208";a="68188713"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Mar 2020 01:50:57 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 7 Mar 2020 01:50:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 7 Mar 2020 01:50:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dCZQVbjzQ479BulVT5zEvZ7zmhf31EhBOqqpxCP7fLwdi9r4F3BcHSn4qRdaFUuXSSEPTi7jgjuWlPsNhS/Ki+08/YfTqiLDRxhlpt/ym/hsF7VKPgfr06p7JDxROYkGkg6ZJqXTNHdCHKMN01ZPMrol67INdhJybIO1dYnz0fHXswLZuan/dkam9I5W7lCy6s3hy4InJg1wGk3P7h5nm2RPE8tznOvF+wqMS4U8L17lO5xCVoX6sJePlfwsTUV/S2iiG8yX6ZX9imax8mQHiOfIrseKnIXsMf5wlQd1L4zAp2E6SrEjBq2b9zARfctUIrCjPurYa4X5jK8Lh/vygw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRJ49oH4OJ+kR80o0LBl+Eu1lcsBDpsMElpPgJ5mZso=;
 b=FmrKX6j7XKjns4EYH+I8Q4/nlTHBZu4ve/BblmWSJ9Jt33wZx0JgpSHWF+tfqLFKWuKm0UD42Kn070xvvASAyQIKEl7Aia3o8AEWp2RRTHeE8u3D/gdcdafXhxy+MqeqiBxioESOwPNK87LjVd66Nwl+7NCytY23IfGzOQq10jSr+iMh/nRefRBeqEW7j+UIJeltPo4w/L2b2c87CA2BN/oj81o+MfPF1lAsL08yV0du6XRIb8DIfCXQAZ0JaYXG10aXl8HgLetzhYLFzcPfQP6oa3W9RiMGBkktxM7gR//qFOJM0Uzu87DcogHiKAjCeXpIi4nNPMR/r0jvqF3++w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRJ49oH4OJ+kR80o0LBl+Eu1lcsBDpsMElpPgJ5mZso=;
 b=VX4KBJif0R2uWqPa55lqfvz+aYvJsbYfkUpDBD5Uwws9lcyjtQoTKcxIx8Df36VrN44ZOv0IT44ANIxTDHK4T5GTiTMsxGauT40Sxs4Lh0zKnv+RcAoBXO62dGpZBUyNnJVoDpSSkrSxbkD1GrKbXJ4KD75B9bwUp/glfSiXzRU=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1601.namprd11.prod.outlook.com (2603:10b6:405:f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Sat, 7 Mar
 2020 08:50:53 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::a0be:9e7c:714e:e2bd]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::a0be:9e7c:714e:e2bd%6]) with mapi id 15.20.2793.013; Sat, 7 Mar 2020
 08:50:53 +0000
From: <Ajay.Kathat@microchip.com>
To: <robh@kernel.org>
Subject: Re: [PATCH 1/2] staging: wilc1000: use 'interrupts' property instead
 of 'irq-gpio'
Thread-Topic: [PATCH 1/2] staging: wilc1000: use 'interrupts' property instead
 of 'irq-gpio'
Thread-Index: AQHV88WupU/867Y5g0u3Z47AmpcYLag7shyAgAEhWwA=
Date: Sat, 7 Mar 2020 08:50:53 +0000
Message-ID: <4408ce4a-1914-ae73-e3e0-15cf2d283a6c@microchip.com>
References: <20200306144400.4269-1-ajay.kathat@microchip.com>
 <20200306144400.4269-2-ajay.kathat@microchip.com>
 <CAL_JsqKP-9bBMpkvMfphyAfdeVd44=pYDSOY=fSsx5xYkJPCjA@mail.gmail.com>
In-Reply-To: <CAL_JsqKP-9bBMpkvMfphyAfdeVd44=pYDSOY=fSsx5xYkJPCjA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [49.205.217.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b8eafa6-93d6-406c-29a0-08d7c274a4f5
x-ms-traffictypediagnostic: BN6PR11MB1601:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1601BAE70136DEAED483C4EDE3E00@BN6PR11MB1601.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(396003)(136003)(39860400002)(199004)(189003)(76116006)(66446008)(66946007)(91956017)(66556008)(966005)(5660300002)(64756008)(66476007)(36756003)(71200400001)(53546011)(478600001)(6486002)(6506007)(2616005)(31696002)(54906003)(4326008)(26005)(31686004)(86362001)(316002)(6512007)(81156014)(81166006)(8936002)(186003)(6916009)(2906002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1601;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jzfamJ9BJT19qO4c685Tu+Wh9RT1EXwZDXxkBA25Ce8DIuWZWTj1coBXfstjcjBiR0OxVeOt1yhUZO55ZCkeTJzztTubA2RuzlUMgXhW7EpR5WCHx1kS3cW12tAWSMQu2JYnqn/Fl5LGo8jw8jU+tWE4pyCXuDKB7+KNDVWkzYYHlKOQZbsKw0dg3/0bFTKrVivqU0EHv/23BoklM1AguNRe0agmg385OjYb5mkiXMvZC221AU5em+yi/ntjGVOtRvIpfg96B0ttK+Gmo3sXu/xQiscmTAkVoxuDM0lrdIqK4XzKyFt/AkXcCYnzhvl5aDhUClZhkN5LWfztx7PB4RRYiTE+chHwrOYcWrV/35qfGvx8UCAqyempELIr/+gtKeJwta67lyurJFkpVK3ewTuui4PcbP8Gu0XaszA4uvdnSdMNQLlXVmA99PPMuMOIXAONXqIpCR/67wc3+G2DnvGU7FC7NbuYjidSUnBnXtTn4/paCleLSqtATIjJArgq
x-ms-exchange-antispam-messagedata: IX3y6VMDeo22rl9O/7gG7k/zQ8kNV2GfNGvg6ZVjos5Z/Wk7avmNy3NEK+kgYwblLuBWxhUTKmYNI3Gy5pVFUFtujNOh3xK+50Wqjv8GPBKEjSrziuF68BsDjhZWQH14GIBQG+FJXdSsgAOPAEeThQ==
Content-ID: <8AA77E5AFC563449B59A4572E278CDD4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b8eafa6-93d6-406c-29a0-08d7c274a4f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 08:50:53.3830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lQ8NpNIbWS+eZ0VHNtX6CvyMtr+NK3hgOP/Fd1fLN3/NAkr3ct5lkbuN9UAquffSMxWcADKaPswh8HjRj68RzbHdVNJdIa3Ce9lRjQ6yiIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1601
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
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rob,

On 06/03/20 9:05 pm, Rob Herring wrote:
> 
> On Fri, Mar 6, 2020 at 8:44 AM <Ajay.Kathat@microchip.com> wrote:
>>
>> From: Ajay Singh <ajay.kathat@microchip.com>
>>
>> Make use of 'interrupts' property instead of using gpio for handling
>> the interrupt as suggested in [1].
>>
>> [1]. https://lore.kernel.org/linux-wireless/20200303015558.GA6876@bogus/
>>
>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
>> ---
>>  .../net/wireless/microchip,wilc1000.yaml      | 79 +++++++++++++++++++
>>  .../wilc1000/microchip,wilc1000,sdio.yaml     |  8 +-
>>  .../wilc1000/microchip,wilc1000,spi.yaml      |  8 +-
> 
> Bindings should be a separate patch.
> 

Ok. I will add them in separate patch.

>>  drivers/staging/wilc1000/netdev.c             | 24 ++----
>>  drivers/staging/wilc1000/netdev.h             |  1 -
>>  drivers/staging/wilc1000/sdio.c               | 31 +++-----
>>  drivers/staging/wilc1000/spi.c                | 15 +---
>>  drivers/staging/wilc1000/wlan.h               |  1 -
>>  8 files changed, 108 insertions(+), 59 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
>> new file mode 100644
>> index 000000000000..a1914449ad07
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
>> @@ -0,0 +1,79 @@
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
>> +  spi-max-frequency:
>> +    description: Maximum SPI clocking speed of device in Hz.
>> +    maxItems: 1
> 
> No need to redefine a common property. Just:
> 
> spi-max-frequency: true
> 
Ok. I will changes this.

>> +
>> +  reg:
>> +    description: Chip select address of device.
> 
> Drop this.
>

Ok.

>> +    maxItems: 1
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
>> +  - reg
>> +  - interrupts
>> +
>> +examples:
>> +  - |
>> +    spi1: spi@fc018000 {
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      cs-gpios = <&pioB 21 0>;
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
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      pinctrl-names = "default";
>> +      pinctrl-0 = <&pinctrl_mmc1_clk_cmd_dat0 &pinctrl_mmc1_dat1_3>;
>> +      non-removable;
>> +      vmmc-supply = <&vcc_mmc1_reg>;
>> +      vqmmc-supply = <&vcc_3v3_reg>;
>> +      bus-width = <4>;
>> +      wifi@0 {
>> +        compatible = "microchip,wilc1000";
>> +        reg = <0>;
>> +        interrupt-parent = <&pioC>;
>> +        interrupts = <27 0>;
>> +        clocks = <&pck1>;
>> +        clock-names = "rtc";
>> +      };
>> +    };
>> diff --git a/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml b/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml
>> index b338f569f7e2..9df7327bc668 100644
>> --- a/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml
>> +++ b/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml
> 
> Why aren't you just removing this file and the spi one?


The binding file wrongly got added in this patch. It needs to be added
only to '/driver/staging/wilc1000'. I will update this and send v2
series by keeping binding patch separate from code changes.

Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
