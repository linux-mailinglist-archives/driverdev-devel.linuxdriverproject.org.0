Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C78722BD33
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 06:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3E8286D48;
	Fri, 24 Jul 2020 04:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 00lqsnk1AGK9; Fri, 24 Jul 2020 04:53:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A24A286D42;
	Fri, 24 Jul 2020 04:53:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14DCB1BF860
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 04:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0F0E286D48
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 04:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMu5pGOUOnay for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 04:53:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9FF0086D42
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 04:53:40 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t6so3839353plo.3
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 21:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vnj+Uyzmp5pb8duKT3JolAPWjR+RTE2Sq0gDvI4I3R4=;
 b=S+/nB7qPHjGGl3R0LyoEDW/tXSrt0DHvXw0pqQbPP44dsgWFYvi85NG/XcWtLQ7vi+
 Gv6MIWaYF9iZnkkceFDuZrZid5BddGQR1fcPHq+CHQv7RqcLXOU9i94OMqyJIuQ9I6tg
 2y+9S5/alGRm0Mxu/KV2gqTM7Qu2Z5booGgNWuwZ+H2jy3/uHU1H5SyjJUeuY6sqKMU/
 PrKvh4ggB/p9UDzZ55ICE8Ij19BdZAE/iNm7NokxQ60Rh3sS5KIlG3hgXX5zjPpkr6tt
 uyUk6ICskG/YcHJEL9IPcXtyA0Ykz3pO/fBzxhlYLEhuMq21iUvxaYVSr4sRzL7wCkr5
 46NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vnj+Uyzmp5pb8duKT3JolAPWjR+RTE2Sq0gDvI4I3R4=;
 b=Cgb5nBaXobQ+ngcBQW47F//rMk0LSPPEkRNRy/UZQbNkwemxH3eIBfl5GpBFebTF9r
 lNkkw2bZGiEwx+m2u83YYiJGKUR8BWoV9TCgYlGOiLUFil6GSk1sM5FdoNca/VfEdVoG
 0hXhtJyPFMI6zTjGd5hRBUiSJ+aIyivnfcK3QSZExUn7yNUN7eKC8NEWg5nR0OpkxFn8
 nEac6alxW3fQhuU8aj9upu8Thnv1xhDKK27D4PT5KjyOlu/5A/L8EQBFlKRE58N5vO2C
 ofR7bKiwfggKb5jaIg4EF9wwTrXk6BeeMjIkyZZUrT4jO16eF9ypADfsRh9AVH0L7r2j
 0T4Q==
X-Gm-Message-State: AOAM532XycFyfI1eyqdJtPHBRmrjDWITVImboNIQB379h1jwjKnXibY9
 7Jnc+WdkE2ej/K9Belv3WpA=
X-Google-Smtp-Source: ABdhPJxw4KWNM6SrQL+hQsCgdhiMj+swhykj3eF7zpmRkE1N69AOBCIABxr04v8JygQSl1zrhHnxEA==
X-Received: by 2002:a17:90b:243:: with SMTP id
 fz3mr3635592pjb.17.1595566420134; 
 Thu, 23 Jul 2020 21:53:40 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id i125sm4950343pgd.21.2020.07.23.21.53.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 21:53:39 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: marvin24@gmx.de,
	gregkh@linuxfoundation.org,
	p.zabel@pengutronix.de
Subject: [PATCH v3] staging: nvec: change usage of slave to secondary
Date: Fri, 24 Jul 2020 10:06:34 +0530
Message-Id: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
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
v3: change patch subject, add version history
v2: add changelog text in body of mail
v1: fix style issues by changing usage of slave to secondary

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
