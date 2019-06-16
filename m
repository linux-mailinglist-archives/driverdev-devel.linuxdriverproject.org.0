Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B04247426
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 12:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA14785AA1;
	Sun, 16 Jun 2019 10:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AiwIadrDJJpE; Sun, 16 Jun 2019 10:15:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 813EC85A37;
	Sun, 16 Jun 2019 10:15:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE4011BF377
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 10:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA15785A37
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 10:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id frYJ40_vIB15 for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 10:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B74A8598E
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 10:15:22 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E50762084A;
 Sun, 16 Jun 2019 10:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560680122;
 bh=116gNnnNy/e29WMtBdj5C75Li/l8wNZzUynmTfBEW/A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Je+DETy2uWBpOU5jANMAp8ZiIKDWT6Or26kBfzSkBvcVQxEXT1AKAuEv0Sg4GJ92U
 bSLcq6Gq2aYZJC3iq7xmeMVUYoeRkE8k3DuSzanaV882kjKhHiN3Utn7L8bJ+K9waL
 8X45AtbYgjqFGlcUqxrCW1r9OTiLHSvoUCaqC02Y=
Date: Sun, 16 Jun 2019 11:15:16 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [PATCH] staging: iio: ad7150: use ternary operating to ensure
 0/1 value
Message-ID: <20190616111516.1af0d41b@archlinux>
In-Reply-To: <20190614165059.7bifufvhxofy6ybu@smtp.gmail.com>
References: <20190614165059.7bifufvhxofy6ybu@smtp.gmail.com>
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

On Fri, 14 Jun 2019 13:50:59 -0300
Melissa Wen <melissa.srw@gmail.com> wrote:

> Remove idiom and use ternary operator for consistently trigger 0/1 value
> on variable declaration.
> 
> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
Hi Melissa,

In general I would consider this unnecessary churn as, whilst
it's no longer a favoured idiom, it is extremely common in the
kernel.  However, as this is a staging cleanup, fair enough to
make it as 'nice as possible'! 

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

Thanks,

Jonathan

> ---
>  drivers/staging/iio/cdc/ad7150.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index 8234da4b8c65..25598bf124fb 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -350,8 +350,8 @@ static ssize_t ad7150_show_timeout(struct device *dev,
>  
>  	/* use the event code for consistency reasons */
>  	int chan = IIO_EVENT_CODE_EXTRACT_CHAN(this_attr->address);
> -	int rising = !!(IIO_EVENT_CODE_EXTRACT_DIR(this_attr->address)
> -			== IIO_EV_DIR_RISING);
> +	int rising = (IIO_EVENT_CODE_EXTRACT_DIR(this_attr->address)
> +		      == IIO_EV_DIR_RISING) ? 1 : 0;
>  
>  	switch (IIO_EVENT_CODE_EXTRACT_TYPE(this_attr->address)) {
>  	case IIO_EV_TYPE_MAG_ADAPTIVE:

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
