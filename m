Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44F03089AE
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:04:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F159874B7;
	Fri, 29 Jan 2021 15:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MlS5UmgAfKMl; Fri, 29 Jan 2021 15:04:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34286874CE;
	Fri, 29 Jan 2021 15:04:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38C1E1BF399
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3468085BCD
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0AFchHr9vcLi for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9CFFA85E8D
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D6FF164E15;
 Fri, 29 Jan 2021 15:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611932635;
 bh=yUz72ZbnsIRSKZqEBMa7a2pwByD/6HxG+IfIxUVj1r8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MV0B8a/uQ21t9lQiE4pHj5wUu/o++hu1xS9Woy7r3KPfIZaQbtZG+NKxrhpum0HiS
 Sqo1tiwk7hV9kSZ25cVL2zPcox0320qgPQwk3gEMjSMDxdhz5ahbvblhysNJB/P494
 ioKr/ZxGyFuUpQ9Taq+g++O9H1/9njy3GKBPsK/5YT+wsyUU3hgwnOhATg7PW9oEte
 lgSrRRd57BQyT2GzBIf+db485PZi0PgQaVDPFxHbAeAhQ/RKEBkgmaaBJmRxQ4faHe
 bkKX1l8HXppI5IINVREMFBpLf1Q2QvsQYo5H7xZtv8tYSVS4M1aeWLGDl2DZ3p2iuo
 uHcG8jQqkPuhA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5VJQ-0078tY-AZ; Fri, 29 Jan 2021 16:03:52 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v7 13/14] regulator: hi6421v600-regulator: move it from staging
Date: Fri, 29 Jan 2021 16:03:48 +0100
Message-Id: <6b2dd0e6d458d03e168d7dbed30c615d7f7262c0.1611932194.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, David Gow <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver is ready for mainstream. Move it out of staging.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 MAINTAINERS                                   |   7 +-
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/hi6421v600-regulator.c      | 299 ++++++++++++++++++
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/hikey9xx/Kconfig              |  11 -
 drivers/staging/hikey9xx/Makefile             |   3 -
 drivers/staging/hikey9xx/TODO                 |   5 -
 .../staging/hikey9xx/hi6421v600-regulator.c   | 299 ------------------
 10 files changed, 309 insertions(+), 327 deletions(-)
 create mode 100644 drivers/regulator/hi6421v600-regulator.c
 delete mode 100644 drivers/staging/hikey9xx/Kconfig
 delete mode 100644 drivers/staging/hikey9xx/Makefile
 delete mode 100644 drivers/staging/hikey9xx/TODO
 delete mode 100644 drivers/staging/hikey9xx/hi6421v600-regulator.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 241f11b7d48a..5c5ad946c5d5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8091,12 +8091,7 @@ L:	linux-kernel@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
 F:	drivers/mfd/hi6421-spmi-pmic.c
-
-HISILICON STAGING DRIVERS FOR HIKEY 960/970
-M:	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
-L:	devel@driverdev.osuosl.org
-S:	Maintained
-F:	drivers/staging/hikey9xx/
+F:	drivers/regulator/hi6421v600-regulator.c
 
 HISILICON TRUE RANDOM NUMBER GENERATOR V2 SUPPORT
 M:	Zaibo Xu <xuzaibo@huawei.com>
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 5abdd29fb9f3..088474391da8 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -423,6 +423,14 @@ config REGULATOR_HI655X
 	  This driver provides support for the voltage regulators of the
 	  Hisilicon Hi655x PMIC device.
 
+config REGULATOR_HI6421V600
+	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
+	depends on MFD_HI6421_SPMI && OF
+	help
+	  This driver provides support for the voltage regulators on
+	  HiSilicon Hi6421v600 PMU / Codec IC.
+	  This is used on Kirin 3670 boards, like HiKey 970.
+
 config REGULATOR_ISL9305
 	tristate "Intersil ISL9305 regulator"
 	depends on I2C
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 680e539f6579..77e519d2bc68 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -49,6 +49,7 @@ obj-$(CONFIG_REGULATOR_FAN53880) += fan53880.o
 obj-$(CONFIG_REGULATOR_GPIO) += gpio-regulator.o
 obj-$(CONFIG_REGULATOR_HI6421) += hi6421-regulator.o
 obj-$(CONFIG_REGULATOR_HI6421V530) += hi6421v530-regulator.o
