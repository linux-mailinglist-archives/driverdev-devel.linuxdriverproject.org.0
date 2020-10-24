Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC22297B6E
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Oct 2020 10:31:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B264687652;
	Sat, 24 Oct 2020 08:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RWlOHyq9uq2k; Sat, 24 Oct 2020 08:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11CC187650;
	Sat, 24 Oct 2020 08:31:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E8DB1BF384
 for <devel@linuxdriverproject.org>; Sat, 24 Oct 2020 08:31:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 69CB987652
 for <devel@linuxdriverproject.org>; Sat, 24 Oct 2020 08:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7+hWL5fF9GRT for <devel@linuxdriverproject.org>;
 Sat, 24 Oct 2020 08:31:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30A4587650
 for <devel@driverdev.osuosl.org>; Sat, 24 Oct 2020 08:31:29 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3C7846000E;
 Sat, 24 Oct 2020 08:31:22 +0000 (UTC)
Date: Sat, 24 Oct 2020 10:31:21 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH 01/14] phy: Distinguish between Rx and Tx
 for MIPI D-PHY with submodes
Message-ID: <20201024083121.GB1739@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-2-paul.kocialkowski@bootlin.com>
 <7673189.jqQXtdQLJ6@kista>
MIME-Version: 1.0
In-Reply-To: <7673189.jqQXtdQLJ6@kista>
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
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2840619488260424042=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2840619488260424042==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SkvwRMAIpAhPCcCJ"
Content-Disposition: inline


--SkvwRMAIpAhPCcCJ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jernej,

On Fri 23 Oct 20, 20:18, Jernej =C5=A0krabec wrote:
> Dne petek, 23. oktober 2020 ob 19:45:33 CEST je Paul Kocialkowski napisal=
(a):
> > As some D-PHY controllers support both Rx and Tx mode, we need a way for
> > users to explicitly request one or the other. For instance, Rx mode can
> > be used along with MIPI CSI-2 while Tx mode can be used with MIPI DSI.
> >=20
> > Introduce new MIPI D-PHY PHY submodes to use with PHY_MODE_MIPI_DPHY.
> > The default (zero value) is kept to Tx so only the rkisp1 driver, which
> > uses D-PHY in Rx mode, needs to be adapted.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/staging/media/rkisp1/rkisp1-isp.c |  3 ++-
> >  include/linux/phy/phy-mipi-dphy.h         | 13 +++++++++++++
>=20
> I think some changes are missing in this patch. For example,=20
> phy_set_mode_ext() must be modified to take another argument, otherwise c=
hange=20
> of rkisp1-isp driver doesn't make much sense.

Thanks for looking into this! As you can see in:
https://elixir.bootlin.com/linux/latest/source/include/linux/phy/phy.h#L213

phy_set_mode_ext already takes a submode argument (which is already used for
USB mode selection, for instance) and phy_set_mode is just a macro which ca=
lls
phy_set_mode_ext with submode set to 0.

In our case, that means that most current users of phy_set_mode with
PHY_MODE_MIPI_DPHY will select Tx mode by default, so there is no particular
need for adaptation. Only the rkisp1 driver uses PHY_MODE_MIPI_DPHY for Rx,
so this one was changed to use phy_set_mode_ext with PHY_MIPI_DPHY_SUBMODE_=
RX
instead.

As a result, there should be no missing changes. Do you agree?

Cheers,

Paul

> Best regards,
> Jernej
>=20
> >  2 files changed, 15 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/stagin=
g/
> media/rkisp1/rkisp1-isp.c
> > index 6ec1e9816e9f..0afbce00121e 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> > @@ -902,7 +902,8 @@ static int rkisp1_mipi_csi2_start(struct rkisp1_isp=
=20
> *isp,
> > =20
> >  	phy_mipi_dphy_get_default_config(pixel_clock, isp->sink_fmt-
> >bus_width,
> >  					 sensor->lanes, cfg);
> > -	phy_set_mode(sensor->dphy, PHY_MODE_MIPI_DPHY);
> > +	phy_set_mode_ext(cdev->dphy, PHY_MODE_MIPI_DPHY,
> > +			 PHY_MIPI_DPHY_SUBMODE_RX);
> >  	phy_configure(sensor->dphy, &opts);
> >  	phy_power_on(sensor->dphy);
> > =20
> > diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-=
mipi-
> dphy.h
> > index a877ffee845d..0f57ef46a8b5 100644
> > --- a/include/linux/phy/phy-mipi-dphy.h
> > +++ b/include/linux/phy/phy-mipi-dphy.h
> > @@ -6,6 +6,19 @@
> >  #ifndef __PHY_MIPI_DPHY_H_
> >  #define __PHY_MIPI_DPHY_H_
> > =20
> > +/**
> > + * enum phy_mipi_dphy_submode - MIPI D-PHY sub-mode
> > + *
> > + * A MIPI D-PHY can be used to transmit or receive data.
> > + * Since some controllers can support both, the direction to enable is=
=20
> specified
> > + * with the PHY sub-mode. Transmit is assumed by default with phy_set_=
mode.
> > + */
> > +
> > +enum phy_mipi_dphy_submode {
> > +	PHY_MIPI_DPHY_SUBMODE_TX =3D 0,
> > +	PHY_MIPI_DPHY_SUBMODE_RX,
> > +};
> > +
> >  /**
> >   * struct phy_configure_opts_mipi_dphy - MIPI D-PHY configuration set
> >   *
> > --=20
> > 2.28.0
> >=20
> > --=20
> > You received this message because you are subscribed to the Google Grou=
ps=20
> "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an=20
> email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/m=
sgid/
> linux-sunxi/20201023174546.504028-2-paul.kocialkowski%40bootlin.com.
> >=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--SkvwRMAIpAhPCcCJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+T5lkACgkQ3cLmz3+f
v9Ev9Qf/SwpZnjc+n98ehFg0OUFmpeLOPDBC9zc+f+m5G+tx0pVb1W9yIqiLKv3z
zgq/ppkkOpTXztICfPBpp15wNNMQJ737VkB/Q9H71XlX2oaIH0f1P1LWm+TFIjQg
zhMRa4NVdYrhfgQeaLL2WvA4cFVpduz63Mqr3bJ8u1+9mnX9toq9xTGaLNJcKnb6
Pjb92gXs04D9uBSCnRSpTuKPdsDRrG+qV3IoI6NtD6cfCv9A10t5DlGaWOEqz+No
xFNzGzKb7g4V44dCjo4wHeyhjOHQ/6mAmBrgmGbBB477uUIrf+VzfH6yrDssk8Rt
1ksyv89f0fPrRa5JRekEVVAsY+sj9Q==
=zcV3
-----END PGP SIGNATURE-----

--SkvwRMAIpAhPCcCJ--

--===============2840619488260424042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2840619488260424042==--
