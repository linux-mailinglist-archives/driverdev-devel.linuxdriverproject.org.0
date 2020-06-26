Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B20120B322
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 16:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2CC1024BEF;
	Fri, 26 Jun 2020 14:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUGaOuj7xaeH; Fri, 26 Jun 2020 14:05:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 71CA024B96;
	Fri, 26 Jun 2020 14:05:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F99E1BF989
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1CA4D86E64
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HySHZNEpf1aW for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A67586DD9
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C2D02088E;
 Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593180302;
 bh=Mrq6ZNq6JHxpqf7M70F+n6CjUaMw/lET6Y4DJqIq1MI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L5gEZ88vPUw7Uzq/6+3pirup9yJh1YG+YUY08UYFAY/gweAMRK/M6HctbPizVfTTB
 wqMQlxM5LkNRG9hrMRjRjdvHHjRoiSBHIYkzfmZOSEDxY2KkBLRmvV5JsxqU8BuDuq
 en3pYsk/3oNxxsgXWAtSq1LXtA9ICGCHAwxTawzg=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jooyS-00HKw9-2X; Fri, 26 Jun 2020 16:05:00 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 2/7] media: atomisp: Prepare sensor support for ACPI PM
Date: Fri, 26 Jun 2020 16:04:54 +0200
Message-Id: <2fac02015a0d83e59e59e88c28cfd91521483bed.1593180146.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1593180146.git.mchehab+huawei@kernel.org>
References: <cover.1593180146.git.mchehab+huawei@kernel.org>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add support code for this driver to use ACPI power management.

Yet, at least with known devices, this won't work without
further changes.

The rationale is that the ACPI handling code checks for the _PR? tables
in order to know what is required to switch the device from power state
D0 (_PR0) up to D3COLD (_PR3).

The adev->flags.power_manageable is set to true if the device has a _PR0
table, which can be checked by calling acpi_device_power_manageable(adev).

However, this only says that the device can be set to power off mode.

At least on the DSDT tables we've seen so far, there's no _PR3 nor _PS3
(which would have a somewhat similar effect).

