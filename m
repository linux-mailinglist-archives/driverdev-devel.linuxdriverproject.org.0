Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EA7245D97
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5013C2155B;
	Mon, 17 Aug 2020 07:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KWxGSQgBHltg; Mon, 17 Aug 2020 07:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4DC6A21515;
	Mon, 17 Aug 2020 07:11:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B430F1BF968
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4533B86722
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0MfCuniMAnXr for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80275866E5
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E49822D3E;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648278;
 bh=fLI5W5fuj4I3WvedbK4hxsAEsLhRR3pILDLH1yVdBao=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Fp1ei3zq8znfBHEzWX5BDjO41RwBKPFQ6YcBqrX0KFZsVjIf/zZWQXDmdJM5KJGmW
 GRoJYZ29lxcCVxb6Y2GzYYxMgGc9i7iQMPcR5G4o0nsecAkfqtVw3dwJ/vQi+o7qiM
 Yf2BipJKOr+MEB6qJ4JzTRuzPU+47ugV1XljYBnI=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIa-00Bdks-EA; Mon, 17 Aug 2020 09:11:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 35/44] staging: regulator: hi6421v600-regulator: add a
 driver-specific debug macro
Date: Mon, 17 Aug 2020 09:10:54 +0200
Message-Id: <1690b8531b23910aa915bd2725410b926022c481.1597647359.git.mchehab+huawei@kernel.org>
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

Using dev_dbg() is not too nice, as, instead of printing the
name of the regulator, it prints "regulator.<number>", making
harder to associate what is happening with each ldo line.

So, add a debug-specific macro, which will print the rdev's
name, just like the regulator core.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 61 ++++++++++---------
 1 file changed, 32 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 31b8ff19fd31..5ddaf7f8cacc 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -39,6 +39,9 @@
 #include <linux/uaccess.h>
 #include <linux/spmi.h>
 
+#define rdev_dbg(rdev, fmt, arg...)	\
+		 pr_debug("%s: %s: " fmt, rdev->desc->name, __func__, ##arg)
+
 struct hi6421v600_regulator {
 	struct regulator_desc rdesc;
 	struct hi6421_spmi_pmic *pmic;
@@ -60,10 +63,10 @@ static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
 
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
 
-	dev_dbg(&rdev->dev,
-		"%s: enable_reg=0x%x, val= 0x%x, enable_state=%d\n",
-		 __func__, rdev->desc->enable_reg,
-		reg_val, (reg_val & rdev->desc->enable_mask));
+	rdev_dbg(rdev,
+		 "enable_reg=0x%x, val= 0x%x, enable_state=%d\n",
+		 rdev->desc->enable_reg,
+		 reg_val, (reg_val & rdev->desc->enable_mask));
 
 	return ((reg_val & rdev->desc->enable_mask) != 0);
 }
@@ -73,21 +76,20 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
-	dev_dbg(&rdev->dev, "%s: off_on_delay=%d us\n",
-		__func__, rdev->desc->off_on_delay);
-
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&enable_mutex);
 	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
 		     HISI_REGS_ENA_PROTECT_TIME + 1000);
 
 	/* set enable register */
+	rdev_dbg(rdev,
+		 "off_on_delay=%d us, enable_reg=0x%x, enable_mask=0x%x\n",
+		 rdev->desc->off_on_delay, rdev->desc->enable_reg,
+		 rdev->desc->enable_mask);
+
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 			     rdev->desc->enable_mask,
 			     rdev->desc->enable_mask);
-	dev_dbg(&rdev->dev, "%s: enable_reg=0x%x, enable_mask=0x%x\n",
-		 __func__, rdev->desc->enable_reg,
-		 rdev->desc->enable_mask);
 
 	mutex_unlock(&enable_mutex);
 
@@ -100,6 +102,9 @@ static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
 	/* set enable register to 0 */
