Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F23245D70
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 732B7880C2;
	Mon, 17 Aug 2020 07:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JLusXyBSBkV6; Mon, 17 Aug 2020 07:11:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4852087A11;
	Mon, 17 Aug 2020 07:11:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFA841BF969
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BAFF687568
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z4utjBZDsrAg for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 613B087447
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC86E22D02;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648278;
 bh=uahWHHv3QYRGjZE3t2Bi0ZH6Rlorul++OeEpfnAXth4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QtdlGsyKtXApXQ3r5c/0I4EuwblS/ZnxmTu9+GnaCUPuRIC87FvPgH9vGa2cRt2Gk
 J9O//DcIYnv6CFqnJapqmkyAOK4/XeItdexlTJrIMxN9qR2kHkpDeJUkZRfMiYUrBN
 hX+4+9yhBX2q2bxawAkKe7E6qAC9IoMjYSmRNcD0=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIa-00BdkY-4P; Mon, 17 Aug 2020 09:11:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 28/44] staging: regulator: hi6421v600-regulator: cleanup
 struct hisi_regulator
Date: Mon, 17 Aug 2020 09:10:47 +0200
Message-Id: <648d48f11368a9869d760c2bd54bfbc3feb4f44c.1597647359.git.mchehab+huawei@kernel.org>
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

There are several fields on this struct that can be removed,
as they already exists at struct regulator_desc.

Remove them, cleaning up the code in the process.

While here, rename it to hi6421v600_regulator_info, in order
to better match the driver's name.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 226 +++++++-----------
 1 file changed, 92 insertions(+), 134 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 9aaafcbb1a36..7d82d11f4b52 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -39,21 +39,11 @@
 #include <linux/uaccess.h>
 #include <linux/spmi.h>
 
-struct hisi_regulator_register_info {
-	u32 ctrl_reg;
-	u32 enable_mask;
-	u32 eco_mode_mask;
-	u32 vset_reg;
-	u32 vset_mask;
-};
-
-struct hisi_regulator {
-	const char *name;
-	struct hisi_regulator_register_info register_info;
-	u32 off_on_delay;
-	u32 eco_uA;
+struct hi6421v600_regulator {
 	struct regulator_desc rdesc;
 	struct hisi_pmic *pmic;
+	u8 eco_mode_mask;
+	u32 eco_uA;
 };
 
 static DEFINE_MUTEX(enable_mutex);
@@ -62,29 +52,29 @@ static DEFINE_MUTEX(enable_mutex);
  * microseconds after 'since'.
  */
 
-static int hisi_regulator_is_enabled(struct regulator_dev *dev)
+static int hisi_regulator_is_enabled(struct regulator_dev *rdev)
 {
 	u32 reg_val;
-	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 
-	reg_val = hisi_pmic_read(pmic, sreg->register_info.ctrl_reg);
-	pr_debug("<[%s]: ctrl_reg=0x%x,enable_state=%d>\n",
-		 __func__, sreg->register_info.ctrl_reg,
-		(reg_val & sreg->register_info.enable_mask));
+	reg_val = hisi_pmic_read(pmic, rdev->desc->enable_reg);
+	pr_debug("<[%s]: enable_reg=0x%x,enable_state=%d>\n",
+		 __func__, rdev->desc->enable_reg,
+		(reg_val & rdev->desc->enable_mask));
 
-	return ((reg_val & sreg->register_info.enable_mask) != 0);
+	return ((reg_val & rdev->desc->enable_mask) != 0);
 }
 
-static int hisi_regulator_enable(struct regulator_dev *dev)
+static int hisi_regulator_enable(struct regulator_dev *rdev)
 {
-	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 
 	/* keep a distance of off_on_delay from last time disabled */
-	usleep_range(sreg->off_on_delay, sreg->off_on_delay + 1000);
+	usleep_range(rdev->desc->off_on_delay, rdev->desc->off_on_delay + 1000);
 
-	pr_debug("<[%s]: off_on_delay=%dus>\n", __func__, sreg->off_on_delay);
+	pr_debug("<[%s]: off_on_delay=%dus>\n", __func__, rdev->desc->off_on_delay);
 
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&enable_mutex);
@@ -92,103 +82,103 @@ static int hisi_regulator_enable(struct regulator_dev *dev)
 		     HISI_REGS_ENA_PROTECT_TIME + 1000);
 
 	/* set enable register */
