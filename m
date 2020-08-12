Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72358242CB0
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C9B1023235;
	Wed, 12 Aug 2020 15:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QfZU8cri9fq7; Wed, 12 Aug 2020 15:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6A03A232FA;
	Wed, 12 Aug 2020 15:57:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E25C21BF2F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D41DD20355
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mNVxEEF9HBGj for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E2C18232D2
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9019422D70;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247820;
 bh=7i6SE6Kw82bD0hGAG5F9HzSf31kKw7fF8t9Urr77uFo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uxITBHnmKp6D1o/5LEMpk08IB7WintzYrX9d3wspXQsQXJskc6LesxbF2AG/t82dP
 99Pl2ZY/cvUl7NsmJix8ZixB0I6Lyru7KvlUFy7+ZBEc7QABnx+x2k/KaDw8ZSAkQN
 oMIiQer9+xOUNp8sQGmv7aIg1+QutmzKgRwWKpF8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7a-005t6l-Mn; Wed, 12 Aug 2020 17:56:58 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 26/44] staging: regulator: hi6421v600-regulator: coding style
 fixups
Date: Wed, 12 Aug 2020 17:56:36 +0200
Message-Id: <7d82a9b72e1fe5a413ea12b6014a733b71c21184.1597247164.git.mchehab+huawei@kernel.org>
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

There are several issues on those drivers related to their
coding style. Solve most of them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 110 +++++++++---------
 1 file changed, 56 insertions(+), 54 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 904cb64b1dcd..5f6e4ba4b99e 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Device driver for regulators in Hisi IC
  *
@@ -52,7 +53,7 @@ struct hisi_regulator {
 	u32 off_on_delay;
 	u32 eco_uA;
 	struct regulator_desc rdesc;
-	int (*dt_parse)(struct hisi_regulator *, struct spmi_device *);
+	int (*dt_parse)(struct hisi_regulator *reg, struct spmi_device *spmi);
 };
 
 static DEFINE_MUTEX(enable_mutex);
@@ -77,8 +78,9 @@ static int hisi_regulator_is_enabled(struct regulator_dev *dev)
 	struct hisi_pmic *pmic = rdev_to_pmic(dev);
 
 	reg_val = hisi_pmic_read(pmic, sreg->register_info.ctrl_reg);
-	pr_debug("<[%s]: ctrl_reg=0x%x,enable_state=%d>\n", __func__, sreg->register_info.ctrl_reg,\
-			(reg_val & sreg->register_info.enable_mask));
+	pr_debug("<[%s]: ctrl_reg=0x%x,enable_state=%d>\n",
+		 __func__, sreg->register_info.ctrl_reg,
+		(reg_val & sreg->register_info.enable_mask));
 
 	return ((reg_val & sreg->register_info.enable_mask) != 0);
 }
@@ -98,14 +100,13 @@ static int hisi_regulator_enable(struct regulator_dev *dev)
 	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
 		     HISI_REGS_ENA_PROTECT_TIME + 1000);
 
-
-
 	/* set enable register */
 	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
-				sreg->register_info.enable_mask,
+		      sreg->register_info.enable_mask,
 				sreg->register_info.enable_mask);
-	pr_debug("<[%s]: ctrl_reg=0x%x,enable_mask=0x%x>\n", __func__, sreg->register_info.ctrl_reg,\
-			sreg->register_info.enable_mask);
+	pr_debug("<[%s]: ctrl_reg=0x%x,enable_mask=0x%x>\n",
+		 __func__, sreg->register_info.ctrl_reg,
+		 sreg->register_info.enable_mask);
 
 	mutex_unlock(&enable_mutex);
 
@@ -119,7 +120,7 @@ static int hisi_regulator_disable(struct regulator_dev *dev)
 
 	/* set enable register to 0 */
 	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
-				sreg->register_info.enable_mask, 0);
+		      sreg->register_info.enable_mask, 0);
 
 	return 0;
 }
@@ -132,7 +133,8 @@ static int hisi_regulator_get_voltage(struct regulator_dev *dev)
 
 	/* get voltage selector */
 	reg_val = hisi_pmic_read(pmic, sreg->register_info.vset_reg);
-	pr_debug("<[%s]: vset_reg=0x%x>\n", __func__, sreg->register_info.vset_reg);
+	pr_debug("<[%s]: vset_reg=0x%x>\n",
+		 __func__, sreg->register_info.vset_reg);
 
 	selector = (reg_val & sreg->register_info.vset_mask) >>
 				(ffs(sreg->register_info.vset_mask) - 1);
@@ -141,7 +143,7 @@ static int hisi_regulator_get_voltage(struct regulator_dev *dev)
 }
 
 static int hisi_regulator_set_voltage(struct regulator_dev *dev,
-				int min_uV, int max_uV, unsigned *selector)
+				      int min_uV, int max_uV, unsigned int *selector)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
 	struct hisi_pmic *pmic = rdev_to_pmic(dev);
