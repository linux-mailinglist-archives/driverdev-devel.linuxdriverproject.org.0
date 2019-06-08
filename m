Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B400639D4C
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:34:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F1D28219C;
	Sat,  8 Jun 2019 11:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1vDyNe5u80xY; Sat,  8 Jun 2019 11:34:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2775880112;
	Sat,  8 Jun 2019 11:34:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA6401BF389
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C7A5987985
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OlpJhPj0Dhsi for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:34:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B7B38796C
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:34:37 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5AC22146E;
 Sat,  8 Jun 2019 11:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559993677;
 bh=5o3WJ+PlDP4ACOl8NEp4Y7t3xVI0OyqdulVA5Cshjk4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BqEPKE/NNqSsqN3rY2sMii1L6Z4fGDv4u6ybd1DlIY1fJK7gf95lAVRQMsxa6QUkD
 yMBZaRY8SDsWxHnKVoEej6gnM/K2l2BKy9FzXgH89I0r/dlK6652P9keGLw4bgE4Xe
 Tl0jef6D1lVt5u/9lXtVIpoh0qMVxQ5t4T8jgM9k=
Date: Sat, 8 Jun 2019 12:34:31 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v2 4/4] iio: adc: ad7606: Add debug mode for ad7616
Message-ID: <20190608123431.14f8dd07@archlinux>
In-Reply-To: <20190527125650.2405-4-beniamin.bia@analog.com>
References: <20190527125650.2405-1-beniamin.bia@analog.com>
 <20190527125650.2405-4-beniamin.bia@analog.com>
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

On Mon, 27 May 2019 15:56:50 +0300
Beniamin Bia <beniamin.bia@analog.com> wrote:

> Support for register access was added for spi devices.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> Acked-by: Jonathan Cameron <jic23@kernel.org>
Applied.

Thanks,

Jonathan

> ---
> Changes in v2:
> -nothing changed
> 
>  drivers/iio/adc/ad7606.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
> index 8e09ad4bb72e..0eccfc873802 100644
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
