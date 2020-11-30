Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C1F2C822A
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Nov 2020 11:30:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72D4F8728A;
	Mon, 30 Nov 2020 10:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 051ebldAvNwI; Mon, 30 Nov 2020 10:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD4498721B;
	Mon, 30 Nov 2020 10:30:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C8971BF30F
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 10:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 91C602046E
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 10:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVX85nXXGE9p for <devel@linuxdriverproject.org>;
 Mon, 30 Nov 2020 10:30:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 715B02045D
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 10:30:37 +0000 (UTC)
Received: from localhost (unknown [122.171.214.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F253320708;
 Mon, 30 Nov 2020 10:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606732236;
 bh=+mNAuwEK4cx729Qu4tU7yoERlzupdG5c5Y5WYvAGTC4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r0A7GnviLclz96J05ChsOdA0314ig1iDpH0YN/t2pYQZzTXe7rkH8g1nAxXipxqWz
 0jiWl5zkry+mjAgEVXHx/2QlK7icSPJCHJO+FTSiyJ2vtnRr7Cpv05/wLllFumUf0a
 4BhrBYDcBRiSWAsOF8Llo7foJOpq7eZx6bJMFCLc=
Date: Mon, 30 Nov 2020 16:00:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 1/8] phy: phy-hi3670-usb3: move driver from staging into
 phy
Message-ID: <20201130103023.GM8403@vkoul-mobl>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <420faf39bb03d07f8823b03bc55a429e975e23a0.1605530560.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <420faf39bb03d07f8823b03bc55a429e975e23a0.1605530560.git.mchehab+huawei@kernel.org>
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
 Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linuxarm@huawei.com, Krzysztof Kozlowski <krzk@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 Alex Dewar <alex.dewar90@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 16-11-20, 13:59, Mauro Carvalho Chehab wrote:

> +#define CTRL7_USB2_REFCLKSEL_MASK	(3 << 3)
> +#define CTRL7_USB2_REFCLKSEL_ABB	(3 << 3)
> +#define CTRL7_USB2_REFCLKSEL_PAD	(2 << 3)

This should use GENMASK()
> +
> +#define CFG50_USB3_PHY_TEST_POWERDOWN	BIT(23)
> +
> +#define CFG54_USB31PHY_CR_ADDR_MASK	(0xFFFF)
> +#define CFG54_USB31PHY_CR_ADDR_SHIFT	(16)

We can skip this by using FIELD_GET/FIELD_SET macros and only define
register fields.

> +static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
> +{
> +	int ret;
> +
> +	if (direction)
> +		ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
> +					 CFG54_USB31PHY_CR_WR_EN,
> +					 CFG54_USB31PHY_CR_WR_EN);
> +	else
> +		ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
> +					 CFG54_USB31PHY_CR_RD_EN,
> +					 CFG54_USB31PHY_CR_RD_EN);

how about:
        if direction
                reg = CFG54_USB31PHY_CR_WR_EN;
        else
                reg = CFG54_USB31PHY_CR_RD_EN;

        regmap_update_bits(usb31misc, USB_MISC_CFG54, reg, reg);
 
> +
> +	if (ret)
> +		return ret;
> +
> +	ret = hi3670_phy_cr_clk(usb31misc);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
> +				 CFG54_USB31PHY_CR_RD_EN | CFG54_USB31PHY_CR_WR_EN, 0);
> +
> +	return ret;

        return regmap_update_bits()

> +static int hi3670_phy_cr_wait_ack(struct regmap *usb31misc)
> +{
> +	u32 reg;
> +	int retry = 100000;
> +	int ret;
> +
> +	while (retry-- > 0) {
> +		ret = regmap_read(usb31misc, USB_MISC_CFG54, &reg);
> +		if (ret)
> +			return ret;
> +		if ((reg & CFG54_USB31PHY_CR_ACK) == CFG54_USB31PHY_CR_ACK)
> +			return 0;
> +
> +		ret = hi3670_phy_cr_clk(usb31misc);
> +		if (ret)
> +			return ret;

No delay in between reads..? maybe add a small delay and reduce the
retries?

> +static int hi3670_phy_cr_set_addr(struct regmap *usb31misc, u32 addr)
> +{
> +	u32 reg;
> +	int ret;
> +
> +	ret = regmap_read(usb31misc, USB_MISC_CFG54, &reg);
> +	if (ret)
> +		return ret;
> +
> +	reg &= ~(CFG54_USB31PHY_CR_ADDR_MASK << CFG54_USB31PHY_CR_ADDR_SHIFT);
> +	reg |= ((addr & CFG54_USB31PHY_CR_ADDR_MASK) << CFG54_USB31PHY_CR_ADDR_SHIFT);
> +	ret = regmap_write(usb31misc, USB_MISC_CFG54, reg);

regmap_update_bits() ?

> +static int hi3670_is_abbclk_seleted(struct hi3670_priv *priv)
> +{
> +	u32 reg;
> +
> +	if (!priv->sctrl) {
> +		dev_err(priv->dev, "priv->sctrl is null!\n");
> +		return 1;
> +	}
> +
> +	if (regmap_read(priv->sctrl, SCTRL_SCDEEPSLEEPED, &reg)) {
> +		dev_err(priv->dev, "SCTRL_SCDEEPSLEEPED read failed!\n");
> +		return 1;

Not a -ve error code?
-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
