Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA89320B323
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 16:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E4E323459;
	Fri, 26 Jun 2020 14:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hwecmj0kMSXF; Fri, 26 Jun 2020 14:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA2A024CBC;
	Fri, 26 Jun 2020 14:05:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6461BF9B6
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:05:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 48B2487E94
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:05:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pZ6r8xP7N7eG for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E83E87DC1
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28B1F20FC3;
 Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593180302;
 bh=Nta2BxP6aG9z1osM6RBO32EL32u6t4phuluIvxKvVpo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FTF6iT6Vr/90E4f7jqYFu0x+qdo3ORNF0K1pcoADWKWAetju2Lod+n6gv1Zbr7dQX
 MaPc2CJ/mkdyNpqddgYqAmuvh9uwCIXGasT9oHcV3dmSm1zyaeFCZqKCG0ZJCIwNQW
 yTQxZ3MulpvCkwPRx4fM9ak9fLo67DkhznAn+tTA=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jooyS-00HKwU-7X; Fri, 26 Jun 2020 16:05:00 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 7/7] media: atomisp: place all gpio parsing together
Date: Fri, 26 Jun 2020 16:04:59 +0200
Message-Id: <37dd6017652bc201e8e8789d20e9052862a1e4d1.1593180146.git.mchehab+huawei@kernel.org>
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

Instead of parsing GPIO for two exceptions inside the logic
which would be trying to use the GPIO, move the init code
to the routine which adds a new gmin device.

Move the notes to it too, as this helps to identify where
those two GPIO settings are used, explaining why they're
defaulting to -1 when not found.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/atomisp_gmin_platform.c | 86 +++++++++----------
 1 file changed, 40 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 3136759bf96f..1a1a6a9ee8a3 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -83,6 +83,9 @@ struct gmin_subdev {
 	bool v1p2_on;
 	bool v2p8_vcm_on;
 
+	int v1p8_gpio;
+	int v2p8_gpio;
+
 	u8 pwm_i2c_addr;
 
 	/* For PMIC AXP */
@@ -122,24 +125,6 @@ static const struct atomisp_platform_data pdata = {
 	.subdevs = pdata_subdevs,
 };
 
-/*
- * Something of a hack.  The ECS E7 board drives camera 2.8v from an
- * external regulator instead of the PMIC.  There's a gmin_CamV2P8
- * config variable that specifies the GPIO to handle this particular
- * case, but this needs a broader architecture for handling camera
- * power.
- */
-enum { V2P8_GPIO_UNSET = -2, V2P8_GPIO_NONE = -1 };
-static int v2p8_gpio = V2P8_GPIO_UNSET;
-
-/*
- * Something of a hack. The CHT RVP board drives camera 1.8v from an
- * external regulator instead of the PMIC just like ECS E7 board, see the
- * comments above.
- */
-enum { V1P8_GPIO_UNSET = -2, V1P8_GPIO_NONE = -1 };
-static int v1p8_gpio = V1P8_GPIO_UNSET;
-
 static LIST_HEAD(vcm_devices);
 static DEFINE_MUTEX(vcm_lock);
 
@@ -561,6 +546,23 @@ static struct gmin_subdev *gmin_subdev_add(struct v4l2_subdev *subdev)
 	else
 		dev_info(dev, "will handle gpio1 via ACPI\n");
 
+	/*
+	 * Those are used only when there is an external regulator apart
+	 * from the PMIC that would be providing power supply, like on the
+	 * two cases below:
+	 *
+	 * The ECS E7 board drives camera 2.8v from an external regulator
+	 * instead of the PMIC.  There's a gmin_CamV2P8 config variable
+	 * that specifies the GPIO to handle this particular case,
+	 * but this needs a broader architecture for handling camera power.
+	 *
+	 * The CHT RVP board drives camera 1.8v from an* external regulator
+	 * instead of the PMIC just like ECS E7 board.
+	 */
+
+	gs->v1p8_gpio = gmin_get_var_int(dev, true, "V1P8GPIO", -1);
+	gs->v2p8_gpio = gmin_get_var_int(dev, true, "V2P8GPIO", -1);
+
 	/*
 	 * FIXME:
 	 *
@@ -843,26 +845,22 @@ static int gmin_v1p8_ctrl(struct v4l2_subdev *subdev, int on)
 
 	dev = &client->dev;
 
-	if (v1p8_gpio == V1P8_GPIO_UNSET) {
-		v1p8_gpio = gmin_get_var_int(dev, true,
-					     "V1P8GPIO", V1P8_GPIO_NONE);
-		if (v1p8_gpio != V1P8_GPIO_NONE) {
-			pr_info("atomisp_gmin_platform: 1.8v power on GPIO %d\n",
-				v1p8_gpio);
-			ret = gpio_request(v1p8_gpio, "camera_v1p8_en");
-			if (!ret)
-				ret = gpio_direction_output(v1p8_gpio, 0);
-			if (ret)
-				pr_err("V1P8 GPIO initialization failed\n");
-		}
+	if (gs->v1p8_gpio >= 0) {
+		pr_info("atomisp_gmin_platform: 1.8v power on GPIO %d\n",
+			gs->v1p8_gpio);
+		ret = gpio_request(gs->v1p8_gpio, "camera_v1p8_en");
+		if (!ret)
+			ret = gpio_direction_output(gs->v1p8_gpio, 0);
+		if (ret)
+			pr_err("V1P8 GPIO initialization failed\n");
 	}
 
 	if (!gs || gs->v1p8_on == on)
 		return 0;
 	gs->v1p8_on = on;
 
-	if (v1p8_gpio >= 0)
-		gpio_set_value(v1p8_gpio, on);
+	if (gs->v1p8_gpio >= 0)
+		gpio_set_value(gs->v1p8_gpio, on);
 
 	if (gs->v1p8_reg) {
 		regulator_set_voltage(gs->v1p8_reg, 1800000, 1800000);
@@ -905,26 +903,22 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, int on)
 
 	dev = &client->dev;
 
-	if (v2p8_gpio == V2P8_GPIO_UNSET) {
-		v2p8_gpio = gmin_get_var_int(dev, true,
-					     "V2P8GPIO", V2P8_GPIO_NONE);
-		if (v2p8_gpio != V2P8_GPIO_NONE) {
-			pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
-				v2p8_gpio);
-			ret = gpio_request(v2p8_gpio, "camera_v2p8");
-			if (!ret)
-				ret = gpio_direction_output(v2p8_gpio, 0);
-			if (ret)
-				pr_err("V2P8 GPIO initialization failed\n");
-		}
+	if (gs->v2p8_gpio >= 0) {
+		pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
+			gs->v2p8_gpio);
+		ret = gpio_request(gs->v2p8_gpio, "camera_v2p8");
+		if (!ret)
+			ret = gpio_direction_output(gs->v2p8_gpio, 0);
+		if (ret)
+			pr_err("V2P8 GPIO initialization failed\n");
 	}
 
 	if (!gs || gs->v2p8_on == on)
 		return 0;
 	gs->v2p8_on = on;
 
-	if (v2p8_gpio >= 0)
-		gpio_set_value(v2p8_gpio, on);
+	if (gs->v2p8_gpio >= 0)
+		gpio_set_value(gs->v2p8_gpio, on);
 
 	if (gs->v2p8_reg) {
 		regulator_set_voltage(gs->v2p8_reg, 2900000, 2900000);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