-	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
-		      sreg->register_info.enable_mask,
-				sreg->register_info.enable_mask);
-	pr_debug("<[%s]: ctrl_reg=0x%x,enable_mask=0x%x>\n",
-		 __func__, sreg->register_info.ctrl_reg,
-		 sreg->register_info.enable_mask);
+	hisi_pmic_rmw(pmic, rdev->desc->enable_reg,
+		      rdev->desc->enable_mask,
+				rdev->desc->enable_mask);
+	pr_debug("<[%s]: enable_reg=0x%x,enable_mask=0x%x>\n",
+		 __func__, rdev->desc->enable_reg,
+		 rdev->desc->enable_mask);
 
 	mutex_unlock(&enable_mutex);
 
 	return 0;
 }
 
-static int hisi_regulator_disable(struct regulator_dev *dev)
+static int hisi_regulator_disable(struct regulator_dev *rdev)
 {
-	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 
 	/* set enable register to 0 */
-	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
-		      sreg->register_info.enable_mask, 0);
+	hisi_pmic_rmw(pmic, rdev->desc->enable_reg,
+		      rdev->desc->enable_mask, 0);
 
 	return 0;
 }
 
-static int hisi_regulator_get_voltage(struct regulator_dev *dev)
+static int hisi_regulator_get_voltage(struct regulator_dev *rdev)
 {
-	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 	u32 reg_val, selector;
 
 	/* get voltage selector */
-	reg_val = hisi_pmic_read(pmic, sreg->register_info.vset_reg);
-	pr_debug("<[%s]: vset_reg=0x%x>\n",
-		 __func__, sreg->register_info.vset_reg);
+	reg_val = hisi_pmic_read(pmic, rdev->desc->vsel_reg);
+	pr_debug("<[%s]: vsel_reg=0x%x>\n",
+		 __func__, rdev->desc->vsel_reg);
 
-	selector = (reg_val & sreg->register_info.vset_mask) >>
-				(ffs(sreg->register_info.vset_mask) - 1);
+	selector = (reg_val & rdev->desc->vsel_mask) >>
+				(ffs(rdev->desc->vsel_mask) - 1);
 
-	return sreg->rdesc.ops->list_voltage(dev, selector);
+	return rdev->desc->ops->list_voltage(rdev, selector);
 }
 
