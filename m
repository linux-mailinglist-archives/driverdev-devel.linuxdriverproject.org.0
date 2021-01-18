Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A34A2FA187
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 14:28:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9812C87048;
	Mon, 18 Jan 2021 13:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xIoZnas1DdGJ; Mon, 18 Jan 2021 13:28:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE54A8701C;
	Mon, 18 Jan 2021 13:28:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E07301BF3CD
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6ECD203E2
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nhmnIO6Wfg30 for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 13:28:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 27DAD2010B
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 13:28:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 81E6322D6E;
 Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610976499;
 bh=Z41zvmLkhIcjDMji3jvBEar0pzDFNIAIPWf2oXsv0r0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MDk1H2eN38EoimfebGyOo0qwcGUi9TDb4m5BdJU1WTpQE6R56f2pCGsS29ltz76ei
 /zoDZxJUE7ddp15zHUNzg07KaBN4+z8315TuyPYU40HpgAnSx3gKqsQUPRuxZ1AahS
 ztKrpJnM02H8lrI51yV5yGAEtQ4+D/0hiMjB5frGdE799XyXtFftCMVtgTxxb/zVjx
 hwJ9qQ0uRI5XNhIx7alq6jKzfBjO7aMuo3d1IaBoj4EC0aearezR1MnH53gRON64mg
 bluJ/KZ7/EODgi1PuyBq0/GqPQVJsdACGNk4BAwWVoXK9wsTvQ/skUyDgiKEeJf/Ex
 mu6bLfkcQ/gbw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1UZs-000Vkz-P8; Mon, 18 Jan 2021 14:28:16 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 11/13] regulator: hi6421v600-regulator: move it from staging
Date: Mon, 18 Jan 2021 14:28:12 +0100
Message-Id: <d0a7cae3c654d25e01b0c436e00de55a21cd7f64.1610975633.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1610975633.git.mchehab+huawei@kernel.org>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
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
 Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver is ready for mainstream. Move it out of staging.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../mfd/hisilicon,hi6421-spmi-pmic.yaml       |   2 +
 MAINTAINERS                                   |   7 +-
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/hi6421v600-regulator.c      | 347 ++++++++++++++++++
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/hikey9xx/Kconfig              |  11 -
 drivers/staging/hikey9xx/Makefile             |   3 -
 drivers/staging/hikey9xx/TODO                 |   5 -
 .../staging/hikey9xx/hi6421v600-regulator.c   | 347 ------------------
 11 files changed, 359 insertions(+), 375 deletions(-)
 create mode 100644 drivers/regulator/hi6421v600-regulator.c
 delete mode 100644 drivers/staging/hikey9xx/Kconfig
 delete mode 100644 drivers/staging/hikey9xx/Makefile
 delete mode 100644 drivers/staging/hikey9xx/TODO
 delete mode 100644 drivers/staging/hikey9xx/hi6421v600-regulator.c

diff --git a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
index f385146d2bd1..3b23ad56b31a 100644
--- a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
@@ -60,6 +60,8 @@ required:
   - reg
   - regulators
 
+additionalProperties: false
+
 examples:
   - |
     /* pmic properties */
diff --git a/MAINTAINERS b/MAINTAINERS
index c5b36a58ede5..138798bbb32e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8012,12 +8012,7 @@ L:	linux-kernel@vger.kernel.org
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
index 020a00d6696b..ca983e5a7a4d 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -394,6 +394,14 @@ config REGULATOR_HI655X
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
index 6ebae516258e..45d1883de54b 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -47,6 +47,7 @@ obj-$(CONFIG_REGULATOR_FAN53880) += fan53880.o
 obj-$(CONFIG_REGULATOR_GPIO) += gpio-regulator.o
 obj-$(CONFIG_REGULATOR_HI6421) += hi6421-regulator.o
 obj-$(CONFIG_REGULATOR_HI6421V530) += hi6421v530-regulator.o
+obj-$(CONFIG_REGULATOR_HI6421V600) += hi6421v600-regulator.o
 obj-$(CONFIG_REGULATOR_HI655X) += hi655x-regulator.o
 obj-$(CONFIG_REGULATOR_ISL6271A) += isl6271a-regulator.o
 obj-$(CONFIG_REGULATOR_ISL9305) += isl9305.o
