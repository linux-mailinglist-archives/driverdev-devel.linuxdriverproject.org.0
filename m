Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 778F1249C49
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:47:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22910859CC;
	Wed, 19 Aug 2020 11:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7XAOmiUmkp3S; Wed, 19 Aug 2020 11:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6ACB85784;
	Wed, 19 Aug 2020 11:47:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D5801BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F19AF20348
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x9SmVSXo6YPE for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C77420517
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D85B22B43;
 Wed, 19 Aug 2020 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837582;
 bh=QvE2bUpzFx0vscLjOcnl+1jG7FW2l4oNh1T5fNELrms=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l4CKg+vD2fSFmsG3kl0W6BH2fE8UeKs5MXW50/kC+WM7dKY/QEBigKE9OHQz7nmCf
 cb4TSAYqKmVfPgHXWWZvUAtfZi8BKlAEyHuyZOV493FWeCdl8p5nNK3B/HAcVr0olm
 9pq/V5ZuMKSh3rYgjpIxibOBp1rRxGSEK8qXpwfk=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXs-00EuaZ-1n; Wed, 19 Aug 2020 13:46:20 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 16/49] staging: hikey9xx/gpu: rename the config option for
 Kirin970
Date: Wed, 19 Aug 2020 13:45:44 +0200
Message-Id: <81536ca11160405cfde0e4717f2e892253e75075.1597833138.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597833138.git.mchehab+huawei@kernel.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Liwei Cai <cailiwei@hisilicon.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen Feng <puck.chen@hisilicon.com>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, John Stultz <john.stultz@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, mauro.chehab@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the same standard as used on other Hisilicon DRM
config vars for kirin9xx.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c    |  2 +-
 .../staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h    |  2 +-
 drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c      | 12 ++++++------
 .../hikey9xx/gpu/kirin9xx_drm_overlay_utils.c        |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c
index 8aa43619c888..fe8372838bb3 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c
@@ -993,7 +993,7 @@ int dpe_regulator_disable(struct dss_hw_ctx *ctx)
 		return -EINVAL;
 	}
 
-	#if defined (CONFIG_HISI_FB_970)
+	#if defined (CONFIG_DRM_HISI_KIRIN970)
 		dpe_set_pixel_clk_rate_on_pll0(ctx);
 		dpe_set_common_clk_rate_on_pll0(ctx);
 	#endif
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
index 5ef5c6c6edbb..89aaf6691f1d 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
@@ -14,7 +14,7 @@
 #ifndef KIRIN_DRM_DPE_UTILS_H
 #define KIRIN_DRM_DPE_UTILS_H
 
-#if defined (CONFIG_HISI_FB_970)
+#if defined (CONFIG_DRM_HISI_KIRIN970)
 #include "kirin970_dpe_reg.h"
 #else
 #include "kirin_dpe_reg.h"
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
index 693f5499c8d0..b4c1bb8288de 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
@@ -37,7 +37,7 @@
 #include "kirin_drm_drv.h"
 
 #include "kirin_drm_dpe_utils.h"
-#if defined (CONFIG_HISI_FB_970)
+#if defined (CONFIG_DRM_HISI_KIRIN970)
 #include "kirin970_dpe_reg.h"
 #else
 #include "kirin_dpe_reg.h"
@@ -45,7 +45,7 @@
 
 //#define DSS_POWER_UP_ON_UEFI
 
-#if defined (CONFIG_HISI_FB_970)
+#if defined (CONFIG_DRM_HISI_KIRIN970)
 #define DTS_COMP_DSS_NAME "hisilicon,kirin970-dpe"
 #else
 #define DTS_COMP_DSS_NAME "hisilicon,hi3660-dpe"
@@ -310,7 +310,7 @@ static int dss_power_up(struct dss_crtc *acrtc)
 	struct dss_hw_ctx *ctx = acrtc->ctx;
 	int ret = 0;
 
-#if defined (CONFIG_HISI_FB_970)
+#if defined (CONFIG_DRM_HISI_KIRIN970)
 	mediacrg_regulator_enable(ctx);
 	dpe_common_clk_enable(ctx);
 	dpe_inner_clk_enable(ctx);
@@ -706,7 +706,7 @@ static int dss_dts_parse(struct platform_device *pdev, struct dss_hw_ctx *ctx)
 		return -ENXIO;
 	}
 
-#if defined (CONFIG_HISI_FB_970)
+#if defined (CONFIG_DRM_HISI_KIRIN970)
 	ret = of_property_read_u32(np, "dss_version_tag", &dss_version_tag);
 	if (ret) {
 		DRM_ERROR("failed to get dss_version_tag.\n");
@@ -756,7 +756,7 @@ static int dss_dts_parse(struct platform_device *pdev, struct dss_hw_ctx *ctx)
 		return -ENXIO;
 	}
 
-#if defined (CONFIG_HISI_FB_970)
+#if defined (CONFIG_DRM_HISI_KIRIN970)
 	ctx->pmctrl_base = of_iomap(np, 5);
 	if (!(ctx->pmctrl_base)) {
 		DRM_ERROR ("failed to get dss pmctrl_base resource.\n");
@@ -780,7 +780,7 @@ static int dss_dts_parse(struct platform_device *pdev, struct dss_hw_ctx *ctx)
 	DRM_INFO("dss irq = %d. \n", ctx->irq);
 
 #ifndef DSS_POWER_UP_ON_UEFI
-#if defined (CONFIG_HISI_FB_970)
+#if defined (CONFIG_DRM_HISI_KIRIN970)
 	ctx->dpe_regulator = devm_regulator_get(dev, REGULATOR_PDP_NAME);
 	if (!ctx->dpe_regulator) {
 		DRM_ERROR("failed to get dpe_regulator resource! ret=%d.\n", ret);
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
index 6246316d81b0..342a7f6fc964 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
@@ -30,7 +30,7 @@
 
 static int mid_array[DSS_CHN_MAX_DEFINE] = {0xb, 0xa, 0x9, 0x8, 0x7, 0x6, 0x5, 0x4, 0x2, 0x1, 0x3, 0x0};
 
-#if defined (CONFIG_HISI_FB_970)
+#if defined (CONFIG_DRM_HISI_KIRIN970)
 uint32_t g_dss_module_base[DSS_CHN_MAX_DEFINE][MODULE_CHN_MAX] = {
 	// D0
 	{
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
