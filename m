Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA04249C44
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:47:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F188A22091;
	Wed, 19 Aug 2020 11:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W9m9eIB7w9Ll; Wed, 19 Aug 2020 11:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F45B20BF8;
	Wed, 19 Aug 2020 11:46:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4765A1BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 44CC586631
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-ZjYy-5rA8M for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4D6F386632
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14E902310F;
 Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837583;
 bh=7JhGbZ+Jj8x10CIemJJxWG5JRE7ESkXx61Uycvwm794=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xz4ZHfrzmYdeFttfQAIRRSYrD2365ly1qjd6PJc31330zlEm0tGrV1gEsrvboT6fc
 g7xY3ys36oMxQj+rNK7uVOhU1L06/iZL1pp/UnNiRKyWQiB2ms8jahZFqBMnkW1ERa
 xf11uR1goaXfCrffokUvSxEStjA4NhKO1aXMHNEs=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXt-00Eubm-1a; Wed, 19 Aug 2020 13:46:21 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 38/49] staging: hikey9xx/gpu: add kirin9xx driver to the
 building system
Date: Wed, 19 Aug 2020 13:46:06 +0200
Message-Id: <6bb2c71410a8065e2a2c5f13294b27154dbd786b.1597833138.git.mchehab+huawei@kernel.org>
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
 Chen Feng <puck.chen@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, John Stultz <john.stultz@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, mauro.chehab@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now that everything is in place, add the driver to the
building system.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/Kconfig      |  3 ++
 drivers/staging/hikey9xx/Makefile     |  1 +
 drivers/staging/hikey9xx/gpu/Kconfig  | 52 ++++++---------------------
 drivers/staging/hikey9xx/gpu/Makefile | 21 ++++-------
 4 files changed, 22 insertions(+), 55 deletions(-)

diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index 0e97b5b9a56a..b2ce886e1c4e 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -36,3 +36,6 @@ config REGULATOR_HI6421V600
 	  This driver provides support for the voltage regulators on
 	  HiSilicon Hi6421v600 PMU / Codec IC.
 	  This is used on Kirin 3670 boards, like HiKey 970.
+
+# DRM/KMS driver
+source "drivers/staging/hikey9xx/gpu/Kconfig"
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 9371dcc3d35b..1a848d398ab6 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_SPMI_HISI3670)		+= hisi-spmi-controller.o
 obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
+obj-y					+= gpu/
diff --git a/drivers/staging/hikey9xx/gpu/Kconfig b/drivers/staging/hikey9xx/gpu/Kconfig
index 5533ee624f29..957da13bcf81 100644
--- a/drivers/staging/hikey9xx/gpu/Kconfig
+++ b/drivers/staging/hikey9xx/gpu/Kconfig
@@ -1,52 +1,22 @@
-config DRM_HISI_KIRIN
-	tristate "DRM Support for Hisilicon Kirin series SoCs Platform"
+config DRM_HISI_KIRIN9XX
+	tristate "DRM Support for Hisilicon Kirin9xx series SoCs Platform"
 	depends on DRM && OF && ARM64
 	select DRM_KMS_HELPER
 	select DRM_GEM_CMA_HELPER
 	select DRM_KMS_CMA_HELPER
-	select HISI_KIRIN_DW_DSI
-	help
-	  Choose this option if you have a hisilicon Kirin chipsets(hi6220).
-	  If M is selected the module will be called kirin-drm.
-
-config DRM_KIRIN_960
-	tristate "DRM Support for Hisilicon Kirin960 series SoCs Platform"
-	depends on DRM && OF && ARM64
-	select DRM_KMS_HELPER
-	select DRM_GEM_CMA_HELPER
-	select DRM_KMS_CMA_HELPER
-	select HISI_KIRIN_DW_DSI
-	help
-	  Choose this option if you have a hisilicon Kirin chipsets(kirin960).
-	  If M is selected the module will be called kirin-drm.
-
-config HISI_KIRIN_DW_DSI
-	tristate "HiSilicon Kirin specific extensions for Synopsys DW MIPI DSI"
-	depends on DRM_HISI_KIRIN || DRM_KIRIN_960
 	select DRM_MIPI_DSI
-	select DRM_PANEL
 	help
-	 This selects support for HiSilicon Kirin SoC specific extensions for
-	 the Synopsys DesignWare DSI driver. If you want to enable MIPI DSI on
-	 hi6220 based SoC, you should selet this option.
+	  Choose this option if you have a HiSilicon Kirin960 or Kirin970.
+	  If M is selected the module will be called kirin9xx-drm.
 
-config DRM_PANEL_HIKEY960_NTE300NTS
-	tristate "Hikey960 NTE300NTS video mode panel"
-	depends on OF
-	depends on DRM_MIPI_DSI
-	help
-		Say Y here if you want to enable LCD panel driver for Hikey960 boadr.
-		Current support panel: NTE300NTS(1920X1200)
-
-config HISI_FB_970
-	tristate "DRM Support for Hisilicon Kirin970 series SoCs Platform"
-	depends on DRM && OF && ARM64
+config DRM_HISI_KIRIN970
+	bool "Enable support for Hisilicon Kirin970"
 	depends on DRM_MIPI_DSI
+	depends on DRM_HISI_KIRIN9XX
 	help
 	  Choose this option if you have a hisilicon Kirin chipsets(kirin970).
-	  If M is selected the module will be called kirin-drm.
 
-config HDMI_ADV7511_AUDIO
-	tristate "HDMI Support ADV7511 audio"
-	help
-	  Choose this option to support HDMI ADV7511 audio.
+config DRM_HISI_KIRIN9XX_DSI
+	tristate
+	depends on DRM_HISI_KIRIN9XX
+	default y
diff --git a/drivers/staging/hikey9xx/gpu/Makefile b/drivers/staging/hikey9xx/gpu/Makefile
index a5e008365a57..9df7894ccb42 100644
--- a/drivers/staging/hikey9xx/gpu/Makefile
+++ b/drivers/staging/hikey9xx/gpu/Makefile
@@ -1,15 +1,8 @@
-EXTRA_CFLAGS += \
-		-Iinclude/drm
-kirin-drm-y := kirin_fbdev.o \
-		kirin_fb.o \
-		kirin_drm_drv.o \
-		kirin_drm_dss.o \
-		kirin_drm_dpe_utils.o \
-		kirin_drm_overlay_utils.o \
-		kirin_pwm.o \
-		hdmi/adv7535.o \
+# SPDX-License-Identifier: GPL-2.0-only
+kirin9xx-drm-y := kirin9xx_drm_drv.o \
+		  kirin9xx_drm_dss.o \
+		  kirin9xx_drm_dpe_utils.o \
+		  kirin9xx_drm_overlay_utils.o
 
-
-obj-$(CONFIG_HDMI_ADV7511_AUDIO) += hdmi/adv7535_audio.o
-obj-$(CONFIG_DRM_KIRIN_960) += kirin-drm.o
-obj-$(CONFIG_HISI_KIRIN_DW_DSI) += dw_drm_dsi.o
+obj-$(CONFIG_DRM_HISI_KIRIN9XX) += kirin9xx-drm.o kirin9xx_pwm.o
+obj-$(CONFIG_DRM_HISI_KIRIN9XX_DSI) += kirin9xx_dw_drm_dsi.o
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
