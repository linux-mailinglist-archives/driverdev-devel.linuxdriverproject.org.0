Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AD629A7C6
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 10:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22AA0866EF;
	Tue, 27 Oct 2020 09:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BgtgynpCcCQJ; Tue, 27 Oct 2020 09:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCBCF866DA;
	Tue, 27 Oct 2020 09:26:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D34AF1BF2FB
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 09:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC54E20436
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 09:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id asd4g2Ea7G07 for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 09:26:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 5FC322042A
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 09:26:48 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id DD2A340015;
 Tue, 27 Oct 2020 09:26:38 +0000 (UTC)
Date: Tue, 27 Oct 2020 10:26:38 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 03/14] media: sun6i-csi: Support an optional dedicated
 memory pool
Message-ID: <20201027092638.GC168350@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-4-paul.kocialkowski@bootlin.com>
 <20201026154104.v32up7uh6oryqxaf@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20201026154104.v32up7uh6oryqxaf@gilmour.lan>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6209295105089204341=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6209295105089204341==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="69pVuxX8awAiJ7fD"
Content-Disposition: inline


--69pVuxX8awAiJ7fD
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 26 Oct 20, 16:41, Maxime Ripard wrote:
> On Fri, Oct 23, 2020 at 07:45:35PM +0200, Paul Kocialkowski wrote:
> > This allows selecting a dedicated CMA memory pool (specified via
> > device-tree) instead of the default one.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>=20
> Why would that be needed?

Sorry for the confusion, this is indeed unrelated to the current series and
it is not needed for MIPI CSI-2 support.

However, I think it's a worthwhile addition to the driver.
I will take it out of the series and re-submit it separately then.

> > ---
> >  drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >=20
> > diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drive=
rs/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > index 28e89340fed9..5d2389a5cd17 100644
> > --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > @@ -16,6 +16,7 @@
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> > +#include <linux/of_reserved_mem.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/pm_runtime.h>
> >  #include <linux/regmap.h>
> > @@ -849,6 +850,12 @@ static int sun6i_csi_resource_request(struct sun6i=
_csi_dev *sdev,
> >  		return PTR_ERR(sdev->regmap);
> >  	}
> > =20
> > +	ret =3D of_reserved_mem_device_init(&pdev->dev);
> > +	if (ret && ret !=3D -ENODEV) {
> > +		dev_err(&pdev->dev, "Unable to init reserved memory\n");
> > +		return ret;
> > +	}
> > +
> >  	sdev->clk_mod =3D devm_clk_get(&pdev->dev, "mod");
>=20
> If that clk_get or any subsequent function fail you'll end up leaking
> whatever the initialization of the reserved memory has allocated

Right, there's a missing of_reserved_mem_device_release in the error path h=
ere.

Thanks!

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--69pVuxX8awAiJ7fD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+X584ACgkQ3cLmz3+f
v9FxYAf/Ub94G9WZnyvpvke4BYJGrlHPAnZqKjmkgjeXotEjAs6FwGm6O6I+M6Yp
JxGnG/1WIaU4lCJQXscCtQJNUMb9oiFPd+agJyZCh6xfgK907/s4GJzMjGpWLeaa
/f0JtK1jsl+rkglVn0wdEPM5/EiZGhVD1sTS183WgQ2TdkeIHxACvf9/h/1Z5H6e
ZJPJAVBOKnDxkoEh7dWkwAjPch6Arjk+OuYhRk4OcK86IVcqzLj3M/ACzADFa4Tw
+VomSUxExN5nmJaCyRNrMJlv940nICwaXwCgLJYvC4yyJgJgXtnAi8cBeuA+oZi4
KKp3bDm6HR5bz9k++lP/3+phx+m74w==
=Hl5g
-----END PGP SIGNATURE-----

--69pVuxX8awAiJ7fD--

--===============6209295105089204341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6209295105089204341==--
