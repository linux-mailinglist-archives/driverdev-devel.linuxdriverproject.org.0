Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD5D2F69D5
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Jan 2021 19:44:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7490C87416;
	Thu, 14 Jan 2021 18:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g5pbCfS9xDcv; Thu, 14 Jan 2021 18:44:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81DC787400;
	Thu, 14 Jan 2021 18:44:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EDE11BF3A4
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 18:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2927686C1A
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 18:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MaLfqW8qNjlV for <devel@linuxdriverproject.org>;
 Thu, 14 Jan 2021 18:44:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 66A8786C08
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 18:44:50 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 248D5B77E;
 Thu, 14 Jan 2021 18:44:48 +0000 (UTC)
Message-ID: <99a7d6e80646ff7ac6c1fc615146fc4ad1428552.camel@suse.de>
Subject: Re: [PATCH v6 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 14 Jan 2021 19:44:46 +0100
In-Reply-To: <20210112091842.3th64ardbqjafvuq@pengutronix.de>
References: <20201211164801.7838-1-nsaenzjulienne@suse.de>
 <20201211164801.7838-12-nsaenzjulienne@suse.de>
 <20210112091842.3th64ardbqjafvuq@pengutronix.de>
User-Agent: Evolution 3.38.2 
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
 andy.shevchenko@gmail.com, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3844660269415697339=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3844660269415697339==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Gc66jpwjN4JFK05BfjVR"


--=-Gc66jpwjN4JFK05BfjVR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Uwe, thanks for the review.

On Tue, 2021-01-12 at 10:18 +0100, Uwe Kleine-K=C3=B6nig wrote:

[...]

> > +                duty_cycle =3D DIV_ROUND_CLOSEST_ULL(state->duty_cycle=
 * RPI_PWM_MAX_DUTY,
> > +					           RPI_PWM_PERIOD_NS);
>=20
> ... and round down here.
>=20
> Just to be sure: writing RPI_PWM_MAX_DUTY (i.e. 255) yields 100% duty
> cycle, right?

Yes, at 255 the signal is flat.

> > +        else
> > +                duty_cycle =3D RPI_PWM_MAX_DUTY;
> > +
> > +	if (duty_cycle =3D=3D rpipwm->duty_cycle)
> > +		return 0;
> > +
> > +	ret =3D raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_CUR_DU=
TY_REG,
> > +					   duty_cycle);
> > +	if (ret) {
> > +		dev_err(chip->dev, "Failed to set duty cycle: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	/*
> > +	 * This sets the default duty cycle after resetting the board, we
> > +	 * updated it every time to mimic Raspberry Pi's downstream's driver
> > +	 * behaviour.
> > +	 */
> > +	ret =3D raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_DEF_DU=
TY_REG,
> > +					   duty_cycle);
> > +	if (ret) {
> > +		dev_err(chip->dev, "Failed to set default duty cycle: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +        rpipwm->duty_cycle =3D duty_cycle;
>=20
> Please use tabs for indention. (The general hint is to use checkpatch
> which (I hope) tells you about problems like this.)

Sorry for that.

I took note of the rest of comments and will update the code.

Regards,
Nicolas



--=-Gc66jpwjN4JFK05BfjVR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAmAAkR4ACgkQlfZmHno8
x/7WpAf+OcmBebYI8HGJFfpFhX3gBSdN6587Todi3RNaMrm6loRFFbe3HDS3rO0u
pv9Zl7lrjVKV1+Fug2/3rTL4Kh0/w98EZJ5mpf6n5k0EG+EoMqGqfqElaLL0mvW9
7NpiNF15W4/v/U22BH3jtFUkt0PpjN1J2WPclOl+ZPEe31vjdiEauq7zAhRT9Gpr
XHH9ZbY9f4oXR2s91ZaYGdni3ikxxB4cG/aS50GAM019KW/RIkEibfYpDjrCNOml
M4Z4Y15Mqi8aouumlLNKiuxNmNhtyCilx3jHPeNm+2b5GeBp/S9jtAVkVaUaYQ9I
N8qh4QzVUk4qMeucxLeRRemzuIWCOw==
=pJN/
-----END PGP SIGNATURE-----

--=-Gc66jpwjN4JFK05BfjVR--


--===============3844660269415697339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3844660269415697339==--

