Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0F42B4422
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 14:00:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F6A220487;
	Mon, 16 Nov 2020 13:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJEkJ0Gwr89r; Mon, 16 Nov 2020 12:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B74EB204E0;
	Mon, 16 Nov 2020 12:59:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEE1F1BF276
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 12:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB04987111
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 12:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qPPWOCxJR4OS for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 12:59:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B130870F8
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 12:59:39 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5de.dynamic.kabel-deutschland.de
 [95.90.213.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4828622265;
 Mon, 16 Nov 2020 12:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605531578;
 bh=+H0+EsgLBAubrvNQzCvkUmK0pR7jMqw+8HhXKrZHZJQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NMkbXRe/g2+oRqE5wVyoor9ktz5PWQ1392+KKHZlstzHUYxUxdiB7lxoNbaaUCEMM
 CwbsU30LZ+0kxI+nGURHWNNiGx3faBtfYDW8zI47IgkUOjEuamGbVFzMf8i2e7/LOf
 d/sMlt6tHhzFJbscrpWodkoowOMJc4hj+M4lnh9U=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kee6Z-00Fyfc-NI; Mon, 16 Nov 2020 13:59:35 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH 4/8] regulator: hi6421v600-regulator: move it from staging
Date: Mon, 16 Nov 2020 13:59:30 +0100
Message-Id: <471362653f22a8748202c55babd2b462056a5797.1605530560.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <cover.1605530560.git.mchehab+huawei@kernel.org>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mayulong <mayulong1@huawei.com>, YueHaibing <yuehaibing@huawei.com>,
 linuxarm@huawei.com, Liam Girdwood <lgirdwood@gmail.com>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver is ready for mainstream. Move it out of staging.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 MAINTAINERS                                   |   7 +-
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/hi6421v600-regulator.c      | 478 ++++++++++++++++++
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/hikey9xx/Kconfig              |  11 -
 drivers/staging/hikey9xx/Makefile             |   3 -
 drivers/staging/hikey9xx/TODO                 |   5 -
 .../staging/hikey9xx/hi6421v600-regulator.c   | 478 ------------------
 10 files changed, 489 insertions(+), 506 deletions(-)
 create mode 100644 drivers/regulator/hi6421v600-regulator.c
 delete mode 100644 drivers/staging/hikey9xx/Kconfig
 delete mode 100644 drivers/staging/hikey9xx/Makefile
 delete mode 100644 drivers/staging/hikey9xx/TODO
 delete mode 100644 drivers/staging/hikey9xx/hi6421v600-regulator.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 450c7cbc6725..aa68aee9e684 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8000,12 +8000,7 @@ L:	linux-kernel@vger.kernel.org
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
index 020a00d6696b..08d302c87fa0 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -394,6 +394,15 @@ config REGULATOR_HI655X
 	  This driver provides support for the voltage regulators of the
 	  Hisilicon Hi655x PMIC device.
 
