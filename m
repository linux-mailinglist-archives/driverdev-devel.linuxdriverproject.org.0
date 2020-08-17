Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C216245D76
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEB0C87CB6;
	Mon, 17 Aug 2020 07:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fr7PQfhTlFsr; Mon, 17 Aug 2020 07:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C95A88798E;
	Mon, 17 Aug 2020 07:11:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 066661BF973
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 037CA87447
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5z78eH4ymgVQ for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E33F870D7
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 395AF22D37;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648278;
 bh=wNH43mWKljx0ycRWpaEYS4YesUceEtgnpEjk+gClJcQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dw/ywuKvOC8Na+CGBFfXf3IteUuyPOC0lyAWDuBbomi7Wc1pvtGiLwDIXvxofs9UV
 awNwJBCeMJyeMsh0nsC/HWwqvX7ZPzot10+L1dR6WoBHOezFb2g/NSy7sCu/04ODCV
 0eSEU40NznGAOVjkkqZ1RP3Tc4YuEfu/X7SV3F5c=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIa-00Bdkn-CD; Mon, 17 Aug 2020 09:11:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 33/44] staging: regulator: hi6421v600-regulator: convert to
 use get/set voltage_sel
Date: Mon, 17 Aug 2020 09:10:52 +0200
Message-Id: <1cf4f26540e65ffbb561c7d52e53f6be5bd63ac4.1597647359.git.mchehab+huawei@kernel.org>
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

As the supported LDOs on this driver are all using a selector,
change the implementation to use get_voltage_sel and
set_voltage_sel ops.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 58 +++++++------------
 1 file changed, 22 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index f77ecea78597..abd1f43dd5ec 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -86,8 +86,8 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 
 	/* set enable register */
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
-		      rdev->desc->enable_mask,
-				rdev->desc->enable_mask);
+			     rdev->desc->enable_mask,
+			     rdev->desc->enable_mask);
 	dev_dbg(&rdev->dev, "%s: enable_reg=0x%x, enable_mask=0x%x\n",
 		 __func__, rdev->desc->enable_reg,
 		 rdev->desc->enable_mask);
@@ -109,64 +109,49 @@ static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 	return 0;
 }
 
-static int hi6421_spmi_regulator_get_voltage(struct regulator_dev *rdev)
+static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val, selector;
-	int vol;
 
 	/* get voltage selector */
 	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->vsel_reg);
-	selector = (reg_val & rdev->desc->vsel_mask) >>
-				(ffs(rdev->desc->vsel_mask) - 1);
 
-	vol = rdev->desc->ops->list_voltage(rdev, selector);
+	selector = (reg_val & rdev->desc->vsel_mask) >>	(ffs(rdev->desc->vsel_mask) - 1);
 
 	dev_dbg(&rdev->dev,
-		"%s: vsel_reg=0x%x, val=0x%x, entry=0x%x, voltage=%d mV\n",
-		 __func__, rdev->desc->vsel_reg, reg_val, selector, vol/ 1000);
+		"%s: vsel_reg=0x%x, value=0x%x, entry=0x%x, voltage=%d mV\n",
+		 __func__, rdev->desc->vsel_reg, reg_val, selector,
+		rdev->desc->ops->list_voltage(rdev, selector) / 1000);
 
-	return vol;
+	return selector;
 }
 
-static int hi6421_spmi_regulator_set_voltage(struct regulator_dev *rdev,
-				      int min_uV, int max_uV, unsigned int *selector)
+static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
+						 unsigned int selector)
 {
 	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
-	u32 vsel;
-	int uV, ret = 0;
-
-	for (vsel = 0; vsel < rdev->desc->n_voltages; vsel++) {
-		uV = rdev->desc->volt_table[vsel];
-		dev_dbg(&rdev->dev,
-			"%s: min %d, max %d, value[%u] = %d\n",
-			__func__, min_uV, max_uV, vsel, uV);
-
-		/* Break at the first in-range value */
-		if (min_uV <= uV && uV <= max_uV)
-			break;
-	}
+	u32 reg_val;
 
 	/* unlikely to happen. sanity test done by regulator core */
-	if (unlikely(vsel == rdev->desc->n_voltages))
+	if (unlikely(selector >= rdev->desc->n_voltages))
 		return -EINVAL;
 
-	*selector = vsel;
+	reg_val = selector << (ffs(rdev->desc->vsel_mask) - 1);
+
 	/* set voltage selector */
 	hi6421_spmi_pmic_rmw(pmic, rdev->desc->vsel_reg,
-		      rdev->desc->vsel_mask,
-		      vsel << (ffs(rdev->desc->vsel_mask) - 1));
+			     rdev->desc->vsel_mask, reg_val);
 
 	dev_dbg(&rdev->dev,
-		"%s: vsel_reg=0x%x, vsel_mask=0x%x, value=0x%x, voltage=%d mV\n",
+		"%s: vsel_reg=0x%x, mask=0x%x, value=0x%x, voltage=%d mV\n",
 		 __func__,
-		 rdev->desc->vsel_reg,
-		 rdev->desc->vsel_mask,
-		 vsel << (ffs(rdev->desc->vsel_mask) - 1), uV / 1000);
+		 rdev->desc->vsel_reg, rdev->desc->vsel_mask, reg_val,
+		 rdev->desc->ops->list_voltage(rdev, selector) / 1000);
 
-	return ret;
+	return 0;
 }
 
 static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
@@ -315,8 +300,9 @@ static struct regulator_ops hi6421_spmi_ldo_rops = {
 	.enable = hi6421_spmi_regulator_enable,
 	.disable = hi6421_spmi_regulator_disable,
 	.list_voltage = regulator_list_voltage_table,
-	.get_voltage = hi6421_spmi_regulator_get_voltage,
-	.set_voltage = hi6421_spmi_regulator_set_voltage,
+	.map_voltage = regulator_map_voltage_iterate,
+	.get_voltage_sel = hi6421_spmi_regulator_get_voltage_sel,
+	.set_voltage_sel = hi6421_spmi_regulator_set_voltage_sel,
 	.get_mode = hi6421_spmi_regulator_get_mode,
 	.set_mode = hi6421_spmi_regulator_set_mode,
 	.get_optimum_mode = hi6421_spmi_regulator_get_optimum_mode,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
