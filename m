Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F131ACCFDC
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 11:17:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 630A1204BC;
	Sun,  6 Oct 2019 09:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V7+Ubz3zCfs8; Sun,  6 Oct 2019 09:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EA156203AB;
	Sun,  6 Oct 2019 09:17:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 154881BF366
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B47A85BD1
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1dpJUhs_9We2 for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 09:17:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77EC585AF1
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 09:17:27 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id a3so6307381pgm.13
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 02:17:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rzyTlRcDYrAbhKH1U1n1sp4nzOxfbziA3NSLZ6PLtLU=;
 b=HK9sCdyGlqVjNcHV+xT7/SWWZLSoIDy20VaPZOqojtFtdgv0Tsud+DVhgDQW3e6t7n
 SjLA4PG+VBLM+uiHead1X/6tifsOPyotcRrjtj7ldGy5L6oTH8K5UUtnsKd1KQMBYs16
 aR/FQR+pnWg2ePf+C/z9ARWWM3j0OHVRpP1BFaq/NdVwEc3fKka9BP025SSgGrYQTwTj
 U8JER26CaYfPXkl7HPjsX76du1kDg0LdiFESFS14+gfsb033ysgyXDC6IVcBx3ZJduvx
 7gKKb8E2TvUWzAdWgwl8tq5d1dpFSLtRf12q9sLXzLEPW6to4qm6VhC+wfW/d7EbDSYm
 EiiQ==
X-Gm-Message-State: APjAAAWzObWuQy0E6kPWndoZ5OZ5W+6csbmel9UKZyPBbC6gqQB3eMmg
 hBBa7fhAU+EaI8QOdICSfJU=
X-Google-Smtp-Source: APXvYqzbLapV+eFS5gddNxPhDalkX7XhaKL7Su5vFKohCtNkbeO77+4zZ85rHiBzE3K8Z4b/x5Fjjg==
X-Received: by 2002:a17:90a:cb07:: with SMTP id
 z7mr26684675pjt.67.1570353446975; 
 Sun, 06 Oct 2019 02:17:26 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id m5sm2521028pgt.15.2019.10.06.02.17.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 06 Oct 2019 02:17:25 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: vc04_services: make use of
 devm_platform_ioremap_resource
Date: Sun,  6 Oct 2019 14:46:21 +0530
Message-Id: <1570353394-9991-1-git-send-email-hariprasad.kelam@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Tobias=20B=C3=BCttner?= <tobias.buettner@fau.de>,
 Eric Anholt <eric@anholt.net>, Luis Chamberlain <mcgrof@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Nicholas Mc Guire <hofrat@osadl.org>, Dominic Braun <inf.braun@fau.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//vc04_services/interface/vchiq_arm/vchiq_2835_arm.c:139
WARNING: Use devm_platform_ioremap_resource for g_regs

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 61c69f3..3a6ade90 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -81,7 +81,6 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 	struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
 	struct rpi_firmware *fw = drvdata->fw;
 	struct vchiq_slot_zero *vchiq_slot_zero;
-	struct resource *res;
 	void *slot_mem;
 	dma_addr_t slot_phys;
 	u32 channelbase;
@@ -135,8 +134,7 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 	if (vchiq_init_state(state, vchiq_slot_zero) != VCHIQ_SUCCESS)
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	g_regs = devm_ioremap_resource(&pdev->dev, res);
+	g_regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(g_regs))
 		return PTR_ERR(g_regs);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
