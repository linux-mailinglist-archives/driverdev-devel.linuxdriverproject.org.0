Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2834F2A8179
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 15:52:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 807F3234BB;
	Thu,  5 Nov 2020 14:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbeCJTaIS+Ki; Thu,  5 Nov 2020 14:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A33A7231CB;
	Thu,  5 Nov 2020 14:52:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 27ACA1BF2B8
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 14:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D5B520357
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 14:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q+r33ZrbrwjO for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 14:52:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B42520014
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 14:52:31 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id D36D71C000D;
 Thu,  5 Nov 2020 14:52:24 +0000 (UTC)
Date: Thu, 5 Nov 2020 15:52:24 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 08/14] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <20201105145224.GA615923@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
 <20201026165407.rrq6ccsexcsub5bm@gilmour.lan>
 <20201104113458.GC287014@aptenodytes>
 <20201104185650.ii7dlekjtfar2xpp@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20201104185650.ii7dlekjtfar2xpp@gilmour.lan>
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
Content-Type: multipart/mixed; boundary="===============2627248903643375204=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2627248903643375204==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 04 Nov 20, 19:56, Maxime Ripard wrote:
> On Wed, Nov 04, 2020 at 12:34:58PM +0100, Paul Kocialkowski wrote:
> > > > +	regmap_write(regmap, SUN6I_MIPI_CSI2_CFG_REG,
> > > > +		     SUN6I_MIPI_CSI2_CFG_CHANNEL_MODE(1) |
> > > > +		     SUN6I_MIPI_CSI2_CFG_LANE_COUNT(lanes_count));
> > >=20
> > > It's not really clear what the channel is here? The number of virtual
> > > channels? Something else?
> >=20
> > That's somewhat described in the controller documentation. Channels ref=
ers to
> > physical channels of the controller, which can be used to redirect data
> > matching either a specific data type, a specific virtual channel, or bo=
th.
> > There's a somewhat similar concept of channels in the CSI controller to=
o.
> >=20
> > We're currently only using one...
> >=20
> > > > +	regmap_write(regmap, SUN6I_MIPI_CSI2_VCDT_RX_REG,
> > > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(3, 3) |
> > > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(2, 2) |
> > > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(1, 1) |
> > > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(0, 0) |
> > > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_DT(0, data_type));
> >=20
> > ... but it's safer to configure them all to virtual channel numbers so =
we don't
> > end up with multiple channels matching virtual channel 0.
> >=20
> > I'll add a comment about that.
>=20
> Maybe we should have pads for all of them then, even if we don't support
> changing anything?

If that's something we can add later (I think it is), I would rather do thi=
s in
a sub-sequent series to keep the current one lightweight and merged ASAP.

It would also require some investigation to find out if the MIPI CSI-2 chan=
nel
number i goes directly to the CSI controller channel number i or if some
remapping can take place.

What do you think?

