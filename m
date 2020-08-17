Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D62245D85
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:12:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E7EF72152C;
	Mon, 17 Aug 2020 07:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XyHMVPL9-SYw; Mon, 17 Aug 2020 07:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BE842046B;
	Mon, 17 Aug 2020 07:11:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C65D1BF969
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 495B286702
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17j_jatDj60x for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 342758665F
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E906522D01;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648278;
 bh=HC26ydsJTcRG3sbWMiaIEpFN8xBiuZvfhaV8TQZSJ8g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DDNfFJRM/BbqWOMbr7owQa/v8V+yUEuksO0HrKNpWT4QQghM2Q9qvVVqImRqRhR6O
 aOZNLJS9ZAO3/gV4WFqFRKQ/xUe9Meq0nTbvNvHrDwnwf020Lg6NafPtOZ+fsf5Kfc
 SZo3CWhFlz0U6dnNXdbsfRb/rRk1nHnVqGpcCFuU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIa-00BdkS-1u; Mon, 17 Aug 2020 09:11:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 27/44] staging: regulator: hi6421v600-regulator: change the
 binding logic
Date: Mon, 17 Aug 2020 09:10:46 +0200
Message-Id: <aa40d443dfc6c8e69e4c36fa79d15459762924e4.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change the binding logic to ensure that the PMIC SPMI
driver will run before the regulator code and add it to the
building system.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 186 +++++++++---------
 1 file changed, 91 insertions(+), 95 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 5f6e4ba4b99e..9aaafcbb1a36 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -31,7 +31,7 @@
 #include <linux/regulator/driver.h>
 #include <linux/regulator/machine.h>
 #include <linux/regulator/of_regulator.h>
-#include <linux/mfd/hisi_pmic.h>
+#include <linux/mfd/hi6421-spmi-pmic.h>
 #include <linux/delay.h>
 #include <linux/time.h>
 #include <linux/version.h>
@@ -53,20 +53,11 @@ struct hisi_regulator {
 	u32 off_on_delay;
 	u32 eco_uA;
 	struct regulator_desc rdesc;
-	int (*dt_parse)(struct hisi_regulator *reg, struct spmi_device *spmi);
+	struct hisi_pmic *pmic;
 };
 
 static DEFINE_MUTEX(enable_mutex);
 
-static inline struct hisi_pmic *rdev_to_pmic(struct regulator_dev *dev)
-{
-	/* regulator_dev parent to->
-	 * hisi regulator platform device_dev parent to->
-	 * hisi pmic platform device_dev
-	 */
-	return dev_get_drvdata(rdev_get_dev(dev)->parent->parent);
-}
-
 /* helper function to ensure when it returns it is at least 'delay_us'
  * microseconds after 'since'.
  */
