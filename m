Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B888B89915
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 10:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25E5F87ACB;
	Mon, 12 Aug 2019 08:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XnWLLxUie8zg; Mon, 12 Aug 2019 08:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A61F87804;
	Mon, 12 Aug 2019 08:57:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D40A1BF473
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 08:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 19B2F85F8D
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 08:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E9HaqudnIyN1 for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 08:57:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 63D5A85DA0
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 08:57:37 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9EE8799132131362ED60;
 Mon, 12 Aug 2019 16:57:33 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Mon, 12 Aug 2019
 16:57:30 +0800
Date: Mon, 12 Aug 2019 09:57:17 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
Subject: Re: [PATCH] staging: iio: accel: adis16240: Improve readability on
 write_raw function
Message-ID: <20190812095717.00002918@huawei.com>
In-Reply-To: <CAOeBkLqGe-5LwBq1yrX_F8kNn2UK-7+7H+AOZPAqKS5OKHuYkA@mail.gmail.com>
References: <20190810150058.3509-1-rodrigorsdc@gmail.com>
 <20190811094322.063ad682@archlinux>
 <CAOeBkLqGe-5LwBq1yrX_F8kNn2UK-7+7H+AOZPAqKS5OKHuYkA@mail.gmail.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>, Peter
 Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, kernel-usp@googlegroups.com,
 Stefan Popa <stefan.popa@analog.com>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 11 Aug 2019 13:47:04 -0300
Rodrigo Ribeiro <rodrigorsdc@gmail.com> wrote:

> Em dom, 11 de ago de 2019 =E0s 05:43, Jonathan Cameron
> <jic23@kernel.org> escreveu:
> >
> > On Sat, 10 Aug 2019 12:00:58 -0300
> > Rodrigo <rodrigorsdc@gmail.com> wrote:
> >  =

> > > From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
> > >
> > > Improve readability by using GENMASK macro, changing switch statement
> > > by if statement and removing unnecessary local variables.  =

> >  =

> =

> Hi Jonathan. Thanks for reviewing!
> =

> > From your description it sounds like multiple changes in one patch.
> > Always preferable to have one type of change in a patch and more
> > small patches.
> >
> > Based on comments below, I would leave the switch statement alone,
> > but put in your GENMASK change as that one is good and gets
> > rid of the odd local variable 'bits' as well :)
> >
> > Thanks,
> >
> > Jonathan
> >
> >  =

> > >
> > > Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> > > ---
> > >  drivers/staging/iio/accel/adis16240.c | 16 +++++++---------
> > >  1 file changed, 7 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/=
iio/accel/adis16240.c
> > > index 62f4b3b1b457..68f165501389 100644
> > > --- a/drivers/staging/iio/accel/adis16240.c
> > > +++ b/drivers/staging/iio/accel/adis16240.c
> > > @@ -309,17 +309,15 @@ static int adis16240_write_raw(struct iio_dev *=
indio_dev,
> > >                              long mask)
> > >  {
> > >       struct adis *st =3D iio_priv(indio_dev);
> > > -     int bits =3D 10;
> > > -     s16 val16;
> > > +     int m;
> > >       u8 addr;
> > >
> > > -     switch (mask) {
> > > -     case IIO_CHAN_INFO_CALIBBIAS:
> > > -             val16 =3D val & ((1 << bits) - 1);
> > > -             addr =3D adis16240_addresses[chan->scan_index][0];
> > > -             return adis_write_reg_16(st, addr, val16);
> > > -     }
> > > -     return -EINVAL;
> > > +     if (mask !=3D IIO_CHAN_INFO_CALIBBIAS)
> > > +             return -EINVAL;  =

> >
> > Hmm. We generally encourage the use of switch statements in these
> > cases because they reduce churn as new features are added.
> >
> > In this particular case, we don't have any control of sampling frequency
> > in the driver, but the hardware appears to support it (table 23 on the
> > datasheet).  =

> =

> On drivers of same kind out of staging (adis16209 and adis16201), sampling
> frequency writing are not implemented, even though datasheets suggest a r=
egister
> writing for this. I can try to implement if it is a good one.

I would be a bit nervous about doing so if you don't have
hardware, and we can't find anyone who is setup to test the device.

Obviously if you can get it tested one way or the other, it would be good
to add support.


Thanks,

J

> =

> > > +
> > > +     m =3D GENMASK(9, 0);
> > > +     addr =3D adis16240_addresses[chan->scan_index][0];
> > > +     return adis_write_reg_16(st, addr, val & m);  =

> > Why the local variable m?  Can we not just do
> >
> >         return adis_write_reg_16(st, addr, val & GENMASK(9, 0));
> >
> > If anything I think that is a little more readable than your
> > version.  There is a reasonable argument for just having
> > addr inline as well.
> >
> >         return adis_write_reg_16(st,
> >                                  adis16240_addresses[chan->scan_index][=
0],
> >                                  val & GENMASK(9, 0));
> >
> > However, given I'm suggesting you leave it as a switch statement, it
> > will be too long with addr inline.
> >  =

> > >  }
> > >
> > >  static const struct iio_chan_spec adis16240_channels[] =3D {  =

> >  =

> =

> Regards,
> Rodrigo


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
