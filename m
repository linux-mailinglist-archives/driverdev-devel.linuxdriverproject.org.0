Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D147B18EB
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Sep 2019 09:29:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7338622817;
	Fri, 13 Sep 2019 07:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GadZC0IAzz+4; Fri, 13 Sep 2019 07:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D49A227DB;
	Fri, 13 Sep 2019 07:29:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DCE31BF588
 for <devel@linuxdriverproject.org>; Fri, 13 Sep 2019 07:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A74B87A52
 for <devel@linuxdriverproject.org>; Fri, 13 Sep 2019 07:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id beL8uBzLEEDS for <devel@linuxdriverproject.org>;
 Fri, 13 Sep 2019 07:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com
 [148.163.139.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E91087A4D
 for <devel@driverdev.osuosl.org>; Fri, 13 Sep 2019 07:29:04 +0000 (UTC)
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8D7SFcM001689; Fri, 13 Sep 2019 03:29:03 -0400
Received: from nam04-co1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2050.outbound.protection.outlook.com [104.47.45.50])
 by mx0b-00128a01.pphosted.com with ESMTP id 2uytd1h5xb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Sep 2019 03:29:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ax7d2zf3S3h+d3MTcu3emP+SR8yV7uovvYBMCxcqsXPfw6J4ddsQId68GneSAHVStwHGbEJxp7XDEZ4ho9uXlihNrszDxvv4A70psN86QRSQEr590sHkA87lG15U8gTPvWnZv5Ok9KD0wEu/ROKn51YFLkFliT6M3eEaT7W7G9DGQFlA2EqyV6qTY0lONgw/3GMceViyxrYtyhtU0szi8LGbrOVyUJJ6fV7vKEQ2tYemaWaChpfa6yz0xuqzIZwCxNYbsUFAQIoBNpsR1xq/u1PO+KlxYjcFO+9QP7reKXbbDI+84YVQctOWpOYokNB/9+Unsgq6AurhpRjQrEYDuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uL7NPljmm8DcRfa+AuskgAwthfkNob/Gb3CLWGGC57k=;
 b=gc614ENRUYLWK3tuk15FA9xFr2TOvhdUzVlz4ck8FkYzjrjtIigO0TrLdijWe2ujBNbNNUPaj9Pd6FBJVbrXuaFq0syRj4gS9xn36qrGovAwiDbmqYswd6WofbeQBgzMyV8rlt3A8kYDJ3zYB12f4mL+lj0HYto8zhBtJ5/GWgLAL+lt6XtlZK0CUgQfPzkHN6CxZGj9TDQtPEuTHS3RG7V9o1VAKFhyv6u0LXNY831FNB5+TeZipV2CFDLKQxTLXTBRqj2n3qPE6qAFppARM74wGcsLrWPYsm7uc2BEk5zDjZHG2a9rwcOE0+fYxtT9bbEGKbU7/TBVic992YWlBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uL7NPljmm8DcRfa+AuskgAwthfkNob/Gb3CLWGGC57k=;
 b=ZfiNFf4rJYK9BxiUiWmCrp9kcYxMNLokoB1+8mQx50K94cBRofzr4A4doR3ZwLEqLkwg7GSEu9c9FvK6E5NZe+1hPAoUKsvs/Uyof8ci0hXBo60ohIRvYHrz9TU5dBQyT+U/jbnePeFcX10fkXe95GEvAfTLNWq1fpNnrjmEsGY=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5302.namprd03.prod.outlook.com (20.180.4.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Fri, 13 Sep 2019 07:28:59 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b%3]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 07:28:59 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jic23@kernel.org" <jic23@kernel.org>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>, "pmeerw@pmeerw.net"
 <pmeerw@pmeerw.net>
Subject: Re: [PATCH v2] dt-bindings: iio: accel: add binding documentation for
 ADIS16240
