Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B25FF185E5C
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Mar 2020 17:02:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E82D42CDAC;
	Sun, 15 Mar 2020 16:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fgSxz93JI+NM; Sun, 15 Mar 2020 16:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A0A092C7D3;
	Sun, 15 Mar 2020 16:02:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 430F51BF47E
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 16:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3885327B46
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 16:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 06DQ6ZsiWnQZ
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 16:01:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id C4AD02710E
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 16:01:58 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z15so18140576wrl.1
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 09:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FHQU0PED5zLypbk5XHOqRMt2WOwBNy/0hjrpLvLmKvA=;
 b=h1NBqBgIzqE88hSIlfW9N14UgArRyPSd4wPNITHV+vjdike7vhqUhtizno7vbzu2La
 dcLeweekjr1Zi82gt1fnin7jyDv9yqF1/SLAjmJYxtD9JF54LIR6uucOpnDTTSFVK1i8
 TfyGaEIU2kv5D9iY7ryNtKBe7eCaOKPy9w75utFA7flPAy+PRO20wWS38K0cW+m6YhtU
 m591f/b4tXXGmXuwoR99YsBqmBKIrCFUusjec/LbQ47vURhlNrpY2xOYREXyTvPvPoTZ
 kv+0RatFehEYqRBnX1PalBTEnxwh4xHEH4MeGRvxvejq6eqpEB9vxdNEeLtG31v/9sO8
 NrfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FHQU0PED5zLypbk5XHOqRMt2WOwBNy/0hjrpLvLmKvA=;
 b=SJiukq/H8xWBjKpIH5KB2+n+9+cjz/o7WBlq8vdXh2U/P5U3Oig5do8mOu+f4OcX1r
 gBYZMMxNLbeUrtxCELFqLS3deMc4yii1lVDlCbvVUUME70Ncda6kY6XEq9m/M5TeSPUw
 5T6FdYHHq1IZNEJ7/6WJ6lDOaeO0f1wC6z42cM7m3LZsiI96uEnYgcOiuA81dMVTvGBG
 ONK/X0iyZtRnNvdK5Sl2g6FRIVt5f1ct6OfvDTa8Cu5S7DVG+s5NXgRZzepKiMg9y4hp
 BkUNWQouwCtuPkpdU1kG8Ns5H9urJWYMDMmYh0hFSumWHZEsm1rDcancGjcC688Wkyfv
 gHhQ==
X-Gm-Message-State: ANhLgQ1h2Hgp6F/Rv9XSiXC3ePSyECxqHuVoBfgaQoeaNmyD3x3JZYUj
 T6d/gUl9hVPoQR/Ztg2WdRM=
X-Google-Smtp-Source: ADFU+vvK+L2+X7+VJ2gtWpexM9RKWQF2EXFWzsv5pwT2CuEVW4DkeqyutiZ/02bY3RwQ0HjCcOFRNg==
X-Received: by 2002:a5d:69c7:: with SMTP id s7mr29992232wrw.165.1584288117058; 
 Sun, 15 Mar 2020 09:01:57 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id q4sm44942964wro.56.2020.03.15.09.01.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 15 Mar 2020 09:01:56 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci-phy: add 'mt7621_phy_rmw' to simplify code
Date: Sun, 15 Mar 2020 17:01:54 +0100
Message-Id: <20200315160154.10292-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to simplify driver code and decrease a bit LOC add new
function 'mt7621_phy_rmw' where clear and set bits are passed as
arguments.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../staging/mt7621-pci-phy/pci-mt7621-phy.c   | 158 ++++++++----------
 1 file changed, 71 insertions(+), 87 deletions(-)

diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
index d2a07f145143..648f0c8df003 100644
--- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
+++ b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
@@ -120,17 +120,25 @@ static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
 	regmap_write(phy->regmap, reg, val);
 }
 
+static inline void mt7621_phy_rmw(struct mt7621_pci_phy *phy,
+				  u32 reg, u32 clr, u32 set)
+{
+	u32 val = phy_read(phy, reg);
+
+	val &= ~clr;
+	val |= set;
+	phy_write(phy, val, reg);
+}
+
 static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy,
 				   struct mt7621_pci_phy_instance *instance)
 {
 	u32 offset = (instance->index != 1) ?
 		RG_PE1_PIPE_REG : RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH;
-	u32 reg;
 
-	reg = phy_read(phy, offset);
-	reg &= ~(RG_PE1_PIPE_RST | RG_PE1_PIPE_CMD_FRC);
-	reg |= (RG_PE1_PIPE_RST | RG_PE1_PIPE_CMD_FRC);
-	phy_write(phy, reg, offset);
+	mt7621_phy_rmw(phy, offset,
+		       RG_PE1_PIPE_RST | RG_PE1_PIPE_CMD_FRC,
+		       RG_PE1_PIPE_RST | RG_PE1_PIPE_CMD_FRC);
 }
 
 static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy,
