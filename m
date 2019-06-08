Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 902D139D2F
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:23:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2B03A21513;
	Sat,  8 Jun 2019 11:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYmw8Ry7neNG; Sat,  8 Jun 2019 11:23:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E5002150F;
	Sat,  8 Jun 2019 11:23:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 811331BF389
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:23:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7DFFB87917
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3TR7dir2qon2 for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:23:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D3267877E4
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:23:30 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BDFD2146E;
 Sat,  8 Jun 2019 11:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559993010;
 bh=6CTSTufkvionRt3c5R+LNs00e91X4cgfxmxmgF+pKhI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rN5u7arwjYEf4bjASDpdIRBgM/kAhADDv5jVFhSQLcEGIG9DvV2lno3WxX5k63ljM
 12tZayWm4d0vmN6N+7hMlJ2CpV0wlN9rPIljTPq6nZIKPDUt6T4yN+zd/cHTiflmKg
 q/y8W1Uwo/SPP1g1J/kkciuxk8B/8FiRIxZuywls=
Date: Sat, 8 Jun 2019 12:23:25 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v2 1/4] iio: adc: ad7606: Move oversampling and scale
 options to chip info
Message-ID: <20190608122325.6aeb7fdf@archlinux>
In-Reply-To: <20190527125650.2405-1-beniamin.bia@analog.com>
References: <20190527125650.2405-1-beniamin.bia@analog.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 27 May 2019 15:56:47 +0300
Beniamin Bia <beniamin.bia@analog.com> wrote:

> The device dependent options which are going to be different for devices
> which will be supported  in the future by this driver,
> were moved in chip info for a more generic driver. This patch allows
> supporting more devices by the driver. Also, it is an intermediate
> step of adding support for ad7616 in software mode.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> Acked-by: Jonathan Cameron <jic23@kernel.org>
Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan

