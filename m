Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 998A7D38DC
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 07:52:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96D4286E92;
	Fri, 11 Oct 2019 05:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNO3nG4hhtvQ; Fri, 11 Oct 2019 05:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5522786E96;
	Fri, 11 Oct 2019 05:52:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A03F21BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D09B20461
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUBoH73BQypD for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 05:52:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C9F6020399
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 05:52:04 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q12so5389822pff.9
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 22:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dqoYfCwSTXnrPu65kXilGlo/9dFlyTd0Onso9PljAiY=;
 b=ja7WMJKGVFeDsPWZbD3eP1exBEeovUc3M+srrumG9lw3FwxPytgJHMp2h+5wPHfp4P
 SdmJLxFcems22RCyDedMqYYNd9v9pGiObyicT27agrzJwjPRRGAjShWGQYXC9lpCLX41
 cXwHULtTCwFBrw788774u+HOOhU9GgLQgD/Nkei0T5fXFT41E2m28WF2i6933wTeE87R
 7Y/fskU+WTmOITSiHW2DGdQArGwT4p9dPsA7f01SKq+dqTmH+C2+vqPM3fq3957cdWaa
 w2IS4QTGqQd3x2vKDaPLGZrLSRGMm9bGoWY5u4yLOl1UgZG/pjqjyFvU8NQTQWtx+0PB
 PFLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dqoYfCwSTXnrPu65kXilGlo/9dFlyTd0Onso9PljAiY=;
 b=aWJ7LqytHxHXscsZX93vf0P8r2ZPO+uZkpHsWFA13tvqkJ5e5gCs2gvA/mWOPdGnvl
 hQJjgwNTIwdlRll58W3x1KKIxp4A9/FOR9p7GMYme4wHFLOCMdeUuSt/6238CzYB0kCf
 AModrK5pegF1Kt9fbMqM0cEsRS0Py+uBRSOm8CbWZM9tvHJKSVtGhwNt57GNBJsSZi/K
 Ly2MQ4vQG3DjmkfsRi6JfcbDxhKSFIXnK0uFghmvzayPibOz6NB+zDutB6cF+zbGvHp0
 c+fzCo7m7Yp25YhYP+X1P8fvr5ONkpu46cNxbukO4BvTQAMrRz0d8d+fcy0mM26xf+cV
 10tQ==
X-Gm-Message-State: APjAAAUKVi4L4iTDQO4Y+h6I8LnfGxm0F9rjRgyQJ0N1ZeWLzlYh5ga5
 NdoC9CYMy0IUMVfcP+7tdzE=
X-Google-Smtp-Source: APXvYqx8srCZR27sA18/99NHofX5apHWWzDqgtZO8ISutoswAwDwdHzSweW0oDlcLt0TqEls65/gcA==
X-Received: by 2002:a63:f44e:: with SMTP id p14mr14548314pgk.2.1570773124323; 
 Thu, 10 Oct 2019 22:52:04 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id i184sm10257782pge.5.2019.10.10.22.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 22:52:03 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/5] KPC2000: kpc2000_spi.c: Fix style issues (line length)
Date: Thu, 10 Oct 2019 22:51:51 -0700
Message-Id: <20191011055155.4985-1-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 michael.scheiderer@fau.de, fabian.krueger@fau.de, linux-kernel@vger.kernel.org,
 simon@nikanor.nu, dan.carpenter@oracle.com
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
index 3be33c450cab..81d79b116ce0 100644
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
+	{ .name = "SLOT_0",  .size = 7798784,  .offset = 0,                },
+	{ .name = "SLOT_1",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_2",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_3",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
+	{ .name = "CS0_EXTRA",  .size = MTDPART_SIZ_FULL,  .offset = MTDPART_OFS_NXTBLK},
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
+	{ .name = "CS1_EXTRA",  .size = MTDPART_SIZ_FULL,  .offset = MTDPART_OFS_NXTBLK},
 };
 
 static struct flash_platform_data p2kr0_spi0_pdata = {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
