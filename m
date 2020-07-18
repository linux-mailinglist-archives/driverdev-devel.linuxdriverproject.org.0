Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB9B2248D5
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 07:06:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7602F86375;
	Sat, 18 Jul 2020 05:06:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q9Ibn6L8UhPL; Sat, 18 Jul 2020 05:06:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00BF586366;
	Sat, 18 Jul 2020 05:06:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1C241BF82B
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 05:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DE1A386375
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 05:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tbdcoj-jNEiR for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 05:06:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B829986366
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 05:06:00 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 684672083E;
 Sat, 18 Jul 2020 05:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595048760;
 bh=e1eezy0qbKZGztYdUiT19QjjP8dhZk+Lch7S4Ef94IU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=czWTPA7pjOvsKOFODsS8lNOMVRS/ywdcqC4F1UcLvT2YjOBcA8T+u6nFQkI6VfQEK
 R05P4hhst9jaiJc72TTBcfYU6e8LgWKQ1ChYkyqflt43RUYVq0XbrM1+s7983BixWh
 APzCTxBQLd+Ul1WeKrGkRzFn9FjHIz4uN2W6f9UI=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1jwf2r-003EDw-To; Sat, 18 Jul 2020 07:05:57 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 2/3] media: atomisp: fix the handling of clock number
Date: Sat, 18 Jul 2020 07:05:55 +0200
Message-Id: <c2942c4363ceb8bbce12c2db8f42d8bbbf5bb0ef.1595048742.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <2630e1bb0948c3134c6f22ad275ae27cc6023532.1595048742.git.mchehab+huawei@kernel.org>
References: <2630e1bb0948c3134c6f22ad275ae27cc6023532.1595048742.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Right now, the driver is not doing the right thing to detect
the clock like used by the sensor, at least on devices
without the gmin's EFI vars.

Add some notes at the code to explain why and skip the wrong
value provided by the _DSM table.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/atomisp_gmin_platform.c | 49 ++++++++++++++++---
 1 file changed, 42 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 1af9da8acf4c..cb360b8399e5 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -26,6 +26,9 @@ enum clock_rate {
 #define CLK_RATE_19_2MHZ	19200000
 #define CLK_RATE_25_0MHZ	25000000
 
+/* Valid clock number range from 0 to 5 */
+#define MAX_CLK_COUNT                   5
+
 /* X-Powers AXP288 register set */
 #define ALDO1_SEL_REG	0x28
 #define ALDO1_CTRL3_REG	0x13
@@ -61,7 +64,6 @@ enum clock_rate {
 
 struct gmin_subdev {
 	struct v4l2_subdev *subdev;
-	int clock_num;
 	enum clock_rate clock_src;
 	bool clock_on;
 	struct clk *pmc_clk;
@@ -447,7 +449,7 @@ static struct gmin_subdev *gmin_subdev_add(struct v4l2_subdev *subdev)
 	struct acpi_device *adev;
 	acpi_handle handle;
 	struct device *dev;
-	int i, ret;
+	int i, ret, clock_num;
 
 	if (!client)
 		return NULL;
@@ -492,17 +494,37 @@ static struct gmin_subdev *gmin_subdev_add(struct v4l2_subdev *subdev)
 	}
 
 	gmin_subdevs[i].subdev = subdev;
-	gmin_subdevs[i].clock_num = gmin_get_var_int(dev, false, "CamClk", 0);
+
 	/*WA:CHT requires XTAL clock as PLL is not stable.*/
 	gmin_subdevs[i].clock_src = gmin_get_var_int(dev, false, "ClkSrc",
 				    VLV2_CLK_PLL_19P2MHZ);
 	gmin_subdevs[i].csi_port = gmin_get_var_int(dev, false, "CsiPort", 0);
 	gmin_subdevs[i].csi_lanes = gmin_get_var_int(dev, false, "CsiLanes", 1);
 
-	/* get PMC clock with clock framework */
-	snprintf(gmin_pmc_clk_name,
-		 sizeof(gmin_pmc_clk_name),
-		 "%s_%d", "pmc_plt_clk", gmin_subdevs[i].clock_num);
+	/*
+	 * FIXME:
+	 *
+	 * According with :
+	 *   https://github.com/projectceladon/hardware-intel-kernelflinger/blob/master/doc/fastboot.md
+	 *
+	 * The "CamClk" EFI var is set via fastboot on some Android devices,
+	 * and seems to contain the number of the clock used to feed the
+	 * sensor.
+	 *
+	 * On systems with a proper ACPI table, this is given via the _PR0
+	 * power resource table. The logic below should first check if there
+	 * is a power resource already, falling back to the EFI vars detection
+	 * otherwise.
+	 */
+	clock_num = gmin_get_var_int(dev, false, "CamClk", -1);
+
+	if (clock_num < 0 || clock_num > MAX_CLK_COUNT) {
+		dev_err(dev, "Invalid clock number\n");
+		return NULL;
+	}
+
+	snprintf(gmin_pmc_clk_name, sizeof(gmin_pmc_clk_name),
+		 "%s_%d", "pmc_plt_clk", clock_num);
 
 	gmin_subdevs[i].pmc_clk = devm_clk_get(dev, gmin_pmc_clk_name);
 	if (IS_ERR(gmin_subdevs[i].pmc_clk)) {
@@ -515,6 +537,7 @@ static struct gmin_subdev *gmin_subdev_add(struct v4l2_subdev *subdev)
 
 		return NULL;
 	}
+	dev_info(dev, "Will use CLK%d (%s)\n", clock_num, gmin_pmc_clk_name);
 
 	/*
 	 * The firmware might enable the clock at
@@ -957,6 +980,18 @@ static int gmin_get_config_dsm_var(struct device *dev,
 	union acpi_object *obj, *cur = NULL;
 	int i;
 
+	/*
+	 * The data reported by "CamClk" seems to be either 0 or 1 at the
+	 * _DSM table.
+	 *
+	 * At the ACPI tables we looked so far, this is not related to the
+	 * actual clock source for the sensor, which is given by the
+	 * _PR0 ACPI table. So, ignore it, as otherwise this will be
+	 * set to a wrong value.
+	 */
+	if (!strcmp(var, "CamClk"))
+		return -EINVAL;
+
 	obj = acpi_evaluate_dsm(handle, &atomisp_dsm_guid, 0, 0, NULL);
 	if (!obj) {
 		dev_info_once(dev, "Didn't find ACPI _DSM table.\n");
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