@@ -139,97 +147,77 @@ static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy,
 	struct device *dev = phy->dev;
 	u32 reg = rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0);
 	u32 offset;
-	u32 val;
 
 	reg = (reg >> 6) & 0x7;
 	/* Set PCIe Port PHY to disable SSC */
 	/* Debug Xtal Type */
-	val = phy_read(phy, RG_PE1_FRC_H_XTAL_REG);
-	val &= ~(RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE);
-	val |= RG_PE1_FRC_H_XTAL_TYPE;
-	val |= RG_PE1_H_XTAL_TYPE_VAL(0x00);
-	phy_write(phy, val, RG_PE1_FRC_H_XTAL_REG);
+	mt7621_phy_rmw(phy, RG_PE1_FRC_H_XTAL_REG,
+		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE,
+		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE_VAL(0x00));
 
 	/* disable port */
 	offset = (instance->index != 1) ?
 		RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
-	val = phy_read(phy, offset);
-	val &= ~(RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
-	val |= RG_PE1_FRC_PHY_EN;
-	phy_write(phy, val, offset);
-
-	/* Set Pre-divider ratio (for host mode) */
-	val = phy_read(phy, RG_PE1_H_PLL_REG);
-	val &= ~(RG_PE1_H_PLL_PREDIV);
+	mt7621_phy_rmw(phy, offset,
+		       RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
 
 	if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
-		val |= RG_PE1_H_PLL_PREDIV_VAL(0x01);
-		phy_write(phy, val, RG_PE1_H_PLL_REG);
+		/* Set Pre-divider ratio (for host mode) */
+		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
+			       RG_PE1_H_PLL_PREDIV,
+			       RG_PE1_H_PLL_PREDIV_VAL(0x01));
 		dev_info(dev, "Xtal is 40MHz\n");
-	} else { /* 25MHz | 20MHz Xtal */
-		val |= RG_PE1_H_PLL_PREDIV_VAL(0x00);
-		phy_write(phy, val, RG_PE1_H_PLL_REG);
-		if (reg >= 6) {
-			dev_info(dev, "Xtal is 25MHz\n");
-
-			/* Select feedback clock */
-			val = phy_read(phy, RG_PE1_H_PLL_FBKSEL_REG);
-			val &= ~(RG_PE1_H_PLL_FBKSEL);
-			val |= RG_PE1_H_PLL_FBKSEL_VAL(0x01);
-			phy_write(phy, val, RG_PE1_H_PLL_FBKSEL_REG);
-
-			/* DDS NCPO PCW (for host mode) */
-			val = phy_read(phy, RG_PE1_H_LCDDS_SSC_PRD_REG);
-			val &= ~(RG_PE1_H_LCDDS_SSC_PRD);
-			val |= RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18000000);
-			phy_write(phy, val, RG_PE1_H_LCDDS_SSC_PRD_REG);
-
-			/* DDS SSC dither period control */
-			val = phy_read(phy, RG_PE1_H_LCDDS_SSC_PRD_REG);
-			val &= ~(RG_PE1_H_LCDDS_SSC_PRD);
-			val |= RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18d);
-			phy_write(phy, val, RG_PE1_H_LCDDS_SSC_PRD_REG);
-
-			/* DDS SSC dither amplitude control */
-			val = phy_read(phy, RG_PE1_H_LCDDS_SSC_DELTA_REG);
-			val &= ~(RG_PE1_H_LCDDS_SSC_DELTA |
-				 RG_PE1_H_LCDDS_SSC_DELTA1);
-			val |= RG_PE1_H_LCDDS_SSC_DELTA_VAL(0x4a);
-			val |= RG_PE1_H_LCDDS_SSC_DELTA1_VAL(0x4a);
-			phy_write(phy, val, RG_PE1_H_LCDDS_SSC_DELTA_REG);
-		} else {
-			dev_info(dev, "Xtal is 20MHz\n");
-		}
+	} else if (reg >= 6) { /* 25MHz Xal */
+		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
+			       RG_PE1_H_PLL_PREDIV,
+			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
+		/* Select feedback clock */
+		mt7621_phy_rmw(phy, RG_PE1_H_PLL_FBKSEL_REG,
+			       RG_PE1_H_PLL_FBKSEL,
+			       RG_PE1_H_PLL_FBKSEL_VAL(0x01));
+		/* DDS NCPO PCW (for host mode) */
+		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
+			       RG_PE1_H_LCDDS_SSC_PRD,
+			       RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18000000));
+		/* DDS SSC dither period control */
+		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
+			       RG_PE1_H_LCDDS_SSC_PRD,
+			       RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18d));
+		/* DDS SSC dither amplitude control */
+		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_DELTA_REG,
+			       RG_PE1_H_LCDDS_SSC_DELTA |
+			       RG_PE1_H_LCDDS_SSC_DELTA1,
+			       RG_PE1_H_LCDDS_SSC_DELTA_VAL(0x4a) |
+			       RG_PE1_H_LCDDS_SSC_DELTA1_VAL(0x4a));
+		dev_info(dev, "Xtal is 25MHz\n");
+	} else { /* 20MHz Xtal */
+		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
+			       RG_PE1_H_PLL_PREDIV,
+			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
+
+		dev_info(dev, "Xtal is 20MHz\n");
 	}
 
 	/* DDS clock inversion */
