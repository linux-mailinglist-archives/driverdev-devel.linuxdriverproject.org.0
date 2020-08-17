Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11354245D79
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB03C88184;
	Mon, 17 Aug 2020 07:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4iujtf1tK9JJ; Mon, 17 Aug 2020 07:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 993638807A;
	Mon, 17 Aug 2020 07:11:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 580DD1BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 53D7587D13
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJ-k8y32qIx4 for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48B6F87CB9
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 086E722D06;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648278;
 bh=bGzkmzgI05bp9ifcfNkg5wxDXnHnHyvaIvD0PUvBTCQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ept8wXDWERyUwhjY4MqkUXVi4Cj0k/VJuEQtZ1tQrabVNZFRl9ontV1AtFge+JifA
 Idq4Bm+03HhGqWL2yz853b9f3cahznIV4fcvl6DxTaUjuNUgvxjSAev4FDb8P3yJXm
 NcMJsA7dBYNbt967oeWvwleng6VkyFuX8OhXn3sM=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIa-00Bdkb-5h; Mon, 17 Aug 2020 09:11:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 29/44] staging: regulator: hi6421v600-regulator: cleanup
 debug messages
Date: Mon, 17 Aug 2020 09:10:48 +0200
Message-Id: <2d17e168031340da73e1bd1c826289ceba2dbe8f.1597647359.git.mchehab+huawei@kernel.org>
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

- use dev_foo() instead of pr_foo();
- cleanup the messages, making them more standard and easier
  to understand.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 76 ++++++++++++-------
 1 file changed, 47 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 7d82d11f4b52..2d1096ecb277 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -59,9 +59,11 @@ static int hisi_regulator_is_enabled(struct regulator_dev *rdev)
 	struct hisi_pmic *pmic = sreg->pmic;
 
 	reg_val = hisi_pmic_read(pmic, rdev->desc->enable_reg);
-	pr_debug("<[%s]: enable_reg=0x%x,enable_state=%d>\n",
+
+	dev_dbg(&rdev->dev,
+		"%s: enable_reg=0x%x, val= 0x%x, enable_state=%d\n",
 		 __func__, rdev->desc->enable_reg,
-		(reg_val & rdev->desc->enable_mask));
+		reg_val, (reg_val & rdev->desc->enable_mask));
 
 	return ((reg_val & rdev->desc->enable_mask) != 0);
 }
@@ -74,7 +76,8 @@ static int hisi_regulator_enable(struct regulator_dev *rdev)
 	/* keep a distance of off_on_delay from last time disabled */
 	usleep_range(rdev->desc->off_on_delay, rdev->desc->off_on_delay + 1000);
 
-	pr_debug("<[%s]: off_on_delay=%dus>\n", __func__, rdev->desc->off_on_delay);
+	dev_dbg(&rdev->dev, "%s: off_on_delay=%d us\n",
+		__func__, rdev->desc->off_on_delay);
 
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&enable_mutex);
@@ -85,7 +88,7 @@ static int hisi_regulator_enable(struct regulator_dev *rdev)
 	hisi_pmic_rmw(pmic, rdev->desc->enable_reg,
 		      rdev->desc->enable_mask,
 				rdev->desc->enable_mask);
