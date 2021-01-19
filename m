Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F542FB52A
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:14:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD93386DAD;
	Tue, 19 Jan 2021 10:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YU5lsJiMmNFE; Tue, 19 Jan 2021 10:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3A0F86C7A;
	Tue, 19 Jan 2021 10:14:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 640ED1BF27F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6102386B2C
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQRw+NgHobIB for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:14:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E54B986C6D
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E7BC23132;
 Tue, 19 Jan 2021 10:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611051267;
 bh=ee4nAJZbTBhCg735nB33HMjWQjgomJOc/Dd5+DAZSf8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y1yoGj0cpDsdCNQ1FTbRtQpA2EyXEY6lWDJ0rSRkEV25fZN7Jdlw1UA7q92ptLYnl
 zhiVV7GrFDQgf72al8hKIFLwhE1DhWX8o1M75QWVLz0yXMvJ8CxA9ughi7GnzvqViz
 j9c6BNc7aAHAbNM8xhkY+gXHRUlg4CQCHTxGngt0Znjn5KjsKALoNChJd4p2srofdJ
 gz+DWNsZhwJ+RZ4VtPbLuZdH8x/Zw0gHC+ZfwxSTYP1gVW5ai7LS4ZgzDqj6SYLSz5
 zNzQzg3szqm8FFciFTolWibqf4lD/lGkz488vF1pMbOaphumCWdXiz7efiwElLzvDM
 HPItvY4vYdeqw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1o1o-000tOk-MC; Tue, 19 Jan 2021 11:14:24 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v3 05/18] staging: hikey9xx: hi6421v600-regulator: move LDO
 config from DT
Date: Tue, 19 Jan 2021 11:14:10 +0100
Message-Id: <d9911dd47aebf4017cc3c42f3e9177374fc5bcb4.1611048785.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611048785.git.mchehab+huawei@kernel.org>
References: <cover.1611048785.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instead of storing regulator LDO configuration inside the DT, move
it to be part of the driver itself.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 380 +++++++-----------
 1 file changed, 152 insertions(+), 228 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 4ee0444b2b4e..70e4c06c1b2d 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -16,35 +16,97 @@
 // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 // GNU General Public License for more details.
 
+#include <linux/delay.h>
 #include <linux/mfd/hi6421-spmi-pmic.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/platform_device.h>
-#include <linux/regmap.h>
 #include <linux/regulator/driver.h>
-#include <linux/regulator/machine.h>
-#include <linux/regulator/of_regulator.h>
 #include <linux/spmi.h>
 
 #define rdev_dbg(rdev, fmt, arg...)	\
 		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)
 