Thread-Topic: [PATCH v2] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Thread-Index: AQHVacOcZ+EBrVimJUWZCKviGbZRIKcpaJGA
Date: Fri, 13 Sep 2019 07:28:59 +0000
Message-ID: <448e180cc41bfc748d729f3269376b14ba6d3ac9.camel@analog.com>
References: <20190912213929.3664-1-rodrigorsdc@gmail.com>
In-Reply-To: <20190912213929.3664-1-rodrigorsdc@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4a4e44a-f464-44af-d8c3-08d7381c0b44
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR03MB5302; 
x-ms-traffictypediagnostic: CH2PR03MB5302:
x-ms-exchange-purlcount: 3
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR03MB5302A291ADB0BCBEFF2BCC7CF9B30@CH2PR03MB5302.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(39860400002)(346002)(376002)(189003)(199004)(4326008)(53376002)(81156014)(476003)(66476007)(6246003)(76116006)(7736002)(64756008)(66556008)(2616005)(66446008)(6116002)(6306002)(256004)(229853002)(102836004)(54906003)(25786009)(66946007)(6486002)(53936002)(14454004)(81166006)(118296001)(3846002)(186003)(6512007)(478600001)(305945005)(6436002)(316002)(2906002)(36756003)(2501003)(6506007)(71200400001)(446003)(11346002)(8936002)(2201001)(66066001)(99286004)(5660300002)(76176011)(86362001)(71190400001)(110136005)(966005)(486006)(26005)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5302;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Kotw3p9SuCkSImXeC0CNGej466iZRkc4fTXXwxc1d3Tz+o5tE9aV9PMCuU+4IZHDr8tUVn7iqKwAiENA5jnjdNbayYiqThAQZ58fxdQscbcUh/Uz7mn8igVbTqMcWe+zZnxxtEXIrpd/vm4wn1y3PWX7fsni8hobHXuFoyrqL6XeSK350wrX++zHnopxMUbWrz8K4hPyYtjDl/F+0Q1H1hp884svRmMC6XQeaGpR9Er6in2Ee1Zt9oFphbAWBNUsiqTVlg2RtruRe7LMB5m/txzOku9T1LqEhMIcOUsAYwNOSo2FqWkUV4Sp4UCznvCVusHsUbkE9uoaZ2ivmpRe3Ghc+SCdG6CKv/1E7Fg3RWf9iyYcO+Th6YjJkQ9huDVANCStZUCWlpS2odqkWI/J+oLySNqlnoxt8/VGUtY9sJ8=
Content-ID: <769044C9B6C1114E9BCBB0B9DF4CBEE7@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4a4e44a-f464-44af-d8c3-08d7381c0b44
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 07:28:59.3333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AjWNTCRbB1zGEE5JNFrhv8GMHVPsJVrLwuMHS/OHFUbt8d1Jh0K+pEYRTVh5ujM/zIYxAKDCz2P4k0CQu7gNnirdttnVjNymwl2tUDJjdqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5302
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_04:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0
 mlxscore=0 phishscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130070
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
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-09-12 at 18:39 -0300, Rodrigo Carvalho wrote:
> This patch add device tree binding documentation for ADIS16240.
> 
> Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> ---
> V2:
>   - Remove true constant for spi-cpha and spi-cpol
>   - Add description field for spi-cpha and spi-cpol
>   - Add maxItems field for spi-cpha and spi-cpol
> 
>  .../bindings/iio/accel/adi,adis16240.yaml     | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> new file mode 100644
> index 000000000000..4b1bd2419604
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/accel/adi,adis16240.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ADIS16240 Programmable Impact Sensor and Recorder driver
> +
> +maintainers:
> +  - Alexandru Ardelean <alexandru.ardelean@analog.com>
> +
> +description: |
> +  ADIS16240 Programmable Impact Sensor and Recorder driver that supports
> +  SPI interface.
> +    https://www.analog.com/en/products/adis16240.html
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,adis16240
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-cpha:
> +    description: |
> +      See Documentation/devicetree/bindings/spi/spi-controller.yaml
> +    maxItems: 1

Description for standard properties is not required.

For spi-cpha/cpol just "true" seems sufficient.

So

     spi-cpha: true

     spi-cpol: true

> +
> +  spi-cpol: |
> +    description: |
> +      See Documentation/devicetree/bindings/spi/spi-controller.yaml
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +

If spi-cpha & spi-cpol are true, they should typically be also required.
Though, I think Rob would answer things better here.

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    spi0 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        /* Example for a SPI device node */
> +        accelerometer@0 {
> +            compatible = "adi,adis16240";
> +            reg = <0>;
> +            spi-max-frequency = <2500000>;
> +            spi-cpol;
> +            spi-cpha;
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> +        };
> +    };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
