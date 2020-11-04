Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E63D2A6D44
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 19:57:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 468AC85F45;
	Wed,  4 Nov 2020 18:57:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yR4YB8UDztLE; Wed,  4 Nov 2020 18:57:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 534EE85E91;
	Wed,  4 Nov 2020 18:56:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C62E1BF5AD
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 18:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02D4087037
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 18:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c5kxOzzEZlKR for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 18:56:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7574E87034
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 18:56:56 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3E3C2580791;
 Wed,  4 Nov 2020 13:56:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 04 Nov 2020 13:56:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=OVc/96aODvJeJoiBmnUW9Y0oJ7/
 fFA1GzRqunAxPing=; b=tr1DljGPY9MWd7f90ap+INggtuV4FGeMUU+fcZ0zoIN
 vF8JS4egEUyq61VRW2eRlAhIaa3F2Y8OITQlcc3ddrK2Q5ANgoKh+GuQiUxLSlJj
 OJj/8aL8x1z1qUpppGGLMzL6Dqa5QllobEh+OtCW4cu0kwQW4L5WTEEtOj3pjkmF
 bWAdBYQiBx3coHKEmdhQvQlfLE4WGkI0/6+Sivx73NRY4sG0BhN5gFnHqp+ylBWX
 2QWMbY2TkA/dEVo3Nhia8dGAxo1hxCmGzVOnpvD9W+yB4XFu3TKHA2L68TJM6Q8v
 jrAxjivO+hQ0ne/T3cHCYYs+Wd80b/8guk6u52gNexQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=OVc/96
 aODvJeJoiBmnUW9Y0oJ7/fFA1GzRqunAxPing=; b=anMjAzC9sweKpPacv/4IgD
 WKVDXQJpL4KrjsMH3GnGsJsQr897zB5gs6ioYdraAtq77CqRPHj25uha13q1kp85
 OB64S87MejQlWhbiL+DoZcSfMmG9aMpk39fewdmcRzlOuI3seGEa6UrlIuu4/4ts
 WKYOiiXGSgk0eshuamrIKtNOE9YcoR5IQqEWY1fc3pkAiOusIRau0/AdQpqmwOWU
 vbChV6ooLdEmTkh2NzeQGhpZ6X6968VsFgeS6q33bMr1H+S7yP4KGTKOgM1038d0
 SOIuVeeGGgbIGOf4yKDGGLg/31NXudsXiTMzf7xBkvBEOjjfv9kK1CNuQ1/NzIZA
 ==
X-ME-Sender: <xms:c_miX3rtHcLumC4p-mi0fiMAgww2OegeZq4rdUEYv5PBmj5igP3ckA>
 <xme:c_miXxrVh4qiQ8EkwuoWJabkpNDGMxDneEE-Aj0zPFSCf312ngsgne6GWc68VEp_K
 8mrCVQ6abtrHJehNpg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddthedguddvtdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
 heegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:c_miX0Nwo_wpV9cEK464ZgMgFr1GB44ezhZVpbYEZadFEhYfBJzaNQ>
 <xmx:c_miX65qGkVL_cMX37jJ2twHMrEnhTTgvSTwKzRmww6irSAsU2XT7g>
 <xmx:c_miX26Ew6AVZJxi2ZRZDctIRVEQRd6lanB4f72B8tO0gmV3mm2YIw>
 <xmx:d_miXzwLttgMJJHUTB-GWAFeI3FwUd5oJ4EdKCw7gh9JTbMEnktz8A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 24349328038E;
 Wed,  4 Nov 2020 13:56:51 -0500 (EST)
Date: Wed, 4 Nov 2020 19:56:50 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 08/14] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <20201104185650.ii7dlekjtfar2xpp@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
 <20201026165407.rrq6ccsexcsub5bm@gilmour.lan>
 <20201104113458.GC287014@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <20201104113458.GC287014@aptenodytes>
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
Content-Type: multipart/mixed; boundary="===============3443363046063122396=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3443363046063122396==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ivpywtswxref2r4j"
Content-Disposition: inline


--ivpywtswxref2r4j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 04, 2020 at 12:34:58PM +0100, Paul Kocialkowski wrote:
> > > +	regmap_write(regmap, SUN6I_MIPI_CSI2_CFG_REG,
> > > +		     SUN6I_MIPI_CSI2_CFG_CHANNEL_MODE(1) |
> > > +		     SUN6I_MIPI_CSI2_CFG_LANE_COUNT(lanes_count));
> >=20
> > It's not really clear what the channel is here? The number of virtual
> > channels? Something else?
>=20
> That's somewhat described in the controller documentation. Channels refer=
s to
> physical channels of the controller, which can be used to redirect data
> matching either a specific data type, a specific virtual channel, or both.
> There's a somewhat similar concept of channels in the CSI controller too.
>=20
> We're currently only using one...
>=20
> > > +	regmap_write(regmap, SUN6I_MIPI_CSI2_VCDT_RX_REG,
> > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(3, 3) |
> > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(2, 2) |
> > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(1, 1) |
> > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(0, 0) |
> > > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_DT(0, data_type));
>=20
> ... but it's safer to configure them all to virtual channel numbers so we=
 don't
> end up with multiple channels matching virtual channel 0.
>=20
> I'll add a comment about that.

Maybe we should have pads for all of them then, even if we don't support
changing anything?

