Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A26C333BCA
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 12:51:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD0974318B;
	Wed, 10 Mar 2021 11:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vBysEnlBTrL0; Wed, 10 Mar 2021 11:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6A8543150;
	Wed, 10 Mar 2021 11:51:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 784731BF3C6
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 11:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73CBD6F7A7
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 11:50:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMNodq3_PhFY for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 11:50:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 122096F710
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 11:50:51 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lJxMS-0000dy-H8; Wed, 10 Mar 2021 12:50:44 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lJxMQ-0001h5-O7; Wed, 10 Mar 2021 12:50:42 +0100
Date: Wed, 10 Mar 2021 12:50:41 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v7 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
Message-ID: <20210310115041.s7tzvgdpksws6yss@pengutronix.de>
References: <20210118123244.13669-1-nsaenzjulienne@suse.de>
 <20210118123244.13669-12-nsaenzjulienne@suse.de>
MIME-Version: 1.0
In-Reply-To: <20210118123244.13669-12-nsaenzjulienne@suse.de>
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
Content-Type: multipart/mixed; boundary="===============1254284706311298061=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1254284706311298061==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ul6qbztvwf7nowqu"
Content-Disposition: inline


--ul6qbztvwf7nowqu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Nicolas,

On Mon, Jan 18, 2021 at 01:32:44PM +0100, Nicolas Saenz Julienne wrote:
> diff --git a/drivers/pwm/pwm-raspberrypi-poe.c b/drivers/pwm/pwm-raspberr=
ypi-poe.c
> new file mode 100644
> index 000000000000..ca845e8fabe6
> --- /dev/null
> +++ b/drivers/pwm/pwm-raspberrypi-poe.c
> @@ -0,0 +1,220 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> + * For more information on Raspberry Pi's PoE hat see:
> + * https://www.raspberrypi.org/products/poe-hat/
> + *
> + * Limitations:
> + *  - No disable bit, so a disabled PWM is simulated by duty_cycle 0
> + *  - Only normal polarity
> + *  - Fixed 12.5 kHz period
> + *
> + * The current period is completed when HW is reconfigured.

nice.

> + */
> +
> [...]
> +static int raspberrypi_pwm_apply(struct pwm_chip *chip, struct pwm_devic=
e *pwm,
> +				 const struct pwm_state *state)
> +{
> +	struct raspberrypi_pwm *rpipwm =3D raspberrypi_pwm_from_chip(chip);
> +	unsigned int duty_cycle;
> +	int ret;
> +
> +	if (state->period < RPI_PWM_PERIOD_NS ||
> +	    state->polarity !=3D PWM_POLARITY_NORMAL)
> +		return -EINVAL;
> +
> +	if (!state->enabled)
> +		duty_cycle =3D 0;
> +	else if (state->duty_cycle < RPI_PWM_PERIOD_NS)
> +		duty_cycle =3D DIV_ROUND_DOWN_ULL(state->duty_cycle * RPI_PWM_MAX_DUTY,
> +						RPI_PWM_PERIOD_NS);
> +	else
> +		duty_cycle =3D RPI_PWM_MAX_DUTY;
> +
> +	if (duty_cycle =3D=3D rpipwm->duty_cycle)
> +		return 0;
> +
> +	ret =3D raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_CUR_DUTY=
_REG,
> +					   duty_cycle);
> +	if (ret) {
> +		dev_err(chip->dev, "Failed to set duty cycle: %pe\n",
> +			ERR_PTR(ret));
> +		return ret;
> +	}
> +
> +	/*
> +	 * This sets the default duty cycle after resetting the board, we
> +	 * updated it every time to mimic Raspberry Pi's downstream's driver
> +	 * behaviour.
> +	 */
> +	ret =3D raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_DEF_DUTY=
_REG,
> +					   duty_cycle);
> +	if (ret) {
> +		dev_err(chip->dev, "Failed to set default duty cycle: %pe\n",
> +			ERR_PTR(ret));
> +		return ret;

This only has an effect for the next reboot, right? If so I wonder if it
is a good idea in general. (Think: The current PWM setting enables a
motor that makes a self-driving car move at 100 km/h. Consider the rpi
crashes, do I want to car to pick up driving 100 km/h at power up even
before Linux is up again?) And if we agree it's a good idea: Should
raspberrypi_pwm_apply return 0 if setting the duty cycle succeeded and
only setting the default didn't?

Other than that the patch looks fine.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ul6qbztvwf7nowqu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmBIso0ACgkQwfwUeK3K
7An3RQgAk7LiLPojRn3qgp/eEHGcY24aQQQnYHXFzwvNNsqfY9q1T6NOjwiJlIBj
owBPtq8IteT+V4qhiiQuB4MLMbNeaBZ+iR4l7OVDwzwuPrHtZuGFxz7vZumxdIET
Eqq1G++2nk48ZFJOUnKeWM733IgWZQwaM0XEr04i58ZjnoJ9mZo7g4nC2c8O6F6A
HQshnIGC2hEIZbpmpQrBOMI92Uh0pt03ScuCXM4o/YUuKxb8oeygwt963lrJwhXp
Vb1/aPD/lELD/kAAeOa3cje1nAdfEJPzH0kjIMfXNTkX8TeEEA0klNEEOXkVxrTP
0c+bK2SaxSe/2i1555OooX7x1H2VCg==
=540n
-----END PGP SIGNATURE-----

--ul6qbztvwf7nowqu--

--===============1254284706311298061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1254284706311298061==--
