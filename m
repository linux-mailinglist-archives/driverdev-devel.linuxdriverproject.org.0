Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D0D22B203
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 16:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2ADAC89203;
	Thu, 23 Jul 2020 14:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NFOsX4Fg+MH5; Thu, 23 Jul 2020 14:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B217891F5;
	Thu, 23 Jul 2020 14:59:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A50C1BF35F
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 14:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 26E0286F89
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 14:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GXtKlxmAxBPM for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 14:59:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9ADDC86F86
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 14:59:06 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id b92so3177163pjc.4
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 07:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TYn+YXXcyOqmWgDocw8+U+2dd8XHQMqRU/5NyZcvlOE=;
 b=VGAFYwsKTuqWCzSgLnpJdzSmbzdNGsyPXc0Ekr6eo1fIbIs9jpeqtJANPQhuaitz+D
 v3hPP8KPqntkL8itftORDWK1pRn5z3h8PI10+ZHzRvPSwz26ziJI+qtD57A/BhtsYjHy
 20a2i7jEBepleWsAMIotS6L/Nj02zgf3c74wTdi9BtSKmfNjsyaK9Qy9QDTtbcmbBuS+
 mXu1HBgu6b5Ynfh+XguFTc8XO+4IpHR6K5RGE/71hC5V1Q4BWYaAm8P50GWd9qtW3w+p
 zqECxDnyGsHhKYzkYKZgXVhFH6UVov/zYOhvoh9vdaIQeBdf4Li1TQ51AyBAWUQchyWS
 DIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TYn+YXXcyOqmWgDocw8+U+2dd8XHQMqRU/5NyZcvlOE=;
 b=nStnHwAe4H83wk3xLZOygy8EtwqlN9CwUVlHDE8QgxsuxYx1mWXAJb6tFsMZvillMa
 AOrBLRUbF7Wd34F4SldxJDhJLCUmBsXkt5tG40TTVtYOitjHIpvKuMXBkbD+jgGuqq5V
 dQdBtDJDp2GIqrw65A7CZC9V1hwN+zj3Q7ulLSv19FGsVvNaUVwYHWothd7GGH7lgJhu
 XlP+MpIaxv1tYfxejrzQBKTPUHZoY/jb0KurfnTe4YmRQWFBextj7Qx7fYqgvlnASPW7
 QV7SyWbyuyKM8bF/rQtHCqA6uyDwXKZTyUCtQFRzsOdYAY2QkttywZgrkE4/SAbZJnti
 Hr2g==
X-Gm-Message-State: AOAM531zSN4SGOJwJRwronw8y16BzI4CNSURHW1HK0IOg10LyptxYr6z
 cirK8BkZxXmVUE18DNLnUg0=
X-Google-Smtp-Source: ABdhPJxfCJyP9hYdnyR8Fig8OPGtGM8KyUUBvOD4O4UZ3PDS3IfCtKDp74b8QDzWy6kBrfzhWfskRQ==
X-Received: by 2002:a17:90a:cf01:: with SMTP id
 h1mr782426pju.234.1595516346008; 
 Thu, 23 Jul 2020 07:59:06 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id s68sm3193256pjb.38.2020.07.23.07.59.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 07:59:05 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: marvin24@gmx.de,
	gregkh@linuxfoundation.org,
	p.zabel@pengutronix.de
Subject: [PATCH] change slave occurence to secondary everywhere
Date: Thu, 23 Jul 2020 20:28:11 +0530
Message-Id: <20200723145811.21109-1-bharadwaj.rohit8@gmail.com>
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
