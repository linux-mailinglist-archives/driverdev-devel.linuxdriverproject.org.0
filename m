Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F32314863
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 06:58:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A4E06F892
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 05:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q8L1hS4plxGF for <lists+driverdev-devel@lfdr.de>;
	Tue,  9 Feb 2021 05:58:56 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 72B5A6F897; Tue,  9 Feb 2021 05:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 656526F61E;
	Tue,  9 Feb 2021 05:58:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 749921BF2A7
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 05:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6D68A86BA5
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 05:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xgtACBrvhqt for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 05:58:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 375D386BA4
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 05:58:22 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id x136so4651513pfc.2
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 21:58:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ODatsDn099m1+CSNXdXnLWPiY9mo47t7WiVoBOMsqJM=;
 b=ITYn8yeve6X0LP8vu1azTHZL3fHOPrCmhckFGudStojQpknzAJs7D4QKaaiwLbnfq8
 Dj+lPpahBquRa6CCNF/Q0GHGPWcD1wzhZrCHR2NruaNKwH74xQLQd37e/SxHh27NCbzK
 IsKQPUTN/xTEoOva05nzUfFtFxV2Pn31i8avuqrm4c1outYc2EZtl37HWGZApF8imT1z
 Yz1nQaLlY/idr21LV+GZ4zUuaAwmuTUFcvDfmR1js4XuPSBHg0z0z98h1Z+dhFKQ5dwl
 4xbFNjV2c7X9Gh7mzEYvQvoUxOLp6qFr3mvZKFKRE7lWz1f5B8RTMlmaSysBDS4tztcA
 AacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ODatsDn099m1+CSNXdXnLWPiY9mo47t7WiVoBOMsqJM=;
 b=Sdo5R7NtMHjI+gaWYQSWRWzgHXV51X4Pj4096vko4nZ4TJ991szH3/mb/4dmT/JOi+
 l4jS5EoM1L03N6XxuTR63ECuIyBHFk0nfcu5/07n5yhmGC6dnPdm0aU6U57dhbsVGY1o
 bD0lv6QVhll3RzQGpY0FuVy7hOxzsY0qrBUEM6TDl0GisMaBHuasCOMUztxwZQjWiwCC
 rauSkltmkuhFzl0eJkrFTCu9NySyQbd7qQ6xHXDkU87oa93Dll9lZUSRG6RndeZel4sB
 BoTvbRpvoUonnXFi878gF+oRnLQcCamClMyIpAqQ7zhDnDkfGZwPkUk1kYQw3CZ8XHZA
 Q5Ig==
X-Gm-Message-State: AOAM530YsoqBffUt4p7ZE4DNmw8djAxI7R11CCi77kFcUk/SH9im/Gdz
 5slAMzJW+cXy1YWcP1tSrmk=
X-Google-Smtp-Source: ABdhPJwlw20G9EgFTRzEe7KMBF1IQKc7axH9HOzMkh4Imf/afuWmvnWiFLIH/uTBa70nMl8UMOxSkw==
X-Received: by 2002:a63:ff09:: with SMTP id k9mr21025829pgi.175.1612850301680; 
 Mon, 08 Feb 2021 21:58:21 -0800 (PST)
Received: from localhost.localdomain ([122.164.88.77])
 by smtp.gmail.com with ESMTPSA id v4sm1062095pff.156.2021.02.08.21.58.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 21:58:21 -0800 (PST)
From: Atul Gopinathan <leoatul12@gmail.com>
To: mchehab+huawei@kernel.org
Subject: [PATCH] staging: hikey9xx: fix checkpatch error and warning
Date: Tue,  9 Feb 2021 11:27:04 +0530
Message-Id: <20210209055703.7211-1-leoatul12@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Atul Gopinathan <leoatul12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following types of checkpatch error and warning:

ERROR: code indent should use tabs where possible
WARNING: struct phy_ops should normally be const

Signed-off-by: Atul Gopinathan <leoatul12@gmail.com>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c     | 2 +-
 drivers/staging/hikey9xx/hi6421v600-regulator.c | 2 +-
 drivers/staging/hikey9xx/phy-hi3670-usb3.c      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 2301f4fcd48d..9c5e113e1a81 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -177,7 +177,7 @@ static void hi6421_spmi_pmic_irq_init(struct hi6421_spmi_pmic *ddata)
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++)
 		regmap_write(ddata->regmap, SOC_PMIC_IRQ_MASK_0_ADDR + i,
-				        HISI_MASK);
+					HISI_MASK);
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
 		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &pending);
diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index c801bb840962..f6a14e9c3cbf 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -106,7 +106,7 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 
 	ret = regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
 				 rdev->desc->enable_mask,
-			         rdev->desc->enable_mask);
+				 rdev->desc->enable_mask);
 
 	/* Avoid powering up multiple devices at the same time */
 	usleep_range(rdev->desc->off_on_delay, rdev->desc->off_on_delay + 60);
diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index 8918f3665f8e..e7e579ce0302 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -585,7 +585,7 @@ static int hi3670_phy_exit(struct phy *phy)
 	return ret;
 }
 
-static struct phy_ops hi3670_phy_ops = {
+static const struct phy_ops hi3670_phy_ops = {
 	.init		= hi3670_phy_init,
 	.exit		= hi3670_phy_exit,
 	.owner		= THIS_MODULE,
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
