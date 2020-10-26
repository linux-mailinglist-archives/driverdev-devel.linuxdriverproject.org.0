Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 991A8298EC7
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 15:03:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DF5C867E3;
	Mon, 26 Oct 2020 14:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2GmoPda2VZ9; Mon, 26 Oct 2020 14:03:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AB11867B0;
	Mon, 26 Oct 2020 14:03:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B2051BF334
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 11F8E87191
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YBa7vjybbvPY for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 14:03:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1A988717F
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 14:03:02 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 83880AD83;
 Mon, 26 Oct 2020 14:03:00 +0000 (UTC)
Message-ID: <13068cff8e3a994df5d8fbe19deb068a741365f3.camel@suse.de>
Subject: Re: [PATCH v2 10/10] pwm: Add Raspberry Pi Firmware based PWM bus
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 26 Oct 2020 15:02:58 +0100
In-Reply-To: <CAHp75VcB5oxXs38UH5taVGj21wUi3sHYdRPOj3wxa3yXg0vmUA@mail.gmail.com>
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-11-nsaenzjulienne@suse.de>
 <CAHp75VcB5oxXs38UH5taVGj21wUi3sHYdRPOj3wxa3yXg0vmUA@mail.gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-input <linux-input@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5932494385267253559=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5932494385267253559==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-TTVm3kIKIXd08z1jOMlD"


--=-TTVm3kIKIXd08z1jOMlD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andy, thanks for the review!

On Thu, 2020-10-22 at 21:53 +0300, Andy Shevchenko wrote:
> On Thu, Oct 22, 2020 at 9:05 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Adds support to control the PWM bus available in official Raspberry Pi
> > PoE HAT. Only RPi's co-processor has access to it, so commands have to
> > be sent through RPi's firmware mailbox interface.
> >  drivers/pwm/pwm-raspberrypi.c | 221 ++++++++++++++++++++++++++++++++++
>=20
> Name is completely confusing.
> Please, make it unique enough to understand that this is exactly the
> device it serves for.
>=20
> For example, pwm-rpi-poe is better.

Sounds reasonable, I'll change that.

>=20
> ...
>=20
> > + *  - Only normal polarity
>=20
> Can't it be emulated? Isn't it 100% - duty cycle % ?

I guess it can, OTOH given the rather specific use case, I doubt it'll be
worth the effort.

> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pwm.h>
>=20
> ...
>=20
> > +       ret =3D rpi_firmware_property(firmware, RPI_FIRMWARE_SET_POE_HA=
T_VAL,
> > +                                   &msg, sizeof(msg));
> > +       if (ret)
> > +               return ret;
> > +       else if (msg.ret)
>=20
> Redundant 'else'

Noted.

> > +       firmware_node =3D of_get_parent(dev->of_node);
> > +       if (!firmware_node) {
> > +               dev_err(dev, "Missing firmware node\n");
> > +               return -ENOENT;
> > +       }
> > +
> > +       firmware =3D rpi_firmware_get(firmware_node);
> > +       of_node_put(firmware_node);
> > +       if (!firmware)
> > +               return -EPROBE_DEFER;
>=20
> Looks like a hack.

This is the pattern we've been using on all firmware dependent devices so f=
ar.
Feel free to suggest a better way, I'll be happy to look into it.

>=20
> ...
>=20
> > +       ret =3D pwmchip_remove(&rpipwm->chip);
> > +       if (!ret)
> > +               rpi_firmware_put(rpipwm->firmware);
> > +
> > +       return ret;
>=20
> Can't you use the usual pattern?

Yes of course. Don't know why I went this way.

Regards,
Nicolas


--=-TTVm3kIKIXd08z1jOMlD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+W1xIACgkQlfZmHno8
x/4NJgf/d3PqOAENee9eHOK6FqBMAsNsGn4fscamb7Q7MXABE4U/nFCFY7hg1Xo3
g47j4m8+pNlzE3SjXX0ZyPle4beIWvNQWidQjSyprckUv+wNkJ1Wbt0lFH26GCig
w8mRGcXYm12zKKDSpGf5Wg/qAhE9qV2ruti8nc94lkSoiP2kSlfp6j5MZZYzEd2p
y4khOBqxT1e4Trh+QOhKke2pW43WHNZT0TW6ZhJxKq4UNq7lxzer9TFHWgda16oy
C4kdNiGm9MDQicgNWAq18ctJTZvPoR1scLrBNpJOapJ1UuY0mCqjpMZJDi9W+/EB
7FRq+EXSXY7hpOmPUUJ1pJm1mUNoOw==
=ljds
-----END PGP SIGNATURE-----

--=-TTVm3kIKIXd08z1jOMlD--


--===============5932494385267253559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5932494385267253559==--

