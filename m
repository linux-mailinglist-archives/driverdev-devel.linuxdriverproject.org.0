Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BEC29C73D
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 19:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4013C87368;
	Tue, 27 Oct 2020 18:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0cVhIsPOp+2; Tue, 27 Oct 2020 18:31:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B686287356;
	Tue, 27 Oct 2020 18:31:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EEB51BF82D
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 18:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7299820535
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 18:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oau5KS+CEDfO for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 18:31:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by silver.osuosl.org (Postfix) with ESMTPS id 08F1220130
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 18:31:13 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 06047580124;
 Tue, 27 Oct 2020 14:31:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Tue, 27 Oct 2020 14:31:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=cqEApD9bNAy57QPWXCIsEAVmHi2
 EXCNHlS0Cgqo2X94=; b=rGRlQhRMZctKbHoVVx7plOw8460fHGVy1rIkJERfJ68
 m0cXpO/1m8ioFGbSZ7Mmn00NDt1zy90g8BP1UAK5Ka5vr/YjsxFRSK+ZVW5V17/t
 DWf/Fp4dCIQS75RyU2y5acJKC5m5XJnh8b6mf+AqeKljwaKYjy1kDYpkdPSIgDAL
 LpGug3ba/FFM50oDljluDoOxpQtfXOZbWqd4zz/8rfWdVkFU9NsGJ1h2sxekf5Af
 WFGKueFomjp7kv/PtPee8B/YPGHsD1rcQ4YP3OvoFrTJGt7dqxaK3mng0ijZST+c
 GVOXnQkR39yy0nJZAVciAAEkXRMCSCaw1A2RqAKNDOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=cqEApD
 9bNAy57QPWXCIsEAVmHi2EXCNHlS0Cgqo2X94=; b=Mf1sZYH1Q4Y47ymBY8cIAm
 sklnWxwyr0GmYNvLkDvmBIcQjXalpF5Aae12XQ23sAhMZxOV1YjQfTSmomZMVBSq
 Jrz5yrnEvhzG4hleuOElgzcWL7orU+QpbWa6bNMnB2sgplx3BfWAdS3KUBFLqo7V
 dGb5sylsqJlMSAKZ6GcNEfHkSlKtbDozGEoGi7pkVaNkVDymIvrmuIU4c8qQ/iyT
 IcgbtapixtbbUSdN4AYFMWYVNcOjgHNVHtLoba2RTR08BiEzJNYPmC5NacgGxYra
 nLvZoI6U6vh88Tf8yeoTpxCFmVIOt+sxpbSWtoccHo41nXmEE4PGCribreRdhkOg
 ==
X-ME-Sender: <xms:bWeYXyEvWHkoH8N7oxrKcKrrUwz2zIslRKm9l42PBgutsRUoAiCZsg>
 <xme:bWeYXzXTRT3oQLN1LBb69LBOB-DHHIQib2IDyUq7LI0-7Fu6pC9VcY_n5ZL-Toh5S
 5ezrsUiOFuXo4sqiPs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeelgdduudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
 gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:bWeYX8LjuHT6zzcPG3QYfU6NXVKvSyy_o-KTQJLejLG7I39Th13Fsw>
 <xmx:bWeYX8GxFEfznQP79ChKgKymqtY9_GOrgcomWC1tAiCO0Oj9CDCgbg>
 <xmx:bWeYX4XZslNOPLdBYlD66gatRCrP1K4szL9126ZdXJpp6WM-DxSSeQ>
 <xmx:b2eYXzaabuwTpmdV64CRNDea6aQtU9pSxhpjfq6n6Lh0O-XYZpEEtQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E385B3064683;
 Tue, 27 Oct 2020 14:31:08 -0400 (EDT)
Date: Tue, 27 Oct 2020 19:31:07 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 05/14] media: sun6i-csi: Only configure the interface
 data width for parallel
Message-ID: <20201027183107.sofqfbmgg5aancmr@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-6-paul.kocialkowski@bootlin.com>
 <20201026160035.sr6kifrpkev773o6@gilmour.lan>
 <20201027093119.GD168350@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <20201027093119.GD168350@aptenodytes>
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
Content-Type: multipart/mixed; boundary="===============0822994607868469755=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0822994607868469755==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xds6nfzydlmcpk4h"
Content-Disposition: inline


