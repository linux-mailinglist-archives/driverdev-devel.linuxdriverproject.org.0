Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D2A10897F
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 08:51:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF444204CC;
	Mon, 25 Nov 2019 07:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SPJvYiudK810; Mon, 25 Nov 2019 07:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 409AE204B6;
	Mon, 25 Nov 2019 07:51:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F0521BF2B5
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 07:51:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 680D186274
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 07:51:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UK6JTXoOg-yy for <devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 07:51:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 657A98528B
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 07:51:34 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAP7m6Us002273; Mon, 25 Nov 2019 02:51:33 -0500
Received: from nam05-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2058.outbound.protection.outlook.com [104.47.49.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 2wf2j4kwvg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Nov 2019 02:51:33 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WxCuNA74ZxHoi9HsPDiE37MXmOhl2n/d9hREYL3/4etDzt4j8ybrcGEaHQiH9L1Go/cZiKfox6En08WYM7ntAIMJ3MxBlHEYI5fgvrzoSsue/99+R1DoxVxBNkgVjK6pxAvNuNslUylShjLrj3Bh2do82vO1mE0jphbqyVCEd5BiihM0ZIMR0XAlAhlpb+EfXYhmZb58pjlgORor8X19JaSNHRwPhdcDCpdCSEsOtmnHi0ACskwcHoQSLCESJLyTRHpBjxoTErZ6ZhztS0bYha95LVq5P+nz2/p/YVF8yln+fegjwhBd852k1+rjD8Xkrrb+zxXMf7cejSu9rx+u2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M4pPE28Sh+UNgIhDQ4LJ382hrM/UsoSKF57uJcJVgQ0=;
 b=hjbkrJ5CrXk8e+4WnTNtNxYdlfl8nWJtu+NQdWj1QG2uqr9YQj09TM8nTJ+QKNSn8+eUiZNUxJ+sDOPq1imHExD/skMS2bAh4UOSN3T26Aml4OkOaPucXJrO9PkQRrCgl8BwAKG6fmkdK1ajU/EMQaBty0w6Asn7tFbiFMJnnEYQnoP5TaIJ47f2Pbe0QUfX0Q87VD57s2Z/a/WD7RZYCEVTlEwhV2qXvYKrU44RwQIx0Ldzmy8bhMLsGQv64Wcx7AYvnQ9DngjJLyvYlDVCW2/S5S/QjBgTWkdt/bwAGu4hHiV1TpQ86vYKF2wdd+/yowwrS88t1e0MdMcni7vZkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M4pPE28Sh+UNgIhDQ4LJ382hrM/UsoSKF57uJcJVgQ0=;
 b=0x0q49IH0FZglG4QDpVpeGH/vl88vLqathjZuR3dYbb97tXGQPeEJYv5vq+xSBImc0E+aYK654SYnL38CqbbJ+7OBIIWEZ1Ak03IDNPaU+2kTEbEvjMSXwuJuiV2V9hckkyLytL7LScbFYRi+pEPaXgyf/aya4fSUq/uUTyCNAM=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5223.namprd03.prod.outlook.com (20.180.15.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.22; Mon, 25 Nov 2019 07:51:30 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 07:51:30 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "jic23@kernel.org" <jic23@kernel.org>, "rodrigorsdc@gmail.com"
 <rodrigorsdc@gmail.com>
Subject: Re: [PATCH v4] dt-bindings: iio: accel: add binding documentation for
 ADIS16240
Thread-Topic: [PATCH v4] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Thread-Index: AQHVob2/Uuv8Me0otU+pOQKTkzIOdqeYolyAgALkwgA=
Date: Mon, 25 Nov 2019 07:51:30 +0000
Message-ID: <a55b9c576eded8c91a985aabbba89180561ab156.camel@analog.com>
References: <20191123051927.5016-1-rodrigorsdc@gmail.com>
 <20191123114119.7b0c3447@archlinux>
In-Reply-To: <20191123114119.7b0c3447@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: df73dd0e-ad9a-45b9-5568-08d7717c48b0
x-ms-traffictypediagnostic: CH2PR03MB5223:
x-ms-exchange-purlcount: 3
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR03MB52232C0B38CF350D75F3F327F94A0@CH2PR03MB5223.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(376002)(346002)(396003)(189003)(199004)(6506007)(76176011)(6486002)(7416002)(2906002)(102836004)(6246003)(99286004)(6116002)(3846002)(2501003)(446003)(478600001)(118296001)(4001150100001)(26005)(14444005)(256004)(5660300002)(25786009)(76116006)(8936002)(8676002)(6306002)(6512007)(110136005)(66066001)(71190400001)(71200400001)(11346002)(305945005)(54906003)(229853002)(186003)(66556008)(66476007)(66946007)(66446008)(64756008)(86362001)(4326008)(2616005)(6436002)(81156014)(81166006)(36756003)(316002)(7736002)(966005)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5223;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oqRBrpAtSmc7h0r6364zc0sEeYVgTvpWeNnqQxl8/bfRsAimyu+GwMtq6a8acdcDcw+gXJGEZZMtcZnDrt//wh92//teCKemHzNV6jEYEFKoSicowYS5MpqUwG7YKJvIsF5WGZeyJxpWUWr58hCwx2P+d1NVherqxILosUcjsIVf98Pr2Ijn0Zgcf1cIASI05F/FPWg4lQktgGOCLyWPG1WB9tPr9tycASbRGWZAkXMZ5q3EYphelU5OK/cwMlTqraFTJoGhB5JatAV6cErdFKsqH2IN1JYMxNGN72wlTVe6X1H0wAUUeEcmq21D10Mz337foU8txF9T/CwirVjv/qNfJ5Nc6l6UlGhRVL7KHTev7LbL/M29OH7barhfLMTFQDLlsInA1eqKDHuFv/QF/DX3V0hppXrITBzpLZ9Yf7YYxYl2ynOoUN/Ht2H/VHn2e8xdQO19AyXlY0QW8PnVEMPF46ISgtnamyUb27xuObI=
Content-ID: <29C23957103D4B43BD4A7FF115508C6F@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df73dd0e-ad9a-45b9-5568-08d7717c48b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 07:51:30.3980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j8Osusvv+VfdWT+w1ik3vvhajQkrI9F1WIEbBawWGq85MCvdOkzSUKBYensVSSLKh9Z/PkRwRbDqJfSlDyNKFVv52BPFQFnmlcc8ZV3Xvf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5223
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-25_01:2019-11-21,2019-11-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999
 suspectscore=0 clxscore=1011 priorityscore=1501 mlxscore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1911250072
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
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-11-23 at 11:41 +0000, Jonathan Cameron wrote:
> On Sat, 23 Nov 2019 02:19:27 -0300
> Rodrigo Carvalho <rodrigorsdc@gmail.com> wrote:
> 
> > This patch add device tree binding documentation for ADIS16240.
> > 
> > Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>

My bad for the late timing on this.
I'm slightly more fresh on Mondays.
But I will get overloaded with work in a few hours, so I may not have time
ot respond.

> No problem with this patch, but I definitely want to see an accompanying
> one enforcing the SPI mode in the driver.
> 

So, then the binding should probably also define spi-cpol & spi-cpha
as mandatory.
Maybe, the driver would do a check and print a warning.

I'm noticing that this device uses SPI mode 3, but this DT binding defaults
to SPI mode 0

> Right now the driver doesn't set it and so I'm fairly sure not putting
> it in the binding will leave you with a non working device.
> 
> The right option if only one option is supported is for the driver
> to call spi_setup with the relevant options.
> 

What if the board uses some level inverters [because of some weird reason]
and that messes up with the SPI mode?
It's not common, but it is possible.

> Thanks,
> 
> Jonathan
> 
> > ---
> > V4:
> >    - Remove spi-cpha and spi-cpol in binding example, since this driver
> > supports only one timing mode.
> >  .../bindings/iio/accel/adi,adis16240.yaml     | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > new file mode 100644
> > index 000000000000..8e902f7c49e6
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/accel/adi,adis16240.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ADIS16240 Programmable Impact Sensor and Recorder driver
> > +
> > +maintainers:
> > +  - Alexandru Ardelean <alexandru.ardelean@analog.com>
> > +
> > +description: |
> > +  ADIS16240 Programmable Impact Sensor and Recorder driver that
> > supports
> > +  SPI interface.
> > +    https://www.analog.com/en/products/adis16240.html
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - adi,adis16240
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    spi0 {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        /* Example for a SPI device node */
> > +        accelerometer@0 {
> > +            compatible = "adi,adis16240";
> > +            reg = <0>;
> > +            spi-max-frequency = <2500000>;
> > +            interrupt-parent = <&gpio0>;
> > +            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> > +        };
> > +    };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
