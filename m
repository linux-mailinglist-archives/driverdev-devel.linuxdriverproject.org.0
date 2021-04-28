Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4771736D9F2
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 16:54:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB71A40599;
	Wed, 28 Apr 2021 14:54:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KhPix6y6FmR7; Wed, 28 Apr 2021 14:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71D6140154;
	Wed, 28 Apr 2021 14:54:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 260BD1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 14:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6628860AC7
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 14:52:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6akZ8HE7ygF5 for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 14:52:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9C7160B08
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 14:52:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5321E619A7;
 Wed, 28 Apr 2021 14:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619621565;
 bh=llYDk9JyI2jon9eBR93Uie3QTpeZGnmK8q3UUwZjdV8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DDpRLKcj+IfcTIa61IFxLfn/lEFs253xaI/l68fMapM9xmWPOcHqXHTIif2SqDfYb
 GUUZmGE00QAg2fjqq2M+zv0LPVJHuN57mPu8Q9XECT9p0nStWLFjhEN0noXNR36FgH
 iDsAv2qeNSctEztvMxEmEwFpV+56/1DVI2w9TO4fDaoATjo9NdF/xB3NehEr6WFlQx
 iHGQcIpDyz9QRobvc//Vi6AtXHE+M10ZB5IaDkk0g/s6d7h+6QNAysZdyDNY04XEBV
 UzRdzTu9dFdackcTIXnEaqkbjqHEtmhnrP3wV6jFG769iZmD7iV4gSQ9vy/amapyAl
 GGtj7rfkkuMzg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lblYQ-001Dqn-9M; Wed, 28 Apr 2021 16:52:42 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v4 25/79] staging: media: tegra-vde: use
 pm_runtime_resume_and_get()
Date: Wed, 28 Apr 2021 16:51:46 +0200
Message-Id: <bc2b9048d4ad510eec97988ce8f3fd0d2bb26f39.1619621413.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, mauro.chehab@huawei.com,
 Dmitry Osipenko <digetx@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

Use the new API, in order to cleanup the error check logic.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/tegra-vde/vde.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index 28845b5bafaf..1cdacb3f781c 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -775,9 +775,9 @@ static int tegra_vde_ioctl_decode_h264(struct tegra_vde *vde,
 	if (ret)
 		goto release_dpb_frames;
 
-	ret = pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
 	if (ret < 0)
-		goto put_runtime_pm;
+		goto unlock;
 
 	/*
 	 * We rely on the VDE registers reset value, otherwise VDE
@@ -843,6 +843,8 @@ static int tegra_vde_ioctl_decode_h264(struct tegra_vde *vde,
 put_runtime_pm:
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
+
+unlock:
 	mutex_unlock(&vde->lock);
 
 release_dpb_frames:
@@ -1069,11 +1071,17 @@ static int tegra_vde_probe(struct platform_device *pdev)
 	 * power-cycle it in order to put hardware into a predictable lower
 	 * power state.
 	 */
-	pm_runtime_get_sync(dev);
+	if (pm_runtime_resume_and_get(dev) < 0)
+		goto err_pm_runtime;
+
 	pm_runtime_put(dev);
 
 	return 0;
 
+err_pm_runtime:
+	pm_runtime_dont_use_autosuspend(dev);
+	pm_runtime_disable(dev);
+
 err_deinit_iommu:
 	tegra_vde_iommu_deinit(vde);
 
@@ -1089,7 +1097,12 @@ static int tegra_vde_remove(struct platform_device *pdev)
 	struct tegra_vde *vde = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
 
+	/*
+	 * As it increments RPM usage_count even on errors, we don't need to
+	 * check the returned code here.
+	 */
 	pm_runtime_get_sync(dev);
+
 	pm_runtime_dont_use_autosuspend(dev);
 	pm_runtime_disable(dev);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
