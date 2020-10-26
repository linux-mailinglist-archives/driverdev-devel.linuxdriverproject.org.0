Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CC4299139
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 16:39:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F19718560B;
	Mon, 26 Oct 2020 15:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2zKKXtxcn-2B; Mon, 26 Oct 2020 15:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23BE985604;
	Mon, 26 Oct 2020 15:39:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 481341BF869
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 15:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30BF020449
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 15:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6DTiVOwKuW4u for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 15:39:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by silver.osuosl.org (Postfix) with ESMTPS id 12CCC20344
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 15:39:07 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id C001E58050A;
 Mon, 26 Oct 2020 11:39:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 26 Oct 2020 11:39:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=T3QTLn2mB7EXSOCvp51wp2tsbsv
 7df3RtrrozDyp/kE=; b=u9MTbBUHC0wqSxiad7fcHOM2OENhPLZiLSpURW9d7pR
 38h8zkZBjcI/Zhwj13D77Chkfavtqyq5rL+Lyn6nam9+lUoqi8BM63nIUnBbi4Mq
 eIzFgk+Qcn7BRdOqhwRjh2XOme3GWmuba4GaLChfw9MfStO0VITv13NXm+qXndHl
 MSDEyXW0OlVHke5W1O2VG1K3W/YbTtYUdKg1ylsQ00xDk4A9kDA9apEKlHDHIKWG
 IoU7K4mv/wrk/jUkymjm7MjhUJQmgXzuHXWcuRLQMpPejw4unea6GRnU+/QY4Pyk
 B2Pwgk3iRWPFr9TCxh4tw9tue6IiSB4uGQoE2fT5T0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=T3QTLn
 2mB7EXSOCvp51wp2tsbsv7df3RtrrozDyp/kE=; b=NO1rDqBn04f+S6O1itifDt
 lrmSChP0lFhQMDUz1sZdadgEqcLTImqGIU5c+WYPJ5LwPBdQy12duX9Ji2FMnLD+
 TajntyIAv0PZ9tU0jdrvH92sbY54HCmSqHuM8OZ36/mg28vorZJAv/Dt2pwUgmqC
 YQwZoviHMChki2R/WF+iYwKMBroZKd4Fsz05Q0CxclpTQsfI4WcWJGFCuOD1CFGp
 CwZbQ2XrKNdUwe1f+fSCT1w3rtb0aLZzPPFu98tWYjJ2gMhk2MNRYPGfpy/H1h3j
 v7RU05YEuTVCYDBu8OlOvK+9MH41pspAAvIxqoF2EEMrH5/A6U2pnmgH3uVzIa2g
 ==
X-ME-Sender: <xms:k-2WX0zkvn2RR0kZY-CXB1r2asZf3lfPwOT7rE6wB4DBaF7MxD2RjQ>
 <xme:k-2WX4SYabG2keu10b7T8jtR1s7OhTOf7yPYVSqveq4UsTQfsVtx_ond57nz9Sx8f
 P8Z3LV-ShSBrl7eooU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeejgdegvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:k-2WX2XgDHIMQ6NQVz3EUt1y9q7P9Vcw6YkXe_DKByo4jOcNepkAcw>
 <xmx:k-2WXyi1FdlzUm-QiWl11rZwsdFHSyUkOJv6UQtPkSGuUfsahlpGnQ>
 <xmx:k-2WX2DWI9wPIen8SDxE12HWrI8_2H-j9YTIfF-DG5x38cifFnikcQ>
 <xmx:mu2WX-7Z242Flp5nEIGeOgkMsnKxpJ3rNS61tPZIPsw5BoLAMyfcZQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 154463280059;
 Mon, 26 Oct 2020 11:38:58 -0400 (EDT)
Date: Mon, 26 Oct 2020 16:38:57 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 02/14] phy: allwinner: phy-sun6i-mipi-dphy: Support D-PHY
 Rx mode for MIPI CSI-2
Message-ID: <20201026153857.iwkn4iusi2jy2yf4@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-3-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-3-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============6912676267488831411=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6912676267488831411==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5cvkpdcapo7wtm7b"
Content-Disposition: inline


