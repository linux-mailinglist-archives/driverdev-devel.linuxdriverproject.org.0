Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EBB4C2C1B
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 13:50:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E94A40145;
	Thu, 24 Feb 2022 12:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v_kp0B8fIANy; Thu, 24 Feb 2022 12:50:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55DA74019E;
	Thu, 24 Feb 2022 12:50:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AED01BF2A5
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 12:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45ABB40145
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 12:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HPG3bYxeUHQt for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 12:50:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp2.osuosl.org (Postfix) with ESMTP id 903CF40122
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 12:50:31 +0000 (UTC)
Received: from li-MSI.loongson.cn (unknown [10.20.42.122])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxCMk_fRdiy3EGAA--.7308S4;
 Thu, 24 Feb 2022 20:42:41 +0800 (CST)
From: Chenyang Li <lichenyang@loongson.cn>
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: [PATCH v6 3/3] drm/loongson: Add interrupt driver for LS7A
Date: Thu, 24 Feb 2022 20:42:30 +0800
Message-Id: <20220224124230.172564-3-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220224124230.172564-1-lichenyang@loongson.cn>
References: <20220224124230.172564-1-lichenyang@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: AQAAf9DxCMk_fRdiy3EGAA--.7308S4
X-Coremail-Antispam: 1UD129KBjvJXoW3Ww4DXr47Ar1xuFW5tw1kZrb_yoWfCF1fpr
 43Aa4F9r45tF47uwn5AFW8Ar13u3y3KF97WFZrG343C34Dtw1UXa4rCFW7JF47Zr9rJa42
 qryxGF4ruF1Uu3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUPq14x267AKxVWrJVCq3wAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87I2jVAFwI0_Jryl82xGYIkIc2
 x26xkF7I0E14v26ryj6s0DM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0
 Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UM2
 8EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2AI
 xVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20x
 vE14v26r106r15McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xv
 r2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E8cxan2IY04
 v7MxkIecxEwVCm-wCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s02
 6c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw
 0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvE
 c7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14
 v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x
 0JUAGYLUUUUU=
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQAHA13QvO5t9wAAsA
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
Cc: liyi <liyi@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, lichenyang <lichenyang@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: lichenyang <lichenyang@loongson.cn>

Add LS7A DC vsync interrupt enable and close function, and
register irq_handler function interface.
Add vbrank event processing flow.

v4:
- Replace drm_irq_install with devm_request_irq.
- Delete the irq_ hooks in drm_driver.

v3:
- Improve code readability.
- Use the to_pci_dev function to get pci_dev.

v2:
- Added error handling in the loongson_drm_load function.

Signed-off-by: liyi <liyi@loongson.cn>
Signed-off-by: lichenyang <lichenyang@loongson.cn>
Signed-off-by: Chenyang Li <lichenyang@loongson.cn>
---
 drivers/gpu/drm/loongson/Makefile        |  1 +
 drivers/gpu/drm/loongson/loongson_crtc.c | 37 +++++++++++
 drivers/gpu/drm/loongson/loongson_drv.c  | 21 +++++-
 drivers/gpu/drm/loongson/loongson_drv.h  | 10 +++
 drivers/gpu/drm/loongson/loongson_irq.c  | 82 ++++++++++++++++++++++++
 5 files changed, 150 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/loongson/loongson_irq.c

diff --git a/drivers/gpu/drm/loongson/Makefile b/drivers/gpu/drm/loongson/Makefile
index 4a5fab7d000b..b083854d789b 100644
--- a/drivers/gpu/drm/loongson/Makefile
+++ b/drivers/gpu/drm/loongson/Makefile
@@ -10,5 +10,6 @@ loongson-y := loongson_connector.o \
 	loongson_drv.o \
 	loongson_encoder.o \
 	loongson_i2c.o \
+	loongson_irq.o \
 	loongson_plane.o
 obj-$(CONFIG_DRM_LOONGSON) += loongson.o
diff --git a/drivers/gpu/drm/loongson/loongson_crtc.c b/drivers/gpu/drm/loongson/loongson_crtc.c
index ec14eca04548..18388b9e7a6a 100644
--- a/drivers/gpu/drm/loongson/loongson_crtc.c
+++ b/drivers/gpu/drm/loongson/loongson_crtc.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2022 Loongson Inc. */
 
 #include <drm/drm_fourcc.h>
+#include <drm/drm_vblank.h>
 
 #include "loongson_drv.h"
 
