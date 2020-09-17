Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C884B26D951
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:42:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36CFC878A1;
	Thu, 17 Sep 2020 10:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k1wN164LTsAg; Thu, 17 Sep 2020 10:42:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B4F387898;
	Thu, 17 Sep 2020 10:42:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17B631BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1417F87400
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d59zsXvh4FiS for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4823875E0
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F329121734;
 Thu, 17 Sep 2020 10:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600339342;
 bh=9lN4i+Q39aPVRfwTaJqvtmKRYcgT4A/KCedGamLRbWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1XxWwDCSvEUMP8BTHyyvwTGlWgMh8Pm/zknxbxzrGUUDsfptNM2SHuyUvYiRtzPyk
 M/ZIN4xgU0Vf6k/elezq/zZtkiOp/Yu671b+AjXPr5+IUbFsxUUatfqqxaaoqniTD9
 iLseg1fxVlYdPOH4FQwaQoNd0XzyWd04JxScLlh8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kIrMp-005WZd-Qh; Thu, 17 Sep 2020 12:42:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v4 6/8] staging: hikey9xx: phy-hi3670-usb3: fix coding style
Date: Thu, 17 Sep 2020 12:42:10 +0200
Message-Id: <6b1f66068905b7d0a9a988c9d0bd4ebef19a6fc2.1600338981.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1600338981.git.mchehab+huawei@kernel.org>
References: <cover.1600338981.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Address the issues reported by checkpatch --strict,
and add a SPDX tag.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 157 ++++++++++-----------
 1 file changed, 76 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index fd679b39185a..cb0bfcbbfbfa 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -1,28 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Phy provider for USB 3.1 controller on HiSilicon Kirin970 platform
  *
- * Copyright (C) 2017-2018 Hilisicon Electronics Co., Ltd.
+ * Copyright (C) 2017-2020 Hilisicon Electronics Co., Ltd.
  *		http://www.huawei.com
  *
  * Authors: Yu Chen <chenyu56@huawei.com>
- *
- * This program is free software: you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2  of
- * the License as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
+#include <linux/clk.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
-#include <linux/platform_device.h>
 #include <linux/phy/phy.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
-#include <linux/clk.h>
 
 #define SCTRL_SCDEEPSLEEPED		(0x0)
 #define USB_CLK_SELECTED		BIT(20)
@@ -116,7 +108,7 @@
 #define TCPC_VALID			BIT(4)
 #define TCPC_LOW_POWER_EN		BIT(3)
 #define TCPC_MUX_CONTROL_MASK		(3 << 0)
-#define TCPC_MUX_CONTROL_USB31		(1 << 0)
+#define TCPC_MUX_CONTROL_USB31		BIT(0)
 
 #define SYSMODE_CFG_TYPEC_DISABLE	BIT(3)
 
@@ -151,13 +143,13 @@ static int hi3670_phy_cr_clk(struct regmap *usb31misc)
 
 	/* Clock up */
 	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-			CFG54_USB31PHY_CR_CLK, CFG54_USB31PHY_CR_CLK);
+				 CFG54_USB31PHY_CR_CLK, CFG54_USB31PHY_CR_CLK);
 	if (ret)
 		return ret;
 
 	/* Clock down */
 	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-			CFG54_USB31PHY_CR_CLK, 0);
+				 CFG54_USB31PHY_CR_CLK, 0);
 
 	return ret;
 }
@@ -165,7 +157,7 @@ static int hi3670_phy_cr_clk(struct regmap *usb31misc)
 static int hi3670_phy_cr_set_sel(struct regmap *usb31misc)
 {
 	return regmap_update_bits(usb31misc, USB_MISC_CFG54,
-			CFG54_USB31PHY_CR_SEL, CFG54_USB31PHY_CR_SEL);
+				  CFG54_USB31PHY_CR_SEL, CFG54_USB31PHY_CR_SEL);
 }
 
 static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
@@ -174,10 +166,12 @@ static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
 
 	if (direction)
 		ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-			CFG54_USB31PHY_CR_WR_EN, CFG54_USB31PHY_CR_WR_EN);
+					 CFG54_USB31PHY_CR_WR_EN,
+					 CFG54_USB31PHY_CR_WR_EN);
 	else
 		ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-			CFG54_USB31PHY_CR_RD_EN, CFG54_USB31PHY_CR_RD_EN);
+					 CFG54_USB31PHY_CR_RD_EN,
+					 CFG54_USB31PHY_CR_RD_EN);
 
 	if (ret)
 		return ret;
@@ -187,7 +181,7 @@ static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
 		return ret;
 
 	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-			CFG54_USB31PHY_CR_RD_EN | CFG54_USB31PHY_CR_WR_EN, 0);
