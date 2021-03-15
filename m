Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA0833C150
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 17:13:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA95643133;
	Mon, 15 Mar 2021 16:13:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jgtnmJr4HI6G; Mon, 15 Mar 2021 16:12:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E08F843117;
	Mon, 15 Mar 2021 16:12:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A2D31BF2CF
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 16:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 394FF43117
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 16:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y3V1x1duMKyW for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 16:12:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5439A41503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 16:12:48 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 1A270AE44;
 Mon, 15 Mar 2021 16:12:46 +0000 (UTC)
Message-ID: <1255e56c66c8704c93adad77f605357267de0231.camel@suse.de>
Subject: Re: [PATCH v8 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 15 Mar 2021 17:12:44 +0100
In-Reply-To: <20210312201217.n2sav23swy7ii4uo@pengutronix.de>
References: <20210312122454.24480-1-nsaenzjulienne@suse.de>
 <20210312122454.24480-12-nsaenzjulienne@suse.de>
 <20210312201217.n2sav23swy7ii4uo@pengutronix.de>
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
Content-Type: multipart/mixed; boundary="===============0948933197579676316=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0948933197579676316==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-JjHV4KNwgAtLbBPYBur8"


--=-JjHV4KNwgAtLbBPYBur8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Uwe,

On Fri, 2021-03-12 at 21:12 +0100, Uwe Kleine-K=C3=B6nig wrote:
> Hello Nicolas,
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> 2021?

Yes.

> > + * For more information on Raspberry Pi's PoE hat see:
> > + * https://www.raspberrypi.org/products/poe-hat/
>=20
> Out of personal interest: Is this hat also able to power a RPi CM4?

I haven't tested it, and can't at the moment (no PoE injector available). B=
ut
the physical pin layout, and routing in CM4's IO board fits the hat. So I'd=
 say
yes.

> > + * Limitations:
> > + *  - No disable bit, so a disabled PWM is simulated by duty_cycle 0
> > + *  - Only normal polarity
> > + *  - Fixed 12.5 kHz period
> > + *
> > + * The current period is completed when HW is reconfigured.
> > + */
>=20
> Other than that as mentioned in the previous round: This looks good,
>=20
> Reviewed-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

Thanks!

> What is your thought about how to get this series merged?
> At least input, staging, armsoc, clk, reset anf firmware are touched. Do =
you
> prepare a branch for merging in the relevant trees (once you have all the
> necessary Acks)?

As per Linusw suggestion I'll send a pull request myself into the SoC tree =
and
hope for the best. :)

Regards,
Nicolas


--=-JjHV4KNwgAtLbBPYBur8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAmBPh3wACgkQlfZmHno8
x/53LQf/dUgfBEd6vbH95M6DCLvf5pt99cSCUEMCwlP7yqwyFwU0PwzaIaaWDZr6
ndzNDlkPo08HzcPgZ4YenCX25lpjQNMsJ4XAmXsWNv+mmSfFTHlqyZPD9zlfvFe4
uCxDMhTSdDOW6but1Qq5GoTIOWS49aU6v0ycjXPL6xky1xL6na9w4XuBI0fzQJa8
cH3A/zt0sFSE6zedvH88o2JcKJqASiIC6M5P8dhShbpQFyJIZSzcebENxCt3AoeA
Asui9I4P4auIKH3UlvuVYtr2q438+xMD24EpDeMVxeimtYrTcQyB7bwP4v+0cH49
VTZL6KPpv5TbPD0BnhXJI0owDekNSQ==
=RDjK
-----END PGP SIGNATURE-----

--=-JjHV4KNwgAtLbBPYBur8--


--===============0948933197579676316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0948933197579676316==--