@@ -162,14 +164,14 @@ static int hisi_regulator_set_voltage(struct regulator_dev *dev,
 	*selector = vsel;
 	/* set voltage selector */
 	hisi_pmic_rmw(pmic, sreg->register_info.vset_reg,
-		sreg->register_info.vset_mask,
+		      sreg->register_info.vset_mask,
 		vsel << (ffs(sreg->register_info.vset_mask) - 1));
 
-	pr_debug("<[%s]: vset_reg=0x%x, vset_mask=0x%x, value=0x%x>\n", __func__,\
-			sreg->register_info.vset_reg,\
-			sreg->register_info.vset_mask,\
-			vsel << (ffs(sreg->register_info.vset_mask) - 1)\
-			);
+	pr_debug("<[%s]: vset_reg=0x%x, vset_mask=0x%x, value=0x%x>\n",
+		 __func__,
+		 sreg->register_info.vset_reg,
+		 sreg->register_info.vset_mask,
+		 vsel << (ffs(sreg->register_info.vset_mask) - 1));
 
 	return ret;
 }
@@ -181,10 +183,10 @@ static unsigned int hisi_regulator_get_mode(struct regulator_dev *dev)
 	u32 reg_val;
 
 	reg_val = hisi_pmic_read(pmic, sreg->register_info.ctrl_reg);
-	pr_debug("<[%s]: reg_val=%d, ctrl_reg=0x%x, eco_mode_mask=0x%x>\n", __func__, reg_val,\
-			sreg->register_info.ctrl_reg,\
-			sreg->register_info.eco_mode_mask\
-		   );
+	pr_debug("<[%s]: reg_val=%d, ctrl_reg=0x%x, eco_mode_mask=0x%x>\n",
+		 __func__, reg_val,
+		sreg->register_info.ctrl_reg,
+		sreg->register_info.eco_mode_mask);
 
 	if (reg_val & sreg->register_info.eco_mode_mask)
 		return REGULATOR_MODE_IDLE;
@@ -193,7 +195,7 @@ static unsigned int hisi_regulator_get_mode(struct regulator_dev *dev)
 }
 
 static int hisi_regulator_set_mode(struct regulator_dev *dev,
-						unsigned int mode)
+				   unsigned int mode)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
 	struct hisi_pmic *pmic = rdev_to_pmic(dev);
@@ -212,31 +214,31 @@ static int hisi_regulator_set_mode(struct regulator_dev *dev,
 
 	/* set mode */
 	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
+		      sreg->register_info.eco_mode_mask,
+		eco_mode << (ffs(sreg->register_info.eco_mode_mask) - 1));
+
+	pr_debug("<[%s]: ctrl_reg=0x%x, eco_mode_mask=0x%x, value=0x%x>\n",
+		 __func__,
+		sreg->register_info.ctrl_reg,
 		sreg->register_info.eco_mode_mask,
 		eco_mode << (ffs(sreg->register_info.eco_mode_mask) - 1));
-
-	pr_debug("<[%s]: ctrl_reg=0x%x, eco_mode_mask=0x%x, value=0x%x>\n", __func__,\
-			sreg->register_info.ctrl_reg,\
-			sreg->register_info.eco_mode_mask,\
-			eco_mode << (ffs(sreg->register_info.eco_mode_mask) - 1)\
-		   );
 	return 0;
 }
 
-
-unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *dev,
-			int input_uV, int output_uV, int load_uA)
+static unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *dev,
+						    int input_uV, int output_uV,
+						    int load_uA)
 {
 	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
 
-	if ((load_uA == 0) || ((unsigned int)load_uA > sreg->eco_uA))
+	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
 		return REGULATOR_MODE_NORMAL;
 	else
 		return REGULATOR_MODE_IDLE;
 }
 
 static int hisi_dt_parse_common(struct hisi_regulator *sreg,
-					struct spmi_device *pdev)
+				struct spmi_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
@@ -246,7 +248,7 @@ static int hisi_dt_parse_common(struct hisi_regulator *sreg,
 
 	/* parse .register_info.ctrl_reg */
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-ctrl",
-						register_info, 3);
+					 register_info, 3);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-ctrl property set\n");
 		goto dt_parse_common_end;
@@ -257,7 +259,7 @@ static int hisi_dt_parse_common(struct hisi_regulator *sreg,
 
 	/* parse .register_info.vset_reg */
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-vset",
-						register_info, 2);
+					 register_info, 2);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-vset property set\n");
 		goto dt_parse_common_end;
@@ -267,7 +269,7 @@ static int hisi_dt_parse_common(struct hisi_regulator *sreg,
 
 	/* parse .off-on-delay */
 	ret = of_property_read_u32(np, "hisilicon,hisi-off-on-delay-us",
-						&sreg->off_on_delay);
+				   &sreg->off_on_delay);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-off-on-delay-us property set\n");
 		goto dt_parse_common_end;
