Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B462E17261B
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Feb 2020 19:10:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63E0B2313D;
	Thu, 27 Feb 2020 18:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3YmqP5hEye9U; Thu, 27 Feb 2020 18:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1733C230A4;
	Thu, 27 Feb 2020 18:10:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 371521BF3D2
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 18:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 32F932309D
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 18:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c9xaPxcJrbGS for <devel@linuxdriverproject.org>;
 Thu, 27 Feb 2020 18:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 38B27230F3
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 18:10:05 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id e18so213598ljn.12
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 10:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JGTvTC5n1dMFf5hqfM1JJ/BZi1c+ZQ0aixXc9pKVWyk=;
 b=KrJU7X7EIvMKlUEtbUymzld9J6xlBT5wJtUGvAAIKW08mCZFRtSfx8xOROqfuexZjm
 JgzdQMJpcoKGAr9Sz0TRp3hECEd10uyGdfVINUEuFhgyEKnBX9Q9acsGmO0XTXw/D6Y0
 GYZwtvYYoQslELF2RcyKz7DfbPy0XW2QIJ8gF4gokZGJp1fHhMyvKVOyRsERN8IJIVRU
 IHkV/XDshgvI537t6WLPZnMMYSFkLkpFiBmmM8E+LRQmqRD0fDSL4yKDt20D3tRmK3sP
 p4jIXT6QFwM5U/myoCIPV5M3bcSJKp8O/zr3UOuVSQQo+sKXF59tPU52HlPpgGkFPRd2
 4t/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JGTvTC5n1dMFf5hqfM1JJ/BZi1c+ZQ0aixXc9pKVWyk=;
 b=VEBJHAO5bgKGhA9RiRGSzzSkWe56gUUQyJ9t+JgoKfs10VLmpSwcG6a4vVYbvx0T1W
 X1gzmqjmt5UkBP7/ns1L3UueZUyfox/FhkZnc3/fY+MlLask1E0Ra6lg7N/A9OuxRcrZ
 dclCbLN0ckaP3mzJcY9OEqy3cisJ0FBrMeU0OSgHibSdBbSui/hfrQHe/dMfNof9Vxca
 tBjPD4D7zypgcJ42g6TGT4U3dJacrDlpZ3HhVpvg+ENMD2ivzxoVj4lH4WqBsR74ae3V
 0LpR0uLgXrTmF+Nn4EGBxdVNEtvaiYd8lGTR5XzTGNBOUSb/VT4pOrgLzwhGuk0njHqX
 xovQ==
X-Gm-Message-State: ANhLgQ3JcN/JLwhaRn1ir6b9kCpSoyD6NhJDD8KZk3l/XJXLa28iNxej
 tggfm2Vs55lHM3mtuu2TQig=
X-Google-Smtp-Source: ADFU+vt7VurT8NSU0ruym6CjuKGiA65tRemHtqoeZ3SAziIhDR/LByjtv7S5fyvspcm5O9WPA2qWbQ==
X-Received: by 2002:a2e:9748:: with SMTP id f8mr208065ljj.178.1582827002155;
 Thu, 27 Feb 2020 10:10:02 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id t6sm3222170lfe.47.2020.02.27.10.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:10:01 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v1] media: staging: tegra-vde: Use
 devm_platform_ioremap_resource_byname()
Date: Thu, 27 Feb 2020 21:09:15 +0300
Message-Id: <20200227180915.9541-1-digetx@gmail.com>
X-Mailer: git-send-email 2.24.0
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

This helps to make code cleaner a tad.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
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
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
