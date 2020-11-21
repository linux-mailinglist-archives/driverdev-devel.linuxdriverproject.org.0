Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5612BC061
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 16:51:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 633D02045F;
	Sat, 21 Nov 2020 15:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uBVnYcyZ1jmD; Sat, 21 Nov 2020 15:50:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BAFC220431;
	Sat, 21 Nov 2020 15:50:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B60F21BF2F9
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 15:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B271F20402
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 15:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7lyq-3oLV2U for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 15:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 35FEF20420
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 15:50:46 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id t4so1046200wrr.12
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 07:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2BiinEaG2m8ErGwARqJeGz+PRwCSINqSBXnxHAFNXJs=;
 b=PeTmMLdETxtB8p350EtwaeJk/T7VpX/NpnJp1xSH2gikRd1AeZL37g+pu/ZiCE8iLq
 VZST3lZAOQOfpzx7SP985iJv/SNnDySXTrRaxvLeniIWSz6Fp43IkpQioVDxsmP/SMMp
 IUq7SitD0pjQsodGntkG7v6X1VEjU484jt7QOjpOVuwrsL5chcZ929q1SzMwwfp6ZoMz
 mx5gOo9Jzw4nBjj368fR2q+KQKRt7by/quRCWJGOMyirnc5G0Gv6w9T+NAWfC4egRka2
 xxlYnkTX9ZjOB7aQrxWDvYDPlQC0ek0ADlBxSZDRT/yf+x0LtUyVZtEf8s3vwMbeMxXu
 Cwlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2BiinEaG2m8ErGwARqJeGz+PRwCSINqSBXnxHAFNXJs=;
 b=LhjA0XlOsBm5UJPpS+aJ/VaMj6Nl193ZLVWRwWTRbX1B0O7+R5kCahtFOJu7g4eKQD
 dddgWt7qJBYEfVs5LYrROX1JQNQND9n5AfEPsM7GRtKP1Rprdy0v4q49NMup8cDNOalD
 AWLlbL6kfZVjJxQ3j57ZMA6Cbnqa54GFAJS9X+WMU4KmQmOWJlAQO4MlDSYiQ5ImShv8
 HMfN8bCJ8Q/MoxLbpyuOV15ip2wGCDvR8wAcDLaOsf3SDAKt13wdAMrqi/8oLAg4xuqN
 ti6IKYfcHYvqQbqQ8AaEJkX+ilO3h8iRZ+X5Ffmn/qGaL8IqT1kFIU+GWfckrFu5FmEe
 XPGA==
X-Gm-Message-State: AOAM531KSDGZmHm8FUxW0XacJ/83tQUko46Fmm1WxeVLFoTlzDaYInBt
 qI5pxWVb3jrCbAvlGNAK3gc=
X-Google-Smtp-Source: ABdhPJwPemlL3ylm9txQlIXHRu29hIgKXz9ED+IoCZM6cOYNNTnzaSD9w+iLbXw/oLUVgkX1AS/T6A==
X-Received: by 2002:a5d:4e07:: with SMTP id p7mr21800714wrt.63.1605973844731; 
 Sat, 21 Nov 2020 07:50:44 -0800 (PST)
Received: from localhost.localdomain
 (161.red-83-46-194.dynamicip.rima-tde.net. [83.46.194.161])
 by smtp.gmail.com with ESMTPSA id n128sm7959598wmb.46.2020.11.21.07.50.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Nov 2020 07:50:44 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH v6 4/4] staging: mt7621-pci-phy: remove driver from staging
Date: Sat, 21 Nov 2020 16:50:37 +0100
Message-Id: <20201121155037.21354-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
References: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 robh+dt@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove this driver from staging because it has been moved
into its properly place in the kernel.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/mt7621-pci-phy/Kconfig        |   8 -
 drivers/staging/mt7621-pci-phy/Makefile       |   2 -
 drivers/staging/mt7621-pci-phy/TODO           |   4 -
 .../mediatek,mt7621-pci-phy.yaml              |  36 --
 .../staging/mt7621-pci-phy/pci-mt7621-phy.c   | 373 ------------------
 7 files changed, 426 deletions(-)
 delete mode 100644 drivers/staging/mt7621-pci-phy/Kconfig
 delete mode 100644 drivers/staging/mt7621-pci-phy/Makefile
 delete mode 100644 drivers/staging/mt7621-pci-phy/TODO
 delete mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
 delete mode 100644 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 2d0310448eba..8a03ba56def5 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -94,8 +94,6 @@ source "drivers/staging/pi433/Kconfig"
 
 source "drivers/staging/mt7621-pci/Kconfig"
 
