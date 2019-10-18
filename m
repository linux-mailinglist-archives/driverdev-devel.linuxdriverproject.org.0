Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B770DCF19
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 21:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3C81524EA2;
	Fri, 18 Oct 2019 19:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Km3gEzFE-OUA; Fri, 18 Oct 2019 19:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D8D7822795;
	Fri, 18 Oct 2019 19:10:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 441891BF592
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 19:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39E608776C
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 19:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WScs5ngQb++n for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 19:10:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8626E86064
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 19:10:22 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 137B62070B;
 Fri, 18 Oct 2019 19:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571425822;
 bh=SV8Vv5FvDe2SpzdgeslYgVDRdktvHpA3+HZ2ioDyY+k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=swhyE8aXu2rhXWjbH/OHfscJsQ35cA/seBvUbMpUNbtKhE6uEg+ooPdTHIn/fqOm9
 akfk2pq6oEpcUrKZ2+HIEo42KVYyLI9KfAOgia7b9WcPt74QZDAq6gEldz8FbJVEp+
 TRLMggQbp7cGYYbX3I+sQSHRXpapijDGul+f6OMc=
Date: Fri, 18 Oct 2019 20:10:16 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH] staging: iio: ad9834: add a check for devm_clk_get
Message-ID: <20191018201016.0a7fde4f@archlinux>
In-Reply-To: <3acc69aceb04667ba34200f54c59b3d160ab2f5d.camel@analog.com>
References: <20191016142540.26450-1-hslester96@gmail.com>
 <3acc69aceb04667ba34200f54c59b3d160ab2f5d.camel@analog.com>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 17 Oct 2019 12:56:33 +0000
"Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:

> On Wed, 2019-10-16 at 22:25 +0800, Chuhong Yuan wrote:
> > ad9834_probe misses a check for devm_clk_get and may cause problems.
> > Add a check like what ad9832 does to fix it.
> >   
> 
> This could also use a Fixes tag, but not a big deal.
> 
> Reviewed-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

As a general point though, the fact that a devm error handler
actually has things to do suggests this code doesn't pass
the obviously correct test.

Nothing to do with this patch mind you!

Jonathan

> 
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/staging/iio/frequency/ad9834.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/staging/iio/frequency/ad9834.c
> > b/drivers/staging/iio/frequency/ad9834.c
> > index 038d6732c3fd..23026978a5a5 100644
> > --- a/drivers/staging/iio/frequency/ad9834.c
> > +++ b/drivers/staging/iio/frequency/ad9834.c
> > @@ -417,6 +417,10 @@ static int ad9834_probe(struct spi_device *spi)
> >  	st = iio_priv(indio_dev);
> >  	mutex_init(&st->lock);
> >  	st->mclk = devm_clk_get(&spi->dev, NULL);
> > +	if (IS_ERR(st->mclk)) {
> > +		ret = PTR_ERR(st->mclk);
> > +		goto error_disable_reg;
> > +	}
> >  
> >  	ret = clk_prepare_enable(st->mclk);
> >  	if (ret) {  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
