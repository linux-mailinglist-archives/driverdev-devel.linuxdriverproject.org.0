Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA62C3089B3
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:04:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78CC386A6A;
	Fri, 29 Jan 2021 15:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34MRN-e7a7Vi; Fri, 29 Jan 2021 15:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75BB486944;
	Fri, 29 Jan 2021 15:04:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECD0A1BF399
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E968D861DE
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IsuwzA_8kaV for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C05B985FAD
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D0E9E64E1A;
 Fri, 29 Jan 2021 15:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611932635;
 bh=oN33jobMvGgo0UPSOxgMH+6KZlpb0EV4oRuDqLfKwPQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T8bF3PZ6g9vYyUS2Ent+SEgVppLFa+1HPK4K3BlfKNdaa06a8bNtJrBzJECdaJI7d
 5aiqjf+lw46vPz+BWtER1nb2iw+yh2zPX4IZvl9WBeHhDKEAVWITLDu7xHyvIFq1Ec
 mAfmoq27ZUlzqu9JsrcmAjs68ZCD3TtwDsWha2rxLY4uoU941VIjSHNWda71NqUzlN
 nnvNzgBf4y5iJ2/x0QmeoOBHb6+wS0laR1Na2+b1guiZ6PXucIJQ2IFjN6cMMS3oHs
 /D2ENp+XbOGhVwcGOJNN6Y8HJLpFeS8ukGtZ1nj60Q7UAnJD1tUCg0/dPvWbvgXqRN
 2uokR3O6INfoQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5VJQ-0078tO-4T; Fri, 29 Jan 2021 16:03:52 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v7 10/14] phy: phy-hi3670-usb3: move driver from staging into
 phy
Date: Fri, 29 Jan 2021 16:03:45 +0100
Message-Id: <810f286cade454acda418b9e5f39bb3a595e871a.1611932194.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611932194.git.mchehab+huawei@kernel.org>
References: <cover.1611932194.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 David Gow <davidgow@google.com>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The phy USB3 driver for Hisilicon 970 (hi3670) is ready
for mainstream. Mode it from staging into the main driver's
phy/ directory.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../bindings/phy/hisilicon,hi3670-usb3.yaml   |  73 ++
 MAINTAINERS                                   |   9 +-
 drivers/phy/hisilicon/Kconfig                 |  10 +
 drivers/phy/hisilicon/Makefile                |   1 +
 drivers/phy/hisilicon/phy-hi3670-usb3.c       | 668 ++++++++++++++++++
 drivers/staging/hikey9xx/Kconfig              |  11 -
 drivers/staging/hikey9xx/Makefile             |   2 -
 drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 668 ------------------
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  73 --
 9 files changed, 760 insertions(+), 755 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
new file mode 100644
index 000000000000..ebd78acfe2de
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/hisilicon,hi3670-usb3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hisilicon Kirin970 USB PHY
+
+maintainers:
+  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+
+description: |+
+  Bindings for USB3 PHY on HiSilicon Kirin 970.
+
+properties:
+  compatible:
+    const: hisilicon,hi3670-usb-phy
+
+  "#phy-cells":
+    const: 0
+
+  hisilicon,pericrg-syscon:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: phandle of syscon used to control iso refclk.
+
+  hisilicon,pctrl-syscon:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: phandle of syscon used to control usb tcxo.
+
+  hisilicon,sctrl-syscon:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: phandle of syscon used to control phy deep sleep.
+
+  hisilicon,eye-diagram-param:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Eye diagram for phy.
+
+  hisilicon,tx-vboost-lvl:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: TX level vboost for phy.
+
+required:
+  - compatible
+  - hisilicon,pericrg-syscon
+  - hisilicon,pctrl-syscon
+  - hisilicon,sctrl-syscon
+  - hisilicon,eye-diagram-param
+  - hisilicon,tx-vboost-lvl
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      usb3_otg_bc: usb3_otg_bc@ff200000 {
+        compatible = "syscon", "simple-mfd";
+        reg = <0x0 0xff200000 0x0 0x1000>;
+
+        usb_phy {
+          compatible = "hisilicon,hi3670-usb-phy";
+          #phy-cells = <0>;
+          hisilicon,pericrg-syscon = <&crg_ctrl>;
+          hisilicon,pctrl-syscon = <&pctrl>;
+          hisilicon,sctrl-syscon = <&sctrl>;
+          hisilicon,eye-diagram-param = <0xfdfee4>;
+          hisilicon,tx-vboost-lvl = <0x5>;
+        };
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 992fe3b0900a..fb49e654a1db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18371,7 +18371,7 @@ L:	linux-usb@vger.kernel.org
 S:	Maintained
 F:	drivers/usb/roles/intel-xhci-usb-role-switch.c
 
-USB IP DRIVER FOR HISILICON KIRIN
+USB IP DRIVER FOR HISILICON KIRIN 960
 M:	Yu Chen <chenyu56@huawei.com>
 M:	Binghui Wang <wangbinghui@hisilicon.com>
 L:	linux-usb@vger.kernel.org
@@ -18379,6 +18379,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
 F:	drivers/phy/hisilicon/phy-hi3660-usb3.c
 
+USB IP DRIVER FOR HISILICON KIRIN 970
+M:	Mauro Carvalho Chehab <mchehab@kernel.org>
+L:	linux-usb@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/hisilicon,kirin970-usb3.yaml
+F:	drivers/phy/hisilicon/phy-kirin970-usb3.c
+
 USB ISP116X DRIVER
 M:	Olav Kongas <ok@artecdesign.ee>
 L:	linux-usb@vger.kernel.org
diff --git a/drivers/phy/hisilicon/Kconfig b/drivers/phy/hisilicon/Kconfig
index 1c73053bcc98..4d008cfc279c 100644
--- a/drivers/phy/hisilicon/Kconfig
+++ b/drivers/phy/hisilicon/Kconfig
@@ -23,6 +23,16 @@ config PHY_HI3660_USB
 
 	  To compile this driver as a module, choose M here.
 
+config PHY_HI3670_USB
+	tristate "hi3670 USB PHY support"
+	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
+	select GENERIC_PHY
+	select MFD_SYSCON
+	help
+	  Enable this to support the HISILICON HI3670 USB PHY.
+
+	  To compile this driver as a module, choose M here.
+
 config PHY_HISTB_COMBPHY
 	tristate "HiSilicon STB SoCs COMBPHY support"
 	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
diff --git a/drivers/phy/hisilicon/Makefile b/drivers/phy/hisilicon/Makefile
index 92e874ae9c74..51729868145b 100644
--- a/drivers/phy/hisilicon/Makefile
+++ b/drivers/phy/hisilicon/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_PHY_HI6220_USB)		+= phy-hi6220-usb.o
 obj-$(CONFIG_PHY_HI3660_USB)		+= phy-hi3660-usb3.o
+obj-$(CONFIG_PHY_HI3670_USB)		+= phy-hi3670-usb3.o
 obj-$(CONFIG_PHY_HISTB_COMBPHY)		+= phy-histb-combphy.o
 obj-$(CONFIG_PHY_HISI_INNO_USB2)	+= phy-hisi-inno-usb2.o
 obj-$(CONFIG_PHY_HIX5HD2_SATA)		+= phy-hix5hd2-sata.o
