Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C81391938
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 21:14:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 325578742F;
	Sun, 18 Aug 2019 19:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FcXfwgh7YSlu; Sun, 18 Aug 2019 19:14:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17F6A872E8;
	Sun, 18 Aug 2019 19:14:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B07A21BF349
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 19:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9F57C20441
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 19:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S8YI2KHPQCiM for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 19:13:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 193AC20422
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 19:13:57 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 970592184E;
 Sun, 18 Aug 2019 19:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566155636;
 bh=cx09dZ53SV60ZZEaD7lshSO/Q3ktfWm45yk+k4iQzc8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nxBG3zF1PDXZwLKq9WFDEx+fpwnhWJTRldJzxCK2sizv8mx4uJYvwyAhoem8rERZi
 5KaweEQflko+bBjNYA34wtMYENDZdwJxaEllq9xcwojhNcKJSehMvSOye/dY+DxuC4
 y8rHw3BOJMnA9zeTgvPbyVMQzgg802JDlwcdsQgk=
Date: Sun, 18 Aug 2019 20:13:51 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH v2] staging: iio: accel: adis16240: Improve readability
 on write_raw function
Message-ID: <20190818201351.10ea83a2@archlinux>
In-Reply-To: <28dda97db73c56fbaf746aa52eb63faaf02b15d7.camel@analog.com>
References: <20190813193101.26867-1-rodrigorsdc@gmail.com>
 <28dda97db73c56fbaf746aa52eb63faaf02b15d7.camel@analog.com>
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
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 14 Aug 2019 06:56:18 +0000
"Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:

> On Tue, 2019-08-13 at 16:31 -0300, Rodrigo Ribeiro wrote:
> > [External]
> > 
> > Replace shift and minus operation by GENMASK macro and remove the local
> > variables used to store intermediate data.
> >   
> 
> Reviewed-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan

> 
> > Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> > ---
> > v2:
> >    - Leave switch statement instead of replace by if statement
> >  drivers/staging/iio/accel/adis16240.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> > index 62f4b3b1b457..82099db4bf0c 100644
> > --- a/drivers/staging/iio/accel/adis16240.c
> > +++ b/drivers/staging/iio/accel/adis16240.c
> > @@ -309,15 +309,12 @@ static int adis16240_write_raw(struct iio_dev *indio_dev,
> >  			       long mask)
> >  {
> >  	struct adis *st = iio_priv(indio_dev);
> > -	int bits = 10;
> > -	s16 val16;
> >  	u8 addr;
> >  
> >  	switch (mask) {
> >  	case IIO_CHAN_INFO_CALIBBIAS:
> > -		val16 = val & ((1 << bits) - 1);
> >  		addr = adis16240_addresses[chan->scan_index][0];
> > -		return adis_write_reg_16(st, addr, val16);
> > +		return adis_write_reg_16(st, addr, val & GENMASK(9, 0));
> >  	}
> >  	return -EINVAL;
> >  }  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