--5cvkpdcapo7wtm7b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 23, 2020 at 07:45:34PM +0200, Paul Kocialkowski wrote:
> The Allwinner A31 D-PHY supports both Rx and Tx modes. While the latter
> is already supported and used for MIPI DSI this adds support for the
> former, to be used with MIPI CSI-2.
>=20
> This implementation is inspired by the Allwinner BSP implementation.

Mentionning which BSP you took this from would be helpful

> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/phy/allwinner/phy-sun6i-mipi-dphy.c | 164 +++++++++++++++++++-
>  1 file changed, 160 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c b/drivers/phy/al=
lwinner/phy-sun6i-mipi-dphy.c
> index 1fa761ba6cbb..8bcd4bb79f60 100644
> --- a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> +++ b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> @@ -24,6 +24,14 @@
>  #define SUN6I_DPHY_TX_CTL_REG		0x04
>  #define SUN6I_DPHY_TX_CTL_HS_TX_CLK_CONT	BIT(28)
> =20
> +#define SUN6I_DPHY_RX_CTL_REG		0x08
> +#define SUN6I_DPHY_RX_CTL_EN_DBC	BIT(31)
> +#define SUN6I_DPHY_RX_CTL_RX_CLK_FORCE	BIT(24)
> +#define SUN6I_DPHY_RX_CTL_RX_D3_FORCE	BIT(23)
> +#define SUN6I_DPHY_RX_CTL_RX_D2_FORCE	BIT(22)
> +#define SUN6I_DPHY_RX_CTL_RX_D1_FORCE	BIT(21)
> +#define SUN6I_DPHY_RX_CTL_RX_D0_FORCE	BIT(20)
> +

It's hard to tell from the diff, but it looks like you aligned the
BIT(..) with the register?

If so, you should follow the what the rest of this driver (ie, one more
indentation for register values).