diff --git a/drivers/phy/hisilicon/phy-hi3670-usb3.c b/drivers/phy/hisilicon/phy-hi3670-usb3.c
new file mode 100644
index 000000000000..8918f3665f8e
--- /dev/null
+++ b/drivers/phy/hisilicon/phy-hi3670-usb3.c
@@ -0,0 +1,668 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Phy provider for USB 3.1 controller on HiSilicon Kirin970 platform
+ *
+ * Copyright (C) 2017-2020 Hilisicon Electronics Co., Ltd.
+ *		http://www.huawei.com
+ *
+ * Authors: Yu Chen <chenyu56@huawei.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define SCTRL_SCDEEPSLEEPED		(0x0)
+#define USB_CLK_SELECTED		BIT(20)
+
+#define PERI_CRG_PEREN0			(0x00)
+#define PERI_CRG_PERDIS0		(0x04)
+#define PERI_CRG_PEREN4			(0x40)
+#define PERI_CRG_PERDIS4		(0x44)
+#define PERI_CRG_PERRSTEN4		(0x90)
+#define PERI_CRG_PERRSTDIS4		(0x94)
+#define PERI_CRG_ISODIS			(0x148)
+#define PERI_CRG_PEREN6			(0x410)
+#define PERI_CRG_PERDIS6		(0x414)
+
+#define USB_REFCLK_ISO_EN		BIT(25)
+
+#define GT_CLK_USB2PHY_REF		BIT(19)
+
+#define PCTRL_PERI_CTRL3		(0x10)
+#define PCTRL_PERI_CTRL3_MSK_START	(16)
+#define USB_TCXO_EN			BIT(1)
+
+#define PCTRL_PERI_CTRL24		(0x64)
+#define SC_CLK_USB3PHY_3MUX1_SEL	BIT(25)
+
+#define USB3OTG_CTRL0			(0x00)
+#define USB3OTG_CTRL3			(0x0c)
+#define USB3OTG_CTRL4			(0x10)
+#define USB3OTG_CTRL5			(0x14)
+#define USB3OTG_CTRL7			(0x1c)
+#define USB_MISC_CFG50			(0x50)
+#define USB_MISC_CFG54			(0x54)
+#define USB_MISC_CFG58			(0x58)
+#define USB_MISC_CFG5C			(0x5c)
+#define USB_MISC_CFGA0			(0xa0)
+#define TCA_CLK_RST			(0x200)
+#define TCA_INTR_EN			(0x204)
+#define TCA_INTR_STS			(0x208)
+#define TCA_GCFG			(0x210)
+#define TCA_TCPC			(0x214)
+#define TCA_SYSMODE_CFG			(0x218)
+#define TCA_VBUS_CTRL			(0x240)
+
+#define CTRL0_USB3_VBUSVLD		BIT(7)
+#define CTRL0_USB3_VBUSVLD_SEL		BIT(6)
+
+#define CTRL3_USB2_VBUSVLDEXT0		BIT(6)
+#define CTRL3_USB2_VBUSVLDEXTSEL0	BIT(5)
+
+#define CTRL5_USB2_SIDDQ		BIT(0)
+
+#define CTRL7_USB2_REFCLKSEL_MASK	GENMASK(4, 3)
+#define CTRL7_USB2_REFCLKSEL_ABB	(BIT(4) | BIT(3))
+#define CTRL7_USB2_REFCLKSEL_PAD	BIT(4)
+
+#define CFG50_USB3_PHY_TEST_POWERDOWN	BIT(23)
+
+#define CFG54_USB31PHY_CR_ADDR_MASK	GENMASK(31, 16)
+
+#define CFG54_USB3PHY_REF_USE_PAD	BIT(12)
+#define CFG54_PHY0_PMA_PWR_STABLE	BIT(11)
+#define CFG54_PHY0_PCS_PWR_STABLE	BIT(9)
+#define CFG54_USB31PHY_CR_ACK		BIT(7)
+#define CFG54_USB31PHY_CR_WR_EN		BIT(5)
+#define CFG54_USB31PHY_CR_SEL		BIT(4)
+#define CFG54_USB31PHY_CR_RD_EN		BIT(3)
+#define CFG54_USB31PHY_CR_CLK		BIT(2)
+#define CFG54_USB3_PHY0_ANA_PWR_EN	BIT(1)
+
+#define CFG58_USB31PHY_CR_DATA_MASK     GENMASK(31, 16)
+
+#define CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN	BIT(1)
+
+#define CFGA0_VAUX_RESET		BIT(9)
+#define CFGA0_USB31C_RESET		BIT(8)
+#define CFGA0_USB2PHY_REFCLK_SELECT	BIT(4)
+#define CFGA0_USB3PHY_RESET		BIT(1)
+#define CFGA0_USB2PHY_POR		BIT(0)
+
+#define INTR_EN_XA_TIMEOUT_EVT_EN	BIT(1)
+#define INTR_EN_XA_ACK_EVT_EN		BIT(0)
+
+#define CLK_RST_TCA_REF_CLK_EN		BIT(1)
+#define CLK_RST_SUSPEND_CLK_EN		BIT(0)
+
+#define GCFG_ROLE_HSTDEV		BIT(4)
+#define GCFG_OP_MODE			GENMASK(1, 0)
+#define GCFG_OP_MODE_CTRL_SYNC_MODE	BIT(0)
+
+#define TCPC_VALID			BIT(4)
+#define TCPC_LOW_POWER_EN		BIT(3)
+#define TCPC_MUX_CONTROL_MASK		GENMASK(1, 0)
+#define TCPC_MUX_CONTROL_USB31		BIT(0)
+
+#define SYSMODE_CFG_TYPEC_DISABLE	BIT(3)
+
+#define VBUS_CTRL_POWERPRESENT_OVERRD	GENMASK(3, 2)
+#define VBUS_CTRL_VBUSVALID_OVERRD	GENMASK(1, 0)
+
+#define KIRIN970_USB_DEFAULT_PHY_PARAM	(0xfdfee4)
+#define KIRIN970_USB_DEFAULT_PHY_VBOOST	(0x5)
+
+#define TX_VBOOST_LVL_REG		(0xf)
+#define TX_VBOOST_LVL_START		(6)
+#define TX_VBOOST_LVL_ENABLE		BIT(9)
+
+struct hi3670_priv {
+	struct device *dev;
+	struct regmap *peri_crg;
+	struct regmap *pctrl;
+	struct regmap *sctrl;
+	struct regmap *usb31misc;
+
+	u32 eye_diagram_param;
+	u32 tx_vboost_lvl;
+
+	u32 peri_crg_offset;
+	u32 pctrl_offset;
+	u32 usb31misc_offset;
+};
+
+static int hi3670_phy_cr_clk(struct regmap *usb31misc)
+{
+	int ret;
+
+	/* Clock up */
+	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
+				 CFG54_USB31PHY_CR_CLK, CFG54_USB31PHY_CR_CLK);
+	if (ret)
+		return ret;
+
+	/* Clock down */
+	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
+				 CFG54_USB31PHY_CR_CLK, 0);
+
+	return ret;
+}
+
+static int hi3670_phy_cr_set_sel(struct regmap *usb31misc)
+{
+	return regmap_update_bits(usb31misc, USB_MISC_CFG54,
+				  CFG54_USB31PHY_CR_SEL, CFG54_USB31PHY_CR_SEL);
+}
+
+static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
+{
+	int ret, reg;
+
+	if (direction)
+		reg = CFG54_USB31PHY_CR_WR_EN;
+	else
+		reg = CFG54_USB31PHY_CR_RD_EN;
+
+	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54, reg, reg);
+
+	if (ret)
+		return ret;
+
+	ret = hi3670_phy_cr_clk(usb31misc);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(usb31misc, USB_MISC_CFG54,
+				  CFG54_USB31PHY_CR_RD_EN | CFG54_USB31PHY_CR_WR_EN, 0);
+}
+
+static int hi3670_phy_cr_wait_ack(struct regmap *usb31misc)
+{
+	u32 reg;
+	int retry = 10;
+	int ret;
+
+	while (retry-- > 0) {
+		ret = regmap_read(usb31misc, USB_MISC_CFG54, &reg);
+		if (ret)
+			return ret;
+		if ((reg & CFG54_USB31PHY_CR_ACK) == CFG54_USB31PHY_CR_ACK)
+			return 0;
+
+		ret = hi3670_phy_cr_clk(usb31misc);
+		if (ret)
+			return ret;
+
+		usleep_range(10, 20);
+	}
+
+	return -ETIMEDOUT;
+}
+
+static int hi3670_phy_cr_set_addr(struct regmap *usb31misc, u32 addr)
+{
+	u32 reg;
+	int ret;
+
+	ret = regmap_read(usb31misc, USB_MISC_CFG54, &reg);
+	if (ret)
+		return ret;
+
+	reg = FIELD_PREP(CFG54_USB31PHY_CR_ADDR_MASK, addr);
+	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
+				 CFG54_USB31PHY_CR_ADDR_MASK, reg);
+
+	return ret;
+}
+
+static int hi3670_phy_cr_read(struct regmap *usb31misc, u32 addr, u32 *val)
+{
+	int reg;
+	int i;
+	int ret;
+
+	for (i = 0; i < 100; i++) {
+		ret = hi3670_phy_cr_clk(usb31misc);
+		if (ret)
+			return ret;
+	}
+
+	ret = hi3670_phy_cr_set_sel(usb31misc);
+	if (ret)
+		return ret;
+
+	ret = hi3670_phy_cr_set_addr(usb31misc, addr);
+	if (ret)
+		return ret;
+
+	ret = hi3670_phy_cr_start(usb31misc, 0);
+	if (ret)
+		return ret;
+
+	ret = hi3670_phy_cr_wait_ack(usb31misc);
+	if (ret)
+		return ret;
+
+	ret = regmap_read(usb31misc, USB_MISC_CFG58, &reg);
+	if (ret)
+		return ret;
+
+	*val = FIELD_GET(CFG58_USB31PHY_CR_DATA_MASK, reg);
+
+	return 0;
+}
+
+static int hi3670_phy_cr_write(struct regmap *usb31misc, u32 addr, u32 val)
+{
+	int i;
+	int ret;
+
+	for (i = 0; i < 100; i++) {
+		ret = hi3670_phy_cr_clk(usb31misc);
+		if (ret)
+			return ret;
+	}
+
+	ret = hi3670_phy_cr_set_sel(usb31misc);
+	if (ret)
+		return ret;
+
+	ret = hi3670_phy_cr_set_addr(usb31misc, addr);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(usb31misc, USB_MISC_CFG58,
+			   FIELD_PREP(CFG58_USB31PHY_CR_DATA_MASK, val));
+	if (ret)
+		return ret;
+
+	ret = hi3670_phy_cr_start(usb31misc, 1);
+	if (ret)
+		return ret;
+
+	ret = hi3670_phy_cr_wait_ack(usb31misc);
+
+	return ret;
+}
+
+static int hi3670_phy_set_params(struct hi3670_priv *priv)
+{
+	u32 reg;
+	int ret;
+	int retry = 3;
+
+	ret = regmap_write(priv->usb31misc, USB3OTG_CTRL4,
+			   priv->eye_diagram_param);
+	if (ret) {
+		dev_err(priv->dev, "set USB3OTG_CTRL4 failed\n");
+		return ret;
+	}
+
+	while (retry-- > 0) {
+		ret = hi3670_phy_cr_read(priv->usb31misc,
+					 TX_VBOOST_LVL_REG, &reg);
+		if (!ret)
+			break;
+
+		if (ret != -ETIMEDOUT) {
+			dev_err(priv->dev, "read TX_VBOOST_LVL_REG failed\n");
+			return ret;
+		}
+	}
+	if (ret)
+		return ret;
+
+	reg |= (TX_VBOOST_LVL_ENABLE | (priv->tx_vboost_lvl << TX_VBOOST_LVL_START));
+	ret = hi3670_phy_cr_write(priv->usb31misc, TX_VBOOST_LVL_REG, reg);
+	if (ret)
+		dev_err(priv->dev, "write TX_VBOOST_LVL_REG failed\n");
+
+	return ret;
+}
+
+static bool hi3670_is_abbclk_selected(struct hi3670_priv *priv)
+{
+	u32 reg;
+
+	if (!priv->sctrl) {
+		dev_err(priv->dev, "priv->sctrl is null!\n");
+		return false;
+	}
+
+	if (regmap_read(priv->sctrl, SCTRL_SCDEEPSLEEPED, &reg)) {
+		dev_err(priv->dev, "SCTRL_SCDEEPSLEEPED read failed!\n");
+		return false;
+	}
+
+	if ((reg & USB_CLK_SELECTED) == 0)
+		return false;
+
+	return true;
+}
+
+static int hi3670_config_phy_clock(struct hi3670_priv *priv)
+{
+	u32 val, mask;
+	int ret;
+
+	if (!hi3670_is_abbclk_selected(priv)) {
+		/* usb refclk iso disable */
+		ret = regmap_write(priv->peri_crg, PERI_CRG_ISODIS,
+				   USB_REFCLK_ISO_EN);
+		if (ret)
+			goto out;
+
+		/* enable usb_tcxo_en */
+		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
+				   USB_TCXO_EN |
+				   (USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START));
+
+		/* select usbphy clk from abb */
+		mask = SC_CLK_USB3PHY_3MUX1_SEL;
+		ret = regmap_update_bits(priv->pctrl,
+					 PCTRL_PERI_CTRL24, mask, 0);
+		if (ret)
+			goto out;
+
+		ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0,
+					 CFGA0_USB2PHY_REFCLK_SELECT, 0);
+		if (ret)
+			goto out;
+
+		ret = regmap_read(priv->usb31misc, USB3OTG_CTRL7, &val);
+		if (ret)
+			goto out;
+		val &= ~CTRL7_USB2_REFCLKSEL_MASK;
+		val |= CTRL7_USB2_REFCLKSEL_ABB;
+		ret = regmap_write(priv->usb31misc, USB3OTG_CTRL7, val);
+		if (ret)
+			goto out;
+
+		return 0;
+	}
+
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
+	return 0;
+out:
+	dev_err(priv->dev, "failed to config phy clock ret: %d\n", ret);
+	return ret;
+}
+
+static int hi3670_config_tca(struct hi3670_priv *priv)
+{
+	u32 val, mask;
+	int ret;
+
+	ret = regmap_write(priv->usb31misc, TCA_INTR_STS, 0xffff);
+	if (ret)
+		goto out;
+
+	ret = regmap_write(priv->usb31misc, TCA_INTR_EN,
+			   INTR_EN_XA_TIMEOUT_EVT_EN | INTR_EN_XA_ACK_EVT_EN);
+	if (ret)
+		goto out;
+
+	mask = CLK_RST_TCA_REF_CLK_EN | CLK_RST_SUSPEND_CLK_EN;
+	ret = regmap_update_bits(priv->usb31misc, TCA_CLK_RST, mask, 0);
+	if (ret)
+		goto out;
+
+	ret = regmap_update_bits(priv->usb31misc, TCA_GCFG,
+				 GCFG_ROLE_HSTDEV | GCFG_OP_MODE,
+				 GCFG_ROLE_HSTDEV | GCFG_OP_MODE_CTRL_SYNC_MODE);
+	if (ret)
+		goto out;
+
+	ret = regmap_update_bits(priv->usb31misc, TCA_SYSMODE_CFG,
+				 SYSMODE_CFG_TYPEC_DISABLE, 0);
+	if (ret)
+		goto out;
+
+	ret = regmap_read(priv->usb31misc, TCA_TCPC, &val);
+	if (ret)
+		goto out;
+	val &= ~(TCPC_VALID | TCPC_LOW_POWER_EN | TCPC_MUX_CONTROL_MASK);
+	val |= (TCPC_VALID | TCPC_MUX_CONTROL_USB31);
+	ret = regmap_write(priv->usb31misc, TCA_TCPC, val);
+	if (ret)
+		goto out;
+
+	ret = regmap_write(priv->usb31misc, TCA_VBUS_CTRL,
+			   VBUS_CTRL_POWERPRESENT_OVERRD | VBUS_CTRL_VBUSVALID_OVERRD);
+	if (ret)
+		goto out;
+
+	return 0;
+out:
+	dev_err(priv->dev, "failed to config phy clock ret: %d\n", ret);
+	return ret;
+}
+
+static int hi3670_phy_init(struct phy *phy)
+{
+	struct hi3670_priv *priv = phy_get_drvdata(phy);
+	u32 val;
+	int ret;
+
+	/* assert controller */
+	val = CFGA0_VAUX_RESET | CFGA0_USB31C_RESET |
+	      CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, 0);
+	if (ret)
+		goto out;
+
+	ret = hi3670_config_phy_clock(priv);
+	if (ret)
+		goto out;
+
+	/* Exit from IDDQ mode */
+	ret = regmap_update_bits(priv->usb31misc, USB3OTG_CTRL5,
+				 CTRL5_USB2_SIDDQ, 0);
+	if (ret)
+		goto out;
+
+	/* Release USB31 PHY out of TestPowerDown mode */
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG50,
+				 CFG50_USB3_PHY_TEST_POWERDOWN, 0);
+	if (ret)
+		goto out;
+
+	/* Deassert phy */
+	val = CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, val);
+	if (ret)
+		goto out;
+
+	usleep_range(100, 120);
+
+	/* Tell the PHY power is stable */
+	val = CFG54_USB3_PHY0_ANA_PWR_EN | CFG54_PHY0_PCS_PWR_STABLE |
+	      CFG54_PHY0_PMA_PWR_STABLE;
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG54,
+				 val, val);
+	if (ret)
+		goto out;
+
+	ret = hi3670_config_tca(priv);
+	if (ret)
+		goto out;
+
+	/* Enable SSC */
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG5C,
+				 CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN,
+				 CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN);
+	if (ret)
+		goto out;
+
+	/* Deassert controller */
+	val = CFGA0_VAUX_RESET | CFGA0_USB31C_RESET;
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, val);
+	if (ret)
+		goto out;
+
+	usleep_range(100, 120);
+
+	/* Set fake vbus valid signal */
+	val = CTRL0_USB3_VBUSVLD | CTRL0_USB3_VBUSVLD_SEL;
+	ret = regmap_update_bits(priv->usb31misc, USB3OTG_CTRL0, val, val);
+	if (ret)
+		goto out;
+
+	val = CTRL3_USB2_VBUSVLDEXT0 | CTRL3_USB2_VBUSVLDEXTSEL0;
+	ret = regmap_update_bits(priv->usb31misc, USB3OTG_CTRL3, val, val);
+	if (ret)
+		goto out;
+
+	usleep_range(100, 120);
+
+	ret = hi3670_phy_set_params(priv);
+	if (ret)
+		goto out;
+
+	return 0;
+out:
+	dev_err(priv->dev, "failed to init phy ret: %d\n", ret);
+	return ret;
+}
+
+static int hi3670_phy_exit(struct phy *phy)
+{
+	struct hi3670_priv *priv = phy_get_drvdata(phy);
+	u32 mask;
+	int ret;
+
+	/* Assert phy */
+	mask = CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
+	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, mask, 0);
+	if (ret)
+		goto out;
+
+	if (!hi3670_is_abbclk_selected(priv)) {
+		/* disable usb_tcxo_en */
+		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
+				   USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START);
+	} else {
+		ret = regmap_write(priv->peri_crg, PERI_CRG_PERDIS6,
+				   GT_CLK_USB2PHY_REF);
+		if (ret)
+			goto out;
+	}
+
+	return 0;
+out:
+	dev_err(priv->dev, "failed to exit phy ret: %d\n", ret);
+	return ret;
+}
+
+static struct phy_ops hi3670_phy_ops = {
+	.init		= hi3670_phy_init,
+	.exit		= hi3670_phy_exit,
+	.owner		= THIS_MODULE,
+};
+
+static int hi3670_phy_probe(struct platform_device *pdev)
+{
+	struct phy_provider *phy_provider;
+	struct device *dev = &pdev->dev;
+	struct phy *phy;
+	struct hi3670_priv *priv;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	priv->peri_crg = syscon_regmap_lookup_by_phandle(dev->of_node,
+							 "hisilicon,pericrg-syscon");
+	if (IS_ERR(priv->peri_crg)) {
+		dev_err(dev, "no hisilicon,pericrg-syscon\n");
+		return PTR_ERR(priv->peri_crg);
+	}
+
+	priv->pctrl = syscon_regmap_lookup_by_phandle(dev->of_node,
+						      "hisilicon,pctrl-syscon");
+	if (IS_ERR(priv->pctrl)) {
+		dev_err(dev, "no hisilicon,pctrl-syscon\n");
+		return PTR_ERR(priv->pctrl);
+	}
+
+	priv->sctrl = syscon_regmap_lookup_by_phandle(dev->of_node,
+						      "hisilicon,sctrl-syscon");
+	if (IS_ERR(priv->sctrl)) {
+		dev_err(dev, "no hisilicon,sctrl-syscon\n");
+		return PTR_ERR(priv->sctrl);
+	}
+
+	/* node of hi3670 phy is a sub-node of usb3_otg_bc */
+	priv->usb31misc = syscon_node_to_regmap(dev->parent->of_node);
+	if (IS_ERR(priv->usb31misc)) {
+		dev_err(dev, "no hisilicon,usb3-otg-bc-syscon\n");
+		return PTR_ERR(priv->usb31misc);
+	}
+
+	if (of_property_read_u32(dev->of_node, "hisilicon,eye-diagram-param",
+				 &priv->eye_diagram_param))
+		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_PARAM;
+
+	if (of_property_read_u32(dev->of_node, "hisilicon,tx-vboost-lvl",
+				 &priv->tx_vboost_lvl))
+		priv->tx_vboost_lvl = KIRIN970_USB_DEFAULT_PHY_VBOOST;
+
+	phy = devm_phy_create(dev, NULL, &hi3670_phy_ops);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	phy_set_drvdata(phy, priv);
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct of_device_id hi3670_phy_of_match[] = {
+	{ .compatible = "hisilicon,hi3670-usb-phy" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, hi3670_phy_of_match);
+
+static struct platform_driver hi3670_phy_driver = {
+	.probe	= hi3670_phy_probe,
+	.driver = {
+		.name	= "hi3670-usb-phy",
+		.of_match_table	= hi3670_phy_of_match,
+	}
+};
+module_platform_driver(hi3670_phy_driver);
+
+MODULE_AUTHOR("Yu Chen <chenyu56@huawei.com>");
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Hilisicon Kirin970 USB31 PHY Driver");
diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index 2e48ded92a7e..cc1fc58866c5 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -1,16 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# to be placed at drivers/phy
-config PHY_HI3670_USB
-	tristate "hi3670 USB PHY support"
-	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
-	select GENERIC_PHY
-	select MFD_SYSCON
-	help
-	  Enable this to support the HISILICON HI3670 USB PHY.
-
-	  To compile this driver as a module, choose M here.
-
 # to be placed at drivers/spmi
 config SPMI_HISI3670
 	tristate "Hisilicon 3670 SPMI Controller"
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 1924fadac952..9371dcc3d35b 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_PHY_HI3670_USB)		+= phy-hi3670-usb3.o
-
 obj-$(CONFIG_SPMI_HISI3670)		+= hisi-spmi-controller.o
 obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
deleted file mode 100644
index 8918f3665f8e..000000000000
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ /dev/null
@@ -1,668 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Phy provider for USB 3.1 controller on HiSilicon Kirin970 platform
- *
- * Copyright (C) 2017-2020 Hilisicon Electronics Co., Ltd.
- *		http://www.huawei.com
- *
- * Authors: Yu Chen <chenyu56@huawei.com>
- */
-
-#include <linux/bitfield.h>
-#include <linux/clk.h>
-#include <linux/kernel.h>
-#include <linux/mfd/syscon.h>
-#include <linux/module.h>
-#include <linux/phy/phy.h>
-#include <linux/platform_device.h>
-#include <linux/regmap.h>
-
-#define SCTRL_SCDEEPSLEEPED		(0x0)
-#define USB_CLK_SELECTED		BIT(20)
-
-#define PERI_CRG_PEREN0			(0x00)
-#define PERI_CRG_PERDIS0		(0x04)
-#define PERI_CRG_PEREN4			(0x40)
-#define PERI_CRG_PERDIS4		(0x44)
-#define PERI_CRG_PERRSTEN4		(0x90)
-#define PERI_CRG_PERRSTDIS4		(0x94)
-#define PERI_CRG_ISODIS			(0x148)
-#define PERI_CRG_PEREN6			(0x410)
-#define PERI_CRG_PERDIS6		(0x414)
-
-#define USB_REFCLK_ISO_EN		BIT(25)
-
-#define GT_CLK_USB2PHY_REF		BIT(19)
-
-#define PCTRL_PERI_CTRL3		(0x10)
-#define PCTRL_PERI_CTRL3_MSK_START	(16)
-#define USB_TCXO_EN			BIT(1)
-
-#define PCTRL_PERI_CTRL24		(0x64)
-#define SC_CLK_USB3PHY_3MUX1_SEL	BIT(25)
-
-#define USB3OTG_CTRL0			(0x00)
-#define USB3OTG_CTRL3			(0x0c)
-#define USB3OTG_CTRL4			(0x10)
-#define USB3OTG_CTRL5			(0x14)
-#define USB3OTG_CTRL7			(0x1c)
-#define USB_MISC_CFG50			(0x50)
-#define USB_MISC_CFG54			(0x54)
-#define USB_MISC_CFG58			(0x58)
-#define USB_MISC_CFG5C			(0x5c)
-#define USB_MISC_CFGA0			(0xa0)
-#define TCA_CLK_RST			(0x200)
-#define TCA_INTR_EN			(0x204)
-#define TCA_INTR_STS			(0x208)
-#define TCA_GCFG			(0x210)
-#define TCA_TCPC			(0x214)
-#define TCA_SYSMODE_CFG			(0x218)
-#define TCA_VBUS_CTRL			(0x240)
-
-#define CTRL0_USB3_VBUSVLD		BIT(7)
-#define CTRL0_USB3_VBUSVLD_SEL		BIT(6)
-
-#define CTRL3_USB2_VBUSVLDEXT0		BIT(6)
-#define CTRL3_USB2_VBUSVLDEXTSEL0	BIT(5)
-
-#define CTRL5_USB2_SIDDQ		BIT(0)
-
-#define CTRL7_USB2_REFCLKSEL_MASK	GENMASK(4, 3)
-#define CTRL7_USB2_REFCLKSEL_ABB	(BIT(4) | BIT(3))
-#define CTRL7_USB2_REFCLKSEL_PAD	BIT(4)
-
-#define CFG50_USB3_PHY_TEST_POWERDOWN	BIT(23)
-
-#define CFG54_USB31PHY_CR_ADDR_MASK	GENMASK(31, 16)
-
-#define CFG54_USB3PHY_REF_USE_PAD	BIT(12)
-#define CFG54_PHY0_PMA_PWR_STABLE	BIT(11)
-#define CFG54_PHY0_PCS_PWR_STABLE	BIT(9)
-#define CFG54_USB31PHY_CR_ACK		BIT(7)
-#define CFG54_USB31PHY_CR_WR_EN		BIT(5)
-#define CFG54_USB31PHY_CR_SEL		BIT(4)
-#define CFG54_USB31PHY_CR_RD_EN		BIT(3)
-#define CFG54_USB31PHY_CR_CLK		BIT(2)
-#define CFG54_USB3_PHY0_ANA_PWR_EN	BIT(1)
-
-#define CFG58_USB31PHY_CR_DATA_MASK     GENMASK(31, 16)
-
-#define CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN	BIT(1)
-
-#define CFGA0_VAUX_RESET		BIT(9)
-#define CFGA0_USB31C_RESET		BIT(8)
-#define CFGA0_USB2PHY_REFCLK_SELECT	BIT(4)
-#define CFGA0_USB3PHY_RESET		BIT(1)
-#define CFGA0_USB2PHY_POR		BIT(0)
-
-#define INTR_EN_XA_TIMEOUT_EVT_EN	BIT(1)
-#define INTR_EN_XA_ACK_EVT_EN		BIT(0)
-
-#define CLK_RST_TCA_REF_CLK_EN		BIT(1)
-#define CLK_RST_SUSPEND_CLK_EN		BIT(0)
-
-#define GCFG_ROLE_HSTDEV		BIT(4)
-#define GCFG_OP_MODE			GENMASK(1, 0)
-#define GCFG_OP_MODE_CTRL_SYNC_MODE	BIT(0)
-
-#define TCPC_VALID			BIT(4)
-#define TCPC_LOW_POWER_EN		BIT(3)
-#define TCPC_MUX_CONTROL_MASK		GENMASK(1, 0)
-#define TCPC_MUX_CONTROL_USB31		BIT(0)
-
-#define SYSMODE_CFG_TYPEC_DISABLE	BIT(3)
-
-#define VBUS_CTRL_POWERPRESENT_OVERRD	GENMASK(3, 2)
-#define VBUS_CTRL_VBUSVALID_OVERRD	GENMASK(1, 0)
-
-#define KIRIN970_USB_DEFAULT_PHY_PARAM	(0xfdfee4)
-#define KIRIN970_USB_DEFAULT_PHY_VBOOST	(0x5)
-
-#define TX_VBOOST_LVL_REG		(0xf)
-#define TX_VBOOST_LVL_START		(6)
-#define TX_VBOOST_LVL_ENABLE		BIT(9)
-
-struct hi3670_priv {
-	struct device *dev;
-	struct regmap *peri_crg;
-	struct regmap *pctrl;
-	struct regmap *sctrl;
-	struct regmap *usb31misc;
-
-	u32 eye_diagram_param;
-	u32 tx_vboost_lvl;
-
-	u32 peri_crg_offset;
-	u32 pctrl_offset;
-	u32 usb31misc_offset;
-};
-
-static int hi3670_phy_cr_clk(struct regmap *usb31misc)
-{
-	int ret;
-
-	/* Clock up */
-	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-				 CFG54_USB31PHY_CR_CLK, CFG54_USB31PHY_CR_CLK);
-	if (ret)
-		return ret;
-
-	/* Clock down */
-	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-				 CFG54_USB31PHY_CR_CLK, 0);
-
-	return ret;
-}
-
-static int hi3670_phy_cr_set_sel(struct regmap *usb31misc)
-{
-	return regmap_update_bits(usb31misc, USB_MISC_CFG54,
-				  CFG54_USB31PHY_CR_SEL, CFG54_USB31PHY_CR_SEL);
-}
-
-static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
-{
-	int ret, reg;
-
-	if (direction)
-		reg = CFG54_USB31PHY_CR_WR_EN;
-	else
-		reg = CFG54_USB31PHY_CR_RD_EN;
-
-	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54, reg, reg);
-
-	if (ret)
-		return ret;
-
-	ret = hi3670_phy_cr_clk(usb31misc);
-	if (ret)
-		return ret;
-
-	return regmap_update_bits(usb31misc, USB_MISC_CFG54,
-				  CFG54_USB31PHY_CR_RD_EN | CFG54_USB31PHY_CR_WR_EN, 0);
-}
-
-static int hi3670_phy_cr_wait_ack(struct regmap *usb31misc)
-{
-	u32 reg;
-	int retry = 10;
-	int ret;
-
-	while (retry-- > 0) {
-		ret = regmap_read(usb31misc, USB_MISC_CFG54, &reg);
-		if (ret)
-			return ret;
-		if ((reg & CFG54_USB31PHY_CR_ACK) == CFG54_USB31PHY_CR_ACK)
-			return 0;
-
-		ret = hi3670_phy_cr_clk(usb31misc);
-		if (ret)
-			return ret;
-
-		usleep_range(10, 20);
-	}
-
-	return -ETIMEDOUT;
-}
-
-static int hi3670_phy_cr_set_addr(struct regmap *usb31misc, u32 addr)
-{
-	u32 reg;
-	int ret;
-
-	ret = regmap_read(usb31misc, USB_MISC_CFG54, &reg);
-	if (ret)
-		return ret;
-
-	reg = FIELD_PREP(CFG54_USB31PHY_CR_ADDR_MASK, addr);
-	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
-				 CFG54_USB31PHY_CR_ADDR_MASK, reg);
-
-	return ret;
-}
-
-static int hi3670_phy_cr_read(struct regmap *usb31misc, u32 addr, u32 *val)
-{
-	int reg;
-	int i;
-	int ret;
-
-	for (i = 0; i < 100; i++) {
-		ret = hi3670_phy_cr_clk(usb31misc);
-		if (ret)
-			return ret;
-	}
-
-	ret = hi3670_phy_cr_set_sel(usb31misc);
-	if (ret)
-		return ret;
-
-	ret = hi3670_phy_cr_set_addr(usb31misc, addr);
-	if (ret)
-		return ret;
-
-	ret = hi3670_phy_cr_start(usb31misc, 0);
-	if (ret)
-		return ret;
-
-	ret = hi3670_phy_cr_wait_ack(usb31misc);
-	if (ret)
-		return ret;
-
-	ret = regmap_read(usb31misc, USB_MISC_CFG58, &reg);
-	if (ret)
-		return ret;
-
-	*val = FIELD_GET(CFG58_USB31PHY_CR_DATA_MASK, reg);
-
-	return 0;
-}
-
-static int hi3670_phy_cr_write(struct regmap *usb31misc, u32 addr, u32 val)
-{
-	int i;
-	int ret;
-
-	for (i = 0; i < 100; i++) {
-		ret = hi3670_phy_cr_clk(usb31misc);
-		if (ret)
-			return ret;
-	}
-
-	ret = hi3670_phy_cr_set_sel(usb31misc);
-	if (ret)
-		return ret;
-
-	ret = hi3670_phy_cr_set_addr(usb31misc, addr);
-	if (ret)
-		return ret;
-
-	ret = regmap_write(usb31misc, USB_MISC_CFG58,
-			   FIELD_PREP(CFG58_USB31PHY_CR_DATA_MASK, val));
-	if (ret)
-		return ret;
-
-	ret = hi3670_phy_cr_start(usb31misc, 1);
-	if (ret)
-		return ret;
-
-	ret = hi3670_phy_cr_wait_ack(usb31misc);
-
-	return ret;
-}
-
-static int hi3670_phy_set_params(struct hi3670_priv *priv)
-{
-	u32 reg;
-	int ret;
-	int retry = 3;
-
-	ret = regmap_write(priv->usb31misc, USB3OTG_CTRL4,
-			   priv->eye_diagram_param);
-	if (ret) {
-		dev_err(priv->dev, "set USB3OTG_CTRL4 failed\n");
-		return ret;
-	}
-
-	while (retry-- > 0) {
-		ret = hi3670_phy_cr_read(priv->usb31misc,
-					 TX_VBOOST_LVL_REG, &reg);
-		if (!ret)
-			break;
-
-		if (ret != -ETIMEDOUT) {
-			dev_err(priv->dev, "read TX_VBOOST_LVL_REG failed\n");
-			return ret;
-		}
-	}
-	if (ret)
-		return ret;
-
-	reg |= (TX_VBOOST_LVL_ENABLE | (priv->tx_vboost_lvl << TX_VBOOST_LVL_START));
-	ret = hi3670_phy_cr_write(priv->usb31misc, TX_VBOOST_LVL_REG, reg);
-	if (ret)
-		dev_err(priv->dev, "write TX_VBOOST_LVL_REG failed\n");
-
-	return ret;
-}
-
-static bool hi3670_is_abbclk_selected(struct hi3670_priv *priv)
-{
-	u32 reg;
-
-	if (!priv->sctrl) {
-		dev_err(priv->dev, "priv->sctrl is null!\n");
-		return false;
-	}
-
-	if (regmap_read(priv->sctrl, SCTRL_SCDEEPSLEEPED, &reg)) {
-		dev_err(priv->dev, "SCTRL_SCDEEPSLEEPED read failed!\n");
-		return false;
-	}
-
-	if ((reg & USB_CLK_SELECTED) == 0)
-		return false;
-
-	return true;
-}
-
-static int hi3670_config_phy_clock(struct hi3670_priv *priv)
-{
-	u32 val, mask;
-	int ret;
-
-	if (!hi3670_is_abbclk_selected(priv)) {
-		/* usb refclk iso disable */
-		ret = regmap_write(priv->peri_crg, PERI_CRG_ISODIS,
-				   USB_REFCLK_ISO_EN);
-		if (ret)
-			goto out;
-
-		/* enable usb_tcxo_en */
-		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
-				   USB_TCXO_EN |
-				   (USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START));
-
-		/* select usbphy clk from abb */
-		mask = SC_CLK_USB3PHY_3MUX1_SEL;
-		ret = regmap_update_bits(priv->pctrl,
-					 PCTRL_PERI_CTRL24, mask, 0);
-		if (ret)
-			goto out;
-
-		ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0,
-					 CFGA0_USB2PHY_REFCLK_SELECT, 0);
-		if (ret)
-			goto out;
-
-		ret = regmap_read(priv->usb31misc, USB3OTG_CTRL7, &val);
-		if (ret)
-			goto out;
-		val &= ~CTRL7_USB2_REFCLKSEL_MASK;
-		val |= CTRL7_USB2_REFCLKSEL_ABB;
-		ret = regmap_write(priv->usb31misc, USB3OTG_CTRL7, val);
-		if (ret)
-			goto out;
-
-		return 0;
-	}
-
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG54,
-				 CFG54_USB3PHY_REF_USE_PAD,
-				 CFG54_USB3PHY_REF_USE_PAD);
-	if (ret)
-		goto out;
-
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0,
-				 CFGA0_USB2PHY_REFCLK_SELECT,
-				 CFGA0_USB2PHY_REFCLK_SELECT);
-	if (ret)
-		goto out;
-
-	ret = regmap_read(priv->usb31misc, USB3OTG_CTRL7, &val);
-	if (ret)
-		goto out;
-	val &= ~CTRL7_USB2_REFCLKSEL_MASK;
-	val |= CTRL7_USB2_REFCLKSEL_PAD;
-	ret = regmap_write(priv->usb31misc, USB3OTG_CTRL7, val);
-	if (ret)
-		goto out;
-
-	ret = regmap_write(priv->peri_crg,
-			   PERI_CRG_PEREN6, GT_CLK_USB2PHY_REF);
-	if (ret)
-		goto out;
-
-	return 0;
-out:
-	dev_err(priv->dev, "failed to config phy clock ret: %d\n", ret);
-	return ret;
-}
-
-static int hi3670_config_tca(struct hi3670_priv *priv)
-{
-	u32 val, mask;
-	int ret;
-
-	ret = regmap_write(priv->usb31misc, TCA_INTR_STS, 0xffff);
-	if (ret)
-		goto out;
-
-	ret = regmap_write(priv->usb31misc, TCA_INTR_EN,
-			   INTR_EN_XA_TIMEOUT_EVT_EN | INTR_EN_XA_ACK_EVT_EN);
-	if (ret)
-		goto out;
-
-	mask = CLK_RST_TCA_REF_CLK_EN | CLK_RST_SUSPEND_CLK_EN;
-	ret = regmap_update_bits(priv->usb31misc, TCA_CLK_RST, mask, 0);
-	if (ret)
-		goto out;
-
-	ret = regmap_update_bits(priv->usb31misc, TCA_GCFG,
-				 GCFG_ROLE_HSTDEV | GCFG_OP_MODE,
-				 GCFG_ROLE_HSTDEV | GCFG_OP_MODE_CTRL_SYNC_MODE);
-	if (ret)
-		goto out;
-
-	ret = regmap_update_bits(priv->usb31misc, TCA_SYSMODE_CFG,
-				 SYSMODE_CFG_TYPEC_DISABLE, 0);
-	if (ret)
-		goto out;
-
-	ret = regmap_read(priv->usb31misc, TCA_TCPC, &val);
-	if (ret)
-		goto out;
-	val &= ~(TCPC_VALID | TCPC_LOW_POWER_EN | TCPC_MUX_CONTROL_MASK);
-	val |= (TCPC_VALID | TCPC_MUX_CONTROL_USB31);
-	ret = regmap_write(priv->usb31misc, TCA_TCPC, val);
-	if (ret)
-		goto out;
-
-	ret = regmap_write(priv->usb31misc, TCA_VBUS_CTRL,
-			   VBUS_CTRL_POWERPRESENT_OVERRD | VBUS_CTRL_VBUSVALID_OVERRD);
-	if (ret)
-		goto out;
-
-	return 0;
-out:
-	dev_err(priv->dev, "failed to config phy clock ret: %d\n", ret);
-	return ret;
-}
-
-static int hi3670_phy_init(struct phy *phy)
-{
-	struct hi3670_priv *priv = phy_get_drvdata(phy);
-	u32 val;
-	int ret;
-
-	/* assert controller */
-	val = CFGA0_VAUX_RESET | CFGA0_USB31C_RESET |
-	      CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, 0);
-	if (ret)
-		goto out;
-
-	ret = hi3670_config_phy_clock(priv);
-	if (ret)
-		goto out;
-
-	/* Exit from IDDQ mode */
-	ret = regmap_update_bits(priv->usb31misc, USB3OTG_CTRL5,
-				 CTRL5_USB2_SIDDQ, 0);
-	if (ret)
-		goto out;
-
-	/* Release USB31 PHY out of TestPowerDown mode */
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG50,
-				 CFG50_USB3_PHY_TEST_POWERDOWN, 0);
-	if (ret)
-		goto out;
-
-	/* Deassert phy */
-	val = CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, val);
-	if (ret)
-		goto out;
-
-	usleep_range(100, 120);
-
-	/* Tell the PHY power is stable */
-	val = CFG54_USB3_PHY0_ANA_PWR_EN | CFG54_PHY0_PCS_PWR_STABLE |
-	      CFG54_PHY0_PMA_PWR_STABLE;
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG54,
-				 val, val);
-	if (ret)
-		goto out;
-
-	ret = hi3670_config_tca(priv);
-	if (ret)
-		goto out;
-
-	/* Enable SSC */
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFG5C,
-				 CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN,
-				 CFG5C_USB3_PHY0_SS_MPLLA_SSC_EN);
-	if (ret)
-		goto out;
-
-	/* Deassert controller */
-	val = CFGA0_VAUX_RESET | CFGA0_USB31C_RESET;
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, val, val);
-	if (ret)
-		goto out;
-
-	usleep_range(100, 120);
-
-	/* Set fake vbus valid signal */
-	val = CTRL0_USB3_VBUSVLD | CTRL0_USB3_VBUSVLD_SEL;
-	ret = regmap_update_bits(priv->usb31misc, USB3OTG_CTRL0, val, val);
-	if (ret)
-		goto out;
-
-	val = CTRL3_USB2_VBUSVLDEXT0 | CTRL3_USB2_VBUSVLDEXTSEL0;
-	ret = regmap_update_bits(priv->usb31misc, USB3OTG_CTRL3, val, val);
-	if (ret)
-		goto out;
-
-	usleep_range(100, 120);
-
-	ret = hi3670_phy_set_params(priv);
-	if (ret)
-		goto out;
-
-	return 0;
-out:
-	dev_err(priv->dev, "failed to init phy ret: %d\n", ret);
-	return ret;
-}
-
-static int hi3670_phy_exit(struct phy *phy)
-{
-	struct hi3670_priv *priv = phy_get_drvdata(phy);
-	u32 mask;
-	int ret;
-
-	/* Assert phy */
-	mask = CFGA0_USB3PHY_RESET | CFGA0_USB2PHY_POR;
-	ret = regmap_update_bits(priv->usb31misc, USB_MISC_CFGA0, mask, 0);
-	if (ret)
-		goto out;
-
-	if (!hi3670_is_abbclk_selected(priv)) {
-		/* disable usb_tcxo_en */
-		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
-				   USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START);
-	} else {
-		ret = regmap_write(priv->peri_crg, PERI_CRG_PERDIS6,
-				   GT_CLK_USB2PHY_REF);
-		if (ret)
-			goto out;
-	}
-
-	return 0;
-out:
-	dev_err(priv->dev, "failed to exit phy ret: %d\n", ret);
-	return ret;
-}
-
-static struct phy_ops hi3670_phy_ops = {
-	.init		= hi3670_phy_init,
-	.exit		= hi3670_phy_exit,
-	.owner		= THIS_MODULE,
-};
-
-static int hi3670_phy_probe(struct platform_device *pdev)
-{
-	struct phy_provider *phy_provider;
-	struct device *dev = &pdev->dev;
-	struct phy *phy;
-	struct hi3670_priv *priv;
-
-	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	priv->dev = dev;
-	priv->peri_crg = syscon_regmap_lookup_by_phandle(dev->of_node,
-							 "hisilicon,pericrg-syscon");
-	if (IS_ERR(priv->peri_crg)) {
-		dev_err(dev, "no hisilicon,pericrg-syscon\n");
-		return PTR_ERR(priv->peri_crg);
-	}
-
-	priv->pctrl = syscon_regmap_lookup_by_phandle(dev->of_node,
-						      "hisilicon,pctrl-syscon");
-	if (IS_ERR(priv->pctrl)) {
-		dev_err(dev, "no hisilicon,pctrl-syscon\n");
-		return PTR_ERR(priv->pctrl);
-	}
-
-	priv->sctrl = syscon_regmap_lookup_by_phandle(dev->of_node,
-						      "hisilicon,sctrl-syscon");
-	if (IS_ERR(priv->sctrl)) {
-		dev_err(dev, "no hisilicon,sctrl-syscon\n");
-		return PTR_ERR(priv->sctrl);
-	}
-
-	/* node of hi3670 phy is a sub-node of usb3_otg_bc */
-	priv->usb31misc = syscon_node_to_regmap(dev->parent->of_node);
-	if (IS_ERR(priv->usb31misc)) {
-		dev_err(dev, "no hisilicon,usb3-otg-bc-syscon\n");
-		return PTR_ERR(priv->usb31misc);
-	}
-
-	if (of_property_read_u32(dev->of_node, "hisilicon,eye-diagram-param",
-				 &priv->eye_diagram_param))
-		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_PARAM;
-
-	if (of_property_read_u32(dev->of_node, "hisilicon,tx-vboost-lvl",
-				 &priv->tx_vboost_lvl))
-		priv->tx_vboost_lvl = KIRIN970_USB_DEFAULT_PHY_VBOOST;
-
-	phy = devm_phy_create(dev, NULL, &hi3670_phy_ops);
-	if (IS_ERR(phy))
-		return PTR_ERR(phy);
-
-	phy_set_drvdata(phy, priv);
-	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	return PTR_ERR_OR_ZERO(phy_provider);
-}
-
-static const struct of_device_id hi3670_phy_of_match[] = {
-	{ .compatible = "hisilicon,hi3670-usb-phy" },
-	{ },
-};
-MODULE_DEVICE_TABLE(of, hi3670_phy_of_match);
-
-static struct platform_driver hi3670_phy_driver = {
-	.probe	= hi3670_phy_probe,
-	.driver = {
-		.name	= "hi3670-usb-phy",
-		.of_match_table	= hi3670_phy_of_match,
-	}
-};
-module_platform_driver(hi3670_phy_driver);
-
-MODULE_AUTHOR("Yu Chen <chenyu56@huawei.com>");
-MODULE_LICENSE("GPL v2");
-MODULE_DESCRIPTION("Hilisicon Kirin970 USB31 PHY Driver");
diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml b/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
deleted file mode 100644
index ebd78acfe2de..000000000000
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
+++ /dev/null
@@ -1,73 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/phy/hisilicon,hi3670-usb3.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Hisilicon Kirin970 USB PHY
-
-maintainers:
-  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
-
-description: |+
-  Bindings for USB3 PHY on HiSilicon Kirin 970.
-
-properties:
-  compatible:
-    const: hisilicon,hi3670-usb-phy
-
-  "#phy-cells":
-    const: 0
-
-  hisilicon,pericrg-syscon:
-    $ref: '/schemas/types.yaml#/definitions/phandle'
-    description: phandle of syscon used to control iso refclk.
-
-  hisilicon,pctrl-syscon:
-    $ref: '/schemas/types.yaml#/definitions/phandle'
-    description: phandle of syscon used to control usb tcxo.
-
-  hisilicon,sctrl-syscon:
-    $ref: '/schemas/types.yaml#/definitions/phandle'
-    description: phandle of syscon used to control phy deep sleep.
-
-  hisilicon,eye-diagram-param:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: Eye diagram for phy.
-
-  hisilicon,tx-vboost-lvl:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: TX level vboost for phy.
-
-required:
-  - compatible
-  - hisilicon,pericrg-syscon
-  - hisilicon,pctrl-syscon
-  - hisilicon,sctrl-syscon
-  - hisilicon,eye-diagram-param
-  - hisilicon,tx-vboost-lvl
-  - "#phy-cells"
-
-additionalProperties: false
-
-examples:
-  - |
-    bus {
-      #address-cells = <2>;
-      #size-cells = <2>;
-
-      usb3_otg_bc: usb3_otg_bc@ff200000 {
-        compatible = "syscon", "simple-mfd";
-        reg = <0x0 0xff200000 0x0 0x1000>;
-
-        usb_phy {
-          compatible = "hisilicon,hi3670-usb-phy";
-          #phy-cells = <0>;
-          hisilicon,pericrg-syscon = <&crg_ctrl>;
-          hisilicon,pctrl-syscon = <&pctrl>;
-          hisilicon,sctrl-syscon = <&sctrl>;
-          hisilicon,eye-diagram-param = <0xfdfee4>;
-          hisilicon,tx-vboost-lvl = <0x5>;
-        };
-      };
-    };
-- 
2.29.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
