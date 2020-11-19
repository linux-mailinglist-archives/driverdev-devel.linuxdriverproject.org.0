Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 108612B966C
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 16:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80E2A86B59;
	Thu, 19 Nov 2020 15:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QRimIw_2wR7h; Thu, 19 Nov 2020 15:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AD3586A54;
	Thu, 19 Nov 2020 15:43:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CF161BF21A
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 15:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 563BB87412
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 15:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhoDvfoLvNgF for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 15:43:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 383F487400
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 15:43:44 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 10so7627265wml.2
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 07:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0BOhpFCkmcRD1PH62XPRWx4XCvggAaE2ieXtmC0PrPo=;
 b=JuQtqYDkATaxG7gr025U0dmFQD1QgP7Y5aRrz2SsUL2sO3apphmt2B4fHHNBWlY9qq
 La5+TpkVpnjSlPTWyB63a7ohIwmLnTg94ElsP8ROJq143jWuqdrz0zD3thn8Afscuw6l
 aynSL8vYFyfTHQ1SdKmKgRr88K+mLqYMSlDDYWw+yjMVkK0lwREt84VY4GBGsNXB4OYV
 s79PfUIXHxzT4GTrBQzz7oiCChfbGwYjQiImg+mmbHl3NETaHi02tC91Bda/l+tD/Wbb
 xaWKstCYTF7A+7z9/ddbHdZT9XIc0o3qFJkofT6iQqHs9GwrM72tD661wZ8o7bCGaVPQ
 anCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0BOhpFCkmcRD1PH62XPRWx4XCvggAaE2ieXtmC0PrPo=;
 b=brNFWsJ2HqI0yXknYLfB28KRpAavImj0QMRLjUDAWnb/ptqHfLd5K6//ZxGw1jQ+m8
 LC1nlYJLLbYxkKVoCdTnwf/o+UbnTRRl+ZOio/1cQvv0BCWPpaFCa6g+UUe38gKZOATy
 vUdqWFDyI9utCnLwb/eyKYBfMum+UnDT3/vTEpiRW0Lh/koVNCWoCJiLSmaxXUZKsRgM
 yKa2WuDBWI0QiXY+dGKwooW6VAhi9a4xPBukrm8sSrH3ytNCmSuQUIeq82Wt2bCImFDL
 OsjBDXTGJrnIA9Ios20tfnu52zJOa1R9WsVQaNxgilIZXOV7t6j9S6QusX7WBD4Kgo/r
 odRw==
X-Gm-Message-State: AOAM533zgzfyzqMAOja8/esznpwGXrJ9qWCWBM/wlYSitQhDiCHPshN8
 0i5JEOMn9mqIS9khLZkmA4MIFTON6DK6R5PX
X-Google-Smtp-Source: ABdhPJyfqvXH73Za51WzIeNie0FNc/39ZWh0JgYdp5N8jHsYF1F/zYXL2JQL/bKJMKZ1vMq8a20zgw==
X-Received: by 2002:a1c:61c2:: with SMTP id v185mr5111280wmb.152.1605800622660; 
 Thu, 19 Nov 2020 07:43:42 -0800 (PST)
Received: from localhost.localdomain
 (234.red-79-158-79.dynamicip.rima-tde.net. [79.158.79.234])
 by smtp.gmail.com with ESMTPSA id w10sm181303wra.34.2020.11.19.07.43.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Nov 2020 07:43:42 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH v5 2/4] phy: ralink: Add PHY driver for MT7621 PCIe PHY
Date: Thu, 19 Nov 2020 16:43:35 +0100
Message-Id: <20201119154337.9195-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
References: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
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

This patch adds a driver for the PCIe PHY of MT7621 SoC.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/Kconfig          |   8 +
 drivers/phy/ralink/Makefile         |   1 +
 drivers/phy/ralink/phy-mt7621-pci.c | 346 ++++++++++++++++++++++++++++
 3 files changed, 355 insertions(+)
 create mode 100644 drivers/phy/ralink/phy-mt7621-pci.c

diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
index da982c9cffb3..2fabb14d2998 100644
--- a/drivers/phy/ralink/Kconfig
+++ b/drivers/phy/ralink/Kconfig
@@ -2,6 +2,14 @@
 #
 # PHY drivers for Ralink platforms.
 #
+config PHY_MT7621_PCI
+	tristate "MediaTek MT7621 PCI PHY Driver"
+	depends on (RALINK || COMPILE_TEST) && OF
+	select GENERIC_PHY
+	select REGMAP_MMIO
+	help
+	  Say 'Y' here to add support for MediaTek MT7621 PCI PHY driver,
+
 config PHY_RALINK_USB
 	tristate "Ralink USB PHY driver"
 	depends on RALINK || COMPILE_TEST
