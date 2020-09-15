Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFD326A2D8
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 12:12:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4768C86688;
	Tue, 15 Sep 2020 10:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wAeB0cqo0TKg; Tue, 15 Sep 2020 10:11:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 177F08666B;
	Tue, 15 Sep 2020 10:11:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B70A1BF275
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 10:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17AEE86663
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 10:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yKUoCD9LbjTT for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 10:11:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (lhrrgout.huawei.com [185.176.76.210])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01BC785FED
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 10:11:53 +0000 (UTC)
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 856404D5EFE1B488665C;
 Tue, 15 Sep 2020 11:11:52 +0100 (IST)
Received: from localhost (10.52.121.217) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 15 Sep
 2020 11:11:51 +0100
Date: Tue, 15 Sep 2020 11:10:15 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Subject: Re: [PATCH 10/10] iio: adis: Drop non Managed device functions
Message-ID: <20200915111015.00004707@Huawei.com>
In-Reply-To: <20200915093345.85614-11-nuno.sa@analog.com>
References: <20200915093345.85614-1-nuno.sa@analog.com>
 <20200915093345.85614-11-nuno.sa@analog.com>
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

On Tue, 15 Sep 2020 11:33:45 +0200
Nuno S=E1 <nuno.sa@analog.com> wrote:

> Drop `adis_setup_buffer_and_trigger()`. All users were updated to use
> the devm version of this function. This avoids having almost the same
> code repeated.
> =

> Signed-off-by: Nuno S=E1 <nuno.sa@analog.com>

Good to see this cleanup, as long as we tidy up the few issues in the
earlier patches.

Note I think I only commented on first instance of each thing to fix.
Please carry them through all the patches.

Thanks,

Jonathan

> ---
>  drivers/iio/imu/adis_buffer.c  | 64 +++-------------------------------
>  drivers/iio/imu/adis_trigger.c | 60 -------------------------------
>  include/linux/iio/imu/adis.h   | 27 --------------
>  3 files changed, 4 insertions(+), 147 deletions(-)
> =

> diff --git a/drivers/iio/imu/adis_buffer.c b/drivers/iio/imu/adis_buffer.c
> index 5b4225ee09b9..df6144285470 100644
> --- a/drivers/iio/imu/adis_buffer.c
> +++ b/drivers/iio/imu/adis_buffer.c
> @@ -169,48 +169,6 @@ static void adis_buffer_cleanup(void *arg)
>  	kfree(adis->xfer);
>  }
>  =

> -/**
> - * adis_setup_buffer_and_trigger() - Sets up buffer and trigger for the =
adis device
> - * @adis: The adis device.
> - * @indio_dev: The IIO device.
> - * @trigger_handler: Optional trigger handler, may be NULL.
> - *
> - * Returns 0 on success, a negative error code otherwise.
> - *
> - * This function sets up the buffer and trigger for a adis devices.  If
> - * 'trigger_handler' is NULL the default trigger handler will be used. T=
he
> - * default trigger handler will simply read the registers assigned to the
> - * currently active channels.
> - *
> - * adis_cleanup_buffer_and_trigger() should be called to free the resour=
ces
> - * allocated by this function.
> - */
> -int adis_setup_buffer_and_trigger(struct adis *adis, struct iio_dev *ind=
io_dev,
> -	irqreturn_t (*trigger_handler)(int, void *))
> -{
> -	int ret;
> -
> -	if (!trigger_handler)
> -		trigger_handler =3D adis_trigger_handler;
> -
> -	ret =3D iio_triggered_buffer_setup(indio_dev, &iio_pollfunc_store_time,
> -		trigger_handler, NULL);
> -	if (ret)
> -		return ret;
> -
> -	if (adis->spi->irq) {
> -		ret =3D adis_probe_trigger(adis, indio_dev);
> -		if (ret)
> -			goto error_buffer_cleanup;
> -	}
> -	return 0;
> -
> -error_buffer_cleanup:
> -	iio_triggered_buffer_cleanup(indio_dev);
> -	return ret;
> -}
> -EXPORT_SYMBOL_GPL(adis_setup_buffer_and_trigger);
> -
>  /**
>   * devm_adis_setup_buffer_and_trigger() - Sets up buffer and trigger for
>   *					  the managed adis device
> @@ -220,7 +178,10 @@ EXPORT_SYMBOL_GPL(adis_setup_buffer_and_trigger);
>   *
>   * Returns 0 on success, a negative error code otherwise.
>   *
> - * This function perfoms exactly the same as adis_setup_buffer_and_trigg=
er()
> + * This function sets up the buffer and trigger for a adis devices.  If
> + * 'trigger_handler' is NULL the default trigger handler will be used. T=
he
> + * default trigger handler will simply read the registers assigned to the
> + * currently active channels.
>   */
>  int
>  devm_adis_setup_buffer_and_trigger(struct adis *adis, struct iio_dev *in=
dio_dev,
> @@ -248,20 +209,3 @@ devm_adis_setup_buffer_and_trigger(struct adis *adis=
, struct iio_dev *indio_dev,
>  }
>  EXPORT_SYMBOL_GPL(devm_adis_setup_buffer_and_trigger);
>  =

> -/**
> - * adis_cleanup_buffer_and_trigger() - Free buffer and trigger resources
> - * @adis: The adis device.
> - * @indio_dev: The IIO device.
> - *
> - * Frees resources allocated by adis_setup_buffer_and_trigger()
> - */
> -void adis_cleanup_buffer_and_trigger(struct adis *adis,
> -	struct iio_dev *indio_dev)
> -{
> -	if (adis->spi->irq)
> -		adis_remove_trigger(adis);
> -	kfree(adis->buffer);
> -	kfree(adis->xfer);
> -	iio_triggered_buffer_cleanup(indio_dev);
> -}
> -EXPORT_SYMBOL_GPL(adis_cleanup_buffer_and_trigger);
> diff --git a/drivers/iio/imu/adis_trigger.c b/drivers/iio/imu/adis_trigge=
r.c
> index 8afe71947c00..64e0ba51cb18 100644
> --- a/drivers/iio/imu/adis_trigger.c
> +++ b/drivers/iio/imu/adis_trigger.c
> @@ -55,53 +55,6 @@ static int adis_validate_irq_flag(struct adis *adis)
>  =

>  	return 0;
>  }
> -/**
> - * adis_probe_trigger() - Sets up trigger for a adis device
> - * @adis: The adis device
> - * @indio_dev: The IIO device
> - *
> - * Returns 0 on success or a negative error code
> - *
> - * adis_remove_trigger() should be used to free the trigger.
> - */
> -int adis_probe_trigger(struct adis *adis, struct iio_dev *indio_dev)
> -{
> -	int ret;
> -
> -	adis->trig =3D iio_trigger_alloc("%s-dev%d", indio_dev->name,
> -					indio_dev->id);
> -	if (adis->trig =3D=3D NULL)
> -		return -ENOMEM;
> -
> -	adis_trigger_setup(adis);
> -
> -	ret =3D adis_validate_irq_flag(adis);
> -	if (ret)
> -		return ret;
> -
> -	ret =3D request_irq(adis->spi->irq,
> -			  &iio_trigger_generic_data_rdy_poll,
> -			  adis->irq_flag,
> -			  indio_dev->name,
> -			  adis->trig);
> -	if (ret)
> -		goto error_free_trig;
> -
> -	ret =3D iio_trigger_register(adis->trig);
> -
> -	indio_dev->trig =3D iio_trigger_get(adis->trig);
> -	if (ret)
> -		goto error_free_irq;
> -
> -	return 0;
> -
> -error_free_irq:
> -	free_irq(adis->spi->irq, adis->trig);
> -error_free_trig:
> -	iio_trigger_free(adis->trig);
> -	return ret;
> -}
> -EXPORT_SYMBOL_GPL(adis_probe_trigger);
>  =

