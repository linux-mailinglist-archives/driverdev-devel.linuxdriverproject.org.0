Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA749242C9C
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FC2486AAC;
	Wed, 12 Aug 2020 15:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l2UlLpCNCFwj; Wed, 12 Aug 2020 15:57:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9521686A57;
	Wed, 12 Aug 2020 15:57:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 863C91BF2F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 812B68825E
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6QYl4Zu4pByx for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61EBF87FAF
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 126EF22EBF;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247821;
 bh=vGosXmStFqBqsvu6v4zgK+x2NCOWHs5Iy+l8WTm4Zc8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PH1xDpSN8xV7rdAR1KlDqcxzjbZtzLv1IK+QHYNtBancb/hvyUHCGC7JLBHL0eHB6
 rUPwdcIHjjaA6Rz2AcxY76w45Ey1x2RiQYch08yiGR4edwg3ciAxCLgO/fTRu5ckJ6
 bR16XwGOQvKvvA16Z6efJTdbqan/P9OlDxKxFUsM=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7b-005t7I-84; Wed, 12 Aug 2020 17:56:59 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 37/44] staging: regulator: hi6421v600-regulator: cleanup DT
 settings
Date: Wed, 12 Aug 2020 17:56:47 +0200
Message-Id: <b73be90e0496dec1735fe706a53705fb5587059d.1597247164.git.mchehab+huawei@kernel.org>
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

Currently, an array is used to store both vsel and enable
settings, mixing registers, masks and bit settings.

Change it in order to have one separate property for each.

This makes easier to understand the contents of the DT
file, and to describe it at the Documentation/.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 69 +++++++++++--------
 1 file changed, 42 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 21467fce9980..72f51594b5ff 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -45,8 +45,7 @@
 struct hi6421v600_regulator {
 	struct regulator_desc rdesc;
 	struct hi6421_spmi_pmic *pmic;
-	u8 eco_mode_mask;
-	u32 eco_uA;
+	u32 eco_mode_mask, eco_uA;
 };
 
 static DEFINE_MUTEX(enable_mutex);
@@ -226,36 +225,49 @@ static int hi6421_spmi_dt_parse(struct platform_device *pdev,
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	unsigned int register_info[3] = {0};
 	unsigned int *v_table;
 	int ret;
 
-	/* parse .register_info.enable_reg */
-	ret = of_property_read_u32_array(np, "hi6421-ctrl",
-					 register_info, 3);
+	ret = of_property_read_u32(np, "reg", &rdesc->enable_reg);
 	if (ret) {
-		dev_err(dev, "no hi6421-ctrl property set\n");
+		dev_err(dev, "missing reg property\nn");
 		return ret;
 	}
-	rdesc->enable_reg = register_info[0];
-	rdesc->enable_mask = register_info[1];
-	sreg->eco_mode_mask = register_info[2];
 
-	/* parse .register_info.vsel_reg */
-	ret = of_property_read_u32_array(np, "hi6421-vsel",
-					 register_info, 2);
+	ret = of_property_read_u32(np, "vsel-reg", &rdesc->vsel_reg);
 	if (ret) {
-		dev_err(dev, "no hi6421-vsel property set\n");
+		dev_err(dev, "missing vsel-reg property\n");
 		return ret;
 	}
-	rdesc->vsel_reg = register_info[0];
-	rdesc->vsel_mask = register_info[1];
+
+	ret = of_property_read_u32(np, "enable-mask", &rdesc->enable_mask);
+	if (ret) {
+		dev_err(dev, "missing enable-mask property\n");
+		return ret;
+	}
+
+	/*
+	 * Not all regulators work on idle mode
+	 */
+	ret = of_property_read_u32(np, "idle-mode-mask", &sreg->eco_mode_mask);
+	if (ret) {
+		dev_dbg(dev, "LDO doesn't support economy mode.\n");
+		sreg->eco_mode_mask = 0;
+		sreg->eco_uA = 0;
+	} else {
+		ret = of_property_read_u32(np, "eco-microamp",
+					&sreg->eco_uA);
+		if (ret) {
+			dev_err(dev, "missing eco-microamp property\n");
+			return ret;
+		}
+	}
 
 	/* parse .off-on-delay */
 	ret = of_property_read_u32(np, "off-on-delay-us",
 				   &rdesc->off_on_delay);
 	if (ret) {
-		dev_err(dev, "no off-on-delay-us property set\n");
+		dev_err(dev, "missing off-on-delay-us property\n");
 		return ret;
 	}
 
@@ -263,21 +275,13 @@ static int hi6421_spmi_dt_parse(struct platform_device *pdev,
 	ret = of_property_read_u32(np, "startup-delay-us",
 				   &rdesc->enable_time);
 	if (ret) {
-		dev_err(dev, "no startup-delay-us property set\n");
+		dev_err(dev, "missing startup-delay-us property\n");
 		return ret;
 	}
 
 	/* FIXME: are there a better value for this? */
 	rdesc->ramp_delay = rdesc->enable_time;
 
-	/* parse .eco_uA */
-	ret = of_property_read_u32(np, "eco-microamp",
-				   &sreg->eco_uA);
-	if (ret) {
-		sreg->eco_uA = 0;
-		ret = 0;
-	}
-
 	/* parse volt_table */
 
 	rdesc->n_voltages = of_property_count_u32_elems(np, "voltage-table");
@@ -291,10 +295,21 @@ static int hi6421_spmi_dt_parse(struct platform_device *pdev,
 	ret = of_property_read_u32_array(np, "voltage-table",
 					 v_table, rdesc->n_voltages);
 	if (ret) {
-		dev_err(dev, "no voltage-table property set\n");
+		dev_err(dev, "missing voltage-table property\n");
 		return ret;
 	}
 
+	/*
+	 * Instead of explicitly requiring a mask for the voltage selector,
+	 * as they all start from bit zero (at least on the known LDOs),
+	 * just use the number of voltages at the voltage table, getting the
+	 * minimal mask that would pick everything.
+	 */
+	rdesc->vsel_mask = (1 << (fls(rdesc->n_voltages) - 1)) - 1;
+
+	dev_dbg(dev, "voltage selector settings: reg: 0x%x, mask: 0x%x",
+		rdesc->vsel_reg, rdesc->vsel_mask);
+
 	return 0;
 }
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
