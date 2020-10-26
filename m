Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53975298FA8
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 15:42:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C477F2E114;
	Mon, 26 Oct 2020 14:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ks3JxcUHWu45; Mon, 26 Oct 2020 14:42:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 27F172741E;
	Mon, 26 Oct 2020 14:42:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A97F31BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9FECA867A7
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DhgeUi7gi60K for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 14:42:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B5EC8865D4
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 14:42:09 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 2EF1CB8E1;
 Mon, 26 Oct 2020 14:42:08 +0000 (UTC)
Message-ID: <700a149849222f3efbec73cb8a6be56b4b1c5bcb.camel@suse.de>
Subject: Re: [PATCH v2 03/10] gpio: raspberrypi-exp: Release firmware handle
 on unbind
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 26 Oct 2020 15:42:06 +0100
In-Reply-To: <CAMpxmJXw12hKYCuMDjG-Ns6n=mXmr4B2x3HJaAJ19wH_xDUMag@mail.gmail.com>
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-4-nsaenzjulienne@suse.de>
 <CAMpxmJXw12hKYCuMDjG-Ns6n=mXmr4B2x3HJaAJ19wH_xDUMag@mail.gmail.com>
User-Agent: Evolution 3.36.5 
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Input <linux-input@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3978372353722051655=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3978372353722051655==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-4RJXy1XArEUanWEz7Yut"


--=-4RJXy1XArEUanWEz7Yut
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-10-26 at 15:40 +0100, Bartosz Golaszewski wrote:
> On Thu, Oct 22, 2020 at 5:59 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Upon unbinding the device make sure we release RPi's firmware interface=
.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  drivers/gpio/gpio-raspberrypi-exp.c | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-ra=
spberrypi-exp.c
> > index bb100e0124e6..c008336e1131 100644
> > --- a/drivers/gpio/gpio-raspberrypi-exp.c
> > +++ b/drivers/gpio/gpio-raspberrypi-exp.c
> > @@ -231,8 +231,19 @@ static int rpi_exp_gpio_probe(struct platform_devi=
ce *pdev)
> >         rpi_gpio->gc.get =3D rpi_exp_gpio_get;
> >         rpi_gpio->gc.set =3D rpi_exp_gpio_set;
> >         rpi_gpio->gc.can_sleep =3D true;
> > +       platform_set_drvdata(pdev, rpi_gpio);
> >=20
> > -       return devm_gpiochip_add_data(dev, &rpi_gpio->gc, rpi_gpio);
> > +       return gpiochip_add_data(&rpi_gpio->gc, rpi_gpio);
> > +}
> > +
> > +static int rpi_exp_gpio_remove(struct platform_device *pdev)
> > +{
> > +       struct rpi_exp_gpio *rpi_gpio =3D platform_get_drvdata(pdev);
> > +
> > +       gpiochip_remove(&rpi_gpio->gc);
> > +       rpi_firmware_put(rpi_gpio->fw);
> > +
> > +       return 0;
> >  }
> >=20
> >  static const struct of_device_id rpi_exp_gpio_ids[] =3D {
> > @@ -247,6 +258,7 @@ static struct platform_driver rpi_exp_gpio_driver =
=3D {
> >                 .of_match_table =3D of_match_ptr(rpi_exp_gpio_ids),
> >         },
> >         .probe  =3D rpi_exp_gpio_probe,
> > +       .remove =3D rpi_exp_gpio_remove,
> >  };
> >  module_platform_driver(rpi_exp_gpio_driver);
> >=20
> > --
> > 2.28.0
> >=20
>=20
> Why not introduce devm_rpi_firmware_get()? That would allow you to
> keep the driver elegant without re-adding remove().

I like the idea, I'll look into it.

Thanks,
Nicolas


--=-4RJXy1XArEUanWEz7Yut
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+W4D4ACgkQlfZmHno8
x/4RVwf/UZbRYwQfpY+67Gru7U3IMExckiPcjOHqeN3IO1Aqys6hi0LcCgQmZoRS
yDES/QK4HITWb2LEOikdeICzUhcAmHLuD6l9Si1lOw/g7RZAcNoB+gejoLIKsxsJ
BvBSsCz+ARcANf68gksyv52nsVLhMNlvZpnoVV6p9VTzTb0q7+QOBy7KndC73pyM
cLs3LcbX7jTY71QjVIAVJql7UiQmzjA9V08bxNan8AF/yttAj0PgtZga1WYXQHG/
ipUuvMADCJYB9WrHAhtY8TV1G1pGs0b+OTU6cEZukdSAUaNXzL+DKDHm3nlMi887
7aRyD6vm++8u7ecNrtj2/Iug3MLyQg==
=FwXW
-----END PGP SIGNATURE-----

--=-4RJXy1XArEUanWEz7Yut--


--===============3978372353722051655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3978372353722051655==--

