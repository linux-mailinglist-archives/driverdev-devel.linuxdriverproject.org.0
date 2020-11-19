Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B4F2B8B07
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 06:31:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DAFC86CE6;
	Thu, 19 Nov 2020 05:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NAS03Scp2OyB; Thu, 19 Nov 2020 05:31:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43A1D86CC5;
	Thu, 19 Nov 2020 05:31:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 475691BF844
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 05:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 43F1C86CB6
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 05:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MuVaUsZv258D for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 05:31:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8B6E986CB5
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 05:31:04 +0000 (UTC)
Received: from localhost (unknown [122.171.203.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2AC1246E8;
 Thu, 19 Nov 2020 05:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605763863;
 bh=wuKzkDcFCNqez140xTkBhynCW3+e/QyBfDsukHeaLZ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V1Q4or9XuylwW/dCBLgvhQajP+HOtrEXO4NO6kCEOWRSnZ83a0H/dUaQqtG3wxRJr
 kxMvA0Tz8f0hxAdGc7ckTon4L1eg8XIZjurRLaaLGNTCOdbUTFREu7/DnsSMLaOAZQ
 mMvRqybfM3QI+edzZBgIJeM/d0ymd48bQaarxpCo=
Date: Thu, 19 Nov 2020 11:00:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v4 2/4] phy: ralink: Add PHY driver for MT7621 PCIe PHY
Message-ID: <20201119053059.GY50232@vkoul-mobl>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201031122246.16497-3-sergio.paracuellos@gmail.com>
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
 gregkh@linuxfoundation.org, kishon@ti.com, robh+dt@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 31-10-20, 13:22, Sergio Paracuellos wrote:

> +#define RG_PE1_PIPE_REG				0x02c
> +#define RG_PE1_PIPE_RST				BIT(12)
> +#define RG_PE1_PIPE_CMD_FRC			BIT(4)
> +
> +#define RG_P0_TO_P1_WIDTH			0x100
> +#define RG_PE1_H_LCDDS_REG			0x49c
> +#define RG_PE1_H_LCDDS_PCW			GENMASK(30, 0)
> +#define RG_PE1_H_LCDDS_PCW_VAL(x)		((0x7fffffff & (x)) << 0)

Pls use FIELD_{GET|PREP} instead of coding like this, you already
defined the mask, use it to set and get the reg field ;)

> +
> +#define RG_PE1_FRC_H_XTAL_REG			0x400
> +#define RG_PE1_FRC_H_XTAL_TYPE			BIT(8)
> +#define RG_PE1_H_XTAL_TYPE			GENMASK(10, 9)
> +#define RG_PE1_H_XTAL_TYPE_VAL(x)		((0x3 & (x)) << 9)
> +
> +#define RG_PE1_FRC_PHY_REG			0x000
> +#define RG_PE1_FRC_PHY_EN			BIT(4)
> +#define RG_PE1_PHY_EN				BIT(5)
> +
> +#define RG_PE1_H_PLL_REG			0x490
> +#define RG_PE1_H_PLL_BC				GENMASK(23, 22)
> +#define RG_PE1_H_PLL_BC_VAL(x)			((0x3 & (x)) << 22)
> +#define RG_PE1_H_PLL_BP				GENMASK(21, 18)
> +#define RG_PE1_H_PLL_BP_VAL(x)			((0xf & (x)) << 18)
> +#define RG_PE1_H_PLL_IR				GENMASK(15, 12)
> +#define RG_PE1_H_PLL_IR_VAL(x)			((0xf & (x)) << 12)
> +#define RG_PE1_H_PLL_IC				GENMASK(11, 8)
> +#define RG_PE1_H_PLL_IC_VAL(x)			((0xf & (x)) << 8)
> +#define RG_PE1_H_PLL_PREDIV			GENMASK(7, 6)
> +#define RG_PE1_H_PLL_PREDIV_VAL(x)		((0x3 & (x)) << 6)
> +#define RG_PE1_PLL_DIVEN			GENMASK(3, 1)
> +#define RG_PE1_PLL_DIVEN_VAL(x)			((0x7 & (x)) << 1)
> +
> +#define RG_PE1_H_PLL_FBKSEL_REG			0x4bc
> +#define RG_PE1_H_PLL_FBKSEL			GENMASK(5, 4)
> +#define RG_PE1_H_PLL_FBKSEL_VAL(x)		((0x3 & (x)) << 4)
> +
> +#define	RG_PE1_H_LCDDS_SSC_PRD_REG		0x4a4
> +#define RG_PE1_H_LCDDS_SSC_PRD			GENMASK(15, 0)
> +#define RG_PE1_H_LCDDS_SSC_PRD_VAL(x)		((0xffff & (x)) << 0)
> +
> +#define RG_PE1_H_LCDDS_SSC_DELTA_REG		0x4a8
> +#define RG_PE1_H_LCDDS_SSC_DELTA		GENMASK(11, 0)
> +#define RG_PE1_H_LCDDS_SSC_DELTA_VAL(x)		((0xfff & (x)) << 0)
> +#define RG_PE1_H_LCDDS_SSC_DELTA1		GENMASK(27, 16)
> +#define RG_PE1_H_LCDDS_SSC_DELTA1_VAL(x)	((0xff & (x)) << 16)
> +
> +#define RG_PE1_LCDDS_CLK_PH_INV_REG		0x4a0
> +#define RG_PE1_LCDDS_CLK_PH_INV			BIT(5)
> +
> +#define RG_PE1_H_PLL_BR_REG			0x4ac
> +#define RG_PE1_H_PLL_BR				GENMASK(18, 16)
> +#define RG_PE1_H_PLL_BR_VAL(x)			((0x7 & (x)) << 16)
> +
> +#define	RG_PE1_MSTCKDIV_REG			0x414
> +#define RG_PE1_MSTCKDIV				GENMASK(7, 6)
> +#define RG_PE1_MSTCKDIV_VAL(x)			((0x3 & (x)) << 6)
> +
> +#define RG_PE1_FRC_MSTCKDIV			BIT(5)
> +
> +#define XTAL_MODE_SEL_SHIFT			6

