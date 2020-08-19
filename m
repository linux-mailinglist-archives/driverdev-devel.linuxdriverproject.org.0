Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 892BD249C16
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DD268562A;
	Wed, 19 Aug 2020 11:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vL41vjzaXVNE; Wed, 19 Aug 2020 11:46:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25DD785569;
	Wed, 19 Aug 2020 11:46:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D84B1BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A602865B0
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oKgDQkHdpNVU for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87AA28669E
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5830222CAF;
 Wed, 19 Aug 2020 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837582;
 bh=LoNkbNy+NbjfyHcUs4+KMDZxZVHRuvvlVTe95ZNdLs4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bATRGdhaVauZk8Mcvy7xJgUod2GIp+bRJhO7vR0Ectunmwi3GyMGhQ/El7sPn3xL8
 hCwVOfXbzxcjqCjF/jr/noSGmSBhQCBqxLjgxEQISKq1ynE0YtjCKBM+a4SgydH7kK
 FLKIhXij/al6d2WLeHcl4VbsvQk0IO1xBbr4rJY0=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXs-00Euau-9x; Wed, 19 Aug 2020 13:46:20 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 23/49] staging: hikey9xx/gpu: Change the logic which sets the
 burst mode
Date: Wed, 19 Aug 2020 13:45:51 +0200
Message-Id: <617e29a2482984b2b46e2b41a33b78428fcbc4f9.1597833138.git.mchehab+huawei@kernel.org>
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

The logic there is more complex than it needs. It also places
the device with a wrong setting if the flags are missed.

This currently happens on Kirin970 for HDMI, as there's a bug
at the part of the driver which selects between PANEL or
OUTPUT at encoder init code.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../hikey9xx/gpu/kirin9xx_dw_drm_dsi.c        | 34 +++++++++++--------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c b/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
index e904943d9f9e..ffc8b8e61062 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
@@ -902,26 +902,28 @@ static void dw_dsi_set_mode(struct dw_dsi *dsi, enum dsi_work_mode mode)
 	writel(POWERUP, base + PWR_UP);
 }
 
-static void dsi_set_burst_mode(void __iomem *base, unsigned long flags)
+static void dsi_set_burst_mode(void __iomem *base, unsigned long burst_flags)
 {
+	unsigned long flags;
 	u32 val;
-	u32 mode_mask = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
-		MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
-	u32 non_burst_sync_pulse = MIPI_DSI_MODE_VIDEO |
-		MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
-	u32 non_burst_sync_event = MIPI_DSI_MODE_VIDEO;
 
-	/*
-	 * choose video mode type
-	 */
-	if ((flags & mode_mask) == non_burst_sync_pulse)
+	flags = burst_flags;
+	flags &= MIPI_DSI_MODE_VIDEO |
+		 MIPI_DSI_MODE_VIDEO_BURST |
+		 MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
+
+	if (!(flags & MIPI_DSI_MODE_VIDEO)) {
+		DRM_WARN("MIPI_DSI_MODE_VIDEO was not set! Using DSI_NON_BURST_SYNC_PULSES");
 		val = DSI_NON_BURST_SYNC_PULSES;
-	else if ((flags & mode_mask) == non_burst_sync_event)
-		val = DSI_NON_BURST_SYNC_EVENTS;
-	else
+	} else if (flags & MIPI_DSI_MODE_VIDEO_BURST) {
 		val = DSI_BURST_SYNC_PULSES_1;
+	} else if (flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
+		val = DSI_NON_BURST_SYNC_PULSES;
+	} else {
+		val = DSI_NON_BURST_SYNC_EVENTS;
+	}
 
-	DRM_INFO("burst_mode = 0x%x (DSI_NON_BURST_SYNC_PULSES => 0)", val);
+	DRM_INFO("burst_mode = 0x%x (flags: 0x%04lx)", val, burst_flags);
 	set_reg(base + MIPIDSI_VID_MODE_CFG_OFFSET, val, 2, 0);
 }
 
@@ -1047,6 +1049,10 @@ static void dsi_mipi_init(struct dw_dsi *dsi, char __iomem *mipi_dsi_base)
 	WARN_ON(!mipi_dsi_base);
 
 	id = dsi->cur_client;
+
+	DRM_INFO("dsi_mipi_init, id=%d\n", id);
+
+
 	mipi = &dsi->mipi;
 
 	if (mipi->max_tx_esc_clk == 0) {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
