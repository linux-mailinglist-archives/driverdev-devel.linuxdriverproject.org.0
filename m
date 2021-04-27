Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BA936C27F
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 12:14:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42A6F4046B;
	Tue, 27 Apr 2021 10:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EjconcH1jCAb; Tue, 27 Apr 2021 10:14:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B0A64045C;
	Tue, 27 Apr 2021 10:14:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 312CA1C116E
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DA4740172
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tGI8IvYVqNXN for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 10:13:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A90B40113
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 10:13:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 67D4D6140B;
 Tue, 27 Apr 2021 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619518431;
 bh=eeb2tTMTeECwFCJsmdUEhrGisH5F5adY0i6Xu5Zdqhg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KExWx6rx38YnCkcfolMEeFFyC3f1GXJQvNGjOa8ISkbR1/jXcHswuOaPWK3laj6eV
 tt+pFqegEsZAdeviptiJOw9VCfKsCNbx2+MgXFGhQs5noEb5rkJP3m1hw+p9iqJofK
 rhCFOkmcpLsaPSr/wIlK7zdmr2bsOJVytIIhT2Z9OKvSV0hEshOvzH6lyd6K1o4SsO
 k6xxJzUCmJVj4MLfedSVbX2lXO9sq8h9TS+Avkw1cYti/1+TNpExRUMgIkYjFeVR3P
 Uk0fA3aSskJvOk/fxln8CRVBHdUUahj3tHLe4pF5YQ8MbFbVImnqsNFYpxlaLWIosK
 Fmk+pGKIlDyog==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKiz-000j5n-7g; Tue, 27 Apr 2021 12:13:49 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 25/79] staging: media: vde: use pm_runtime_resume_and_get()
Date: Tue, 27 Apr 2021 12:12:52 +0200
Message-Id: <d162bd300f6e8e8e057a02c0c91429519e5fdfcf.1619518193.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619518193.git.mchehab+huawei@kernel.org>
References: <cover.1619518193.git.mchehab+huawei@kernel.org>
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
 drivers/staging/media/tegra-vde/vde.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index 28845b5bafaf..8936f140a246 100644
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
@@ -1069,8 +1071,8 @@ static int tegra_vde_probe(struct platform_device *pdev)
 	 * power-cycle it in order to put hardware into a predictable lower
 	 * power state.
 	 */
-	pm_runtime_get_sync(dev);
-	pm_runtime_put(dev);
+	if (pm_runtime_resume_and_get(dev) >= 0)
+		pm_runtime_put(dev);
 
 	return 0;
 
@@ -1088,8 +1090,9 @@ static int tegra_vde_remove(struct platform_device *pdev)
 {
 	struct tegra_vde *vde = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
+	int ret;
 
-	pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
 	pm_runtime_dont_use_autosuspend(dev);
 	pm_runtime_disable(dev);
 
@@ -1097,7 +1100,8 @@ static int tegra_vde_remove(struct platform_device *pdev)
 	 * Balance RPM state, the VDE power domain is left ON and hardware
 	 * is clock-gated. It's safe to reboot machine now.
 	 */
-	pm_runtime_put_noidle(dev);
+	if (ret >= 0)
+		pm_runtime_put_noidle(dev);
 	clk_disable_unprepare(vde->clk);
 
 	misc_deregister(&vde->miscdev);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