Bonus you dont need to define shifts if you use stuff defined in
bitfield.h

> +struct mt7621_pci_phy {
> +	struct device *dev;
> +	struct regmap *regmap;
> +	struct phy *phy;
> +	void __iomem *port_base;
> +	bool has_dual_port;
> +	bool bypass_pipe_rst;
> +};
> +
> +static inline u32 phy_read(struct mt7621_pci_phy *phy, u32 reg)
> +{
> +	u32 val;
> +
> +	regmap_read(phy->regmap, reg, &val);
> +
> +	return val;
> +}
> +
> +static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
> +{
> +	regmap_write(phy->regmap, reg, val);

Why not use regmap_ calls directly and avoid the dummy wrappers..?

> +}
> +
> +static inline void mt7621_phy_rmw(struct mt7621_pci_phy *phy,
> +				  u32 reg, u32 clr, u32 set)
> +{
> +	u32 val = phy_read(phy, reg);
> +
> +	val &= ~clr;
> +	val |= set;
> +	phy_write(phy, val, reg);

why not use regmap_update_bits() instead

> +static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
> +{
> +	struct device *dev = phy->dev;
> +	u32 xtal_mode;
> +
> +	xtal_mode = (rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0)
> +		     >> XTAL_MODE_SEL_SHIFT) & XTAL_MODE_SEL_MASK;
> +
> +	/* Set PCIe Port PHY to disable SSC */
> +	/* Debug Xtal Type */
> +	mt7621_phy_rmw(phy, RG_PE1_FRC_H_XTAL_REG,
> +		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE,
> +		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE_VAL(0x00));
> +
> +	/* disable port */
> +	mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG,
> +		       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
> +
> +	if (phy->has_dual_port) {
> +		mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
> +			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
> +	}
> +
> +	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
> +		/* Set Pre-divider ratio (for host mode) */
> +		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
> +			       RG_PE1_H_PLL_PREDIV,
> +			       RG_PE1_H_PLL_PREDIV_VAL(0x01));
> +		dev_info(dev, "Xtal is 40MHz\n");
> +	} else if (xtal_mode >= 6) { /* 25MHz Xal */
> +		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
> +			       RG_PE1_H_PLL_PREDIV,
> +			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
> +		/* Select feedback clock */
> +		mt7621_phy_rmw(phy, RG_PE1_H_PLL_FBKSEL_REG,
> +			       RG_PE1_H_PLL_FBKSEL,
> +			       RG_PE1_H_PLL_FBKSEL_VAL(0x01));
> +		/* DDS NCPO PCW (for host mode) */
> +		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
> +			       RG_PE1_H_LCDDS_SSC_PRD,
> +			       RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18000000));
> +		/* DDS SSC dither period control */
> +		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
> +			       RG_PE1_H_LCDDS_SSC_PRD,
> +			       RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18d));
> +		/* DDS SSC dither amplitude control */
> +		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_DELTA_REG,
> +			       RG_PE1_H_LCDDS_SSC_DELTA |
> +			       RG_PE1_H_LCDDS_SSC_DELTA1,
> +			       RG_PE1_H_LCDDS_SSC_DELTA_VAL(0x4a) |
> +			       RG_PE1_H_LCDDS_SSC_DELTA1_VAL(0x4a));
> +		dev_info(dev, "Xtal is 25MHz\n");

Debug please

> +	} else { /* 20MHz Xtal */
> +		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
> +			       RG_PE1_H_PLL_PREDIV,
> +			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
> +
> +		dev_info(dev, "Xtal is 20MHz\n");

ditto
-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
