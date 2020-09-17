Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F317626D950
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:42:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 664CC875E7;
	Thu, 17 Sep 2020 10:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id McWMI8UUGsQm; Thu, 17 Sep 2020 10:42:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4D92875EF;
	Thu, 17 Sep 2020 10:42:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E986B1BF9B2
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E691220010
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EkeMrAcnVJQt for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:42:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CB98620409
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0272C221E7;
 Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600339342;
 bh=E40MpC3V5ULBBR6kccq/aBanaVIX54OYSFumXIsS/8I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q6S4CQJI2//4pSuj+zucaAe/VfulICrqYK/cjhJb7IMC9olycbu3DGZExR/FEotj2
 m2IwNqel2w1ZF/S8A/YQ9t22GbtxZSOHhxz57gLsjSMizebmAd7fyKMQEJTzbEbr8Z
 U6FWgl3i4B0A6TtooD7mGlxe/C64ZaUzo8ouTpAU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kIrMp-005WZW-N9; Thu, 17 Sep 2020 12:42:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v4 3/8] staging: hikey9xx: phy-hi3670-usb3: fix some issues at
 the init code
Date: Thu, 17 Sep 2020 12:42:07 +0200
Message-Id: <5080774c68784afed1183cb54f540350e0551b07.1600338981.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Yu Chen <chenyu56@huawei.com>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Yu Chen <chenyu56@huawei.com>

There are some problems at the initialization part of this phy.
Solve them.

Signed-off-by: Yu Chen <chenyu56@huawei.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 70 ++++++++++------------
 1 file changed, 32 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index 4e04ac97728d..1d4caf7a2aaf 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -63,6 +63,7 @@
 #define TCA_INTR_STS			(0x208)
 #define TCA_GCFG			(0x210)
 #define TCA_TCPC			(0x214)
+#define TCA_SYSMODE_CFG			(0x218)
 #define TCA_VBUS_CTRL			(0x240)
 
 #define CTRL0_USB3_VBUSVLD		BIT(7)
@@ -109,12 +110,16 @@
 #define CLK_RST_SUSPEND_CLK_EN		BIT(0)
 
 #define GCFG_ROLE_HSTDEV		BIT(4)
+#define GCFG_OP_MODE			(3 << 0)
+#define GCFG_OP_MODE_CTRL_SYNC_MODE	BIT(0)
 
 #define TCPC_VALID			BIT(4)
 #define TCPC_LOW_POWER_EN		BIT(3)
 #define TCPC_MUX_CONTROL_MASK		(3 << 0)
 #define TCPC_MUX_CONTROL_USB31		(1 << 0)
 
+#define SYSMODE_CFG_TYPEC_DISABLE	BIT(3)
+
 #define VBUS_CTRL_POWERPRESENT_OVERRD	(3 << 2)
 #define VBUS_CTRL_VBUSVALID_OVERRD	(3 << 0)
 
@@ -363,6 +368,11 @@ static int kirin970_config_phy_clock(struct kirin970_priv *priv)
 		if (ret)
 			goto out;
 
+		/* enable usb_tcxo_en */
+		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
+				USB_TCXO_EN |
+				(USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START));
+
 		/* select usbphy clk from abb */
 		mask = SC_CLK_USB3PHY_3MUX1_SEL;
 		ret = regmap_update_bits(priv->pctrl,
@@ -437,7 +447,13 @@ static int kirin970_config_tca(struct kirin970_priv *priv)
 		goto out;
 
 	ret = regmap_update_bits(priv->usb31misc, TCA_GCFG,
-			GCFG_ROLE_HSTDEV, GCFG_ROLE_HSTDEV);
+			GCFG_ROLE_HSTDEV | GCFG_OP_MODE,
+			GCFG_ROLE_HSTDEV | GCFG_OP_MODE_CTRL_SYNC_MODE);
+	if (ret)
+		goto out;
+
+	ret = regmap_update_bits(priv->usb31misc, TCA_SYSMODE_CFG,
+			SYSMODE_CFG_TYPEC_DISABLE, 0);
 	if (ret)
 		goto out;
 
@@ -461,18 +477,15 @@ static int kirin970_config_tca(struct kirin970_priv *priv)
 	return ret;
 }
 
-static int kirin970_phy_exit(struct phy *phy);
-
 static int kirin970_phy_init(struct phy *phy)
 {
 	struct kirin970_priv *priv = phy_get_drvdata(phy);
 	u32 val;
 	int ret;
 
-	kirin970_phy_exit(phy);
-	dev_info(priv->dev, "%s in\n", __func__);
 	/* assert controller */
-	val = CFGA0_VAUX_RESET | CFGA0_USB31C_RESET;
+	val = CFGA0_VAUX_RESET | CFGA0_USB31C_RESET |
+		CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
 	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, 0);
 	if (ret)
 		goto out;
@@ -493,6 +506,14 @@ static int kirin970_phy_init(struct phy *phy)
 	if (ret)
 		goto out;
 
+	/* Deassert phy */
+	val = CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, val);
+	if (ret)
+		goto out;
+
+	udelay(100);
+
 	/* Tell the PHY power is stable */
 	val = CFG54_USB3_PHY0_ANA_PWR_EN | CFG54_PHY0_PCS_PWR_STABLE |
 		CFG54_PHY0_PMA_PWR_STABLE;
@@ -512,14 +533,6 @@ static int kirin970_phy_init(struct phy *phy)
 	if (ret)
 		goto out;
 
-	/* Deassert phy */
-	val = CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, val);
-	if (ret)
-		goto out;
-
-	udelay(100);
-
 	/* Deassert controller */
 	val = CFGA0_VAUX_RESET | CFGA0_USB31C_RESET;
 	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, val);
@@ -545,29 +558,6 @@ static int kirin970_phy_init(struct phy *phy)
 	if (ret)
 		goto out;
 
-	{
-		ret = regmap_read(priv->peri_crg, 0x4c,
-				&val);
-		if (!ret)
-			dev_info(priv->dev, "peri_crg 0x4c %x\n", val);
-		ret = regmap_read(priv->peri_crg, 0x404,
-				&val);
-		if (!ret)
-			dev_info(priv->dev, "peri_crg 0x404 %x\n", val);
-		ret = regmap_read(priv->peri_crg, 0xc,
-				&val);
-		if (!ret)
-			dev_info(priv->dev, "peri_crg 0xc %x\n", val);
-		ret = regmap_read(priv->peri_crg, 0xac,
-				&val);
-		if (!ret)
-			dev_info(priv->dev, "peri_crg 0xac %x\n", val);
-		ret = regmap_read(priv->pctrl, 0x10,
-				&val);
-		if (!ret)
-			dev_info(priv->dev, "pctrl 0x10 %x\n", val);
-	}
-
 	return 0;
 out:
 	dev_err(priv->dev, "failed to init phy ret: %d\n", ret);
@@ -586,7 +576,11 @@ static int kirin970_phy_exit(struct phy *phy)
 	if (ret)
 		goto out;
 
-	if (!kirin970_is_abbclk_seleted(priv)) {
+	if (kirin970_is_abbclk_seleted(priv)) {
+		/* disable usb_tcxo_en */
+		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
+				USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START);
+	} else {
 		ret = regmap_write(priv->peri_crg, PERI_CRG_PERDIS6,
 				GT_CLK_USB2PHY_REF);
 		if (ret)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