>  /**
>   * devm_adis_probe_trigger() - Sets up trigger for a managed adis device
> @@ -137,16 +90,3 @@ int devm_adis_probe_trigger(struct adis *adis, struct=
 iio_dev *indio_dev)
>  }
>  EXPORT_SYMBOL_GPL(devm_adis_probe_trigger);
>  =

> -/**
> - * adis_remove_trigger() - Remove trigger for a adis devices
> - * @adis: The adis device
> - *
> - * Removes the trigger previously registered with adis_probe_trigger().
> - */
> -void adis_remove_trigger(struct adis *adis)
> -{
> -	iio_trigger_unregister(adis->trig);
> -	free_irq(adis->spi->irq, adis->trig);
> -	iio_trigger_free(adis->trig);
> -}
> -EXPORT_SYMBOL_GPL(adis_remove_trigger);
> diff --git a/include/linux/iio/imu/adis.h b/include/linux/iio/imu/adis.h
> index 2df67448f0d1..01ba691da2f3 100644
> --- a/include/linux/iio/imu/adis.h
> +++ b/include/linux/iio/imu/adis.h
> @@ -517,14 +517,8 @@ struct adis_burst {
>  int
>  devm_adis_setup_buffer_and_trigger(struct adis *adis, struct iio_dev *in=
dio_dev,
>  				   irq_handler_t trigger_handler);
> -int adis_setup_buffer_and_trigger(struct adis *adis,
> -	struct iio_dev *indio_dev, irqreturn_t (*trigger_handler)(int, void *));
> -void adis_cleanup_buffer_and_trigger(struct adis *adis,
> -	struct iio_dev *indio_dev);
>  =

>  int devm_adis_probe_trigger(struct adis *adis, struct iio_dev *indio_dev=
);
> -int adis_probe_trigger(struct adis *adis, struct iio_dev *indio_dev);
> -void adis_remove_trigger(struct adis *adis);
>  =

>  int adis_update_scan_mode(struct iio_dev *indio_dev,
>  	const unsigned long *scan_mask);
> @@ -538,33 +532,12 @@ devm_adis_setup_buffer_and_trigger(struct adis *adi=
s, struct iio_dev *indio_dev,
>  	return 0;
>  }
>  =

> -static inline int adis_setup_buffer_and_trigger(struct adis *adis,
> -	struct iio_dev *indio_dev, irqreturn_t (*trigger_handler)(int, void *))
> -{
> -	return 0;
> -}
> -
> -static inline void adis_cleanup_buffer_and_trigger(struct adis *adis,
> -	struct iio_dev *indio_dev)
> -{
> -}
> -
>  static inline int devm_adis_probe_trigger(struct adis *adis,
>  					  struct iio_dev *indio_dev)
>  {
>  	return 0;
>  }
>  =

> -static inline int adis_probe_trigger(struct adis *adis,
> -	struct iio_dev *indio_dev)
> -{
> -	return 0;
> -}
> -
> -static inline void adis_remove_trigger(struct adis *adis)
> -{
> -}
> -
>  #define adis_update_scan_mode NULL
>  =

>  #endif /* CONFIG_IIO_BUFFER */


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