--xds6nfzydlmcpk4h
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 27, 2020 at 10:31:19AM +0100, Paul Kocialkowski wrote:
> Hi,
>=20
> On Mon 26 Oct 20, 17:00, Maxime Ripard wrote:
> > On Fri, Oct 23, 2020 at 07:45:37PM +0200, Paul Kocialkowski wrote:
> > > Bits related to the interface data width do not have any effect when
> > > the CSI controller is taking input from the MIPI CSI-2 controller.
> >=20
> > I guess it would be clearer to mention that the data width is only
> > applicable for parallel here.
>=20
> Understood, will change the wording in the next version.
>=20
> > > In prevision of adding support for this case, set these bits
> > > conditionally so there is no ambiguity.
> > >=20
> > > Co-developed-by: K=E9vin L'h=F4pital <kevin.lhopital@bootlin.com>
> > > Signed-off-by: K=E9vin L'h=F4pital <kevin.lhopital@bootlin.com>
> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > ---
> > >  .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 42 +++++++++++------=
--
> > >  1 file changed, 25 insertions(+), 17 deletions(-)
> > >=20
> > > diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/dri=
vers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > > index 5d2389a5cd17..a876a05ea3c7 100644
> > > --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > > +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > > @@ -378,8 +378,13 @@ static void sun6i_csi_setup_bus(struct sun6i_csi=
_dev *sdev)
> > >  	unsigned char bus_width;
> > >  	u32 flags;
> > >  	u32 cfg;
> > > +	bool input_parallel =3D false;
> > >  	bool input_interlaced =3D false;
> > > =20
> > > +	if (endpoint->bus_type =3D=3D V4L2_MBUS_PARALLEL ||
> > > +	    endpoint->bus_type =3D=3D V4L2_MBUS_BT656)
> > > +		input_parallel =3D true;
> > > +
> > >  	if (csi->config.field =3D=3D V4L2_FIELD_INTERLACED
> > >  	    || csi->config.field =3D=3D V4L2_FIELD_INTERLACED_TB
> > >  	    || csi->config.field =3D=3D V4L2_FIELD_INTERLACED_BT)
> > > @@ -395,6 +400,26 @@ static void sun6i_csi_setup_bus(struct sun6i_csi=
_dev *sdev)
> > >  		 CSI_IF_CFG_HREF_POL_MASK | CSI_IF_CFG_FIELD_MASK |
> > >  		 CSI_IF_CFG_SRC_TYPE_MASK);
> > > =20
> > > +	if (input_parallel) {
> > > +		switch (bus_width) {
> > > +		case 8:
> > > +			cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_8BIT;
> > > +			break;
> > > +		case 10:
> > > +			cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_10BIT;
> > > +			break;
> > > +		case 12:
> > > +			cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_12BIT;
> > > +			break;
> > > +		case 16: /* No need to configure DATA_WIDTH for 16bit */
> > > +			break;
> > > +		default:
> > > +			dev_warn(sdev->dev, "Unsupported bus width: %u\n",
> > > +				 bus_width);
> > > +			break;
> > > +		}
> > > +	}
> > > +
> > >  	if (input_interlaced)
> > >  		cfg |=3D CSI_IF_CFG_SRC_TYPE_INTERLACED;
> > >  	else
> > > @@ -440,23 +465,6 @@ static void sun6i_csi_setup_bus(struct sun6i_csi=
_dev *sdev)
> > >  		break;
> > >  	}
> > > =20
> > > -	switch (bus_width) {
> > > -	case 8:
> > > -		cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_8BIT;
> > > -		break;
> > > -	case 10:
> > > -		cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_10BIT;
> > > -		break;
> > > -	case 12:
> > > -		cfg |=3D CSI_IF_CFG_IF_DATA_WIDTH_12BIT;
> > > -		break;
> > > -	case 16: /* No need to configure DATA_WIDTH for 16bit */
> > > -		break;
> > > -	default:
> > > -		dev_warn(sdev->dev, "Unsupported bus width: %u\n", bus_width);
> > > -		break;
> > > -	}
> > > -
> >=20
> > Is there any reason to move it around?
>=20
> The main reason is cosmetics: input_parallel is introduced to match the a=
lready
> existing input_interlaced variable, so it made sense to me to have both o=
f these
> conditionals one after the other instead of spreading them randomly.
>=20
> I can mention this in the commit log if you prefer.

Yeah, that would great

Maxime

--xds6nfzydlmcpk4h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5hnawAKCRDj7w1vZxhR
xeemAPwI5/422bQUijrQXWpjRvLHcHc8Q+YVMP+kEvDRE9063QEAzaVJVId2nV7e
pZYcb1nc2gvw1YyI1tTwdOxrxLcuhAM=
=lTGY
-----END PGP SIGNATURE-----

--xds6nfzydlmcpk4h--

--===============0822994607868469755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0822994607868469755==--