-static int hisi_regulator_set_voltage(struct regulator_dev *dev,
+static int hisi_regulator_set_voltage(struct regulator_dev *rdev,
 				      int min_uV, int max_uV, unsigned int *selector)
 {
-	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 	u32 vsel;
 	int ret = 0;
 
-	for (vsel = 0; vsel < sreg->rdesc.n_voltages; vsel++) {
-		int uV = sreg->rdesc.volt_table[vsel];
+	for (vsel = 0; vsel < rdev->desc->n_voltages; vsel++) {
+		int uV = rdev->desc->volt_table[vsel];
 		/* Break at the first in-range value */
 		if (min_uV <= uV && uV <= max_uV)
 			break;
 	}
 
 	/* unlikely to happen. sanity test done by regulator core */
-	if (unlikely(vsel == sreg->rdesc.n_voltages))
+	if (unlikely(vsel == rdev->desc->n_voltages))
 		return -EINVAL;
 
 	*selector = vsel;
 	/* set voltage selector */
-	hisi_pmic_rmw(pmic, sreg->register_info.vset_reg,
-		      sreg->register_info.vset_mask,
-		vsel << (ffs(sreg->register_info.vset_mask) - 1));
+	hisi_pmic_rmw(pmic, rdev->desc->vsel_reg,
+		      rdev->desc->vsel_mask,
+		vsel << (ffs(rdev->desc->vsel_mask) - 1));
 
-	pr_debug("<[%s]: vset_reg=0x%x, vset_mask=0x%x, value=0x%x>\n",
+	pr_debug("<[%s]: vsel_reg=0x%x, vsel_mask=0x%x, value=0x%x>\n",
 		 __func__,
-		 sreg->register_info.vset_reg,
-		 sreg->register_info.vset_mask,
-		 vsel << (ffs(sreg->register_info.vset_mask) - 1));
+		 rdev->desc->vsel_reg,
+		 rdev->desc->vsel_mask,
+		 vsel << (ffs(rdev->desc->vsel_mask) - 1));
 
 	return ret;
 }
 
-static unsigned int hisi_regulator_get_mode(struct regulator_dev *dev)
+static unsigned int hisi_regulator_get_mode(struct regulator_dev *rdev)
 {
-	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 
-	reg_val = hisi_pmic_read(pmic, sreg->register_info.ctrl_reg);
-	pr_debug("<[%s]: reg_val=%d, ctrl_reg=0x%x, eco_mode_mask=0x%x>\n",
+	reg_val = hisi_pmic_read(pmic, rdev->desc->enable_reg);
+	pr_debug("<[%s]: reg_val=%d, enable_reg=0x%x, eco_mode_mask=0x%x>\n",
 		 __func__, reg_val,
-		sreg->register_info.ctrl_reg,
-		sreg->register_info.eco_mode_mask);
+		rdev->desc->enable_reg,
+		sreg->eco_mode_mask);
 
-	if (reg_val & sreg->register_info.eco_mode_mask)
+	if (reg_val & sreg->eco_mode_mask)
 		return REGULATOR_MODE_IDLE;
 	else
 		return REGULATOR_MODE_NORMAL;
 }
 
-static int hisi_regulator_set_mode(struct regulator_dev *dev,
+static int hisi_regulator_set_mode(struct regulator_dev *rdev,
 				   unsigned int mode)
 {
-	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 	u32 eco_mode;
 
@@ -204,23 +194,23 @@ static int hisi_regulator_set_mode(struct regulator_dev *dev,
 	}
 
 	/* set mode */
-	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
-		      sreg->register_info.eco_mode_mask,
-		eco_mode << (ffs(sreg->register_info.eco_mode_mask) - 1));
+	hisi_pmic_rmw(pmic, rdev->desc->enable_reg,
+		      sreg->eco_mode_mask,
+		eco_mode << (ffs(sreg->eco_mode_mask) - 1));
 
-	pr_debug("<[%s]: ctrl_reg=0x%x, eco_mode_mask=0x%x, value=0x%x>\n",
+	pr_debug("<[%s]: enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x>\n",
 		 __func__,
-		sreg->register_info.ctrl_reg,
-		sreg->register_info.eco_mode_mask,
-		eco_mode << (ffs(sreg->register_info.eco_mode_mask) - 1));
+		rdev->desc->enable_reg,
+		sreg->eco_mode_mask,
+		eco_mode << (ffs(sreg->eco_mode_mask) - 1));
 	return 0;
 }
 
-static unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *dev,
+static unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *rdev,
 						    int input_uV, int output_uV,
 						    int load_uA)
 {
-	struct hisi_regulator *sreg = rdev_get_drvdata(dev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 
 	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
 		return REGULATOR_MODE_NORMAL;
@@ -228,42 +218,43 @@ static unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *dev,
 		return REGULATOR_MODE_IDLE;
 }
 
-static int hisi_dt_parse_common(struct hisi_regulator *sreg,
-				struct platform_device *pdev)
+static int hisi_dt_parse(struct platform_device *pdev,
+			 struct hi6421v600_regulator *sreg,
+			 struct regulator_desc *rdesc)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct regulator_desc *rdesc = &sreg->rdesc;
 	unsigned int register_info[3] = {0};
-	int ret = 0;
+	unsigned int *v_table;
+	int ret;
 
-	/* parse .register_info.ctrl_reg */
+	/* parse .register_info.enable_reg */
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-ctrl",
 					 register_info, 3);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-ctrl property set\n");
-		goto dt_parse_common_end;
+		return ret;
 	}
-	sreg->register_info.ctrl_reg = register_info[0];
-	sreg->register_info.enable_mask = register_info[1];
-	sreg->register_info.eco_mode_mask = register_info[2];
+	rdesc->enable_reg = register_info[0];
+	rdesc->enable_mask = register_info[1];
+	sreg->eco_mode_mask = register_info[2];
 
-	/* parse .register_info.vset_reg */
+	/* parse .register_info.vsel_reg */
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-vset",
 					 register_info, 2);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-vset property set\n");
-		goto dt_parse_common_end;
+		return ret;
 	}
-	sreg->register_info.vset_reg = register_info[0];
-	sreg->register_info.vset_mask = register_info[1];
+	rdesc->vsel_reg = register_info[0];
+	rdesc->vsel_mask = register_info[1];
 
 	/* parse .off-on-delay */
 	ret = of_property_read_u32(np, "hisilicon,hisi-off-on-delay-us",
-				   &sreg->off_on_delay);
+				   &rdesc->off_on_delay);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-off-on-delay-us property set\n");
-		goto dt_parse_common_end;
+		return ret;
 	}
 
 	/* parse .enable_time */
