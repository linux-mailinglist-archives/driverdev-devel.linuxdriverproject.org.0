Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3E1242CA7
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 00C742000D;
	Wed, 12 Aug 2020 15:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kSiwLNYUXZ+8; Wed, 12 Aug 2020 15:58:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F16623424;
	Wed, 12 Aug 2020 15:57:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E5E01BF9B5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BB3387CCB
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDxqJUH+7qdd for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8B877882FC
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A93523105;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247821;
 bh=7E5ppFauk/pcJwqzL6iFg+zOH5/hrnb16rE6Hs92m2c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YYQt1yGHmpZilccEBw2AzGEwSFBKmjnK5H3NI8pxQT0ArgBBQ55T/XkQm8ID/vRQC
 M5xomb28I2noJ9KnlenoCVuJTYP1iqeHMaeuKOPAh0ng1DICJ3YXDNGJjePwVscoer
 pukhGq45EodUAmVaEOGYKJ+IC2ZGMPGKCYYul7C4=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7b-005t7R-Cc; Wed, 12 Aug 2020 17:56:59 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 40/44] staging: regulator: hi6421v600-regulator: code cleanup
Date: Wed, 12 Aug 2020 17:56:50 +0200
Message-Id: <5126904942bedf04ddf3c7fb675226e235109b85.1597247164.git.mchehab+huawei@kernel.org>
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
 linux-kernel@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
 mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Do some code cleanup in order to make it cleaner for moving
it out of staging in the future.

Suggested-by: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 74 ++++++++-----------
 1 file changed, 30 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index c80dfac1e4c3..29ef6bcadd84 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -15,29 +15,28 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
 
-#include <linux/slab.h>
+#include <linux/delay.h>
 #include <linux/device.h>
-#include <linux/module.h>
 #include <linux/err.h>
 #include <linux/io.h>
-#include <linux/platform_device.h>
-#include <linux/of.h>
-#include <linux/of_device.h>
+#include <linux/mfd/hi6421-spmi-pmic.h>
+#include <linux/module.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/regulator/driver.h>
 #include <linux/regulator/machine.h>
 #include <linux/regulator/of_regulator.h>
-#include <linux/mfd/hi6421-spmi-pmic.h>
-#include <linux/delay.h>
-#include <linux/time.h>
-#include <linux/version.h>
 #include <linux/seq_file.h>
-#include <linux/uaccess.h>
+#include <linux/slab.h>
 #include <linux/spmi.h>
+#include <linux/time.h>
+#include <linux/uaccess.h>
+#include <linux/version.h>
 
 #define rdev_dbg(rdev, fmt, arg...)	\
 		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)
@@ -50,15 +49,16 @@ struct hi6421v600_regulator {
 
 static DEFINE_MUTEX(enable_mutex);
 
-/* helper function to ensure when it returns it is at least 'delay_us'
+/*
+ * helper function to ensure when it returns it is at least 'delay_us'
  * microseconds after 'since'.
  */
 
 static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
 {
-	u32 reg_val;
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	u32 reg_val;
 
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
 
@@ -136,7 +136,6 @@ static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 
-	/* unlikely to happen. sanity test done by regulator core */
 	if (unlikely(selector >= rdev->desc->n_voltages))
 		return -EINVAL;
 
@@ -158,8 +157,8 @@ static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val;
 	unsigned int mode;
+	u32 reg_val;
 
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
 
@@ -211,13 +210,10 @@ hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 
-	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA)) {
-		rdev_dbg(rdev, "normal mode");
+	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
 		return REGULATOR_MODE_NORMAL;
-	} else {
-		rdev_dbg(rdev, "idle mode");
-		return REGULATOR_MODE_IDLE;
-	}
+
+	return REGULATOR_MODE_IDLE;
 }
 
 static int hi6421_spmi_dt_parse(struct platform_device *pdev,
@@ -256,8 +252,7 @@ static int hi6421_spmi_dt_parse(struct platform_device *pdev,
 		sreg->eco_mode_mask = 0;
 		sreg->eco_uA = 0;
 	} else {
-		ret = of_property_read_u32(np, "eco-microamp",
-					   &sreg->eco_uA);
+		ret = of_property_read_u32(np, "eco-microamp", &sreg->eco_uA);
 		if (ret) {
 			dev_err(dev, "missing eco-microamp property\n");
 			return ret;
@@ -327,23 +322,19 @@ static struct regulator_ops hi6421_spmi_ldo_rops = {
 	.get_optimum_mode = hi6421_spmi_regulator_get_optimum_mode,
 };
 
-/*
- * Used only for parsing the DT properties
- */
-
 static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
 					   struct device_node *np,
 					   struct hi6421_spmi_pmic *pmic)
 {
-	struct device *dev = &pdev->dev;
-	struct regulator_desc *rdesc;
-	struct regulator_dev *rdev;
-	struct hi6421v600_regulator *sreg = NULL;
+	struct regulation_constraints *constraint;
 	struct regulator_init_data *initdata;
 	struct regulator_config config = { };
-	struct regulation_constraints *constraint;
-	const char *supplyname = NULL;
-	int ret = 0;
+	struct hi6421v600_regulator *sreg;
+	struct device *dev = &pdev->dev;
+	struct regulator_desc *rdesc;
+	struct regulator_dev *rdev;
+	const char *supplyname;
+	int ret;
 
 	initdata = of_get_regulator_init_data(dev, np, NULL);
 	if (!initdata) {
@@ -351,7 +342,7 @@ static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
 		return -EINVAL;
 	}
 
-	sreg = kzalloc(sizeof(*sreg), GFP_KERNEL);
+	sreg = devm_kzalloc(dev, sizeof(*sreg), GFP_KERNEL);
 	if (!sreg)
 		return -ENOMEM;
 
@@ -370,7 +361,7 @@ static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
 	/* parse device tree data for regulator specific */
 	ret = hi6421_spmi_dt_parse(pdev, sreg, rdesc);
 	if (ret)
-		goto probe_end;
+		return ret;
 
 	/* hisi regulator supports two modes */
 	constraint = &initdata->constraints;
@@ -391,18 +382,15 @@ static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
 	if (IS_ERR(rdev)) {
 		dev_err(dev, "failed to register %s\n",
 			rdesc->name);
-		ret = PTR_ERR(rdev);
-		goto probe_end;
+		return PTR_ERR(rdev);
 	}
 
 	rdev_dbg(rdev, "valid_modes_mask: 0x%x, valid_ops_mask: 0x%x\n",
 		 constraint->valid_modes_mask, constraint->valid_ops_mask);
 
 	dev_set_drvdata(dev, rdev);
-probe_end:
-	if (ret)
-		kfree(sreg);
-	return ret;
+
+	return 0;
 }
 
 static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
@@ -414,7 +402,6 @@ static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 	struct hi6421_spmi_pmic *pmic;
 	int ret;
 
-	dev_dbg(&pdev->dev, "probing hi6421v600 regulator\n");
 	/*
 	 * This driver is meant to be called by hi6421-spmi-core,
 	 * which should first set drvdata. If this doesn't happen, hit
@@ -463,7 +450,6 @@ static int hi6421_spmi_regulator_remove(struct platform_device *pdev)
 
 	regulator_unregister(rdev);
 
-	/* TODO: should i worry about that? devm_kzalloc */
 	if (rdev->desc->volt_table)
 		devm_kfree(&pdev->dev, (unsigned int *)rdev->desc->volt_table);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
