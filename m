Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B40826A2CC
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 12:09:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B6F287119;
	Tue, 15 Sep 2020 10:09:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KcK4OInWDlsq; Tue, 15 Sep 2020 10:09:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A54E387038;
	Tue, 15 Sep 2020 10:09:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22E0A1BF275
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 10:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F29885C50
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 10:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WcfVNTDwNZR4 for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 10:09:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (lhrrgout.huawei.com [185.176.76.210])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6F8E286658
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 10:09:24 +0000 (UTC)
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 7443A9FFD2F95662EDE4;
 Tue, 15 Sep 2020 11:09:22 +0100 (IST)
Received: from localhost (10.52.121.217) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 15 Sep
 2020 11:09:21 +0100
Date: Tue, 15 Sep 2020 11:07:45 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Subject: Re: [PATCH 07/10] iio: adis16480: Use Managed device functions
Message-ID: <20200915110745.00007a9c@Huawei.com>
In-Reply-To: <20200915093345.85614-8-nuno.sa@analog.com>
References: <20200915093345.85614-1-nuno.sa@analog.com>
 <20200915093345.85614-8-nuno.sa@analog.com>
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

On Tue, 15 Sep 2020 11:33:42 +0200
Nuno S=E1 <nuno.sa@analog.com> wrote:

> Use the adis managed device functions to setup the buffer and the trigger.
> The ultimate goal will be to completely drop the non devm version from
> the lib.
> =

> Signed-off-by: Nuno S=E1 <nuno.sa@analog.com>
> ---
>  drivers/iio/imu/adis16480.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/iio/imu/adis16480.c b/drivers/iio/imu/adis16480.c
> index 1eb4f98076f1..b6a129a70d4b 100644
> --- a/drivers/iio/imu/adis16480.c
> +++ b/drivers/iio/imu/adis16480.c
> @@ -1264,20 +1264,18 @@ static int adis16480_probe(struct spi_device *spi)
>  		st->clk_freq =3D st->chip_info->int_clk;
>  	}
>  =

> -	ret =3D adis_setup_buffer_and_trigger(&st->adis, indio_dev, NULL);
> +	ret =3D devm_adis_setup_buffer_and_trigger(&st->adis, indio_dev, NULL);
>  	if (ret)
>  		goto error_clk_disable_unprepare;
>  =

>  	ret =3D iio_device_register(indio_dev);
>  	if (ret)
> -		goto error_cleanup_buffer;
> +		goto error_clk_disable_unprepare;
>  =

>  	adis16480_debugfs_init(indio_dev);
>  =

>  	return 0;
>  =

> -error_cleanup_buffer:
> -	adis_cleanup_buffer_and_trigger(&st->adis, indio_dev);
>  error_clk_disable_unprepare:
>  	clk_disable_unprepare(st->ext_clk);
>  error_stop_device:
> @@ -1293,7 +1291,6 @@ static int adis16480_remove(struct spi_device *spi)
>  	iio_device_unregister(indio_dev);
>  	adis16480_stop_device(indio_dev);
>  =

> -	adis_cleanup_buffer_and_trigger(&st->adis, indio_dev);
This change the remove order so that it will not be a reverse of the order
seen in probe.   Perhaps you can solve that by using
devm_add_action_or_reset() calls to handle the few other remaining things
in remove?

Thanks,

Jonathan

>  	clk_disable_unprepare(st->ext_clk);
>  =

>  	return 0;


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
