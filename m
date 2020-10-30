Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CCF2A110D
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 23:45:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4226D86E6F;
	Fri, 30 Oct 2020 22:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4YOv5TfiEjft; Fri, 30 Oct 2020 22:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 778EE86E70;
	Fri, 30 Oct 2020 22:45:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 219A41BF9BA
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 22:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 187CD2E164
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 22:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H11QhL-W--dc for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id 6B0B1273E3
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 22:45:04 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 783FC1F4624B
Subject: Re: [PATCH 02/14] phy: allwinner: phy-sun6i-mipi-dphy: Support D-PHY
 Rx mode for MIPI CSI-2
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-sunxi@googlegroups.com
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-3-paul.kocialkowski@bootlin.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <5df82a6c-daa3-8e47-b7a4-85da60b87dd2@collabora.com>
Date: Fri, 30 Oct 2020 19:44:53 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-3-paul.kocialkowski@bootlin.com>
Content-Language: en-US
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

On 10/23/20 2:45 PM, Paul Kocialkowski wrote:
> The Allwinner A31 D-PHY supports both Rx and Tx modes. While the latter
> is already supported and used for MIPI DSI this adds support for the
> former, to be used with MIPI CSI-2.
> 
> This implementation is inspired by the Allwinner BSP implementation.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/phy/allwinner/phy-sun6i-mipi-dphy.c | 164 +++++++++++++++++++-
>  1 file changed, 160 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> index 1fa761ba6cbb..8bcd4bb79f60 100644
> --- a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> +++ b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
> @@ -24,6 +24,14 @@
>  #define SUN6I_DPHY_TX_CTL_REG		0x04
>  #define SUN6I_DPHY_TX_CTL_HS_TX_CLK_CONT	BIT(28)
>  
> +#define SUN6I_DPHY_RX_CTL_REG		0x08
> +#define SUN6I_DPHY_RX_CTL_EN_DBC	BIT(31)
> +#define SUN6I_DPHY_RX_CTL_RX_CLK_FORCE	BIT(24)
> +#define SUN6I_DPHY_RX_CTL_RX_D3_FORCE	BIT(23)
> +#define SUN6I_DPHY_RX_CTL_RX_D2_FORCE	BIT(22)
> +#define SUN6I_DPHY_RX_CTL_RX_D1_FORCE	BIT(21)
> +#define SUN6I_DPHY_RX_CTL_RX_D0_FORCE	BIT(20)
> +
>  #define SUN6I_DPHY_TX_TIME0_REG		0x10
>  #define SUN6I_DPHY_TX_TIME0_HS_TRAIL(n)		(((n) & 0xff) << 24)
>  #define SUN6I_DPHY_TX_TIME0_HS_PREPARE(n)	(((n) & 0xff) << 16)
> @@ -44,12 +52,29 @@
>  #define SUN6I_DPHY_TX_TIME4_HS_TX_ANA1(n)	(((n) & 0xff) << 8)
>  #define SUN6I_DPHY_TX_TIME4_HS_TX_ANA0(n)	((n) & 0xff)
>  
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
>  
>  #define SUN6I_DPHY_ANA1_REG		0x50
>  #define SUN6I_DPHY_ANA1_REG_VTTMODE		BIT(31)
> @@ -92,6 +117,8 @@ struct sun6i_dphy {
>  
>  	struct phy				*phy;
>  	struct phy_configure_opts_mipi_dphy	config;
> +
> +	int					submode;
>  };
>  
>  static int sun6i_dphy_init(struct phy *phy)
> @@ -105,6 +132,18 @@ static int sun6i_dphy_init(struct phy *phy)
>  	return 0;
>  }
>  
> +static int sun6i_dphy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
> +
> +	if (mode != PHY_MODE_MIPI_DPHY)
> +		return -EINVAL;
> +
> +	dphy->submode = submode;

Shouldn't you check if the submode is valid here?

> +
> +	return 0;
> +}
> +
>  static int sun6i_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
>  {
>  	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
> @@ -119,9 +158,8 @@ static int sun6i_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
>  	return 0;
>  }
>  
> -static int sun6i_dphy_power_on(struct phy *phy)
> +static int sun6i_dphy_tx_power_on(struct sun6i_dphy *dphy)
>  {
> -	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
>  	u8 lanes_mask = GENMASK(dphy->config.lanes - 1, 0);
>  
>  	regmap_write(dphy->regs, SUN6I_DPHY_TX_CTL_REG,
> @@ -211,12 +249,129 @@ static int sun6i_dphy_power_on(struct phy *phy)
>  	return 0;
>  }
>  
> +static int sun6i_dphy_rx_power_on(struct sun6i_dphy *dphy)
> +{
> +	/* Physical clock rate is actually half of symbol rate with DDR. */
> +	unsigned long mipi_symbol_rate = dphy->config.hs_clk_rate;
> +	unsigned long dphy_clk_rate;
> +	unsigned int rx_dly;
> +	unsigned int lprst_dly;
> +	u32 value;
> +
> +	dphy_clk_rate = clk_get_rate(dphy->mod_clk);
> +	if (!dphy_clk_rate)
> +		return -1;
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
> +	rx_dly = 8 * (unsigned int)(dphy_clk_rate / (mipi_symbol_rate / 8));
> +
> +	/*
> +	 * The Allwinner BSP has an alternative formula for LP_RX_ULPS_WP:
> +	 * lp_ulps_wp_cnt = lp_ulps_wp_ms * lp_clk / 1000
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
> +	lprst_dly = 4 * (unsigned int)(dphy_clk_rate / (mipi_symbol_rate / 2));
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
> +	value = SUN6I_DPHY_RX_CTL_EN_DBC | SUN6I_DPHY_RX_CTL_RX_CLK_FORCE;
> +
> +	/*
> +	 * Rx data lane force-enable bits are used as regular RX enable by the
> +	 * Allwinner BSP.
> +	 */
> +	if (dphy->config.lanes >= 1)
> +		value |= SUN6I_DPHY_RX_CTL_RX_D0_FORCE;
> +	if (dphy->config.lanes >= 2)
> +		value |= SUN6I_DPHY_RX_CTL_RX_D1_FORCE;
> +	if (dphy->config.lanes >= 3)
> +		value |= SUN6I_DPHY_RX_CTL_RX_D2_FORCE;
> +	if (dphy->config.lanes == 4)
> +		value |= SUN6I_DPHY_RX_CTL_RX_D3_FORCE;

I would replace this by a switch case with fallthrough to avoid too many comparisons
to the same value.

Regards,
Helen

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
> +	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
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
>  static int sun6i_dphy_power_off(struct phy *phy)
>  {
>  	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
>  
> -	regmap_update_bits(dphy->regs, SUN6I_DPHY_ANA1_REG,
> -			   SUN6I_DPHY_ANA1_REG_VTTMODE, 0);
> +	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG, 0);
> +
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG, 0);
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA1_REG, 0);
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA2_REG, 0);
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA3_REG, 0);
> +	regmap_write(dphy->regs, SUN6I_DPHY_ANA4_REG, 0);
>  
>  	return 0;
>  }
> @@ -234,6 +389,7 @@ static int sun6i_dphy_exit(struct phy *phy)
>  
>  
>  static const struct phy_ops sun6i_dphy_ops = {
> +	.set_mode	= sun6i_dphy_set_mode,
>  	.configure	= sun6i_dphy_configure,
>  	.power_on	= sun6i_dphy_power_on,
>  	.power_off	= sun6i_dphy_power_off,
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
