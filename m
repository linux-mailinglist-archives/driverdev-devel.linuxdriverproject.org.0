Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E68442FBC10
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 17:11:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B3EE8214FD;
	Tue, 19 Jan 2021 16:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jLAGC5hhfC3K; Tue, 19 Jan 2021 16:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1708F20508;
	Tue, 19 Jan 2021 16:11:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 16A851BF9BD
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0DB9C2078B
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vsZgvhfYxcti for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EA4621FD42
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 16:10:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5AD8023133;
 Tue, 19 Jan 2021 16:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611072651;
 bh=Yw5tt/bjVbX8zG0wocBux7stqJu9IBcB6xfwSNnOHKo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q1ypH6GFesRdA0jhcoKoyFZlwNP+HUwmXK2M+84J7/LmH548YXOvDx2qjBzZGKOpZ
 N5B/+snMj6HpbBZ7FJClELKRrgfJ/HplPO0+nVNEVVZDy9sEyXJ0a333imYCa3fkub
 qml1/kQXq1wdauAb0UbvqWCZ6x94Ors7OrH2t2SOWSw3BXjeNdHesqPC6ocUGXnNrq
 /T7GUsHNDpDOwfiWDot9xqpRXCuULWg93j76FjvnPl/eh4bnq6Kf/sR90er4gpA3bX
 lh/4PFkb70iyGSVjGnMDatrzLmGITAjf/Zfv3RlMRkOiswnX57ooUbYxM7hV/F11sr
 ps8AOt2CqBc1w==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1tai-0012bg-Vb; Tue, 19 Jan 2021 17:10:48 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v4 06/21] staging: hikey9xx: hi6421v600-regulator: cleanup
 debug msgs
Date: Tue, 19 Jan 2021 17:10:32 +0100
Message-Id: <a4efc0d9f534d7215fe45cf361c65c8fb3b89356.1611072387.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611072387.git.mchehab+huawei@kernel.org>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
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

While those were useful during port time from downstream
version, let's get rid of them for good, as it is possible to
get about the same things by enabling regulator debugging code.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 47 ++-----------------
 1 file changed, 4 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 72e301596735..54ad07418ec2 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -23,9 +23,6 @@
 #include <linux/regulator/driver.h>
 #include <linux/spmi.h>
 
-#define rdev_dbg(rdev, fmt, arg...)	\
-		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)
-
 struct hi6421_spmi_reg_info {
 	struct regulator_desc	desc;
 	struct hi6421_spmi_pmic *pmic;
@@ -112,11 +109,6 @@ static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)
 
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
 
-	rdev_dbg(rdev,
-		 "enable_reg=0x%x, val= 0x%x, enable_state=%d\n",
-		 rdev->desc->enable_reg,
-		 reg_val, (reg_val & rdev->desc->enable_mask));
-
 	return ((reg_val & rdev->desc->enable_mask) != 0);
 }
 
@@ -131,11 +123,6 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 		     HISI_REGS_ENA_PROTECT_TIME + 1000);
 
 	/* set enable register */
-	rdev_dbg(rdev,
-		 "off_on_delay=%d us, enable_reg=0x%x, enable_mask=0x%x\n",
-		 rdev->desc->off_on_delay, rdev->desc->enable_reg,
-		 rdev->desc->enable_mask);
-
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 			     rdev->desc->enable_mask,
 			     rdev->desc->enable_mask);
@@ -151,9 +138,6 @@ static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
 	/* set enable register to 0 */
-	rdev_dbg(rdev, "enable_reg=0x%x, enable_mask=0x%x\n",
-		 rdev->desc->enable_reg, rdev->desc->enable_mask);
-
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 			     rdev->desc->enable_mask, 0);
 
@@ -164,19 +148,12 @@ static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
 {
 	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 reg_val, selector;
+	u32 reg_val;
 
 	/* get voltage selector */
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
 
-	selector = (reg_val & rdev->desc->vsel_mask) >>	(ffs(rdev->desc->vsel_mask) - 1);
-
-	rdev_dbg(rdev,
-		 "vsel_reg=0x%x, value=0x%x, entry=0x%x, voltage=%d mV\n",
-		 rdev->desc->vsel_reg, reg_val, selector,
-		rdev->desc->ops->list_voltage(rdev, selector) / 1000);
-
-	return selector;
+	return (reg_val & rdev->desc->vsel_mask) >>	(ffs(rdev->desc->vsel_mask) - 1);
 }
 
 static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
@@ -192,11 +169,6 @@ static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
 	reg_val = selector << (ffs(rdev->desc->vsel_mask) - 1);
 
 	/* set voltage selector */
-	rdev_dbg(rdev,
-		 "vsel_reg=0x%x, mask=0x%x, value=0x%x, voltage=%d mV\n",
-		 rdev->desc->vsel_reg, rdev->desc->vsel_mask, reg_val,
-		 rdev->desc->ops->list_voltage(rdev, selector) / 1000);
-
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
 			     rdev->desc->vsel_mask, reg_val);
 
@@ -207,22 +179,14 @@ static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 {
 	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	unsigned int mode;
 	u32 reg_val;
 
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
 
 	if (reg_val & sreg->eco_mode_mask)
-		mode = REGULATOR_MODE_IDLE;
-	else
-		mode = REGULATOR_MODE_NORMAL;
+		return REGULATOR_MODE_IDLE;
 
-	rdev_dbg(rdev,
-		 "enable_reg=0x%x, eco_mode_mask=0x%x, reg_val=0x%x, %s mode\n",
-		 rdev->desc->enable_reg, sreg->eco_mode_mask, reg_val,
-		 mode == REGULATOR_MODE_IDLE ? "idle" : "normal");
-
-	return mode;
+	return REGULATOR_MODE_NORMAL;
 }
 
 static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
@@ -244,9 +208,6 @@ static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
 	}
 
 	/* set mode */
-	rdev_dbg(rdev, "enable_reg=0x%x, eco_mode_mask=0x%x, value=0x%x\n",
-		 rdev->desc->enable_reg, sreg->eco_mode_mask, val);
-
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 			     sreg->eco_mode_mask, val);
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