-	val = phy_read(phy, RG_PE1_LCDDS_CLK_PH_INV_REG);
-	val &= ~(RG_PE1_LCDDS_CLK_PH_INV);
-	val |= RG_PE1_LCDDS_CLK_PH_INV;
-	phy_write(phy, val, RG_PE1_LCDDS_CLK_PH_INV_REG);
+	mt7621_phy_rmw(phy, RG_PE1_LCDDS_CLK_PH_INV_REG,
+		       RG_PE1_LCDDS_CLK_PH_INV, RG_PE1_LCDDS_CLK_PH_INV);
 
 	/* Set PLL bits */
-	val = phy_read(phy, RG_PE1_H_PLL_REG);
-	val &= ~(RG_PE1_H_PLL_BC | RG_PE1_H_PLL_BP | RG_PE1_H_PLL_IR |
-		 RG_PE1_H_PLL_IC | RG_PE1_PLL_DIVEN);
-	val |= RG_PE1_H_PLL_BC_VAL(0x02);
-	val |= RG_PE1_H_PLL_BP_VAL(0x06);
-	val |= RG_PE1_H_PLL_IR_VAL(0x02);
-	val |= RG_PE1_H_PLL_IC_VAL(0x01);
-	val |= RG_PE1_PLL_DIVEN_VAL(0x02);
-	phy_write(phy, val, RG_PE1_H_PLL_REG);
-
-	val = phy_read(phy, RG_PE1_H_PLL_BR_REG);
-	val &= ~(RG_PE1_H_PLL_BR);
-	val |= RG_PE1_H_PLL_BR_VAL(0x00);
-	phy_write(phy, val, RG_PE1_H_PLL_BR_REG);
+	mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
+		       RG_PE1_H_PLL_BC | RG_PE1_H_PLL_BP | RG_PE1_H_PLL_IR |
+		       RG_PE1_H_PLL_IC | RG_PE1_PLL_DIVEN,
+		       RG_PE1_H_PLL_BC_VAL(0x02) | RG_PE1_H_PLL_BP_VAL(0x06) |
+		       RG_PE1_H_PLL_IR_VAL(0x02) | RG_PE1_H_PLL_IC_VAL(0x01) |
+		       RG_PE1_PLL_DIVEN_VAL(0x02));
+
+	mt7621_phy_rmw(phy, RG_PE1_H_PLL_BR_REG,
+		       RG_PE1_H_PLL_BR, RG_PE1_H_PLL_BR_VAL(0x00));
 
 	if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
 		/* set force mode enable of da_pe1_mstckdiv */
-		val = phy_read(phy, RG_PE1_MSTCKDIV_REG);
-		val &= ~(RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV);
-		val |= (RG_PE1_MSTCKDIV_VAL(0x01) | RG_PE1_FRC_MSTCKDIV);
-		phy_write(phy, val, RG_PE1_MSTCKDIV_REG);
+		mt7621_phy_rmw(phy, RG_PE1_MSTCKDIV_REG,
+			       RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV,
+			       RG_PE1_MSTCKDIV_VAL(0x01) | RG_PE1_FRC_MSTCKDIV);
 	}
 }
 
@@ -252,13 +240,11 @@ static int mt7621_pci_phy_power_on(struct phy *phy)
 	struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
 	u32 offset = (instance->index != 1) ?
 		RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
-	u32 val;
 
 	/* Enable PHY and disable force mode */
-	val = phy_read(mphy, offset);
-	val &= ~(RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
-	val |= (RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
-	phy_write(mphy, val, offset);
+	mt7621_phy_rmw(mphy, offset,
+		       RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN,
+		       RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
 
 	return 0;
 }
@@ -269,13 +255,11 @@ static int mt7621_pci_phy_power_off(struct phy *phy)
 	struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
 	u32 offset = (instance->index != 1) ?
 		RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
-	u32 val;
 
 	/* Disable PHY */
-	val = phy_read(mphy, offset);
-	val &= ~(RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
-	val |= RG_PE1_FRC_PHY_EN;
-	phy_write(mphy, val, offset);
+	mt7621_phy_rmw(mphy, offset,
+		       RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN,
+		       RG_PE1_FRC_PHY_EN);
 
 	return 0;
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