+obj-$(CONFIG_REGULATOR_HI6421V600) += hi6421v600-regulator.o
 obj-$(CONFIG_REGULATOR_HI655X) += hi655x-regulator.o
 obj-$(CONFIG_REGULATOR_ISL6271A) += isl6271a-regulator.o
 obj-$(CONFIG_REGULATOR_ISL9305) += isl9305.o
diff --git a/drivers/regulator/hi6421v600-regulator.c b/drivers/regulator/hi6421v600-regulator.c
new file mode 100644
index 000000000000..c801bb840962
--- /dev/null
+++ b/drivers/regulator/hi6421v600-regulator.c
@@ -0,0 +1,299 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Device driver for regulators in Hisi IC
+//
+// Copyright (c) 2013 Linaro Ltd.
+// Copyright (c) 2011 Hisilicon.
+// Copyright (c) 2020-2021 Huawei Technologies Co., Ltd
+//
+// Guodong Xu <guodong.xu@linaro.org>
+
+#include <linux/delay.h>
+#include <linux/mfd/hi6421-spmi-pmic.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+#include <linux/spmi.h>
+
+struct hi6421_spmi_reg_info {
+	struct regulator_desc	desc;
+	struct hi6421_spmi_pmic *pmic;
+	u8			eco_mode_mask;
+	u32			eco_uA;
+
+	/* Serialize regulator enable logic */
+	struct mutex enable_mutex;
+};
+
+static const unsigned int ldo3_voltages[] = {
+	1500000, 1550000, 1600000, 1650000,
+	1700000, 1725000, 1750000, 1775000,
+	1800000, 1825000, 1850000, 1875000,
+	1900000, 1925000, 1950000, 2000000
+};
+
+static const unsigned int ldo4_voltages[] = {
+	1725000, 1750000, 1775000, 1800000,
+	1825000, 1850000, 1875000, 1900000
+};
+
+static const unsigned int ldo9_voltages[] = {
+	1750000, 1800000, 1825000, 2800000,
+	2850000, 2950000, 3000000, 3300000
+};
+
+static const unsigned int ldo15_voltages[] = {
+	1800000, 1850000, 2400000, 2600000,
+	2700000, 2850000, 2950000, 3000000
+};
+
+static const unsigned int ldo17_voltages[] = {
+	2500000, 2600000, 2700000, 2800000,
+	3000000, 3100000, 3200000, 3300000
+};
+
+static const unsigned int ldo34_voltages[] = {
+	2600000, 2700000, 2800000, 2900000,
+	3000000, 3100000, 3200000, 3300000
+};
+
+/**
+ * HI6421V600_LDO() - specify a LDO power line
+ * @_id: LDO id name string
+ * @vtable: voltage table
+ * @ereg: enable register
+ * @emask: enable mask
+ * @vreg: voltage select register
+ * @odelay: off/on delay time in uS
+ * @etime: enable time in uS
+ * @ecomask: eco mode mask
+ * @ecoamp: eco mode load uppler limit in uA
+ */
+#define HI6421V600_LDO(_id, vtable, ereg, emask, vreg,			       \
+		       odelay, etime, ecomask, ecoamp)			       \
+	[HI6421V600_##_id] = {						       \
+		.desc = {						       \
+			.name		= #_id,				       \
+			.of_match        = of_match_ptr(#_id),		       \
+			.regulators_node = of_match_ptr("regulators"),	       \
+			.ops		= &hi6421_spmi_ldo_rops,	       \
+			.type		= REGULATOR_VOLTAGE,		       \
+			.id		= HI6421V600_##_id,		       \
+			.owner		= THIS_MODULE,			       \
+			.volt_table	= vtable,			       \
+			.n_voltages	= ARRAY_SIZE(vtable),		       \
+			.vsel_mask	= (1 << (ARRAY_SIZE(vtable) - 1)) - 1, \
+			.vsel_reg	= vreg,				       \
+			.enable_reg	= ereg,				       \
+			.enable_mask	= emask,			       \
+			.enable_time	= etime,			       \
+			.ramp_delay	= etime,			       \
+			.off_on_delay	= odelay,			       \
+		},							       \
+		.eco_mode_mask		= ecomask,			       \
+		.eco_uA			= ecoamp,			       \
+	}
+
+static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	int ret;
+
+	/* cannot enable more than one regulator at one time */
+	mutex_lock(&sreg->enable_mutex);
+
+	ret = regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
+				 rdev->desc->enable_mask,
+			         rdev->desc->enable_mask);
+
+	/* Avoid powering up multiple devices at the same time */
+	usleep_range(rdev->desc->off_on_delay, rdev->desc->off_on_delay + 60);
+
+	mutex_unlock(&sreg->enable_mutex);
+
+	return ret;
+}
+
+static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+
+	return regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
+				  rdev->desc->enable_mask, 0);
+}
+
+static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val;
+
+	regmap_read(pmic->regmap, rdev->desc->enable_reg, &reg_val);
+
+	if (reg_val & sreg->eco_mode_mask)
+		return REGULATOR_MODE_IDLE;
+
+	return REGULATOR_MODE_NORMAL;
+}
+
+static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
+					  unsigned int mode)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 val;
+
+	switch (mode) {
+	case REGULATOR_MODE_NORMAL:
+		val = 0;
+		break;
+	case REGULATOR_MODE_IDLE:
+		val = sreg->eco_mode_mask << (ffs(sreg->eco_mode_mask) - 1);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
+				  sreg->eco_mode_mask, val);
+}
+
+static unsigned int
+hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
+				       int input_uV, int output_uV,
+				       int load_uA)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+
+	if (!sreg->eco_uA || ((unsigned int)load_uA > sreg->eco_uA))
+		return REGULATOR_MODE_NORMAL;
+
+	return REGULATOR_MODE_IDLE;
+}
+
+static const struct regulator_ops hi6421_spmi_ldo_rops = {
+	.is_enabled = regulator_is_enabled_regmap,
+	.enable = hi6421_spmi_regulator_enable,
+	.disable = hi6421_spmi_regulator_disable,
+	.list_voltage = regulator_list_voltage_table,
+	.map_voltage = regulator_map_voltage_iterate,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_mode = hi6421_spmi_regulator_get_mode,
+	.set_mode = hi6421_spmi_regulator_set_mode,
+	.get_optimum_mode = hi6421_spmi_regulator_get_optimum_mode,
+};
+
+/* HI6421v600 regulators with known registers */
+enum hi6421_spmi_regulator_id {
+	HI6421V600_LDO3,
+	HI6421V600_LDO4,
+	HI6421V600_LDO9,
+	HI6421V600_LDO15,
+	HI6421V600_LDO16,
+	HI6421V600_LDO17,
+	HI6421V600_LDO33,
+	HI6421V600_LDO34,
+};
+
+static struct hi6421_spmi_reg_info regulator_info[] = {
+	HI6421V600_LDO(LDO3, ldo3_voltages,
+		       0x16, 0x01, 0x51,
+		       20000, 120,
+		       0, 0),
+	HI6421V600_LDO(LDO4, ldo4_voltages,
+		       0x17, 0x01, 0x52,
+		       20000, 120,
+		       0x10, 10000),
+	HI6421V600_LDO(LDO9, ldo9_voltages,
+		       0x1c, 0x01, 0x57,
+		       20000, 360,
+		       0x10, 10000),
+	HI6421V600_LDO(LDO15, ldo15_voltages,
+		       0x21, 0x01, 0x5c,
+		       20000, 360,
+		       0x10, 10000),
+	HI6421V600_LDO(LDO16, ldo15_voltages,
+		       0x22, 0x01, 0x5d,
+		       20000, 360,
+		       0x10, 10000),
+	HI6421V600_LDO(LDO17, ldo17_voltages,
+		       0x23, 0x01, 0x5e,
+		       20000, 120,
+		       0x10, 10000),
+	HI6421V600_LDO(LDO33, ldo17_voltages,
+		       0x32, 0x01, 0x6d,
+		       20000, 120,
+		       0, 0),
+	HI6421V600_LDO(LDO34, ldo34_voltages,
+		       0x33, 0x01, 0x6e,
+		       20000, 120,
+		       0, 0),
+};
+
+static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
+{
+	struct device *pmic_dev = pdev->dev.parent;
+	struct regulator_config config = { };
+	struct hi6421_spmi_reg_info *sreg;
+	struct hi6421_spmi_reg_info *info;
+	struct device *dev = &pdev->dev;
+	struct hi6421_spmi_pmic *pmic;
+	struct regulator_dev *rdev;
+	int i;
+
+	/*
+	 * This driver is meant to be called by hi6421-spmi-core,
+	 * which should first set drvdata. If this doesn't happen, hit
+	 * a warn on and return.
+	 */
+	pmic = dev_get_drvdata(pmic_dev);
+	if (WARN_ON(!pmic))
+		return -ENODEV;
+
+	sreg = devm_kzalloc(dev, sizeof(*sreg), GFP_KERNEL);
+	if (!sreg)
+		return -ENOMEM;
+
+	sreg->pmic = pmic;
+	mutex_init(&sreg->enable_mutex);
+
+	for (i = 0; i < ARRAY_SIZE(regulator_info); i++) {
+		info = &regulator_info[i];
+
+		config.dev = pdev->dev.parent;
+		config.driver_data = sreg;
+		config.regmap = pmic->regmap;
+
+		rdev = devm_regulator_register(dev, &info->desc, &config);
+		if (IS_ERR(rdev)) {
+			dev_err(dev, "failed to register %s\n",
+				info->desc.name);
+			return PTR_ERR(rdev);
+		}
+	}
+
+	return 0;
+}
+
+static const struct platform_device_id hi6421_spmi_regulator_table[] = {
+	{ .name = "hi6421v600-regulator" },
+	{},
+};
+MODULE_DEVICE_TABLE(platform, hi6421_spmi_regulator_table);
+
+static struct platform_driver hi6421_spmi_regulator_driver = {
+	.id_table = hi6421_spmi_regulator_table,
+	.driver = {
+		.name = "hi6421v600-regulator",
+	},
+	.probe	= hi6421_spmi_regulator_probe,
+};
+module_platform_driver(hi6421_spmi_regulator_driver);
+
+MODULE_DESCRIPTION("Hi6421v600 SPMI regulator driver");
+MODULE_LICENSE("GPL v2");
+
diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index b22f73d7bfc4..db7ec218644f 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -112,6 +112,4 @@ source "drivers/staging/wimax/Kconfig"
 
 source "drivers/staging/wfx/Kconfig"
 
