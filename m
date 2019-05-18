Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1F62232F
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 12:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD100234AA;
	Sat, 18 May 2019 10:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Alh5ufKrr6QO; Sat, 18 May 2019 10:24:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BBF662291B;
	Sat, 18 May 2019 10:24:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 418601BF2F7
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 10:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E182867D4
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 10:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y589B3EVYhML for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 10:24:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B04F284AAD
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 10:24:43 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3054D2087E;
 Sat, 18 May 2019 10:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558175083;
 bh=ibvW7SwyQ3CtG0/rGvBYo/iCT1Uk227T0d/UHdaBThQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oXbas6dlXC+mwnFsb8eD64SpoU/zr0mteOpjUPoZJs2BnIldcs30PSe+KBUpm3gTp
 jsmYkIE8pBR8SMQAG+O1Y59CNL0hp0pv8piqJthfoN0R4aPbnRT4BCAA15CqPdZhbc
 gHs/UeC7QMEbBTAfZlVFDIn3DNjUX9m2XjK+XUQo=
Date: Sat, 18 May 2019 11:24:37 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH 5/5] iio: adc: ad7606: Add debug mode for ad7616
Message-ID: <20190518112437.0ec3d0e8@archlinux>
In-Reply-To: <20190516143208.19294-5-beniamin.bia@analog.com>
References: <20190516143208.19294-1-beniamin.bia@analog.com>
 <20190516143208.19294-5-beniamin.bia@analog.com>
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

On Thu, 16 May 2019 17:32:08 +0300
Beniamin Bia <beniamin.bia@analog.com> wrote:

> Support for register access was added for spi devices.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
Looks fine.  For my reference please add
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/iio/adc/ad7606.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
> index f77df3efe43f..b03bdce4fd4e 100644
> --- a/drivers/iio/adc/ad7606.c
> +++ b/drivers/iio/adc/ad7606.c
> @@ -134,6 +134,30 @@ static int ad7606_spi_write_mask(struct ad7606_state *st,
>  	return ad7606_spi_reg_write(st, addr, readval);
>  }
>  
> +static int ad7606_reg_access(struct iio_dev *indio_dev,
> +			     unsigned int reg,
> +			     unsigned int writeval,
> +			     unsigned int *readval)
> +{
> +	struct ad7606_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	mutex_lock(&st->lock);
> +	if (readval) {
> +		ret = ad7606_spi_reg_read(st, reg);
> +		if (ret < 0)
> +			goto err_unlock;
> +		*readval = ret;
> +		ret = 0;
> +	} else {
> +		ret = ad7606_spi_reg_write(st, reg, writeval);
> +	}
> +err_unlock:
> +	mutex_unlock(&st->lock);
> +
> +	return ret;
> +}
> +
>  static int ad7606_read_samples(struct ad7606_state *st)
>  {
>  	unsigned int num = st->chip_info->num_channels;
> @@ -645,6 +669,7 @@ static const struct iio_info ad7606_info_no_os_or_range = {
>  static const struct iio_info ad7606_info_os_and_range = {
>  	.read_raw = &ad7606_read_raw,
>  	.write_raw = &ad7606_write_raw,
> +	.debugfs_reg_access = &ad7606_reg_access,
>  	.attrs = &ad7606_attribute_group_os_and_range,
>  	.validate_trigger = &ad7606_validate_trigger,
>  };

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
