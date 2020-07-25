Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 877DB22D593
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 08:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 72B2C207A6;
	Sat, 25 Jul 2020 06:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PIpovvu2sqAm; Sat, 25 Jul 2020 06:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79A3520764;
	Sat, 25 Jul 2020 06:49:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 950471BF82F
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 06:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8DFC28874E
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 06:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yAihK5SgY4Fo for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 06:49:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7C5298874C
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 06:49:12 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id t6so6624932pgq.1
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 23:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AFV7XDH/YgXKegUmh6b/uhEmHTcUDP6RQlSqqYbJhi8=;
 b=CbJD3tqyQ8ITay1P85gHBf8sk0tD4maHYRoOxYhB9nk2n6W4vYLAc65nDgDCMS7dgA
 Hdnmp7MlRBOqp1d3HJ7Fc+gym10X/TnABLIkyazP4D6pX24ZC5wSD4cDiMoH74JTeRDk
 lvrs/x+j0kgzCDHAFakLO6LRZL/rP/a6IcZgedDjKs5RyY0OOTc/Lr0fSl1X2I3A7TKH
 b11w3gcRuCxleHyfbTU0n1D2t6VPPj2f7zxyXbRPq+wrDj6Wb7owxVOVoBBZ/RyGgcqI
 oe/9DBqTqGez/ZnbooQypGj9+l7otEW+4m9uWYW1ipeSvNCTeMP/xCwzHbfFzM+U9zo3
 5y4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AFV7XDH/YgXKegUmh6b/uhEmHTcUDP6RQlSqqYbJhi8=;
 b=IPcWVXNYrpAMP1nsbr/2z4OKmUcsWUrGL0kmyUN6/Su75N1gqUFOcZ8bO/6OL8JCGw
 YYdP3qFfsXF82hTW5tIij6A1qHeHMN0eAQime3mn0t2cUkH20S+ls5Zo93w1J7nsEtY5
 JtMGfWsaef+dddp4JHaZdxuXTwChKPDw5X5vgwdX/Z8YoM4IMi/hSEqha/VlAZp+eQYV
 FMavG8b2Hhe4OzxpL4+ykCRQN7mfZnvfFikhQUbEQa3eQ9HWhl8vw6VA/qtIVqBiX8+R
 UEyGhwXWqYGuWwOVzAS7tUAXfShGsp0oo+3Htcqx894cRRjV4JT8Oji+JfXV7yjRzii9
 3FQw==
X-Gm-Message-State: AOAM532Vb3IjZSdWLcG3H2jBgx6y2oBvzqzrh2UajTKcajGfAWSuL24a
 rPGjgQVFrcY0UtjdUu1Yd/c=
X-Google-Smtp-Source: ABdhPJzE3pfqMWwqLBc1loOGUeDPJ584xUrioRvUQypfXO333D26YOvEGwKbr/wfMjEqIUzbCiUWzA==
X-Received: by 2002:a63:4b1d:: with SMTP id y29mr11753531pga.264.1595659752049; 
 Fri, 24 Jul 2020 23:49:12 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id z9sm8116559pgh.94.2020.07.24.23.49.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jul 2020 23:49:11 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: marvin24@posteo.de,
	gregkh@linuxfoundation.org,
	p.zabel@pengutronix.de
Subject: [PATCH v4] staging: nvec: change usage of slave to secondary
Date: Sat, 25 Jul 2020 11:59:39 +0530
Message-Id: <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
References: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
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
 devel@driverdev.osuosl.org, Dan Carpenter <dan.carpenter@oracle.com>,
 ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

changed usage of slave (which is deprecated) to secondary without breaking the driver

Tested-by: Dan Carpenter <dan.carpenter@oracle.com>
Acked-by: Marc Dietrich <marvin24@posteo.de>
Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
---
v4: undo the changes (which broke the driver) to this line: if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) 
v3: change patch subject, add version history
v2: add changelog text in body of mail
v1: fix style issues by changing usage of slave to secondary

 drivers/staging/nvec/nvec.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 360ec0407740..a7e995bfe989 100644
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
