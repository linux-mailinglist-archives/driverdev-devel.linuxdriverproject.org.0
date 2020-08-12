Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B10242C83
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F28AD8836A;
	Wed, 12 Aug 2020 15:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t9ZEdkfoouLm; Wed, 12 Aug 2020 15:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2967687CCB;
	Wed, 12 Aug 2020 15:57:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59FB71BF2F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 578B188218
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mbinMJ7EbzW for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C18588247
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA2A522DD6;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247821;
 bh=FOcz4QB4o9ySf/0Y0mHlNhJubqYCcK7KirgU+MG7pKo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C41YdFbKeV320l0jPfSnHr/P+wyKDgG2gUTClH90C+91dLWoQipWWyqOS953KlOHG
 mpNUneNTpqVSEohzEWp07GatCzHyS7kRAVxj6uCI/b22ib7t8HMTLIhOJQM4ltIJU0
 jCGeLRyFCzPS+VYL5iLE+hB1qT+lyNCCrHazP+OY=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7a-005t73-Vd; Wed, 12 Aug 2020 17:56:59 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 32/44] staging: regulator: hi6421v600-regulator: change
 namespace
Date: Wed, 12 Aug 2020 17:56:42 +0200
Message-Id: <7c99fd018ec5bf3ade7d2c326ba6875dfd8a895f.1597247164.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597247164.git.mchehab+huawei@kernel.org>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename the functions used internally inside the driver in
order for them to follow the driver's name.

While here, get rid of some unused definitions at the
header file.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 94 +++++++++----------
 1 file changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index bde7fa4d7e8f..f77ecea78597 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -41,7 +41,7 @@
 
 struct hi6421v600_regulator {
 	struct regulator_desc rdesc;
-	struct hisi_pmic *pmic;
+	struct hi6421_spmi_pmic *pmic;
 	u8 eco_mode_mask;
 	u32 eco_uA;
 };
@@ -52,13 +52,13 @@ static DEFINE_MUTEX(enable_mutex);
  * microseconds after 'since'.
  */
 
-static int hisi_regulator_is_enabled(struct regulator_dev *rdev)
+static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
 {
 	u32 reg_val;
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hisi_pmic *pmic = sreg->pmic;
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
-	reg_val = hisi_pmic_read(pmic, rdev->desc->enable_reg);
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
 
 	dev_dbg(&rdev->dev,
 		"%s: enable_reg=0x%x, val= 0x%x, enable_state=%d\n",
@@ -68,10 +68,10 @@ static int hisi_regulator_is_enabled(struct regulator_dev *rdev)
 	return ((reg_val & rdev->desc->enable_mask) != 0);
 }
 
-static int hisi_regulator_enable(struct regulator_dev *rdev)
+static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hisi_pmic *pmic = sreg->pmic;
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
 	/* keep a distance of off_on_delay from last time disabled */
 	usleep_range(rdev->desc->off_on_delay, rdev->desc->off_on_delay + 1000);
@@ -85,7 +85,7 @@ static int hisi_regulator_enable(struct regulator_dev *rdev)
 		     HISI_REGS_ENA_PROTECT_TIME + 1000);
 
 	/* set enable register */
-	hisi_pmic_rmw(pmic, rdev->desc->enable_reg,
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 		      rdev->desc->enable_mask,
 				rdev->desc->enable_mask);
 	dev_dbg(&rdev->dev, "%s: enable_reg=0x%x, enable_mask=0x%x\n",
@@ -97,27 +97,27 @@ static int hisi_regulator_enable(struct regulator_dev *rdev)
 	return 0;
 }
 
-static int hisi_regulator_disable(struct regulator_dev *rdev)
+static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hisi_pmic *pmic = sreg->pmic;
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
 	/* set enable register to 0 */
-	hisi_pmic_rmw(pmic, rdev->desc->enable_reg,
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 		      rdev->desc->enable_mask, 0);
 
 	return 0;
 }
 
