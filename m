Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFDD19EA92
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 12:49:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 971AF8723D;
	Sun,  5 Apr 2020 10:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kCivrhKiNkPw; Sun,  5 Apr 2020 10:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39E0287277;
	Sun,  5 Apr 2020 10:49:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 598451BF3CA
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 10:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 55DE22036E
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 10:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MuHN46m6yeal for <devel@linuxdriverproject.org>;
 Sun,  5 Apr 2020 10:49:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8EA6720364
 for <devel@driverdev.osuosl.org>; Sun,  5 Apr 2020 10:49:49 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 206C3206F7;
 Sun,  5 Apr 2020 10:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586083789;
 bh=/VZ3KmIgEC6efHdxH1vT5MP77jl2r8v/FZq5ipfD3Uw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xSpnB6eSk090CkMIWAIBx7/xjvdbPpTkK9Cjnm7WMk6qXPTSUVh8kvQMg0Fv+wcyk
 4Etba6lm8LU2yp4zvFvErrkg1Jxf5f1eGYF9zpVa04smyfdqjPRxr+Y5DkKArV4Wym
 qtOFLwvv/C+XmQWrx4mpEf/dDk4l2wAJZSlStC7s=
Date: Sun, 5 Apr 2020 11:49:45 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH 3/3] staging: iio: ad5933: use
 iio_device_attach_kfifo_buffer() helper
Message-ID: <20200405114945.67110eb2@archlinux>
In-Reply-To: <20200401125936.6398-3-alexandru.ardelean@analog.com>
References: <20200401125936.6398-1-alexandru.ardelean@analog.com>
 <20200401125936.6398-3-alexandru.ardelean@analog.com>
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 lorenzo.bianconi83@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 1 Apr 2020 15:59:36 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> This driver calls iio_kfifo_allocate() vs devm_iio_kfifo_allocate(). But
> the conversion is still simpler here, and cleans-up/reduces some error
> paths.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

This mixes devm managed stuff an unmanaged.  Hence it fails the 'obviously correct'
test.  If you wanted to do this you'd first need to sort out the unmanaged
bits to be automatically unwound (regulators and clocks). Or potentially reorder
the driver so those happen after this allocation is done.

Thanks,

Jonathan

> ---
>  .../staging/iio/impedance-analyzer/ad5933.c   | 28 ++++---------------
>  1 file changed, 5 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> index af0bcf95ee8a..7bde93c6dd74 100644
> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> @@ -602,22 +602,6 @@ static const struct iio_buffer_setup_ops ad5933_ring_setup_ops = {
>  	.postdisable = ad5933_ring_postdisable,
>  };
>  
> -static int ad5933_register_ring_funcs_and_init(struct iio_dev *indio_dev)
> -{
> -	struct iio_buffer *buffer;
> -
> -	buffer = iio_kfifo_allocate();
> -	if (!buffer)
> -		return -ENOMEM;
> -
> -	iio_device_attach_buffer(indio_dev, buffer);
> -
> -	/* Ring buffer functions - here trigger setup related */
> -	indio_dev->setup_ops = &ad5933_ring_setup_ops;
> -
> -	return 0;
> -}
> -
>  static void ad5933_work(struct work_struct *work)
>  {
>  	struct ad5933_state *st = container_of(work,
> @@ -738,26 +722,25 @@ static int ad5933_probe(struct i2c_client *client,
>  	indio_dev->dev.parent = &client->dev;
>  	indio_dev->info = &ad5933_info;
>  	indio_dev->name = id->name;
> -	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
> +	indio_dev->modes = INDIO_DIRECT_MODE;
>  	indio_dev->channels = ad5933_channels;
>  	indio_dev->num_channels = ARRAY_SIZE(ad5933_channels);
>  
> -	ret = ad5933_register_ring_funcs_and_init(indio_dev);
> +	ret = iio_device_attach_kfifo_buffer(indio_dev, INDIO_BUFFER_SOFTWARE,
> +					     &ad5933_ring_setup_ops);
>  	if (ret)
>  		goto error_disable_mclk;
>  
>  	ret = ad5933_setup(st);
>  	if (ret)
> -		goto error_unreg_ring;
> +		goto error_disable_mclk;
>  
>  	ret = iio_device_register(indio_dev);
>  	if (ret)
> -		goto error_unreg_ring;
> +		goto error_disable_mclk;
>  
>  	return 0;
>  
> -error_unreg_ring:
> -	iio_kfifo_free(indio_dev->buffer);
>  error_disable_mclk:
>  	clk_disable_unprepare(st->mclk);
>  error_disable_reg:
> @@ -772,7 +755,6 @@ static int ad5933_remove(struct i2c_client *client)
>  	struct ad5933_state *st = iio_priv(indio_dev);
>  
>  	iio_device_unregister(indio_dev);
> -	iio_kfifo_free(indio_dev->buffer);
>  	regulator_disable(st->reg);
>  	clk_disable_unprepare(st->mclk);
>  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
