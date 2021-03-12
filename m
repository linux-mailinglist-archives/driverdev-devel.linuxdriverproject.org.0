Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A11EB339808
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 21:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9473884108;
	Fri, 12 Mar 2021 20:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTj08NGpu4-O; Fri, 12 Mar 2021 20:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FC2283F69;
	Fri, 12 Mar 2021 20:12:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A20931BF580
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 20:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9CFF64ED9B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 20:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-UK7UBNdnCU for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 20:12:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83FD74EDA4
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 20:12:27 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lKo8y-0004RE-Cj; Fri, 12 Mar 2021 21:12:20 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lKo8w-00089j-Gb; Fri, 12 Mar 2021 21:12:18 +0100
Date: Fri, 12 Mar 2021 21:12:17 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v8 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
Message-ID: <20210312201217.n2sav23swy7ii4uo@pengutronix.de>
References: <20210312122454.24480-1-nsaenzjulienne@suse.de>
 <20210312122454.24480-12-nsaenzjulienne@suse.de>
MIME-Version: 1.0
In-Reply-To: <20210312122454.24480-12-nsaenzjulienne@suse.de>
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
Content-Type: multipart/mixed; boundary="===============1712947991724340568=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1712947991724340568==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e6h2cu7dk3om4cg7"
Content-Disposition: inline


--e6h2cu7dk3om4cg7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Nicolas,

On Fri, Mar 12, 2021 at 01:24:54PM +0100, Nicolas Saenz Julienne wrote:
> Adds support to control the PWM bus available in official Raspberry Pi
> PoE HAT. Only RPi's co-processor has access to it, so commands have to
> be sent through RPi's firmware mailbox interface.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> ---
>=20
> Changes since v7:
>  - Remove unwarranted RPI_PWM_DEF_DUTY_REG usage
>=20
>  Changes since v6:
> - Use %pe
> - Round divisions properly
> - Use dev_err_probe()
> - Pass check_patch
>=20
> Changes since v3:
>  - Rename compatible string to be more explicit WRT to bus's limitations
>=20
> Changes since v2:
>  - Use devm_rpi_firmware_get()
>  - Rename driver
>  - Small cleanups
>=20
> Changes since v1:
>  - Use default pwm bindings and get rid of xlate() function
>  - Correct spelling errors
>  - Correct apply() function
>  - Round values
>  - Fix divisions in arm32 mode
>  - Small cleanups
>=20
>  drivers/pwm/Kconfig               |   9 ++
>  drivers/pwm/Makefile              |   1 +
>  drivers/pwm/pwm-raspberrypi-poe.c | 206 ++++++++++++++++++++++++++++++
>  3 files changed, 216 insertions(+)
>  create mode 100644 drivers/pwm/pwm-raspberrypi-poe.c
>=20
> diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
> index a7a7a9f26aef..d3371ac7b871 100644
> --- a/drivers/pwm/Kconfig
> +++ b/drivers/pwm/Kconfig
> @@ -431,6 +431,15 @@ config PWM_PXA
>  	  To compile this driver as a module, choose M here: the module
>  	  will be called pwm-pxa.
> =20
> +config PWM_RASPBERRYPI_POE
> +	tristate "Raspberry Pi Firwmware PoE Hat PWM support"
> +	# Make sure not 'y' when RASPBERRYPI_FIRMWARE is 'm'. This can only
> +	# happen when COMPILE_TEST=3Dy, hence the added !RASPBERRYPI_FIRMWARE.
> +	depends on RASPBERRYPI_FIRMWARE || (COMPILE_TEST && !RASPBERRYPI_FIRMWA=
RE)
> +	help
> +	  Enable Raspberry Pi firmware controller PWM bus used to control the
> +	  official RPI PoE hat
> +
>  config PWM_RCAR
>  	tristate "Renesas R-Car PWM support"
>  	depends on ARCH_RENESAS || COMPILE_TEST
> diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
> index 4e35a55fa7b6..d3879619bd76 100644
> --- a/drivers/pwm/Makefile
> +++ b/drivers/pwm/Makefile
> @@ -39,6 +39,7 @@ obj-$(CONFIG_PWM_NTXEC)		+=3D pwm-ntxec.o
>  obj-$(CONFIG_PWM_OMAP_DMTIMER)	+=3D pwm-omap-dmtimer.o
>  obj-$(CONFIG_PWM_PCA9685)	+=3D pwm-pca9685.o
>  obj-$(CONFIG_PWM_PXA)		+=3D pwm-pxa.o
> +obj-$(CONFIG_PWM_RASPBERRYPI_POE)	+=3D pwm-raspberrypi-poe.o
>  obj-$(CONFIG_PWM_RCAR)		+=3D pwm-rcar.o
>  obj-$(CONFIG_PWM_RENESAS_TPU)	+=3D pwm-renesas-tpu.o
>  obj-$(CONFIG_PWM_ROCKCHIP)	+=3D pwm-rockchip.o
> diff --git a/drivers/pwm/pwm-raspberrypi-poe.c b/drivers/pwm/pwm-raspberr=
ypi-poe.c
> new file mode 100644
> index 000000000000..71ade5e55069
> --- /dev/null
> +++ b/drivers/pwm/pwm-raspberrypi-poe.c
> @@ -0,0 +1,206 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

2021?

> + * For more information on Raspberry Pi's PoE hat see:
> + * https://www.raspberrypi.org/products/poe-hat/

Out of personal interest: Is this hat also able to power a RPi CM4?

> + * Limitations:
> + *  - No disable bit, so a disabled PWM is simulated by duty_cycle 0
> + *  - Only normal polarity
> + *  - Fixed 12.5 kHz period
> + *
> + * The current period is completed when HW is reconfigured.
> + */

Other than that as mentioned in the previous round: This looks good,

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

What is your thought about how to get this series merged? At least
input, staging, armsoc, clk, reset anf firmware are touched. Do you
prepare a branch for merging in the relevant trees (once you have all
the necessary Acks)?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--e6h2cu7dk3om4cg7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmBLyx0ACgkQwfwUeK3K
7Ak+VQf+I16Pur4J8v1VK5J08zAGFG+/Lgxk4CBXKIV1Hs8zZ+Xj6Y7sobqkPmiG
/75gKqcFB43BHDrOAwWVMNlE9OChTTrI9grjBHBTGl+46cJkuu5qus/xptp3mxQu
zdTcmzfkrLYPdw3AQaofaLHg5IL0RZkvovBmiUa+JaN89EtjvuLRIFL8wtipt/0J
rE8baVUKZd1ttRm+eotIk3iknzxFUe3xAVFJ8YRlNBwyGlEQQBsZFku3+rP2p47w
6K30Tnft0JKiK+4fuMFhQ5xw3ugSSWThr6/kDYQnTk/BagTPeUyftRmh4/JNkc8X
7OhSbf8srKbZC8859TEqJZ5M48RRxw==
=bnOj
-----END PGP SIGNATURE-----

--e6h2cu7dk3om4cg7--

--===============1712947991724340568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1712947991724340568==--