-source "drivers/staging/mt7621-pci-phy/Kconfig"
-
 source "drivers/staging/mt7621-pinctrl/Kconfig"
 
 source "drivers/staging/mt7621-dma/Kconfig"
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 757a892ab5b9..39319161301c 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -37,7 +37,6 @@ obj-$(CONFIG_GREYBUS)		+= greybus/
 obj-$(CONFIG_BCM2835_VCHIQ)	+= vc04_services/
 obj-$(CONFIG_PI433)		+= pi433/
 obj-$(CONFIG_PCI_MT7621)	+= mt7621-pci/
-obj-$(CONFIG_PCI_MT7621_PHY)	+= mt7621-pci-phy/
 obj-$(CONFIG_PINCTRL_RT2880)	+= mt7621-pinctrl/
 obj-$(CONFIG_SOC_MT7621)	+= mt7621-dma/
 obj-$(CONFIG_DMA_RALINK)	+= ralink-gdma/
diff --git a/drivers/staging/mt7621-pci-phy/Kconfig b/drivers/staging/mt7621-pci-phy/Kconfig
deleted file mode 100644
index 263e0a91c424..000000000000
--- a/drivers/staging/mt7621-pci-phy/Kconfig
+++ /dev/null
@@ -1,8 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-config PCI_MT7621_PHY
-	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on RALINK && OF
-	select GENERIC_PHY
-	help
-	  Say 'Y' here to add support for MediaTek MT7621 PCI PHY driver,
-
diff --git a/drivers/staging/mt7621-pci-phy/Makefile b/drivers/staging/mt7621-pci-phy/Makefile
deleted file mode 100644
index b4d99b9119e0..000000000000
--- a/drivers/staging/mt7621-pci-phy/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_PCI_MT7621_PHY)       += pci-mt7621-phy.o
diff --git a/drivers/staging/mt7621-pci-phy/TODO b/drivers/staging/mt7621-pci-phy/TODO
deleted file mode 100644
index a255e8f753eb..000000000000
--- a/drivers/staging/mt7621-pci-phy/TODO
+++ /dev/null
@@ -1,4 +0,0 @@
-
-- general code review and cleanup
-
-Cc:  NeilBrown <neil@brown.name> and Sergio Paracuellos <sergio.paracuellos@gmail.com>
diff --git a/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml b/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
deleted file mode 100644
index cf32bbc45b5d..000000000000
--- a/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
+++ /dev/null
@@ -1,36 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-%YAML 1.2
----
-$id: "http://devicetree.org/schemas/phy/mediatek,mt7621-pci-phy.yaml#"
-$schema: "http://devicetree.org/meta-schemas/core.yaml#"
-
-title: Mediatek Mt7621 PCIe PHY Device Tree Bindings
-
-maintainers:
-  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
-
-properties:
-  compatible:
-    const: mediatek,mt7621-pci-phy
-
-  reg:
-    maxItems: 1
-
-  "#phy-cells":
-    const: 1
-    description: selects if the phy is dual-ported
-
-required:
-  - compatible
-  - reg
-  - "#phy-cells"
-
-additionalProperties: false
-
-examples:
-  - |
-    pcie0_phy: pcie-phy@1e149000 {
-      compatible = "mediatek,mt7621-pci-phy";
-      reg = <0x1e149000 0x0700>;
-      #phy-cells = <1>;
-    };
diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
deleted file mode 100644
index 57743fd22be4..000000000000
--- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
+++ /dev/null
@@ -1,373 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Mediatek MT7621 PCI PHY Driver
- * Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
- */
-
-#include <dt-bindings/phy/phy.h>
-#include <linux/bitops.h>
-#include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
-#include <linux/phy/phy.h>
-#include <linux/platform_device.h>
-#include <linux/regmap.h>
-#include <linux/sys_soc.h>
-#include <mt7621.h>
-#include <ralink_regs.h>
-
-#define RG_PE1_PIPE_REG				0x02c
-#define RG_PE1_PIPE_RST				BIT(12)
-#define RG_PE1_PIPE_CMD_FRC			BIT(4)
-
-#define RG_P0_TO_P1_WIDTH			0x100
-#define RG_PE1_H_LCDDS_REG			0x49c
-#define RG_PE1_H_LCDDS_PCW			GENMASK(30, 0)
-#define RG_PE1_H_LCDDS_PCW_VAL(x)		((0x7fffffff & (x)) << 0)
-
-#define RG_PE1_FRC_H_XTAL_REG			0x400
-#define RG_PE1_FRC_H_XTAL_TYPE			BIT(8)
-#define RG_PE1_H_XTAL_TYPE			GENMASK(10, 9)
-#define RG_PE1_H_XTAL_TYPE_VAL(x)		((0x3 & (x)) << 9)
-
-#define RG_PE1_FRC_PHY_REG			0x000
-#define RG_PE1_FRC_PHY_EN			BIT(4)
-#define RG_PE1_PHY_EN				BIT(5)
-
-#define RG_PE1_H_PLL_REG			0x490
-#define RG_PE1_H_PLL_BC				GENMASK(23, 22)
-#define RG_PE1_H_PLL_BC_VAL(x)			((0x3 & (x)) << 22)
-#define RG_PE1_H_PLL_BP				GENMASK(21, 18)
-#define RG_PE1_H_PLL_BP_VAL(x)			((0xf & (x)) << 18)
-#define RG_PE1_H_PLL_IR				GENMASK(15, 12)
-#define RG_PE1_H_PLL_IR_VAL(x)			((0xf & (x)) << 12)
-#define RG_PE1_H_PLL_IC				GENMASK(11, 8)
-#define RG_PE1_H_PLL_IC_VAL(x)			((0xf & (x)) << 8)
-#define RG_PE1_H_PLL_PREDIV			GENMASK(7, 6)
-#define RG_PE1_H_PLL_PREDIV_VAL(x)		((0x3 & (x)) << 6)
-#define RG_PE1_PLL_DIVEN			GENMASK(3, 1)
-#define RG_PE1_PLL_DIVEN_VAL(x)			((0x7 & (x)) << 1)
-
-#define RG_PE1_H_PLL_FBKSEL_REG			0x4bc
-#define RG_PE1_H_PLL_FBKSEL			GENMASK(5, 4)
-#define RG_PE1_H_PLL_FBKSEL_VAL(x)		((0x3 & (x)) << 4)
-
-#define	RG_PE1_H_LCDDS_SSC_PRD_REG		0x4a4
-#define RG_PE1_H_LCDDS_SSC_PRD			GENMASK(15, 0)
-#define RG_PE1_H_LCDDS_SSC_PRD_VAL(x)		((0xffff & (x)) << 0)
-
-#define RG_PE1_H_LCDDS_SSC_DELTA_REG		0x4a8
-#define RG_PE1_H_LCDDS_SSC_DELTA		GENMASK(11, 0)
-#define RG_PE1_H_LCDDS_SSC_DELTA_VAL(x)		((0xfff & (x)) << 0)
-#define RG_PE1_H_LCDDS_SSC_DELTA1		GENMASK(27, 16)
-#define RG_PE1_H_LCDDS_SSC_DELTA1_VAL(x)	((0xff & (x)) << 16)
-
-#define RG_PE1_LCDDS_CLK_PH_INV_REG		0x4a0
-#define RG_PE1_LCDDS_CLK_PH_INV			BIT(5)
-
-#define RG_PE1_H_PLL_BR_REG			0x4ac
-#define RG_PE1_H_PLL_BR				GENMASK(18, 16)
-#define RG_PE1_H_PLL_BR_VAL(x)			((0x7 & (x)) << 16)
-
-#define	RG_PE1_MSTCKDIV_REG			0x414
-#define RG_PE1_MSTCKDIV				GENMASK(7, 6)
-#define RG_PE1_MSTCKDIV_VAL(x)			((0x3 & (x)) << 6)
-
-#define RG_PE1_FRC_MSTCKDIV			BIT(5)
-
-#define XTAL_MODE_SEL_SHIFT			6
-#define XTAL_MODE_SEL_MASK			0x7
-
-#define MAX_PHYS	2
-
-/**
- * struct mt7621_pci_phy - Mt7621 Pcie PHY core
- * @dev: pointer to device
- * @regmap: kernel regmap pointer
- * @phy: pointer to the kernel PHY device
- * @port_base: base register
- * @has_dual_port: if the phy has dual ports.
- * @bypass_pipe_rst: mark if 'mt7621_bypass_pipe_rst'
- * needs to be executed. Depends on chip revision.
- */
-struct mt7621_pci_phy {
-	struct device *dev;
-	struct regmap *regmap;
-	struct phy *phy;
-	void __iomem *port_base;
-	bool has_dual_port;
-	bool bypass_pipe_rst;
-};
-
-static inline u32 phy_read(struct mt7621_pci_phy *phy, u32 reg)
-{
-	u32 val;
-
-	regmap_read(phy->regmap, reg, &val);
-
-	return val;
-}
-
-static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
-{
-	regmap_write(phy->regmap, reg, val);
-}
-
-static inline void mt7621_phy_rmw(struct mt7621_pci_phy *phy,
-				  u32 reg, u32 clr, u32 set)
-{
-	u32 val = phy_read(phy, reg);
-
-	val &= ~clr;
-	val |= set;
-	phy_write(phy, val, reg);
-}
-
-static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy)
-{
-	mt7621_phy_rmw(phy, RG_PE1_PIPE_REG, 0, RG_PE1_PIPE_RST);
-	mt7621_phy_rmw(phy, RG_PE1_PIPE_REG, 0, RG_PE1_PIPE_CMD_FRC);
-
-	if (phy->has_dual_port) {
-		mt7621_phy_rmw(phy, RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH,
-			       0, RG_PE1_PIPE_RST);
-		mt7621_phy_rmw(phy, RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH,
-			       0, RG_PE1_PIPE_CMD_FRC);
-	}
-}
-
-static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
-{
-	struct device *dev = phy->dev;
-	u32 xtal_mode;
-
-	xtal_mode = (rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0)
-		     >> XTAL_MODE_SEL_SHIFT) & XTAL_MODE_SEL_MASK;
-
-	/* Set PCIe Port PHY to disable SSC */
-	/* Debug Xtal Type */
-	mt7621_phy_rmw(phy, RG_PE1_FRC_H_XTAL_REG,
-		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE,
-		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE_VAL(0x00));
-
-	/* disable port */
-	mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG,
-		       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
-
-	if (phy->has_dual_port) {
-		mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
-			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
-	}
-
-	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
-		/* Set Pre-divider ratio (for host mode) */
-		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
-			       RG_PE1_H_PLL_PREDIV,
-			       RG_PE1_H_PLL_PREDIV_VAL(0x01));
-		dev_info(dev, "Xtal is 40MHz\n");
-	} else if (xtal_mode >= 6) { /* 25MHz Xal */
-		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
-			       RG_PE1_H_PLL_PREDIV,
-			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
-		/* Select feedback clock */
-		mt7621_phy_rmw(phy, RG_PE1_H_PLL_FBKSEL_REG,
-			       RG_PE1_H_PLL_FBKSEL,
-			       RG_PE1_H_PLL_FBKSEL_VAL(0x01));
-		/* DDS NCPO PCW (for host mode) */
-		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
-			       RG_PE1_H_LCDDS_SSC_PRD,
-			       RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18000000));
-		/* DDS SSC dither period control */
-		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
-			       RG_PE1_H_LCDDS_SSC_PRD,
-			       RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18d));
-		/* DDS SSC dither amplitude control */
-		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_DELTA_REG,
-			       RG_PE1_H_LCDDS_SSC_DELTA |
-			       RG_PE1_H_LCDDS_SSC_DELTA1,
-			       RG_PE1_H_LCDDS_SSC_DELTA_VAL(0x4a) |
-			       RG_PE1_H_LCDDS_SSC_DELTA1_VAL(0x4a));
-		dev_info(dev, "Xtal is 25MHz\n");
-	} else { /* 20MHz Xtal */
-		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
-			       RG_PE1_H_PLL_PREDIV,
-			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
-
-		dev_info(dev, "Xtal is 20MHz\n");
-	}
-
-	/* DDS clock inversion */
-	mt7621_phy_rmw(phy, RG_PE1_LCDDS_CLK_PH_INV_REG,
-		       RG_PE1_LCDDS_CLK_PH_INV, RG_PE1_LCDDS_CLK_PH_INV);
-
-	/* Set PLL bits */
-	mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
-		       RG_PE1_H_PLL_BC | RG_PE1_H_PLL_BP | RG_PE1_H_PLL_IR |
-		       RG_PE1_H_PLL_IC | RG_PE1_PLL_DIVEN,
-		       RG_PE1_H_PLL_BC_VAL(0x02) | RG_PE1_H_PLL_BP_VAL(0x06) |
-		       RG_PE1_H_PLL_IR_VAL(0x02) | RG_PE1_H_PLL_IC_VAL(0x01) |
-		       RG_PE1_PLL_DIVEN_VAL(0x02));
-
-	mt7621_phy_rmw(phy, RG_PE1_H_PLL_BR_REG,
-		       RG_PE1_H_PLL_BR, RG_PE1_H_PLL_BR_VAL(0x00));
-
-	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
-		/* set force mode enable of da_pe1_mstckdiv */
-		mt7621_phy_rmw(phy, RG_PE1_MSTCKDIV_REG,
-			       RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV,
-			       RG_PE1_MSTCKDIV_VAL(0x01) | RG_PE1_FRC_MSTCKDIV);
-	}
-}
-
-static int mt7621_pci_phy_init(struct phy *phy)
-{
-	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
-
-	if (mphy->bypass_pipe_rst)
-		mt7621_bypass_pipe_rst(mphy);
-
-	mt7621_set_phy_for_ssc(mphy);
-
-	return 0;
-}
-
-static int mt7621_pci_phy_power_on(struct phy *phy)
-{
-	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
-
-	/* Enable PHY and disable force mode */
-	mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG,
-		       RG_PE1_FRC_PHY_EN, RG_PE1_PHY_EN);
-
-	if (mphy->has_dual_port) {
-		mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
-			       RG_PE1_FRC_PHY_EN, RG_PE1_PHY_EN);
-	}
-
-	return 0;
-}
-
-static int mt7621_pci_phy_power_off(struct phy *phy)
-{
-	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
-
-	/* Disable PHY */
-	mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG,
-		       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
-
-	if (mphy->has_dual_port) {
-		mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
-			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
-	}
-
-	return 0;
-}
-
-static int mt7621_pci_phy_exit(struct phy *phy)
-{
-	return 0;
-}
-
-static const struct phy_ops mt7621_pci_phy_ops = {
-	.init		= mt7621_pci_phy_init,
-	.exit		= mt7621_pci_phy_exit,
-	.power_on	= mt7621_pci_phy_power_on,
-	.power_off	= mt7621_pci_phy_power_off,
-	.owner		= THIS_MODULE,
-};
-
-static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
-					    struct of_phandle_args *args)
-{
-	struct mt7621_pci_phy *mt7621_phy = dev_get_drvdata(dev);
-
-	if (WARN_ON(args->args[0] >= MAX_PHYS))
-		return ERR_PTR(-ENODEV);
-
-	mt7621_phy->has_dual_port = args->args[0];
-
-	dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
-		 (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
-
-	return mt7621_phy->phy;
-}
-
-static const struct soc_device_attribute mt7621_pci_quirks_match[] = {
-	{ .soc_id = "mt7621", .revision = "E2" }
-};
-
-static const struct regmap_config mt7621_pci_phy_regmap_config = {
-	.reg_bits = 32,
-	.val_bits = 32,
-	.reg_stride = 4,
-	.max_register = 0x700,
-};
-
-static int mt7621_pci_phy_probe(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	const struct soc_device_attribute *attr;
-	struct phy_provider *provider;
-	struct mt7621_pci_phy *phy;
-	struct resource *res;
-
-	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
-	if (!phy)
-		return -ENOMEM;
-
-	attr = soc_device_match(mt7621_pci_quirks_match);
-	if (attr)
-		phy->bypass_pipe_rst = true;
-
-	phy->dev = dev;
-	platform_set_drvdata(pdev, phy);
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		dev_err(dev, "failed to get address resource\n");
-		return -ENXIO;
-	}
-
-	phy->port_base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(phy->port_base)) {
-		dev_err(dev, "failed to remap phy regs\n");
-		return PTR_ERR(phy->port_base);
-	}
-
-	phy->regmap = devm_regmap_init_mmio(phy->dev, phy->port_base,
-					    &mt7621_pci_phy_regmap_config);
-	if (IS_ERR(phy->regmap))
-		return PTR_ERR(phy->regmap);
-
-	phy->phy = devm_phy_create(dev, dev->of_node, &mt7621_pci_phy_ops);
-	if (IS_ERR(phy)) {
-		dev_err(dev, "failed to create phy\n");
-		return PTR_ERR(phy);
-	}
-
-	phy_set_drvdata(phy->phy, phy);
-
-	provider = devm_of_phy_provider_register(dev, mt7621_pcie_phy_of_xlate);
-
-	return PTR_ERR_OR_ZERO(provider);
-}
-
-static const struct of_device_id mt7621_pci_phy_ids[] = {
-	{ .compatible = "mediatek,mt7621-pci-phy" },
-	{},
-};
-MODULE_DEVICE_TABLE(of, mt7621_pci_ids);
-
-static struct platform_driver mt7621_pci_phy_driver = {
-	.probe = mt7621_pci_phy_probe,
-	.driver = {
-		.name = "mt7621-pci-phy",
-		.of_match_table = of_match_ptr(mt7621_pci_phy_ids),
-	},
-};
-
-builtin_platform_driver(mt7621_pci_phy_driver);
-
-MODULE_AUTHOR("Sergio Paracuellos <sergio.paracuellos@gmail.com>");
-MODULE_DESCRIPTION("MediaTek MT7621 PCIe PHY driver");
-MODULE_LICENSE("GPL v2");
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
