Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86D526A2B8
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 12:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6164E87119;
	Tue, 15 Sep 2020 10:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28Esk0hOkL8s; Tue, 15 Sep 2020 10:06:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C623387053;
	Tue, 15 Sep 2020 10:06:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82D891BF275
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 10:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7EAE8864F4
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 10:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zCauhFn8sZqJ for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 10:06:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (lhrrgout.huawei.com [185.176.76.210])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42452864DA
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 10:06:49 +0000 (UTC)
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id F0A6652B9102A0AA7971;
 Tue, 15 Sep 2020 11:06:45 +0100 (IST)
Received: from localhost (10.52.121.217) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 15 Sep
 2020 11:06:45 +0100
Date: Tue, 15 Sep 2020 11:05:08 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Subject: Re: [PATCH 01/10] iio: adis16201: Use Managed device functions
Message-ID: <20200915110508.000028f4@Huawei.com>
In-Reply-To: <20200915093345.85614-2-nuno.sa@analog.com>
References: <20200915093345.85614-1-nuno.sa@analog.com>
 <20200915093345.85614-2-nuno.sa@analog.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.52.121.217]
X-ClientProxiedBy: lhreml736-chm.china.huawei.com (10.201.108.87) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>,
 linux-iio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean --dry-run <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 15 Sep 2020 11:33:36 +0200
Nuno S=E1 <nuno.sa@analog.com> wrote:

> Use the adis managed device functions to setup the buffer and the trigger.
> The ultimate goal will be to completely drop the non devm version from
> the lib.
> =

> Signed-off-by: Nuno S=E1 <nuno.sa@analog.com>
> ---
>  drivers/iio/accel/adis16201.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/iio/accel/adis16201.c b/drivers/iio/accel/adis16201.c
> index 59a24c355a1a..a375ec25448a 100644
> --- a/drivers/iio/accel/adis16201.c
> +++ b/drivers/iio/accel/adis16201.c
> @@ -281,32 +281,22 @@ static int adis16201_probe(struct spi_device *spi)
>  	if (ret)
>  		return ret;
>  =

> -	ret =3D adis_setup_buffer_and_trigger(st, indio_dev, NULL);
> +	ret =3D devm_adis_setup_buffer_and_trigger(st, indio_dev, NULL);
>  	if (ret)
>  		return ret;
>  =

>  	ret =3D adis_initial_startup(st);
>  	if (ret)
> -		goto error_cleanup_buffer_trigger;
> -
> -	ret =3D iio_device_register(indio_dev);
> -	if (ret < 0)
> -		goto error_cleanup_buffer_trigger;
> -
> -	return 0;
> +		return ret;
>  =

> -error_cleanup_buffer_trigger:
> -	adis_cleanup_buffer_and_trigger(st, indio_dev);
> -	return ret;
> +	return iio_device_register(indio_dev);
>  }
>  =

>  static int adis16201_remove(struct spi_device *spi)
>  {
>  	struct iio_dev *indio_dev =3D spi_get_drvdata(spi);
> -	struct adis *st =3D iio_priv(indio_dev);
>  =

>  	iio_device_unregister(indio_dev);

If all you have left in remove is a call to iio_device_unregister()
why not just use devm_iio_device_register in probe and drop the
remove function entirely?

> -	adis_cleanup_buffer_and_trigger(st, indio_dev);
>  =

>  	return 0;
>  }


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
