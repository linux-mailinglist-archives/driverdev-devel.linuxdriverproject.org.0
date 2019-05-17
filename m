Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 941AE215B6
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94F0231420;
	Fri, 17 May 2019 08:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mC7AO3fpmWmU; Fri, 17 May 2019 08:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A26FA241A8;
	Fri, 17 May 2019 08:51:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C9AB1BF32C
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79EF722844
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qbFdRrpeT30C for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:50:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id F1355227FC
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DE0D21473;
 Fri, 17 May 2019 08:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083021;
 bh=XkOu6vjNgqcEPFlgonKq1sSXUkrXyDjFrmvZIEBsY+k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ADXq+WkJdZF8LajWDF5qZHx2pJH3agvU/ra6JJje4zeTQxEj3TuPpdsv6ywGxkoCy
 mo5ZUwaKBZorps/HXE9APZ/wLGN7IZjHNczLIiRizEPkRjU9AgWn1YD5EEQ5HucCA7
 nW6Gdrxja7ICRyWzAWOQF9vSDqzakLfcdoPprQPc=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 06/10] staging: kpc2000: remove spi_parts.h
Date: Fri, 17 May 2019 10:49:41 +0200
Message-Id: <20190517084945.2810-8-gregkh@linuxfoundation.org>
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

The structures defined in spi_parts.h belong in the .c file that uses
it.  So move it directly into spi_driver.c to make things simpler to
manage.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc_spi/spi_driver.c | 43 +++++++++++++++++-
 drivers/staging/kpc2000/kpc_spi/spi_parts.h  | 48 --------------------
 2 files changed, 42 insertions(+), 49 deletions(-)
 delete mode 100644 drivers/staging/kpc2000/kpc_spi/spi_parts.h

diff --git a/drivers/staging/kpc2000/kpc_spi/spi_driver.c b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
index 86df16547a92..e84bd7015ecf 100644
--- a/drivers/staging/kpc2000/kpc_spi/spi_driver.c
+++ b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
@@ -28,8 +28,49 @@
 #include <linux/mtd/partitions.h>
 
 #include "../kpc.h"
-#include "spi_parts.h"
 
+static struct mtd_partition p2kr0_spi0_parts[] = {
+	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
+	{ .name = "SLOT_1",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_2",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_3",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
+};
+static struct mtd_partition p2kr0_spi1_parts[] = {
+	{ .name = "SLOT_4",	.size = 7798784,		.offset = 0,                },
+	{ .name = "SLOT_5",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_6",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_7",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "CS1_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
+};
+
+static struct flash_platform_data p2kr0_spi0_pdata = {
+	.name =		"SPI0",
+	.nr_parts =	ARRAY_SIZE(p2kr0_spi0_parts),
+	.parts =	p2kr0_spi0_parts,
+};
+static struct flash_platform_data p2kr0_spi1_pdata = {
+	.name =		"SPI1",
+	.nr_parts =	ARRAY_SIZE(p2kr0_spi1_parts),
+	.parts =	p2kr0_spi1_parts,
+};
+
+static struct spi_board_info p2kr0_board_info[] = {
+	{
+		.modalias =		"n25q256a11",
+		.bus_num =		1,
+		.chip_select =		0,
+		.mode =			SPI_MODE_0,
+		.platform_data =	&p2kr0_spi0_pdata
+	},
+	{
+		.modalias =		"n25q256a11",
+		.bus_num =		1,
+		.chip_select =		1,
+		.mode =			SPI_MODE_0,
+		.platform_data =	&p2kr0_spi1_pdata
+	},
+};
 
 /***************
  * SPI Defines *
diff --git a/drivers/staging/kpc2000/kpc_spi/spi_parts.h b/drivers/staging/kpc2000/kpc_spi/spi_parts.h
deleted file mode 100644
index 33e62acc5e08..000000000000
--- a/drivers/staging/kpc2000/kpc_spi/spi_parts.h
+++ /dev/null
@@ -1,48 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-#ifndef __KPC_SPI_SPI_PARTS_H__
-#define __KPC_SPI_SPI_PARTS_H__
-
-static struct mtd_partition p2kr0_spi0_parts[] = {
-    { .name = "SLOT_0",    .size = 7798784,          .offset = 0,                 },
-    { .name = "SLOT_1",    .size = 7798784,          .offset = MTDPART_OFS_NXTBLK },
-    { .name = "SLOT_2",    .size = 7798784,          .offset = MTDPART_OFS_NXTBLK },
-    { .name = "SLOT_3",    .size = 7798784,          .offset = MTDPART_OFS_NXTBLK },
-    { .name = "CS0_EXTRA", .size = MTDPART_SIZ_FULL, .offset = MTDPART_OFS_NXTBLK }
-};
-static struct mtd_partition p2kr0_spi1_parts[] = {
-    { .name = "SLOT_4",    .size   = 7798784,          .offset = 0,                 },
-    { .name = "SLOT_5",    .size   = 7798784,          .offset = MTDPART_OFS_NXTBLK },
-    { .name = "SLOT_6",    .size   = 7798784,          .offset = MTDPART_OFS_NXTBLK },
-    { .name = "SLOT_7",    .size   = 7798784,          .offset = MTDPART_OFS_NXTBLK },
-    { .name = "CS1_EXTRA", .size   = MTDPART_SIZ_FULL, .offset = MTDPART_OFS_NXTBLK }
-};
-
-static struct flash_platform_data p2kr0_spi0_pdata = {
-    .name = "SPI0",
-    .nr_parts = ARRAY_SIZE(p2kr0_spi0_parts),
-    .parts = p2kr0_spi0_parts,
-};
-static struct flash_platform_data p2kr0_spi1_pdata = {
-    .name = "SPI1",
-    .nr_parts = ARRAY_SIZE(p2kr0_spi1_parts),
-    .parts = p2kr0_spi1_parts,
-};
-
-static struct spi_board_info p2kr0_board_info[] = {
-    {
-        .modalias = "n25q256a11",
-        .bus_num = 1,
-        .chip_select = 0,
-        .mode = SPI_MODE_0,
-        .platform_data = &p2kr0_spi0_pdata
-    },
-    {
-        .modalias = "n25q256a11",
-        .bus_num = 1,
-        .chip_select = 1,
-        .mode = SPI_MODE_0,
-        .platform_data = &p2kr0_spi1_pdata
-    },
-};
-
-#endif
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
