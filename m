Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D901B22B270
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 17:23:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31E8688498;
	Thu, 23 Jul 2020 15:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZPpbWmSM0W3; Thu, 23 Jul 2020 15:23:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01A3688460;
	Thu, 23 Jul 2020 15:23:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B9E31BF2F2
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 15:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0B34D204AB
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 15:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ljxYjypL-SLV for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 15:22:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 36B6520480
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 15:22:56 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id 72so2707083ple.0
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 08:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aHzoQJgUGIpE9BjMSQwyAvES0B7tP6s7ctsl+J7U1QE=;
 b=rBxzxaCXIxtCvDsgE9c/RvUvBSHqQTwRAv0vgnMVLkwGyKVDuYgerm8XTzK46Z7GvW
 OP6B+KrOS0NqEn8E7gkMZG36gefHmleOUbfbD406kGUCbCrsF9BDYYfFMXQQ9BSgOkTW
 36vvlTI17ZC1CBi+/LpUpOU1crzX89A6b5AgtNmKMvucKZl5PP8eTlAvBFRVBLs3BrcM
 tEuJXg1zdlE+KTGwQwoimEo+47NLPuYzTGTYVsexvCUZJ1shjKoQL/zTpqT0raGU5HJc
 72ap5F2vvHuN02VaosshlFp2B5T16Rvn41FVkXRb73P+4B8SpKrj3PHmP3maFYYFRVvY
 b0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aHzoQJgUGIpE9BjMSQwyAvES0B7tP6s7ctsl+J7U1QE=;
 b=XjUitXD+WSuQfM8jlcm3elqm24KKF7RojPsRHIU7Du3ZH8Suys1pMKLNBTw1pjq9jV
 6yAgkOm+HhzbWicSye0umNECGa4iboZvfA1ABzFrOSEr9Io4oTYC5xsmxtoRSGs4HAuG
 iyRcDD2TOwJxuWHWxCP7wYfLx4Hs/t04sEf1XcudFZJkk4qtLybAQ14YH4DaoMo9VQi+
 NekSXjPLvuiQY0INqmISiQhv69bc0SQRMo2O6KnW6Mk65toXf4fbWZflJ8PQmwOaE5KN
 2q0qAg8x5FQJSsLWN+kXjWkeT4hSpUaMVqYPdUf3hyzeXVtjE2LLy9nZOZYbLgb1sXBz
 bnUA==
X-Gm-Message-State: AOAM531tIqv+pArYo0GYValx1VALAcfjX2FzsuXhuU9Ho0wTRfj7B3oq
 JLfziecxIxJFDyuj9VM8jdY=
X-Google-Smtp-Source: ABdhPJzxBOxzuT57VJ9D5Xax9m5kHRDBwoUV4ADGiy1GtEfFPiBcC57hYFE3p7ZjTv1YE+bFEuj7YQ==
X-Received: by 2002:a17:90a:6d96:: with SMTP id
 a22mr855185pjk.26.1595517775677; 
 Thu, 23 Jul 2020 08:22:55 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id y7sm3235459pgk.93.2020.07.23.08.22.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 08:22:54 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: marvin24@gmx.de,
	gregkh@linuxfoundation.org,
	p.zabel@pengutronix.de
Subject: [PATCH] change slave occurence to secondary everywhere
Date: Thu, 23 Jul 2020 20:45:13 +0530
Message-Id: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>,
 devel@driverdev.osuosl.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

changed usage of slave (deprecated) to secondary

Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
---
 drivers/staging/nvec/nvec.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 360ec0407740..5d7b66719a39 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 	return IRQ_HANDLED;
 }
 
-static void tegra_init_i2c_slave(struct nvec_chip *nvec)
+static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
 {
 	u32 val;
 
@@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
 }
 
 #ifdef CONFIG_PM_SLEEP
-static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
+static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
 {
 	disable_irq(nvec->irq);
 	writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
@@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, nvec);
 	nvec->dev = dev;
 
-	if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
+	if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {
 		dev_err(dev, "no i2c address specified");
 		return -ENODEV;
 	}
@@ -839,7 +839,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
 	}
 	disable_irq(nvec->irq);
 
-	tegra_init_i2c_slave(nvec);
+	tegra_init_i2c_secondary(nvec);
 
 	/* enable event reporting */
 	nvec_toggle_global_events(nvec, true);
@@ -913,7 +913,7 @@ static int nvec_suspend(struct device *dev)
 	if (!err)
 		nvec_msg_free(nvec, msg);
 
-	nvec_disable_i2c_slave(nvec);
+	nvec_disable_i2c_secondary(nvec);
 
 	return 0;
 }
@@ -923,7 +923,7 @@ static int nvec_resume(struct device *dev)
 	struct nvec_chip *nvec = dev_get_drvdata(dev);
 
 	dev_dbg(nvec->dev, "resuming\n");
-	tegra_init_i2c_slave(nvec);
+	tegra_init_i2c_secondary(nvec);
 	nvec_toggle_global_events(nvec, true);
 
 	return 0;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