@@ -294,7 +296,7 @@ static int hisi_dt_parse_common(struct hisi_regulator *sreg,
 }
 
 static int hisi_dt_parse_ldo(struct hisi_regulator *sreg,
-				struct spmi_device *pdev)
+			     struct spmi_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
@@ -312,7 +314,7 @@ static int hisi_dt_parse_ldo(struct hisi_regulator *sreg,
 
 	/* alloc space for .volt_table */
 	v_table = devm_kzalloc(dev, sizeof(unsigned int) * rdesc->n_voltages,
-								GFP_KERNEL);
+			       GFP_KERNEL);
 	if (unlikely(!v_table)) {
 		ret = -ENOMEM;
 		dev_err(dev, "no memory for .volt_table\n");
@@ -320,7 +322,7 @@ static int hisi_dt_parse_ldo(struct hisi_regulator *sreg,
 	}
 
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-vset-table",
-						v_table, rdesc->n_voltages);
+					 v_table, rdesc->n_voltages);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-vset-table property set\n");
 		goto dt_parse_ldo_end1;
@@ -362,7 +364,7 @@ static const struct hisi_regulator hisi_regulator_ldo = {
 	.dt_parse = hisi_dt_parse_ldo,
 };
 
-static struct of_device_id of_hisi_regulator_match_tbl[] = {
+static const struct of_device_id of_hisi_regulator_match_tbl[] = {
 	{
 		.compatible = "hisilicon-hisi-ldo",
 		.data = &hisi_regulator_ldo,
@@ -388,14 +390,14 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 	int ret = 0;
 	/* to check which type of regulator this is */
 	match = of_match_device(of_hisi_regulator_match_tbl, &pdev->dev);
-	if (NULL == match) {
+	if (!match) {
 		pr_err("get hisi regulator fail!\n\r");
 		return -EINVAL;
 	}
 
 	template = match->data;
 	initdata = of_get_regulator_init_data(dev, np, NULL);
-	if (NULL == initdata) {
+	if (!initdata) {
 		pr_err("get regulator init data error !\n");
 		return -EINVAL;
 	}
@@ -404,14 +406,14 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 	constraint = &initdata->constraints;
 
 	ret = of_property_read_u32_array(np, "hisilicon,valid-modes-mask",
-						&(constraint->valid_modes_mask), 1);
+					 &constraint->valid_modes_mask, 1);
 	if (ret) {
 		pr_err("no hisilicon,valid-modes-mask property set\n");
 		ret = -ENODEV;
 		return ret;
 	}
 	ret = of_property_read_u32_array(np, "hisilicon,valid-idle-mask",
-						&temp_modes, 1);
+					 &temp_modes, 1);
 	if (ret) {
 		pr_err("no hisilicon,valid-modes-mask property set\n");
 		ret = -ENODEV;
@@ -420,18 +422,16 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 	constraint->valid_ops_mask |= temp_modes;
 
 	sreg = kmemdup(template, sizeof(*sreg), GFP_KERNEL);
-	if (!sreg) {
-		pr_err("template kememdup is fail. \n");
+	if (!sreg)
 		return -ENOMEM;
-	}
+
 	sreg->name = initdata->constraints.name;
 	rdesc = &sreg->rdesc;
 	rdesc->name = sreg->name;
 	rdesc->min_uV = initdata->constraints.min_uV;
 	supplyname = of_get_property(np, "hisilicon,supply_name", NULL);
-	if (supplyname != NULL) {
+	if (supplyname)
 		initdata->supply_regulator = supplyname;
-	}
 
 	/* to parse device tree data for regulator specific */
 	ret = sreg->dt_parse(sreg, pdev);
@@ -454,8 +454,9 @@ static int hisi_regulator_probe(struct spmi_device *pdev)
 		goto hisi_probe_end;
 	}
 
-	pr_debug("[%s]:valid_modes_mask[0x%x], valid_ops_mask[0x%x]\n", rdesc->name,\
-			constraint->valid_modes_mask, constraint->valid_ops_mask);
+	pr_debug("[%s]:valid_modes_mask[0x%x], valid_ops_mask[0x%x]\n",
+		 rdesc->name,
+		 constraint->valid_modes_mask, constraint->valid_ops_mask);
 
 	dev_set_drvdata(dev, rdev);
 hisi_probe_end:
@@ -477,11 +478,12 @@ static void hisi_regulator_remove(struct spmi_device *pdev)
 
 	kfree(sreg);
 }
+
 static int hisi_regulator_suspend(struct device *dev, pm_message_t state)
 {
 	struct hisi_regulator *hisi_regulator = dev_get_drvdata(dev);
 
-	if (NULL == hisi_regulator) {
+	if (!hisi_regulator) {
 		pr_err("%s:regulator is NULL\n", __func__);
 		return -ENOMEM;
 	}
@@ -490,13 +492,13 @@ static int hisi_regulator_suspend(struct device *dev, pm_message_t state)
 	pr_info("%s:-\n", __func__);
 
 	return 0;
-}/*lint !e715 */
+}
 
 static int hisi_regulator_resume(struct device *dev)
 {
 	struct hisi_regulator *hisi_regulator = dev_get_drvdata(dev);
 
-	if (NULL == hisi_regulator) {
+	if (!hisi_regulator) {
 		pr_err("%s:regulator is NULL\n", __func__);
 		return -ENOMEM;
 	}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
