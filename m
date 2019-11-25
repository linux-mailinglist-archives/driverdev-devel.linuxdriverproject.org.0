Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF06C108CDF
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 12:26:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7F70C20531;
	Mon, 25 Nov 2019 11:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sIZJjR2fIadC; Mon, 25 Nov 2019 11:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF42920503;
	Mon, 25 Nov 2019 11:26:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9490C1BF3CA
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 11:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 910DB2011B
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 11:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6+QRHO3iQLHZ for <devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 11:26:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com
 [148.163.139.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 472CE2010D
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 11:26:33 +0000 (UTC)
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAPBN71t025834; Mon, 25 Nov 2019 06:26:30 -0500
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2058.outbound.protection.outlook.com [104.47.46.58])
 by mx0b-00128a01.pphosted.com with ESMTP id 2weydcmvv9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Nov 2019 06:26:30 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sss2srHiZIc7pXdHtMkxgUtllZYMBWBzGJO86JvOY3QO/LKuu8ZAJAjbW6nEakqnLUP38pKitPA5nFapQ7q6dniR+9IP4UdmjkbnqR4vNM08Ts9oc6Fjioo4T2HkCKJFlazkHZWQ0eVtl4+NGX6D8tR7sstOkTVLvkMn4iGd3UkBHkhJwZNOa8Gt/Yf0st+CFjaQPNh5M+69y+dEsdZxCTmv8LWXgaHqthG9hPTUsC+oskE7fAKnCFWWk/4LYtaDU2qtVjNW5UEXC7Dil1ozFT0bTSG12saT7UTtDbhBFUsNnnZw3/Aapq2UY5p01zfReA+P9DOY2XC3MTIi/kUNyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7JcG0b2akiauGgGJH5v/IUrj5TGNDCY3NWvy0rt94K0=;
 b=Ajzx/Y6PE/nKsjVsIxYCIGmJ2AP0+z13crFyOb+oehzk/38VbipZn7jFmC2IR4ghV/WJw3Dp+TUn6HxDzGNQV0PG7Tjf0DbOReX1VFzYe4Uibw4zHCA7RppNJvNXGGmjiXmm8ajvNDCNUZcL9PX0MFAGpOqRTFhI2l4s0BkEibXSbLLu/Ez4sXooyRwjXK4KBoJ740bPWmCbXaekDTLTkK8JfEXX4k6x9bepPWa5n/JjjdJNbaAyobz2fnA+v3ufolbw7A1w+w1S9G76t4b7eALCQ8orG6+oX5Izk/L6ncxCWk7cw95oFvCRuBBk+jHvaud1ZrpI/L4kQtFZXwCznw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7JcG0b2akiauGgGJH5v/IUrj5TGNDCY3NWvy0rt94K0=;
 b=fFXqTLuHjyZ+/WHrNK064eq+Qvw/cbc/wJcGt3sK9KJU2xWGH1HpzZxHlNTPUhcPreFYswi0Uknsq7XiBJ3Ot9ToQa9RYh5YhHXL1okDGll5L6mTLU9jHaCDl66jWr5aIjIWADfTl9vIvwwF6tCyFu2QqWaYExxBAJkYc8N/Flg=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5205.namprd03.prod.outlook.com (20.180.15.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Mon, 25 Nov 2019 11:26:27 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 11:26:27 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Bia, Beniamin" <Beniamin.Bia@analog.com>, "jic23@kernel.org"
 <jic23@kernel.org>
Subject: Re: [PATCH v2 1/4] iio: adc: Add support for AD7091R5 ADC
Thread-Topic: [PATCH v2 1/4] iio: adc: Add support for AD7091R5 ADC
Thread-Index: AQHVjl0P2C0K5cAm+EuNeDNUHyzuHaeb6e0A
Date: Mon, 25 Nov 2019 11:26:27 +0000
Message-ID: <649d3f52de8fcaaad7278c0754884934745e9215.camel@analog.com>
References: <20191029162928.9720-1-beniamin.bia@analog.com>
In-Reply-To: <20191029162928.9720-1-beniamin.bia@analog.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: aff93585-9828-47bc-7445-08d7719a4fe7
x-ms-traffictypediagnostic: CH2PR03MB5205:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR03MB5205355DB0240C47FF42B0E6F94A0@CH2PR03MB5205.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(39860400002)(136003)(346002)(189003)(199004)(4001150100001)(11346002)(4326008)(5660300002)(25786009)(99286004)(81166006)(110136005)(66476007)(2616005)(14454004)(186003)(256004)(8936002)(6246003)(30864003)(14444005)(2501003)(6512007)(86362001)(66946007)(54906003)(76176011)(7416002)(36756003)(8676002)(446003)(81156014)(2906002)(6486002)(6306002)(118296001)(229853002)(316002)(102836004)(66066001)(64756008)(66446008)(66556008)(6436002)(305945005)(3846002)(6116002)(478600001)(76116006)(71190400001)(71200400001)(26005)(7736002)(6506007)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5205;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PWdcXOkyNK3tWw5cfZMjxBcGLy6L4zzdgD7PrsJzCYBQW06FRuOmPfQhGJ6hjB0wbVe3WQrYp1cEPwfKb+6spBjR+MjOXq+clektjFCzHWvFiGdPm+LGQw1ZtJ0fqCvYhFJ7C0Pt9b0B1oxyJk567xYQiAlaajvCGDUliuBMZ5/C4eFVNF04WtCBMHHeiVQrVCiorG3pNeSY9jEMQn2mqqSTAEWvc9zQwuqdR8ZCyWi8k4dIVXEeYWvG+lEhyivLBywCSPkAuK5P66qBq9/EUVcrVfkD3fSOjjZC54Hc+IxKZoPzpssjNlY+J9mlwOD9zzuGxt2xb+GwQYVmwrgBMF31k19+R1dRc8ls/gs16EuzbPcJDY+WuTgycPN54KNaDYgE8mOfqHgfTiYsezyaTo2dnA68kR2qtY32tRV3EduUSv0KmBe5CXJ3Y16NaNqmMvmwA8ENX8cEMekQfgbEd3+Eul2vSHxdGBWTtAOl35Q=
Content-ID: <311E94E842D3014DA5C6524FE9CD0DBE@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aff93585-9828-47bc-7445-08d7719a4fe7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 11:26:27.3325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sGXV1IrOaypx/EkblP0FbFKPrDDAPv1VXjV521OadCb+MGGgD7PyEfeuP7wS9RH5OqiHv4PVHneiPmTtUzPptiEXfQEgEJENlWc01bPnNDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5205
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-25_03:2019-11-21,2019-11-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxscore=0
 adultscore=0 suspectscore=0 phishscore=0 mlxlogscore=999 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1911250106
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "biabeniamin@outlook.com" <biabeniamin@outlook.com>, "Hennerich, 
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "paulmck@linux.ibm.com" <paulmck@linux.ibm.com>,
 "paul.cercueil@analog.com" <paul.cercueil@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-10-29 at 18:29 +0200, Beniamin Bia wrote:
> [External]
> 
> From: Paul Cercueil <paul.cercueil@analog.com>
> 
> AD7091 is 4-Channel, I2C, Ultra Low Power,12-Bit ADC.
> 
> Datasheet:
> Link: 
> https://www.analog.com/media/en/technical-documentation/data-sheets/ad7091r-5.pdf
> 
> Signed-off-by: Paul Cercueil <paul.cercueil@analog.com>
> Co-developed-by: Beniamin Bia <beniamin.bia@analog.com>
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> ---
> Changes in v2:
> -blank lines removed
> -prefix added to macros
> -comments rework
> -error checking syntax changed
> -iio mutex replaced by a mutex
> -device remove function was removed and later replaced by devm_add_action
> -regmap include removed from header
> 
>  drivers/iio/adc/Kconfig        |   7 +
>  drivers/iio/adc/Makefile       |   1 +
>  drivers/iio/adc/ad7091r-base.c | 264 +++++++++++++++++++++++++++++++++
>  drivers/iio/adc/ad7091r-base.h |  25 ++++
>  drivers/iio/adc/ad7091r5.c     | 102 +++++++++++++
>  5 files changed, 399 insertions(+)
>  create mode 100644 drivers/iio/adc/ad7091r-base.c
>  create mode 100644 drivers/iio/adc/ad7091r-base.h
>  create mode 100644 drivers/iio/adc/ad7091r5.c
> 
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index 7e3286265a38..80b1b9551749 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -22,6 +22,13 @@ config AD7124
>  	  To compile this driver as a module, choose M here: the module
> will be
>  	  called ad7124.
>  
> +config AD7091R5
> +	tristate "Analog Devices AD7091R5 ADC Driver"
> +	depends on I2C
> +	select REGMAP_I2C
> +	help
> +	  Say yes here to build support for Analog Devices AD7091R-5 ADC.
> +

Sorry for the lateness here.
Is it too late to mention to put this before the AD7124 driver?
Same question for Makefile.

This is to keep things alphabetically sorted.

Thanks
Alex

>  config AD7266
>  	tristate "Analog Devices AD7265/AD7266 ADC driver"
>  	depends on SPI_MASTER
> diff --git a/drivers/iio/adc/Makefile b/drivers/iio/adc/Makefile
> index ef9cc485fb67..55e44735aaac 100644
> --- a/drivers/iio/adc/Makefile
> +++ b/drivers/iio/adc/Makefile
> @@ -6,6 +6,7 @@
>  # When adding new entries keep the list in alphabetical order
>  obj-$(CONFIG_AD_SIGMA_DELTA) += ad_sigma_delta.o
>  obj-$(CONFIG_AD7124) += ad7124.o
> +obj-$(CONFIG_AD7091R5) += ad7091r5.o ad7091r-base.o
>  obj-$(CONFIG_AD7266) += ad7266.o
>  obj-$(CONFIG_AD7291) += ad7291.o
>  obj-$(CONFIG_AD7298) += ad7298.o
> diff --git a/drivers/iio/adc/ad7091r-base.c b/drivers/iio/adc/ad7091r-
> base.c
> new file mode 100644
> index 000000000000..c2500f614d54
> --- /dev/null
> +++ b/drivers/iio/adc/ad7091r-base.c
> @@ -0,0 +1,264 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * AD7091RX Analog to Digital converter driver
> + *
> + * Copyright 2014-2019 Analog Devices Inc.
> + */
> +
> +#include <linux/bitops.h>
> +#include <linux/iio/events.h>
> +#include <linux/iio/iio.h>
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +
> +#include "ad7091r-base.h"
> +
> +#define AD7091R_REG_RESULT  0
> +#define AD7091R_REG_CHANNEL 1
> +#define AD7091R_REG_CONF    2
> +#define AD7091R_REG_ALERT   3
> +#define AD7091R_REG_CH_LOW_LIMIT(ch) ((ch) * 3 + 4)
> +#define AD7091R_REG_CH_HIGH_LIMIT(ch) ((ch) * 3 + 5)
> +#define AD7091R_REG_CH_HYSTERESIS(ch) ((ch) * 3 + 6)
> +
> +/* AD7091R_REG_RESULT */
> +#define AD7091R_REG_RESULT_CH_ID(x)	    (((x) >> 13) & 0x3)
> +#define AD7091R_REG_RESULT_CONV_RESULT(x)   ((x) & 0xfff)
> +
> +/* AD7091R_REG_CONF */
> +#define AD7091R_REG_CONF_AUTO   BIT(8)
> +#define AD7091R_REG_CONF_CMD    BIT(10)
> +
> +#define AD7091R_REG_CONF_MODE_MASK  \
> +	(AD7091R_REG_CONF_AUTO | AD7091R_REG_CONF_CMD)
> +
> +enum ad7091r_mode {
> +	AD7091R_MODE_SAMPLE,
> +	AD7091R_MODE_COMMAND,
> +	AD7091R_MODE_AUTOCYCLE,
> +};
> +
> +struct ad7091r_state {
> +	struct device *dev;
> +	struct regmap *map;
> +	const struct ad7091r_chip_info *chip_info;
> +	enum ad7091r_mode mode;
> +	struct mutex lock;
> +};
> +
> +static int ad7091r_set_mode(struct ad7091r_state *st, enum ad7091r_mode
> mode)
> +{
> +	int ret;
> +
> +	switch (mode) {
> +	case AD7091R_MODE_SAMPLE:
> +		ret = regmap_update_bits(st->map, AD7091R_REG_CONF,
> +					 AD7091R_REG_CONF_MODE_MASK, 0);
> +		break;
> +	case AD7091R_MODE_COMMAND:
> +		ret = regmap_update_bits(st->map, AD7091R_REG_CONF,
> +					 AD7091R_REG_CONF_MODE_MASK,
> +					 AD7091R_REG_CONF_CMD);
> +		break;
> +	case AD7091R_MODE_AUTOCYCLE:
> +		ret = regmap_update_bits(st->map, AD7091R_REG_CONF,
> +					 AD7091R_REG_CONF_MODE_MASK,
> +					 AD7091R_REG_CONF_AUTO);
> +		break;
> +	default:
> +		ret = -EINVAL;
> +		break;
> +	}
> +
> +	if (ret)
> +		return ret;
> +
> +	st->mode = mode;
> +
> +	return ret;
> +}
> +
> +static int ad7091r_set_channel(struct ad7091r_state *st, unsigned int
> channel)
> +{
> +	unsigned int foo;
> +	int ret;
> +
> +	/* AD7091R_REG_CHANNEL specified which channels to be converted */
> +	ret = regmap_write(st->map, AD7091R_REG_CHANNEL,
> +			BIT(channel) | (BIT(channel) << 8));
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * There is a latency of one conversion before the channel
> conversion
> +	 * sequence is updated
> +	 */
> +	return regmap_read(st->map, AD7091R_REG_RESULT, &foo);
> +}
> +
> +static int ad7091r_read_one(struct iio_dev *iio_dev,
> +		unsigned int channel, unsigned int *read_val)
> +{
> +	struct ad7091r_state *st = iio_priv(iio_dev);
> +	unsigned int val;
> +	int ret;
> +
> +	ret = ad7091r_set_channel(st, channel);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_read(st->map, AD7091R_REG_RESULT, &val);
> +	if (ret)
> +		return ret;
> +
> +	if (AD7091R_REG_RESULT_CH_ID(val) != channel)
> +		return -EIO;
> +
> +	*read_val = AD7091R_REG_RESULT_CONV_RESULT(val);
> +
> +	return 0;
> +}
> +
> +static int ad7091r_read_raw(struct iio_dev *iio_dev,
> +			   struct iio_chan_spec const *chan,
> +			   int *val, int *val2, long m)
> +{
> +	struct ad7091r_state *st = iio_priv(iio_dev);
> +	unsigned int read_val;
> +	int ret;
> +
> +	mutex_lock(&st->lock);
> +
> +	switch (m) {
> +	case IIO_CHAN_INFO_RAW:
> +		if (st->mode != AD7091R_MODE_COMMAND) {
> +			ret = -EBUSY;
> +			goto unlock;
> +		}
> +
> +		ret = ad7091r_read_one(iio_dev, chan->channel, &read_val);
> +		if (ret)
> +			goto unlock;
> +
> +		*val = read_val;
> +		ret = IIO_VAL_INT;
> +		break;
> +
> +	default:
> +		ret = -EINVAL;
> +		break;
> +	}
> +
> +unlock:
> +	mutex_unlock(&st->lock);
> +	return ret;
> +}
> +
> +static const struct iio_info ad7091r_info = {
> +	.read_raw = ad7091r_read_raw,
> +};
> +
> +static irqreturn_t ad7091r_event_handler(int irq, void *private)
> +{
> +	struct ad7091r_state *st = (struct ad7091r_state *) private;
> +	struct iio_dev *iio_dev = dev_get_drvdata(st->dev);
> +	unsigned int i, read_val;
> +	int ret;
> +	s64 timestamp = iio_get_time_ns(iio_dev);
> +
> +	ret = regmap_read(st->map, AD7091R_REG_ALERT, &read_val);
> +	if (ret)
> +		return IRQ_HANDLED;
> +
> +	for (i = 0; i < st->chip_info->num_channels; i++) {
> +		if (read_val & BIT(i * 2))
> +			iio_push_event(iio_dev,
> +					IIO_UNMOD_EVENT_CODE(IIO_VOLTAGE,
> i,
> +						IIO_EV_TYPE_THRESH,
> +						IIO_EV_DIR_RISING),
> timestamp);
> +		if (read_val & BIT(i * 2 + 1))
> +			iio_push_event(iio_dev,
> +					IIO_UNMOD_EVENT_CODE(IIO_VOLTAGE,
> i,
> +						IIO_EV_TYPE_THRESH,
> +						IIO_EV_DIR_FALLING),
> timestamp);
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +int ad7091r_probe(struct device *dev, const char *name,
> +		const struct ad7091r_chip_info *chip_info,
> +		struct regmap *map, int irq)
> +{
> +	struct iio_dev *iio_dev;
> +	struct ad7091r_state *st;
> +	int ret;
> +
> +	iio_dev = devm_iio_device_alloc(dev, sizeof(*st));
> +	if (!iio_dev)
> +		return -ENOMEM;
> +
> +	st = iio_priv(iio_dev);
> +	st->dev = dev;
> +	st->chip_info = chip_info;
> +	st->map = map;
> +
> +	iio_dev->dev.parent = dev;
> +	iio_dev->name = name;
> +	iio_dev->info = &ad7091r_info;
> +	iio_dev->modes = INDIO_DIRECT_MODE;
> +
> +	iio_dev->num_channels = chip_info->num_channels;
> +	iio_dev->channels = chip_info->channels;
> +
> +	if (irq) {
> +		ret = devm_request_threaded_irq(dev, irq, NULL,
> +				ad7091r_event_handler,
> +				IRQF_TRIGGER_FALLING | IRQF_ONESHOT, name,
> st);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	/* Use command mode by default to convert only desired channels*/
> +	ret = ad7091r_set_mode(st, AD7091R_MODE_COMMAND);
> +	if (ret < 0)
> +		return ret;
> +
> +	return iio_device_register(iio_dev);
> +}
> +EXPORT_SYMBOL_GPL(ad7091r_probe);
> +
> +static bool ad7091r_writeable_reg(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case AD7091R_REG_RESULT:
> +	case AD7091R_REG_ALERT:
> +		return false;
> +	default:
> +		return true;
> +	}
> +}
> +
> +static bool ad7091r_volatile_reg(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case AD7091R_REG_RESULT:
> +	case AD7091R_REG_ALERT:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +const struct regmap_config ad7091r_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 16,
> +	.writeable_reg = ad7091r_writeable_reg,
> +	.volatile_reg = ad7091r_volatile_reg,
> +};
> +EXPORT_SYMBOL_GPL(ad7091r_regmap_config);
> +
> +MODULE_AUTHOR("Beniamin Bia <beniamin.bia@analog.com>");
> +MODULE_DESCRIPTION("Analog Devices AD7091Rx multi-channel converters");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/iio/adc/ad7091r-base.h b/drivers/iio/adc/ad7091r-
> base.h
> new file mode 100644
> index 000000000000..5f1147735953
> --- /dev/null
> +++ b/drivers/iio/adc/ad7091r-base.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * AD7091RX Analog to Digital converter driver
> + *
> + * Copyright 2014-2019 Analog Devices Inc.
> + */
> +
> +#ifndef __DRIVERS_IIO_ADC_AD7091R_BASE_H__
> +#define __DRIVERS_IIO_ADC_AD7091R_BASE_H__
> +
> +struct device;
> +struct ad7091r_state;
> +
> +struct ad7091r_chip_info {
> +	unsigned int num_channels;
> +	const struct iio_chan_spec *channels;
> +};
> +
> +extern const struct regmap_config ad7091r_regmap_config;
> +
> +int ad7091r_probe(struct device *dev, const char *name,
> +		const struct ad7091r_chip_info *chip_info,
> +		struct regmap *map, int irq);
> +
> +#endif /* __DRIVERS_IIO_ADC_AD7091R5_BASE_H__ */
> diff --git a/drivers/iio/adc/ad7091r5.c b/drivers/iio/adc/ad7091r5.c
> new file mode 100644
> index 000000000000..2c44dd02ba1a
> --- /dev/null
> +++ b/drivers/iio/adc/ad7091r5.c
> @@ -0,0 +1,102 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * AD7091R5 Analog to Digital converter driver
> + *
> + * Copyright 2014-2019 Analog Devices Inc.
> + */
> +
> +#include <linux/i2c.h>
> +#include <linux/iio/iio.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +
> +#include "ad7091r-base.h"
> +
> +static const struct iio_event_spec ad7091r5_events[] = {
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_RISING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE) |
> +			BIT(IIO_EV_INFO_ENABLE),
> +	},
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_FALLING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE) |
> +			BIT(IIO_EV_INFO_ENABLE),
> +	},
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_EITHER,
> +		.mask_separate = BIT(IIO_EV_INFO_HYSTERESIS),
> +	},
> +};
> +
> +#define AD7091R_CHANNEL(idx, bits, ev, num_ev) { \
> +	.type = IIO_VOLTAGE, \
> +	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW), \
> +	.indexed = 1, \
> +	.channel = idx, \
> +	.event_spec = ev, \
> +	.num_event_specs = num_ev, \
> +}
> +static const struct iio_chan_spec ad7091r5_channels_irq[] = {
> +	AD7091R_CHANNEL(0, 12, ad7091r5_events,
> ARRAY_SIZE(ad7091r5_events)),
> +	AD7091R_CHANNEL(1, 12, ad7091r5_events,
> ARRAY_SIZE(ad7091r5_events)),
> +	AD7091R_CHANNEL(2, 12, ad7091r5_events,
> ARRAY_SIZE(ad7091r5_events)),
> +	AD7091R_CHANNEL(3, 12, ad7091r5_events,
> ARRAY_SIZE(ad7091r5_events)),
> +};
> +
> +static const struct iio_chan_spec ad7091r5_channels_noirq[] = {
> +	AD7091R_CHANNEL(0, 12, NULL, 0),
> +	AD7091R_CHANNEL(1, 12, NULL, 0),
> +	AD7091R_CHANNEL(2, 12, NULL, 0),
> +	AD7091R_CHANNEL(3, 12, NULL, 0),
> +};
> +#undef AD7091R_CHANNEL
> +
> +static const struct ad7091r_chip_info ad7091r5_chip_info_irq = {
> +	.channels = ad7091r5_channels_irq,
> +	.num_channels = ARRAY_SIZE(ad7091r5_channels_irq),
> +};
> +
> +static const struct ad7091r_chip_info ad7091r5_chip_info_noirq = {
> +	.channels = ad7091r5_channels_noirq,
> +	.num_channels = ARRAY_SIZE(ad7091r5_channels_noirq),
> +};
> +
> +static int ad7091r5_i2c_probe(struct i2c_client *i2c,
> +		const struct i2c_device_id *id)
> +{
> +	const struct ad7091r_chip_info *chip_info;
> +	struct regmap *map = devm_regmap_init_i2c(i2c,
> &ad7091r_regmap_config);
> +
> +	if (IS_ERR(map))
> +		return PTR_ERR(map);
> +
> +	if (i2c->irq)
> +		chip_info = &ad7091r5_chip_info_irq;
> +	else
> +		chip_info = &ad7091r5_chip_info_noirq;
> +
> +	return ad7091r_probe(&i2c->dev, id->name, chip_info, map, i2c-
> >irq);
> +}
> +
> +static const struct i2c_device_id ad7091r5_i2c_ids[] = {
> +	{"ad7091r5", 0},
> +	{}
> +};
> +MODULE_DEVICE_TABLE(i2c, ad7091r5_i2c_ids);
> +
> +static struct i2c_driver ad7091r5_driver = {
> +	.driver = {
> +		.name = "ad7091r5",
> +	},
> +	.probe = ad7091r5_i2c_probe,
> +	.id_table = ad7091r5_i2c_ids,
> +};
> +module_i2c_driver(ad7091r5_driver);
> +
> +MODULE_AUTHOR("Beniamin Bia <beniamin.bia@analog.com>");
> +MODULE_DESCRIPTION("Analog Devices AD7091R5 multi-channel ADC driver");
> +MODULE_LICENSE("GPL v2");
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