-struct hi6421v600_regulator {
-	struct regulator_desc rdesc;
+struct hi6421_spmi_reg_info {
+	struct regulator_desc	desc;
 	struct hi6421_spmi_pmic *pmic;
-	u32 eco_mode_mask, eco_uA;
+	u8			eco_mode_mask;
+	u32			eco_uA;
 };
 
 static DEFINE_MUTEX(enable_mutex);
 
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
 /*
- * helper function to ensure when it returns it is at least 'delay_us'
- * microseconds after 'since'.
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
  */
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
 
 static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
 {
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 
@@ -60,7 +122,7 @@ static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
 
 static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 {
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
 	/* cannot enable more than one regulator at one time */
@@ -85,7 +147,7 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 
 static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 {
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
 	/* set enable register to 0 */
@@ -100,7 +162,7 @@ static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 
 static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
 {
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val, selector;
 
@@ -120,7 +182,7 @@ static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
 static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
 						 unsigned int selector)
 {
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 
@@ -143,7 +205,7 @@ static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
 
 static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 {
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	unsigned int mode;
 	u32 reg_val;
@@ -166,7 +228,7 @@ static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
 					  unsigned int mode)
 {
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 val;
 
@@ -196,7 +258,7 @@ hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
 				       int input_uV, int output_uV,
 				       int load_uA)
 {
-	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 
 	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
 		return REGULATOR_MODE_NORMAL;
@@ -204,99 +266,6 @@ hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
 	return REGULATOR_MODE_IDLE;
 }
 
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
 static const struct regulator_ops hi6421_spmi_ldo_rops = {
 	.is_enabled = hi6421_spmi_regulator_is_enabled,
 	.enable = hi6421_spmi_regulator_enable,
@@ -310,85 +279,63 @@ static const struct regulator_ops hi6421_spmi_ldo_rops = {
 	.get_optimum_mode = hi6421_spmi_regulator_get_optimum_mode,
 };
 
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
 
 static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 {
 	struct device *pmic_dev = pdev->dev.parent;
-	struct device_node *np = pmic_dev->of_node;
-	struct device_node *regulators, *child;
-	struct platform_device *new_pdev;
+	struct regulator_config config = { };
+	struct hi6421_spmi_reg_info *sreg;
+	struct hi6421_spmi_reg_info *info;
+	struct device *dev = &pdev->dev;
 	struct hi6421_spmi_pmic *pmic;
-	int ret;
+	struct regulator_dev *rdev;
+	int i;
 
 	/*
 	 * This driver is meant to be called by hi6421-spmi-core,
@@ -399,68 +346,45 @@ static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 	if (WARN_ON(!pmic))
 		return -ENODEV;
 
-	regulators = of_get_child_by_name(np, "regulators");
-	if (!regulators) {
-		dev_err(&pdev->dev, "regulator node not found\n");
-		return -ENODEV;
-	}
+	sreg = devm_kzalloc(dev, sizeof(*sreg), GFP_KERNEL);
+	if (!sreg)
+		return -ENOMEM;
 
-	/*
-	 * Parse all LDO regulator nodes
-	 */
-	for_each_child_of_node(regulators, child) {
-		dev_dbg(&pdev->dev, "adding child %pOF\n", child);
+	sreg->pmic = pmic;
 
-		new_pdev = platform_device_alloc(child->name, -1);
-		new_pdev->dev.parent = pmic_dev;
-		new_pdev->dev.of_node = of_node_get(child);
+	for (i = 0; i < ARRAY_SIZE(regulator_info); i++) {
+		/* assign per-regulator data */
+		info = &regulator_info[i];
 
-		ret = platform_device_add(new_pdev);
-		if (ret < 0) {
-			platform_device_put(new_pdev);
-			continue;
+		dev_dbg(dev, "adding regulator %s\n", info->desc.name);
+
+		config.dev = pdev->dev.parent;
+		config.driver_data = sreg;
+
+		rdev = devm_regulator_register(dev, &info->desc, &config);
+		if (IS_ERR(rdev)) {
+			dev_err(dev, "failed to register %s\n", sreg->desc.name);
+			return PTR_ERR(rdev);
 		}
-
-		ret = hi6421_spmi_regulator_probe_ldo(new_pdev, child, pmic);
-		if (ret < 0)
-			platform_device_put(new_pdev);
 	}
 
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
 	return 0;
 }
 
-static const struct platform_device_id hi6421v600_regulator_table[] = {
+static const struct platform_device_id hi6421_spmi_regulator_table[] = {
 	{ .name = "hi6421v600-regulator" },
 	{},
 };
-MODULE_DEVICE_TABLE(platform, hi6421v600_regulator_table);
+MODULE_DEVICE_TABLE(platform, hi6421_spmi_regulator_table);
 
-static struct platform_driver hi6421v600_regulator_driver = {
-	.id_table = hi6421v600_regulator_table,
+static struct platform_driver hi6421_spmi_regulator_driver = {
+	.id_table = hi6421_spmi_regulator_table,
 	.driver = {
 		.name	= "hi6421v600-regulator",
 	},
 	.probe	= hi6421_spmi_regulator_probe,
-	.remove	= hi6421_spmi_regulator_remove,
 };
-module_platform_driver(hi6421v600_regulator_driver);
+module_platform_driver(hi6421_spmi_regulator_driver);
 
 MODULE_DESCRIPTION("Hi6421v600 regulator driver");
 MODULE_LICENSE("GPL v2");
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