+config REGULATOR_HI6421V600
+	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
+	depends on MFD_HI6421_SPMI && OF
+	depends on REGULATOR
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
index 000000000000..614b03c9ddfb
--- /dev/null
+++ b/drivers/regulator/hi6421v600-regulator.c
@@ -0,0 +1,478 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device driver for regulators in Hisi IC
+ *
+ * Copyright (c) 2013 Linaro Ltd.
+ * Copyright (c) 2011 Hisilicon.
+ *
+ * Guodong Xu <guodong.xu@linaro.org>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/mfd/hi6421-spmi-pmic.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/machine.h>
+#include <linux/regulator/of_regulator.h>
+#include <linux/seq_file.h>
+#include <linux/slab.h>
+#include <linux/spmi.h>
+#include <linux/time.h>
+#include <linux/uaccess.h>
+
+#define rdev_dbg(rdev, fmt, arg...)	\
+		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)
+
+struct hi6421v600_regulator {
+	struct regulator_desc rdesc;
+	struct hi6421_spmi_pmic *pmic;
+	u32 eco_mode_mask, eco_uA;
+};
+
+static DEFINE_MUTEX(enable_mutex);
+
+/*
+ * helper function to ensure when it returns it is at least 'delay_us'
+ * microseconds after 'since'.
+ */
+
+static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
+{
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val;
+
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
+
+	rdev_dbg(rdev,
+		 "enable_reg=0x%x, val= 0x%x, enable_state=%d\n",
+		 rdev->desc->enable_reg,
+		 reg_val, (reg_val & rdev->desc->enable_mask));
+
+	return ((reg_val & rdev->desc->enable_mask) != 0);
+}
+
+static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
+{
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+
+	/* cannot enable more than one regulator at one time */
+	mutex_lock(&enable_mutex);
+	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
+		     HISI_REGS_ENA_PROTECT_TIME + 1000);
+
+	/* set enable register */
+	rdev_dbg(rdev,
+		 "off_on_delay=%d us, enable_reg=0x%x, enable_mask=0x%x\n",
+		 rdev->desc->off_on_delay, rdev->desc->enable_reg,
+		 rdev->desc->enable_mask);
+
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+			     rdev->desc->enable_mask,
+			     rdev->desc->enable_mask);
+
+	mutex_unlock(&enable_mutex);
+
+	return 0;
+}
+
+static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
+{
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+
+	/* set enable register to 0 */
+	rdev_dbg(rdev, "enable_reg=0x%x, enable_mask=0x%x\n",
+		 rdev->desc->enable_reg, rdev->desc->enable_mask);
+
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+			     rdev->desc->enable_mask, 0);
+
+	return 0;
+}
+
+static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
+{
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val, selector;
+
+	/* get voltage selector */
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
+
+	selector = (reg_val & rdev->desc->vsel_mask) >>	(ffs(rdev->desc->vsel_mask) - 1);
+
+	rdev_dbg(rdev,
+		 "vsel_reg=0x%x, value=0x%x, entry=0x%x, voltage=%d mV\n",
+		 rdev->desc->vsel_reg, reg_val, selector,
+		rdev->desc->ops->list_voltage(rdev, selector) / 1000);
+
+	return selector;
+}
+
+static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
+						 unsigned int selector)
+{
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val;
+
+	if (unlikely(selector >= rdev->desc->n_voltages))
+		return -EINVAL;
+
+	reg_val = selector << (ffs(rdev->desc->vsel_mask) - 1);
+
+	/* set voltage selector */
+	rdev_dbg(rdev,
+		 "vsel_reg=0x%x, mask=0x%x, value=0x%x, voltage=%d mV\n",
+		 rdev->desc->vsel_reg, rdev->desc->vsel_mask, reg_val,
+		 rdev->desc->ops->list_voltage(rdev, selector) / 1000);
+
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
+			     rdev->desc->vsel_mask, reg_val);
+
+	return 0;
+}
+
+static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
+{
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	unsigned int mode;
+	u32 reg_val;
+
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
+
+	if (reg_val & sreg->eco_mode_mask)
+		mode = REGULATOR_MODE_IDLE;
+	else
+		mode = REGULATOR_MODE_NORMAL;
+
+	rdev_dbg(rdev,
+		 "enable_reg=0x%x, eco_mode_mask=0x%x, reg_val=0x%x, %s mode\n",
+		 rdev->desc->enable_reg, sreg->eco_mode_mask, reg_val,
+		 mode == REGULATOR_MODE_IDLE ? "idle" : "normal");
+
+	return mode;
+}
+
+static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
+					  unsigned int mode)
+{
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
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
+	rdev_dbg(rdev, "enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x\n",
+		 rdev->desc->enable_reg, sreg->eco_mode_mask, val);
+
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+			     sreg->eco_mode_mask, val);
+
+	return 0;
+}
+
+static unsigned int
+hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
+				       int input_uV, int output_uV,
+				       int load_uA)
+{
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+
+	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
+		return REGULATOR_MODE_NORMAL;
+
+	return REGULATOR_MODE_IDLE;
+}
+
+static int hi6421_spmi_dt_parse(struct platform_device *pdev,
+				struct hi6421v600_regulator *sreg,
+			 struct regulator_desc *rdesc)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	unsigned int *v_table;
+	int ret;
+
+	ret = of_property_read_u32(np, "reg", &rdesc->enable_reg);
+	if (ret) {
+		dev_err(dev, "missing reg property\n");
+		return ret;
+	}
+
+	ret = of_property_read_u32(np, "vsel-reg", &rdesc->vsel_reg);
+	if (ret) {
+		dev_err(dev, "missing vsel-reg property\n");
+		return ret;
+	}
+
+	ret = of_property_read_u32(np, "enable-mask", &rdesc->enable_mask);
+	if (ret) {
+		dev_err(dev, "missing enable-mask property\n");
+		return ret;
+	}
+
+	/*
+	 * Not all regulators work on idle mode
+	 */
+	ret = of_property_read_u32(np, "idle-mode-mask", &sreg->eco_mode_mask);
+	if (ret) {
+		dev_dbg(dev, "LDO doesn't support economy mode.\n");
+		sreg->eco_mode_mask = 0;
+		sreg->eco_uA = 0;
+	} else {
+		ret = of_property_read_u32(np, "eco-microamp", &sreg->eco_uA);
+		if (ret) {
+			dev_err(dev, "missing eco-microamp property\n");
+			return ret;
+		}
+	}
+
+	/* parse .off-on-delay */
+	ret = of_property_read_u32(np, "off-on-delay-us",
+				   &rdesc->off_on_delay);
+	if (ret) {
+		dev_err(dev, "missing off-on-delay-us property\n");
+		return ret;
+	}
+
+	/* parse .enable_time */
+	ret = of_property_read_u32(np, "startup-delay-us",
+				   &rdesc->enable_time);
+	if (ret) {
+		dev_err(dev, "missing startup-delay-us property\n");
+		return ret;
+	}
+
+	/* FIXME: are there a better value for this? */
+	rdesc->ramp_delay = rdesc->enable_time;
+
+	/* parse volt_table */
+
+	rdesc->n_voltages = of_property_count_u32_elems(np, "voltage-table");
+
+	v_table = devm_kzalloc(dev, sizeof(unsigned int) * rdesc->n_voltages,
+			       GFP_KERNEL);
+	if (unlikely(!v_table))
+		return  -ENOMEM;
+	rdesc->volt_table = v_table;
+
+	ret = of_property_read_u32_array(np, "voltage-table",
+					 v_table, rdesc->n_voltages);
+	if (ret) {
+		dev_err(dev, "missing voltage-table property\n");
+		return ret;
+	}
+
+	/*
+	 * Instead of explicitly requiring a mask for the voltage selector,
+	 * as they all start from bit zero (at least on the known LDOs),
+	 * just use the number of voltages at the voltage table, getting the
+	 * minimal mask that would pick everything.
+	 */
+	rdesc->vsel_mask = (1 << (fls(rdesc->n_voltages) - 1)) - 1;
+
+	dev_dbg(dev, "voltage selector settings: reg: 0x%x, mask: 0x%x\n",
+		rdesc->vsel_reg, rdesc->vsel_mask);
+
+	return 0;
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
+static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
+					   struct device_node *np,
+					   struct hi6421_spmi_pmic *pmic)
+{
+	struct regulation_constraints *constraint;
+	struct regulator_init_data *initdata;
+	struct regulator_config config = { };
+	struct hi6421v600_regulator *sreg;
+	struct device *dev = &pdev->dev;
+	struct regulator_desc *rdesc;
+	struct regulator_dev *rdev;
+	const char *supplyname;
+	int ret;
+
+	initdata = of_get_regulator_init_data(dev, np, NULL);
+	if (!initdata) {
+		dev_err(dev, "failed to get regulator data\n");
+		return -EINVAL;
+	}
+
+	sreg = devm_kzalloc(dev, sizeof(*sreg), GFP_KERNEL);
+	if (!sreg)
+		return -ENOMEM;
+
+	sreg->pmic = pmic;
+	rdesc = &sreg->rdesc;
+
+	rdesc->name = initdata->constraints.name;
+	rdesc->ops = &hi6421_spmi_ldo_rops;
+	rdesc->type = REGULATOR_VOLTAGE;
+	rdesc->min_uV = initdata->constraints.min_uV;
+
+	supplyname = of_get_property(np, "supply_name", NULL);
+	if (supplyname)
+		initdata->supply_regulator = supplyname;
+
+	/* parse device tree data for regulator specific */
+	ret = hi6421_spmi_dt_parse(pdev, sreg, rdesc);
+	if (ret)
+		return ret;
+
+	/* hisi regulator supports two modes */
+	constraint = &initdata->constraints;
+
+	constraint->valid_modes_mask = REGULATOR_MODE_NORMAL;
+	if (sreg->eco_mode_mask) {
+		constraint->valid_modes_mask |= REGULATOR_MODE_IDLE;
+		constraint->valid_ops_mask |= REGULATOR_CHANGE_MODE;
+	}
+
+	config.dev = &pdev->dev;
+	config.init_data = initdata;
+	config.driver_data = sreg;
+	config.of_node = pdev->dev.of_node;
+
+	/* register regulator */
+	rdev = regulator_register(rdesc, &config);
+	if (IS_ERR(rdev)) {
+		dev_err(dev, "failed to register %s\n",
+			rdesc->name);
+		return PTR_ERR(rdev);
+	}
+
+	rdev_dbg(rdev, "valid_modes_mask: 0x%x, valid_ops_mask: 0x%x\n",
+		 constraint->valid_modes_mask, constraint->valid_ops_mask);
+
+	dev_set_drvdata(dev, rdev);
+
+	return 0;
+}
+
+static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
+{
+	struct device *pmic_dev = pdev->dev.parent;
+	struct device_node *np = pmic_dev->of_node;
+	struct device_node *regulators, *child;
+	struct platform_device *new_pdev;
+	struct hi6421_spmi_pmic *pmic;
+	int ret;
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
+	regulators = of_get_child_by_name(np, "regulators");
+	if (!regulators) {
+		dev_err(&pdev->dev, "regulator node not found\n");
+		return -ENODEV;
+	}
+
+	/*
+	 * Parse all LDO regulator nodes
+	 */
+	for_each_child_of_node(regulators, child) {
+		dev_dbg(&pdev->dev, "adding child %pOF\n", child);
+
+		new_pdev = platform_device_alloc(child->name, -1);
+		new_pdev->dev.parent = pmic_dev;
+		new_pdev->dev.of_node = of_node_get(child);
+
+		ret = platform_device_add(new_pdev);
+		if (ret < 0) {
+			platform_device_put(new_pdev);
+			continue;
+		}
+
+		ret = hi6421_spmi_regulator_probe_ldo(new_pdev, child, pmic);
+		if (ret < 0)
+			platform_device_put(new_pdev);
+	}
+
+	of_node_put(regulators);
+
+	return 0;
+}
+
+static int hi6421_spmi_regulator_remove(struct platform_device *pdev)
+{
+	struct regulator_dev *rdev = dev_get_drvdata(&pdev->dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+
+	regulator_unregister(rdev);
+
+	if (rdev->desc->volt_table)
+		devm_kfree(&pdev->dev, (unsigned int *)rdev->desc->volt_table);
+
+	kfree(sreg);
+
+	return 0;
+}
+
+static const struct platform_device_id hi6421v600_regulator_table[] = {
+	{ .name = "hi6421v600-regulator" },
+	{},
+};
+MODULE_DEVICE_TABLE(platform, hi6421v600_regulator_table);
+
+static struct platform_driver hi6421v600_regulator_driver = {
+	.id_table = hi6421v600_regulator_table,
+	.driver = {
+		.name	= "hi6421v600-regulator",
+	},
+	.probe	= hi6421_spmi_regulator_probe,
+	.remove	= hi6421_spmi_regulator_remove,
+};
+module_platform_driver(hi6421v600_regulator_driver);
+
+MODULE_DESCRIPTION("Hi6421v600 regulator driver");
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
index 614b03c9ddfb..000000000000
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ /dev/null
@@ -1,478 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Device driver for regulators in Hisi IC
- *
- * Copyright (c) 2013 Linaro Ltd.
- * Copyright (c) 2011 Hisilicon.
- *
- * Guodong Xu <guodong.xu@linaro.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <linux/delay.h>
-#include <linux/device.h>
-#include <linux/err.h>
-#include <linux/io.h>
-#include <linux/mfd/hi6421-spmi-pmic.h>
-#include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
-#include <linux/of.h>
-#include <linux/platform_device.h>
-#include <linux/regmap.h>
-#include <linux/regulator/driver.h>
-#include <linux/regulator/machine.h>
-#include <linux/regulator/of_regulator.h>
-#include <linux/seq_file.h>
-#include <linux/slab.h>
-#include <linux/spmi.h>
-#include <linux/time.h>
-#include <linux/uaccess.h>
-
-#define rdev_dbg(rdev, fmt, arg...)	\
-		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)
-
-struct hi6421v600_regulator {
-	struct regulator_desc rdesc;
-	struct hi6421_spmi_pmic *pmic;
-	u32 eco_mode_mask, eco_uA;
-};
-
-static DEFINE_MUTEX(enable_mutex);
-
-/*
- * helper function to ensure when it returns it is at least 'delay_us'
- * microseconds after 'since'.
- */
-
-static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
-{
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val;
-
-	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
-
-	rdev_dbg(rdev,
-		 "enable_reg=0x%x, val= 0x%x, enable_state=%d\n",
-		 rdev->desc->enable_reg,
-		 reg_val, (reg_val & rdev->desc->enable_mask));
-
-	return ((reg_val & rdev->desc->enable_mask) != 0);
-}
-
-static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
-{
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-
-	/* cannot enable more than one regulator at one time */
-	mutex_lock(&enable_mutex);
-	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
-		     HISI_REGS_ENA_PROTECT_TIME + 1000);
-
-	/* set enable register */
-	rdev_dbg(rdev,
-		 "off_on_delay=%d us, enable_reg=0x%x, enable_mask=0x%x\n",
-		 rdev->desc->off_on_delay, rdev->desc->enable_reg,
-		 rdev->desc->enable_mask);
-
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-			     rdev->desc->enable_mask,
-			     rdev->desc->enable_mask);
-
-	mutex_unlock(&enable_mutex);
-
-	return 0;
-}
-
-static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
-{
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-
-	/* set enable register to 0 */
-	rdev_dbg(rdev, "enable_reg=0x%x, enable_mask=0x%x\n",
-		 rdev->desc->enable_reg, rdev->desc->enable_mask);
-
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-			     rdev->desc->enable_mask, 0);
-
-	return 0;
-}
-
-static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
-{
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val, selector;
-
-	/* get voltage selector */
-	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
-
-	selector = (reg_val & rdev->desc->vsel_mask) >>	(ffs(rdev->desc->vsel_mask) - 1);
-
-	rdev_dbg(rdev,
-		 "vsel_reg=0x%x, value=0x%x, entry=0x%x, voltage=%d mV\n",
-		 rdev->desc->vsel_reg, reg_val, selector,
-		rdev->desc->ops->list_voltage(rdev, selector) / 1000);
-
-	return selector;
-}
-
-static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
-						 unsigned int selector)
-{
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val;
-
-	if (unlikely(selector >= rdev->desc->n_voltages))
-		return -EINVAL;
-
-	reg_val = selector << (ffs(rdev->desc->vsel_mask) - 1);
-
-	/* set voltage selector */
-	rdev_dbg(rdev,
-		 "vsel_reg=0x%x, mask=0x%x, value=0x%x, voltage=%d mV\n",
-		 rdev->desc->vsel_reg, rdev->desc->vsel_mask, reg_val,
-		 rdev->desc->ops->list_voltage(rdev, selector) / 1000);
-
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
-			     rdev->desc->vsel_mask, reg_val);
-
-	return 0;
-}
-
-static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
-{
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	unsigned int mode;
-	u32 reg_val;
-
-	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
-
-	if (reg_val & sreg->eco_mode_mask)
-		mode = REGULATOR_MODE_IDLE;
-	else
-		mode = REGULATOR_MODE_NORMAL;
-
-	rdev_dbg(rdev,
-		 "enable_reg=0x%x, eco_mode_mask=0x%x, reg_val=0x%x, %s mode\n",
-		 rdev->desc->enable_reg, sreg->eco_mode_mask, reg_val,
-		 mode == REGULATOR_MODE_IDLE ? "idle" : "normal");
-
-	return mode;
-}
-
-static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
-					  unsigned int mode)
-{
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
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
-	rdev_dbg(rdev, "enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x\n",
-		 rdev->desc->enable_reg, sreg->eco_mode_mask, val);
-
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-			     sreg->eco_mode_mask, val);
-
-	return 0;
-}
-
-static unsigned int
-hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
-				       int input_uV, int output_uV,
-				       int load_uA)
-{
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-
-	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
-		return REGULATOR_MODE_NORMAL;
-
-	return REGULATOR_MODE_IDLE;
-}
-
-static int hi6421_spmi_dt_parse(struct platform_device *pdev,
-				struct hi6421v600_regulator *sreg,
-			 struct regulator_desc *rdesc)
-{
-	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	unsigned int *v_table;
-	int ret;
-
-	ret = of_property_read_u32(np, "reg", &rdesc->enable_reg);
-	if (ret) {
-		dev_err(dev, "missing reg property\n");
-		return ret;
-	}
-
-	ret = of_property_read_u32(np, "vsel-reg", &rdesc->vsel_reg);
-	if (ret) {
-		dev_err(dev, "missing vsel-reg property\n");
-		return ret;
-	}
-
-	ret = of_property_read_u32(np, "enable-mask", &rdesc->enable_mask);
-	if (ret) {
-		dev_err(dev, "missing enable-mask property\n");
-		return ret;
-	}
-
-	/*
-	 * Not all regulators work on idle mode
-	 */
-	ret = of_property_read_u32(np, "idle-mode-mask", &sreg->eco_mode_mask);
-	if (ret) {
-		dev_dbg(dev, "LDO doesn't support economy mode.\n");
-		sreg->eco_mode_mask = 0;
-		sreg->eco_uA = 0;
-	} else {
-		ret = of_property_read_u32(np, "eco-microamp", &sreg->eco_uA);
-		if (ret) {
-			dev_err(dev, "missing eco-microamp property\n");
-			return ret;
-		}
-	}
-
-	/* parse .off-on-delay */
-	ret = of_property_read_u32(np, "off-on-delay-us",
-				   &rdesc->off_on_delay);
-	if (ret) {
-		dev_err(dev, "missing off-on-delay-us property\n");
-		return ret;
-	}
-
-	/* parse .enable_time */
-	ret = of_property_read_u32(np, "startup-delay-us",
-				   &rdesc->enable_time);
-	if (ret) {
-		dev_err(dev, "missing startup-delay-us property\n");
-		return ret;
-	}
-
-	/* FIXME: are there a better value for this? */
-	rdesc->ramp_delay = rdesc->enable_time;
-
-	/* parse volt_table */
-
-	rdesc->n_voltages = of_property_count_u32_elems(np, "voltage-table");
-
-	v_table = devm_kzalloc(dev, sizeof(unsigned int) * rdesc->n_voltages,
-			       GFP_KERNEL);
-	if (unlikely(!v_table))
-		return  -ENOMEM;
-	rdesc->volt_table = v_table;
-
-	ret = of_property_read_u32_array(np, "voltage-table",
-					 v_table, rdesc->n_voltages);
-	if (ret) {
-		dev_err(dev, "missing voltage-table property\n");
-		return ret;
-	}
-
-	/*
-	 * Instead of explicitly requiring a mask for the voltage selector,
-	 * as they all start from bit zero (at least on the known LDOs),
-	 * just use the number of voltages at the voltage table, getting the
-	 * minimal mask that would pick everything.
-	 */
-	rdesc->vsel_mask = (1 << (fls(rdesc->n_voltages) - 1)) - 1;
-
-	dev_dbg(dev, "voltage selector settings: reg: 0x%x, mask: 0x%x\n",
-		rdesc->vsel_reg, rdesc->vsel_mask);
-
-	return 0;
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
-static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
-					   struct device_node *np,
-					   struct hi6421_spmi_pmic *pmic)
-{
-	struct regulation_constraints *constraint;
-	struct regulator_init_data *initdata;
-	struct regulator_config config = { };
-	struct hi6421v600_regulator *sreg;
-	struct device *dev = &pdev->dev;
-	struct regulator_desc *rdesc;
-	struct regulator_dev *rdev;
-	const char *supplyname;
-	int ret;
-
-	initdata = of_get_regulator_init_data(dev, np, NULL);
-	if (!initdata) {
-		dev_err(dev, "failed to get regulator data\n");
-		return -EINVAL;
-	}
-
-	sreg = devm_kzalloc(dev, sizeof(*sreg), GFP_KERNEL);
-	if (!sreg)
-		return -ENOMEM;
-
-	sreg->pmic = pmic;
-	rdesc = &sreg->rdesc;
-
-	rdesc->name = initdata->constraints.name;
-	rdesc->ops = &hi6421_spmi_ldo_rops;
-	rdesc->type = REGULATOR_VOLTAGE;
-	rdesc->min_uV = initdata->constraints.min_uV;
-
-	supplyname = of_get_property(np, "supply_name", NULL);
-	if (supplyname)
-		initdata->supply_regulator = supplyname;
-
-	/* parse device tree data for regulator specific */
-	ret = hi6421_spmi_dt_parse(pdev, sreg, rdesc);
-	if (ret)
-		return ret;
-
-	/* hisi regulator supports two modes */
-	constraint = &initdata->constraints;
-
-	constraint->valid_modes_mask = REGULATOR_MODE_NORMAL;
-	if (sreg->eco_mode_mask) {
-		constraint->valid_modes_mask |= REGULATOR_MODE_IDLE;
-		constraint->valid_ops_mask |= REGULATOR_CHANGE_MODE;
-	}
-
-	config.dev = &pdev->dev;
-	config.init_data = initdata;
-	config.driver_data = sreg;
-	config.of_node = pdev->dev.of_node;
-
-	/* register regulator */
-	rdev = regulator_register(rdesc, &config);
-	if (IS_ERR(rdev)) {
-		dev_err(dev, "failed to register %s\n",
-			rdesc->name);
-		return PTR_ERR(rdev);
-	}
-
-	rdev_dbg(rdev, "valid_modes_mask: 0x%x, valid_ops_mask: 0x%x\n",
-		 constraint->valid_modes_mask, constraint->valid_ops_mask);
-
-	dev_set_drvdata(dev, rdev);
-
-	return 0;
-}
-
-static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
-{
-	struct device *pmic_dev = pdev->dev.parent;
-	struct device_node *np = pmic_dev->of_node;
-	struct device_node *regulators, *child;
-	struct platform_device *new_pdev;
-	struct hi6421_spmi_pmic *pmic;
-	int ret;
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
-	regulators = of_get_child_by_name(np, "regulators");
-	if (!regulators) {
-		dev_err(&pdev->dev, "regulator node not found\n");
-		return -ENODEV;
-	}
-
-	/*
-	 * Parse all LDO regulator nodes
-	 */
-	for_each_child_of_node(regulators, child) {
-		dev_dbg(&pdev->dev, "adding child %pOF\n", child);
-
-		new_pdev = platform_device_alloc(child->name, -1);
-		new_pdev->dev.parent = pmic_dev;
-		new_pdev->dev.of_node = of_node_get(child);
-
-		ret = platform_device_add(new_pdev);
-		if (ret < 0) {
-			platform_device_put(new_pdev);
-			continue;
-		}
-
-		ret = hi6421_spmi_regulator_probe_ldo(new_pdev, child, pmic);
-		if (ret < 0)
-			platform_device_put(new_pdev);
-	}
-
-	of_node_put(regulators);
-
-	return 0;
-}
-
-static int hi6421_spmi_regulator_remove(struct platform_device *pdev)
-{
-	struct regulator_dev *rdev = dev_get_drvdata(&pdev->dev);
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-
-	regulator_unregister(rdev);
-
-	if (rdev->desc->volt_table)
-		devm_kfree(&pdev->dev, (unsigned int *)rdev->desc->volt_table);
-
-	kfree(sreg);
-
-	return 0;
-}
-
-static const struct platform_device_id hi6421v600_regulator_table[] = {
-	{ .name = "hi6421v600-regulator" },
-	{},
-};
-MODULE_DEVICE_TABLE(platform, hi6421v600_regulator_table);
-
-static struct platform_driver hi6421v600_regulator_driver = {
-	.id_table = hi6421v600_regulator_table,
-	.driver = {
-		.name	= "hi6421v600-regulator",
-	},
-	.probe	= hi6421_spmi_regulator_probe,
-	.remove	= hi6421_spmi_regulator_remove,
-};
-module_platform_driver(hi6421v600_regulator_driver);
-
-MODULE_DESCRIPTION("Hi6421v600 regulator driver");
-MODULE_LICENSE("GPL v2");
-
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