-static int hisi_regulator_get_voltage(struct regulator_dev *rdev)
+static int hi6421_spmi_regulator_get_voltage(struct regulator_dev *rdev)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hisi_pmic *pmic = sreg->pmic;
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val, selector;
 	int vol;
 
 	/* get voltage selector */
-	reg_val = hisi_pmic_read(pmic, rdev->desc->vsel_reg);
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
 	selector = (reg_val & rdev->desc->vsel_mask) >>
 				(ffs(rdev->desc->vsel_mask) - 1);
 
@@ -130,11 +130,11 @@ static int hisi_regulator_get_voltage(struct regulator_dev *rdev)
 	return vol;
 }
 
-static int hisi_regulator_set_voltage(struct regulator_dev *rdev,
+static int hi6421_spmi_regulator_set_voltage(struct regulator_dev *rdev,
 				      int min_uV, int max_uV, unsigned int *selector)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hisi_pmic *pmic = sreg->pmic;
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 vsel;
 	int uV, ret = 0;
 
@@ -155,7 +155,7 @@ static int hisi_regulator_set_voltage(struct regulator_dev *rdev,
 
 	*selector = vsel;
 	/* set voltage selector */
-	hisi_pmic_rmw(pmic, rdev->desc->vsel_reg,
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
 		      rdev->desc->vsel_mask,
 		      vsel << (ffs(rdev->desc->vsel_mask) - 1));
 
@@ -169,14 +169,14 @@ static int hisi_regulator_set_voltage(struct regulator_dev *rdev,
 	return ret;
 }
 
-static unsigned int hisi_regulator_get_mode(struct regulator_dev *rdev)
+static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hisi_pmic *pmic = sreg->pmic;
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 	unsigned int mode;
 
-	reg_val = hisi_pmic_read(pmic, rdev->desc->enable_reg);
+	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
 
 	if (reg_val & sreg->eco_mode_mask)
 		mode = REGULATOR_MODE_IDLE;
@@ -191,11 +191,11 @@ static unsigned int hisi_regulator_get_mode(struct regulator_dev *rdev)
 	return mode;
 }
 
-static int hisi_regulator_set_mode(struct regulator_dev *rdev,
+static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
 				   unsigned int mode)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
-	struct hisi_pmic *pmic = sreg->pmic;
+	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 val;
 
 	switch (mode) {
@@ -210,8 +210,8 @@ static int hisi_regulator_set_mode(struct regulator_dev *rdev,
 	}
 
 	/* set mode */
-	hisi_pmic_rmw(pmic, rdev->desc->enable_reg,
-		      sreg->eco_mode_mask, val);
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+			     sreg->eco_mode_mask, val);
 
 	dev_dbg(&rdev->dev,
 		"%s: enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x\n",
@@ -220,7 +220,7 @@ static int hisi_regulator_set_mode(struct regulator_dev *rdev,
 	return 0;
 }
 
-static unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *rdev,
+static unsigned int hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
 						    int input_uV, int output_uV,
 						    int load_uA)
 {
@@ -235,7 +235,7 @@ static unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *rdev,
 	}
 }
 
