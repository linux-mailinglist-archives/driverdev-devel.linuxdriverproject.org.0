Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0355026D94B
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 913AD8789F;
	Thu, 17 Sep 2020 10:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WNfI3rgosP6h; Thu, 17 Sep 2020 10:42:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA7038788C;
	Thu, 17 Sep 2020 10:42:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8706D1BF9B2
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8387787400
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aE84O2GM-iO9 for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A1B8D875DF
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 016B221D92;
 Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600339342;
 bh=5K9y772brKLydV8JQDzF4vQzYo0NDAGOhFT0CETXBX4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sgAQuIRrIb+q1zX3XHvoiDrClRr6kryOgBjcWuov44dGdNb3k97nKQW/SYvEDVIKD
 9/cLURZD6L2ce4m3Fzsef/zJm35MRBX04Q9kRc8m+a3GZno7GESWuEwxrqcbGJwPHK
 O+6fFh3kWqr0gx9/A9rf+ZnglL5S8Fnvp+2kyly4=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kIrMp-005WZZ-O1; Thu, 17 Sep 2020 12:42:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v4 4/8] staging: hikey9xx: phy-hi3670-usb3: use a consistent
 namespace
Date: Thu, 17 Sep 2020 12:42:08 +0200
Message-Id: <0a2b7d1d1779551be604532a9959237fd3513971.1600338981.git.mchehab+huawei@kernel.org>
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

Rename hikey970 to hi3670, in order to use a namespace
similar to hi3660 driver.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 98 +++++++++++-----------
 1 file changed, 49 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index 1d4caf7a2aaf..fd679b39185a 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -130,7 +130,7 @@
 #define TX_VBOOST_LVL_START		(6)
 #define TX_VBOOST_LVL_ENABLE		BIT(9)
 
