Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C90533742C
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 14:41:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B591E6F5A1;
	Thu, 11 Mar 2021 13:41:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1sqHs8dD2SU; Thu, 11 Mar 2021 13:41:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBF5C60639;
	Thu, 11 Mar 2021 13:41:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F29E51BF82B
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 13:41:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E18A4431CF
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 13:41:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1CouUgU3uL1L for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 13:41:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8D3543022
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 13:41:13 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 51724AC23;
 Thu, 11 Mar 2021 13:41:12 +0000 (UTC)
Message-ID: <865b4bb56cb9b0a9041c61f1ae7c9c76e807ebd3.camel@suse.de>
Subject: Re: [PATCH v7 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 11 Mar 2021 14:41:10 +0100
In-Reply-To: <20210311131845.x3zybis3x2liu2uk@pengutronix.de>
References: <20210118123244.13669-1-nsaenzjulienne@suse.de>
 <20210118123244.13669-12-nsaenzjulienne@suse.de>
 <20210310115041.s7tzvgdpksws6yss@pengutronix.de>
 <fc60ac5ab9760d791aa5e184258accf53e07ce1e.camel@suse.de>
 <20210311131845.x3zybis3x2liu2uk@pengutronix.de>
User-Agent: Evolution 3.38.4 
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-input@vger.kernel.org,
 bgolaszewski@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4968518062038169661=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4968518062038169661==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-DIhE4Ec/fO1HMXckfvC/"


--=-DIhE4Ec/fO1HMXckfvC/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2021-03-11 at 14:18 +0100, Uwe Kleine-K=C3=B6nig wrote:
> Hello Nicolas,
>=20
> On Thu, Mar 11, 2021 at 02:01:00PM +0100, Nicolas Saenz Julienne wrote:
> > On Wed, 2021-03-10 at 12:50 +0100, Uwe Kleine-K=C3=B6nig wrote:
> > > On Mon, Jan 18, 2021 at 01:32:44PM +0100, Nicolas Saenz Julienne wrot=
e:
> >=20
> > [...]
> >=20
> > > > +	/*
> > > > +	 * This sets the default duty cycle after resetting the board, we
> > > > +	 * updated it every time to mimic Raspberry Pi's downstream's dri=
ver
> > > > +	 * behaviour.
> > > > +	 */
> > > > +	ret =3D raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_DE=
F_DUTY_REG,
> > > > +					   duty_cycle);
> > > > +	if (ret) {
> > > > +		dev_err(chip->dev, "Failed to set default duty cycle: %pe\n",
> > > > +			ERR_PTR(ret));
> > > > +		return ret;
> > >=20
> > > This only has an effect for the next reboot, right?
> >=20
> > It effects all reboots until it's further changed.
> >=20
> > > If so I wonder if it is a good idea in general. (Think: The current P=
WM
> > > setting enables a motor that makes a self-driving car move at 100 km/=
h.
> > > Consider the rpi crashes, do I want to car to pick up driving 100 km/=
h at
> > > power up even before Linux is up again?)
> >=20
> > I get your point. But this isn't used as a general purpose PWM. For now=
 the
> > interface is solely there to drive a PWM fan that's arguably harmless. =
This
> > doesn't mean that the RPi foundation will not reuse the firmware interf=
ace for
> > other means in the future. In such case we can always use a new DT comp=
atible
> > and bypass this feature (the current DT string is
> > 'raspberrypi,firmware-poe-pwm', which is specific to this use-case).
> >=20
> > My aim here is to be on par feature wise with RPi's downstream implemen=
tation.
>=20
> Just because the downstream kernel does it should not be the (single)
> reason to do that. My gut feeling is: For a motor restoring the PWM
> config on reboot is bad and for a fan it doesn't really hurt if it
> doesn't restart automatically. So I'd prefer to to drop this feature.

Fair enough, I'll remove it then.

Regards,
Nicolas


--=-DIhE4Ec/fO1HMXckfvC/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAmBKHfYACgkQlfZmHno8
x/7bvgf/VG7JeLwSwJu4LqZq0TnHZ6NiWfAfSZT+RMslpHsQjbaEQd9S0FehwN2a
fvtdylnnGHKlJadP2QvfRGX7KYw4sGy8dsZZJn3LLVcIjO7cUCunmBkBZcaoy3mI
edfLymaeNEnzuzaURI37lQTxNMVXQyXz3uzbHQG913kpi9Nex8ywwNFqAKoDGzyx
k+NAYQHAh6wxkn8Ni7+6EpVpKZ7TIToIltlzd/Gn/ooycT1nO9OkSJKZkiIs4a0J
uvuX9rLysjzr42l3hRpn7l+WZGfegorm7a/QzRFTjSKKlKYJVgzShiVR3XXpUYkk
72pRuu76vC0ImQlL6Xa5qzbrQsRxNg==
=k+NC
-----END PGP SIGNATURE-----

--=-DIhE4Ec/fO1HMXckfvC/--


--===============4968518062038169661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4968518062038169661==--