+	rdev_dbg(rdev, "enable_reg=0x%x, enable_mask=0x%x\n",
+		 rdev->desc->enable_reg, rdev->desc->enable_mask);
+
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 		      rdev->desc->enable_mask, 0);
 
@@ -117,9 +122,9 @@ static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
 
 	selector = (reg_val & rdev->desc->vsel_mask) >>	(ffs(rdev->desc->vsel_mask) - 1);
 
-	dev_dbg(&rdev->dev,
-		"%s: vsel_reg=0x%x, value=0x%x, entry=0x%x, voltage=%d mV\n",
-		 __func__, rdev->desc->vsel_reg, reg_val, selector,
+	rdev_dbg(rdev,
+		"vsel_reg=0x%x, value=0x%x, entry=0x%x, voltage=%d mV\n",
+		 rdev->desc->vsel_reg, reg_val, selector,
 		rdev->desc->ops->list_voltage(rdev, selector) / 1000);
 
 	return selector;
@@ -139,15 +144,14 @@ static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
 	reg_val = selector << (ffs(rdev->desc->vsel_mask) - 1);
 
 	/* set voltage selector */
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
-			     rdev->desc->vsel_mask, reg_val);
-
-	dev_dbg(&rdev->dev,
-		"%s: vsel_reg=0x%x, mask=0x%x, value=0x%x, voltage=%d mV\n",
-		 __func__,
+	rdev_dbg(rdev,
+		"vsel_reg=0x%x, mask=0x%x, value=0x%x, voltage=%d mV\n",
 		 rdev->desc->vsel_reg, rdev->desc->vsel_mask, reg_val,
 		 rdev->desc->ops->list_voltage(rdev, selector) / 1000);
 
+	hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
+			     rdev->desc->vsel_mask, reg_val);
+
 	return 0;
 }
 
@@ -165,9 +169,9 @@ static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 	else
 		mode = REGULATOR_MODE_NORMAL;
 
-	dev_dbg(&rdev->dev,
-		"%s: enable_reg=0x%x, eco_mode_mask=0x%x, reg_val=0x%x, %s mode\n",
-		 __func__, rdev->desc->enable_reg, sreg->eco_mode_mask, reg_val,
+	rdev_dbg(rdev,
+		"enable_reg=0x%x, eco_mode_mask=0x%x, reg_val=0x%x, %s mode\n",
+		 rdev->desc->enable_reg, sreg->eco_mode_mask, reg_val,
 		 mode == REGULATOR_MODE_IDLE ? "idle" : "normal");
 
 	return mode;
@@ -192,13 +196,12 @@ static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
 	}
 
 	/* set mode */
+	rdev_dbg(rdev, "enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x\n",
+		 rdev->desc->enable_reg, sreg->eco_mode_mask, val);
+
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 			     sreg->eco_mode_mask, val);
 
-	dev_dbg(&rdev->dev,
-		"%s: enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x\n",
-		 __func__, rdev->desc->enable_reg, sreg->eco_mode_mask, val);
-
 	return 0;
 }
 
@@ -209,10 +212,10 @@ static unsigned int hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 
 	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA)) {
-		dev_dbg(&rdev->dev, "%s: normal mode", __func__);
+		rdev_dbg(rdev, "normal mode");
 		return REGULATOR_MODE_NORMAL;
 	} else {
-		dev_dbg(&rdev->dev, "%s: idle mode", __func__);
+		rdev_dbg(rdev, "idle mode");
 		return REGULATOR_MODE_IDLE;
 	}
 }
@@ -373,7 +376,7 @@ static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
 		goto probe_end;
 	}
 
-	dev_dbg(dev, "valid_modes_mask: 0x%x, valid_ops_mask: 0x%x\n",
+	rdev_dbg(rdev, "valid_modes_mask: 0x%x, valid_ops_mask: 0x%x\n",
 		 constraint->valid_modes_mask, constraint->valid_ops_mask);
 
 	dev_set_drvdata(dev, rdev);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
