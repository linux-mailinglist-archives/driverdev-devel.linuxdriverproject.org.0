Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4D8E8FA3
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 20:00:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D541C220B2;
	Tue, 29 Oct 2019 18:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6+2IgrLnW7SR; Tue, 29 Oct 2019 18:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 48E5F2152C;
	Tue, 29 Oct 2019 18:59:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 535801BF20D
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 18:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CD658790D
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 18:59:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mJMj18bDCvBO for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 18:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B57785A82
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 18:59:53 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9TIrnje021732;
 Tue, 29 Oct 2019 18:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=tGwA6mxDu+wj8nb3JlA1NbM4cZ+dWsihJQgOglQIpp4=;
 b=IK4qb1TTWYgAwqKIUn5wT1oiV2FhATXzu9eBp0FY6faNA8GalkJHnx270OUPN1EO2Yc9
 9h5hoSbn47hgNTw1kWYZZkX7c/tcNk9Fo6JDS+VpBlw8Sk14MpDUi6sQh2l8nFpb2hjD
 REzYpxMjAlCBw2Q6G03i3Kxw07clHkN9bAqeZUDfvdf2Ao8XwI/uBSPLiL3xrLNbHgj1
 5MNnbUnJTxTiaXKdDQxbY+L0nhohoiCpMeLppVj96QfhQT5+bJthda/msACHvnPzrhJW
 Qjrfe3IaoCifk+hOrgx4REQ/XNMf4hdqCWHzg6a2sbcf6/kiFBTlt58oXCpww0KEOrAn mw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2vvdjubg65-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 18:59:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9TIrwmH178549;
 Tue, 29 Oct 2019 18:59:48 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2vxj8gs6fb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 18:59:47 +0000
Received: from abhmp0021.oracle.com (abhmp0021.oracle.com [141.146.116.27])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9TIxe3G031111;
 Tue, 29 Oct 2019 18:59:40 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 29 Oct 2019 11:59:40 -0700
Date: Tue, 29 Oct 2019 21:59:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v2 1/4] iio: adc: Add support for AD7091R5 ADC
Message-ID: <20191029185930.GB1705@kadam>
References: <20191029162928.9720-1-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029162928.9720-1-beniamin.bia@analog.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910290163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910290163
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, mchehab+samsung@kernel.org,
 paulmck@linux.ibm.com, Paul Cercueil <paul.cercueil@analog.com>,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It looks like you're going to have to respin the patchset so I'm adding
my nits even though it's a bit late.


> +static int ad7091r_set_mode(struct ad7091r_state *st, enum ad7091r_mode mode)
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

This would look even better as:

	switch (mode) {
	case AD7091R_MODE_SAMPLE:
		conf = 0;
		break;
	case AD7091R_MODE_COMMAND:
		conf = AD7091R_REG_CONF_CMD;
		break;
	case AD7091R_MODE_AUTOCYCLE:
		conf = AD7091R_REG_CONF_AUTO;
		break;
	default:
		return -EINVAL;
	}

	ret = regmap_update_bits(st->map, AD7091R_REG_CONF,
				 AD7091R_REG_CONF_MODE_MASK, conf);
	if (ret)
		return ret;

	st->mode = mode;

	return 0;

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
> +				IRQF_TRIGGER_FALLING | IRQF_ONESHOT, name, st);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	/* Use command mode by default to convert only desired channels*/
> +	ret = ad7091r_set_mode(st, AD7091R_MODE_COMMAND);
> +	if (ret < 0)

if (ret) {

> +		return ret;
> +
> +	return iio_device_register(iio_dev);
> +}
> +EXPORT_SYMBOL_GPL(ad7091r_probe);

[ snip ]

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

This would be more clear if it were aligned like so:

		.mask_separate = BIT(IIO_EV_INFO_VALUE) |
				 BIT(IIO_EV_INFO_ENABLE),


> +	},
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_FALLING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE) |
> +			BIT(IIO_EV_INFO_ENABLE),

		.mask_separate = BIT(IIO_EV_INFO_VALUE) |
				 BIT(IIO_EV_INFO_ENABLE),

> +	},
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_EITHER,
> +		.mask_separate = BIT(IIO_EV_INFO_HYSTERESIS),
> +	},
> +};
> +

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