+				 CFG54_USB31PHY_CR_RD_EN | CFG54_USB31PHY_CR_WR_EN, 0);
 
 	return ret;
 }
@@ -223,8 +217,7 @@ static int hi3670_phy_cr_set_addr(struct regmap *usb31misc, u32 addr)
 		return ret;
 
 	reg &= ~(CFG54_USB31PHY_CR_ADDR_MASK << CFG54_USB31PHY_CR_ADDR_SHIFT);
-	reg |= ((addr & CFG54_USB31PHY_CR_ADDR_MASK) <<
-			CFG54_USB31PHY_CR_ADDR_SHIFT);
+	reg |= ((addr & CFG54_USB31PHY_CR_ADDR_MASK) << CFG54_USB31PHY_CR_ADDR_SHIFT);
 	ret = regmap_write(usb31misc, USB_MISC_CFG54, reg);
 
 	return ret;
@@ -288,7 +281,7 @@ static int hi3670_phy_cr_write(struct regmap *usb31misc, u32 addr, u32 val)
 		return ret;
 
 	ret = regmap_write(usb31misc, USB_MISC_CFG58,
-			val & CFG58_USB31PHY_CR_DATA_MASK);
+			   val & CFG58_USB31PHY_CR_DATA_MASK);
 	if (ret)
 		return ret;
 
@@ -308,7 +301,7 @@ static int hi3670_phy_set_params(struct hi3670_priv *priv)
 	int retry = 3;
 
 	ret = regmap_write(priv->usb31misc, USB3OTG_CTRL4,
-			priv->eye_diagram_param);
+			   priv->eye_diagram_param);
 	if (ret) {
 		dev_err(priv->dev, "set USB3OTG_CTRL4 failed\n");
 		return ret;
@@ -316,10 +309,11 @@ static int hi3670_phy_set_params(struct hi3670_priv *priv)
 
 	while (retry-- > 0) {
 		ret = hi3670_phy_cr_read(priv->usb31misc,
-				TX_VBOOST_LVL_REG, &reg);
+					 TX_VBOOST_LVL_REG, &reg);
 		if (!ret)
 			break;
-		else if (ret != -ETIMEDOUT) {
+
+		if (ret != -ETIMEDOUT) {
 			dev_err(priv->dev, "read TX_VBOOST_LVL_REG failed\n");
 			return ret;
 		}
@@ -327,8 +321,7 @@ static int hi3670_phy_set_params(struct hi3670_priv *priv)
 	if (ret)
 		return ret;
 
-	reg |= (TX_VBOOST_LVL_ENABLE |
-			(priv->tx_vboost_lvl << TX_VBOOST_LVL_START));
+	reg |= (TX_VBOOST_LVL_ENABLE | (priv->tx_vboost_lvl << TX_VBOOST_LVL_START));
 	ret = hi3670_phy_cr_write(priv->usb31misc, TX_VBOOST_LVL_REG, reg);
 	if (ret)
 		dev_err(priv->dev, "write TX_VBOOST_LVL_REG failed\n");
@@ -364,24 +357,24 @@ static int hi3670_config_phy_clock(struct hi3670_priv *priv)
 	if (hi3670_is_abbclk_seleted(priv)) {
 		/* usb refclk iso disable */
 		ret = regmap_write(priv->peri_crg, PERI_CRG_ISODIS,
-				USB_REFCLK_ISO_EN);
+				   USB_REFCLK_ISO_EN);
 		if (ret)
 			goto out;
 
 		/* enable usb_tcxo_en */
 		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
-				USB_TCXO_EN |
-				(USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START));
+				   USB_TCXO_EN |
+				   (USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START));
 
 		/* select usbphy clk from abb */
 		mask = SC_CLK_USB3PHY_3MUX1_SEL;
 		ret = regmap_update_bits(priv->pctrl,
-				PCTRL_PERI_CTRL24, mask, 0);
+					 PCTRL_PERI_CTRL24, mask, 0);
 		if (ret)
 			goto out;
 
 		ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0,
-				CFGA0_USB2PHY_REFCLK_SELECT, 0);
+					 CFGA0_USB2PHY_REFCLK_SELECT, 0);
 		if (ret)
 			goto out;
 
@@ -393,34 +386,36 @@ static int hi3670_config_phy_clock(struct hi3670_priv *priv)
 		ret = regmap_write(priv->usb31misc, USB3OTG_CTRL7, val);
 		if (ret)
 			goto out;
-	} else {
-		ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG54,
-				CFG54_USB3PHY_REF_USE_PAD,
-				CFG54_USB3PHY_REF_USE_PAD);
-		if (ret)
-			goto out;
 
