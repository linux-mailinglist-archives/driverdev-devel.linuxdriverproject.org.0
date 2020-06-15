Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A42DA1F8D58
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 07:43:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F052F873BB;
	Mon, 15 Jun 2020 05:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X5xXwSs-27PG; Mon, 15 Jun 2020 05:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 723408739F;
	Mon, 15 Jun 2020 05:43:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F164D1BF59B
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB209882FB
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mBnEKrZTHa9B for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 05:43:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4ADD388F7B
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 05:43:07 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4B4820679;
 Mon, 15 Jun 2020 05:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592199787;
 bh=F0HSnIgr+/nj4f4OoJWMedidccIF5oN1P0Lnc/e+mOQ=;
 h=From:To:Cc:Subject:Date:From;
 b=tiZjLAxUd26Og8M4aW8suDdDIualcWcpbGxpIMrcNhiFGDTyYVOqnC9BdyVKPReko
 /BvBdq9EQk9PZx7W2uwV0L9gHwcsyC4Hx2cp1CcC/NNTX9XMpX1wvF2xZ6LszOWWjO
 JRBAs+j1PnWtLPNjmZ8pF/AW5adSsmTbLk7rLfF0=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jkhtg-009hQu-Mj; Mon, 15 Jun 2020 07:43:04 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 1/2] media: atomisp: fix identation at I2C Kconfig menu
Date: Mon, 15 Jun 2020 07:43:03 +0200
Message-Id: <a6fa7016f510f13ed6e31052b8bcf83e4680d899.1592199777.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are several bad whitespacing usage there. Remove them.

While here, place all Kconfig options for sensors at the
same place.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/i2c/Kconfig     | 74 +++++++++++--------
 .../staging/media/atomisp/i2c/ov5693/Kconfig  | 12 ---
 2 files changed, 42 insertions(+), 44 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/i2c/ov5693/Kconfig

diff --git a/drivers/staging/media/atomisp/i2c/Kconfig b/drivers/staging/media/atomisp/i2c/Kconfig
index 7c7f0fc090b3..a772b833a85f 100644
--- a/drivers/staging/media/atomisp/i2c/Kconfig
+++ b/drivers/staging/media/atomisp/i2c/Kconfig
@@ -3,53 +3,51 @@
 # Kconfig for sensor drivers
 #
 
-source "drivers/staging/media/atomisp/i2c/ov5693/Kconfig"
-
 config VIDEO_ATOMISP_OV2722
-       tristate "OVT ov2722 sensor support"
+	tristate "OVT ov2722 sensor support"
 	depends on ACPI
-       depends on I2C && VIDEO_V4L2
+	depends on I2C && VIDEO_V4L2
 	help
-	 This is a Video4Linux2 sensor-level driver for the OVT
-	 OV2722 raw camera.
+	  This is a Video4Linux2 sensor-level driver for the OVT
+	  OV2722 raw camera.
 
-	 OVT is a 2M raw sensor.
+	  OVT is a 2M raw sensor.
 
-	 It currently only works with the atomisp driver.
+	  It currently only works with the atomisp driver.
 
 config VIDEO_ATOMISP_GC2235
-       tristate "Galaxy gc2235 sensor support"
+	tristate "Galaxy gc2235 sensor support"
 	depends on ACPI
-       depends on I2C && VIDEO_V4L2
+	depends on I2C && VIDEO_V4L2
 	help
-	 This is a Video4Linux2 sensor-level driver for the OVT
-	 GC2235 raw camera.
+	  This is a Video4Linux2 sensor-level driver for the OVT
+	  GC2235 raw camera.
 
-	 GC2235 is a 2M raw sensor.
+	  GC2235 is a 2M raw sensor.
 
-	 It currently only works with the atomisp driver.
+	  It currently only works with the atomisp driver.
 
 config VIDEO_ATOMISP_MSRLIST_HELPER
-       tristate "Helper library to load, parse and apply large register lists."
-       depends on I2C
+	tristate "Helper library to load, parse and apply large register lists."
+	depends on I2C
 	help
-	 This is a helper library to be used from a sensor driver to load, parse
-	 and apply large register lists.
+	  This is a helper library to be used from a sensor driver to load, parse
+	  and apply large register lists.
 
-	 To compile this driver as a module, choose M here: the
-	 module will be called libmsrlisthelper.
+	  To compile this driver as a module, choose M here: the
+	  module will be called libmsrlisthelper.
 
 config VIDEO_ATOMISP_MT9M114
-       tristate "Aptina mt9m114 sensor support"
+	tristate "Aptina mt9m114 sensor support"
 	depends on ACPI
-       depends on I2C && VIDEO_V4L2
+	depends on I2C && VIDEO_V4L2
 	help
-	 This is a Video4Linux2 sensor-level driver for the Micron
-	 mt9m114 1.3 Mpixel camera.
+	  This is a Video4Linux2 sensor-level driver for the Micron
+	  mt9m114 1.3 Mpixel camera.
 
-	 mt9m114 is video camera sensor.
+	  mt9m114 is video camera sensor.
 
-	 It currently only works with the atomisp driver.
+	  It currently only works with the atomisp driver.
 
 config VIDEO_ATOMISP_GC0310
 	tristate "GC0310 sensor support"
@@ -60,16 +58,28 @@ config VIDEO_ATOMISP_GC0310
 	  GC0310 0.3MP sensor.
 
 config VIDEO_ATOMISP_OV2680
-       tristate "Omnivision OV2680 sensor support"
+	tristate "Omnivision OV2680 sensor support"
 	depends on ACPI
-       depends on I2C && VIDEO_V4L2
+	depends on I2C && VIDEO_V4L2
 	help
-	 This is a Video4Linux2 sensor-level driver for the Omnivision
-	 OV2680 raw camera.
+	  This is a Video4Linux2 sensor-level driver for the Omnivision
+	  OV2680 raw camera.
 
-	 ov2680 is a 2M raw sensor.
+	  ov2680 is a 2M raw sensor.
 
-	 It currently only works with the atomisp driver.
+	  It currently only works with the atomisp driver.
+
+config VIDEO_ATOMISP_OV5693
+	tristate "Omnivision ov5693 sensor support"
+	depends on ACPI
+	depends on I2C && VIDEO_V4L2
+	help
+	  This is a Video4Linux2 sensor-level driver for the Micron
+	  ov5693 5 Mpixel camera.
+
+	  ov5693 is video camera sensor.
+
+	  It currently only works with the atomisp driver.
 
 #
 # Kconfig for flash drivers
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/Kconfig b/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
deleted file mode 100644
index c8d09f416c35..000000000000
--- a/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
+++ /dev/null
@@ -1,12 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-config VIDEO_ATOMISP_OV5693
-       tristate "Omnivision ov5693 sensor support"
-	depends on ACPI
-       depends on I2C && VIDEO_V4L2
-	help
-	 This is a Video4Linux2 sensor-level driver for the Micron
-	 ov5693 5 Mpixel camera.
-
-	 ov5693 is video camera sensor.
-
-	 It currently only works with the atomisp driver.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
