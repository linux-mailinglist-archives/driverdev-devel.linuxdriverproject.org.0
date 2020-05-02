Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 858871C278C
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 20:25:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B477870D2;
	Sat,  2 May 2020 18:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xd5bBN1f6V45; Sat,  2 May 2020 18:25:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B86F187074;
	Sat,  2 May 2020 18:25:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7143B1BF239
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 18:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6DEF587EBB
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 18:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QbgmMV05WOm8 for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 18:25:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D6EE087E59
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 18:25:45 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB6062072E;
 Sat,  2 May 2020 18:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588443945;
 bh=4xtD+5d23b9hmfE6WuotCTglkcLgeOgR/W0bd3CpJsg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xtlIwTwcSxZ2EgS7xSg/Q5PPVOXa9WxzHRrJwuPRpIfkJs7YUzjJtwZQX8klHXHJM
 gCLcRV375bZ2X2VespTPsTsuup4GNMXlu3nYH4i/fSxCpBNEVaorB6v9hGbC0T/9wT
 Yl/vVSXZGFuzWRbGUdZXkbp8xYasq2bZuGZeC1LQ=
Date: Sat, 2 May 2020 19:25:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH] staging: iio: ad5933: rework probe to use devm_
 function variants
Message-ID: <20200502192542.63cc25a2@archlinux>
In-Reply-To: <20200428093128.60747-1-alexandru.ardelean@analog.com>
References: <20200428093128.60747-1-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 28 Apr 2020 12:31:28 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> This change cleans up the driver's probe function to use only devm_
> function variants. This also gets rid of the remove function and moves the
> clock & regulator de-initializations to the 'ad5933_cleanup()' callback.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Basic rule of thumb. Whatever you register with devm_add_action_or_reset
should only cleanup one one thing done in the probe path.
There is almost always a race if you do more than one bit of cleanup
per such callback + it's harder to review as it fails the 'obviously correct
test'.

Jonathan

> ---
>  .../staging/iio/impedance-analyzer/ad5933.c   | 59 ++++++++-----------
>  1 file changed, 23 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> index af0bcf95ee8a..06a6dcd7883b 100644
> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> @@ -602,11 +602,12 @@ static const struct iio_buffer_setup_ops ad5933_ring_setup_ops = {
>  	.postdisable = ad5933_ring_postdisable,
>  };
>  
> -static int ad5933_register_ring_funcs_and_init(struct iio_dev *indio_dev)
> +static int ad5933_register_ring_funcs_and_init(struct device *dev,
> +					       struct iio_dev *indio_dev)
>  {
>  	struct iio_buffer *buffer;
>  
> -	buffer = iio_kfifo_allocate();
> +	buffer = devm_iio_kfifo_allocate(dev);
>  	if (!buffer)
>  		return -ENOMEM;
>  
> @@ -676,6 +677,14 @@ static void ad5933_work(struct work_struct *work)
>  	}
>  }
>  
> +static void ad5933_cleanup(void *data)
> +{
> +	struct ad5933_state *st = data;
> +
> +	clk_disable_unprepare(st->mclk);
> +	regulator_disable(st->reg);

Please do two separate callbacks so that these can be handled
in the correct places.  I.e. you do something then immediately
register the handler to undo it.

Currently you can end up disabling a clock you haven't enabled
(which I am fairly sure will give you an error message).

> +}
> +
>  static int ad5933_probe(struct i2c_client *client,
>  			const struct i2c_device_id *id)
>  {
> @@ -703,23 +712,28 @@ static int ad5933_probe(struct i2c_client *client,
>  		dev_err(&client->dev, "Failed to enable specified VDD supply\n");
>  		return ret;
>  	}
> +
> +	ret = devm_add_action_or_reset(&client->dev, ad5933_cleanup, st);
> +	if (ret)
> +		return ret;
> +
>  	ret = regulator_get_voltage(st->reg);
>  
>  	if (ret < 0)
> -		goto error_disable_reg;
> +		return ret;
>  
>  	st->vref_mv = ret / 1000;
>  
>  	st->mclk = devm_clk_get(&client->dev, "mclk");
>  	if (IS_ERR(st->mclk) && PTR_ERR(st->mclk) != -ENOENT) {
>  		ret = PTR_ERR(st->mclk);
> -		goto error_disable_reg;
> +		return ret;
>  	}
>  
>  	if (!IS_ERR(st->mclk)) {
>  		ret = clk_prepare_enable(st->mclk);
>  		if (ret < 0)
> -			goto error_disable_reg;
> +			return ret;
>  		ext_clk_hz = clk_get_rate(st->mclk);
>  	}
>  
> @@ -742,41 +756,15 @@ static int ad5933_probe(struct i2c_client *client,
>  	indio_dev->channels = ad5933_channels;
>  	indio_dev->num_channels = ARRAY_SIZE(ad5933_channels);
>  
> -	ret = ad5933_register_ring_funcs_and_init(indio_dev);
> +	ret = ad5933_register_ring_funcs_and_init(&client->dev, indio_dev);
>  	if (ret)
> -		goto error_disable_mclk;
> +		return ret;
>  
>  	ret = ad5933_setup(st);
>  	if (ret)
> -		goto error_unreg_ring;
> -
> -	ret = iio_device_register(indio_dev);
> -	if (ret)
> -		goto error_unreg_ring;
> -
> -	return 0;
> -
> -error_unreg_ring:
> -	iio_kfifo_free(indio_dev->buffer);
> -error_disable_mclk:
> -	clk_disable_unprepare(st->mclk);
> -error_disable_reg:
> -	regulator_disable(st->reg);
> -
> -	return ret;
> -}
> -
> -static int ad5933_remove(struct i2c_client *client)
> -{
> -	struct iio_dev *indio_dev = i2c_get_clientdata(client);
> -	struct ad5933_state *st = iio_priv(indio_dev);
> -
> -	iio_device_unregister(indio_dev);
> -	iio_kfifo_free(indio_dev->buffer);
> -	regulator_disable(st->reg);
> -	clk_disable_unprepare(st->mclk);
> +		return ret;
>  
> -	return 0;
> +	return devm_iio_device_register(&client->dev, indio_dev);
>  }
>  
>  static const struct i2c_device_id ad5933_id[] = {
> @@ -801,7 +789,6 @@ static struct i2c_driver ad5933_driver = {
>  		.of_match_table = ad5933_of_match,
>  	},
>  	.probe = ad5933_probe,
> -	.remove = ad5933_remove,
>  	.id_table = ad5933_id,
>  };
>  module_i2c_driver(ad5933_driver);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
