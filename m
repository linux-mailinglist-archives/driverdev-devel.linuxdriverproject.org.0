Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F2D1FD4E1
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 20:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 318FF8913C;
	Wed, 17 Jun 2020 18:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kh5MGd2wJlgY; Wed, 17 Jun 2020 18:52:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2B48886A7;
	Wed, 17 Jun 2020 18:52:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7467F1BF395
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 18:52:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70CBE886A7
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 18:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJ4zPlEMlvwp for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 18:52:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE62988615
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 18:52:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FC1C217A0;
 Wed, 17 Jun 2020 18:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592419938;
 bh=F0HSnIgr+/nj4f4OoJWMedidccIF5oN1P0Lnc/e+mOQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A2JIxZmPKKawwJ1QvwvrgLzzMDkWXhd7Igm5OQJbkrwXTfdEBUw1igzY7hsSAm9lA
 14WTnr0bIwt3sGMqYeeTa8mf4hI616BK6P4zpNjGZuzzVPDVo9FqglGW6BZFVzLO3z
 1aKcmInQbYOa8ofGa0M6IuyQuFEeKSQ7gwo3aR08=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jldAV-00C8Ah-Um; Wed, 17 Jun 2020 20:52:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [RFC 1/4] media: atomisp: fix identation at I2C Kconfig menu
Date: Wed, 17 Jun 2020 20:52:11 +0200
Message-Id: <a6fa7016f510f13ed6e31052b8bcf83e4680d899.1592419750.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1592419750.git.mchehab+huawei@kernel.org>
References: <cover.1592419750.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Brad Love <brad@nextdimension.cc>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
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
