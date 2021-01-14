Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CD52F5D90
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Jan 2021 10:30:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0706F86AD9;
	Thu, 14 Jan 2021 09:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFEm-OdZHnQD; Thu, 14 Jan 2021 09:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9365A86AFD;
	Thu, 14 Jan 2021 09:30:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 076A91BF46D
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 09:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 011FE86A90
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 09:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2kywdCvgpxlZ for <devel@linuxdriverproject.org>;
 Thu, 14 Jan 2021 09:30:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9667886A8A
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 09:30:12 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C14D51BF21E;
 Thu, 14 Jan 2021 09:30:02 +0000 (UTC)
Date: Thu, 14 Jan 2021 10:30:01 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [linux-sunxi] [PATCH v4 09/15] media: sunxi: Add support for the
 A31 MIPI CSI-2 controller
Message-ID: <YAAPGZCK/TffZChD@aptenodytes>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
 <20201231142948.3241780-10-paul.kocialkowski@bootlin.com>
 <CAAEAJfAJYCE2z662hPderJ-5Qv3WBA8K5ZQaZ1JuZbZN+KfFig@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAEAJfAJYCE2z662hPderJ-5Qv3WBA8K5ZQaZ1JuZbZN+KfFig@mail.gmail.com>
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
 Hans Verkuil <hans.verkuil@cisco.com>,
 linux-media <linux-media@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============4833816761382401851=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4833816761382401851==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EJgpfe+RWrId2mN0"
Content-Disposition: inline


--EJgpfe+RWrId2mN0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Ezequiel,

On Mon 11 Jan 21, 15:21, Ezequiel Garcia wrote:
> Salut Paul,
>=20
> Just a minor comment about the v4l2 async API.
>
> On Thu, 31 Dec 2020 at 11:30, Paul Kocialkowski
> <paul.kocialkowski@bootlin.com> wrote:
> >
> > The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 bridge
> > found on Allwinner SoCs such as the A31 and V3/V3s.
> >
> > It is a standalone block, connected to the CSI controller on one side
> > and to the MIPI D-PHY block on the other. It has a dedicated address
> > space, interrupt line and clock.
> >
> > It is represented as a V4L2 subdev to the CSI controller and takes a
> > MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
> > media controller API.
> >
> > Only 8-bit and 10-bit Bayer formats are currently supported.
> > While up to 4 internal channels to the CSI controller exist, only one
> > is currently supported by this implementation.
> >
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/media/platform/sunxi/Kconfig          |   1 +
> >  drivers/media/platform/sunxi/Makefile         |   1 +
> >  .../platform/sunxi/sun6i-mipi-csi2/Kconfig    |  12 +
> >  .../platform/sunxi/sun6i-mipi-csi2/Makefile   |   4 +
> >  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c   | 590 ++++++++++++++++++
> >  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h   | 117 ++++
> >  6 files changed, 725 insertions(+)
> >  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
> >  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefi=
le
> >  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_=
mipi_csi2.c
> >  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_=
mipi_csi2.h
> >
> [..]
> > +static int sun6i_mipi_csi2_v4l2_setup(struct sun6i_mipi_csi2_dev *cdev)
> > +{
> > +       struct sun6i_mipi_csi2_video *video =3D &cdev->video;
> > +       struct v4l2_subdev *subdev =3D &video->subdev;
> > +       struct v4l2_async_notifier *notifier =3D &video->notifier;
> > +       struct fwnode_handle *handle;
> > +       struct v4l2_fwnode_endpoint *endpoint;
> > +       struct v4l2_async_subdev *subdev_async;
> > +       int ret;
> > +
> > +       /* Subdev */
> > +
> > +       v4l2_subdev_init(subdev, &sun6i_mipi_csi2_subdev_ops);
> > +       subdev->dev =3D cdev->dev;
> > +       subdev->flags |=3D V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +       strscpy(subdev->name, MODULE_NAME, sizeof(subdev->name));
> > +       v4l2_set_subdevdata(subdev, cdev);
> > +
> > +       /* Entity */
> > +
> > +       subdev->entity.function =3D MEDIA_ENT_F_VID_IF_BRIDGE;
> > +       subdev->entity.ops =3D &sun6i_mipi_csi2_entity_ops;
> > +
> > +       /* Pads */
> > +
> > +       video->pads[0].flags =3D MEDIA_PAD_FL_SINK;
> > +       video->pads[1].flags =3D MEDIA_PAD_FL_SOURCE;
> > +
> > +       ret =3D media_entity_pads_init(&subdev->entity, 2, video->pads);
> > +       if (ret)
> > +               return ret;
> > +
> > +       /* Endpoint */
> > +
> > +       handle =3D fwnode_graph_get_endpoint_by_id(dev_fwnode(cdev->dev=
), 0, 0,
> > +                                                FWNODE_GRAPH_ENDPOINT_=
NEXT);
> > +       if (!handle) {
> > +               ret =3D -ENODEV;
> > +               goto error_media_entity;
> > +       }
> > +
> > +       endpoint =3D &video->endpoint;
> > +       endpoint->bus_type =3D V4L2_MBUS_CSI2_DPHY;
> > +
> > +       ret =3D v4l2_fwnode_endpoint_parse(handle, endpoint);
> > +       fwnode_handle_put(handle);
>=20
> I think the _put should be...
>=20
> > +       if (ret)
> > +               goto error_media_entity;
> > +
> > +       /* Notifier */
> > +
> > +       v4l2_async_notifier_init(notifier);
> > +
> > +       subdev_async =3D &video->subdev_async;
> > +       ret =3D v4l2_async_notifier_add_fwnode_remote_subdev(notifier, =
handle,
> > +                                                          subdev_async=
);
>=20
> ... here. See for instance drivers/media/platform/rcar-vin/rcar-csi2.c.
>=20
> (Unless I've missed something, of course).

I think you're right, the reference is obtained at
fwnode_graph_get_endpoint_by_id and should be held when passing handle to
v4l2_async_notifier_add_fwnode_remote_subdev since it will be used to get
a reference to the remote port.

Good catch and thanks for the review!

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--EJgpfe+RWrId2mN0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmAADxkACgkQ3cLmz3+f
v9Hytwf/W+8A0xNMOTt+EHzq4AdwRMqFrAR8IlpIUjYo23z3pYtavAnDPlARRdLr
EQLRhocXT3344ZS75RV4GDtGs7V2ORUemf98h/WJAQDLMHPYZY0WH+JW8hpI37jJ
przgS0Mte1QrzPEb54o0tOrmomnNrTEg0J4umgGE1HOlzMX48Lij7OV/IYM16ACw
WOsLkeQnCDolkBW4gZoNN2NGZoVfPpEoMYr1ocA5AXijJ8YkHt9nzc46uBMjglov
ko7MWEU0TYvBqoMNWFdSmj0gpRHmgUaLuXs5+r4rg3tdLxF4I2NmNRJZJrnQHMMm
XK9zTMtYtNNs+IfS55Cp8qyb4S4MbA==
=AC7a
-----END PGP SIGNATURE-----

--EJgpfe+RWrId2mN0--

--===============4833816761382401851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4833816761382401851==--