> ---
> Changes in v2:
> -nothing changed
> 
>  drivers/iio/adc/ad7606.c | 61 +++++++++++++++++++++++++++++-----------
>  drivers/iio/adc/ad7606.h | 15 +++++++++-
>  2 files changed, 58 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
> index 24c70c3cefb4..c66ff22f32d2 100644
> --- a/drivers/iio/adc/ad7606.c
> +++ b/drivers/iio/adc/ad7606.c
> @@ -158,7 +158,7 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
>  		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_SCALE:
>  		*val = 0;
> -		*val2 = st->scale_avail[st->range];
> +		*val2 = st->scale_avail[st->range[0]];
>  		return IIO_VAL_INT_PLUS_MICRO;
>  	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
>  		*val = st->oversampling;
> @@ -194,6 +194,32 @@ static ssize_t in_voltage_scale_available_show(struct device *dev,
>  
>  static IIO_DEVICE_ATTR_RO(in_voltage_scale_available, 0);
>  
> +static int ad7606_write_scale_hw(struct iio_dev *indio_dev, int ch, int val)
> +{
> +	struct ad7606_state *st = iio_priv(indio_dev);
> +
> +	gpiod_set_value(st->gpio_range, val);
> +
> +	return 0;
> +}
> +
> +static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
> +{
> +	struct ad7606_state *st = iio_priv(indio_dev);
> +	DECLARE_BITMAP(values, 3);
> +
> +	values[0] = val;
> +
> +	gpiod_set_array_value(ARRAY_SIZE(values), st->gpio_os->desc,
> +			      st->gpio_os->info, values);
> +
> +	/* AD7616 requires a reset to update value */
> +	if (st->chip_info->os_req_reset)
> +		ad7606_reset(st);
> +
> +	return 0;
> +}
> +
>  static int ad7606_write_raw(struct iio_dev *indio_dev,
>  			    struct iio_chan_spec const *chan,
>  			    int val,
> @@ -201,15 +227,18 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
>  			    long mask)
>  {
>  	struct ad7606_state *st = iio_priv(indio_dev);
> -	DECLARE_BITMAP(values, 3);
> -	int i;
> +	int i, ret, ch = 0;
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_SCALE:
>  		mutex_lock(&st->lock);
>  		i = find_closest(val2, st->scale_avail, st->num_scales);
> -		gpiod_set_value(st->gpio_range, i);
> -		st->range = i;
> +		ret = st->write_scale(indio_dev, chan->address, i);
> +		if (ret < 0) {
> +			mutex_unlock(&st->lock);
> +			return ret;
> +		}
> +		st->range[ch] = i;
>  		mutex_unlock(&st->lock);
>  
>  		return 0;
> @@ -218,17 +247,12 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
>  			return -EINVAL;
>  		i = find_closest(val, st->oversampling_avail,
>  				 st->num_os_ratios);
> -
> -		values[0] = i;
> -
>  		mutex_lock(&st->lock);
> -		gpiod_set_array_value(ARRAY_SIZE(values), st->gpio_os->desc,
> -				      st->gpio_os->info, values);
> -
> -		/* AD7616 requires a reset to update value */
> -		if (st->chip_info->os_req_reset)
> -			ad7606_reset(st);
> -
> +		ret = st->write_os(indio_dev, i);
> +		if (ret < 0) {
> +			mutex_unlock(&st->lock);
> +			return ret;
> +		}
>  		st->oversampling = st->oversampling_avail[i];
>  		mutex_unlock(&st->lock);
>  
> @@ -536,7 +560,7 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
>  	st->bops = bops;
>  	st->base_address = base_address;
>  	/* tied to logic low, analog input range is +/- 5V */
> -	st->range = 0;
> +	st->range[0] = 0;
>  	st->oversampling = 1;
>  	st->scale_avail = ad7606_scale_avail;
>  	st->num_scales = ARRAY_SIZE(ad7606_scale_avail);
> @@ -589,6 +613,9 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
>  	if (ret)
>  		dev_warn(st->dev, "failed to RESET: no RESET GPIO specified\n");
>  
> +	st->write_scale = ad7606_write_scale_hw;
> +	st->write_os = ad7606_write_os_hw;
> +
>  	st->trig = devm_iio_trigger_alloc(dev, "%s-dev%d",
>  					  indio_dev->name, indio_dev->id);
>  	if (!st->trig)
> @@ -643,7 +670,7 @@ static int ad7606_resume(struct device *dev)
>  	struct ad7606_state *st = iio_priv(indio_dev);
>  
>  	if (st->gpio_standby) {
> -		gpiod_set_value(st->gpio_range, st->range);
> +		gpiod_set_value(st->gpio_range, st->range[0]);
>  		gpiod_set_value(st->gpio_standby, 1);
>  		ad7606_reset(st);
>  	}
> diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
> index f9ef52131e74..143c30163df9 100644
> --- a/drivers/iio/adc/ad7606.h
> +++ b/drivers/iio/adc/ad7606.h
> @@ -16,6 +16,12 @@
>   *			oversampling ratios.
>   * @oversampling_num	number of elements stored in oversampling_avail array
>   * @os_req_reset	some devices require a reset to update oversampling
> + * @write_scale_sw	pointer to the function which writes the scale via spi
> +			in software mode
> + * @write_os_sw		pointer to the function which writes the os via spi
> +			in software mode
> + * @sw_mode_config:	pointer to a function which configured the device
> + *			for software mode
>   */
>  struct ad7606_chip_info {
>  	const struct iio_chan_spec	*channels;
> @@ -23,6 +29,9 @@ struct ad7606_chip_info {
>  	const unsigned int		*oversampling_avail;
>  	unsigned int			oversampling_num;
>  	bool				os_req_reset;
> +	int (*write_scale_sw)(struct iio_dev *indio_dev, int ch, int val);
> +	int (*write_os_sw)(struct iio_dev *indio_dev, int val);
> +	int (*sw_mode_config)(struct iio_dev *indio_dev);
>  };
>  
>  /**
> @@ -39,6 +48,8 @@ struct ad7606_chip_info {
>   * @oversampling_avail	pointer to the array which stores the available
>   *			oversampling ratios.
>   * @num_os_ratios	number of elements stored in oversampling_avail array
> + * @write_scale		pointer to the function which writes the scale
> + * @write_os		pointer to the function which writes the os
>   * @lock		protect sensor state from concurrent accesses to GPIOs
>   * @gpio_convst	GPIO descriptor for conversion start signal (CONVST)
>   * @gpio_reset		GPIO descriptor for device hard-reset
> @@ -57,13 +68,15 @@ struct ad7606_state {
>  	const struct ad7606_chip_info	*chip_info;
>  	struct regulator		*reg;
>  	const struct ad7606_bus_ops	*bops;
> -	unsigned int			range;
> +	unsigned int			range[16];
>  	unsigned int			oversampling;
>  	void __iomem			*base_address;
>  	const unsigned int		*scale_avail;
>  	unsigned int			num_scales;
>  	const unsigned int		*oversampling_avail;
>  	unsigned int			num_os_ratios;
> +	int (*write_scale)(struct iio_dev *indio_dev, int ch, int val);
> +	int (*write_os)(struct iio_dev *indio_dev, int val);
>  
>  	struct mutex			lock; /* protect sensor state */
>  	struct gpio_desc		*gpio_convst;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