-struct kirin970_priv {
+struct hi3670_priv {
 	struct device *dev;
 	struct regmap *peri_crg;
 	struct regmap *pctrl;
@@ -145,7 +145,7 @@ struct kirin970_priv {
 	u32 usb31misc_offset;
 };
 
-static int kirin970_phy_cr_clk(struct regmap *usb31misc)
+static int hi3670_phy_cr_clk(struct regmap *usb31misc)
 {
 	int ret;
 
@@ -162,13 +162,13 @@ static int kirin970_phy_cr_clk(struct regmap *usb31misc)
 	return ret;
 }
 
-static int kirin970_phy_cr_set_sel(struct regmap *usb31misc)
+static int hi3670_phy_cr_set_sel(struct regmap *usb31misc)
 {
 	return regmap_update_bits(usb31misc, USB_MISC_CFG54,
 			CFG54_USB31PHY_CR_SEL, CFG54_USB31PHY_CR_SEL);
 }
 
-static int kirin970_phy_cr_start(struct regmap *usb31misc, int direction)
+static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
 {
 	int ret;
 
@@ -182,7 +182,7 @@ static int kirin970_phy_cr_start(struct regmap *usb31misc, int direction)
 	if (ret)
 		return ret;
 
-	ret = kirin970_phy_cr_clk(usb31misc);
+	ret = hi3670_phy_cr_clk(usb31misc);
 	if (ret)
 		return ret;
 
@@ -192,7 +192,7 @@ static int kirin970_phy_cr_start(struct regmap *usb31misc, int direction)
 	return ret;
 }
 
-static int kirin970_phy_cr_wait_ack(struct regmap *usb31misc)
+static int hi3670_phy_cr_wait_ack(struct regmap *usb31misc)
 {
 	u32 reg;
 	int retry = 100000;
@@ -205,7 +205,7 @@ static int kirin970_phy_cr_wait_ack(struct regmap *usb31misc)
 		if ((reg & CFG54_USB31PHY_CR_ACK) == CFG54_USB31PHY_CR_ACK)
 			return 0;
 
-		ret = kirin970_phy_cr_clk(usb31misc);
+		ret = hi3670_phy_cr_clk(usb31misc);
 		if (ret)
 			return ret;
 	}
@@ -213,7 +213,7 @@ static int kirin970_phy_cr_wait_ack(struct regmap *usb31misc)
 	return -ETIMEDOUT;
 }
 
-static int kirin970_phy_cr_set_addr(struct regmap *usb31misc, u32 addr)
+static int hi3670_phy_cr_set_addr(struct regmap *usb31misc, u32 addr)
 {
 	u32 reg;
 	int ret;
@@ -230,31 +230,31 @@ static int kirin970_phy_cr_set_addr(struct regmap *usb31misc, u32 addr)
 	return ret;
 }
 
-static int kirin970_phy_cr_read(struct regmap *usb31misc, u32 addr, u32 *val)
+static int hi3670_phy_cr_read(struct regmap *usb31misc, u32 addr, u32 *val)
 {
 	int reg;
 	int i;
 	int ret;
 
 	for (i = 0; i < 100; i++) {
-		ret = kirin970_phy_cr_clk(usb31misc);
+		ret = hi3670_phy_cr_clk(usb31misc);
 		if (ret)
 			return ret;
 	}
 
-	ret = kirin970_phy_cr_set_sel(usb31misc);
+	ret = hi3670_phy_cr_set_sel(usb31misc);
 	if (ret)
 		return ret;
 
-	ret = kirin970_phy_cr_set_addr(usb31misc, addr);
+	ret = hi3670_phy_cr_set_addr(usb31misc, addr);
 	if (ret)
 		return ret;
 
-	ret = kirin970_phy_cr_start(usb31misc, 0);
+	ret = hi3670_phy_cr_start(usb31misc, 0);
 	if (ret)
 		return ret;
 
-	ret = kirin970_phy_cr_wait_ack(usb31misc);
+	ret = hi3670_phy_cr_wait_ack(usb31misc);
 	if (ret)
 		return ret;
 
@@ -268,22 +268,22 @@ static int kirin970_phy_cr_read(struct regmap *usb31misc, u32 addr, u32 *val)
 	return 0;
 }
 
-static int kirin970_phy_cr_write(struct regmap *usb31misc, u32 addr, u32 val)
+static int hi3670_phy_cr_write(struct regmap *usb31misc, u32 addr, u32 val)
 {
 	int i;
 	int ret;
 
 	for (i = 0; i < 100; i++) {
-		ret = kirin970_phy_cr_clk(usb31misc);
+		ret = hi3670_phy_cr_clk(usb31misc);
 		if (ret)
 			return ret;
 	}
 
-	ret = kirin970_phy_cr_set_sel(usb31misc);
+	ret = hi3670_phy_cr_set_sel(usb31misc);
 	if (ret)
 		return ret;
 
-	ret = kirin970_phy_cr_set_addr(usb31misc, addr);
+	ret = hi3670_phy_cr_set_addr(usb31misc, addr);
 	if (ret)
 		return ret;
 
@@ -292,16 +292,16 @@ static int kirin970_phy_cr_write(struct regmap *usb31misc, u32 addr, u32 val)
 	if (ret)
 		return ret;
 
-	ret = kirin970_phy_cr_start(usb31misc, 1);
+	ret = hi3670_phy_cr_start(usb31misc, 1);
 	if (ret)
 		return ret;
 
-	ret = kirin970_phy_cr_wait_ack(usb31misc);
+	ret = hi3670_phy_cr_wait_ack(usb31misc);
 
 	return ret;
 }
 
-static int kirin970_phy_set_params(struct kirin970_priv *priv)
+static int hi3670_phy_set_params(struct hi3670_priv *priv)
 {
 	u32 reg;
 	int ret;
@@ -315,7 +315,7 @@ static int kirin970_phy_set_params(struct kirin970_priv *priv)
 	}
 
 	while (retry-- > 0) {
-		ret = kirin970_phy_cr_read(priv->usb31misc,
+		ret = hi3670_phy_cr_read(priv->usb31misc,
 				TX_VBOOST_LVL_REG, &reg);
 		if (!ret)
 			break;
@@ -329,14 +329,14 @@ static int kirin970_phy_set_params(struct kirin970_priv *priv)
 
 	reg |= (TX_VBOOST_LVL_ENABLE |
 			(priv->tx_vboost_lvl << TX_VBOOST_LVL_START));
-	ret = kirin970_phy_cr_write(priv->usb31misc, TX_VBOOST_LVL_REG, reg);
+	ret = hi3670_phy_cr_write(priv->usb31misc, TX_VBOOST_LVL_REG, reg);
 	if (ret)
 		dev_err(priv->dev, "write TX_VBOOST_LVL_REG failed\n");
 
 	return ret;
 }
 
-static int kirin970_is_abbclk_seleted(struct kirin970_priv *priv)
+static int hi3670_is_abbclk_seleted(struct hi3670_priv *priv)
 {
 	u32 reg;
 
@@ -356,12 +356,12 @@ static int kirin970_is_abbclk_seleted(struct kirin970_priv *priv)
 	return 0;
 }
 
-static int kirin970_config_phy_clock(struct kirin970_priv *priv)
+static int hi3670_config_phy_clock(struct hi3670_priv *priv)
 {
 	u32 val, mask;
 	int ret;
 
-	if (kirin970_is_abbclk_seleted(priv)) {
+	if (hi3670_is_abbclk_seleted(priv)) {
 		/* usb refclk iso disable */
 		ret = regmap_write(priv->peri_crg, PERI_CRG_ISODIS,
 				USB_REFCLK_ISO_EN);
@@ -427,7 +427,7 @@ static int kirin970_config_phy_clock(struct kirin970_priv *priv)
 	return ret;
 }
 
-static int kirin970_config_tca(struct kirin970_priv *priv)
+static int hi3670_config_tca(struct hi3670_priv *priv)
 {
 	u32 val, mask;
 	int ret;
@@ -477,9 +477,9 @@ static int kirin970_config_tca(struct kirin970_priv *priv)
 	return ret;
 }
 
-static int kirin970_phy_init(struct phy *phy)
+static int hi3670_phy_init(struct phy *phy)
 {
-	struct kirin970_priv *priv = phy_get_drvdata(phy);
+	struct hi3670_priv *priv = phy_get_drvdata(phy);
 	u32 val;
 	int ret;
 
@@ -490,7 +490,7 @@ static int kirin970_phy_init(struct phy *phy)
 	if (ret)
 		goto out;
 
-	ret = kirin970_config_phy_clock(priv);
+	ret = hi3670_config_phy_clock(priv);
 	if (ret)
 		goto out;
 
@@ -522,7 +522,7 @@ static int kirin970_phy_init(struct phy *phy)
 	if (ret)
 		goto out;
 
-	ret = kirin970_config_tca(priv);
+	ret = hi3670_config_tca(priv);
 	if (ret)
 		goto out;
 
@@ -554,7 +554,7 @@ static int kirin970_phy_init(struct phy *phy)
 
 	udelay(100);
 
-	ret = kirin970_phy_set_params(priv);
+	ret = hi3670_phy_set_params(priv);
 	if (ret)
 		goto out;
 
@@ -564,9 +564,9 @@ static int kirin970_phy_init(struct phy *phy)
 	return ret;
 }
 
-static int kirin970_phy_exit(struct phy *phy)
+static int hi3670_phy_exit(struct phy *phy)
 {
-	struct kirin970_priv *priv = phy_get_drvdata(phy);
+	struct hi3670_priv *priv = phy_get_drvdata(phy);
 	u32 mask;
 	int ret;
 
@@ -576,7 +576,7 @@ static int kirin970_phy_exit(struct phy *phy)
 	if (ret)
 		goto out;
 
-	if (kirin970_is_abbclk_seleted(priv)) {
+	if (hi3670_is_abbclk_seleted(priv)) {
 		/* disable usb_tcxo_en */
 		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
 				USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START);
@@ -593,18 +593,18 @@ static int kirin970_phy_exit(struct phy *phy)
 	return ret;
 }
 
-static struct phy_ops kirin970_phy_ops = {
-	.init		= kirin970_phy_init,
-	.exit		= kirin970_phy_exit,
+static struct phy_ops hi3670_phy_ops = {
+	.init		= hi3670_phy_init,
+	.exit		= hi3670_phy_exit,
 	.owner		= THIS_MODULE,
 };
 
-static int kirin970_phy_probe(struct platform_device *pdev)
+static int hi3670_phy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
 	struct device *dev = &pdev->dev;
 	struct phy *phy;
-	struct kirin970_priv *priv;
+	struct hi3670_priv *priv;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -647,7 +647,7 @@ static int kirin970_phy_probe(struct platform_device *pdev)
 				&(priv->tx_vboost_lvl)))
 		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_VBOOST;
 
-	phy = devm_phy_create(dev, NULL, &kirin970_phy_ops);
+	phy = devm_phy_create(dev, NULL, &hi3670_phy_ops);
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
 
@@ -656,20 +656,20 @@ static int kirin970_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
-static const struct of_device_id kirin970_phy_of_match[] = {
-	{.compatible = "hisilicon,kirin970-usb-phy",},
+static const struct of_device_id hi3670_phy_of_match[] = {
+	{.compatible = "hisilicon,hi3670-usb-phy",},
 	{ },
 };
-MODULE_DEVICE_TABLE(of, kirin970_phy_of_match);
+MODULE_DEVICE_TABLE(of, hi3670_phy_of_match);
 
-static struct platform_driver kirin970_phy_driver = {
-	.probe	= kirin970_phy_probe,
+static struct platform_driver hi3670_phy_driver = {
+	.probe	= hi3670_phy_probe,
 	.driver = {
-		.name	= "kirin970-usb-phy",
-		.of_match_table	= kirin970_phy_of_match,
+		.name	= "hi3670-usb-phy",
+		.of_match_table	= hi3670_phy_of_match,
 	}
 };
-module_platform_driver(kirin970_phy_driver);
+module_platform_driver(hi3670_phy_driver);
 
 MODULE_AUTHOR("Yu Chen <chenyu56@huawei.com>");
 MODULE_LICENSE("GPL v2");
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
