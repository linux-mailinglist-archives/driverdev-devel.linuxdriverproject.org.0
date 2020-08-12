Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ECE242C87
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A05A88272;
	Wed, 12 Aug 2020 15:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SiJUG-XXFSdQ; Wed, 12 Aug 2020 15:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 392F18825E;
	Wed, 12 Aug 2020 15:57:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 810211BF9B9
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7E52687CCB
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fV8qVeHKougB for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 62FBE87B05
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D64022EBD;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247821;
 bh=fLI5W5fuj4I3WvedbK4hxsAEsLhRR3pILDLH1yVdBao=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eQELB+d3a2PBrwAvMygMGEcmQ5vFPfBHjZFW9LJYCqOF4KrBOeLU+0sakQqkYiFeT
 JXqh3DYLJRKrt+5i9U4bmAvbv8nOnUrRDioZVaNaIBRIps/cAoMOifEyah/hQQ+JlT
 jGwvP4xisBuxcBU5AJbSQfczvATKWWIuGByEjFRw=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7b-005t7D-5Y; Wed, 12 Aug 2020 17:56:59 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 35/44] staging: regulator: hi6421v600-regulator: add a
 driver-specific debug macro
Date: Wed, 12 Aug 2020 17:56:45 +0200
Message-Id: <7cb10b3910e9fa3e52d36e4e416030175cc761ab.1597247164.git.mchehab+huawei@kernel.org>
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
