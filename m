Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AD62CD992
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 15:53:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D4B687B2D;
	Thu,  3 Dec 2020 14:52:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4UUfxjESLab; Thu,  3 Dec 2020 14:52:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDB1587753;
	Thu,  3 Dec 2020 14:52:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DAA51BF470
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 14:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A4B287C5A
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 14:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XFIFHlzTbRju for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 14:52:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FEF487C45
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 14:52:56 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id D6E6DAC6A;
 Thu,  3 Dec 2020 14:52:53 +0000 (UTC)
Message-ID: <25466e2a562765be1d67abd2d1bdae1a089a8d33.camel@suse.de>
Subject: Re: [PATCH v5 08/11] input: raspberrypi-ts: Release firmware handle
 when not needed
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Thu, 03 Dec 2020 15:52:52 +0100
In-Reply-To: <20201202060347.GA2034289@dtor-ws>
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-9-nsaenzjulienne@suse.de>
 <20201202060347.GA2034289@dtor-ws>
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
 linus.walleij@linaro.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 bgolaszewski@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0293025520202639640=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0293025520202639640==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ZvftALHIaTsXsRIracDG"


--=-ZvftALHIaTsXsRIracDG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-12-01 at 22:03 -0800, Dmitry Torokhov wrote:
> Hi Nicolas,
>=20
> On Mon, Nov 23, 2020 at 07:38:29PM +0100, Nicolas Saenz Julienne wrote:
> > Use devm_rpi_firmware_get() so as to make sure we release RPi's firmwar=
e
> > interface when unbinding the device.
>=20
> I do not believe this comment is correct any longer. Otherwise:
>=20
> Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Yes, sorry for that. I'll update it.

Regards,
Nicolas


--=-ZvftALHIaTsXsRIracDG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl/I+8QACgkQlfZmHno8
x/7NvQf+JfeK0Lnf/15akeGZ/8CgqH3D9RSZKgyFKFIcOAUVnKXWdodRdXxrVu0+
1VgbGz2N5efgb/8exdYKRQqJine/T/NLCHW1PcrUE/NJPvJZ+JdM8P+JcOndFCv3
ERWwKGhxK5gboL1Av3jiy9rUGSc/xDfmV5JZVDGnaANaDx7TWE0ZrznAqmwLhxfb
qWo3bToylX8NAWP5vNs24bzPP7KyQHBwXDNuC3LIg3n9D5aj8s/qq/ZbHK3upjIG
M/3jrHsvITNvyvy5xVhJhlzywtd2780n2VbwUW4JkfxELPxeCrJRmSyop46k98zX
qBEeTzyBfM9kHKAcklkuqve2moyBtw==
=2QiO
-----END PGP SIGNATURE-----

--=-ZvftALHIaTsXsRIracDG--


--===============0293025520202639640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0293025520202639640==--