diff --git a/drivers/phy/ralink/Makefile b/drivers/phy/ralink/Makefile
index d8d3ffcf0a15..cda2a4a7ca5e 100644
--- a/drivers/phy/ralink/Makefile
+++ b/drivers/phy/ralink/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_PHY_MT7621_PCI)	+= phy-mt7621-pci.o
 obj-$(CONFIG_PHY_RALINK_USB)	+= phy-ralink-usb.o
diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
new file mode 100644
index 000000000000..c452bc679d53
--- /dev/null
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -0,0 +1,346 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Mediatek MT7621 PCI PHY Driver
+ * Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
+ */
+
+#include <dt-bindings/phy/phy.h>
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/sys_soc.h>
+#include <mt7621.h>
+#include <ralink_regs.h>
+
+#define RG_PE1_PIPE_REG				0x02c
+#define RG_PE1_PIPE_RST				BIT(12)
+#define RG_PE1_PIPE_CMD_FRC			BIT(4)
+
+#define RG_P0_TO_P1_WIDTH			0x100
+#define RG_PE1_H_LCDDS_REG			0x49c
+#define RG_PE1_H_LCDDS_PCW			GENMASK(30, 0)
+
+#define RG_PE1_FRC_H_XTAL_REG			0x400
+#define RG_PE1_FRC_H_XTAL_TYPE			BIT(8)
+#define RG_PE1_H_XTAL_TYPE			GENMASK(10, 9)
+
+#define RG_PE1_FRC_PHY_REG			0x000
+#define RG_PE1_FRC_PHY_EN			BIT(4)
+#define RG_PE1_PHY_EN				BIT(5)
+
+#define RG_PE1_H_PLL_REG			0x490
+#define RG_PE1_H_PLL_BC				GENMASK(23, 22)
+#define RG_PE1_H_PLL_BP				GENMASK(21, 18)
+#define RG_PE1_H_PLL_IR				GENMASK(15, 12)
+#define RG_PE1_H_PLL_IC				GENMASK(11, 8)
+#define RG_PE1_H_PLL_PREDIV			GENMASK(7, 6)
+#define RG_PE1_PLL_DIVEN			GENMASK(3, 1)
+
+#define RG_PE1_H_PLL_FBKSEL_REG			0x4bc
+#define RG_PE1_H_PLL_FBKSEL			GENMASK(5, 4)
+
+#define	RG_PE1_H_LCDDS_SSC_PRD_REG		0x4a4
+#define RG_PE1_H_LCDDS_SSC_PRD			GENMASK(15, 0)
+
+#define RG_PE1_H_LCDDS_SSC_DELTA_REG		0x4a8
+#define RG_PE1_H_LCDDS_SSC_DELTA		GENMASK(11, 0)
+#define RG_PE1_H_LCDDS_SSC_DELTA1		GENMASK(27, 16)
+
+#define RG_PE1_LCDDS_CLK_PH_INV_REG		0x4a0
+#define RG_PE1_LCDDS_CLK_PH_INV			BIT(5)
+
+#define RG_PE1_H_PLL_BR_REG			0x4ac
+#define RG_PE1_H_PLL_BR				GENMASK(18, 16)
+
+#define	RG_PE1_MSTCKDIV_REG			0x414
+#define RG_PE1_MSTCKDIV				GENMASK(7, 6)
+
+#define RG_PE1_FRC_MSTCKDIV			BIT(5)
+
+#define XTAL_MODE_SEL_MASK			0x7
+
+#define MAX_PHYS	2
+
+/**
+ * struct mt7621_pci_phy - Mt7621 Pcie PHY core
+ * @dev: pointer to device
+ * @regmap: kernel regmap pointer
+ * @phy: pointer to the kernel PHY device
+ * @port_base: base register
+ * @has_dual_port: if the phy has dual ports.
+ * @bypass_pipe_rst: mark if 'mt7621_bypass_pipe_rst'
+ * needs to be executed. Depends on chip revision.
+ */
+struct mt7621_pci_phy {
+	struct device *dev;
+	struct regmap *regmap;
+	struct phy *phy;
+	void __iomem *port_base;
+	bool has_dual_port;
+	bool bypass_pipe_rst;
+};
+
+static inline void mt7621_phy_rmw(struct mt7621_pci_phy *phy,
+				  u32 reg, u32 clr, u32 set)
+{
+	u32 val;
+
+	regmap_read(phy->regmap, reg, &val);
+
+	val &= ~clr;
+	val |= set;
+	regmap_write(phy->regmap, reg, val);
+}
+
+static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy)
+{
+	mt7621_phy_rmw(phy, RG_PE1_PIPE_REG, 0, RG_PE1_PIPE_RST);
+	mt7621_phy_rmw(phy, RG_PE1_PIPE_REG, 0, RG_PE1_PIPE_CMD_FRC);
+
+	if (phy->has_dual_port) {
+		mt7621_phy_rmw(phy, RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH,
+			       0, RG_PE1_PIPE_RST);
+		mt7621_phy_rmw(phy, RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH,
+			       0, RG_PE1_PIPE_CMD_FRC);
+	}
+}
+
+static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
+{
+	struct device *dev = phy->dev;
+	u32 xtal_mode;
+
+	xtal_mode = FIELD_GET(XTAL_MODE_SEL_MASK,
+			      rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0));
+
+	/* Set PCIe Port PHY to disable SSC */
+	/* Debug Xtal Type */
+	mt7621_phy_rmw(phy, RG_PE1_FRC_H_XTAL_REG,
+		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE,
+		       FIELD_PREP(RG_PE1_FRC_H_XTAL_TYPE, 0x00));
+
+	/* disable port */
+	mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG, RG_PE1_PHY_EN,
+		       RG_PE1_FRC_PHY_EN);
+
+	if (phy->has_dual_port) {
+		mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
+			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
+	}
+
+	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
+		/* Set Pre-divider ratio (for host mode) */
+		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG, RG_PE1_H_PLL_PREDIV,
+			       FIELD_PREP(RG_PE1_H_PLL_PREDIV, 0x01));
+
+		dev_dbg(dev, "Xtal is 40MHz\n");
+	} else if (xtal_mode >= 6) { /* 25MHz Xal */
+		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG, RG_PE1_H_PLL_PREDIV,
+			       FIELD_PREP(RG_PE1_H_PLL_PREDIV, 0x00));
+
+		/* Select feedback clock */
+		mt7621_phy_rmw(phy, RG_PE1_H_PLL_FBKSEL_REG,
+			       RG_PE1_H_PLL_FBKSEL,
+			       FIELD_PREP(RG_PE1_H_PLL_FBKSEL, 0x01));
+
+		/* DDS NCPO PCW (for host mode) */
+		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
+			       RG_PE1_H_LCDDS_SSC_PRD,
+			       FIELD_PREP(RG_PE1_H_LCDDS_SSC_PRD, 0x00));
+
+		/* DDS SSC dither period control */
+		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
+			       RG_PE1_H_LCDDS_SSC_PRD,
+			       FIELD_PREP(RG_PE1_H_LCDDS_SSC_PRD, 0x18d));
+
+		/* DDS SSC dither amplitude control */
+		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_DELTA_REG,
+			       RG_PE1_H_LCDDS_SSC_DELTA |
+			       RG_PE1_H_LCDDS_SSC_DELTA1,
+			       FIELD_PREP(RG_PE1_H_LCDDS_SSC_DELTA, 0x4a) |
+			       FIELD_PREP(RG_PE1_H_LCDDS_SSC_DELTA1, 0x4a));
+
+		dev_dbg(dev, "Xtal is 25MHz\n");
+	} else { /* 20MHz Xtal */
+		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG, RG_PE1_H_PLL_PREDIV,
+			       FIELD_PREP(RG_PE1_H_PLL_PREDIV, 0x00));
+
+		dev_dbg(dev, "Xtal is 20MHz\n");
+	}
+
+	/* DDS clock inversion */
+	mt7621_phy_rmw(phy, RG_PE1_LCDDS_CLK_PH_INV_REG,
+		       RG_PE1_LCDDS_CLK_PH_INV, RG_PE1_LCDDS_CLK_PH_INV);
+
+	/* Set PLL bits */
+	mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
+		       RG_PE1_H_PLL_BC | RG_PE1_H_PLL_BP | RG_PE1_H_PLL_IR |
+		       RG_PE1_H_PLL_IC | RG_PE1_PLL_DIVEN,
+		       FIELD_PREP(RG_PE1_H_PLL_BC, 0x02) |
+		       FIELD_PREP(RG_PE1_H_PLL_BP, 0x06) |
+		       FIELD_PREP(RG_PE1_H_PLL_IR, 0x02) |
+		       FIELD_PREP(RG_PE1_H_PLL_IC, 0x01) |
+		       FIELD_PREP(RG_PE1_PLL_DIVEN, 0x02));
+
+	mt7621_phy_rmw(phy, RG_PE1_H_PLL_BR_REG,
+		       RG_PE1_H_PLL_BR, FIELD_PREP(RG_PE1_H_PLL_BR, 0x00));
+
+	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
+		/* set force mode enable of da_pe1_mstckdiv */
+		mt7621_phy_rmw(phy, RG_PE1_MSTCKDIV_REG,
+			       RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV,
+			       FIELD_PREP(RG_PE1_MSTCKDIV, 0x01) |
+			       RG_PE1_FRC_MSTCKDIV);
+	}
+}
+
+static int mt7621_pci_phy_init(struct phy *phy)
+{
+	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
+
+	if (mphy->bypass_pipe_rst)
+		mt7621_bypass_pipe_rst(mphy);
+
+	mt7621_set_phy_for_ssc(mphy);
+
+	return 0;
+}
+
+static int mt7621_pci_phy_power_on(struct phy *phy)
+{
+	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
+
+	/* Enable PHY and disable force mode */
+	mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG,
+		       RG_PE1_FRC_PHY_EN, RG_PE1_PHY_EN);
+
+	if (mphy->has_dual_port) {
+		mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
+			       RG_PE1_FRC_PHY_EN, RG_PE1_PHY_EN);
+	}
+
+	return 0;
+}
+
+static int mt7621_pci_phy_power_off(struct phy *phy)
+{
+	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
+
+	/* Disable PHY */
+	mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG,
+		       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
+
+	if (mphy->has_dual_port) {
+		mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
+			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
+	}
+
+	return 0;
+}
+
+static int mt7621_pci_phy_exit(struct phy *phy)
+{
+	return 0;
+}
+
+static const struct phy_ops mt7621_pci_phy_ops = {
+	.init		= mt7621_pci_phy_init,
+	.exit		= mt7621_pci_phy_exit,
+	.power_on	= mt7621_pci_phy_power_on,
+	.power_off	= mt7621_pci_phy_power_off,
+	.owner		= THIS_MODULE,
+};
+
+static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
+					    struct of_phandle_args *args)
+{
+	struct mt7621_pci_phy *mt7621_phy = dev_get_drvdata(dev);
+
+	if (WARN_ON(args->args[0] >= MAX_PHYS))
+		return ERR_PTR(-ENODEV);
+
+	mt7621_phy->has_dual_port = args->args[0];
+
+	dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
+		 (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
+
+	return mt7621_phy->phy;
+}
+
+static const struct soc_device_attribute mt7621_pci_quirks_match[] = {
+	{ .soc_id = "mt7621", .revision = "E2" }
+};
+
+static const struct regmap_config mt7621_pci_phy_regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 0x700,
+};
+
+static int mt7621_pci_phy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	const struct soc_device_attribute *attr;
+	struct phy_provider *provider;
+	struct mt7621_pci_phy *phy;
+
+	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
+	if (!phy)
+		return -ENOMEM;
+
+	attr = soc_device_match(mt7621_pci_quirks_match);
+	if (attr)
+		phy->bypass_pipe_rst = true;
+
+	phy->dev = dev;
+	platform_set_drvdata(pdev, phy);
+
+	phy->port_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(phy->port_base)) {
+		dev_err(dev, "failed to remap phy regs\n");
+		return PTR_ERR(phy->port_base);
+	}
+
+	phy->regmap = devm_regmap_init_mmio(phy->dev, phy->port_base,
+					    &mt7621_pci_phy_regmap_config);
+	if (IS_ERR(phy->regmap))
+		return PTR_ERR(phy->regmap);
+
+	phy->phy = devm_phy_create(dev, dev->of_node, &mt7621_pci_phy_ops);
+	if (IS_ERR(phy)) {
+		dev_err(dev, "failed to create phy\n");
+		return PTR_ERR(phy);
+	}
+
+	phy_set_drvdata(phy->phy, phy);
+
+	provider = devm_of_phy_provider_register(dev, mt7621_pcie_phy_of_xlate);
+
+	return PTR_ERR_OR_ZERO(provider);
+}
+
+static const struct of_device_id mt7621_pci_phy_ids[] = {
+	{ .compatible = "mediatek,mt7621-pci-phy" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, mt7621_pci_ids);
+
+static struct platform_driver mt7621_pci_phy_driver = {
+	.probe = mt7621_pci_phy_probe,
+	.driver = {
+		.name = "mt7621-pci-phy",
+		.of_match_table = of_match_ptr(mt7621_pci_phy_ids),
+	},
+};
+
+builtin_platform_driver(mt7621_pci_phy_driver);
+
+MODULE_AUTHOR("Sergio Paracuellos <sergio.paracuellos@gmail.com>");
+MODULE_DESCRIPTION("MediaTek MT7621 PCIe PHY driver");
+MODULE_LICENSE("GPL v2");
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
