Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B648B337399
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 14:19:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C7A4431CF;
	Thu, 11 Mar 2021 13:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K3QI-N6oS-cB; Thu, 11 Mar 2021 13:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0889C43058;
	Thu, 11 Mar 2021 13:19:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 347AD1BF82B
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 13:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 304E6439BF
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 13:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pGQKpnSUrKMl for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 13:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF42E42FE4
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 13:18:59 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lKLDI-0008Jt-7H; Thu, 11 Mar 2021 14:18:52 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lKLDE-0002l3-Lz; Thu, 11 Mar 2021 14:18:48 +0100
Date: Thu, 11 Mar 2021 14:18:45 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v7 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
Message-ID: <20210311131845.x3zybis3x2liu2uk@pengutronix.de>
References: <20210118123244.13669-1-nsaenzjulienne@suse.de>
 <20210118123244.13669-12-nsaenzjulienne@suse.de>
 <20210310115041.s7tzvgdpksws6yss@pengutronix.de>
 <fc60ac5ab9760d791aa5e184258accf53e07ce1e.camel@suse.de>
MIME-Version: 1.0
In-Reply-To: <fc60ac5ab9760d791aa5e184258accf53e07ce1e.camel@suse.de>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Content-Type: multipart/mixed; boundary="===============4263842486800641742=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4263842486800641742==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jhlssdtxmegt66au"
Content-Disposition: inline


--jhlssdtxmegt66au
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Nicolas,

On Thu, Mar 11, 2021 at 02:01:00PM +0100, Nicolas Saenz Julienne wrote:
> On Wed, 2021-03-10 at 12:50 +0100, Uwe Kleine-K=F6nig wrote:
> > On Mon, Jan 18, 2021 at 01:32:44PM +0100, Nicolas Saenz Julienne wrote:
>=20
> [...]
>=20
> > > +	/*
> > > +	 * This sets the default duty cycle after resetting the board, we
> > > +	 * updated it every time to mimic Raspberry Pi's downstream's driver
> > > +	 * behaviour.
> > > +	 */
> > > +	ret =3D raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_DEF_=
DUTY_REG,
> > > +					   duty_cycle);
> > > +	if (ret) {
> > > +		dev_err(chip->dev, "Failed to set default duty cycle: %pe\n",
> > > +			ERR_PTR(ret));
> > > +		return ret;
> >=20
> > This only has an effect for the next reboot, right?
>=20
> It effects all reboots until it's further changed.
>=20
> > If so I wonder if it is a good idea in general. (Think: The current PWM
> > setting enables a motor that makes a self-driving car move at 100 km/h.
> > Consider the rpi crashes, do I want to car to pick up driving 100 km/h =
at
> > power up even before Linux is up again?)
>=20
> I get your point. But this isn't used as a general purpose PWM. For now t=
he
> interface is solely there to drive a PWM fan that's arguably harmless. Th=
is
> doesn't mean that the RPi foundation will not reuse the firmware interfac=
e for
> other means in the future. In such case we can always use a new DT compat=
ible
> and bypass this feature (the current DT string is
> 'raspberrypi,firmware-poe-pwm', which is specific to this use-case).
>=20
> My aim here is to be on par feature wise with RPi's downstream implementa=
tion.

Just because the downstream kernel does it should not be the (single)
reason to do that. My gut feeling is: For a motor restoring the PWM
config on reboot is bad and for a fan it doesn't really hurt if it
doesn't restart automatically. So I'd prefer to to drop this feature.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--jhlssdtxmegt66au
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmBKGLIACgkQwfwUeK3K
7AmVtwf/VJTFZ6KfFb0/nBuZLz71q/mBcEZrZwWPlKFMsb9C2jLRRJpnJ/1+zUoM
Q41GHxf9j/O0tW/e7Hl8gR/ri8qMtJN6a4LOI31Icx7b4d3jFuiWVSIg+9UfhLwN
Oq6m1B3VzzUmL4LWK+9qsfHwKJi/1FozbnMFFDCs7tnN4b9OmmZn2JkGNInxK5FT
NQyA3wL9Pv+HyVliXk4948HvKO73dzj9yZCVfY3cb/XTb3HADs5+kwa3IT+l/g74
nFj5qaKNNR4+QUibzclk9PGoj63N2XsS6vDEsncDoV2QHtJumODIQat6920OyNqh
UvNUyCqUmLZntZ28GK0jzSeX+Kz3IA==
=DtDQ
-----END PGP SIGNATURE-----

--jhlssdtxmegt66au--

--===============4263842486800641742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4263842486800641742==--
