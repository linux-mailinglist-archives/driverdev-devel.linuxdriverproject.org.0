Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA0117764B
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 13:45:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13A3B20500;
	Tue,  3 Mar 2020 12:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F8redzYdAG+A; Tue,  3 Mar 2020 12:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6A53204E0;
	Tue,  3 Mar 2020 12:45:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D465A1BF317
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 12:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D0C0084BAD
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 12:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j1qHbD8A+FQU for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 12:45:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 126FB821E2
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 12:45:39 +0000 (UTC)
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
IronPort-SDR: 0ELipmSpY0yuRvaB9U0IIrLeOSNRooDud7yjFirf26spJA+WmqE50oR1k9DZ7uJ0hs7JOSQPdc
 7RMS/ltBjGngUfF3Lzs3pXvLHIQ/9T6MTNGQAFyMyigyi0TSRsHYn0w9e5QDIupnHDzb3d/oqM
 pWYBtC11OHKu7Xhgsatoe76RpmgfpfgbQAv9i2+DD7/DNdnr9xTlzcDca/ry2alOGisGD3YlM8
 yCZ2qb0dIxbsZvv0lVdBDX1Dyvtrv9BXdb9k0Yjy8/HiDK4WLmV7yXHCZBJdCmfeL9qemsbygw
 o90=