-		ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0,
-				CFGA0_USB2PHY_REFCLK_SELECT,
-				CFGA0_USB2PHY_REFCLK_SELECT);
-		if (ret)
-			goto out;
-
-		ret = regmap_read(priv->usb31misc, USB3OTG_CTRL7, &val);
-		if (ret)
-			goto out;
-		val &= ~CTRL7_USB2_REFCLKSEL_MASK;
-		val |= CTRL7_USB2_REFCLKSEL_PAD;
-		ret = regmap_write(priv->usb31misc, USB3OTG_CTRL7, val);
-		if (ret)
-			goto out;
-
-		ret = regmap_write(priv->peri_crg,
-				PERI_CRG_PEREN6, GT_CLK_USB2PHY_REF);
-		if (ret)
-			goto out;
+		return 0;
 	}
 
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG54,
+				 CFG54_USB3PHY_REF_USE_PAD,
+				 CFG54_USB3PHY_REF_USE_PAD);
+	if (ret)
+		goto out;
+
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0,
+				 CFGA0_USB2PHY_REFCLK_SELECT,
+				 CFGA0_USB2PHY_REFCLK_SELECT);
+	if (ret)
+		goto out;
+
+	ret = regmap_read(priv->usb31misc, USB3OTG_CTRL7, &val);
+	if (ret)
+		goto out;
+	val &= ~CTRL7_USB2_REFCLKSEL_MASK;
+	val |= CTRL7_USB2_REFCLKSEL_PAD;
+	ret = regmap_write(priv->usb31misc, USB3OTG_CTRL7, val);
+	if (ret)
+		goto out;
+
+	ret = regmap_write(priv->peri_crg,
+			   PERI_CRG_PEREN6, GT_CLK_USB2PHY_REF);
+	if (ret)
+		goto out;
+
 	return 0;
 out:
 	dev_err(priv->dev, "failed to config phy clock ret: %d\n", ret);
@@ -437,7 +432,7 @@ static int hi3670_config_tca(struct hi3670_priv *priv)
 		goto out;
 
 	ret = regmap_write(priv->usb31misc, TCA_INTR_EN,
-			INTR_EN_XA_TIMEOUT_EVT_EN | INTR_EN_XA_ACK_EVT_EN);
+			   INTR_EN_XA_TIMEOUT_EVT_EN | INTR_EN_XA_ACK_EVT_EN);
 	if (ret)
 		goto out;
 
@@ -447,13 +442,13 @@ static int hi3670_config_tca(struct hi3670_priv *priv)
 		goto out;
 
 	ret = regmap_update_bits(priv->usb31misc, TCA_GCFG,
-			GCFG_ROLE_HSTDEV | GCFG_OP_MODE,
-			GCFG_ROLE_HSTDEV | GCFG_OP_MODE_CTRL_SYNC_MODE);
+				 GCFG_ROLE_HSTDEV | GCFG_OP_MODE,
+				 GCFG_ROLE_HSTDEV | GCFG_OP_MODE_CTRL_SYNC_MODE);
 	if (ret)
 		goto out;
 
 	ret = regmap_update_bits(priv->usb31misc, TCA_SYSMODE_CFG,
-			SYSMODE_CFG_TYPEC_DISABLE, 0);
+				 SYSMODE_CFG_TYPEC_DISABLE, 0);
 	if (ret)
 		goto out;
 
@@ -467,7 +462,7 @@ static int hi3670_config_tca(struct hi3670_priv *priv)
 		goto out;
 
 	ret = regmap_write(priv->usb31misc, TCA_VBUS_CTRL,
-		VBUS_CTRL_POWERPRESENT_OVERRD | VBUS_CTRL_VBUSVALID_OVERRD);
+			   VBUS_CTRL_POWERPRESENT_OVERRD | VBUS_CTRL_VBUSVALID_OVERRD);
 	if (ret)
 		goto out;
 
@@ -485,7 +480,7 @@ static int hi3670_phy_init(struct phy *phy)
 
 	/* assert controller */
 	val = CFGA0_VAUX_RESET | CFGA0_USB31C_RESET |
-		CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
+	      CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
 	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, 0);
 	if (ret)
 		goto out;
@@ -496,13 +491,13 @@ static int hi3670_phy_init(struct phy *phy)
 
 	/* Exit from IDDQ mode */
 	ret = regmap_update_bits(priv->usb31misc, USB3OTG_CTRL5,
-			CTRL5_USB2_SIDDQ, 0);
+				 CTRL5_USB2_SIDDQ, 0);
 	if (ret)
 		goto out;
 
 	/* Release USB31 PHY out of TestPowerDown mode */
 	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG50,