> > > > +static const struct v4l2_subdev_pad_ops sun6i_mipi_csi2_subdev_pad=
_ops =3D {
> > > > +	.enum_mbus_code		=3D sun6i_mipi_csi2_enum_mbus_code,
> > > > +	.get_fmt		=3D sun6i_mipi_csi2_get_fmt,
> > > > +	.set_fmt		=3D sun6i_mipi_csi2_set_fmt,
> > > > +	.enum_frame_size	=3D sun6i_mipi_csi2_enum_frame_size,
> > > > +	.enum_frame_interval	=3D sun6i_mipi_csi2_enum_frame_interval,
> > > > +};
> > > > +
> > > > +/* Subdev */
> > > > +
> > > > +static const struct v4l2_subdev_ops sun6i_mipi_csi2_subdev_ops =3D=
 {
> > > > +	.core		=3D &sun6i_mipi_csi2_subdev_core_ops,
> > > > +	.video		=3D &sun6i_mipi_csi2_subdev_video_ops,
> > > > +	.pad		=3D &sun6i_mipi_csi2_subdev_pad_ops,
> > > > +};
> > > > +
> > > > +/* Notifier */
> > > > +
> > > > +static int sun6i_mipi_csi2_notifier_bound(struct v4l2_async_notifi=
er *notifier,
> > > > +					  struct v4l2_subdev *remote_subdev,
> > > > +					  struct v4l2_async_subdev *remote_subdev_async)
> > > > +{
> > > > +	struct v4l2_subdev *subdev =3D notifier->sd;
> > > > +	struct sun6i_mipi_csi2_video *video =3D
> > > > +		sun6i_mipi_csi2_subdev_video(subdev);
> > > > +	struct sun6i_mipi_csi2_dev *cdev =3D sun6i_mipi_csi2_video_dev(vi=
deo);
> > > > +	int source_pad;
> > > > +	int ret;
> > > > +
> > > > +	source_pad =3D media_entity_get_fwnode_pad(&remote_subdev->entity,
> > > > +						 remote_subdev->fwnode,
> > > > +						 MEDIA_PAD_FL_SOURCE);
> > > > +	if (source_pad < 0)
> > > > +		return source_pad;
> > > > +
> > > > +	ret =3D media_create_pad_link(&remote_subdev->entity, source_pad,
> > > > +				    &subdev->entity, 0,
> > > > +				    MEDIA_LNK_FL_ENABLED |
> > > > +				    MEDIA_LNK_FL_IMMUTABLE);
> > > > +	if (ret) {
> > > > +		dev_err(cdev->dev, "failed to create %s:%u -> %s:%u link\n",
> > > > +			remote_subdev->entity.name, source_pad,
> > > > +			subdev->entity.name, 0);
> > > > +		return ret;
> > > > +	}
> > > > +
> > > > +	video->remote_subdev =3D remote_subdev;
> > > > +	video->remote_pad_index =3D source_pad;
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static const struct v4l2_async_notifier_operations sun6i_mipi_csi2=
_notifier_ops =3D {
> > > > +	.bound		=3D sun6i_mipi_csi2_notifier_bound,
> > > > +};
> > > > +
> > > > +/* Media Entity */
> > > > +
> > > > +static int sun6i_mipi_csi2_link_validate(struct media_link *link)
> > > > +{
> > > > +	struct v4l2_subdev *subdev =3D
> > > > +		container_of(link->sink->entity, struct v4l2_subdev, entity);
> > > > +	struct sun6i_mipi_csi2_video *video =3D
> > > > +		sun6i_mipi_csi2_subdev_video(subdev);
> > > > +	struct v4l2_subdev *remote_subdev;
> > > > +	struct v4l2_subdev_format format =3D { 0 };
> > > > +	int ret;
> > > > +
> > > > +	if (!is_media_entity_v4l2_subdev(link->source->entity))
> > > > +		return -EINVAL;
> > > > +
> > > > +	remote_subdev =3D media_entity_to_v4l2_subdev(link->source->entit=
y);
> > > > +
> > > > +	format.which =3D V4L2_SUBDEV_FORMAT_ACTIVE;
> > > > +	format.pad =3D link->source->index;
> > > > +
> > > > +	ret =3D v4l2_subdev_call(remote_subdev, pad, get_fmt, NULL, &form=
at);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	video->mbus_code =3D format.format.code;
> > > > +
> > > > +	return 0;
> > > > +}
> > >=20
> > > I'm not really sure what you're trying to validate here?
> >=20
> > The whole purpose is to retreive video->mbus_code from the subdev, like=
 it's
> > done in the sun6i-csi driver. Maybe there is a more appropriate op to d=
o it?
>=20
> I'm not sure why you need to do that in the link_validate though?
>=20
> You just need to init the pad format, and then you'll have a
> get_fmt/set_fmt for your pads.

Okay I may have misunderstood how manual/automatic propagation is supposed =
to
work then. The fact that this is done this way in the CSI driver maybe gave=
 me
a bad example to follow. I'll revisit this.

> > > > +	cdev->regmap =3D devm_regmap_init_mmio_clk(&pdev->dev, "bus", io_=
base,
> > > > +						 &sun6i_mipi_csi2_regmap_config);
> > > > +	if (IS_ERR(cdev->regmap)) {
> > > > +		dev_err(&pdev->dev, "failed to init register map\n");
> > > > +		return PTR_ERR(cdev->regmap);
> > > > +	}
> > >=20
> > > Yeah, so that won't work. regmap expects to have access to those
> > > registers when you enable that clock, but that won't happen since the
> > > reset line can be disabled. You would be better off using runtime_pm
> > > here.
> >=20
> > I don't understand what you mean here or what the problem could be.
> > Here we're just initializing regmap and while this is done before the
> > registers are available for I/O, I don't see why it would cause any
> > issue at this point.
>=20
> The regmap here is supposed to take care of the resources, except it
> only does it for some of the resources here, which kind of breaks the
> expectations. And it doesn't allow you to have the reset / clock
> sequence properly done.

I'm not following any of this. Could you break it down some more?
In particular I don't see the relationship between initializing the regmap
API (which does take IORESOURCE_MEM in) and reset / clocks.

Just initializing the regmap API for I/O mem doesn't mean that the registers
are ready for use, does it? We're not requesting any I/O operation from it
at this point.

> > The exact same thing is done in the CSI driver.
>=20
> That's not an argument though, is it? :)

That's not the point, the point is rather that if this is wrong, we should =
fix
it in the CSI driver as well.

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+kEagACgkQ3cLmz3+f
v9HuSAf9Gkn+ldPjpLI6G6VyL2L/bdS/Ue56m5gMEw2d9X14pvDHAIB9GySZd9PW
mLsWayeu3/V6sDacK3y1zwh9RLyRLg5TyaBV6w2UkgImNJcnpQRkhhUOEB9W+Ua7
aDDIUiRynclnqXET0VptEp1MX/qJHBoA63UMuJKQaKDc/1oR3ozyJTC2R8GM7Uyx
AWz4rgxLEkiw7VMe30gLiv2j4udFag6iZjk5zNJ7CyEXpBdzDTizXK2SCc1C54Yq
/090KaJgH5Mn0qUocqVTEhUXoLPaFXPLx7Ue2c1YrPGRny1+HIweiNMsu9OegVQ9
WX7GAGxkLn/VLwFvjVN5/B4laAYcsA==
=WdiC
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--

--===============2627248903643375204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2627248903643375204==--