So, using ACPI for power management won't work, except if adding
an ACPI override logic somewhere.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/atomisp_gmin_platform.c | 89 +++++++++++++++++--
 1 file changed, 83 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 74331c4467bd..2903aa52115b 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -65,7 +65,6 @@ enum clock_rate {
 struct gmin_subdev {
 	struct v4l2_subdev *subdev;
 	enum clock_rate clock_src;
-	bool clock_on;
 	struct clk *pmc_clk;
 	struct gpio_desc *gpio0;
 	struct gpio_desc *gpio1;
@@ -77,6 +76,8 @@ struct gmin_subdev {
 	unsigned int csi_lanes;
 	enum atomisp_input_format csi_fmt;
 	enum atomisp_bayer_order csi_bayer;
+
+	bool clock_on;
 	bool v1p8_on;
 	bool v2p8_on;
 	bool v1p2_on;
@@ -107,7 +108,7 @@ static enum {
 } pmic_id;
 
 static const char *pmic_name[] = {
-	[PMIC_UNSET]		= "unset",
+	[PMIC_UNSET]		= "ACPI device PM",
 	[PMIC_REGULATOR]	= "regulator driver",
 	[PMIC_AXP]		= "XPower AXP288 PMIC",
 	[PMIC_TI]		= "Dollar Cove TI PMIC",
@@ -500,8 +501,39 @@ static struct gmin_subdev *gmin_subdev_add(struct v4l2_subdev *subdev)
 		gs->gpio1 = NULL;
 
 	/*
-	 * FIXME: the code below doesn't rely on ACPI device_pm.c code to
-	 * set clocks and do power management.
+	 * FIXME:
+	 *
+	 * The ACPI handling code checks for the _PR? tables in order to
+	 * know what is required to switch the device from power state
+	 * D0 (_PR0) up to D3COLD (_PR3).
+	 *
+	 * The adev->flags.power_manageable is set to true if the device
+	 * has a _PR0 table, which can be checked by calling
+	 * acpi_device_power_manageable(adev).
+	 *
+	 * However, this only says that the device can be set to power off
+	 * mode.
+	 *
+	 * At least on the DSDT tables we've seen so far, there's no _PR3,
+	 * nor _PS3 (which would have a somewhat similar effect).
+	 * So, using ACPI for power management won't work, except if adding
+	 * an ACPI override logic somewhere.
+	 *
+	 * So, at least for the existing devices we know, the check below
+	 * will always be false.
+	 */
+	if (acpi_device_can_wakeup(adev) &&
+	    acpi_device_can_poweroff(adev)) {
+		dev_info(dev,
+			 "gmin: power management provided via device PM\n");
+
+		return gs;
+	}
+
+	/*
+	 * The code below is here due to backward compatibility with devices
+	 * whose ACPI BIOS may not contain everything that would be needed
+	 * in order to set clocks and do power management.
 	 */
 
 	if (!pmic_id) {
@@ -856,6 +888,37 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, int on)
 	return -EINVAL;
 }
 
+static int gmin_acpi_pm_ctrl(struct v4l2_subdev *subdev, int on)
+{
+	int ret = 0;
+	struct gmin_subdev *gs = find_gmin_subdev(subdev);
+	struct i2c_client *client = v4l2_get_subdevdata(subdev);
+	struct acpi_device *adev = ACPI_COMPANION(&client->dev);
+
+	/* Use the ACPI power management to control it */
+	on = !!on;
+	if (gs->clock_on == on)
+		return 0;
+
+	dev_dbg(subdev->dev, "Setting power state to %s\n",
+		on ? "on" : "off");
+
+	if (on)
+		ret = acpi_device_set_power(adev,
+					    ACPI_STATE_D0);
+	else
+		ret = acpi_device_set_power(adev,
+					    ACPI_STATE_D3_COLD);
+
+	if (!ret)
+		gs->clock_on = on;
+	else
+		dev_err(subdev->dev, "Couldn't set power state to %s\n",
+		        on ? "on" : "off");
+
+	return ret;
+}
+
 static int gmin_flisclk_ctrl(struct v4l2_subdev *subdev, int on)
 {
 	int ret = 0;
@@ -921,7 +984,7 @@ static struct camera_vcm_control *gmin_get_vcm_ctrl(struct v4l2_subdev *subdev,
 	return NULL;
 }
 
-static struct camera_sensor_platform_data gmin_plat = {
+static struct camera_sensor_platform_data pmic_gmin_plat = {
 	.gpio0_ctrl = gmin_gpio0_ctrl,
 	.gpio1_ctrl = gmin_gpio1_ctrl,
 	.v1p8_ctrl = gmin_v1p8_ctrl,
@@ -932,6 +995,17 @@ static struct camera_sensor_platform_data gmin_plat = {
 	.get_vcm_ctrl = gmin_get_vcm_ctrl,
 };
 
+static struct camera_sensor_platform_data acpi_gmin_plat = {
+	.gpio0_ctrl = gmin_gpio0_ctrl,
+	.gpio1_ctrl = gmin_gpio1_ctrl,
+	.v1p8_ctrl = gmin_acpi_pm_ctrl,
+	.v2p8_ctrl = gmin_acpi_pm_ctrl,
+	.v1p2_ctrl = gmin_acpi_pm_ctrl,
+	.flisclk_ctrl = gmin_acpi_pm_ctrl,
+	.csi_cfg = gmin_csi_cfg,
+	.get_vcm_ctrl = gmin_get_vcm_ctrl,
+};
+
 struct camera_sensor_platform_data *gmin_camera_platform_data(
     struct v4l2_subdev *subdev,
     enum atomisp_input_format csi_format,
@@ -942,7 +1016,10 @@ struct camera_sensor_platform_data *gmin_camera_platform_data(
 	gs->csi_fmt = csi_format;
 	gs->csi_bayer = csi_bayer;
 
-	return &gmin_plat;
+	if (gs->pmc_clk)
+		return &pmic_gmin_plat;
+	else
+		return &acpi_gmin_plat;
 }
 EXPORT_SYMBOL_GPL(gmin_camera_platform_data);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
