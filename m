Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C12129A7E4
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 10:31:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3FAF85D97;
	Tue, 27 Oct 2020 09:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EW3410WMePH1; Tue, 27 Oct 2020 09:31:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33BC085DC0;
	Tue, 27 Oct 2020 09:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D420A1BF2FB
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 09:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D053086FBB
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 09:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSxAKszW8zhc for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 09:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 67C0786FB8
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 09:31:33 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 592B71BF212;
 Tue, 27 Oct 2020 09:31:21 +0000 (UTC)
Date: Tue, 27 Oct 2020 10:31:19 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 05/14] media: sun6i-csi: Only configure the interface
 data width for parallel
Message-ID: <20201027093119.GD168350@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-6-paul.kocialkowski@bootlin.com>
 <20201026160035.sr6kifrpkev773o6@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20201026160035.sr6kifrpkev773o6@gilmour.lan>
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
 =?utf-8?B?S8OpdmluIEwnaMO0cGl0YWw=?= <kevin.lhopital@bootlin.com>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6335071583217229114=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6335071583217229114==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5gxpn/Q6ypwruk0T"
Content-Disposition: inline


--5gxpn/Q6ypwruk0T
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 26 Oct 20, 17:00, Maxime Ripard wrote:
> On Fri, Oct 23, 2020 at 07:45:37PM +0200, Paul Kocialkowski wrote:
> > Bits related to the interface data width do not have any effect when
> > the CSI controller is taking input from the MIPI CSI-2 controller.
>=20
> I guess it would be clearer to mention that the data width is only
> applicable for parallel here.

Understood, will change the wording in the next version.

> > In prevision of adding support for this case, set these bits
> > conditionally so there is no ambiguity.
> >=20
> > Co-developed-by: K=C3=A9vin L'h=C3=B4pital <kevin.lhopital@bootlin.com>
> > Signed-off-by: K=C3=A9vin L'h=C3=B4pital <kevin.lhopital@bootlin.com>
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 42 +++++++++++--------
> >  1 file changed, 25 insertions(+), 17 deletions(-)
> >=20
> > diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drive=
rs/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > index 5d2389a5cd17..a876a05ea3c7 100644
> > --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > @@ -378,8 +378,13 @@ static void sun6i_csi_setup_bus(struct sun6i_csi_d=
ev *sdev)
> >  	unsigned char bus_width;
> >  	u32 flags;
> >  	u32 cfg;
> > +	bool input_parallel =3D false;
> >  	bool input_interlaced =3D false;
> > =20
> > +	if (endpoint->bus_type =3D=3D V4L2_MBUS_PARALLEL ||
> > +	    endpoint->bus_type =3D=3D V4L2_MBUS_BT656)
> > +		input_parallel =3D true;
> > +
> >  	if (csi->config.field =3D=3D V4L2_FIELD_INTERLACED
> >  	    || csi->config.field =3D=3D V4L2_FIELD_INTERLACED_TB
> >  	    || csi->config.field =3D=3D V4L2_FIELD_INTERLACED_BT)
> > @@ -395,6 +400,26 @@ static void sun6i_csi_setup_bus(struct sun6i_csi_d=
ev *sdev)
> >  		 CSI_IF_CFG_HREF_POL_MASK | CSI_IF_CFG_FIELD_MASK |
> >  		 CSI_IF_CFG_SRC_TYPE_MASK);
> > =20
> > +	if (input_parallel) {
> > +		switch (bus_width) {
> > +		case 8:
> > +			cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_8BIT;
> > +			break;
> > +		case 10:
> > +			cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_10BIT;
> > +			break;
> > +		case 12:
> > +			cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_12BIT;
> > +			break;
> > +		case 16: /* No need to configure DATA_WIDTH for 16bit */
> > +			break;
> > +		default:
> > +			dev_warn(sdev->dev, "Unsupported bus width: %u\n",
> > +				 bus_width);
> > +			break;
> > +		}
> > +	}
> > +
> >  	if (input_interlaced)
> >  		cfg |=3D CSI_IF_CFG_SRC_TYPE_INTERLACED;
> >  	else
> > @@ -440,23 +465,6 @@ static void sun6i_csi_setup_bus(struct sun6i_csi_d=
ev *sdev)
> >  		break;
> >  	}
> > =20
> > -	switch (bus_width) {
> > -	case 8:
> > -		cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_8BIT;
> > -		break;
> > -	case 10:
> > -		cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_10BIT;
> > -		break;
> > -	case 12:
> > -		cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_12BIT;
> > -		break;
> > -	case 16: /* No need to configure DATA_WIDTH for 16bit */
> > -		break;
> > -	default:
> > -		dev_warn(sdev->dev, "Unsupported bus width: %u\n", bus_width);
> > -		break;
> > -	}
> > -
>=20
> Is there any reason to move it around?

The main reason is cosmetics: input_parallel is introduced to match the alr=
eady
existing input_interlaced variable, so it made sense to me to have both of =
these
conditionals one after the other instead of spreading them randomly.

I can mention this in the commit log if you prefer.

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--5gxpn/Q6ypwruk0T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+X6OcACgkQ3cLmz3+f
v9E4ZAf9G4WrazCR7uzhJ6TzaObPDuK3ZcpoqfZh7GopUZHGTQkIg1MdpqnZTUor
NXm7n2mI41WUp9/F7URC05l8+ySbojy6jjIhGdf9IorawBgrlRAVplqPJaF2uuWD
NnxVIys2WTw2FwHrh3zEVHKJPO+1qTleIoBPu5WFodwsvz/Pb2zVS2/Kdtv5KhXa
G1GBNQ7UlQqvbShqs7f5LoYlp9GHuB8/NmVHH/jP89BhpDBTbsYLWQXjvs6fqNgb
ggICWUXB5Uwjfsj8PWcFBXJFStux5NoeOypCLJCxKau86uphz6VLodbj/T2VvmCW
qmjrvw6LqmyPx5pJpg9gPupbc+plpw==
=qqnp
-----END PGP SIGNATURE-----

--5gxpn/Q6ypwruk0T--

--===============6335071583217229114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6335071583217229114==--
