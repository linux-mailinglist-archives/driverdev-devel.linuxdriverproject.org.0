Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2D2215BF
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:52:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DDC2D3142B;
	Fri, 17 May 2019 08:52:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NoN9I+8JH3mQ; Fri, 17 May 2019 08:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F1DDA313CB;
	Fri, 17 May 2019 08:52:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89C431BF32C
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D5798689B
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ARsty3AOJQX1 for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:51:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A79B486886
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:24 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F4D92166E;
 Fri, 17 May 2019 08:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083024;
 bh=pHtPuBjDBtGkgosK1wgBjTdKcmfjxMNypUqYPRbUO0A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G7g4tscWfS4I4wdvhs4PhtXzKRVXN+lNYtgRVur+lJvCrtYKKrcwLOT6XZDa1F45l
 ++WOWBvSyDbUzJXtuMu1QQGIxYEA7NcZGLwXTaVm4gf1uaBxN1Xo+30/1mehIoYGvH
 1D2UpdAV0zslx4g/HsMNwkfkBoAyi+DBuURRs7IE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 07/10] staging: kpc2000: move the spi driver out of its
 subdirectory
Date: Fri, 17 May 2019 10:49:42 +0200
Message-Id: <20190517084945.2810-9-gregkh@linuxfoundation.org>
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
it out of kpc_spi/ and rename it to the module name that we want the
file to build to, saving one more linking stage.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/Makefile                              | 2 +-
 .../staging/kpc2000/{kpc_spi/spi_driver.c => kpc2000_spi.c}   | 2 +-
 drivers/staging/kpc2000/kpc_spi/Makefile                      | 4 ----
 3 files changed, 2 insertions(+), 6 deletions(-)
 rename drivers/staging/kpc2000/{kpc_spi/spi_driver.c => kpc2000_spi.c} (99%)
 delete mode 100644 drivers/staging/kpc2000/kpc_spi/Makefile

diff --git a/drivers/staging/kpc2000/Makefile b/drivers/staging/kpc2000/Makefile
index 1e48e9df1329..99b1699a8b70 100644
--- a/drivers/staging/kpc2000/Makefile
+++ b/drivers/staging/kpc2000/Makefile
@@ -2,5 +2,5 @@
 
 obj-$(CONFIG_KPC2000) += kpc2000/
 obj-$(CONFIG_KPC2000_I2C) += kpc_i2c/
-obj-$(CONFIG_KPC2000_SPI) += kpc_spi/
+obj-$(CONFIG_KPC2000_SPI) += kpc2000_spi.o
 obj-$(CONFIG_KPC2000_DMA) += kpc_dma/
diff --git a/drivers/staging/kpc2000/kpc_spi/spi_driver.c b/drivers/staging/kpc2000/kpc2000_spi.c
similarity index 99%
rename from drivers/staging/kpc2000/kpc_spi/spi_driver.c
rename to drivers/staging/kpc2000/kpc2000_spi.c
index e84bd7015ecf..075ae4fafa7d 100644
--- a/drivers/staging/kpc2000/kpc_spi/spi_driver.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -27,7 +27,7 @@
 #include <linux/spi/flash.h>
 #include <linux/mtd/partitions.h>
 
-#include "../kpc.h"
+#include "kpc.h"
 
 static struct mtd_partition p2kr0_spi0_parts[] = {
 	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
diff --git a/drivers/staging/kpc2000/kpc_spi/Makefile b/drivers/staging/kpc2000/kpc_spi/Makefile
deleted file mode 100644
index 3018d200484f..000000000000
--- a/drivers/staging/kpc2000/kpc_spi/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-
-obj-m += kpc2000_spi.o
-kpc2000_spi-objs := spi_driver.o
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
