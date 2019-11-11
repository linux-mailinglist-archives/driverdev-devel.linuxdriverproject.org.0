Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B8CF79A8
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 18:20:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 309958679E;
	Mon, 11 Nov 2019 17:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRaTvD8sZ3u8; Mon, 11 Nov 2019 17:20:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1909866AD;
	Mon, 11 Nov 2019 17:20:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A421A1BF955
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1398866AD
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H3B2NR08ME76 for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 17:20:04 +0000 (UTC)
X-Greylist: delayed 00:05:36 by SQLgrey-1.7.6
Received: from mail-yw1-f74.google.com (mail-yw1-f74.google.com
 [209.85.161.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA53C8659E
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 17:20:03 +0000 (UTC)
Received: by mail-yw1-f74.google.com with SMTP id l123so12045557ywd.23
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 09:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=kEpyg8ljuNGSwCdKkj2Uy1b1DZcwrqujpDoQjvbwc1s=;
 b=ZQB147/bYm8FPJrTOgxinDS8UjGgxHSYZWAk3EBDy7bVpzFoXTM08oQjj8qxkhh3ia
 JmliGOdq3LqR1rQDmgZbNHwSF2uzCCmxxA8cTDbpKCn4rv4YQ3XBhcCKN7JQV2AahO6I
 dRbO+hIgApI3O87eH8wJykfb+cgQXi8MqOlQtePfK/+heb8uesx4VQ43Dv1jZhaGzk7R
 GZiBixlrm7m3PaFbxkcG1Mm5TRL+YbuqTMbiOJ29pj+3OnqXnl5EBV4FWkcuJ77zK2zK
 9dQHVJv0MnlMcklz/yZh5ddpid9iXIiZX/OMZzUw5jKxJUx0Y3CjvDWCGX1EPrQocNn2
 sy1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=kEpyg8ljuNGSwCdKkj2Uy1b1DZcwrqujpDoQjvbwc1s=;
 b=P+tNSxHTDyo8pyeEC2aEtuC1g6b1ictbNO8yz/09bZmYEw2m3aH5OKviKsXKzOxADN
 sKX+luq1bIONOq8tbtv9+11QalS5JHyzbDF4XvcfQjBkEjRC42gL5evCTLPHDsal3W5P
 UIBtWUkNg+RA3jCpiP6buwoalCWjoKI7RWsvmf/UytKPLiH6uOzcXAxClZfuET3EnScx
 H+Jxbv19b52OUHKf+BRaiG+yVOcJTXBeo3y1NwPgsMOYAsbcsVaS1ElsRPZC8qVRuKYm
 J+I8CYQmzlLVjwvgqc3HkD5GV3cv7sjmhci45CLrld7/1ylw/IXed5arU6zpsBCYHBPZ
 Sukg==
X-Gm-Message-State: APjAAAW8rM8qiEcTQna+d+8GoNRSkcIPzEvzPQQUHeEPSDF/mwEeGcF+
 eQSH+VijLUhKa6lD8NO/ZqtLag10Sql6UJA2BzQ=
X-Google-Smtp-Source: APXvYqyt2bu6AWhTTtWOUm8UmNszm2ywmWZquw+uEmcXnU5cy0HLp7WfF3IgwryIFLSzHj+u6NKX21/E5j9RcdFpmeE=
X-Received: by 2002:a25:e401:: with SMTP id b1mr20171577ybh.444.1573492466055; 
 Mon, 11 Nov 2019 09:14:26 -0800 (PST)
Date: Mon, 11 Nov 2019 12:14:23 -0500
In-Reply-To: <cover.1573482698.git.marcgonzalez@google.com>
Message-Id: <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This allows the removal of the struct rpi_firmware* member
from struct vchiq_drvdata.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c           | 14 +++++++++++++-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 14 --------------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h  |  1 -
 3 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 8dc730cfe7a6..5ac88be9496b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -79,7 +79,8 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 {
 	struct device *dev = &pdev->dev;
 	struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
-	struct rpi_firmware *fw = drvdata->fw;
+	struct device_node *fw_node;
+	struct rpi_firmware *fw;
 	struct vchiq_slot_zero *vchiq_slot_zero;
 	struct resource *res;
 	void *slot_mem;
@@ -88,6 +89,17 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 	int slot_mem_size, frag_mem_size;
 	int err, irq, i;
 
+	fw_node = of_find_compatible_node(NULL, NULL,
+					  "raspberrypi,bcm2835-firmware");
+	if (!fw_node) {
+		dev_err(&pdev->dev, "Missing firmware node\n");
+		return -ENOENT;
+	}
+	fw = rpi_firmware_get(fw_node);
+	of_node_put(fw_node);
+	if (!fw)
+		return -EPROBE_DEFER;
+
 	/*
 	 * VCHI messages between the CPU and firmware use
 	 * 32-bit bus addresses.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b1595b13dea8..c666c8b5eda2 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3191,7 +3191,6 @@ vchiq_register_child(struct platform_device *pdev, const char *name)
 
 static int vchiq_probe(struct platform_device *pdev)
 {
-	struct device_node *fw_node;
 	const struct of_device_id *of_id;
 	struct vchiq_drvdata *drvdata;
 	struct device *vchiq_dev;
@@ -3201,19 +3200,6 @@ static int vchiq_probe(struct platform_device *pdev)
 	drvdata = (struct vchiq_drvdata *)of_id->data;
 	if (!drvdata)
 		return -EINVAL;
-
-	fw_node = of_find_compatible_node(NULL, NULL,
-					  "raspberrypi,bcm2835-firmware");
-	if (!fw_node) {
-		dev_err(&pdev->dev, "Missing firmware node\n");
-		return -ENOENT;
-	}
-
-	drvdata->fw = rpi_firmware_get(fw_node);
-	of_node_put(fw_node);
-	if (!drvdata->fw)
-		return -EPROBE_DEFER;
-
 	platform_set_drvdata(pdev, drvdata);
 
 	err = vchiq_platform_init(pdev, &g_state);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index b424323e9613..e2cdfddaf02a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -97,7 +97,6 @@ struct vchiq_arm_state {
 
 struct vchiq_drvdata {
 	const unsigned int cache_line_size;
-	struct rpi_firmware *fw;
 };
 
 extern int vchiq_arm_log_level;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
