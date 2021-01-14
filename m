Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 553B32F67BC
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Jan 2021 18:36:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B829E20467;
	Thu, 14 Jan 2021 17:35:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8o+kReT1BBY; Thu, 14 Jan 2021 17:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7CF6B20405;
	Thu, 14 Jan 2021 17:35:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A4921BF9BD
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 17:35:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 56B7286A9D
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 17:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6VtTKyCCLShR for <devel@linuxdriverproject.org>;
 Thu, 14 Jan 2021 17:35:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6AED986A98
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 17:35:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0BD3C23B44;
 Thu, 14 Jan 2021 17:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610645748;
 bh=j5TNAkUnCDVkwUohdOLjCc2ujRXRd6fxt6gLz8EHDEE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PlKBIabHU+4pvfT1TXgBcMiV5fJ0uBASsuVNW/DFmxt1qIj82FsjoHkIkzY91gICw
 49p1s3AIiuD5NakjLwn6lHz1Z6hbVR3rSt8zDd9M08RN1spO9Cjvrgecg5/vEEt3JG
 uh9vRPUwQ78Lj/0c9eNy8RtSblSkeBcFX5VchHMqNvdj2OWrnogi53t2K4+gJtQfXg
 2+0Bj8UjYsOuiM6yIRulg79ji6V5dc6ZdiVb0R/9x8UWDJ6l0I1Pxap3+3hoeSAXTY
 G8P7Ggki84soKo4d1B8INhk4l8KzI+8k+m495ql12FewG1lhJn5UVkgVSm6kUaIdu5
 mRwfaxOivLmig==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l06XB-00FQtt-GJ; Thu, 14 Jan 2021 18:35:45 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v2 1/4] staging: hikey9xx: phy-hi3670-usb3.c: use bitfield
 macros
Date: Thu, 14 Jan 2021 18:35:41 +0100
Message-Id: <01eae5ee20eb4a114cccdb637fd2a037b3417479.1610645385.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1610645385.git.mchehab+huawei@kernel.org>
References: <cover.1610645385.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup the bitfield macros by using FIELD_PREP() and GENMASK().

While here, place all hexadecimal values in lowercase.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 61 ++++++++++------------
 1 file changed, 28 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index 4fc013911a78..722cabaa9bd9 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -8,6 +8,7 @@
  * Authors: Yu Chen <chenyu56@huawei.com>
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
@@ -41,15 +42,15 @@
 #define SC_CLK_USB3PHY_3MUX1_SEL	BIT(25)
 
 #define USB3OTG_CTRL0			(0x00)
-#define USB3OTG_CTRL3			(0x0C)
+#define USB3OTG_CTRL3			(0x0c)
 #define USB3OTG_CTRL4			(0x10)
 #define USB3OTG_CTRL5			(0x14)
-#define USB3OTG_CTRL7			(0x1C)
+#define USB3OTG_CTRL7			(0x1c)
 #define USB_MISC_CFG50			(0x50)
 #define USB_MISC_CFG54			(0x54)
 #define USB_MISC_CFG58			(0x58)
-#define USB_MISC_CFG5C			(0x5C)
-#define USB_MISC_CFGA0			(0xA0)
+#define USB_MISC_CFG5C			(0x5c)
+#define USB_MISC_CFGA0			(0xa0)
 #define TCA_CLK_RST			(0x200)
 #define TCA_INTR_EN			(0x204)
 #define TCA_INTR_STS			(0x208)
@@ -66,14 +67,14 @@
 
 #define CTRL5_USB2_SIDDQ		BIT(0)
 
-#define CTRL7_USB2_REFCLKSEL_MASK	(3 << 3)
-#define CTRL7_USB2_REFCLKSEL_ABB	(3 << 3)
-#define CTRL7_USB2_REFCLKSEL_PAD	(2 << 3)
+#define CTRL7_USB2_REFCLKSEL_MASK	GENMASK(4, 3)
+#define CTRL7_USB2_REFCLKSEL_ABB	(BIT(4) | BIT(3))
+#define CTRL7_USB2_REFCLKSEL_PAD	BIT(4)
 
 #define CFG50_USB3_PHY_TEST_POWERDOWN	BIT(23)
 
-#define CFG54_USB31PHY_CR_ADDR_MASK	(0xFFFF)
-#define CFG54_USB31PHY_CR_ADDR_SHIFT	(16)
+#define CFG54_USB31PHY_CR_ADDR_MASK	GENMASK(31, 16)
+
 #define CFG54_USB3PHY_REF_USE_PAD	BIT(12)
 #define CFG54_PHY0_PMA_PWR_STABLE	BIT(11)
 #define CFG54_PHY0_PCS_PWR_STABLE	BIT(9)
@@ -84,8 +85,7 @@
 #define CFG54_USB31PHY_CR_CLK		BIT(2)
 #define CFG54_USB3_PHY0_ANA_PWR_EN	BIT(1)
 