-	pr_debug("<[%s]: enable_reg=0x%x,enable_mask=0x%x>\n",
+	dev_dbg(&rdev->dev, "%s: enable_reg=0x%x, enable_mask=0x%x\n",
 		 __func__, rdev->desc->enable_reg,
 		 rdev->desc->enable_mask);
 
@@ -111,16 +114,20 @@ static int hisi_regulator_get_voltage(struct regulator_dev *rdev)
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 	u32 reg_val, selector;
+	int vol;
 
 	/* get voltage selector */
 	reg_val = hisi_pmic_read(pmic, rdev->desc->vsel_reg);
-	pr_debug("<[%s]: vsel_reg=0x%x>\n",
-		 __func__, rdev->desc->vsel_reg);
-
 	selector = (reg_val & rdev->desc->vsel_mask) >>
 				(ffs(rdev->desc->vsel_mask) - 1);
 
-	return rdev->desc->ops->list_voltage(rdev, selector);
+	vol = rdev->desc->ops->list_voltage(rdev, selector);
+
+	dev_dbg(&rdev->dev,
+		"%s: vsel_reg=0x%x, val=0x%x, entry=0x%x, voltage=%d mV\n",
+		 __func__, rdev->desc->vsel_reg, reg_val, selector, vol/ 1000);
+
+	return vol;
 }
 
 static int hisi_regulator_set_voltage(struct regulator_dev *rdev,
@@ -129,10 +136,14 @@ static int hisi_regulator_set_voltage(struct regulator_dev *rdev,
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 	u32 vsel;
-	int ret = 0;
+	int uV, ret = 0;
 
 	for (vsel = 0; vsel < rdev->desc->n_voltages; vsel++) {
-		int uV = rdev->desc->volt_table[vsel];
+		uV = rdev->desc->volt_table[vsel];
+		dev_dbg(&rdev->dev,
+			"%s: min %d, max %d, value[%u] = %d\n",
+			__func__, min_uV, max_uV, vsel, uV);
+
 		/* Break at the first in-range value */
 		if (min_uV <= uV && uV <= max_uV)
 			break;
@@ -146,13 +157,14 @@ static int hisi_regulator_set_voltage(struct regulator_dev *rdev,
 	/* set voltage selector */
 	hisi_pmic_rmw(pmic, rdev->desc->vsel_reg,
 		      rdev->desc->vsel_mask,
-		vsel << (ffs(rdev->desc->vsel_mask) - 1));
+		      vsel << (ffs(rdev->desc->vsel_mask) - 1));
 
-	pr_debug("<[%s]: vsel_reg=0x%x, vsel_mask=0x%x, value=0x%x>\n",
+	dev_dbg(&rdev->dev,
+		"%s: vsel_reg=0x%x, vsel_mask=0x%x, value=0x%x, voltage=%d mV\n",
 		 __func__,
 		 rdev->desc->vsel_reg,
 		 rdev->desc->vsel_mask,
-		 vsel << (ffs(rdev->desc->vsel_mask) - 1));
+		 vsel << (ffs(rdev->desc->vsel_mask) - 1), uV / 1000);
 
 	return ret;
 }
@@ -162,17 +174,21 @@ static unsigned int hisi_regulator_get_mode(struct regulator_dev *rdev)
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hisi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
+	unsigned int mode;
 
 	reg_val = hisi_pmic_read(pmic, rdev->desc->enable_reg);
-	pr_debug("<[%s]: reg_val=%d, enable_reg=0x%x, eco_mode_mask=0x%x>\n",
-		 __func__, reg_val,
-		rdev->desc->enable_reg,
-		sreg->eco_mode_mask);
 
 	if (reg_val & sreg->eco_mode_mask)
-		return REGULATOR_MODE_IDLE;
+		mode = REGULATOR_MODE_IDLE;
 	else
-		return REGULATOR_MODE_NORMAL;
+		mode = REGULATOR_MODE_NORMAL;
+
+	dev_dbg(&rdev->dev,
+		"%s: enable_reg=0x%x, eco_mode_mask=0x%x, reg_val=0x%x, %s mode\n",
+		 __func__, rdev->desc->enable_reg, sreg->eco_mode_mask, reg_val,
+		 mode == REGULATOR_MODE_IDLE ? "idle" : "normal");
+
+	return mode;
 }
 
 static int hisi_regulator_set_mode(struct regulator_dev *rdev,
@@ -198,7 +214,8 @@ static int hisi_regulator_set_mode(struct regulator_dev *rdev,
 		      sreg->eco_mode_mask,
 		eco_mode << (ffs(sreg->eco_mode_mask) - 1));
 
-	pr_debug("<[%s]: enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x>\n",
+	dev_dbg(&rdev->dev,
+		"%s: enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x\n",
 		 __func__,
 		rdev->desc->enable_reg,
 		sreg->eco_mode_mask,
@@ -212,10 +229,13 @@ static unsigned int hisi_regulator_get_optimum_mode(struct regulator_dev *rdev,
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 
-	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
+	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA)) {
+		dev_dbg(&rdev->dev, "%s: normal mode", __func__);
 		return REGULATOR_MODE_NORMAL;
-	else
+	} else {
+		dev_dbg(&rdev->dev, "%s: idle mode", __func__);
 		return REGULATOR_MODE_IDLE;
+	}
 }
 
 static int hisi_dt_parse(struct platform_device *pdev,
@@ -333,7 +353,7 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 
 	initdata = of_get_regulator_init_data(dev, np, NULL);
 	if (!initdata) {
-		pr_err("get regulator init data error !\n");
+		dev_err(dev, "failed to get regulator data\n");
 		return -EINVAL;
 	}
 
@@ -343,14 +363,14 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 	ret = of_property_read_u32_array(np, "hisilicon,valid-modes-mask",
 					 &constraint->valid_modes_mask, 1);
 	if (ret) {
-		pr_err("no hisilicon,valid-modes-mask property set\n");
+		dev_err(dev, "no valid modes mask\n");
 		ret = -ENODEV;
 		return ret;
 	}
 	ret = of_property_read_u32_array(np, "hisilicon,valid-idle-mask",
 					 &temp_modes, 1);
 	if (ret) {
-		pr_err("no hisilicon,valid-modes-mask property set\n");
+		dev_err(dev, "no valid idle mask\n");
 		ret = -ENODEV;
 		return ret;
 	}
@@ -374,10 +394,8 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 
 	/* parse device tree data for regulator specific */
 	ret = hisi_dt_parse(pdev, sreg, rdesc);
-	if (ret) {
-		dev_err(dev, "device tree parameter parse error!\n");
+	if (ret)
 		goto hisi_probe_end;
-	}
 
 	config.dev = &pdev->dev;
 	config.init_data = initdata;
@@ -393,7 +411,7 @@ static int hisi_regulator_probe_ldo(struct platform_device *pdev,
 		goto hisi_probe_end;
 	}
 
-	pr_debug("[%s]:valid_modes_mask[0x%x], valid_ops_mask[0x%x]\n",
+	dev_dbg(dev, "%s:valid_modes_mask: 0x%x, valid_ops_mask: 0x%x\n",
 		 rdesc->name,
 		 constraint->valid_modes_mask, constraint->valid_ops_mask);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
