Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4E72A629D
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 11:53:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 07474228AC;
	Wed,  4 Nov 2020 10:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WMR1g55OUZXj; Wed,  4 Nov 2020 10:53:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37E5D2277A;
	Wed,  4 Nov 2020 10:53:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4EB61BF844
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BE517204BE
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:53:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iLonXpQkP2kc for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 10:53:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by silver.osuosl.org (Postfix) with ESMTPS id B84E720C41
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 10:53:43 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 617B3E0008;
 Wed,  4 Nov 2020 10:53:35 +0000 (UTC)
Date: Wed, 4 Nov 2020 11:53:34 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 02/14] phy: allwinner: phy-sun6i-mipi-dphy: Support D-PHY
 Rx mode for MIPI CSI-2
Message-ID: <20201104105334.GE285779@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-3-paul.kocialkowski@bootlin.com>
 <20201026153857.iwkn4iusi2jy2yf4@gilmour.lan>
 <20201027092326.GB168350@aptenodytes>
 <20201027182811.j6372vdmls5yvhri@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20201027182811.j6372vdmls5yvhri@gilmour.lan>
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
Content-Type: multipart/mixed; boundary="===============6140169749995074721=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6140169749995074721==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Yb+qhiCg54lqZFXW"
Content-Disposition: inline


--Yb+qhiCg54lqZFXW
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 27 Oct 20, 19:28, Maxime Ripard wrote:
>=20
> Hi,
>=20
> On Tue, Oct 27, 2020 at 10:23:26AM +0100, Paul Kocialkowski wrote:
> > On Mon 26 Oct 20, 16:38, Maxime Ripard wrote:
> > > On Fri, Oct 23, 2020 at 07:45:34PM +0200, Paul Kocialkowski wrote:
> > > > The Allwinner A31 D-PHY supports both Rx and Tx modes. While the la=
tter
> > > > is already supported and used for MIPI DSI this adds support for the
> > > > former, to be used with MIPI CSI-2.
> > > >=20
> > > > This implementation is inspired by the Allwinner BSP implementation.
> > >=20
> > > Mentionning which BSP you took this from would be helpful
> >=20
> > Sure! It's from the Github repo linked from https://linux-sunxi.org/V3s.
> > Would you like that I mention this URL explicitly or would it be enough=
 to
