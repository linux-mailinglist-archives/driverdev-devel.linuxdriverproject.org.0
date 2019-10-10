Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA8CD1EC5
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F19A844C6;
	Thu, 10 Oct 2019 03:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ca3_Gda8BXDh; Thu, 10 Oct 2019 03:09:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE1AC835CE;
	Thu, 10 Oct 2019 03:09:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 433321BF282
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 37830241C8
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f4hiZYQ13NRH for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:09:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 3388D23E8D
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:09:10 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id i76so2718777pgc.0
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 20:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Amx9YY+yziFlDI2hhYIbIlLCsPm7c25vcSV2f894tNQ=;
 b=SMfoNNo3c5r80CpNcKVMbXdH9ZW/ZHkwXp0WtL5H8WaHYQDyHzCQmSm8AQWH1gqYB3
 VD0QRl0GBE/RxX7YpOw4N4vIkMA1LErFS+IDTMDvALP0/y5/jbz+2S3yntmKhy4DHlQb
 I3djShrJHKd7rodpzFS44wrYhmHyH9r+TEQHYubQ6ODpV4DgqpRDRm73gM/kKYixbMOX
 /3cY8swUK9s4kT9aAxBlWaabn3BsZmTB7CY1993P/a6Qm8RdVyA9RfZKUFbPAuINhVjm
 IvSjGGupCnQhWgoaQH75/K0Bo6Jobn0meH4PAuEsFEe1zq3Ld1lFMbL8GPILAJ4ZVaQn
 s8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Amx9YY+yziFlDI2hhYIbIlLCsPm7c25vcSV2f894tNQ=;
 b=ANqrFQrSzzSE4ot4pOqYApcLJ/+ckMQW8QnN970Jjk/aqemDXGpHQOlF5RywJOnnWW
 0qvAuIzVUrXM9BapPbhsLLN+v4djXUP3mRZDIJSFHkpk+WX3mhyCU74MJ10jTUg8P20b
 EJmeYxU/5QFa0gEApBlSqY60wQgMXQWP4/dVLce2Bzf+WSu4UdmHZpTz+EMMaeBz9juI
 55aD5lNxIOYNJusplNwxxS+tPFMdIbSvCJ9jRkpkPhlyo0vV5hs+uBMacG04qVXlUQ0l
 H+7mDcL0JipvRY916g07U+rYLZU5s65qdKuBCj3YdQI01myNCWgxNJJ35ncK8BgR9KSv
 FHjw==
X-Gm-Message-State: APjAAAUwm1vufg9Ghzzy5oWfpOjIIVE18Q6k3XOXb4HaVSz0CXYVuk5g
 4NQTYwORdkQaUfafW2bH+So=
X-Google-Smtp-Source: APXvYqyHB0ErhnpjJiDC1J7saY0Xw3qRmfj5fFr6YNfGkuUZxiXUIGVA+qxb/QT1/jku6bfzbCZd5w==
X-Received: by 2002:a17:90a:35a5:: with SMTP id
 r34mr7846455pjb.40.1570676949648; 
 Wed, 09 Oct 2019 20:09:09 -0700 (PDT)
Received: from panther.hsd1.or.comcast.net ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id z23sm3385867pgu.16.2019.10.09.20.09.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 09 Oct 2019 20:09:08 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] KPC2000: kpc2000_spi.c: Fix style issues (line length)
Date: Wed,  9 Oct 2019 20:08:57 -0700
Message-Id: <1570676937-3975-1-git-send-email-chandra627@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resoved: "WARNING: line over 80 characters" from checkpatch.pl

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 3be33c4..ef78b6d 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -30,19 +30,19 @@
 #include "kpc.h"
 
 static struct mtd_partition p2kr0_spi0_parts[] = {
-	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
-	{ .name = "SLOT_1",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_2",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_3",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_0",  .size = 7798784,  .offset = 0,},
+	{ .name = "SLOT_1",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_2",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_3",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "CS0_EXTRA", .size = MTDPART_SIZ_FULL, .offset = MTDPART_OFS_NXTBLK},
 };
 
 static struct mtd_partition p2kr0_spi1_parts[] = {
-	{ .name = "SLOT_4",	.size = 7798784,		.offset = 0,                },
-	{ .name = "SLOT_5",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_6",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_7",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "CS1_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_4",  .size = 7798784,  .offset = 0,},
+	{ .name = "SLOT_5",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_6",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_7",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "CS1_EXTRA",  .size = MTDPART_SIZ_FULL, .offset = MTDPART_OFS_NXTBLK},
 };
 
 static struct flash_platform_data p2kr0_spi0_pdata = {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
