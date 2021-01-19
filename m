Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C162E2FB52F
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:14:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 420F8864D7;
	Tue, 19 Jan 2021 10:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mP7l8Br0CBcM; Tue, 19 Jan 2021 10:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59F9B86745;
	Tue, 19 Jan 2021 10:14:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B54C51BF27F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AF8E2843ED
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2YlU8MdToFh5 for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DBC9484422
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1898223138;
 Tue, 19 Jan 2021 10:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611051267;
 bh=ON1WHgDgD0ZmN9PohuCMC1Ep5UBt3k+LB9V4ffsECfg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eWy0xqSTPNndyNi5WO3jazDVoiaB/Oz8Oftl4J/zPFUHVVDVjYSPR7g14v5Qoio2U
 zCZIGy2QVcTQ5+lnAuZDr9Zb0p/hH7X7kTELDIejrJArn1naVTnue5FExfsAImkIXz
 eP0wosAVgoazmjXbLyK2Vu4ENn9GSzmYgLpjR/Vlx++gto64pQZi3TZfy2VgI+Skow
 MUvw01NpU0UrC2lKWZSPe5Jp/Mq2FSr1aisnOgjuhLehGNbsxnORFm3RqCynp4gsVW
 sN1KDIl/FP+0Wxl+0SmEg3Mopq6TVvb5G9A6Y8HLe1xDr3dm5wveOpNC7RXAGSX75g
 kk6YcoefLQgpA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1o1o-000tOo-Nz; Tue, 19 Jan 2021 11:14:24 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v3 06/18] staging: hikey9xx: hi6421v600-regulator: cleanup
 debug msgs
Date: Tue, 19 Jan 2021 11:14:11 +0100
Message-Id: <dada109bc93eb8cfbfbe3789924a36cd8828aa7e.1611048785.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611048785.git.mchehab+huawei@kernel.org>
References: <cover.1611048785.git.mchehab+huawei@kernel.org>
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
index 70e4c06c1b2d..5469089a3daf 100644
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
