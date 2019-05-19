Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 960B9226B9
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 13:12:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8106686234;
	Sun, 19 May 2019 11:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HHrvgdYZL3KK; Sun, 19 May 2019 11:12:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCBB5861A4;
	Sun, 19 May 2019 11:12:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 350A61BF3A4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 31DAA228A0
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:12:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8PKcvkv2lKX for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 11:12:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0FB2522122
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 11:12:15 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9F14217D8;
 Sun, 19 May 2019 11:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558264334;
 bh=D7vV54mW1ZbMLbElOBW6ZJBZ/Fl6MX3yycwmL624yyg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZkqwMO3FgTmFv69FrXPgZkjxdiur2yQ/jhav/Tq3PiVlcbsVj3ihIILET5UBX5LE1
 GFF375/cdaKeSeAf91sByvBZ1jo0zsYnZJ33zIxCp6ez505nuGBJyOcUeDqLBuIEnm
 kVLOYBNgqqJnL3JPG8z4w6m9ZmWl6B81VBzh309g=
Date: Sun, 19 May 2019 12:12:09 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Tallys Martins <tallysmartins@gmail.com>
Subject: Re: [PATCH 1/2] staging: iio: ad2s1210: Destroy mutex at remove
Message-ID: <20190519121209.71524d18@archlinux>
In-Reply-To: <20190518221558.21799-1-tallysmartins@gmail.com>
References: <20190518221558.21799-1-tallysmartins@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>, kernel-usp@googlegroups.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-kernel@vger.kernel.or
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 18 May 2019 19:15:57 -0300
Tallys Martins <tallysmartins@gmail.com> wrote:

> Ensure the mutex will be destroyed on drive removal.
> Also adds mutex comment description.
> 
> Signed-off-by: Tallys Martins <tallysmartins@gmail.com>
> Signed-off-by: Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>
> Co-developed-by: Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>
Hi.

This particular 'issue' is never a simple one.

The destroy_mutex call is intended for lock debugging only,
which is why there is devm_init_mutex or similar to allow for
automatic unwinding. 

It simple cleanup paths like this, it provides very little value
and leads to a more complex unwind.

It is for this reason that the vast majority of drivers simply
don't bother.

Hence, unless there is a good reason I'm missing I won't be
introducing more of them.

Thanks,

Jonathan

> ---
>  drivers/staging/iio/resolver/ad2s1210.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index b6be0bc202f5..b91cf57c5e57 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -86,7 +86,7 @@ static const struct ad2s1210_gpio gpios[] = {
>  static const unsigned int ad2s1210_resolution_value[] = { 10, 12, 14, 16 };
>  
>  struct ad2s1210_state {
> -	struct mutex lock;
> +	struct mutex lock; /* lock to protect the state on r/w operations */
>  	struct spi_device *sdev;
>  	struct gpio_desc *gpios[5];
>  	unsigned int fclkin;
> @@ -689,8 +689,10 @@ static int ad2s1210_probe(struct spi_device *spi)
>  static int ad2s1210_remove(struct spi_device *spi)
>  {
>  	struct iio_dev *indio_dev = spi_get_drvdata(spi);
> +	struct ad2s1210_state *ad2s1210_ad = iio_priv(indio_dev);
>  
>  	iio_device_unregister(indio_dev);
> +	mutex_destroy(&ad2s1210_ad->lock);
>  
>  	return 0;
>  }

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