> > mention "Allwinner's V3s Linux SDK" as they seem to call it?
>=20
> Yeah, that would be great
> > > > +static int sun6i_dphy_rx_power_on(struct sun6i_dphy *dphy)
> > > > +{
> > > > +	/* Physical clock rate is actually half of symbol rate with DDR. =
*/
> > > > +	unsigned long mipi_symbol_rate =3D dphy->config.hs_clk_rate;
> > > > +	unsigned long dphy_clk_rate;
> > > > +	unsigned int rx_dly;
> > > > +	unsigned int lprst_dly;
> > > > +	u32 value;
> > > > +
> > > > +	dphy_clk_rate =3D clk_get_rate(dphy->mod_clk);
> > > > +	if (!dphy_clk_rate)
> > > > +		return -1;
> > >=20
> > > Returning -1 is weird here?
> >=20
> > What do you think would be a more appropriate error code to return?
> > It looks like some other drivers return -EINVAL when that happens (but =
many
> > don't do the check).
>=20
> Yeah, EINVAL at least is better than ENOPERM=20
>=20
> > > > +
> > > > +	/* Hardcoded timing parameters from the Allwinner BSP. */
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME0_REG,
> > > > +		     SUN6I_DPHY_RX_TIME0_HS_RX_SYNC(255) |
> > > > +		     SUN6I_DPHY_RX_TIME0_HS_RX_CLK_MISS(255) |
> > > > +		     SUN6I_DPHY_RX_TIME0_LP_RX(255));
> > > > +
> > > > +	/*
> > > > +	 * Formula from the Allwinner BSP, with hardcoded coefficients
> > > > +	 * (probably internal divider/multiplier).
> > > > +	 */
> > > > +	rx_dly =3D 8 * (unsigned int)(dphy_clk_rate / (mipi_symbol_rate /=
 8));
> > > > +
> > > > +	/*
> > > > +	 * The Allwinner BSP has an alternative formula for LP_RX_ULPS_WP:
> > > > +	 * lp_ulps_wp_cnt =3D lp_ulps_wp_ms * lp_clk / 1000
> > > > +	 * but does not use it and hardcodes 255 instead.
> > > > +	 */
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME1_REG,
> > > > +		     SUN6I_DPHY_RX_TIME1_RX_DLY(rx_dly) |
> > > > +		     SUN6I_DPHY_RX_TIME1_LP_RX_ULPS_WP(255));
> > > > +
> > > > +	/* HS_RX_ANA0 value is hardcoded in the Allwinner BSP. */
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME2_REG,
> > > > +		     SUN6I_DPHY_RX_TIME2_HS_RX_ANA0(4));
> > > > +
> > > > +	/*
> > > > +	 * Formula from the Allwinner BSP, with hardcoded coefficients
> > > > +	 * (probably internal divider/multiplier).
> > > > +	 */
> > > > +	lprst_dly =3D 4 * (unsigned int)(dphy_clk_rate / (mipi_symbol_rat=
e / 2));
> > > > +
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME3_REG,
> > > > +		     SUN6I_DPHY_RX_TIME3_LPRST_DLY(lprst_dly));
> > > > +
> > > > +	/* Analog parameters are hardcoded in the Allwinner BSP. */
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG,
> > > > +		     SUN6I_DPHY_ANA0_REG_PWS |
> > > > +		     SUN6I_DPHY_ANA0_REG_SLV(7) |
> > > > +		     SUN6I_DPHY_ANA0_REG_SFB(2));
> > > > +
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_ANA1_REG,
> > > > +		     SUN6I_DPHY_ANA1_REG_SVTT(4));
> > > > +
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_ANA4_REG,
> > > > +		     SUN6I_DPHY_ANA4_REG_DMPLVC |
> > > > +		     SUN6I_DPHY_ANA4_REG_DMPLVD(1));
> > > > +
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_ANA2_REG,
> > > > +		     SUN6I_DPHY_ANA2_REG_ENIB);
> > > > +
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_ANA3_REG,
> > > > +		     SUN6I_DPHY_ANA3_EN_LDOR |
> > > > +		     SUN6I_DPHY_ANA3_EN_LDOC |
> > > > +		     SUN6I_DPHY_ANA3_EN_LDOD);
> > > > +
> > > > +	/*
> > > > +	 * Delay comes from the Allwinner BSP, likely for internal regula=
tor
> > > > +	 * ramp-up.
> > > > +	 */
> > > > +	udelay(3);
> > > > +
> > > > +	value =3D SUN6I_DPHY_RX_CTL_EN_DBC | SUN6I_DPHY_RX_CTL_RX_CLK_FOR=
CE;
> > > > +
> > > > +	/*
> > > > +	 * Rx data lane force-enable bits are used as regular RX enable b=
y the
> > > > +	 * Allwinner BSP.
> > > > +	 */
> > > > +	if (dphy->config.lanes >=3D 1)
> > > > +		value |=3D SUN6I_DPHY_RX_CTL_RX_D0_FORCE;
> > > > +	if (dphy->config.lanes >=3D 2)
> > > > +		value |=3D SUN6I_DPHY_RX_CTL_RX_D1_FORCE;
> > > > +	if (dphy->config.lanes >=3D 3)
> > > > +		value |=3D SUN6I_DPHY_RX_CTL_RX_D2_FORCE;
> > > > +	if (dphy->config.lanes =3D=3D 4)
> > > > +		value |=3D SUN6I_DPHY_RX_CTL_RX_D3_FORCE;
> > > > +
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_RX_CTL_REG, value);
> > > > +
> > > > +	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
> > > > +		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
> > > > +		     SUN6I_DPHY_GCTL_EN);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int sun6i_dphy_power_on(struct phy *phy)
> > > > +{
> > > > +	struct sun6i_dphy *dphy =3D phy_get_drvdata(phy);
> > > > +
> > > > +	switch (dphy->submode) {
> > > > +	case PHY_MIPI_DPHY_SUBMODE_TX:
> > > > +		return sun6i_dphy_tx_power_on(dphy);
> > > > +	case PHY_MIPI_DPHY_SUBMODE_RX:
> > > > +		return sun6i_dphy_rx_power_on(dphy);
> > > > +	default:
> > > > +		return -EINVAL;
> > > > +	}
> > > > +}
> > > > +
> > >=20
> > > Can one call power_on before set_mode?
> >=20
> > I didn't find anything indicating this is illegal. What would happen he=
re is
> > that the D-PHY would be configured to PHY_MIPI_DPHY_SUBMODE_TX (submode=
 =3D=3D 0)
> > at power-on if set_mode is not called before.
> >=20
> > I think it's fair to expect that it's too late to change the mode once =
the PHY
> > was powered on. Maybe we should return -EBUSY on set_mode when power on=
 was
> > already requested?
>=20
> Or maybe we can just clarify it in the framework/function documentation

Agreed, I'll add a patch in that direction. I would also be tempted to chec=
k on
phy->power_count to return -EBUSY in phy_set_mode_ext so that the behavior =
is
enforced.

What do you think?

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--Yb+qhiCg54lqZFXW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+iiC4ACgkQ3cLmz3+f
v9FVagf+MFoprb1lhbIcBfZckLyH0cqaPWe5B7qYhnUef4iiObGMo1T0PoXbhnUl
W4wwFrgdzcpN0SnOHyYXEQIHOdPnwNXNAR/lJtceUcq0MgI4yeh02lURUBBbKjua
1M8yR/5OYnF1c3f6En4mAGhOdw5dsQDdcVyTA3MlNNLRBVr3W+J6pOkQ3/hzqqX7
rrO+XgcfmzhhhVu3FVdEMFmCz+35yvGMz3YVNCOIweINBOBJIOsyZd54/QGpq8WJ
RlSSFuU4rBORC9mEp2sdVZuwOZQF8fnvoSa3O20anz42qmwvyqf7sZkuiL2ro1Ey
/I7tza6wop/1GiAThIiwYcOBuFKVXw==
=sQ1N
-----END PGP SIGNATURE-----

--Yb+qhiCg54lqZFXW--

--===============6140169749995074721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6140169749995074721==--