-source "drivers/staging/hikey9xx/Kconfig"
-
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 2245059e69c7..7b0ef538dcce 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -46,4 +46,3 @@ obj-$(CONFIG_KPC2000)		+= kpc2000/
 obj-$(CONFIG_QLGE)		+= qlge/
 obj-$(CONFIG_WIMAX)		+= wimax/
 obj-$(CONFIG_WFX)		+= wfx/
-obj-y				+= hikey9xx/
diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
deleted file mode 100644
index 1afb8648a2c4..000000000000
--- a/drivers/staging/hikey9xx/Kconfig
+++ /dev/null
@@ -1,11 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-
-# to be placed at drivers/regulator
-config REGULATOR_HI6421V600
-	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
-	depends on MFD_HI6421_SPMI && OF
-	depends on REGULATOR
-	help
-	  This driver provides support for the voltage regulators on
-	  HiSilicon Hi6421v600 PMU / Codec IC.
-	  This is used on Kirin 3670 boards, like HiKey 970.
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
deleted file mode 100644
index 4d63184e6086..000000000000
--- a/drivers/staging/hikey9xx/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-
-obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
diff --git a/drivers/staging/hikey9xx/TODO b/drivers/staging/hikey9xx/TODO
deleted file mode 100644
index 65e7996a3066..000000000000
--- a/drivers/staging/hikey9xx/TODO
+++ /dev/null
@@ -1,5 +0,0 @@
-ToDo list:
-
-- Port other drivers needed by Hikey 960/970;
-- Test drivers on Hikey 960;
-- Validate device tree bindings.
diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
deleted file mode 100644
index c801bb840962..000000000000
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ /dev/null
@@ -1,299 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-//
-// Device driver for regulators in Hisi IC
-//
-// Copyright (c) 2013 Linaro Ltd.
-// Copyright (c) 2011 Hisilicon.
-// Copyright (c) 2020-2021 Huawei Technologies Co., Ltd
-//
-// Guodong Xu <guodong.xu@linaro.org>
-
-#include <linux/delay.h>
-#include <linux/mfd/hi6421-spmi-pmic.h>
-#include <linux/module.h>
-#include <linux/platform_device.h>
-#include <linux/regmap.h>
-#include <linux/regulator/driver.h>
-#include <linux/spmi.h>
-
-struct hi6421_spmi_reg_info {
-	struct regulator_desc	desc;
-	struct hi6421_spmi_pmic *pmic;
-	u8			eco_mode_mask;
-	u32			eco_uA;
-
-	/* Serialize regulator enable logic */
-	struct mutex enable_mutex;
-};
-
-static const unsigned int ldo3_voltages[] = {
-	1500000, 1550000, 1600000, 1650000,
-	1700000, 1725000, 1750000, 1775000,
-	1800000, 1825000, 1850000, 1875000,
-	1900000, 1925000, 1950000, 2000000
-};
-
-static const unsigned int ldo4_voltages[] = {
-	1725000, 1750000, 1775000, 1800000,
-	1825000, 1850000, 1875000, 1900000
-};
-
-static const unsigned int ldo9_voltages[] = {
-	1750000, 1800000, 1825000, 2800000,
-	2850000, 2950000, 3000000, 3300000
-};
-
-static const unsigned int ldo15_voltages[] = {
-	1800000, 1850000, 2400000, 2600000,
-	2700000, 2850000, 2950000, 3000000
-};
-
-static const unsigned int ldo17_voltages[] = {
-	2500000, 2600000, 2700000, 2800000,
-	3000000, 3100000, 3200000, 3300000
-};
-
-static const unsigned int ldo34_voltages[] = {
-	2600000, 2700000, 2800000, 2900000,
-	3000000, 3100000, 3200000, 3300000
-};
-
-/**
- * HI6421V600_LDO() - specify a LDO power line
- * @_id: LDO id name string
- * @vtable: voltage table
- * @ereg: enable register
- * @emask: enable mask
- * @vreg: voltage select register
- * @odelay: off/on delay time in uS
- * @etime: enable time in uS
- * @ecomask: eco mode mask
- * @ecoamp: eco mode load uppler limit in uA
- */
-#define HI6421V600_LDO(_id, vtable, ereg, emask, vreg,			       \
-		       odelay, etime, ecomask, ecoamp)			       \
-	[HI6421V600_##_id] = {						       \
-		.desc = {						       \
-			.name		= #_id,				       \
-			.of_match        = of_match_ptr(#_id),		       \
-			.regulators_node = of_match_ptr("regulators"),	       \
-			.ops		= &hi6421_spmi_ldo_rops,	       \
-			.type		= REGULATOR_VOLTAGE,		       \
-			.id		= HI6421V600_##_id,		       \
-			.owner		= THIS_MODULE,			       \
-			.volt_table	= vtable,			       \
-			.n_voltages	= ARRAY_SIZE(vtable),		       \
-			.vsel_mask	= (1 << (ARRAY_SIZE(vtable) - 1)) - 1, \
-			.vsel_reg	= vreg,				       \
-			.enable_reg	= ereg,				       \
-			.enable_mask	= emask,			       \
-			.enable_time	= etime,			       \
-			.ramp_delay	= etime,			       \
-			.off_on_delay	= odelay,			       \
-		},							       \
-		.eco_mode_mask		= ecomask,			       \
-		.eco_uA			= ecoamp,			       \
-	}
-
-static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	int ret;
-
-	/* cannot enable more than one regulator at one time */
-	mutex_lock(&sreg->enable_mutex);
-
-	ret = regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
-				 rdev->desc->enable_mask,
-			         rdev->desc->enable_mask);
-
-	/* Avoid powering up multiple devices at the same time */
-	usleep_range(rdev->desc->off_on_delay, rdev->desc->off_on_delay + 60);
-
-	mutex_unlock(&sreg->enable_mutex);
-
-	return ret;
-}
-
-static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-
-	return regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
-				  rdev->desc->enable_mask, 0);
-}
-
-static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val;
-
-	regmap_read(pmic->regmap, rdev->desc->enable_reg, &reg_val);
-
-	if (reg_val & sreg->eco_mode_mask)
-		return REGULATOR_MODE_IDLE;
-
-	return REGULATOR_MODE_NORMAL;
-}
-
-static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
-					  unsigned int mode)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 val;
-
-	switch (mode) {
-	case REGULATOR_MODE_NORMAL:
-		val = 0;
-		break;
-	case REGULATOR_MODE_IDLE:
-		val = sreg->eco_mode_mask << (ffs(sreg->eco_mode_mask) - 1);
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	return regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
-				  sreg->eco_mode_mask, val);
-}
-
-static unsigned int
-hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
-				       int input_uV, int output_uV,
-				       int load_uA)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-
-	if (!sreg->eco_uA || ((unsigned int)load_uA > sreg->eco_uA))
-		return REGULATOR_MODE_NORMAL;
-
-	return REGULATOR_MODE_IDLE;
-}
-
-static const struct regulator_ops hi6421_spmi_ldo_rops = {
-	.is_enabled = regulator_is_enabled_regmap,
-	.enable = hi6421_spmi_regulator_enable,
-	.disable = hi6421_spmi_regulator_disable,
-	.list_voltage = regulator_list_voltage_table,
-	.map_voltage = regulator_map_voltage_iterate,
-	.get_voltage_sel = regulator_get_voltage_sel_regmap,
-	.set_voltage_sel = regulator_set_voltage_sel_regmap,
-	.get_mode = hi6421_spmi_regulator_get_mode,
-	.set_mode = hi6421_spmi_regulator_set_mode,
-	.get_optimum_mode = hi6421_spmi_regulator_get_optimum_mode,
-};
-
-/* HI6421v600 regulators with known registers */
-enum hi6421_spmi_regulator_id {
-	HI6421V600_LDO3,
-	HI6421V600_LDO4,
-	HI6421V600_LDO9,
-	HI6421V600_LDO15,
-	HI6421V600_LDO16,
-	HI6421V600_LDO17,
-	HI6421V600_LDO33,
-	HI6421V600_LDO34,
-};
-
-static struct hi6421_spmi_reg_info regulator_info[] = {
-	HI6421V600_LDO(LDO3, ldo3_voltages,
-		       0x16, 0x01, 0x51,
-		       20000, 120,
-		       0, 0),
-	HI6421V600_LDO(LDO4, ldo4_voltages,
-		       0x17, 0x01, 0x52,
-		       20000, 120,
-		       0x10, 10000),
-	HI6421V600_LDO(LDO9, ldo9_voltages,
-		       0x1c, 0x01, 0x57,
-		       20000, 360,
-		       0x10, 10000),
-	HI6421V600_LDO(LDO15, ldo15_voltages,
-		       0x21, 0x01, 0x5c,
-		       20000, 360,
-		       0x10, 10000),
-	HI6421V600_LDO(LDO16, ldo15_voltages,
-		       0x22, 0x01, 0x5d,
-		       20000, 360,
-		       0x10, 10000),
-	HI6421V600_LDO(LDO17, ldo17_voltages,
-		       0x23, 0x01, 0x5e,
-		       20000, 120,
-		       0x10, 10000),
-	HI6421V600_LDO(LDO33, ldo17_voltages,
-		       0x32, 0x01, 0x6d,
-		       20000, 120,
-		       0, 0),
-	HI6421V600_LDO(LDO34, ldo34_voltages,
-		       0x33, 0x01, 0x6e,
-		       20000, 120,
-		       0, 0),
-};
-
-static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
-{
-	struct device *pmic_dev = pdev->dev.parent;
-	struct regulator_config config = { };
-	struct hi6421_spmi_reg_info *sreg;
-	struct hi6421_spmi_reg_info *info;
-	struct device *dev = &pdev->dev;
-	struct hi6421_spmi_pmic *pmic;
-	struct regulator_dev *rdev;
-	int i;
-
-	/*
-	 * This driver is meant to be called by hi6421-spmi-core,
-	 * which should first set drvdata. If this doesn't happen, hit
-	 * a warn on and return.
-	 */
-	pmic = dev_get_drvdata(pmic_dev);
-	if (WARN_ON(!pmic))
-		return -ENODEV;
-
-	sreg = devm_kzalloc(dev, sizeof(*sreg), GFP_KERNEL);
-	if (!sreg)
-		return -ENOMEM;
-
-	sreg->pmic = pmic;
-	mutex_init(&sreg->enable_mutex);
-
-	for (i = 0; i < ARRAY_SIZE(regulator_info); i++) {
-		info = &regulator_info[i];
-
-		config.dev = pdev->dev.parent;
-		config.driver_data = sreg;
-		config.regmap = pmic->regmap;
-
-		rdev = devm_regulator_register(dev, &info->desc, &config);
-		if (IS_ERR(rdev)) {
-			dev_err(dev, "failed to register %s\n",
-				info->desc.name);
-			return PTR_ERR(rdev);
-		}
-	}
-
-	return 0;
-}
-
-static const struct platform_device_id hi6421_spmi_regulator_table[] = {
-	{ .name = "hi6421v600-regulator" },
-	{},
-};
-MODULE_DEVICE_TABLE(platform, hi6421_spmi_regulator_table);
-
-static struct platform_driver hi6421_spmi_regulator_driver = {
-	.id_table = hi6421_spmi_regulator_table,
-	.driver = {
-		.name = "hi6421v600-regulator",
-	},
-	.probe	= hi6421_spmi_regulator_probe,
-};
-module_platform_driver(hi6421_spmi_regulator_driver);
-
-MODULE_DESCRIPTION("Hi6421v600 SPMI regulator driver");
-MODULE_LICENSE("GPL v2");
-
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
