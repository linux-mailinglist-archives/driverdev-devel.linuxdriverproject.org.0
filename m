Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE4A230DA
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 12:00:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A112285700;
	Mon, 20 May 2019 10:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QBoNcmWZ13OG; Mon, 20 May 2019 10:00:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C27AF855D3;
	Mon, 20 May 2019 10:00:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A40CC1BF31E
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 10:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B51985497
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 10:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4OflkAlRPviP for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 10:00:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F6E382504
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 10:00:00 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 66so12453804otq.0
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 03:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sX15Iw5l1LNzMWpN9XQ1qH/8ma8DeddYURAa0CQDGzo=;
 b=OKcoO4cvjF2ftHSC7dsg/Ul+Hi416KyLId41DZpB1ZUVdu5OBRqxiajlaBo1enDJtj
 UtC4m57jqcJbDkWQEZcnRmPSDgl5y4v1mw0XFq0VC30m+cupIlwapNUq2LtPJsWo7Hev
 Yrh7oW2EVmq658mqXpyarKSJIsFjzg0jhEYGFkGLCKV9G2eeUcEI7IjGf4B+fjMHf7W6
 VXxbO1nC+qwNV1zlUkmRjqUGgSJTHusK8ZczWJZea8uBLWT6EDmn00TJGJqSzUwtpmJG
 hUkZNgm5KiY1AND0loMxy9ZK3nvRINSNK6kL4CFa6POjmL4vRU6y+wexjgmN5ak9QtDR
 NFbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sX15Iw5l1LNzMWpN9XQ1qH/8ma8DeddYURAa0CQDGzo=;
 b=lwS+98GSSM66ObKyLvRL7kswkfBGxbbRQjNt8n90q2eMUdRvAVI9V9tVgZtM9d8+hr
 Yphs+av+Oc2b48JW0+So4Fap+6LP3Xm7oGiNadHTO2t1U2dXNUEjrhymc4UOz1zs03Oi
 jkHZhzJP4s9I1QSbrr52smeGz4dkibJ0LTeqzgpQOZjPROXMOCXbtWlbwwLo/8SQ9heO
 bzdn2ouXcp5lvsEV5pXnxBYhj3EnGB7jcwa2qEp8HVIAxfFwL13kW38jJW1Jgxz2yQdi
 7MPFlc9dsucmwsatXppXH1gyf+mIs/30FcWa1YtqbNpu9IX1Pr4tyCoFFmNT1YxI+fv4
 6rlQ==
X-Gm-Message-State: APjAAAUR1hqbeGjY1TjdvSoJIDzHxCzw+pbt9PzON8FyRr4jwiaTtpG5
 ByBx9o+Hyi9U5XxOfhOLIsESMqbnLfI95P6yykY=
X-Google-Smtp-Source: APXvYqz2N5x3nGkR2hugHQevYNQkesoo8qoFC8kULBF8lc5blI7rZPFKy2YCUQNlROzlASwktnSlN8omgvVzeV7ITb0=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr24555676oto.224.1558346399739; 
 Mon, 20 May 2019 02:59:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190519010456.lwq7n2e6nkqa6niz@smtp.gmail.com>
 <20190519112952.58142fb0@archlinux>
In-Reply-To: <20190519112952.58142fb0@archlinux>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Mon, 20 May 2019 12:59:47 +0300
Message-ID: <CA+U=DsozL_a+6K-FchwU_Jv_XOP80-hubB4cvDU9N+4LXY4E6g@mail.gmail.com>
Subject: Re: [PATCH] staging:iio:ad7150: fix threshold mode config bit
To: Jonathan Cameron <jic23@kernel.org>
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
 Barry Song <21cnbao@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-usp@googlegroups.com, Melissa Wen <melissa.srw@gmail.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 19, 2019 at 8:38 PM Jonathan Cameron <jic23@kernel.org> wrote:
>
> On Sat, 18 May 2019 22:04:56 -0300
> Melissa Wen <melissa.srw@gmail.com> wrote:
>
> > According to the AD7150 configuration register description, bit 7 assumes
> > value 1 when the threshold mode is fixed and 0 when it is adaptive,
> > however, the operation that identifies this mode was considering the
> > opposite values.
> >
> > This patch renames the boolean variable to describe it correctly and
> > properly replaces it in the places where it is used.
> >
> > Fixes: 531efd6aa0991 ("staging:iio:adc:ad7150: chan_spec conv + i2c_smbus commands + drop unused poweroff timeout control.")
> > Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
>
> Looks good to me.  Applied to the fixes-togreg branch of iio.git pushed out as
> as testing-fixes for the autobuilders to see if they can find anything
> we have missed.
>
> Thanks,
>
> Jonathan
>
> > ---
> >  drivers/staging/iio/cdc/ad7150.c | 19 +++++++++++--------
> >  1 file changed, 11 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> > index dd7fcab8e19e..e075244c602b 100644
> > --- a/drivers/staging/iio/cdc/ad7150.c
> > +++ b/drivers/staging/iio/cdc/ad7150.c
> > @@ -5,6 +5,7 @@
> >   * Copyright 2010-2011 Analog Devices Inc.
> >   */
> >
> > +#include <linux/bitfield.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/device.h>
> >  #include <linux/kernel.h>
> > @@ -130,7 +131,7 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
> >  {
> >       int ret;
> >       u8 threshtype;
> > -     bool adaptive;
> > +     bool thrfixed;
> >       struct ad7150_chip_info *chip = iio_priv(indio_dev);
> >
> >       ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG);
> > @@ -138,21 +139,23 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
> >               return ret;
> >
> >       threshtype = (ret >> 5) & 0x03;
> > -     adaptive = !!(ret & 0x80);
> > +
> > +     /*check if threshold mode is fixed or adaptive*/
> > +     thrfixed = FIELD_GET(AD7150_CFG_FIX, ret);

nitpick: i would have kept the original variable name as "adaptive",
mostly for consistency.
"adaptive" is used in other places as well;

as i recall, the fix is just oneliner in this case:

- adaptive = !!(ret & 0x80);
+ adaptive = !(ret & 0x80);


> >
> >       switch (type) {
> >       case IIO_EV_TYPE_MAG_ADAPTIVE:
> >               if (dir == IIO_EV_DIR_RISING)
> > -                     return adaptive && (threshtype == 0x1);
> > -             return adaptive && (threshtype == 0x0);
> > +                     return !thrfixed && (threshtype == 0x1);
> > +             return !thrfixed && (threshtype == 0x0);
> >       case IIO_EV_TYPE_THRESH_ADAPTIVE:
> >               if (dir == IIO_EV_DIR_RISING)
> > -                     return adaptive && (threshtype == 0x3);
> > -             return adaptive && (threshtype == 0x2);
> > +                     return !thrfixed && (threshtype == 0x3);
> > +             return !thrfixed && (threshtype == 0x2);
> >       case IIO_EV_TYPE_THRESH:
> >               if (dir == IIO_EV_DIR_RISING)
> > -                     return !adaptive && (threshtype == 0x1);
> > -             return !adaptive && (threshtype == 0x0);
> > +                     return thrfixed && (threshtype == 0x1);
> > +             return thrfixed && (threshtype == 0x0);
> >       default:
> >               break;
> >       }
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
