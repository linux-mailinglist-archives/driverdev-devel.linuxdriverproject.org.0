Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10671337342
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 14:01:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 350E7431E3;
	Thu, 11 Mar 2021 13:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dp-z-jKamjNX; Thu, 11 Mar 2021 13:01:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65690414EE;
	Thu, 11 Mar 2021 13:01:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C1461BF3A7
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 13:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17A204D462
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 13:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rwyeK5SEAG33 for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 13:01:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 844474BC25
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 13:01:04 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 4820BAC16;
 Thu, 11 Mar 2021 13:01:02 +0000 (UTC)
Message-ID: <fc60ac5ab9760d791aa5e184258accf53e07ce1e.camel@suse.de>
Subject: Re: [PATCH v7 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 11 Mar 2021 14:01:00 +0100
In-Reply-To: <20210310115041.s7tzvgdpksws6yss@pengutronix.de>
References: <20210118123244.13669-1-nsaenzjulienne@suse.de>
 <20210118123244.13669-12-nsaenzjulienne@suse.de>
 <20210310115041.s7tzvgdpksws6yss@pengutronix.de>
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
Content-Type: multipart/mixed; boundary="===============5584525913107809461=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5584525913107809461==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-rPtClvAMAu3vmlHUSTv2"


--=-rPtClvAMAu3vmlHUSTv2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Uwe,
thanks for taking the time to look into this. :)

On Wed, 2021-03-10 at 12:50 +0100, Uwe Kleine-K=C3=B6nig wrote:
> Hello Nicolas,
>=20
> On Mon, Jan 18, 2021 at 01:32:44PM +0100, Nicolas Saenz Julienne wrote:

[...]

> > +	/*
> > +	 * This sets the default duty cycle after resetting the board, we
> > +	 * updated it every time to mimic Raspberry Pi's downstream's driver
> > +	 * behaviour.
> > +	 */
> > +	ret =3D raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_DEF_DU=
TY_REG,
> > +					   duty_cycle);
> > +	if (ret) {
> > +		dev_err(chip->dev, "Failed to set default duty cycle: %pe\n",
> > +			ERR_PTR(ret));
> > +		return ret;
>=20
> This only has an effect for the next reboot, right?

It effects all reboots until it's further changed.

> If so I wonder if it is a good idea in general. (Think: The current PWM
> setting enables a motor that makes a self-driving car move at 100 km/h.
> Consider the rpi crashes, do I want to car to pick up driving 100 km/h at
> power up even before Linux is up again?)

I get your point. But this isn't used as a general purpose PWM. For now the
interface is solely there to drive a PWM fan that's arguably harmless. This
doesn't mean that the RPi foundation will not reuse the firmware interface =
for
other means in the future. In such case we can always use a new DT compatib=
le
and bypass this feature (the current DT string is
'raspberrypi,firmware-poe-pwm', which is specific to this use-case).

My aim here is to be on par feature wise with RPi's downstream implementati=
on.
So as for them to be able to use it as is and avoid duplication. Now, if th=
is
is blocking the driver from being merged, I'd rather remove it. It'll be a
patch for the downstream kernel to maintain, but better than nothing.

> And if we agree it's a good idea: Should raspberrypi_pwm_apply return 0 i=
f
> setting the duty cycle succeeded and only setting the default didn't?

Good point. I don't think so. We'd be also missing on the following by
returning early:

	rpipwm->duty_cycle =3D duty_cycle;

I propose to change it to a 'best effort' approach, if it fails, log it and
continue successfully.

Regards,
Nicolas


--=-rPtClvAMAu3vmlHUSTv2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAmBKFIwACgkQlfZmHno8
x/5Xwwf/epKXd8rgN+dNn1qRP2YYm1lUu6pbJFf3mtkjI4AkSoZaHsvNqGMSIe5q
FZEL262SPZKC5f2EaZhbvuGF2Jengz0t4cC1dID9Asup+lK4baI17+1iNzOJoAgC
6OewHa2pkDzUoo+J94nSB8FMPqTorYR+8kP7O2+olrz1UPvH2UJonwSlgiWuzI1Q
rIxjBhqHy0Q/R5Aa9oNCZalpdmeGaq9ewIZFfpYyns/MAOSGH3tYP/dH70yUBQO3
awy7Ly59mr2+ggecgxW5R0okT95/CdRxivA+DmOE2jxl3/BhNHglRijTY9KRj8c6
kS3q0R8eKZK6q0C2OJFotH6xrhPVOA==
=/TKa
-----END PGP SIGNATURE-----

--=-rPtClvAMAu3vmlHUSTv2--


--===============5584525913107809461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5584525913107809461==--

