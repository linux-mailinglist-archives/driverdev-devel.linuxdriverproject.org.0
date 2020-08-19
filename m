Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61554249C45
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:47:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 09F008737E;
	Wed, 19 Aug 2020 11:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iTUUFR79yG4f; Wed, 19 Aug 2020 11:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87310876C3;
	Wed, 19 Aug 2020 11:47:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FD481BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 778E420780
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wY02wq+nwfts for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D06520798
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E28C22CA1;
 Wed, 19 Aug 2020 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837582;
 bh=wBIBY+X1r1sF+0e8gMVmcy/w1ZZJwTcLyJ1eGkx0f2o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CSTjrhyDFxcP+8lGmQba2qYPR7QD1P0fephC5gBk7kGQuE2xsLVqeeW+PUnBI+M0U
 IeVC0B/BqBbZstDI/kuYdQkKn9Bl489gM+03aDOtId+n5HWYj5F7Y8K3ooihlF3Dpb
 6aTzONdLQ7IdIlMJiqsQrEYCh90joFRzjJpacQ1k=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXs-00Euas-92; Wed, 19 Aug 2020 13:46:20 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 22/49] staging: hikey9xx/gpu: cleanup encoder attach logic
Date: Wed, 19 Aug 2020 13:45:50 +0200
Message-Id: <6c864afac63d08385dd49bcab3cfd1b3c3430605.1597833138.git.mchehab+huawei@kernel.org>
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
 linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, John Stultz <john.stultz@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Place both adv7535 and panel logic at the same routine,
cleaning up things a little bit and fixing the includes.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../hikey9xx/gpu/kirin9xx_dw_drm_dsi.c        | 58 ++++++++++---------
 1 file changed, 31 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c b/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
index cba81ee2639d..e904943d9f9e 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
@@ -25,7 +25,8 @@
 #include <drm/drm_of.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_mipi_dsi.h>
-#include <drm/drm_encoder_slave.h>
+#include <drm/drm_encoder.h>
+#include <drm/drm_device.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_probe_helper.h>
@@ -1483,17 +1484,31 @@ static const struct drm_encoder_funcs dw_encoder_funcs = {
 
 static int dw_drm_encoder_init(struct device *dev,
 			       struct drm_device *drm_dev,
-			       struct drm_encoder *encoder)
+			       struct drm_encoder *encoder,
+			       struct drm_bridge *bridge)
 {
 	int ret;
-	u32 crtc_mask = drm_of_find_possible_crtcs(drm_dev, dev->of_node);
+	u32 crtc_mask;
 
+	dev_info(dev, "%s:\n", __func__);
+
+	/* Link drm_bridge to encoder */
+	if (!bridge) {
+		DRM_INFO("no dsi bridge to attach the encoder\n");
+		return 0;
+	}
+
+	crtc_mask = drm_of_find_possible_crtcs(drm_dev, dev->of_node);
 	if (!crtc_mask) {
 		DRM_ERROR("failed to find crtc mask\n");
 		return -EINVAL;
 	}
 
+	dev_info(dev, "Initializing CRTC encoder: %d\n",
+		 crtc_mask);
+
 	encoder->possible_crtcs = crtc_mask;
+	encoder->possible_clones = 0;
 	ret = drm_encoder_init(drm_dev, encoder, &dw_encoder_funcs,
 			       DRM_MODE_ENCODER_DSI, NULL);
 	if (ret) {
@@ -1503,7 +1518,14 @@ static int dw_drm_encoder_init(struct device *dev,
 
 	drm_encoder_helper_add(encoder, &dw_encoder_helper_funcs);
 
-	return 0;
+	/* associate the bridge to dsi encoder */
+	ret = drm_bridge_attach(encoder, bridge, NULL, 0);
+	if (ret) {
+		DRM_ERROR("failed to attach external bridge\n");
+		drm_encoder_cleanup(encoder);
+	}
+
+	return ret;
 }
 
 static int dsi_host_attach(struct mipi_dsi_host *host,
@@ -1677,22 +1699,6 @@ static int dsi_host_init(struct device *dev, struct dw_dsi *dsi)
 	return 0;
 }
 
-static int dsi_bridge_init(struct drm_device *dev, struct dw_dsi *dsi)
-{
-	struct drm_encoder *encoder = &dsi->encoder;
-	struct drm_bridge *bridge = dsi->bridge;
-	int ret;
-
-	/* associate the bridge to dsi encoder */
-	ret = drm_bridge_attach(encoder, bridge, NULL, 0);
-	if (ret) {
-		DRM_ERROR("failed to attach external bridge\n");
-		return ret;
-	}
-
-	return 0;
-}
-
 static int dsi_connector_get_modes(struct drm_connector *connector)
 {
 	struct dw_dsi *dsi = connector_to_dsi(connector);
@@ -1766,6 +1772,7 @@ static int dsi_connector_init(struct drm_device *dev, struct dw_dsi *dsi)
 	if (ret)
 		return ret;
 
+	dev_info(dev->dev, "Attaching CRTC encoder\n");
 	ret = drm_connector_attach_encoder(connector, encoder);
 	if (ret)
 		return ret;
@@ -1784,16 +1791,13 @@ static int dsi_bind(struct device *dev, struct device *master, void *data)
 	struct drm_device *drm_dev = data;
 	int ret;
 
-	ret = dw_drm_encoder_init(dev, drm_dev, &dsi->encoder);
+	DRM_INFO("dsi_bind\n");
+
+	ret = dw_drm_encoder_init(dev, drm_dev, &dsi->encoder,
+				  dsi->bridge);
 	if (ret)
 		return ret;
 
-	if (dsi->bridge) {
-		ret = dsi_bridge_init(drm_dev, dsi);
-		if (ret)
-			return ret;
-	}
-
 	if (dsi->panel) {
 		ret = dsi_connector_init(drm_dev, dsi);
 		if (ret)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
