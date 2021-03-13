Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CA933A01B
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 19:55:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18BFA42C9B;
	Sat, 13 Mar 2021 18:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j11XUTcKnJtH; Sat, 13 Mar 2021 18:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 180C2452D8;
	Sat, 13 Mar 2021 18:55:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10C671BF836
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 18:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D333400C7
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 18:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nVdj6l-3wumr for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 18:54:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 58851400C4
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 18:54:58 +0000 (UTC)
Received: from archlinux (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 523AE64E54;
 Sat, 13 Mar 2021 18:54:56 +0000 (UTC)
Date: Sat, 13 Mar 2021 18:54:53 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <aardelean@deviqon.com>
Subject: Re: [PATCH] staging: iio: ad9834: convert to device-managed
 functions in probe
Message-ID: <20210313185453.76f2518c@archlinux>
In-Reply-To: <20210310095131.47476-1-aardelean@deviqon.com>
References: <20210310095131.47476-1-aardelean@deviqon.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 10 Mar 2021 11:51:31 +0200
Alexandru Ardelean <aardelean@deviqon.com> wrote:

> This change converts the driver to use device-managed functions in the
> probe function. For the clock and regulator disable, some
> devm_add_action_or_reset() calls are required, and then
> devm_iio_device_register() function can be used register the IIO device.
> 
> The final aim here would be for IIO to export only the device-managed
> functions of it's API. That's a long way to go and this a small step in
> that direction.
> 
> Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>

I tweaked this a little to drop st->reg as it's no longer used.

Applied to the togreg branch of iio.git and pushed out as testing for
allow the autobuilders to poke randomly at it.

Thanks,

Jonathan

> ---
>  drivers/staging/iio/frequency/ad9834.c | 64 +++++++++++++-------------
>  1 file changed, 31 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> index 262c3590e64e..b063cfd0e0e1 100644
> --- a/drivers/staging/iio/frequency/ad9834.c
> +++ b/drivers/staging/iio/frequency/ad9834.c
> @@ -390,6 +390,20 @@ static const struct iio_info ad9833_info = {
>  	.attrs = &ad9833_attribute_group,
>  };
>  
> +static void ad9834_disable_reg(void *data)
> +{
> +	struct regulator *reg = data;
> +
> +	regulator_disable(reg);
> +}
> +
> +static void ad9834_disable_clk(void *data)
> +{
> +	struct clk *clk = data;
> +
> +	clk_disable_unprepare(clk);
> +}
> +
>  static int ad9834_probe(struct spi_device *spi)
>  {
>  	struct ad9834_state *st;
> @@ -407,26 +421,33 @@ static int ad9834_probe(struct spi_device *spi)
>  		return ret;
>  	}
>  
> +	ret = devm_add_action_or_reset(&spi->dev, ad9834_disable_reg, reg);
> +	if (ret)
> +		return ret;
> +
>  	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
>  	if (!indio_dev) {
>  		ret = -ENOMEM;
> -		goto error_disable_reg;
> +		return ret;
>  	}
> -	spi_set_drvdata(spi, indio_dev);
>  	st = iio_priv(indio_dev);
>  	mutex_init(&st->lock);
>  	st->mclk = devm_clk_get(&spi->dev, NULL);
>  	if (IS_ERR(st->mclk)) {
>  		ret = PTR_ERR(st->mclk);
> -		goto error_disable_reg;
> +		return ret;
>  	}
>  
>  	ret = clk_prepare_enable(st->mclk);
>  	if (ret) {
>  		dev_err(&spi->dev, "Failed to enable master clock\n");
> -		goto error_disable_reg;
> +		return ret;
>  	}
>  
> +	ret = devm_add_action_or_reset(&spi->dev, ad9834_disable_clk, st->mclk);
> +	if (ret)
> +		return ret;
> +
>  	st->spi = spi;
>  	st->devid = spi_get_device_id(spi)->driver_data;
>  	st->reg = reg;
> @@ -470,48 +491,26 @@ static int ad9834_probe(struct spi_device *spi)
>  	ret = spi_sync(st->spi, &st->msg);
>  	if (ret) {
>  		dev_err(&spi->dev, "device init failed\n");
> -		goto error_clock_unprepare;
> +		return ret;
>  	}
>  
>  	ret = ad9834_write_frequency(st, AD9834_REG_FREQ0, 1000000);
>  	if (ret)
> -		goto error_clock_unprepare;
> +		return ret;
>  
>  	ret = ad9834_write_frequency(st, AD9834_REG_FREQ1, 5000000);
>  	if (ret)
> -		goto error_clock_unprepare;
> +		return ret;
>  
>  	ret = ad9834_write_phase(st, AD9834_REG_PHASE0, 512);
>  	if (ret)
> -		goto error_clock_unprepare;
> +		return ret;
>  
>  	ret = ad9834_write_phase(st, AD9834_REG_PHASE1, 1024);
>  	if (ret)
> -		goto error_clock_unprepare;
> -
> -	ret = iio_device_register(indio_dev);
> -	if (ret)
> -		goto error_clock_unprepare;
> -
> -	return 0;
> -error_clock_unprepare:
> -	clk_disable_unprepare(st->mclk);
> -error_disable_reg:
> -	regulator_disable(reg);
> -
> -	return ret;
> -}
> -
> -static int ad9834_remove(struct spi_device *spi)
> -{
> -	struct iio_dev *indio_dev = spi_get_drvdata(spi);
> -	struct ad9834_state *st = iio_priv(indio_dev);
> -
> -	iio_device_unregister(indio_dev);
> -	clk_disable_unprepare(st->mclk);
> -	regulator_disable(st->reg);
> +		return ret;
>  
> -	return 0;
> +	return devm_iio_device_register(&spi->dev, indio_dev);
>  }
>  
>  static const struct spi_device_id ad9834_id[] = {
> @@ -539,7 +538,6 @@ static struct spi_driver ad9834_driver = {
>  		.of_match_table = ad9834_of_match
>  	},
>  	.probe		= ad9834_probe,
> -	.remove		= ad9834_remove,
>  	.id_table	= ad9834_id,
>  };
>  module_spi_driver(ad9834_driver);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