diff --git a/drivers/regulator/hi6421v600-regulator.c b/drivers/regulator/hi6421v600-regulator.c
new file mode 100644
index 000000000000..a8a268f326f5
--- /dev/null
+++ b/drivers/regulator/hi6421v600-regulator.c
@@ -0,0 +1,347 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Device driver for regulators in Hisi IC
+//
+// Copyright (c) 2013 Linaro Ltd.
+// Copyright (c) 2011 Hisilicon.
+//
+// Guodong Xu <guodong.xu@linaro.org>
+//
+// This program is free software; you can redistribute it and/or modify
+// it under the terms of the GNU General Public License version 2 as
+// published by the Free Software Foundation.
+//
+// This program is distributed in the hope that it will be useful,
+// but WITHOUT ANY WARRANTY; without even the implied warranty of
+// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+// GNU General Public License for more details.
+
+#include <linux/delay.h>
+#include <linux/mfd/hi6421-spmi-pmic.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
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
+/*
+ * _id - LDO id name string
+ * _match - of match name string
+ * v_table - voltage table
+ * vreg - voltage select register
+ * vmask - voltage select mask
+ * ereg - enable register
+ * emask - enable mask
+ * odelay - off/on delay time in uS
+ * ecomask - eco mode mask
+ * ecoamp - eco mode load uppler limit in uA
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
+		.eco_uA		= ecoamp,			       \
+	}
+
+static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val;
+
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
+
+	return ((reg_val & rdev->desc->enable_mask) != 0);
+}
+
+static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	int ret;
+
+	/* cannot enable more than one regulator at one time */
+	mutex_lock(&sreg->enable_mutex);
+	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
+		     HISI_REGS_ENA_PROTECT_TIME + 1000);
+
+	/* set enable register */
+	ret = hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+				   rdev->desc->enable_mask,
+				   rdev->desc->enable_mask);
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
+	/* set enable register to 0 */
+	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+				    rdev->desc->enable_mask, 0);
+}
+
+static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val;
+
+	/* get voltage selector */
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
+
+	return (reg_val & rdev->desc->vsel_mask) >> (ffs(rdev->desc->vsel_mask) - 1);
+}
+
+static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
+						 unsigned int selector)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val;
+
+	if (unlikely(selector >= rdev->desc->n_voltages))
+		return -EINVAL;
+
+	reg_val = selector << (ffs(rdev->desc->vsel_mask) - 1);
+
+	/* set voltage selector */
+	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
+				    rdev->desc->vsel_mask, reg_val);
+}
+
+static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val;
+
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
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
+	/* set mode */
+	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+				    sreg->eco_mode_mask, val);
+}
+
+static unsigned int
+hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
+				       int input_uV, int output_uV,
+				       int load_uA)
+{
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
+
+	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
+		return REGULATOR_MODE_NORMAL;
+
+	return REGULATOR_MODE_IDLE;
+}
+
+static const struct regulator_ops hi6421_spmi_ldo_rops = {
+	.is_enabled = hi6421_spmi_regulator_is_enabled,
+	.enable = hi6421_spmi_regulator_enable,
+	.disable = hi6421_spmi_regulator_disable,
+	.list_voltage = regulator_list_voltage_table,
+	.map_voltage = regulator_map_voltage_iterate,
+	.get_voltage_sel = hi6421_spmi_regulator_get_voltage_sel,
+	.set_voltage_sel = hi6421_spmi_regulator_set_voltage_sel,
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
+		/* assign per-regulator data */
+		info = &regulator_info[i];
+
+		config.dev = pdev->dev.parent;
+		config.driver_data = sreg;
+
+		rdev = devm_regulator_register(dev, &info->desc, &config);
+		if (IS_ERR(rdev)) {
+			dev_err(dev, "failed to register %s\n", sreg->desc.name);
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
index 2d0310448eba..e6c831c6cccc 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -116,6 +116,4 @@ source "drivers/staging/qlge/Kconfig"
 
 source "drivers/staging/wfx/Kconfig"
 
-source "drivers/staging/hikey9xx/Kconfig"
-
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 757a892ab5b9..a3b1fd0622f9 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -48,4 +48,3 @@ obj-$(CONFIG_FIELDBUS_DEV)     += fieldbus/
 obj-$(CONFIG_KPC2000)		+= kpc2000/
 obj-$(CONFIG_QLGE)		+= qlge/
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
index a8a268f326f5..000000000000
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ /dev/null
@@ -1,347 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-//
-// Device driver for regulators in Hisi IC
-//
-// Copyright (c) 2013 Linaro Ltd.
-// Copyright (c) 2011 Hisilicon.
-//
-// Guodong Xu <guodong.xu@linaro.org>
-//
-// This program is free software; you can redistribute it and/or modify
-// it under the terms of the GNU General Public License version 2 as
-// published by the Free Software Foundation.
-//
-// This program is distributed in the hope that it will be useful,
-// but WITHOUT ANY WARRANTY; without even the implied warranty of
-// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-// GNU General Public License for more details.
-
-#include <linux/delay.h>
-#include <linux/mfd/hi6421-spmi-pmic.h>
-#include <linux/module.h>
-#include <linux/platform_device.h>
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
-/*
- * _id - LDO id name string
- * _match - of match name string
- * v_table - voltage table
- * vreg - voltage select register
- * vmask - voltage select mask
- * ereg - enable register
- * emask - enable mask
- * odelay - off/on delay time in uS
- * ecomask - eco mode mask
- * ecoamp - eco mode load uppler limit in uA
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
-		.eco_uA		= ecoamp,			       \
-	}
-
-static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val;
-
-	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
-
-	return ((reg_val & rdev->desc->enable_mask) != 0);
-}
-
-static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	int ret;
-
-	/* cannot enable more than one regulator at one time */
-	mutex_lock(&sreg->enable_mutex);
-	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
-		     HISI_REGS_ENA_PROTECT_TIME + 1000);
-
-	/* set enable register */
-	ret = hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-				   rdev->desc->enable_mask,
-				   rdev->desc->enable_mask);
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
-	/* set enable register to 0 */
-	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-				    rdev->desc->enable_mask, 0);
-}
-
-static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val;
-
-	/* get voltage selector */
-	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
-
-	return (reg_val & rdev->desc->vsel_mask) >> (ffs(rdev->desc->vsel_mask) - 1);
-}
-
-static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
-						 unsigned int selector)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val;
-
-	if (unlikely(selector >= rdev->desc->n_voltages))
-		return -EINVAL;
-
-	reg_val = selector << (ffs(rdev->desc->vsel_mask) - 1);
-
-	/* set voltage selector */
-	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
-				    rdev->desc->vsel_mask, reg_val);
-}
-
-static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val;
-
-	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
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
-	/* set mode */
-	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-				    sreg->eco_mode_mask, val);
-}
-
-static unsigned int
-hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
-				       int input_uV, int output_uV,
-				       int load_uA)
-{
-	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
-
-	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
-		return REGULATOR_MODE_NORMAL;
-
-	return REGULATOR_MODE_IDLE;
-}
-
-static const struct regulator_ops hi6421_spmi_ldo_rops = {
-	.is_enabled = hi6421_spmi_regulator_is_enabled,
-	.enable = hi6421_spmi_regulator_enable,
-	.disable = hi6421_spmi_regulator_disable,
-	.list_voltage = regulator_list_voltage_table,
-	.map_voltage = regulator_map_voltage_iterate,
-	.get_voltage_sel = hi6421_spmi_regulator_get_voltage_sel,
-	.set_voltage_sel = hi6421_spmi_regulator_set_voltage_sel,
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
-		/* assign per-regulator data */
-		info = &regulator_info[i];
-
-		config.dev = pdev->dev.parent;
-		config.driver_data = sreg;
-
-		rdev = devm_regulator_register(dev, &info->desc, &config);
-		if (IS_ERR(rdev)) {
-			dev_err(dev, "failed to register %s\n", sreg->desc.name);
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
