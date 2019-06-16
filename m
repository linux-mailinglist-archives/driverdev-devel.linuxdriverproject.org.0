Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A3447434
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 12:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 720B4878CD;
	Sun, 16 Jun 2019 10:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jez8JZR8itrH; Sun, 16 Jun 2019 10:20:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2A6C877F1;
	Sun, 16 Jun 2019 10:20:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFB811BF377
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 10:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC40E86224
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 10:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dBN-tb6db4yf for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 10:20:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 549DC86223
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 10:20:21 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE5A32084A;
 Sun, 16 Jun 2019 10:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560680421;
 bh=iBkYP6OfU54csm2E37SPikvbgfpw7ys0HbRZX4qW+4Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XJaNAmw7TcK41st5yYw2e9/EQXxLNabrPusfr6OOr9IirDY08R9Fg3/woo3emkSGk
 XPFAOaaJY42wcMGK4EMopx1wNIq7rHb87fPRNsU0BKzJOHV/lkPjY8bB0rGiu7y+Ee
 qHxOnKLhFqm6JQrtyr+wEC90HaKwFber3V+EsyVE=
Date: Sun, 16 Jun 2019 11:20:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [PATCH v2 3/3] staging: iio: ad7150: clean up of comments
Message-ID: <20190616112014.1010b145@archlinux>
In-Reply-To: <a88f36a998eb3fc91cc70bc8fc76e3614706cdbe.1560529045.git.melissa.srw@gmail.com>
References: <cover.1560529045.git.melissa.srw@gmail.com>
 <a88f36a998eb3fc91cc70bc8fc76e3614706cdbe.1560529045.git.melissa.srw@gmail.com>
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
 Barry Song <21cnbao@gmail.com>, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 14 Jun 2019 13:33:19 -0300
Melissa Wen <melissa.srw@gmail.com> wrote:

> General cleaning of comments to remove useless information or improve
> description.
> 
> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
Applied,

Thanks,

Jonathan

> ---
>  drivers/staging/iio/cdc/ad7150.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index 7d56f10a19ed..51d6b52bce8b 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -163,7 +163,8 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
>  	return -EINVAL;
>  }
>  
> -/* lock should be held */
> +/* state_lock should be held to ensure consistent state*/
> +
>  static int ad7150_write_event_params(struct iio_dev *indio_dev,
>  				     unsigned int chan,
>  				     enum iio_event_type type,
> @@ -479,10 +480,6 @@ static const struct iio_chan_spec ad7150_channels[] = {
>  	AD7150_CAPACITANCE_CHAN(1)
>  };
>  
> -/*
> - * threshold events
> - */
> -
>  static irqreturn_t ad7150_event_handler(int irq, void *private)
>  {
>  	struct iio_dev *indio_dev = private;
> @@ -571,10 +568,6 @@ static const struct iio_info ad7150_info = {
>  	.write_event_value = &ad7150_write_event_value,
>  };
>  
> -/*
> - * device probe and remove
> - */
> -
>  static int ad7150_probe(struct i2c_client *client,
>  			const struct i2c_device_id *id)
>  {

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
