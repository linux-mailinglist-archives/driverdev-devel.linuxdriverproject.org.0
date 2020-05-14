Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179771D3FA1
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 23:09:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 986D48945C;
	Thu, 14 May 2020 21:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ZzJKyxxJP7S; Thu, 14 May 2020 21:09:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 465D889769;
	Thu, 14 May 2020 21:09:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9B6A1BF31A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A58BB8976A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0UR41qxtSWB for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 21:09:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2F19D89562
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 21:09:41 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id 188so3838361lfa.10
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 14:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EO0vr0FBuxVa7FqS3Iq4jMbQpH1iOzHD8PnLZeBEDCg=;
 b=tltjcWtTVsozKzAf9N+yxZwewU2cNg30qCpbUSnD4xjqn3IaFYSc11cT2s/BUL/eo2
 eXwYVd2jl6wBp8ekYPoinV7qyWBI/eE5FVU7CkPyuC6GI/SwOTI2Pq2XJYf4r+e9QBZe
 ygFDJQSL/D8hYv2L+KzG2ZXUD8oeB42Ne3vya1sRjlz6jo3ZU3a+StfRucZXUdIkXsxo
 FnlijK74UmStroYupJDYMm37bA8DF9v08j9v7/owoQgiy/Eqg4nj2S0ltJdI/YfsABS1
 wmHuOppJGxLYcVHNerVfrh3N1QHnk5JJC3QvOcnEzuIgRHDB7kDzhX9+uw4uovyPCQlU
 PwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EO0vr0FBuxVa7FqS3Iq4jMbQpH1iOzHD8PnLZeBEDCg=;
 b=qp+cWyFs2XO00vlIy/IDQP6yu3IyEgtg1a/DoBZp/2vrYlnn+OcliOQoEVyRYk2gSz
 KHaGzcQXjIZ9vZdKwLnSvVMO9FR0SumbuuTrW9vsg9oZjKPAJfC0+EhkcadqPlk23po8
 mgBOmxsCfNLr9fn5mvojIDT+NcHTr+hWLafauvH7ClIvGB1rPTbt7Xh5QsvBEzkE362+
 yBXy9mHGogA6AHjjQh2TtPevRiaTHREF/Rv0Fbhbvs4+xqol/mW8QHmFJIff2m0KiEiP
 PIXBSEvktHbn3S9Dwh0iWhLDAgIWv0/FsZxTMEEaSty22RtUm70AZ6uh0GdlPgMlgDww
 RTdQ==
X-Gm-Message-State: AOAM530tpDX280jobikBA8KUURSqeSc42yp3X3hFlNTMczWJJWh6MDv+
 kgzhxoekIMv942GBedldquwfSV7U
X-Google-Smtp-Source: ABdhPJwmXn6PJe8MV8dlPU1VcNAyZYVcG4jdW1N/ABx/HZNFEa2KXiju6MxUhsgJEX3Zjn5+oOQ5Kg==
X-Received: by 2002:a19:d55:: with SMTP id 82mr55733lfn.89.1589490579255;
 Thu, 14 May 2020 14:09:39 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.gmail.com with ESMTPSA id g3sm45215ljk.27.2020.05.14.14.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 14:09:38 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH v1 2/4] media: staging: tegra-vde: Runtime PM is always
 available on Tegra
Date: Fri, 15 May 2020 00:08:45 +0300
Message-Id: <20200514210847.9269-3-digetx@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200514210847.9269-1-digetx@gmail.com>
References: <20200514210847.9269-1-digetx@gmail.com>
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

Runtime PM is always available on Tegra nowadays since commit 40b2bb1b132a
("ARM: tegra: enforce PM requirement"), hence the case of unavailable RPM
doesn't need to be handled.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index 803e5dda4bb5..85cbbc8f70d3 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -1068,17 +1068,8 @@ static int tegra_vde_probe(struct platform_device *pdev)
 	pm_runtime_use_autosuspend(dev);
 	pm_runtime_set_autosuspend_delay(dev, 300);
 
-	if (!pm_runtime_enabled(dev)) {
-		err = tegra_vde_runtime_resume(dev);
-		if (err)
-			goto err_misc_unreg;
-	}
-
 	return 0;
 
-err_misc_unreg:
-	misc_deregister(&vde->miscdev);
-
 err_deinit_iommu:
 	tegra_vde_iommu_deinit(vde);
 
@@ -1093,13 +1084,6 @@ static int tegra_vde_remove(struct platform_device *pdev)
 {
 	struct tegra_vde *vde = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
-	int err;
-
-	if (!pm_runtime_enabled(dev)) {
-		err = tegra_vde_runtime_suspend(dev);
-		if (err)
-			return err;
-	}
 
 	pm_runtime_dont_use_autosuspend(dev);
 	pm_runtime_disable(dev);
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