@@ -75,7 +66,7 @@ static int hisi_regulator_is_enabled(struct regulator_dev *dev)
 {
 	u32 reg_val;
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
-	struct hisi_pmic *pmic = rdev_to_pmic(dev);
+	struct hisi_pmic *pmic = sreg->pmic;
 
 	reg_val = hisi_pmic_read(pmic, sreg->register_info.ctrl_reg);
 	pr_debug("<[%s]: ctrl_reg=0x%x,enable_state=%d>\n",
@@ -88,7 +79,7 @@ static int hisi_regulator_is_enabled(struct regulator_dev *dev)
 static int hisi_regulator_enable(struct regulator_dev *dev)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
-	struct hisi_pmic *pmic = rdev_to_pmic(dev);
+	struct hisi_pmic *pmic = sreg->pmic;
 
 	/* keep a distance of off_on_delay from last time disabled */
 	usleep_range(sreg->off_on_delay, sreg->off_on_delay + 1000);
@@ -116,7 +107,7 @@ static int hisi_regulator_enable(struct regulator_dev *dev)
 static int hisi_regulator_disable(struct regulator_dev *dev)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
-	struct hisi_pmic *pmic = rdev_to_pmic(dev);
+	struct hisi_pmic *pmic = sreg->pmic;
 
 	/* set enable register to 0 */
 	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
@@ -128,7 +119,7 @@ static int hisi_regulator_disable(struct regulator_dev *dev)
 static int hisi_regulator_get_voltage(struct regulator_dev *dev)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
-	struct hisi_pmic *pmic = rdev_to_pmic(dev);
+	struct hisi_pmic *pmic = sreg->pmic;
 	u32 reg_val, selector;
 
 	/* get voltage selector */
@@ -146,7 +137,7 @@ static int hisi_regulator_set_voltage(struct regulator_dev *dev,
 				      int min_uV, int max_uV, unsigned int *selector)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
-	struct hisi_pmic *pmic = rdev_to_pmic(dev);
+	struct hisi_pmic *pmic = sreg->pmic;
 	u32 vsel;
 	int ret = 0;
 
@@ -179,7 +170,7 @@ static int hisi_regulator_set_voltage(struct regulator_dev *dev,
 static unsigned int hisi_regulator_get_mode(struct regulator_dev *dev)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
-	struct hisi_pmic *pmic = rdev_to_pmic(dev);
+	struct hisi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 
 	reg_val = hisi_pmic_read(pmic, sreg->register_info.ctrl_reg);
@@ -198,7 +189,7 @@ static int hisi_regulator_set_mode(struct regulator_dev *dev,
 				   unsigned int mode)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
-	struct hisi_pmic *pmic = rdev_to_pmic(dev);
+	struct hisi_pmic *pmic = sreg->pmic;
 	u32 eco_mode;
 
 	switch (mode) {
@@ -238,7 +229,7 @@ static unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *dev,
 }
 
 static int hisi_dt_parse_common(struct hisi_regulator *sreg,
-				struct spmi_device *pdev)
+				struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
@@ -296,7 +287,7 @@ static int hisi_dt_parse_common(struct hisi_regulator *sreg,
 }
 
 static int hisi_dt_parse_ldo(struct hisi_regulator *sreg,
-			     struct spmi_device *pdev)
+			     struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
@@ -355,47 +346,32 @@ static struct regulator_ops hisi_ldo_rops = {
 	.get_optimum_mode = hisi_regulator_get_optimum_mode,
 };
 
-static const struct hisi_regulator hisi_regulator_ldo = {
-	.rdesc = {
-	.ops = &hisi_ldo_rops,
-		.type = REGULATOR_VOLTAGE,
-		.owner = THIS_MODULE,
-		},
-	.dt_parse = hisi_dt_parse_ldo,
-};
+/*
+ * Used only for parsing the DT properties
+ */
 
-static const struct of_device_id of_hisi_regulator_match_tbl[] = {
+static const struct of_device_id of_hisi_pmic_match_tbl[] = {
 	{
-		.compatible = "hisilicon-hisi-ldo",
-		.data = &hisi_regulator_ldo,
+		.compatible = "hisilicon,hi6421-spmi-pmic-ldo",
 	},
-	{ /* end */ }
+	{ }
 };
 
-static int hisi_regulator_probe(struct spmi_device *pdev)
+static int hisi_regulator_probe_ldo(struct platform_device *pdev,
+				    struct device_node *np,
+				    struct hisi_pmic *pmic)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
 	struct regulator_desc *rdesc;
 	struct regulator_dev *rdev;
 	struct hisi_regulator *sreg = NULL;
 	struct regulator_init_data *initdata;
 	struct regulator_config config = { };
-	const struct of_device_id *match;
 	struct regulation_constraints *constraint;
 	const char *supplyname = NULL;
 	unsigned int temp_modes;
-
-	const struct hisi_regulator *template = NULL;
 	int ret = 0;
-	/* to check which type of regulator this is */
-	match = of_match_device(of_hisi_regulator_match_tbl, &pdev->dev);
-	if (!match) {
-		pr_err("get hisi regulator fail!\n\r");
-		return -EINVAL;
-	}
 
-	template = match->data;
 	initdata = of_get_regulator_init_data(dev, np, NULL);
 	if (!initdata) {
 		pr_err("get regulator init data error !\n");
@@ -421,20 +397,25 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 	}
 	constraint->valid_ops_mask |= temp_modes;
 
-	sreg = kmemdup(template, sizeof(*sreg), GFP_KERNEL);
+	sreg = kzalloc(sizeof(*sreg), GFP_KERNEL);
 	if (!sreg)
 		return -ENOMEM;
 
 	sreg->name = initdata->constraints.name;
+	sreg->pmic = pmic;
 	rdesc = &sreg->rdesc;
+
 	rdesc->name = sreg->name;
+	rdesc->ops = &hisi_ldo_rops;
+	rdesc->type = REGULATOR_VOLTAGE;
 	rdesc->min_uV = initdata->constraints.min_uV;
+
 	supplyname = of_get_property(np, "hisilicon,supply_name", NULL);
 	if (supplyname)
 		initdata->supply_regulator = supplyname;
 
-	/* to parse device tree data for regulator specific */
-	ret = sreg->dt_parse(sreg, pdev);
+	/* parse device tree data for regulator specific */
+	ret = hisi_dt_parse_ldo(sreg, pdev);
 	if (ret) {
 		dev_err(dev, "device tree parameter parse error!\n");
 		goto hisi_probe_end;
@@ -465,7 +446,59 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 	return ret;
 }
 
-static void hisi_regulator_remove(struct spmi_device *pdev)
+
+static int hisi_regulator_probe(struct platform_device *pdev)
+{
+	struct device *pmic_dev = pdev->dev.parent;
+	struct device_node *np = pmic_dev->of_node;
+	struct device_node *regulators, *child;
+	struct platform_device *new_pdev;
+	struct hisi_pmic *pmic;
+	int ret;
+
+	dev_dbg(&pdev->dev, "probing hi6421v600 regulator\n");
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
+		ret = hisi_regulator_probe_ldo(new_pdev, child, pmic);
+		if (ret < 0)
+			platform_device_put(new_pdev);
+	}
+
+	of_node_put(regulators);
+
+	return 0;
+}
+
+static int hisi_regulator_remove(struct platform_device *pdev)
 {
 	struct regulator_dev *rdev = dev_get_drvdata(&pdev->dev);
 	struct hisi_regulator *sreg = rdev_get_drvdata(rdev);
@@ -477,63 +510,26 @@ static void hisi_regulator_remove(struct spmi_device *pdev)
 		devm_kfree(&pdev->dev, (unsigned int *)sreg->rdesc.volt_table);
 
 	kfree(sreg);
-}
-
-static int hisi_regulator_suspend(struct device *dev, pm_message_t state)
-{
-	struct hisi_regulator *hisi_regulator = dev_get_drvdata(dev);
-
-	if (!hisi_regulator) {
-		pr_err("%s:regulator is NULL\n", __func__);
-		return -ENOMEM;
-	}
-
-	pr_info("%s:+\n", __func__);
-	pr_info("%s:-\n", __func__);
 
 	return 0;
 }
 
-static int hisi_regulator_resume(struct device *dev)
-{
-	struct hisi_regulator *hisi_regulator = dev_get_drvdata(dev);
-
-	if (!hisi_regulator) {
-		pr_err("%s:regulator is NULL\n", __func__);
-		return -ENOMEM;
-	}
-
-	pr_info("%s:+\n", __func__);
-	pr_info("%s:-\n", __func__);
-
-	return 0;
-}
+static const struct platform_device_id hi6421v600_regulator_table[] = {
+	{ .name = "hi6421v600-regulator" },
+	{},
+};
+MODULE_DEVICE_TABLE(platform, hi6421v600_regulator_table);
 
-static struct spmi_driver hisi_pmic_driver = {
+static struct platform_driver hi6421v600_regulator_driver = {
+	.id_table = hi6421v600_regulator_table,
 	.driver = {
-		.name	= "hisi_regulator",
-		.owner  = THIS_MODULE,
-		.of_match_table = of_hisi_regulator_match_tbl,
-		.suspend = hisi_regulator_suspend,
-		.resume = hisi_regulator_resume,
+		.name	= "hi6421v600-regulator",
 	},
 	.probe	= hisi_regulator_probe,
 	.remove	= hisi_regulator_remove,
 };
+module_platform_driver(hi6421v600_regulator_driver);
 
-static int __init hisi_regulator_init(void)
-{
-	return spmi_driver_register(&hisi_pmic_driver);
-}
-
-static void __exit hisi_regulator_exit(void)
-{
-	spmi_driver_unregister(&hisi_pmic_driver);
-}
-
-fs_initcall(hisi_regulator_init);
-module_exit(hisi_regulator_exit);
-
-MODULE_DESCRIPTION("Hisi regulator driver");
+MODULE_DESCRIPTION("Hi6421v600 regulator driver");
 MODULE_LICENSE("GPL v2");
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
