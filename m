Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E23215BD
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:52:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37C74877D7;
	Fri, 17 May 2019 08:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIzgoHTo-0JM; Fri, 17 May 2019 08:52:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E74786FFD;
	Fri, 17 May 2019 08:52:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46FDF1BF32C
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 323FE86892
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C5bbSh5Xy5IL for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:51:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 51BC18688C
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A92FF21473;
 Fri, 17 May 2019 08:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083027;
 bh=iRVxRC+D8b6+xI8wm4iHxGTPHZrwToBq7jE0XjdPSxs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i1953Gkp7FfaRpm9atcIJRvj8Kf1EkqAirjVelgGUhKI7Cove5geuvc+3Y4gG5GMQ
 2RbZzFBqIgogT07zODqQQVgv29Tsp3IIO8X7Qs16zTWMULDFtEYxi1j5vg1w2iFHJ5
 26WdnM9GL4Bs2xaIK2kxI80hYvnVtGwRfiOavxQI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 08/10] staging: kpc2000: move the i2c driver out of its
 subdirectory
Date: Fri, 17 May 2019 10:49:43 +0200
Message-Id: <20190517084945.2810-10-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517084945.2810-1-gregkh@linuxfoundation.org>
References: <20190517084945.2810-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is no need for a subdirectory for just a single .c file.  So move
it out of kpc_i2c/ and rename it to the module name that we want the
file to build to, saving one more linking stage.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/Makefile                              | 2 +-
 .../staging/kpc2000/{kpc_i2c/i2c_driver.c => kpc2000_i2c.c}   | 2 +-
 drivers/staging/kpc2000/kpc_i2c/Makefile                      | 4 ----
 3 files changed, 2 insertions(+), 6 deletions(-)
 rename drivers/staging/kpc2000/{kpc_i2c/i2c_driver.c => kpc2000_i2c.c} (99%)
 delete mode 100644 drivers/staging/kpc2000/kpc_i2c/Makefile

diff --git a/drivers/staging/kpc2000/Makefile b/drivers/staging/kpc2000/Makefile
index 99b1699a8b70..d15ed49807d5 100644
--- a/drivers/staging/kpc2000/Makefile
+++ b/drivers/staging/kpc2000/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_KPC2000) += kpc2000/
-obj-$(CONFIG_KPC2000_I2C) += kpc_i2c/
+obj-$(CONFIG_KPC2000_I2C) += kpc2000_i2c.o
 obj-$(CONFIG_KPC2000_SPI) += kpc2000_spi.o
 obj-$(CONFIG_KPC2000_DMA) += kpc_dma/
diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc2000_i2c.c
similarity index 99%
rename from drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
rename to drivers/staging/kpc2000/kpc2000_i2c.c
index 0fb068b2408d..8f9cf8755d48 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -22,7 +22,7 @@
 #include <linux/rwsem.h>
 #include <linux/delay.h>
 #include <linux/i2c.h>
-#include "../kpc.h"
+#include "kpc.h"
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Matt.Sickler@Daktronics.com");
diff --git a/drivers/staging/kpc2000/kpc_i2c/Makefile b/drivers/staging/kpc2000/kpc_i2c/Makefile
deleted file mode 100644
index 63a6ce4b8e03..000000000000
--- a/drivers/staging/kpc2000/kpc_i2c/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-
-obj-m := kpc2000_i2c.o
-kpc2000_i2c-objs := i2c_driver.o
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
