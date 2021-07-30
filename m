Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACBC3DB62C
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Jul 2021 11:42:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5209E414CB;
	Fri, 30 Jul 2021 09:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CtCg43xsyF8g; Fri, 30 Jul 2021 09:42:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3951340684;
	Fri, 30 Jul 2021 09:42:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30C831BF368
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28B9E40241
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IQjjW7rHqxIm for <devel@linuxdriverproject.org>;
 Fri, 30 Jul 2021 09:42:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74BB140239
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:41:58 +0000 (UTC)
Received: from li-pc.loongson.cn (unknown [10.20.41.133])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxL0BeyQNha34mAA--.26376S4; 
 Fri, 30 Jul 2021 17:41:51 +0800 (CST)
From: lichenyang <lichenyang@loongson.cn>
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: [PATCH v4 3/3] drm/loongson: Add interrupt driver for LS7A
Date: Fri, 30 Jul 2021 17:41:48 +0800
Message-Id: <20210730094148.620768-3-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210730094148.620768-1-lichenyang@loongson.cn>
References: <20210730094148.620768-1-lichenyang@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: AQAAf9DxL0BeyQNha34mAA--.26376S4
X-Coremail-Antispam: 1UD129KBjvJXoW3Gry5ZFykGry7XFWUur1fXrb_yoWfXF4xpr
 sxAa4F9r45tF47u3sxAFZYyr13u3yfKas7WFZrG343Cryktw1UXa4rCFW7Jr47Zr9rJw12
 qryxGFWrCF1Uu3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUP2b7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26rWj6s0DM7CY07I2
 0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28IrcIa0xkI8VA2jI
 8067AKxVWUXwA2048vs2IY020Ec7CjxVAFwI0_Xr0E3s1l8cAvFVAK0II2c7xJM28CjxkF
 64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcV
 CY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv
 6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c
 02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE
 4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1lc2
 xSY4AK6svPMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8C
 rVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8Zw
 CIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x02
 67AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr
 0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU5DM
 a5UUUUU==
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQASA13QvNvknwAEsF
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
Cc: Huacai Chen <chenhuacai@kernel.org>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

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

Signed-off-by: lichenyang <lichenyang@loongson.cn>
---
 drivers/gpu/drm/loongson/Makefile        |  1 +
 drivers/gpu/drm/loongson/loongson_crtc.c | 40 +++++++++++-
 drivers/gpu/drm/loongson/loongson_drv.c  |  6 ++
 drivers/gpu/drm/loongson/loongson_drv.h  | 12 ++++
 drivers/gpu/drm/loongson/loongson_irq.c  | 80 ++++++++++++++++++++++++
 5 files changed, 137 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/loongson/loongson_irq.c

diff --git a/drivers/gpu/drm/loongson/Makefile b/drivers/gpu/drm/loongson/Makefile
index a842e85cf6ca..a046c42d8273 100644
--- a/drivers/gpu/drm/loongson/Makefile
+++ b/drivers/gpu/drm/loongson/Makefile
@@ -11,5 +11,6 @@ loongson-y := loongson_connector.o \
 	loongson_drv.o \
 	loongson_encoder.o \
 	loongson_i2c.o \
+	loongson_irq.o \
 	loongson_plane.o
 obj-$(CONFIG_DRM_LOONGSON) += loongson.o
diff --git a/drivers/gpu/drm/loongson/loongson_crtc.c b/drivers/gpu/drm/loongson/loongson_crtc.c
index b9eee34deab2..a0d13b641f85 100644
--- a/drivers/gpu/drm/loongson/loongson_crtc.c
+++ b/drivers/gpu/drm/loongson/loongson_crtc.c
@@ -154,19 +154,25 @@ static void loongson_crtc_mode_set_nofb(struct drm_crtc *crtc)
 }
 
 static void loongson_crtc_atomic_enable(struct drm_crtc *crtc,
-					struct drm_atomic_state *old_state)
+					struct drm_atomic_state *old_crtc_state)
 {
 	struct drm_device *dev = crtc->dev;
 	struct loongson_device *ldev = to_loongson_device(dev);
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
-					 struct drm_atomic_state *old_state)
+					 struct drm_atomic_state *old_crtc_state)
 {
 	struct drm_device *dev = crtc->dev;
 	struct loongson_device *ldev = to_loongson_device(dev);
@@ -175,6 +181,33 @@ static void loongson_crtc_atomic_disable(struct drm_crtc *crtc,
 
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
@@ -194,6 +227,7 @@ static enum drm_mode_status loongson_mode_valid(struct drm_crtc *crtc,
 
 static const struct drm_crtc_helper_funcs loongson_crtc_helper_funcs = {
 	.mode_valid = loongson_mode_valid,
+	.atomic_flush = loongson_crtc_atomic_flush,
 	.atomic_enable = loongson_crtc_atomic_enable,
 	.atomic_disable = loongson_crtc_atomic_disable,
 	.mode_set_nofb = loongson_crtc_mode_set_nofb,
@@ -205,6 +239,8 @@ static const struct drm_crtc_funcs loongson_crtc_funcs = {
 	.reset = drm_atomic_helper_crtc_reset,
 	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_crtc_destroy_state,
+	.enable_vblank = loongson_crtc_enable_vblank,
+	.disable_vblank = loongson_crtc_disable_vblank,
 };
 
 int loongson_crtc_init(struct loongson_device *ldev, int index)
diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
index 4c02cbe1a5e6..67676fe61cad 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.c
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -164,6 +164,12 @@ static int loongson_driver_init(struct drm_device *dev)
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
index 67d7d61d93f5..535e52b32d3f 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.h
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -15,9 +15,11 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_gem_vram_helper.h>
+#include <drm/drm_irq.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_plane.h>
 #include <drm/drm_plane_helper.h>
+#include <drm/drm_vblank.h>
 
 #include "loongson_i2c.h"
 
@@ -50,6 +52,7 @@
 #define FB_HSYNC_REG (0x1420)
 #define FB_VDISPLAY_REG (0x1480)
 #define FB_VSYNC_REG (0x14a0)
+#define FB_INT_REG (0x1570)
 
 #define CFG_FMT GENMASK(2, 0)
 #define CFG_FBSWITCH BIT(7)
@@ -61,6 +64,10 @@
 #define FB_PANCFG_DEF 0x80001311
 #define FB_HSYNC_PULSE (1 << 30)
 #define FB_VSYNC_PULSE (1 << 30)
+#define FB_VSYNC1_ENABLE (1 << 16)
+#define FB_VSYNC0_ENABLE (1 << 18)
+#define FB_VSYNC1_INT (1 << 0)
+#define FB_VSYNC0_INT (1 << 2)
 
 /* PIX PLL */
 #define LOOPC_MIN 24
@@ -149,6 +156,11 @@ struct loongson_plane *loongson_plane_init(struct drm_device *dev, int index);
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
index 000000000000..4ddbb632d669
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_irq.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <linux/pci.h>
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
+	int irq = to_pci_dev(dev->dev)->irq;;
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
+
-- 
2.32.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
