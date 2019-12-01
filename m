Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BC310E1B9
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Dec 2019 12:42:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 905B1864DF;
	Sun,  1 Dec 2019 11:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OlQDYfM70d5i; Sun,  1 Dec 2019 11:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2847D864F4;
	Sun,  1 Dec 2019 11:42:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DF921BF3BA
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 11:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5A78987CB2
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 11:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8JwXVUXcGVNP for <devel@linuxdriverproject.org>;
 Sun,  1 Dec 2019 11:42:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E778D87C69
 for <devel@driverdev.osuosl.org>; Sun,  1 Dec 2019 11:42:17 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFD5E20833;
 Sun,  1 Dec 2019 11:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575200537;
 bh=kszPCwKwRkGgz8VWT8Gr1cfkhsnDvbBxXBsC7fR5klM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rY9Q1SSJejMbemXU90YSUx4gFV5SCAmusUXAs/KPEQeDcQCpbgmY3e6SaSzEnaPIr
 2YvTAOa3wTB/13IbN0q3ChrX3G91U2ofep3GcsO4PDmx+3s5WWKLVfVwsyHBR/us/+
 xR6O+WnAIPshGjNtfNIcdYJJrInDs6VOq+hezvHA=
Date: Sun, 1 Dec 2019 11:42:12 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH v5 1/2] staging: iio: accel: adis16240: enforce SPI mode
 on probe function
Message-ID: <20191201114212.08a068fc@archlinux>
In-Reply-To: <2e62b4fa3ee93909bfcdc4d9b60015e7c22d510c.camel@analog.com>
References: <20191123233510.4890-1-rodrigorsdc@gmail.com>
 <2e62b4fa3ee93909bfcdc4d9b60015e7c22d510c.camel@analog.com>
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 25 Nov 2019 07:55:39 +0000
"Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:

> On Sat, 2019-11-23 at 20:35 -0300, Rodrigo Carvalho wrote:
> > [External]
> > 
> > According to the datasheet, this driver supports only SPI mode 3,
> > so we should enforce it and call spi_setup() on probe function.
> > 
> > Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> > ---
> > V5:
> >   - Add this patch to the patchset
> > 
> >  drivers/staging/iio/accel/adis16240.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/staging/iio/accel/adis16240.c
> > b/drivers/staging/iio/accel/adis16240.c
> > index 82099db4bf0c..77b6b81767b9 100644
> > --- a/drivers/staging/iio/accel/adis16240.c
> > +++ b/drivers/staging/iio/accel/adis16240.c
> > @@ -400,6 +400,13 @@ static int adis16240_probe(struct spi_device *spi)
> >  	indio_dev->num_channels = ARRAY_SIZE(adis16240_channels);
> >  	indio_dev->modes = INDIO_DIRECT_MODE;
> >  
> > +	spi->mode = SPI_MODE_3;  
> 
> A generic question from me here, since I am not sure.
> 
> Would this limit the configurations of this chip on the board?
> In case there is some level-inverter [for various weird reasons] on the
> board, this may not work, because the SPI controller would need CPOL to be
> 0.
> 
> Not sure if this question is valid, or whether we need to care about such
> configurations.

It's a good question as this sort of trick is used sometimes. Let's see
what responses we get to the other branch of this thread before moving forwards
with this.

Jonathan


> 
> Thanks
> Alex
> 
> > +	ret = spi_setup(spi);
> > +	if (ret) {
> > +		dev_err(&spi->dev, "spi_setup failed!\n");
> > +		return ret;
> > +	}
> > +
> >  	ret = adis_init(st, indio_dev, spi, &adis16240_data);
> >  	if (ret)
> >  		return ret;  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
