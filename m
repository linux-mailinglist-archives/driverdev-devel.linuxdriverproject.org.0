Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6102FE3AB
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 08:18:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BDA7871D5;
	Thu, 21 Jan 2021 07:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BD9srkQw8KWV; Thu, 21 Jan 2021 07:18:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC017871B6;
	Thu, 21 Jan 2021 07:18:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59F741BF873
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54BD720763
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 197KJMVil0tN for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id F14CE20780
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2992523998;
 Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611213508;
 bh=GJGVCgcolu4up0iCAX540U0BQYVfzG27H/pvopxV4tg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mgItIbFrGc18gjGWv2GDFGAKcabd+JGUUshKLuve9ccWe4xOaidPXm7O0c4Ym61gs
 chucQjeCGE0Xk7wGDFwJoSWUt4yYoruKjOg4I9qeRv/2KYKOJ8WrfLsRK7bw4ThjFm
 Cerpc6NDe+7QKfuO4Zf/SeGU6gVwv9q86F8Tan3MlLYmI16Rzz2USQkvZPptsCs2Di
 yIRN/A5leX1A6hhdUEE0RF7dxlcT8jf2K4Q09o6rZJrrcaXB0eYM8qs4qp6JHvMiKk
 U/CUcPYVgQSdvcuOE1T65jBQITQQIfLButxcrK9l3hdd4vYj2CklSw3WBIqRsAdqBA
 dp/IxICfDhplw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l2UEb-004BsH-JP; Thu, 21 Jan 2021 08:18:25 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v5 11/21] staging: hikey9xx: hi6421v600-regulator: cleanup
 comments
Date: Thu, 21 Jan 2021 08:18:13 +0100
Message-Id: <d5e6dbdee5f7e143300249251ddbe09fdf64e669.1611212783.git.mchehab+huawei@kernel.org>
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

Remove obvious comments and fix the comment for the
HI6421V600_LDO() macro.

While on it, use kernel-doc notation for HI6421V600_LDO(),
as kernel-doc can check if the arguments match its
description.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 27 ++++++++-----------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index e5a492ee7121..9f096d4e46db 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -57,17 +57,17 @@ static const unsigned int ldo34_voltages[] = {
 	3000000, 3100000, 3200000, 3300000
 };
 
-/*
- * _id - LDO id name string
- * _match - of match name string
- * v_table - voltage table
- * vreg - voltage select register
- * vmask - voltage select mask
- * ereg - enable register
- * emask - enable mask
- * odelay - off/on delay time in uS
- * ecomask - eco mode mask
- * ecoamp - eco mode load uppler limit in uA
+/**
+ * HI6421V600_LDO() - specify a LDO power line
+ * @_id: LDO id name string
+ * @vtable: voltage table
+ * @ereg: enable register
+ * @emask: enable mask
+ * @vreg: voltage select register
+ * @odelay: off/on delay time in uS
+ * @etime: enable time in uS
+ * @ecomask: eco mode mask
+ * @ecoamp: eco mode load uppler limit in uA
  */
 #define HI6421V600_LDO(_id, vtable, ereg, emask, vreg,			       \
 		       odelay, etime, ecomask, ecoamp)			       \
@@ -114,7 +114,6 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&sreg->enable_mutex);
 
-	/* set enable register */
 	ret = hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 				   rdev->desc->enable_mask,
 				   rdev->desc->enable_mask);
@@ -132,7 +131,6 @@ static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
-	/* set enable register to 0 */
 	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 				    rdev->desc->enable_mask, 0);
 }
@@ -143,7 +141,6 @@ static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 
-	/* get voltage selector */
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
 
 	return (reg_val & rdev->desc->vsel_mask) >> (ffs(rdev->desc->vsel_mask) - 1);
@@ -198,7 +195,6 @@ static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
 		return -EINVAL;
 	}
 
-	/* set mode */
 	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 				    sreg->eco_mode_mask, val);
 }
@@ -304,7 +300,6 @@ static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 	mutex_init(&sreg->enable_mutex);
 
 	for (i = 0; i < ARRAY_SIZE(regulator_info); i++) {
-		/* assign per-regulator data */
 		info = &regulator_info[i];
 
 		config.dev = pdev->dev.parent;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
