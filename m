Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1A3CF2A8
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:18:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12905875F9;
	Tue,  8 Oct 2019 06:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TFEb+Ux-w3Q; Tue,  8 Oct 2019 06:18:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C66228731C;
	Tue,  8 Oct 2019 06:18:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 290E21BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:18:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25AFE8731C
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cT5px8UYow+C for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:18:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C19E4868B2
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:18:28 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id j11so8034608plk.3
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 23:18:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TRtWjOrAjV8CA8dOJ14XYFLUhKPahwypwIK5mtcYxqc=;
 b=jPZryfUHaTbfmefECu+T5hvf0uS/AQt2n57pyKQ1HuHuiA/4z1ARdP55KbnWhehifB
 CdsCEaB1vZ/axRdekZHJc8oM3+I0I8BpFxvJQwhFRswtBHxK5KeKdwjav4VuihXJB5u5
 UsFnXeyRgNyazXHNlpZKJ6pplr5xb9y5+PjhnqjtDp4GrpNotMJrHjPHubdAhS3I44O+
 s/Vf1VboQsF8ZXd4zf7V3D+l73NzCYQozvbQif+xvzcOFG2P2Vy8mgt/l2JbnKWUqVC4
 vOfdkgqYIzOxVMHsE+HlycXjcG9Psq8WIIi6F5IriT7xuH/TgBWm8WAxMJZM5gHaTZSW
 5i3w==
X-Gm-Message-State: APjAAAWrQAtX8NBcmt1DRfLlyRoNbs6GrJHi224On+vEWF4TpXg3ro8x
 g4SUpgrArkOA4AruMUCIeXE=
X-Google-Smtp-Source: APXvYqwhf8WU7+P+1ZWVH1sFAksf1Vpyb8D24EkZlkckZpQL1FFU5dXr7ASbIPqaCChB+r5+eolofA==
X-Received: by 2002:a17:902:b902:: with SMTP id
 bf2mr34481465plb.56.1570515508434; 
 Mon, 07 Oct 2019 23:18:28 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id n2sm1662665pgg.77.2019.10.07.23.18.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 23:18:27 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: media: imx: make use devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 11:47:38 +0530
Message-Id: <1570515459-25609-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//media/imx/imx7-mipi-csis.c:973:1-12: WARNING: Use
devm_platform_ioremap_resource for state -> regs

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354..bf21db3 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -947,7 +947,6 @@ static void mipi_csis_debugfs_exit(struct csi_state *state)
 static int mipi_csis_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *mem_res;
 	struct csi_state *state;
 	int ret;
 
@@ -969,8 +968,7 @@ static int mipi_csis_probe(struct platform_device *pdev)
 	mipi_csis_phy_init(state);
 	mipi_csis_phy_reset(state);
 
-	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	state->regs = devm_ioremap_resource(dev, mem_res);
+	state->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(state->regs))
 		return PTR_ERR(state->regs);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
