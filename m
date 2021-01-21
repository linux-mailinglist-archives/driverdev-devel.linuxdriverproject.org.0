Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 863E22FE3AE
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 08:18:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 32A8A20763;
	Thu, 21 Jan 2021 07:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7UuCC3fkFmZ; Thu, 21 Jan 2021 07:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9E6842078C;
	Thu, 21 Jan 2021 07:18:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E1761BF873
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73E95871B4
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bxGZWWPbJ7OH for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 07:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A1CCE871AF
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 07:18:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD62C239A1;
 Thu, 21 Jan 2021 07:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611213513;
 bh=U4kdN16C/IeL/ZSKFf0juQ1NKvCmwim4VbjgDzr2xqo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m4TwYXGqJjBSQL7UkHZncAWa2jPXWE4NdSD81bwDSMuO6+/tshPQ4wQ+pOnRSxJ7Q
 lPvjeU6DIPRq/oD8FlBdpatJR3NtLMOg7DjCbqvZfCjMoSbKgJ9Lhl2x47tpPPo/9u
 v2nJXmBufD+oO1iTenWRUdnVDAZ9DSlKyeHkYQfsHqb9yHSwjVEtQfyo2XO0jLauZz
 NnHpEt6kb6TVLdzt0q1PFzlT0zk6T42hfvED7xWBXEWfObERHFfX9fdLcjmGU7TKOW
 SQvXbqcjkEciJviAU2z42usyUDP971OXIczp9D2pRw8aCWmDTTt85byFb/M52ODNjK
 3pTv0SketWEyw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l2UEb-004BsA-Gt; Thu, 21 Jan 2021 08:18:25 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v5 08/21] staging: hikey9xx: hi6421v600-regulator: do some
 cleanups
Date: Thu, 21 Jan 2021 08:18:10 +0100
Message-Id: <0bae0c05d997e4a5a0b3b86a65f3370dafb14596.1611212783.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611212783.git.mchehab+huawei@kernel.org>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
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

In preparation for de-staging, do some cleanups:

- Return error codes from hi6421_spmi_pmic_rmw();
- Remove a debug message;
- Change the module description;
- a few minor coding style adjustments.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 37 ++++++++-----------
 1 file changed, 15 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index e25e596f58cf..564d86f0e4dc 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -117,6 +117,7 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 {
 	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
+	int ret;
 
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&sreg->enable_mutex);
@@ -124,13 +125,13 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 		     HISI_REGS_ENA_PROTECT_TIME + 1000);
 
 	/* set enable register */
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-			     rdev->desc->enable_mask,
-			     rdev->desc->enable_mask);
+	ret = hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+				   rdev->desc->enable_mask,
+				   rdev->desc->enable_mask);
 
 	mutex_unlock(&sreg->enable_mutex);
 
-	return 0;
+	return ret;
 }
 
 static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
@@ -139,10 +140,8 @@ static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
 	/* set enable register to 0 */
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-			     rdev->desc->enable_mask, 0);
-
-	return 0;
+	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+				    rdev->desc->enable_mask, 0);
 }
 
 static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
@@ -154,7 +153,7 @@ static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
 	/* get voltage selector */
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
 
-	return (reg_val & rdev->desc->vsel_mask) >>	(ffs(rdev->desc->vsel_mask) - 1);
+	return (reg_val & rdev->desc->vsel_mask) >> (ffs(rdev->desc->vsel_mask) - 1);
 }
 
 static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
@@ -164,16 +163,14 @@ static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 
-	if (unlikely(selector >= rdev->desc->n_voltages))
+	if (selector >= rdev->desc->n_voltages)
 		return -EINVAL;
 
 	reg_val = selector << (ffs(rdev->desc->vsel_mask) - 1);
 
 	/* set voltage selector */
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
-			     rdev->desc->vsel_mask, reg_val);
-
-	return 0;
+	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
+				    rdev->desc->vsel_mask, reg_val);
 }
 
 static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
@@ -209,10 +206,8 @@ static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
 	}
 
 	/* set mode */
-	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-			     sreg->eco_mode_mask, val);
-
-	return 0;
+	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
+				    sreg->eco_mode_mask, val);
 }
 
 static unsigned int
@@ -319,8 +314,6 @@ static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 		/* assign per-regulator data */
 		info = &regulator_info[i];
 
-		dev_dbg(dev, "adding regulator %s\n", info->desc.name);
-
 		config.dev = pdev->dev.parent;
 		config.driver_data = sreg;
 
@@ -344,12 +337,12 @@ MODULE_DEVICE_TABLE(platform, hi6421_spmi_regulator_table);
 static struct platform_driver hi6421_spmi_regulator_driver = {
 	.id_table = hi6421_spmi_regulator_table,
 	.driver = {
-		.name	= "hi6421v600-regulator",
+		.name = "hi6421v600-regulator",
 	},
 	.probe	= hi6421_spmi_regulator_probe,
 };
 module_platform_driver(hi6421_spmi_regulator_driver);
 
-MODULE_DESCRIPTION("Hi6421v600 regulator driver");
+MODULE_DESCRIPTION("Hi6421v600 SPMI regulator driver");
 MODULE_LICENSE("GPL v2");
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
