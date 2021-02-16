Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DCD31CAA9
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 13:43:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F254685250;
	Tue, 16 Feb 2021 12:43:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rS_0FVmLVlSi; Tue, 16 Feb 2021 12:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C491585249;
	Tue, 16 Feb 2021 12:43:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57AD91BF278
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 12:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 50895871C2
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 12:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z62uh6J67nmW for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 12:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 492B4871C0
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 12:43:01 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id n6so12763567wrv.8
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 04:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pepuqadm438MArye8Qz+J5Ooe4idQ3PxG+sdr05Ejxs=;
 b=jBWXD2Q8GnJBrWGxpLmNZ6OJKKUIHriasEH/udWvyXNCTU0EpZk01UKFcyMeAhzwkW
 5hEw1Lq2V+6I2w/MMd3qkTNTj7FRofzuelpT9CdASnMkOQOkK5rowh9Ac8olPUG4aqFQ
 /X9LyNc1tG4S+X+lFHuV/V3IjyPlY+CWkCKel2pquPI7RyMg28GQ5FWwRbSunEQ/Bxo1
 GB5ENs6Ewxy71Izc2Qv3FzB/ZvktFPXCsajSHw/dpeeQQBUa00wvQ5qwcyFntc4NS2vi
 GdNnd6Yh8mAiMeta2fjayXujXZgO7UX2PkUhps7wC2IjnEiNaquTZuMG7oKO0LFeThKv
 LD2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pepuqadm438MArye8Qz+J5Ooe4idQ3PxG+sdr05Ejxs=;
 b=TcMYLTVtWX8qm1sae0PMCBIOieCz2LYEJt6uzdiESEJ//zQ3cc94HtDQLbntrq/hNj
 pzoldgQdvON6cu3pw5PaIiBTuXH9hKfZL4wh2svSWQkth71iRdcQcxOnSQEkYeUBTQuH
 pBO3MzxR/n6VhMm3ENsDaije4ht5OK+OUUfZwJrkr0GdB7MiPACpAc6L9UV3gp+4ZB1K
 BLh1OgVnJ0vh0L+/63dCCX1mqOVPQBW93s/j5oSQMNhxVyL9Q4i0hIazHplko5y6Hahl
 70EsQoUNCI1EnDkA+YuumbBxLe7x0+5dwPIRoq4H4dAbVRt5fIAWd5216EJblqiBBhoA
 etpA==
X-Gm-Message-State: AOAM531CoV/C8oXtRY1YTtnlx4CUKTXVMml09JFsI1xRJnRlNIhfCr3U
 8jNTltPadsaWFYfaWhgoUHS/GcqA6xdvbw==
X-Google-Smtp-Source: ABdhPJxUwH4fcUcZgUz0cWJYFkO90RhfO5d6Anb3CTldI5QPBorcihA5qv0LImvJAoJlQDt6s4OclQ==
X-Received: by 2002:adf:e585:: with SMTP id l5mr23086855wrm.85.1613479379692; 
 Tue, 16 Feb 2021 04:42:59 -0800 (PST)
Received: from alaa ([197.57.74.212])
 by smtp.gmail.com with ESMTPSA id v204sm3557887wmg.38.2021.02.16.04.42.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 04:42:59 -0800 (PST)
From: Alaa Emad <alaaemadhossney.ae@gmail.com>
To: mchehab+huawei@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: hikey9xx: fix styling issues
Date: Tue, 16 Feb 2021 14:42:55 +0200
Message-Id: <20210216124255.9353-1-alaaemadhossney.ae@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Alaa Emad <alaaemadhossney.ae@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In hi6421-spmi-pmic.c, there are some warnings and Check:

"WARNING: please, no space before tabs" in lines 51,52,53 and 69.
"CHECK: Alignment should match open parenthesis" in lines 180 and 238.

Signed-off-by: Alaa Emad <alaaemadhossney.ae@gmail.com>
---
Changes in v2:
  - Make the commit message more clearer.
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 9c5e113e1a81..626140cb96f2 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -48,9 +48,9 @@ enum hi6421_spmi_pmic_irq_list {
 /*
  * The IRQs are mapped as:
  *
- * 	======================  =============   ============	=====
- *	IRQ			MASK REGISTER 	IRQ REGISTER	BIT
- * 	======================  =============   ============	=====
+ *	======================  =============   ============	=====
+ *	IRQ			MASK REGISTER	IRQ REGISTER	BIT
+ *	======================  =============   ============	=====
  *	OTMP			0x0202		0x212		bit 0
  *	VBUS_CONNECT		0x0202		0x212		bit 1
  *	VBUS_DISCONNECT		0x0202		0x212		bit 2
@@ -66,7 +66,7 @@ enum hi6421_spmi_pmic_irq_list {
  *	SIM0_HPD_F		0x0203		0x213		bit 3
  *	SIM1_HPD_R		0x0203		0x213		bit 4
  *	SIM1_HPD_F		0x0203		0x213		bit 5
- * 	======================  =============   ============	=====
+ *	======================  =============   ============	=====
  */
 #define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
 #define SOC_PMIC_IRQ0_ADDR		0x0212
@@ -177,7 +177,7 @@ static void hi6421_spmi_pmic_irq_init(struct hi6421_spmi_pmic *ddata)
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++)
 		regmap_write(ddata->regmap, SOC_PMIC_IRQ_MASK_0_ADDR + i,
-					HISI_MASK);
+			     HISI_MASK);
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
 		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &pending);
@@ -235,7 +235,7 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 		return -ENOMEM;
 
 	ddata->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
-					     &hi6421_spmi_domain_ops, ddata);
+					      &hi6421_spmi_domain_ops, ddata);
 	if (!ddata->domain) {
 		dev_err(dev, "Failed to create IRQ domain\n");
 		return -ENODEV;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