X-IronPort-AV: E=Sophos;i="5.70,511,1574146800"; d="scan'208";a="67700019"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Mar 2020 05:45:38 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Mar 2020 05:45:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 3 Mar 2020 05:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IOWXmUalM6HMx3h5N9gGh0bl5GXNr3JrRWdPGtjre0ifk/9iFw6o6NfbRgwrY9ckwXVXJTKkkjGt0d/Y2gDJinjOITfE77FkcHITAhWsssDDvCHwacep4sUg3I9zZIfvDQL8AlcGTUrD7rijM1Y3NBg5CzvRfs/CCAPClesoUvmw//fnZUllYCqP2m/HRe/PG0P9DJcpcW0mz3F08jWWquqavSOleBJnrkOcG+BmMva13TYqE/luQS9Tj3FGpW6tevT5dCU0jUN6h9X18yXN6rXclJ7ARDG/Bf/2uiG788qFPOew3XCJMYqm9ZvbbNz4KAj020W9PLhWK8o+Zssvnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qxvc+zHjkHf/FXX1fc+LF33SgT1Z8D90I0RNo83tpwY=;
 b=JyvmyVH9Xmdrw+HOdcl+DdwbMIGGIXoTWeRfmILZl5MuIfj7mRWaz1OXiK57bWlLOJtG41W5R4hbZITI8N8Ry96emTadIRNJhmPq/HoeTnLH325Bld3/ND8LGG0s1o8E7Z9vq+m5WSQhSB8KJcxuoGR3yu11nVsM/GmxZwbs4IRV0GKqAa56F3QNFz1V0y28hPAJmWi1KLXBUSxoahcAssJzCTDJfQZX1I3DCheaR1//J4Ac1l/mZ5sEikLdOmhz3Hx5flKmD1zM8KATJwzUX7PvRRtX3gQBELtP7rd/f0VU8clZ2V3SVrIOwVuFHUSpwDdQXnlqlW8KETnNmbhH3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qxvc+zHjkHf/FXX1fc+LF33SgT1Z8D90I0RNo83tpwY=;
 b=Lv4RRlJddPBfXJwiPR2kjzLPiFiLpPvVOgoF1RR2BdJLrHz2DJxfM358MgGPkQOwMN7lDffujyy/+cL61JV7zRlJc00P/3hM3EYP1ZFymSRDr0dSjmIyOE58TElxEAoxx9h6HyK8TE7bnw9WkjmiLuEjmbXmN2NMxXt5kwvSFmM=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1380.namprd11.prod.outlook.com (2603:10b6:404:3c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Tue, 3 Mar
 2020 12:45:36 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 12:45:36 +0000
From: <Ajay.Kathat@microchip.com>
To: <robh@kernel.org>
Subject: Re: [PATCH v4 17/18] dt: bindings: net: add
 microchip,wilc1000,spi.yaml
Thread-Topic: [PATCH v4 17/18] dt: bindings: net: add
 microchip,wilc1000,spi.yaml
Thread-Index: AQHV8LB4yeo407y5WkaMy3sgQWSapKg2HjYAgACzr4A=
Date: Tue, 3 Mar 2020 12:45:36 +0000
Message-ID: <e24e24b9-f099-88f7-b7bd-ed53bf0a6a9d@microchip.com>
References: <20200302163414.4342-1-ajay.kathat@microchip.com>
 <20200302163414.4342-18-ajay.kathat@microchip.com>
 <20200303020230.GA15543@bogus>
In-Reply-To: <20200303020230.GA15543@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 747839f3-e314-44c4-a20c-08d7bf70c580
x-ms-traffictypediagnostic: BN6PR11MB1380:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1380DE10BB05F727B237C839E3E40@BN6PR11MB1380.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(346002)(376002)(396003)(189003)(199004)(2906002)(81166006)(81156014)(6486002)(6916009)(6512007)(31686004)(966005)(8936002)(478600001)(31696002)(6506007)(8676002)(86362001)(36756003)(26005)(91956017)(53546011)(186003)(316002)(66476007)(64756008)(66446008)(54906003)(5660300002)(76116006)(66946007)(66556008)(4326008)(2616005)(71200400001)(107886003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1380;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KbbudKWTW787spHnz0XTOYF7ryYrIy9IMGlp3zNphnUE8+nQbUih5w8Se3yVouNi80wmN+KgNT6qHrr2TlammR09zq5EdvSRITuIjOVDdmnZ55303U3slRvw3lNM/rcaqNki1fMyXNmJLZaWZIpIYUNY7cRh0zaCZAkFNuKv/oluGvaMY5wW0SFktVbBq/zqUE24KRyPm1uqYK8SbXj+fjUwHU5/5r4ALhprlVv67IvfxMRCxYUP+3h58zRPsQEUGAKO8LGWqDLivfvNLBSY+Kj8LcdXwEKmibGm3Zs+R/LFAFmL65YTmNSfoNFNxlYpmMdiXPWZuMpsVMCUUvzMsSlDIJfcGK8CUovWn6PO+aEO06f3mIcrrJdP6Su6XxSVRokWtK5PTXmVLd3YnrxHQ1cgocQnj4CZCLN8xbrU6TgD0+OPFvqGxHkuCYR0fvV4AZKv0fiLxwfvc4gdFZeD6lUbTbTkd7zcIrwlqqCyTtUG8w8UD4OaUcU6so/z1/+0heawmeGnqLdWD/Hk7rG5+YX+izVc64wCfiJ7av3WAAdeYQwZuroFesCC3f1pPWfx
x-ms-exchange-antispam-messagedata: w8YuVjzDixL46zB0QapalQuNwPq/oBCgAE1HBJugbDmbcSGbcg01yxrYeyblT0sPRvpUYmvNhRNc6Bou4vSo8+RuoaXAYIjszbRmXJCjoufmWowpmfALiLRARyfEJaFrlxs9tpSOhBkCsOHXWsLsVQ==
Content-ID: <35748BA7943C354FB3709C6521823519@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 747839f3-e314-44c4-a20c-08d7bf70c580
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 12:45:36.4390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9d74sUcEi2WlgXk9yokS4qxkY4Da2+2UYgNJ5y7kEmPqUjgYQ9x+i6KbHXtFqkMH3HOc/LJkjDjpeKWt20XuhO8m+O3q2WRzqPgGGDwHqaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1380
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



On 03/03/20 7:32 am, Rob Herring wrote:
> 
> On Mon, Mar 02, 2020 at 04:34:40PM +0000, Ajay.Kathat@microchip.com wrote:
>> From: Ajay Singh <ajay.kathat@microchip.com>
>>
>> Moved '/drivers/staging/wilc1000//microchip,wilc1000,spi.yaml' to
>> 'Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml'.
> 
> Not a useful changelog.
> 

Sure. I will update the changelog.

> I think this should be combined with the SDIO version. Details below.
> 
>>
>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
>> ---
>>  .../net/wireless/microchip,wilc1000,spi.yaml  | 61 +++++++++++++++++++
>>  1 file changed, 61 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml
>> new file mode 100644
>> index 000000000000..cc8ed64ce627
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml
>> @@ -0,0 +1,61 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000,spi.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Microchip WILC wireless SPI devicetree bindings
>> +
>> +maintainers:
>> +  - Adham Abozaeid <adham.abozaeid@microchip.com>
>> +  - Ajay Singh <ajay.kathat@microchip.com>
>> +
>> +description:
>> +  The wilc1000 chips can be connected via SPI. This document describes
>> +  the binding for the SPI connected module.
>> +
>> +properties:
>> +  compatible:
>> +    const: microchip,wilc1000-spi
> 
> You can drop '-spi' (and '-sdio'). They don't need to be different
> because they already sit on different buses.
> 

In that case, we should use only a single DT binding documentation and
keep both example inside the same file i.e We will have single
properties descriptions with 2 examples(sdio/spi) in a single DT binding
document. Is my understanding correct?

>> +
>> +  spi-max-frequency:
>> +    description: Maximum SPI clocking speed of device in Hz.
>> +    maxItems: 1
>> +
>> +  reg:
>> +    description: Chip select address of device.
>> +    maxItems: 1
>> +
>> +  irq-gpios:
>> +    description: The GPIO phandle connect to a host IRQ.
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    description: phandle to the clock connected on rtc clock line.
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - spi-max-frequency
> 
> This should not be required.
> 

Ok. I will drop this.

>> +  - reg
>> +  - irq-gpios
>> +
>> +examples:
>> +  - |
>> +    spi1: spi@fc018000 {
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      cs-gpios = <&pioB 21 0>;
>> +      status = "okay";
>> +      wilc_spi@0 {
>> +        compatible = "microchip,wilc1000-spi";
>> +        spi-max-frequency = <48000000>;
>> +        reg = <0>;
>> +        irq-gpios = <&pioC 27 0>;
>> +        clocks = <&pck1>;
>> +        clock-names = "rtc_clk";
> 
> Not documented. '_clk' is redundant.
> 

Ok. I will update the clock-names and add the description.

>> +        assigned-clocks = <&pck1>;
>> +        assigned-clock-rates = <32768>;
> 
> Not documented.
> 

Ok. I will add the description.


Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
