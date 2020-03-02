Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10900176109
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 18:30:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F15A0861A7;
	Mon,  2 Mar 2020 17:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZnMKn-AtMcY; Mon,  2 Mar 2020 17:30:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E89AA85D4B;
	Mon,  2 Mar 2020 17:30:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6EB1BF396
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 17:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7349E85EF9
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 17:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FlqlZc3uTf-u for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 17:30:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CBAF385D4B
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 17:30:13 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id 83so197978lfh.9
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 09:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1QsztcmRjjgnJkOwfQvCXGGMgGg2RrrK0NJ3VxHJW/4=;
 b=fVHwvRCaCsXbRecBGXejJLb9N7iPAYXucEDy9h+xLbtB1kYFM/arTyVHUSdqN49v+k
 mC1SgQidUbZWF3u4Yv9X18OlFPELK5uKQvBvkJ/jZtTVnk2P1BKiOiDV12m6CkFaqXvE
 Og1gOVR40k3rjrYfS8ScMZUM5rW8r+SqJMyPNYzGYOk3BDRd5q+P6Sor0RZfqEr+giQj
 1OIvwm80w+An8IZOC4b7tm0/EeNBOi6RZ6cQL89JOLLKlqGD2da5tZY9ljXJZGAcJs8Y
 PXqS1/mYD7vPk08JC4M/Cpz1LRLAZlXRBH20n0Ys3ZXdFUf/48jaW9bwXu10pX7gNMc6
 HIkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1QsztcmRjjgnJkOwfQvCXGGMgGg2RrrK0NJ3VxHJW/4=;
 b=E0x2EtfgZxIE+K6eHq0VE9qU+L0vSfTlWf2cH0n9at+r6BhNqT7wdp5Ru7vwJFb3cS
 GAPWAn63KbL8ANzjFTpCnjl/21qL1x3xm+hA8FTFAySxcQ2+pkOU6+wQyKlgfZfvbBlP
 vsDCV5PW4pnonu5kkm7C5QFWUSgh0hmBgBpnn7LZIWsI29Ly+VBmLPbQAIP4vCQM2PRO
 m7ZK668GYv9QWriEGT3/ZwxEi4Tyo+LuDdT/4adSJCv3upfmlLoeEIypVJemuEDwgRvu
 4ldytlcm0rs7dK10NrLDq5+brkVg2sl1VYs2wNwXlY1tJeBzZe6QdR/cQY8Nad62obZh
 E57w==
X-Gm-Message-State: ANhLgQ1CODcOtA/KANPILXzRzY3zMMPYTXyvshqTdmk9KNgzUhKVCs1r
 0IpOFHCHeRwVoNMChAuQH1s=
X-Google-Smtp-Source: ADFU+vu0WpY1vxz5eZrr5DPZTQLOQlXDg86e3wFne7IsFgMqj6l6i7kxQRcftfKXZUNBC0C+UGMWVQ==
X-Received: by 2002:a19:fc18:: with SMTP id a24mr119917lfi.208.1583170212061; 
 Mon, 02 Mar 2020 09:30:12 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id e8sm12734113lfc.18.2020.03.02.09.30.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 09:30:11 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH v2] media: staging: tegra-vde: Use
 devm_platform_ioremap_resource_byname()
Date: Mon,  2 Mar 2020 20:29:04 +0300
Message-Id: <20200302172904.460-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is a new devm_platform_ioremap_resource_byname() helper in the
kernel now, which helps to make code cleaner a tad by replacing few
"boilerplate" lines of code with a single line. Let's utilize that
new helper in the VDE driver.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---

Changelog:

v2: Updated commit's message to make it more informative, as was requested
    by Dan Carpenter in the review comment to v1.

 drivers/staging/media/tegra-vde/vde.c | 55 +++++----------------------
 1 file changed, 9 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index e18fd48981da..d3e63512a765 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -949,7 +949,6 @@ static int tegra_vde_runtime_resume(struct device *dev)
 static int tegra_vde_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *regs;
 	struct tegra_vde *vde;
 	int irq, err;
 
@@ -959,75 +958,39 @@ static int tegra_vde_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, vde);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "sxe");
-	if (!regs)
-		return -ENODEV;
-
-	vde->sxe = devm_ioremap_resource(dev, regs);
+	vde->sxe = devm_platform_ioremap_resource_byname(pdev, "sxe");
 	if (IS_ERR(vde->sxe))
 		return PTR_ERR(vde->sxe);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "bsev");
-	if (!regs)
-		return -ENODEV;
-
-	vde->bsev = devm_ioremap_resource(dev, regs);
+	vde->bsev = devm_platform_ioremap_resource_byname(pdev, "bsev");
 	if (IS_ERR(vde->bsev))
 		return PTR_ERR(vde->bsev);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mbe");
-	if (!regs)
-		return -ENODEV;
-
-	vde->mbe = devm_ioremap_resource(dev, regs);
+	vde->mbe = devm_platform_ioremap_resource_byname(pdev, "mbe");
 	if (IS_ERR(vde->mbe))
 		return PTR_ERR(vde->mbe);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ppe");
-	if (!regs)
-		return -ENODEV;
-
-	vde->ppe = devm_ioremap_resource(dev, regs);
+	vde->ppe = devm_platform_ioremap_resource_byname(pdev, "ppe");
 	if (IS_ERR(vde->ppe))
 		return PTR_ERR(vde->ppe);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mce");
-	if (!regs)
-		return -ENODEV;
-
-	vde->mce = devm_ioremap_resource(dev, regs);
+	vde->mce = devm_platform_ioremap_resource_byname(pdev, "mce");
 	if (IS_ERR(vde->mce))
 		return PTR_ERR(vde->mce);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "tfe");
-	if (!regs)
-		return -ENODEV;
-
-	vde->tfe = devm_ioremap_resource(dev, regs);
+	vde->tfe = devm_platform_ioremap_resource_byname(pdev, "tfe");
 	if (IS_ERR(vde->tfe))
 		return PTR_ERR(vde->tfe);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ppb");
-	if (!regs)
-		return -ENODEV;
-
-	vde->ppb = devm_ioremap_resource(dev, regs);
+	vde->ppb = devm_platform_ioremap_resource_byname(pdev, "ppb");
 	if (IS_ERR(vde->ppb))
 		return PTR_ERR(vde->ppb);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "vdma");
-	if (!regs)
-		return -ENODEV;
-
-	vde->vdma = devm_ioremap_resource(dev, regs);
+	vde->vdma = devm_platform_ioremap_resource_byname(pdev, "vdma");
 	if (IS_ERR(vde->vdma))
 		return PTR_ERR(vde->vdma);
 
-	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "frameid");
-	if (!regs)
-		return -ENODEV;
-
-	vde->frameid = devm_ioremap_resource(dev, regs);
+	vde->frameid = devm_platform_ioremap_resource_byname(pdev, "frameid");
 	if (IS_ERR(vde->frameid))
 		return PTR_ERR(vde->frameid);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
