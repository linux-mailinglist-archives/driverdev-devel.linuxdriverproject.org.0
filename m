Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B337731AB31
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 13:09:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 95CBD8763B;
	Sat, 13 Feb 2021 12:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CAy2f8usjAub; Sat, 13 Feb 2021 12:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AABA8756F;
	Sat, 13 Feb 2021 12:09:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C9B91BF2B4
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 12:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95BC28697E
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 12:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OUYJ5og-GN3X for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 12:09:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E04D867C6
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 12:09:03 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id t2so1149015pjq.2
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 04:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oO7vMSW0bfsJGTS5Qqt+bC8w+pkLjeLaJvk90+zKPLE=;
 b=GoQUPu9CaYvcu1GOJ9LBhCTwuu/1xBbtZrbhMjLjs9jVEJCDnivL4IPsVqJIvCB2ik
 wqq8Fs2UP/ucjrrtlqPPqNSSNunw47guJ0vj5RP6Yktrxk7VHaJoIkLDeUl6Bt06VDHl
 W0lsjD4+QUL9C0UUn2NUJVQsXgGoFMihrA0X7gFgSSNmqMAFwr1MeJpikLrBjqyf8fSR
 izp9r9X+jEpiXFt3Pt98Aoa8GXiOprlupuuIIWc5DD+Z07rjrylblkEPcFPf3gceSacJ
 8Y52f9Tk+q3npTZFwUIyMOK54OQ/B8sQU9nXLd0bx4Op5aDlPyaMM8bhrxY7FUkA7OYK
 OKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oO7vMSW0bfsJGTS5Qqt+bC8w+pkLjeLaJvk90+zKPLE=;
 b=at2FUdu9yXZHmIDinCpTdkA32/QuXko+/hyHPzZZcmCJSHU7JApxPk0iLIK2SS/hRm
 i2DAzdR7Mmm7VAWiqtMM0fuVhZDSS+jixoXETDevF5xa49JREUFFOX8T56exgDqNmo98
 tV4LlU7ce7Xl+0RGsXa2qkmiOvG/ZGMykdpD6v9NPhiQP42MJIBry6rpFsbsOpIk6OuF
 BqnZAwxCOTrouPgHX2z5RyQrmGpNuKvNB+06jDxy7BH5zTsKWn3iXixsHMi0BFHhBVSq
 aEAy2TLstvLZG2rxYteEOLEgkfxUVjOy+S+zGkboLxlGOAj7MEApV0TEaEeZmV2yHcaK
 3gxA==
X-Gm-Message-State: AOAM533qv0yVZIDUqx5xB9o7jI33KRIA3CKHUJLoDoCGKdpEWVgSFC2B
 Mi12/dczzH+XM8HcJI4O5rE=
X-Google-Smtp-Source: ABdhPJzUs5hnvIVxNPFD/RV2FAt44Ws9Cuiv/FRwlwtBLt8MnWLlpM+onpPR4m/5Qf7kmKeUk8JSxg==
X-Received: by 2002:a17:902:e309:b029:e2:86e9:cc75 with SMTP id
 q9-20020a170902e309b02900e286e9cc75mr6532272plc.59.1613218143063; 
 Sat, 13 Feb 2021 04:09:03 -0800 (PST)
Received: from localhost.localdomain ([2405:201:5c0a:f013:e601:5200:b1d8:3ee7])
 by smtp.gmail.com with ESMTPSA id gt2sm154470pjb.0.2021.02.13.04.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Feb 2021 04:09:02 -0800 (PST)
From: Mukul Mehar <mukulmehar02@gmail.com>
To: mchehab+huawei@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH]: staging: hikey9xx: Fix alignment of function parameters
Date: Sat, 13 Feb 2021 17:35:59 +0530
Message-Id: <20210213120556.73579-1-mukulmehar02@gmail.com>
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
 Mukul Mehar <mukulmehar02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl check:

CHECK: Alignment should match open parenthesis

Signed-off-by: Mukul Mehar <mukulmehar02@gmail.com>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 9c5e113e1a81..4ebcfea9f3bf 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
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