-#define CFG58_USB31PHY_CR_DATA_MASK     (0xFFFF)
-#define CFG58_USB31PHY_CR_DATA_RD_START (16)
+#define CFG58_USB31PHY_CR_DATA_MASK     GENMASK(31, 16)
 
 #define CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN	BIT(1)
 
@@ -102,20 +102,20 @@
 #define CLK_RST_SUSPEND_CLK_EN		BIT(0)
 
 #define GCFG_ROLE_HSTDEV		BIT(4)
-#define GCFG_OP_MODE			(3 << 0)
+#define GCFG_OP_MODE			GENMASK(1, 0)
 #define GCFG_OP_MODE_CTRL_SYNC_MODE	BIT(0)
 
 #define TCPC_VALID			BIT(4)
 #define TCPC_LOW_POWER_EN		BIT(3)
-#define TCPC_MUX_CONTROL_MASK		(3 << 0)
+#define TCPC_MUX_CONTROL_MASK		GENMASK(1, 0)
 #define TCPC_MUX_CONTROL_USB31		BIT(0)
 
 #define SYSMODE_CFG_TYPEC_DISABLE	BIT(3)
 
-#define VBUS_CTRL_POWERPRESENT_OVERRD	(3 << 2)
-#define VBUS_CTRL_VBUSVALID_OVERRD	(3 << 0)
+#define VBUS_CTRL_POWERPRESENT_OVERRD	GENMASK(3, 2)
+#define VBUS_CTRL_VBUSVALID_OVERRD	GENMASK(1, 0)
 
-#define KIRIN970_USB_DEFAULT_PHY_PARAM	(0xFDFEE4)
+#define KIRIN970_USB_DEFAULT_PHY_PARAM	(0xfdfee4)
 #define KIRIN970_USB_DEFAULT_PHY_VBOOST	(0x5)
 
 #define TX_VBOOST_LVL_REG		(0xf)
@@ -162,16 +162,14 @@ static int hi3670_phy_cr_set_sel(struct regmap *usb31misc)
 
 static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
 {
-	int ret;
+	int ret, reg;
 
 	if (direction)
-		ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-					 CFG54_USB31PHY_CR_WR_EN,
-					 CFG54_USB31PHY_CR_WR_EN);
+		reg = CFG54_USB31PHY_CR_WR_EN;
 	else
-		ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-					 CFG54_USB31PHY_CR_RD_EN,
-					 CFG54_USB31PHY_CR_RD_EN);
+		reg = CFG54_USB31PHY_CR_RD_EN;
+
+	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54, reg, reg);
 
 	if (ret)
 		return ret;
@@ -180,10 +178,8 @@ static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
 	if (ret)
 		return ret;
 
-	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-				 CFG54_USB31PHY_CR_RD_EN | CFG54_USB31PHY_CR_WR_EN, 0);
-
-	return ret;
+	return regmap_update_bits(usb31misc, USB_MISC_CFG54,
+				  CFG54_USB31PHY_CR_RD_EN | CFG54_USB31PHY_CR_WR_EN, 0);
 }
 
 static int hi3670_phy_cr_wait_ack(struct regmap *usb31misc)
@@ -216,9 +212,9 @@ static int hi3670_phy_cr_set_addr(struct regmap *usb31misc, u32 addr)
 	if (ret)
 		return ret;
 
-	reg &= ~(CFG54_USB31PHY_CR_ADDR_MASK << CFG54_USB31PHY_CR_ADDR_SHIFT);
-	reg |= ((addr & CFG54_USB31PHY_CR_ADDR_MASK) << CFG54_USB31PHY_CR_ADDR_SHIFT);
-	ret = regmap_write(usb31misc, USB_MISC_CFG54, reg);
+	reg = FIELD_PREP(CFG54_USB31PHY_CR_ADDR_MASK, addr);
+	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
+				 CFG54_USB31PHY_CR_ADDR_MASK, reg);
 
 	return ret;
 }
@@ -255,8 +251,7 @@ static int hi3670_phy_cr_read(struct regmap *usb31misc, u32 addr, u32 *val)
 	if (ret)
 		return ret;
 
-	*val = (reg >> CFG58_USB31PHY_CR_DATA_RD_START) &
-		CFG58_USB31PHY_CR_DATA_MASK;
+	*val = FIELD_GET(CFG58_USB31PHY_CR_DATA_MASK, reg);
 
 	return 0;
 }
@@ -281,7 +276,7 @@ static int hi3670_phy_cr_write(struct regmap *usb31misc, u32 addr, u32 val)
 		return ret;
 
 	ret = regmap_write(usb31misc, USB_MISC_CFG58,
-			   val & CFG58_USB31PHY_CR_DATA_MASK);
+			   FIELD_PREP(CFG58_USB31PHY_CR_DATA_MASK, val));
 	if (ret)
 		return ret;
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
