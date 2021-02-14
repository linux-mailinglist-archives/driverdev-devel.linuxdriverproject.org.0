Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD93631B1C4
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 19:06:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A6A286818;
	Sun, 14 Feb 2021 18:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pFIjbg7UzxOQ; Sun, 14 Feb 2021 18:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C3C386888;
	Sun, 14 Feb 2021 18:06:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A11C21BF299
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 18:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D164858D3
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 18:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lr4cqO0cCiXO for <devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 18:06:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B616858B8
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 18:06:15 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id a16so3376057wmm.0
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 10:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iK9yYr+JABuVqPrNZO7z5D//Vz9aBBLMOlTC/uk3m6I=;
 b=DHBr9+PBs4YMHPq/LhqY2hDYb+7qDtCwQWnjwdjPG4hSfrWXkdB4MK3fIDSfAVCbRz
 nv9vMYAXFmQ9GVS3bvPkeSfZ8USMexRA0yCQdaycdr8uH+wMrOkExCSoC0jeaH/DS7eX
 DRJ/uUBj+4KBF947qyqIWoxGRvM2Rxc5nrNY3bn+jbJ8AUQJKdl0k5OGztBUPFCHBcwT
 TZTqbvgZcvLwFLduaG6WZo+7ZiN2/lE8A1Lq636S1315Bi3B0MkDy5g0khiW8jpndHr0
 bvCASRkdidXde/yMbNSlJAelgwx7592qQTuyOxq7TsI4YonpmtaDDnXxYlkUzQ5eA/QA
 SkUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iK9yYr+JABuVqPrNZO7z5D//Vz9aBBLMOlTC/uk3m6I=;
 b=fAhN+qA4EvkNXMAD1Fz1KtriHPKtZAIRlmdhnNnrvCizfwHIiDVZgW5tbQuf6J/mgH
 iowkeep+PJg3ISjjwp4Ltum4yQHLmi9HrAYVPWMtG/z+TS3upHk2ifdaszX6MTqgg0Tv
 KdDvbug89sqFzQjl5Q1o6Eegy5g3SNXdng3bM5Emlj+uzPPk09N00OVhazqEx+sCynj7
 bZZudd4UEl5EbAL3KIZHVgHKCCrMNA3xyx1/q/gABN+futICZmwGeoDfL+Ll/TZsRuXA
 /uNgeneIJEwbvpiNE9ESnPkGXEZDqFKXyA0qAh8g7xbVsy75q1d53whDwq5uS1INNzt7
 WZqQ==
X-Gm-Message-State: AOAM5319gHOXQNJTaD6NXNIaRZmuV2Q2/d14yi9i2hKs0KHHDAM7WBPj
 +7Je5YDqYjWQoy6JoGRYkVU=
X-Google-Smtp-Source: ABdhPJz851Gs652OcKUG4wxADms3P+y/eCKYDu2zBfpJ+QmygBdJ+0+jVIPepiwnlMPVUo7Qc2oFTQ==
X-Received: by 2002:a1c:b0c2:: with SMTP id z185mr10818017wme.67.1613325973902; 
 Sun, 14 Feb 2021 10:06:13 -0800 (PST)
Received: from alaa ([197.57.74.212])
 by smtp.gmail.com with ESMTPSA id d20sm20994413wrc.12.2021.02.14.10.06.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Feb 2021 10:06:13 -0800 (PST)
From: Alaa Emad <alaaemadhossney.ae@gmail.com>
To: mchehab+huawei@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/1] staging: hikey9xx: hi6421-spmi-pmic.c: removing
Date: Sun, 14 Feb 2021 20:06:08 +0200
Message-Id: <20210214180608.8890-1-alaaemadhossney.ae@gmail.com>
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

drivers/staging/hikey9xx/hi6421-spmi-pmic.c:51: WARNING: please, no space before tabs
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:52: WARNING: please, no space before tabs
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:53: WARNING: please, no space before tabs
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:69: WARNING: please, no space before tabs
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:180: CHECK: Alignment should match open parenthesis
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:238: CHECK: Alignment should match open parenthesis
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:281: WARNING: DT compatible string "hisilicon,hi6421-spmi" appears un-documented -- check ./Documentation/devicetree/bindings/
total: 0 errors, 5 warnings, 2 checks, 297 lines checked

Signed-off-by: Alaa Emad <alaaemadhossney.ae@gmail.com>

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
