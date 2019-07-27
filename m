Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CACC07790A
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2019 15:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 29988228DC;
	Sat, 27 Jul 2019 13:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uk+uGizG2P-U; Sat, 27 Jul 2019 13:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3658B228AC;
	Sat, 27 Jul 2019 13:47:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 473D21BF404
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 13:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3ECAE872BB
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 13:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zbQ7NsRHMhgN for <devel@linuxdriverproject.org>;
 Sat, 27 Jul 2019 13:47:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1E808725A
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 13:47:45 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C12DF2084C;
 Sat, 27 Jul 2019 13:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564235265;
 bh=KRXC9oCHi83exKq/ds8/LJTiS0VCynJGNxGjAL+U2vM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=maYeT5lXSLwXWuZjkW4yuhX4UdvER0UdQHXIeisgC7pdvO2cNq505+DcW/X8o8IcT
 SITDqZ4pRidtzkcjgf7tVLLYR9BaV/g35+V0EtiQQ0u1L8/6Pc/7yFr22pFCUFYiEa
 osPb3hnkRTs6N/8YTf18KRTg5gaS0WKkmapRxMGM=
Date: Sat, 27 Jul 2019 14:47:39 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Matheus Tavares Bernardino <matheus.bernardino@usp.br>
Subject: Re: [PATCH] staging:iio:adc:ad7280a: add of_match_table entry
Message-ID: <20190727144739.4461b5a3@archlinux>
In-Reply-To: <CAHd-oW5sOry2g_tQbgQ9-dp1esVStmS+UF-TTYoB2mWmzR10jQ@mail.gmail.com>
References: <20190725200817.31277-1-kartik.koolks@gmail.com>
 <0e273486f1c4fb6249896225837cdf2da0fd2415.camel@analog.com>
 <CAHd-oW5sOry2g_tQbgQ9-dp1esVStmS+UF-TTYoB2mWmzR10jQ@mail.gmail.com>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "kartik.koolks@gmail.com" <kartik.koolks@gmail.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>, "Popa, Stefan
 Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 26 Jul 2019 14:59:16 -0300
Matheus Tavares Bernardino <matheus.bernardino@usp.br> wrote:

> On Fri, Jul 26, 2019 at 2:30 AM Ardelean, Alexandru
> <alexandru.Ardelean@analog.com> wrote:
> >
> > On Fri, 2019-07-26 at 01:38 +0530, Kartik Kulkarni wrote:  
> > > Add the of_device_id struct and the respective
> > > of_match_device entry to complete device tree support.
> > >  
> >
> > This would be a [V2] I suppose.
> >
> > This change also does the rename of the driver name in a single go.
> > Since it's a trivial change, it's fine from my side.  
> 
> I think there was a small confusion when we sent the patches. Sorry
> for that. Originally, Kartik made the rename in its own patch. Would
> it be better if we resend the two patches separately?
I would prefer that. They are two separate changes, and the driver
name one may be a little unexpected so let's make sure it's obvious.

There is also the question on whether we should tidy up all the
prefixing to make it clear that this is an ad7280a throughout.

Perhaps that's too painful though and we should leave it like this
for now.

Thanks,

Jonathan


> 
> Thanks,
> Matheus
> 
> > Reviewed-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> >
> >  
> > > Signed-off-by: Kartik Kulkarni <kartik.koolks@gmail.com>
> > > Reviewed-by: Matheus Tavares <matheus.bernardino@usp.br>
> > > ---
> > >  drivers/staging/iio/adc/ad7280a.c | 9 ++++++++-
> > >  1 file changed, 8 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > > index 19a5f244dcae..ded0ba093a28 100644
> > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > @@ -1027,9 +1027,16 @@ static const struct spi_device_id ad7280_id[] = {
> > >  };
> > >  MODULE_DEVICE_TABLE(spi, ad7280_id);
> > >
> > > +static const struct of_device_id ad7280_of_match[] = {
> > > +     { .compatible = "adi,ad7280a", },
> > > +     { }
> > > +};
> > > +MODULE_DEVICE_TABLE(of, ad7280_of_match);
> > > +
> > >  static struct spi_driver ad7280_driver = {
> > >       .driver = {
> > > -             .name   = "ad7280",
> > > +             .name   = "ad7280a",
> > > +             .of_match_table = ad7280_of_match,
> > >       },
> > >       .probe          = ad7280_probe,
> > >       .id_table       = ad7280_id,  
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Kernel USP" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to kernel-usp+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/kernel-usp/0e273486f1c4fb6249896225837cdf2da0fd2415.camel%40analog.com.  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