@@ -165,8 +166,14 @@ static void loongson_crtc_atomic_enable(struct drm_crtc *crtc,
 	struct loongson_crtc *lcrtc = to_loongson_crtc(crtc);
 	u32 reg_offset = lcrtc->reg_offset;
 
+	if (lcrtc->cfg_reg & CFG_ENABLE)
+		goto vblank_on;
+
 	lcrtc->cfg_reg |= CFG_ENABLE;
 	ls7a_mm_wreg(ldev, FB_CFG_REG + reg_offset, lcrtc->cfg_reg);
+
+vblank_on:
+	drm_crtc_vblank_on(crtc);
 }
 
 static void loongson_crtc_atomic_disable(struct drm_crtc *crtc,
@@ -179,6 +186,33 @@ static void loongson_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	lcrtc->cfg_reg &= ~CFG_ENABLE;
 	ls7a_mm_wreg(ldev, FB_CFG_REG + reg_offset, lcrtc->cfg_reg);
+
+	spin_lock_irq(&crtc->dev->event_lock);
+	if (crtc->state->event) {
+		drm_crtc_send_vblank_event(crtc, crtc->state->event);
+		crtc->state->event = NULL;
+	}
+	spin_unlock_irq(&crtc->dev->event_lock);
+
+	drm_crtc_vblank_off(crtc);
+}
+
+static void loongson_crtc_atomic_flush(struct drm_crtc *crtc,
+				       struct drm_atomic_state *state)
+{
+	struct drm_pending_vblank_event *event = crtc->state->event;
+
+	if (!event)
+		return;
+
+	crtc->state->event = NULL;
+
+	spin_lock_irq(&crtc->dev->event_lock);
+	if (drm_crtc_vblank_get(crtc) == 0)
+		drm_crtc_arm_vblank_event(crtc, event);
+	else
+		drm_crtc_send_vblank_event(crtc, event);
+	spin_unlock_irq(&crtc->dev->event_lock);
 }
 
 static enum drm_mode_status loongson_mode_valid(struct drm_crtc *crtc,
@@ -198,6 +232,7 @@ static enum drm_mode_status loongson_mode_valid(struct drm_crtc *crtc,
 
 static const struct drm_crtc_helper_funcs loongson_crtc_helper_funcs = {
 	.mode_valid = loongson_mode_valid,
+	.atomic_flush = loongson_crtc_atomic_flush,
 	.atomic_enable = loongson_crtc_atomic_enable,
 	.atomic_disable = loongson_crtc_atomic_disable,
 	.mode_set_nofb = loongson_crtc_mode_set_nofb,
@@ -209,6 +244,8 @@ static const struct drm_crtc_funcs loongson_crtc_funcs = {
 	.reset = drm_atomic_helper_crtc_reset,
 	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_crtc_destroy_state,
+	.enable_vblank = loongson_crtc_enable_vblank,
+	.disable_vblank = loongson_crtc_disable_vblank,
 };
 
 int loongson_crtc_init(struct loongson_device *ldev, int index)
diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
index dc3ccbb36569..991c373301a2 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.c
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -6,6 +6,18 @@
  *         Chenyang Li, lichenyang@loongson.cn
  */
 
+/*
+ * Completed
+ * 1.Displays controller device initialization and display funcitons
+ * 2.I2c bus driver and DDC functions
+ * 3.Vblank and vsync interrupt support
+ *  
+ * Todo
+ * 1.Video bios read and parse functions
+ * 2.Hardware cursor driver
+ * 3.New device support as well as Loongson GPU
+*/
+
 #include <linux/console.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
@@ -21,9 +33,10 @@
 /* Interface history:
  * 0.1 - original.
  * 0.2 - add i2c and connector detect.
+ * 0.3 - Vblank and vsync interrupt support.
  */
 #define DRIVER_MAJOR 0
-#define DRIVER_MINOR 2
+#define DRIVER_MINOR 3
 
 static const struct drm_mode_config_funcs loongson_mode_funcs = {
 	.fb_create = drm_gem_fb_create,
@@ -166,6 +179,12 @@ static int loongson_driver_init(struct drm_device *dev)
 		goto err;
 	}
 
+	ret = loongson_irq_init(ldev);
+	if (ret) {
+		dev_err(dev->dev, "Fatal error during irq init: %d\n", ret);
+		goto err;
+	}
+
 	drm_kms_helper_poll_init(dev);
 	drm_mode_config_reset(dev);
 
diff --git a/drivers/gpu/drm/loongson/loongson_drv.h b/drivers/gpu/drm/loongson/loongson_drv.h
index e8ca0eac827c..ec22dff89e88 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.h
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -38,6 +38,7 @@
 #define FB_HSYNC_REG (0x1420)
 #define FB_VDISPLAY_REG (0x1480)
 #define FB_VSYNC_REG (0x14a0)
+#define FB_INT_REG (0x1570)
 
 #define CFG_FMT GENMASK(2, 0)
 #define CFG_FBSWITCH BIT(7)
@@ -49,6 +50,10 @@
 #define FB_PANCFG_DEF 0x80001311
 #define FB_HSYNC_PULSE (1 << 30)
 #define FB_VSYNC_PULSE (1 << 30)
+#define FB_VSYNC1_ENABLE (1 << 16)
+#define FB_VSYNC0_ENABLE (1 << 18)
+#define FB_VSYNC1_INT (1 << 0)
+#define FB_VSYNC0_INT (1 << 2)
 
 /* PIX PLL */
 #define LOOPC_MIN 24
@@ -126,6 +131,11 @@ struct loongson_plane *loongson_plane_init(struct drm_device *dev, int index);
 /* i2c */
 int loongson_dc_gpio_init(struct loongson_device *ldev);
 
+/* irq */
+int loongson_irq_init(struct loongson_device *ldev);
+int loongson_crtc_enable_vblank(struct drm_crtc *crtc);
+void loongson_crtc_disable_vblank(struct drm_crtc *crtc);
+
 /* device */
 u32 loongson_gpu_offset(struct drm_plane_state *state,
 			struct loongson_device *dev);
diff --git a/drivers/gpu/drm/loongson/loongson_irq.c b/drivers/gpu/drm/loongson/loongson_irq.c
new file mode 100644
index 000000000000..89e7198115d3
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_irq.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Copyright (C) 2022 Loongson Inc. */
+
+#include <linux/pci.h>
+
+#include <drm/drm_vblank.h>
+
+#include "loongson_drv.h"
+
+static irqreturn_t loongson_irq_handler(int irq, void *arg)
+{
+	struct drm_device *dev = (struct drm_device *) arg;
+	struct loongson_device *ldev = to_loongson_device(dev);
+	struct loongson_crtc *lcrtc;
+	u32 val;
+
+	val = ls7a_mm_rreg(ldev, FB_INT_REG);
+	ls7a_mm_wreg(ldev, FB_INT_REG, val & (0xffff << 16));
+
+	if (val & FB_VSYNC0_INT)
+		lcrtc = ldev->mode_info[0].crtc;
+	else if (val & FB_VSYNC1_INT)
+		lcrtc = ldev->mode_info[1].crtc;
+
+	drm_crtc_handle_vblank(&lcrtc->base);
+
+	return IRQ_HANDLED;
+}
+
+int loongson_irq_init(struct loongson_device *ldev)
+{
+	int ret;
+	struct drm_device *dev = &ldev->dev;
+	int irq = to_pci_dev(dev->dev)->irq;
+
+	ret = drm_vblank_init(dev, ldev->num_crtc);
+	if (ret) {
+		dev_err(dev->dev, "Fatal error during vblank init: %d\n", ret);
+		return ret;
+	}
+	DRM_INFO("drm vblank init finished\n");
+
+	ret = devm_request_irq(dev->dev, irq, loongson_irq_handler, 0,
+			       "loongson-drm", dev);
+	if (ret) {
+		dev_err(dev->dev, "Fatal error during irq install: %d\n", ret);
+		return ret;
+	}
+	DRM_INFO("loongson irq initialized\n");
+
+	return 0;
+}
+
+int loongson_crtc_enable_vblank(struct drm_crtc *crtc)
+{
+	struct loongson_crtc *lcrtc = to_loongson_crtc(crtc);
+	struct loongson_device *ldev = lcrtc->ldev;
+	u32 reg_val = ls7a_mm_rreg(ldev, FB_INT_REG);
+
+	if (lcrtc->crtc_id)
+		reg_val |= FB_VSYNC1_ENABLE;
+	else
+		reg_val |= FB_VSYNC0_ENABLE;
+
+	ls7a_mm_wreg(ldev, FB_INT_REG, reg_val);
+
+	return 0;
+}
+
+void loongson_crtc_disable_vblank(struct drm_crtc *crtc)
+{
+	struct loongson_crtc *lcrtc = to_loongson_crtc(crtc);
+	struct loongson_device *ldev = lcrtc->ldev;
+	u32 reg_val = ls7a_mm_rreg(ldev, FB_INT_REG);
+
+	if (lcrtc->crtc_id)
+		reg_val &= ~FB_VSYNC1_ENABLE;
+	else
+		reg_val &= ~FB_VSYNC0_ENABLE;
+
+	ls7a_mm_wreg(ldev, FB_INT_REG, reg_val);
+}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