@@ -271,7 +262,7 @@ static int hisi_dt_parse_common(struct hisi_regulator *sreg,
 				   &rdesc->enable_time);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-enable-time-us property set\n");
-		goto dt_parse_common_end;
+		return ret;
 	}
 
 	/* parse .eco_uA */
@@ -282,56 +273,24 @@ static int hisi_dt_parse_common(struct hisi_regulator *sreg,
 		ret = 0;
 	}
 
-dt_parse_common_end:
-	return ret;
-}
+	/* parse volt_table */
 
-static int hisi_dt_parse_ldo(struct hisi_regulator *sreg,
-			     struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	struct regulator_desc *rdesc = &sreg->rdesc;
-	unsigned int *v_table;
-	int ret = 0;
+	rdesc->n_voltages = of_property_count_u32_elems(np, "hisilicon,hisi-vset-table");
 
-	/* parse .n_voltages, and .volt_table */
-	ret = of_property_read_u32(np, "hisilicon,hisi-n-voltages",
-				   &rdesc->n_voltages);
-	if (ret) {
-		dev_err(dev, "no hisilicon,hisi-n-voltages property set\n");
-		goto dt_parse_ldo_end;
-	}
-
-	/* alloc space for .volt_table */
 	v_table = devm_kzalloc(dev, sizeof(unsigned int) * rdesc->n_voltages,
 			       GFP_KERNEL);
-	if (unlikely(!v_table)) {
-		ret = -ENOMEM;
-		dev_err(dev, "no memory for .volt_table\n");
-		goto dt_parse_ldo_end;
-	}
+	if (unlikely(!v_table))
+		return  -ENOMEM;
+	rdesc->volt_table = v_table;
 
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-vset-table",
 					 v_table, rdesc->n_voltages);
 	if (ret) {
 		dev_err(dev, "no hisilicon,hisi-vset-table property set\n");
-		goto dt_parse_ldo_end1;
+		return ret;
 	}
-	rdesc->volt_table = v_table;
 
-	/* parse hisi regulator's dt common part */
-	ret = hisi_dt_parse_common(sreg, pdev);
-	if (ret) {
-		dev_err(dev, "failure in hisi_dt_parse_common\n");
-		goto dt_parse_ldo_end1;
-	}
-
-	return ret;
-
-dt_parse_ldo_end1:
-dt_parse_ldo_end:
-	return ret;
+	return 0;
 }
 
 static struct regulator_ops hisi_ldo_rops = {
@@ -364,7 +323,7 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 	struct device *dev = &pdev->dev;
 	struct regulator_desc *rdesc;
 	struct regulator_dev *rdev;
-	struct hisi_regulator *sreg = NULL;
+	struct hi6421v600_regulator *sreg = NULL;
 	struct regulator_init_data *initdata;
 	struct regulator_config config = { };
 	struct regulation_constraints *constraint;
@@ -401,11 +360,10 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 	if (!sreg)
 		return -ENOMEM;
 
-	sreg->name = initdata->constraints.name;
 	sreg->pmic = pmic;
 	rdesc = &sreg->rdesc;
 
-	rdesc->name = sreg->name;
+	rdesc->name = initdata->constraints.name;
 	rdesc->ops = &hisi_ldo_rops;
 	rdesc->type = REGULATOR_VOLTAGE;
 	rdesc->min_uV = initdata->constraints.min_uV;
@@ -415,7 +373,7 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 		initdata->supply_regulator = supplyname;
 
 	/* parse device tree data for regulator specific */
-	ret = hisi_dt_parse_ldo(sreg, pdev);
+	ret = hisi_dt_parse(pdev, sreg, rdesc);
 	if (ret) {
 		dev_err(dev, "device tree parameter parse error!\n");
 		goto hisi_probe_end;
@@ -501,13 +459,13 @@ static int hisi_regulator_probe(struct platform_device *pdev)
 static int hisi_regulator_remove(struct platform_device *pdev)
 {
 	struct regulator_dev *rdev = dev_get_drvdata(&pdev->dev);
-	struct hisi_regulator *sreg = rdev_get_drvdata(rdev);
+	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 
 	regulator_unregister(rdev);
 
 	/* TODO: should i worry about that? devm_kzalloc */
-	if (sreg->rdesc.volt_table)
-		devm_kfree(&pdev->dev, (unsigned int *)sreg->rdesc.volt_table);
+	if (rdev->desc->volt_table)
+		devm_kfree(&pdev->dev, (unsigned int *)rdev->desc->volt_table);
 
 	kfree(sreg);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
