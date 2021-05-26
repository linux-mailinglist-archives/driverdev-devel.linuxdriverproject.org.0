Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EDF3916D0
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 May 2021 13:57:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2EFC040622;
	Wed, 26 May 2021 11:57:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H0jz_hi_Q11G; Wed, 26 May 2021 11:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83972405E3;
	Wed, 26 May 2021 11:57:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC9AD1BF3A4
 for <devel@linuxdriverproject.org>; Wed, 26 May 2021 11:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAD1E83CC9
 for <devel@linuxdriverproject.org>; Wed, 26 May 2021 11:57:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G_0rIHfaMX3l for <devel@linuxdriverproject.org>;
 Wed, 26 May 2021 11:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48B3A83CC1
 for <devel@driverdev.osuosl.org>; Wed, 26 May 2021 11:57:00 +0000 (UTC)
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id A297F1BF213;
 Wed, 26 May 2021 11:56:52 +0000 (UTC)
Date: Wed, 26 May 2021 13:56:52 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v5 02/16] phy: Distinguish between Rx and Tx for MIPI
 D-PHY with submodes
Message-ID: <YK43hBmFkyCChvKw@aptenodytes>
References: <20210115200141.1397785-1-paul.kocialkowski@bootlin.com>
 <20210115200141.1397785-3-paul.kocialkowski@bootlin.com>
 <58d6651d-09c3-2b93-bd5b-1807744b2354@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <58d6651d-09c3-2b93-bd5b-1807744b2354@xs4all.nl>
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
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============3661074128070346536=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3661074128070346536==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UpT672IaWUX8kc9y"
Content-Disposition: inline


--UpT672IaWUX8kc9y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 26 May 21, 13:50, Hans Verkuil wrote:
> On 15/01/2021 21:01, Paul Kocialkowski wrote:
> > As some D-PHY controllers support both Rx and Tx mode, we need a way for
> > users to explicitly request one or the other. For instance, Rx mode can
> > be used along with MIPI CSI-2 while Tx mode can be used with MIPI DSI.
> >=20
> > Introduce new MIPI D-PHY PHY submodes to use with PHY_MODE_MIPI_DPHY.
> > The default (zero value) is kept to Tx so only the rkisp1 driver, which
> > uses D-PHY in Rx mode, needs to be adapted.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > Acked-by: Helen Koike <helen.koike@collabora.com>
> > ---
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c |  3 ++-
> >  include/linux/phy/phy-mipi-dphy.h                   | 13 +++++++++++++
> >  2 files changed, 15 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/driv=
ers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> > index 2e5b57e3aedc..cab261644102 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> > @@ -948,7 +948,8 @@ static int rkisp1_mipi_csi2_start(struct rkisp1_isp=
 *isp,
> > =20
> >  	phy_mipi_dphy_get_default_config(pixel_clock, isp->sink_fmt->bus_widt=
h,
> >  					 sensor->lanes, cfg);
> > -	phy_set_mode(sensor->dphy, PHY_MODE_MIPI_DPHY);
> > +	phy_set_mode_ext(cdev->dphy, PHY_MODE_MIPI_DPHY,
> > +			 PHY_MIPI_DPHY_SUBMODE_RX);
>=20
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c: In function =E2=80=
=98rkisp1_mipi_csi2_start=E2=80=99:
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c:951:19: error: =E2=80=
=98cdev=E2=80=99 undeclared (first use in this function)
>   951 |  phy_set_mode_ext(cdev->dphy, PHY_MODE_MIPI_DPHY,
>       |                   ^~~~
>=20
> Huh?

Oh wow that's quite shameful. Apologies here.

Note that I'll rebase/respin this series. I also remember that it wasn't ve=
ry
consensual (on IRC) to use a submode to indicate rx vs tx mode and that
specifying that in the deivce-tree would be a better fit.

Cheers,

Paul

> Regards,
>=20
> 	Hans
>=20
> >  	phy_configure(sensor->dphy, &opts);
> >  	phy_power_on(sensor->dphy);
> > =20
> > diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-=
mipi-dphy.h
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
 specified
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
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--UpT672IaWUX8kc9y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmCuN4QACgkQ3cLmz3+f
v9G56Qf/VeVonmPZ3GPceNXtCiCz4D3aCK6rystut/m1RJlgBSNwDeUtp1Pb0PK5
tNuJ63rQ+pUuI0iFSlITn6EEQoUe6ohyMwWHSwajXbNd0hPRo0Td6pxNUpjM0/+Y
S3g9L9rsAQ191UhXje7YOZnS7baMLQ4Kk6fv86zvzoSZkTFdOcbhgc4O4OhDoOee
K7vqfkdk1fZdnb2RKoiET9Z2AoIomE6PmrC13LZFImyVQY10zMjmNO55pu9mscU1
YxtJpIol8m7xmRR77/8W0TMQRx7IhEsNnTEdsI+fCGov8sINrkteVLFLSwl/Y8Kc
Ql608acppD8E4uziTLEqWfpEyzt5fg==
=juJ8
-----END PGP SIGNATURE-----

--UpT672IaWUX8kc9y--

--===============3661074128070346536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3661074128070346536==--