-			CFG50_USB3_PHY_TEST_POWERDOWN, 0);
+				 CFG50_USB3_PHY_TEST_POWERDOWN, 0);
 	if (ret)
 		goto out;
 
@@ -512,13 +507,13 @@ static int hi3670_phy_init(struct phy *phy)
 	if (ret)
 		goto out;
 
-	udelay(100);
+	usleep_range(100, 120);
 
 	/* Tell the PHY power is stable */
 	val = CFG54_USB3_PHY0_ANA_PWR_EN | CFG54_PHY0_PCS_PWR_STABLE |
-		CFG54_PHY0_PMA_PWR_STABLE;
+	      CFG54_PHY0_PMA_PWR_STABLE;
 	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG54,
-			val, val);
+				 val, val);
 	if (ret)
 		goto out;
 
@@ -528,8 +523,8 @@ static int hi3670_phy_init(struct phy *phy)
 
 	/* Enable SSC */
 	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG5C,
-			CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN,
-			CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN);
+				 CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN,
+				 CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN);
 	if (ret)
 		goto out;
 
@@ -539,7 +534,7 @@ static int hi3670_phy_init(struct phy *phy)
 	if (ret)
 		goto out;
 
-	udelay(100);
+	usleep_range(100, 120);
 
 	/* Set fake vbus valid signal */
 	val = CTRL0_USB3_VBUSVLD | CTRL0_USB3_VBUSVLD_SEL;
@@ -552,7 +547,7 @@ static int hi3670_phy_init(struct phy *phy)
 	if (ret)
 		goto out;
 
-	udelay(100);
+	usleep_range(100, 120);
 
 	ret = hi3670_phy_set_params(priv);
 	if (ret)
@@ -579,10 +574,10 @@ static int hi3670_phy_exit(struct phy *phy)
 	if (hi3670_is_abbclk_seleted(priv)) {
 		/* disable usb_tcxo_en */
 		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
-				USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START);
+				   USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START);
 	} else {
 		ret = regmap_write(priv->peri_crg, PERI_CRG_PERDIS6,
-				GT_CLK_USB2PHY_REF);
+				   GT_CLK_USB2PHY_REF);
 		if (ret)
 			goto out;
 	}
@@ -612,39 +607,39 @@ static int hi3670_phy_probe(struct platform_device *pdev)
 
 	priv->dev = dev;
 	priv->peri_crg = syscon_regmap_lookup_by_phandle(dev->of_node,
-					"hisilicon,pericrg-syscon");
+							 "hisilicon,pericrg-syscon");
 	if (IS_ERR(priv->peri_crg)) {
 		dev_err(dev, "no hisilicon,pericrg-syscon\n");
 		return PTR_ERR(priv->peri_crg);
 	}
 
 	priv->pctrl = syscon_regmap_lookup_by_phandle(dev->of_node,
-					"hisilicon,pctrl-syscon");
+						      "hisilicon,pctrl-syscon");
 	if (IS_ERR(priv->pctrl)) {
 		dev_err(dev, "no hisilicon,pctrl-syscon\n");
 		return PTR_ERR(priv->pctrl);
 	}
 
 	priv->sctrl = syscon_regmap_lookup_by_phandle(dev->of_node,
-					"hisilicon,sctrl-syscon");
+						      "hisilicon,sctrl-syscon");
 	if (IS_ERR(priv->sctrl)) {
 		dev_err(dev, "no hisilicon,sctrl-syscon\n");
 		return PTR_ERR(priv->sctrl);
 	}
 
 	priv->usb31misc = syscon_regmap_lookup_by_phandle(dev->of_node,
-					"hisilicon,usb31-misc-syscon");
+							  "hisilicon,usb31-misc-syscon");
 	if (IS_ERR(priv->usb31misc)) {
 		dev_err(dev, "no hisilicon,usb31-misc-syscon\n");
 		return PTR_ERR(priv->usb31misc);
 	}
 
 	if (of_property_read_u32(dev->of_node, "eye-diagram-param",
-				&(priv->eye_diagram_param)))
+				 &priv->eye_diagram_param))
 		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_PARAM;
 
 	if (of_property_read_u32(dev->of_node, "usb3-phy-tx-vboost-lvl",
-				&(priv->tx_vboost_lvl)))
+				 &priv->tx_vboost_lvl))
 		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_VBOOST;
 
 	phy = devm_phy_create(dev, NULL, &hi3670_phy_ops);
@@ -657,7 +652,7 @@ static int hi3670_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id hi3670_phy_of_match[] = {
-	{.compatible = "hisilicon,hi3670-usb-phy",},
+	{ .compatible = "hisilicon,hi3670-usb-phy" },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, hi3670_phy_of_match);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
