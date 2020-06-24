Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C2B2076B1
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 17:09:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9FE686C5E;
	Wed, 24 Jun 2020 15:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MrgDHd-z08v9; Wed, 24 Jun 2020 15:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A29A86885;
	Wed, 24 Jun 2020 15:09:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA2751BF369
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D7360860BE
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDdob3JjMggQ for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 15:09:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E615E85FEF
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 15:08:59 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id 9so2945813ljv.5
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 08:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EO0vr0FBuxVa7FqS3Iq4jMbQpH1iOzHD8PnLZeBEDCg=;
 b=J2ZoUKabV8uBWW8kT14GVdq844k5EGl9LZL64gEzgnhcADd8Ey9EGbuClRMNnMseCg
 U1KHZistw+DkX9cqdP1WCbkcM+QtHu0ScwWhr6ar6Xkv6RfSKeHf3fIviD3k89avexI7
 OQxhBScnUY+89SxyZMVTNGKj88NOEztFu22WFCr59dYFDp6hqNOo1xA//QFL0aqqxyEM
 wv7QLohFndzJkxFUckGdRPNhWh/ZrCJ9P774Gu4JDSIAKvWRf+HFavFp0ScgXTn60JQk
 aQ+YheYahlXjBbYR/t2lin+Y1fFWbPjFQlypbnImOOBvEGEkTcUb5bruoHs9vc+kvRme
 3VwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EO0vr0FBuxVa7FqS3Iq4jMbQpH1iOzHD8PnLZeBEDCg=;
 b=rdXAhPUmzr8RsLVzZDfCs8jM8JgN9u3cIGXPVNDmci2LW2LeNj097qE2kSfUSnItjS
 TzaW95pbQOlkW4+IteKxRIOVD9vk/w91EYdRgL3l1D9ieICd5cJGmjAK6lGHbHqNIiCQ
 7HiecJ5qyh6qGSUN4TPAxs7/3P9BnI95kXM6PNHtQWE0BckO4xL8FbL4lYpi7Z8by+Dg
 /PrbkCpG8gUKvY9MxJUUbABCPnUO+JT6YnZSYHAI4dzhzhDa4uZq/rW6dimSDNsZ1jCP
 fyqDqOjpsvRMjsg6hLzmXQKdOI1jobQw16VGvSj/oZrRmuf4lk0sXbF3d1TutQbs0XpP
 Lvfg==
X-Gm-Message-State: AOAM53158AlQNJUmJXsb10GB7y67Wn5Aa6j4fmU1Isz317rSChdm6Rxo
 Jp8STkfwFzOfeK3yrS+NEgc=
X-Google-Smtp-Source: ABdhPJyKT14B5+qLcVOpYptH1Lq0z9yrEMkRgXqV0VmarTChqLi//LDwXiSj80dipUCtV5kkV88X8A==
X-Received: by 2002:a2e:9c8e:: with SMTP id x14mr11827756lji.200.1593011338198; 
 Wed, 24 Jun 2020 08:08:58 -0700 (PDT)
Received: from localhost.localdomain (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.gmail.com with ESMTPSA id z1sm4182049lja.47.2020.06.24.08.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 08:08:57 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v2 2/4] media: staging: tegra-vde: Runtime PM is always
 available on Tegra
Date: Wed, 24 Jun 2020 18:08:45 +0300
Message-Id: <20200624150847.22672-3-digetx@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200624150847.22672-1-digetx@gmail.com>
References: <20200624150847.22672-1-digetx@gmail.com>
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
