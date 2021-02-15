Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECAF31BB31
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 15:37:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A460485EBF;
	Mon, 15 Feb 2021 14:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3sTK_E2QInH; Mon, 15 Feb 2021 14:37:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83FF285660;
	Mon, 15 Feb 2021 14:37:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BC6C1BF3BB
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 14:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 679CF600BB
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 14:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dmHvuHu62mX7 for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 14:37:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 9223B6F4AA; Mon, 15 Feb 2021 14:37:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 322E5600BB
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 14:36:59 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id r21so9147156wrr.9
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 06:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Do2tQb63bcwLymaHKmZud23cc7ctdAohkzhpdwoDJ3M=;
 b=TXZxOMoO6m73IpOCtYlqYKg1OilB6K/peHgJVxGleqgbHnI42xxKv59/DeT+8Oy0b6
 v+JDtsNBUfj1TErC15PmPLuLNd851IZrSBAMfWOHT6nE9lLJ6TudaRAt4eCVVEPKdjMO
 fpRBjigw+cGCTuVuysYHIR/lgN5wa5Off7KrEwvm5bCgxRmVdeEkwv9Vi0txsX1+tOlc
 WKUplZGX2OrsO1oTszq1iJR4sDGJfK8IzrMRIpMgmfVVM1FrRtyQTBOieso1Y5aKArUr
 ov0/wefloQJ0VZ6haNad/2aK3fXNQoFl2jG2dDIDpTralSZRptf5DxC2/kkdcbQxgXSX
 hqqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Do2tQb63bcwLymaHKmZud23cc7ctdAohkzhpdwoDJ3M=;
 b=SeEOLw6DQNzN7qS+jnYKyOqw4yo3fmNgHazowxpLcqO3wbDSqOG9+bd0BLvadVi0Gf
 xUwfeJdTLL+wPG04mK+quK1K9zJqekTIorMqiEQq4vGWA1eBLSSz7JEZFU19QvhRFOR8
 7+p9rJRsVJyjPX0MNvyw6vr1P6fl+fr+z9rYuO/SwPospbQ9/3eY/Yy7/GH5ARNSEZfY
 7EeMe8agh0w/EpoqfKtC/JZpoAzN7JuUVoZIfb8DhOaSW3gygKCz+fc9/2vYQSvVoWMx
 7TSZ+1azczFwISbRBupjBuFUmt5FAdOE8YvFo/dSvHM/vCXt+fwGM9g8WrNmwCdBRF7a
 liOw==
X-Gm-Message-State: AOAM532Yi3McIzaA4yd4pkiIfZDjY8lU5T5FyhmDigJ8yz6A9C1uQHyd
 SvH1QsrSk7ovzBbcUI6pAIU=
X-Google-Smtp-Source: ABdhPJyVrllvu0jnkSV2PuUg7VLVVBhu4Oxn4Yc5Gg9oPawn4jnCNuYSHdGS9M6Pp6GuOoFnsMt1QA==
X-Received: by 2002:a5d:444a:: with SMTP id x10mr12782905wrr.409.1613399817374; 
 Mon, 15 Feb 2021 06:36:57 -0800 (PST)
Received: from alaa ([197.57.74.212])
 by smtp.gmail.com with ESMTPSA id o13sm9274347wro.15.2021.02.15.06.36.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 06:36:56 -0800 (PST)
From: Alaa Emad <alaaemadhossney.ae@gmail.com>
To: mchehab+huawei@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH resend] staging: hikey9xx: hi6421-spmi-pmic: fixing 
Date: Mon, 15 Feb 2021 16:36:52 +0200
Message-Id: <20210215143652.14122-1-alaaemadhossney.ae@gmail.com>
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

This patch fix the following issues in hi6421-spmi-pmic.c file:

drivers/staging/hikey9xx/hi6421-spmi-pmic.c:51: WARNING: please, no space before tabs
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:52: WARNING: please, no space before tabs
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:53: WARNING: please, no space before tabs
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:69: WARNING: please, no space before tabs
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:180: CHECK: Alignment should match open parenthesis
drivers/staging/hikey9xx/hi6421-spmi-pmic.c:238: CHECK: Alignment should match open parenthesis


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