> > > +static const struct v4l2_subdev_pad_ops sun6i_mipi_csi2_subdev_pad_o=
ps =3D {
> > > +	.enum_mbus_code		=3D sun6i_mipi_csi2_enum_mbus_code,
> > > +	.get_fmt		=3D sun6i_mipi_csi2_get_fmt,
> > > +	.set_fmt		=3D sun6i_mipi_csi2_set_fmt,
> > > +	.enum_frame_size	=3D sun6i_mipi_csi2_enum_frame_size,
> > > +	.enum_frame_interval	=3D sun6i_mipi_csi2_enum_frame_interval,
> > > +};
> > > +
> > > +/* Subdev */
> > > +
> > > +static const struct v4l2_subdev_ops sun6i_mipi_csi2_subdev_ops =3D {
> > > +	.core		=3D &sun6i_mipi_csi2_subdev_core_ops,
> > > +	.video		=3D &sun6i_mipi_csi2_subdev_video_ops,
> > > +	.pad		=3D &sun6i_mipi_csi2_subdev_pad_ops,
> > > +};
> > > +
> > > +/* Notifier */
> > > +
> > > +static int sun6i_mipi_csi2_notifier_bound(struct v4l2_async_notifier=
 *notifier,
> > > +					  struct v4l2_subdev *remote_subdev,
> > > +					  struct v4l2_async_subdev *remote_subdev_async)
> > > +{
> > > +	struct v4l2_subdev *subdev =3D notifier->sd;
> > > +	struct sun6i_mipi_csi2_video *video =3D
> > > +		sun6i_mipi_csi2_subdev_video(subdev);
> > > +	struct sun6i_mipi_csi2_dev *cdev =3D sun6i_mipi_csi2_video_dev(vide=
o);
> > > +	int source_pad;
> > > +	int ret;
> > > +
> > > +	source_pad =3D media_entity_get_fwnode_pad(&remote_subdev->entity,
> > > +						 remote_subdev->fwnode,
> > > +						 MEDIA_PAD_FL_SOURCE);
> > > +	if (source_pad < 0)
> > > +		return source_pad;
> > > +
> > > +	ret =3D media_create_pad_link(&remote_subdev->entity, source_pad,
> > > +				    &subdev->entity, 0,
> > > +				    MEDIA_LNK_FL_ENABLED |
> > > +				    MEDIA_LNK_FL_IMMUTABLE);
> > > +	if (ret) {
> > > +		dev_err(cdev->dev, "failed to create %s:%u -> %s:%u link\n",
> > > +			remote_subdev->entity.name, source_pad,
> > > +			subdev->entity.name, 0);
> > > +		return ret;
> > > +	}
> > > +
> > > +	video->remote_subdev =3D remote_subdev;
> > > +	video->remote_pad_index =3D source_pad;
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static const struct v4l2_async_notifier_operations sun6i_mipi_csi2_n=
otifier_ops =3D {
> > > +	.bound		=3D sun6i_mipi_csi2_notifier_bound,
> > > +};
> > > +
> > > +/* Media Entity */
> > > +
> > > +static int sun6i_mipi_csi2_link_validate(struct media_link *link)
> > > +{
> > > +	struct v4l2_subdev *subdev =3D
> > > +		container_of(link->sink->entity, struct v4l2_subdev, entity);
> > > +	struct sun6i_mipi_csi2_video *video =3D
> > > +		sun6i_mipi_csi2_subdev_video(subdev);
> > > +	struct v4l2_subdev *remote_subdev;
> > > +	struct v4l2_subdev_format format =3D { 0 };
> > > +	int ret;
> > > +
> > > +	if (!is_media_entity_v4l2_subdev(link->source->entity))
> > > +		return -EINVAL;
> > > +
> > > +	remote_subdev =3D media_entity_to_v4l2_subdev(link->source->entity);
> > > +
> > > +	format.which =3D V4L2_SUBDEV_FORMAT_ACTIVE;
> > > +	format.pad =3D link->source->index;
> > > +
> > > +	ret =3D v4l2_subdev_call(remote_subdev, pad, get_fmt, NULL, &format=
);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	video->mbus_code =3D format.format.code;
> > > +
> > > +	return 0;
> > > +}
> >=20
> > I'm not really sure what you're trying to validate here?
>=20
> The whole purpose is to retreive video->mbus_code from the subdev, like i=
t's
> done in the sun6i-csi driver. Maybe there is a more appropriate op to do =
it?

I'm not sure why you need to do that in the link_validate though?

You just need to init the pad format, and then you'll have a
get_fmt/set_fmt for your pads.

> > > +	cdev->regmap =3D devm_regmap_init_mmio_clk(&pdev->dev, "bus", io_ba=
se,
> > > +						 &sun6i_mipi_csi2_regmap_config);
> > > +	if (IS_ERR(cdev->regmap)) {
> > > +		dev_err(&pdev->dev, "failed to init register map\n");
> > > +		return PTR_ERR(cdev->regmap);
> > > +	}
> >=20
> > Yeah, so that won't work. regmap expects to have access to those
> > registers when you enable that clock, but that won't happen since the
> > reset line can be disabled. You would be better off using runtime_pm
> > here.
>=20
> I don't understand what you mean here or what the problem could be.
> Here we're just initializing regmap and while this is done before the
> registers are available for I/O, I don't see why it would cause any
> issue at this point.

The regmap here is supposed to take care of the resources, except it
only does it for some of the resources here, which kind of breaks the
expectations. And it doesn't allow you to have the reset / clock
sequence properly done.

> The exact same thing is done in the CSI driver.

That's not an argument though, is it? :)

Maxime

--ivpywtswxref2r4j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX6L5cQAKCRDj7w1vZxhR
xapUAPkBCQbEYpxpQRc2dQrlYckdrRucLdZjrw4DyHXeRpWXKwD8D9vPu/MJrl2p
3cE184xWD5PpdHRseodrz4F6IAC7tA4=
=egrI
-----END PGP SIGNATURE-----

--ivpywtswxref2r4j--

--===============3443363046063122396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3443363046063122396==--