>  #define SUN6I_DPHY_TX_TIME0_REG		0x10
>  #define SUN6I_DPHY_TX_TIME0_HS_TRAIL(n)		(((n) & 0xff) << 24)
>  #define SUN6I_DPHY_TX_TIME0_HS_PREPARE(n)	(((n) & 0xff) << 16)
> @@ -44,12 +52,29 @@
>  #define SUN6I_DPHY_TX_TIME4_HS_TX_ANA1(n)	(((n) & 0xff) << 8)
>  #define SUN6I_DPHY_TX_TIME4_HS_TX_ANA0(n)	((n) & 0xff)
> =20
> +#define SUN6I_DPHY_RX_TIME0_REG		0x30
> +#define SUN6I_DPHY_RX_TIME0_HS_RX_SYNC(n)	(((n) & 0xff) << 24)
> +#define SUN6I_DPHY_RX_TIME0_HS_RX_CLK_MISS(n)	(((n) & 0xff) << 16)
> +#define SUN6I_DPHY_RX_TIME0_LP_RX(n)		(((n) & 0xff) << 8)
> +
> +#define SUN6I_DPHY_RX_TIME1_REG		0x34
> +#define SUN6I_DPHY_RX_TIME1_RX_DLY(n)		(((n) & 0xfff) << 20)
> +#define SUN6I_DPHY_RX_TIME1_LP_RX_ULPS_WP(n)	((n) & 0xfffff)
> +
> +#define SUN6I_DPHY_RX_TIME2_REG		0x38
> +#define SUN6I_DPHY_RX_TIME2_HS_RX_ANA1(n)	(((n) & 0xff) << 8)
> +#define SUN6I_DPHY_RX_TIME2_HS_RX_ANA0(n)	((n) & 0xff)
> +
> +#define SUN6I_DPHY_RX_TIME3_REG		0x40
> +#define SUN6I_DPHY_RX_TIME3_LPRST_DLY(n)	(((n) & 0xffff) << 16)
> +
>  #define SUN6I_DPHY_ANA0_REG		0x4c
>  #define SUN6I_DPHY_ANA0_REG_PWS			BIT(31)
>  #define SUN6I_DPHY_ANA0_REG_DMPC		BIT(28)
>  #define SUN6I_DPHY_ANA0_REG_DMPD(n)		(((n) & 0xf) << 24)
>  #define SUN6I_DPHY_ANA0_REG_SLV(n)		(((n) & 7) << 12)
>  #define SUN6I_DPHY_ANA0_REG_DEN(n)		(((n) & 0xf) << 8)
> +#define SUN6I_DPHY_ANA0_REG_SFB(n)		(((n) & 3) << 2)
> =20
>  #define SUN6I_DPHY_ANA1_REG		0x50
>  #define SUN6I_DPHY_ANA1_REG_VTTMODE		BIT(31)
> @@ -92,6 +117,8 @@ struct sun6i_dphy {
> =20
>  	struct phy				*phy;
>  	struct phy_configure_opts_mipi_dphy	config;
> +
> +	int					submode;
>  };
> =20
>  static int sun6i_dphy_init(struct phy *phy)
> @@ -105,6 +132,18 @@ static int sun6i_dphy_init(struct phy *phy)
>  	return 0;
>  }
> =20
> +static int sun6i_dphy_set_mode(struct phy *phy, enum phy_mode mode, int =
submode)
> +{
> +	struct sun6i_dphy *dphy =3D phy_get_drvdata(phy);
> +
> +	if (mode !=3D PHY_MODE_MIPI_DPHY)
> +		return -EINVAL;
> +
> +	dphy->submode =3D submode;
> +
> +	return 0;
> +}
> +
>  static int sun6i_dphy_configure(struct phy *phy, union phy_configure_opt=
s *opts)
>  {
>  	struct sun6i_dphy *dphy =3D phy_get_drvdata(phy);
> @@ -119,9 +158,8 @@ static int sun6i_dphy_configure(struct phy *phy, unio=
n phy_configure_opts *opts)
>  	return 0;
>  }
> =20
> -static int sun6i_dphy_power_on(struct phy *phy)
> +static int sun6i_dphy_tx_power_on(struct sun6i_dphy *dphy)
>  {
> -	struct sun6i_dphy *dphy =3D phy_get_drvdata(phy);
>  	u8 lanes_mask =3D GENMASK(dphy->config.lanes - 1, 0);
> =20
>  	regmap_write(dphy->regs, SUN6I_DPHY_TX_CTL_REG,
> @@ -211,12 +249,129 @@ static int sun6i_dphy_power_on(struct phy *phy)
>  	return 0;
>  }
> =20
> +static int sun6i_dphy_rx_power_on(struct sun6i_dphy *dphy)
> +{
> +	/* Physical clock rate is actually half of symbol rate with DDR. */
> +	unsigned long mipi_symbol_rate =3D dphy->config.hs_clk_rate;
> +	unsigned long dphy_clk_rate;
> +	unsigned int rx_dly;
> +	unsigned int lprst_dly;
> +	u32 value;
> +
> +	dphy_clk_rate =3D clk_get_rate(dphy->mod_clk);
> +	if (!dphy_clk_rate)
> +		return -1;

Returning -1 is weird here?

> +
> +	/* Hardcoded timing parameters from the Allwinner BSP. */
> +	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME0_REG,
> +		     SUN6I_DPHY_RX_TIME0_HS_RX_SYNC(255) |
> +		     SUN6I_DPHY_RX_TIME0_HS_RX_CLK_MISS(255) |
> +		     SUN6I_DPHY_RX_TIME0_LP_RX(255));
> +
> +	/*
> +	 * Formula from the Allwinner BSP, with hardcoded coefficients
> +	 * (probably internal divider/multiplier).
> +	 */
> +	rx_dly =3D 8 * (unsigned int)(dphy_clk_rate / (mipi_symbol_rate / 8));
> +
> +	/*
> +	 * The Allwinner BSP has an alternative formula for LP_RX_ULPS_WP:
> +	 * lp_ulps_wp_cnt =3D lp_ulps_wp_ms * lp_clk / 1000
> +	 * but does not use it and hardcodes 255 instead.
> +	 */
> +	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME1_REG,
> +		     SUN6I_DPHY_RX_TIME1_RX_DLY(rx_dly) |
> +		     SUN6I_DPHY_RX_TIME1_LP_RX_ULPS_WP(255));
> +
> +	/* HS_RX_ANA0 value is hardcoded in the Allwinner BSP. */
> +	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME2_REG,
> +		     SUN6I_DPHY_RX_TIME2_HS_RX_ANA0(4));
> +
> +	/*
> +	 * Formula from the Allwinner BSP, with hardcoded coefficients
> +	 * (probably internal divider/multiplier).
> +	 */
> +	lprst_dly =3D 4 * (unsigned int)(dphy_clk_rate / (mipi_symbol_rate / 2)=
);
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME3_REG,
> +		     SUN6I_DPHY_RX_TIME3_LPRST_DLY(lprst_dly));
> +
> +	/* Analog parameters are hardcoded in the Allwinner BSP. */
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG,
> +		     SUN6I_DPHY_ANA0_REG_PWS |
> +		     SUN6I_DPHY_ANA0_REG_SLV(7) |
> +		     SUN6I_DPHY_ANA0_REG_SFB(2));
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA1_REG,
> +		     SUN6I_DPHY_ANA1_REG_SVTT(4));
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA4_REG,
> +		     SUN6I_DPHY_ANA4_REG_DMPLVC |
> +		     SUN6I_DPHY_ANA4_REG_DMPLVD(1));
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA2_REG,
> +		     SUN6I_DPHY_ANA2_REG_ENIB);
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA3_REG,
> +		     SUN6I_DPHY_ANA3_EN_LDOR |
> +		     SUN6I_DPHY_ANA3_EN_LDOC |
> +		     SUN6I_DPHY_ANA3_EN_LDOD);
> +
> +	/*
> +	 * Delay comes from the Allwinner BSP, likely for internal regulator
> +	 * ramp-up.
> +	 */
> +	udelay(3);
> +
> +	value =3D SUN6I_DPHY_RX_CTL_EN_DBC | SUN6I_DPHY_RX_CTL_RX_CLK_FORCE;
> +
> +	/*
> +	 * Rx data lane force-enable bits are used as regular RX enable by the
> +	 * Allwinner BSP.
> +	 */
> +	if (dphy->config.lanes >=3D 1)
> +		value |=3D SUN6I_DPHY_RX_CTL_RX_D0_FORCE;
> +	if (dphy->config.lanes >=3D 2)
> +		value |=3D SUN6I_DPHY_RX_CTL_RX_D1_FORCE;
> +	if (dphy->config.lanes >=3D 3)
> +		value |=3D SUN6I_DPHY_RX_CTL_RX_D2_FORCE;
> +	if (dphy->config.lanes =3D=3D 4)
> +		value |=3D SUN6I_DPHY_RX_CTL_RX_D3_FORCE;
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_RX_CTL_REG, value);
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
> +		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
> +		     SUN6I_DPHY_GCTL_EN);
> +
> +	return 0;
> +}
> +
> +static int sun6i_dphy_power_on(struct phy *phy)
> +{
> +	struct sun6i_dphy *dphy =3D phy_get_drvdata(phy);
> +
> +	switch (dphy->submode) {
> +	case PHY_MIPI_DPHY_SUBMODE_TX:
> +		return sun6i_dphy_tx_power_on(dphy);
> +	case PHY_MIPI_DPHY_SUBMODE_RX:
> +		return sun6i_dphy_rx_power_on(dphy);
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +

Can one call power_on before set_mode?

>  static int sun6i_dphy_power_off(struct phy *phy)
>  {
>  	struct sun6i_dphy *dphy =3D phy_get_drvdata(phy);
> =20
> -	regmap_update_bits(dphy->regs, SUN6I_DPHY_ANA1_REG,
> -			   SUN6I_DPHY_ANA1_REG_VTTMODE, 0);
> +	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG, 0);
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG, 0);
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA1_REG, 0);

This looks like a change that should be mentioned (or in a separate
patch).

Maxime

--5cvkpdcapo7wtm7b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5btkQAKCRDj7w1vZxhR
xUBHAQChkEAS41mkyzjme9DrIAAnuGBkUb1ivp9fGoZl+ff1nAEAglHnjwBwlYQA
KOlYq7HcCAtaryTr7AUZPBR1RIqxuwc=
=vZ2X
-----END PGP SIGNATURE-----

--5cvkpdcapo7wtm7b--

--===============6912676267488831411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6912676267488831411==--
