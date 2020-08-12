Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DFE242C8F
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EE737232F2;
	Wed, 12 Aug 2020 15:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cxQk5JLPOaXd; Wed, 12 Aug 2020 15:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 80ADD233A6;
	Wed, 12 Aug 2020 15:57:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F7421BF2F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C7B987CCB
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O+jmvHrepbU8 for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7FD8B87E80
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2956323102;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247821;
 bh=LlkIH0oWEJxTuayVV7j0/zZciq+D6+8D+x+9rzX0KEo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DZDL/pIWryhiDHhiYESf1TelqAQDPnZrxliRtzbRXG4onqmbPq0PpC0HVjSQYL8g0
 q97Uk+QRYJAXtwidFeEbhxrD2giaStZ8TZDAWNkSVONeC0hvIilsmnrWdLAPAgXMJi
 e00ifrir9+QNvLdShrY+QfhTr4mcSXz29Pe22J+g=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7b-005t7L-9U; Wed, 12 Aug 2020 17:56:59 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 38/44] staging: regulator: hi6421v600-regulator: fix some
 coding style issues
Date: Wed, 12 Aug 2020 17:56:48 +0200
Message-Id: <785cb5fe6033e641ac12cebe25aa5983aed204f7.1597247164.git.mchehab+huawei@kernel.org>
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

Fix the remaining issues complained by checkpatch.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 72f51594b5ff..c80dfac1e4c3 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -40,7 +40,7 @@
 #include <linux/spmi.h>
 
 #define rdev_dbg(rdev, fmt, arg...)	\
-		 pr_debug("%s: %s: " fmt, rdev->desc->name, __func__, ##arg)
+		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)
 
 struct hi6421v600_regulator {
 	struct regulator_desc rdesc;
@@ -105,7 +105,7 @@ static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 		 rdev->desc->enable_reg, rdev->desc->enable_mask);
 
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-		      rdev->desc->enable_mask, 0);
+			     rdev->desc->enable_mask, 0);
 
 	return 0;
 }
@@ -122,7 +122,7 @@ static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
 	selector = (reg_val & rdev->desc->vsel_mask) >>	(ffs(rdev->desc->vsel_mask) - 1);
 
 	rdev_dbg(rdev,
-		"vsel_reg=0x%x, value=0x%x, entry=0x%x, voltage=%d mV\n",
+		 "vsel_reg=0x%x, value=0x%x, entry=0x%x, voltage=%d mV\n",
 		 rdev->desc->vsel_reg, reg_val, selector,
 		rdev->desc->ops->list_voltage(rdev, selector) / 1000);
 
@@ -144,7 +144,7 @@ static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
 
 	/* set voltage selector */
 	rdev_dbg(rdev,
-		"vsel_reg=0x%x, mask=0x%x, value=0x%x, voltage=%d mV\n",
+		 "vsel_reg=0x%x, mask=0x%x, value=0x%x, voltage=%d mV\n",
 		 rdev->desc->vsel_reg, rdev->desc->vsel_mask, reg_val,
 		 rdev->desc->ops->list_voltage(rdev, selector) / 1000);
 
@@ -169,7 +169,7 @@ static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 		mode = REGULATOR_MODE_NORMAL;
 
 	rdev_dbg(rdev,
-		"enable_reg=0x%x, eco_mode_mask=0x%x, reg_val=0x%x, %s mode\n",
+		 "enable_reg=0x%x, eco_mode_mask=0x%x, reg_val=0x%x, %s mode\n",
 		 rdev->desc->enable_reg, sreg->eco_mode_mask, reg_val,
 		 mode == REGULATOR_MODE_IDLE ? "idle" : "normal");
 
@@ -177,7 +177,7 @@ static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 }
 
 static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
-				   unsigned int mode)
+					  unsigned int mode)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
@@ -204,9 +204,10 @@ static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
 	return 0;
 }
 
-static unsigned int hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
-						    int input_uV, int output_uV,
-						    int load_uA)
+static unsigned int
+hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
+				       int input_uV, int output_uV,
+				       int load_uA)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 
@@ -220,7 +221,7 @@ static unsigned int hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev
 }
 
 static int hi6421_spmi_dt_parse(struct platform_device *pdev,
-			 struct hi6421v600_regulator *sreg,
+				struct hi6421v600_regulator *sreg,
 			 struct regulator_desc *rdesc)
 {
 	struct device *dev = &pdev->dev;
@@ -256,7 +257,7 @@ static int hi6421_spmi_dt_parse(struct platform_device *pdev,
 		sreg->eco_uA = 0;
 	} else {
 		ret = of_property_read_u32(np, "eco-microamp",
-					&sreg->eco_uA);
+					   &sreg->eco_uA);
 		if (ret) {
 			dev_err(dev, "missing eco-microamp property\n");
 			return ret;
@@ -331,8 +332,8 @@ static struct regulator_ops hi6421_spmi_ldo_rops = {
  */
 
 static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
-				    struct device_node *np,
-				    struct hi6421_spmi_pmic *pmic)
+					   struct device_node *np,
+					   struct hi6421_spmi_pmic *pmic)
 {
 	struct device *dev = &pdev->dev;
 	struct regulator_desc *rdesc;
@@ -404,7 +405,6 @@ static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
 	return ret;
 }
 
-
 static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 {
 	struct device *pmic_dev = pdev->dev.parent;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
