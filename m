Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 504EE77917
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2019 16:01:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB14187587;
	Sat, 27 Jul 2019 14:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x_RFzHqudPGu; Sat, 27 Jul 2019 14:01:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FBF187568;
	Sat, 27 Jul 2019 14:01:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 795721BF404
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 14:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7613B87561
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 14:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tfoYdbjqYJg5 for <devel@linuxdriverproject.org>;
 Sat, 27 Jul 2019 14:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E86FB874AD
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 14:01:06 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CA3120840;
 Sat, 27 Jul 2019 14:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564236066;
 bh=FSQSrO+2OwW4fijGmMlDa81a0rfWwjuQHjY9U+gpkrw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PjR7grEfGHOQFtuaNbz5IhNwZ5v/m+2PD7bg9i04Qhls6KRovzoTPO7oljMWSpXs6
 TBOczKpYe2CL11a1hqLvL2sqnSaKNLMMOYBrKiP136O6NFzFJxWwVnfaSSupW1IH0/
 sOwS2KI4W2VVqYY+OKtXZ0kSdf7snrc/eOzXwPlM=
Date: Sat, 27 Jul 2019 15:01:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH] staging: iio: ad2s1210: Use device-managed API
Message-ID: <20190727150101.43bb4314@archlinux>
In-Reply-To: <b7c56658547a972b4e4a2b075b2319192f89c803.camel@analog.com>
References: <20190726110742.20445-1-hslester96@gmail.com>
 <b7c56658547a972b4e4a2b075b2319192f89c803.camel@analog.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "hslester96@gmail.com" <hslester96@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Popa,
 Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 26 Jul 2019 12:36:08 +0000
"Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:

> On Fri, 2019-07-26 at 19:07 +0800, Chuhong Yuan wrote:
> > [External]
> > 
> > Use device-managed API to simplify the code.
> > The remove function is redundant now and can
> > be deleted.  
> 
> Reviewed-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
The end of this probe function is rather odd and probably needs sorting
out as I imagine that needs to happen before the device is exposed to
userspace.

Nothing to do with this patch though which is great.

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

Thanks,

Jonathan

> 
> > 
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/staging/iio/resolver/ad2s1210.c | 12 +-----------
> >  1 file changed, 1 insertion(+), 11 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> > index 0c1bd108c386..4b25a3a314ed 100644
> > --- a/drivers/staging/iio/resolver/ad2s1210.c
> > +++ b/drivers/staging/iio/resolver/ad2s1210.c
> > @@ -671,7 +671,7 @@ static int ad2s1210_probe(struct spi_device *spi)
> >  	indio_dev->num_channels = ARRAY_SIZE(ad2s1210_channels);
> >  	indio_dev->name = spi_get_device_id(spi)->name;
> >  
> > -	ret = iio_device_register(indio_dev);
> > +	ret = devm_iio_device_register(&spi->dev, indio_dev);
> >  	if (ret)
> >  		return ret;
> >  
> > @@ -683,15 +683,6 @@ static int ad2s1210_probe(struct spi_device *spi)
> >  	return 0;
> >  }
> >  
> > -static int ad2s1210_remove(struct spi_device *spi)
> > -{
> > -	struct iio_dev *indio_dev = spi_get_drvdata(spi);
> > -
> > -	iio_device_unregister(indio_dev);
> > -
> > -	return 0;
> > -}
> > -
> >  static const struct of_device_id ad2s1210_of_match[] = {
> >  	{ .compatible = "adi,ad2s1210", },
> >  	{ }
> > @@ -710,7 +701,6 @@ static struct spi_driver ad2s1210_driver = {
> >  		.of_match_table = of_match_ptr(ad2s1210_of_match),
> >  	},
> >  	.probe = ad2s1210_probe,
> > -	.remove = ad2s1210_remove,
> >  	.id_table = ad2s1210_id,
> >  };
> >  module_spi_driver(ad2s1210_driver);  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
