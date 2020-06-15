Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D52E61F8D36
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 07:18:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F7D788FBF;
	Mon, 15 Jun 2020 05:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id caPvGc5GIxHn; Mon, 15 Jun 2020 05:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0672B88F5D;
	Mon, 15 Jun 2020 05:18:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7BD91BF59B
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 916A12318D
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dVaKixP6+1Bm for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 05:18:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E9CB320768
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 05:18:38 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8480420663;
 Mon, 15 Jun 2020 05:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592198318;
 bh=UnL9KL9b2XMzYtnzbspqLQfUce0Hy1L0UeRJFdn9BmQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tBXfdTbhDqk5/pmUcfl9NIKk6Pv4KIVsyYuKWVIsZTsTt3tIv+BWJ4KkGLce7p8oX
 YNFbN8tf8MCq3B19zzvVTLI7Lrkh0GZfYuKdHR+4mIQepGc0rG7UUJMFURNzBmDcEj
 M2zt/PeSd51E9s9pbeCN1fk9oFsL/Vv52uqD+4Jg=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jkhW0-009bpq-9C; Mon, 15 Jun 2020 07:18:36 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 2/2] media: atomisp: replace old ---help--- tags by just help
Date: Mon, 15 Jun 2020 07:18:34 +0200
Message-Id: <849016f49273cd245401cc2d7d454d3a12330658.1592198305.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <d94e7bff13e8a361353360e4cdbf637bfb701bed.1592198305.git.mchehab+huawei@kernel.org>
References: <d94e7bff13e8a361353360e4cdbf637bfb701bed.1592198305.git.mchehab+huawei@kernel.org>
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are several places on this file using the deprecated
---help--- tag.

Replaces them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/i2c/Kconfig        | 14 +++++++-------
 drivers/staging/media/atomisp/i2c/ov5693/Kconfig | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/Kconfig b/drivers/staging/media/atomisp/i2c/Kconfig
index 69f325c9a724..038de895ce40 100644
--- a/drivers/staging/media/atomisp/i2c/Kconfig
+++ b/drivers/staging/media/atomisp/i2c/Kconfig
@@ -9,7 +9,7 @@ config VIDEO_ATOMISP_OV2722
        tristate "OVT ov2722 sensor support"
 	depends on ACPI
        depends on I2C && VIDEO_V4L2
-       ---help---
+       help
 	 This is a Video4Linux2 sensor-level driver for the OVT
 	 OV2722 raw camera.
 
@@ -21,7 +21,7 @@ config VIDEO_ATOMISP_GC2235
        tristate "Galaxy gc2235 sensor support"
 	depends on ACPI
        depends on I2C && VIDEO_V4L2
-       ---help---
+       help
 	 This is a Video4Linux2 sensor-level driver for the OVT
 	 GC2235 raw camera.
 
@@ -32,7 +32,7 @@ config VIDEO_ATOMISP_GC2235
 config VIDEO_ATOMISP_MSRLIST_HELPER
        tristate "Helper library to load, parse and apply large register lists."
        depends on I2C
-       ---help---
+       help
 	 This is a helper library to be used from a sensor driver to load, parse
 	 and apply large register lists.
 
@@ -43,7 +43,7 @@ config VIDEO_ATOMISP_MT9M114
        tristate "Aptina mt9m114 sensor support"
 	depends on ACPI
        depends on I2C && VIDEO_V4L2
-       ---help---
+       help
 	 This is a Video4Linux2 sensor-level driver for the Micron
 	 mt9m114 1.3 Mpixel camera.
 
@@ -55,7 +55,7 @@ config VIDEO_ATOMISP_GC0310
 	tristate "GC0310 sensor support"
 	depends on ACPI
 	depends on I2C && VIDEO_V4L2
-	---help---
+	help
 	  This is a Video4Linux2 sensor-level driver for the Galaxycore
 	  GC0310 0.3MP sensor.
 
@@ -63,7 +63,7 @@ config VIDEO_ATOMISP_OV2680
        tristate "Omnivision OV2680 sensor support"
 	depends on ACPI
        depends on I2C && VIDEO_V4L2
-       ---help---
+       help
 	 This is a Video4Linux2 sensor-level driver for the Omnivision
 	 OV2680 raw camera.
 
@@ -79,7 +79,7 @@ config VIDEO_ATOMISP_LM3554
        tristate "LM3554 flash light driver"
 	depends on ACPI
        depends on VIDEO_V4L2 && I2C
-       ---help---
+       help
 	 This is a Video4Linux2 sub-dev driver for the LM3554
 	 flash light driver.
 
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/Kconfig b/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
index c6ee90b2d13f..536a731dba50 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
+++ b/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
@@ -1,12 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0
 config VIDEO_ATOMISP_OV5693
-       tristate "Omnivision ov5693 sensor support"
+	tristate "Omnivision ov5693 sensor support"
 	depends on ACPI
-       depends on I2C && VIDEO_V4L2
-       ---help---
-	 This is a Video4Linux2 sensor-level driver for the Micron
-	 ov5693 5 Mpixel camera.
+	depends on I2C && VIDEO_V4L2
+	help
+	  This is a Video4Linux2 sensor-level driver for the Micron
+	  ov5693 5 Mpixel camera.
 
-	 ov5693 is video camera sensor.
+	  ov5693 is video camera sensor.
 
-	 It currently only works with the atomisp driver.
+	  It currently only works with the atomisp driver.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
