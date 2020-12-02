Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5548D2CC1BC
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 17:09:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6EB287A7A;
	Wed,  2 Dec 2020 16:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dpcJaWn+J4Py; Wed,  2 Dec 2020 16:09:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5D0A87911;
	Wed,  2 Dec 2020 16:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 071A51BF868
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 16:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0380F87903
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 16:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yA4MUHJ80KcC for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 16:09:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 722A4878FE
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 16:09:29 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 23E8520002;
 Wed,  2 Dec 2020 16:09:20 +0000 (UTC)
Date: Wed, 2 Dec 2020 17:09:20 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 13/19] media: sunxi: Add support for the A31 MIPI
 CSI-2 controller
Message-ID: <X8e8MNc5WYnpKTyy@aptenodytes>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-14-paul.kocialkowski@bootlin.com>
 <20201201122038.bxk3vu2w3mg43ayq@gilmour>
 <X8eoX+M650sMXqpx@aptenodytes>
 <20201202154818.bf72m2firemyc5ve@gilmour>
MIME-Version: 1.0
In-Reply-To: <20201202154818.bf72m2firemyc5ve@gilmour>
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, kevin.lhopital@hotmail.com,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============1102939053631054251=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1102939053631054251==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NYHUWLtOMJokL+dM"
Content-Disposition: inline


--NYHUWLtOMJokL+dM
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 02 Dec 20, 16:48, Maxime Ripard wrote:
> On Wed, Dec 02, 2020 at 03:44:47PM +0100, Paul Kocialkowski wrote:
> > > > +static int __maybe_unused sun6i_mipi_csi2_suspend(struct device *d=
ev)
> > > > +{
> > > > +	struct sun6i_mipi_csi2_dev *cdev =3D dev_get_drvdata(dev);
> > > > +
> > > > +	clk_disable_unprepare(cdev->clk_mod);
> > > > +	clk_disable_unprepare(cdev->clk_bus);
> > > > +	reset_control_assert(cdev->reset);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int __maybe_unused sun6i_mipi_csi2_resume(struct device *de=
v)
> > > > +{
> > > > +	struct sun6i_mipi_csi2_dev *cdev =3D dev_get_drvdata(dev);
> > > > +	int ret;
> > > > +
> > > > +	ret =3D reset_control_deassert(cdev->reset);
> > > > +	if (ret) {
> > > > +		dev_err(cdev->dev, "failed to deassert reset\n");
> > > > +		return ret;
> > > > +	}
> > > > +
> > > > +	ret =3D clk_prepare_enable(cdev->clk_bus);
> > > > +	if (ret) {
> > > > +		dev_err(cdev->dev, "failed to enable bus clock\n");
> > > > +		goto error_reset;
> > > > +	}
> > > > +
> > > > +	ret =3D clk_prepare_enable(cdev->clk_mod);
> > > > +	if (ret) {
> > > > +		dev_err(cdev->dev, "failed to enable module clock\n");
> > > > +		goto error_clk_bus;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +
> > > > +error_clk_bus:
> > > > +	clk_disable_unprepare(cdev->clk_bus);
> > > > +
> > > > +error_reset:
> > > > +	reset_control_assert(cdev->reset);
> > > > +
> > > > +	return ret;
> > > > +}
> > >=20
> > > I'm guessing you set the __maybe_unused attribute because you're using
> > > SET_RUNTIME_PM_OPS, but what would happen if runtime_pm isn't selecte=
d?
> > > It looks like you don't handle that case.
> >=20
> > Indeed, __maybe_unused is because of the conditional definition of
> > SET_RUNTIME_PM_OPS. If CONFIG_PM is not selected, then I guess the cont=
roller
> > wouldn't be powered and wouldn't work. So I should definitely add a Kco=
nfig
> > dependency on PM then, right?
>=20
> There's two ways we can do it. What you suggested is one, the other is
> to have something like our SPI driver to call directly the resume
> function if there's no runtime pm support.

Understood! I think I'll stick to depending on PM (unless you prefer not to)
but it's good to know.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--NYHUWLtOMJokL+dM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/HvDAACgkQ3cLmz3+f
v9Fm8AgAiWV6aebhuxeTBIhOQywJt0bWH442ibCI6O2W3BO1aBzn5le48//KHOBW
3KuGiKTjL4guqfc4fNKG+moEqOai8v11MAVAz8ii/74l0WyN4LYUFwrKRJzGwS0J
KQw/ldQxF5u8pYMGxaderBmACdscPzBoTvQZuVshEnRlQ9qKUHIsDa6CGieDQqIs
9GNj9KiG/mWBV/AAYRwvllA3QW/EQJo3zbNs7wAAMMtOebNwSfh6P9peh8/memFn
3MOHDAbEKAHKUWimARCMBhOQRGnQf3/wjBif0L7iebN4FUYqyl8cN5iOCwGVwfgs
iFi3TSt1u9r0cUsE5yzDwsR6UZBipA==
=TddM
-----END PGP SIGNATURE-----

--NYHUWLtOMJokL+dM--

--===============1102939053631054251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1102939053631054251==--