-static int hisi_dt_parse(struct platform_device *pdev,
+static int hi6421_spmi_dt_parse(struct platform_device *pdev,
 			 struct hi6421v600_regulator *sreg,
 			 struct regulator_desc *rdesc)
 {
@@ -310,25 +310,25 @@ static int hisi_dt_parse(struct platform_device *pdev,
 	return 0;
 }
 
-static struct regulator_ops hisi_ldo_rops = {
-	.is_enabled = hisi_regulator_is_enabled,
-	.enable = hisi_regulator_enable,
-	.disable = hisi_regulator_disable,
+static struct regulator_ops hi6421_spmi_ldo_rops = {
+	.is_enabled = hi6421_spmi_regulator_is_enabled,
+	.enable = hi6421_spmi_regulator_enable,
+	.disable = hi6421_spmi_regulator_disable,
 	.list_voltage = regulator_list_voltage_table,
-	.get_voltage = hisi_regulator_get_voltage,
-	.set_voltage = hisi_regulator_set_voltage,
-	.get_mode = hisi_regulator_get_mode,
-	.set_mode = hisi_regulator_set_mode,
-	.get_optimum_mode = hisi_regulator_get_optimum_mode,
+	.get_voltage = hi6421_spmi_regulator_get_voltage,
+	.set_voltage = hi6421_spmi_regulator_set_voltage,
+	.get_mode = hi6421_spmi_regulator_get_mode,
+	.set_mode = hi6421_spmi_regulator_set_mode,
+	.get_optimum_mode = hi6421_spmi_regulator_get_optimum_mode,
 };
 
 /*
  * Used only for parsing the DT properties
  */
 
-static int hisi_regulator_probe_ldo(struct platform_device *pdev,
+static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
 				    struct device_node *np,
-				    struct hisi_pmic *pmic)
+				    struct hi6421_spmi_pmic *pmic)
 {
 	struct device *dev = &pdev->dev;
 	struct regulator_desc *rdesc;
@@ -354,7 +354,7 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 	rdesc = &sreg->rdesc;
 
 	rdesc->name = initdata->constraints.name;
-	rdesc->ops = &hisi_ldo_rops;
+	rdesc->ops = &hi6421_spmi_ldo_rops;
 	rdesc->type = REGULATOR_VOLTAGE;
 	rdesc->min_uV = initdata->constraints.min_uV;
 
@@ -363,9 +363,9 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 		initdata->supply_regulator = supplyname;
 
 	/* parse device tree data for regulator specific */
-	ret = hisi_dt_parse(pdev, sreg, rdesc);
+	ret = hi6421_spmi_dt_parse(pdev, sreg, rdesc);
 	if (ret)
-		goto hisi_probe_end;
+		goto probe_end;
 
 	/* hisi regulator supports two modes */
 	constraint = &initdata->constraints;
@@ -387,27 +387,27 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 		dev_err(dev, "failed to register %s\n",
 			rdesc->name);
 		ret = PTR_ERR(rdev);
-		goto hisi_probe_end;
+		goto probe_end;
 	}
 
 	dev_dbg(dev, "valid_modes_mask: 0x%x, valid_ops_mask: 0x%x\n",
 		 constraint->valid_modes_mask, constraint->valid_ops_mask);
 
 	dev_set_drvdata(dev, rdev);
-hisi_probe_end:
+probe_end:
 	if (ret)
 		kfree(sreg);
 	return ret;
 }
 
 
-static int hisi_regulator_probe(struct platform_device *pdev)
+static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 {
 	struct device *pmic_dev = pdev->dev.parent;
 	struct device_node *np = pmic_dev->of_node;
 	struct device_node *regulators, *child;
 	struct platform_device *new_pdev;
-	struct hisi_pmic *pmic;
+	struct hi6421_spmi_pmic *pmic;
 	int ret;
 
 	dev_dbg(&pdev->dev, "probing hi6421v600 regulator\n");
@@ -442,7 +442,7 @@ static int hisi_regulator_probe(struct platform_device *pdev)
 			continue;
 		}
 
-		ret = hisi_regulator_probe_ldo(new_pdev, child, pmic);
+		ret = hi6421_spmi_regulator_probe_ldo(new_pdev, child, pmic);
 		if (ret < 0)
 			platform_device_put(new_pdev);
 	}
@@ -452,7 +452,7 @@ static int hisi_regulator_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static int hisi_regulator_remove(struct platform_device *pdev)
+static int hi6421_spmi_regulator_remove(struct platform_device *pdev)
 {
 	struct regulator_dev *rdev = dev_get_drvdata(&pdev->dev);
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
@@ -479,8 +479,8 @@ static struct platform_driver hi6421v600_regulator_driver = {
 	.driver = {
 		.name	= "hi6421v600-regulator",
 	},
-	.probe	= hisi_regulator_probe,
-	.remove	= hisi_regulator_remove,
+	.probe	= hi6421_spmi_regulator_probe,
+	.remove	= hi6421_spmi_regulator_remove,
 };
 module_platform_driver(hi6421v600_regulator_driver);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
