Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE233D3229
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Jul 2021 05:13:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C8DF40611;
	Fri, 23 Jul 2021 03:13:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3F65II6Urga2; Fri, 23 Jul 2021 03:13:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7132D405FE;
	Fri, 23 Jul 2021 03:13:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 493671BF9CB
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 03:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 396D9400C5
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 03:13:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMugotuUhnYt for <devel@linuxdriverproject.org>;
 Fri, 23 Jul 2021 03:13:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF4D840004
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 03:13:09 +0000 (UTC)
Received: from li-pc.loongson.cn (unknown [10.20.41.133])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxT0O2M_pgV_MiAA--.22070S4; 
 Fri, 23 Jul 2021 11:13:01 +0800 (CST)
From: lichenyang <lichenyang@loongson.cn>
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org, Huacai Chen <chenhuacai@kernel.org>
Subject: [PATCH v3 3/3] drm/loongson: Add interrupt driver for LS7A
Date: Fri, 23 Jul 2021 11:12:51 +0800
Message-Id: <20210723031251.200686-3-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210723031251.200686-1-lichenyang@loongson.cn>
References: <20210723031251.200686-1-lichenyang@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: AQAAf9DxT0O2M_pgV_MiAA--.22070S4
X-Coremail-Antispam: 1UD129KBjvJXoW3Jw48JF1fGFyktrWfKFy7trb_yoWftr43pr
 sxAa4F9r45tF47uwn8AFZ5Ar13C3yfKas7WFZrG343CryDt34UXa4rCFW7Jr47ZrW7Jw4a
 qryxGFWrCF1Uu3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUBjb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26rWj6s0DM7CY07I2
 0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28IrcIa0xkI8VA2jI
 8067AKxVWUXwA2048vs2IY020Ec7CjxVAFwI0_Gr0_Xr1l8cAvFVAK0II2c7xJM28CjxkF
 64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcV
 CY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280
 aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzV
 Aqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S
 6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JMxkIecxEwVCm-wCF04k20xvY0x0EwI
 xGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480
 Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7
 IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k2
 6cxKx2IYs7xG6r1I6r4UMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxV
 AFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07boMKtUUUUU=
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQALA13QvNs6VQAFsJ
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add LS7A DC vsync interrupt enable and close function, and
register irq_handler function interface.
Add vbrank event processing flow.

v3:
- Improve code readability.
- Use the to_pci_dev function to get pci_dev.

v2:
- Added error handling in the loongson_drm_load function.

Signed-off-by: lichenyang <lichenyang@loongson.cn>
---
 drivers/gpu/drm/loongson/Makefile        |  3 +-
 drivers/gpu/drm/loongson/loongson_crtc.c | 40 +++++++++-
 drivers/gpu/drm/loongson/loongson_drv.c  | 10 +++
 drivers/gpu/drm/loongson/loongson_drv.h  | 17 ++++-
 drivers/gpu/drm/loongson/loongson_irq.c  | 94 ++++++++++++++++++++++++
 5 files changed, 160 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/loongson/loongson_irq.c

diff --git a/drivers/gpu/drm/loongson/Makefile b/drivers/gpu/drm/loongson/Makefile
index 773b806e99a2..cc50b65c7e03 100644
--- a/drivers/gpu/drm/loongson/Makefile
+++ b/drivers/gpu/drm/loongson/Makefile
@@ -11,5 +11,6 @@ loongson-y := loongson_drv.o \
 	loongson_device.o \
 	loongson_connector.o \
 	loongson_encoder.o \
-	loongson_i2c.o
+	loongson_i2c.o \
+	loongson_irq.o
 obj-$(CONFIG_DRM_LOONGSON) += loongson.o
diff --git a/drivers/gpu/drm/loongson/loongson_crtc.c b/drivers/gpu/drm/loongson/loongson_crtc.c
index 163e24d85b02..d8b06256f754 100644
--- a/drivers/gpu/drm/loongson/loongson_crtc.c
+++ b/drivers/gpu/drm/loongson/loongson_crtc.c
@@ -154,19 +154,25 @@ static void loongson_crtc_mode_set_nofb(struct drm_crtc *crtc)
 }
 
 static void loongson_crtc_atomic_enable(struct drm_crtc *crtc,
-					struct drm_atomic_state *old_state)
+					struct drm_atomic_state *old_crtc_state)
 {
 	struct drm_device *dev = crtc->dev;
 	struct loongson_device *ldev = dev->dev_private;
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
 	struct loongson_device *ldev = dev->dev_private;
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
@@ -206,6 +240,8 @@ static const struct drm_crtc_funcs loongson_crtc_funcs = {
 	.destroy = drm_crtc_cleanup,
 	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_crtc_destroy_state,
+	.enable_vblank = loongson_crtc_enable_vblank,
+	.disable_vblank = loongson_crtc_disable_vblank,
 };
 
 int loongson_crtc_init(struct loongson_device *ldev, int index)
diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
index 214217b9b257..38ea41f3851b 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.c
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -172,6 +172,12 @@ static int loongson_drm_load(struct drm_device *dev)
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
 
@@ -198,6 +204,10 @@ static struct drm_driver loongson_drm_driver = {
 	.fops = &fops,
 	DRM_GEM_VRAM_DRIVER,
 
+	.irq_handler = loongson_irq_handler,
+	.irq_preinstall = loongson_irq_preinstall,
+	.irq_uninstall = loongson_irq_uninstall,
+
 	.name = DRIVER_NAME,
 	.desc = DRIVER_DESC,
 	.date = DRIVER_DATE,
diff --git a/drivers/gpu/drm/loongson/loongson_drv.h b/drivers/gpu/drm/loongson/loongson_drv.h
index c5e281cba0c4..6a3588bd1a62 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.h
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -4,9 +4,11 @@
 #define __LOONGSON_DRV_H__
 
 #include <drm/drm_drv.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_vblank.h>
 #include <drm/drm_gem.h>
+#include <drm/drm_irq.h>
 #include <drm/drm_fb_helper.h>
-#include <drm/drm_fourcc.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
@@ -49,6 +51,7 @@
 #define FB_HSYNC_REG (0x1420)
 #define FB_VDISPLAY_REG (0x1480)
 #define FB_VSYNC_REG (0x14a0)
+#define FB_INT_REG (0x1570)
 
 #define CFG_FMT GENMASK(2, 0)
 #define CFG_FBSWITCH BIT(7)
@@ -60,6 +63,10 @@
 #define FB_PANCFG_DEF 0x80001311
 #define FB_HSYNC_PULSE (1 << 30)
 #define FB_VSYNC_PULSE (1 << 30)
+#define FB_VSYNC1_ENABLE (1 << 16)
+#define FB_VSYNC0_ENABLE (1 << 18)
+#define FB_VSYNC1_INT (1 << 0)
+#define FB_VSYNC0_INT (1 << 2)
 
 /* PIX PLL */
 #define LOOPC_MIN 24
@@ -136,6 +143,14 @@ int loongson_encoder_init(struct loongson_device *ldev, int index);
 /* plane */
 int loongson_plane_init(struct loongson_crtc *lcrtc);
 
+/* irq */
+int loongson_irq_init(struct loongson_device *ldev);
+int loongson_crtc_enable_vblank(struct drm_crtc *crtc);
+void loongson_crtc_disable_vblank(struct drm_crtc *crtc);
+irqreturn_t loongson_irq_handler(int irq, void *arg);
+void loongson_irq_preinstall(struct drm_device *dev);
+void loongson_irq_uninstall(struct drm_device *dev);
+
 /* i2c */
 int loongson_dc_gpio_init(struct loongson_device *ldev);
 
diff --git a/drivers/gpu/drm/loongson/loongson_irq.c b/drivers/gpu/drm/loongson/loongson_irq.c
new file mode 100644
index 000000000000..1032b42c90c4
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_irq.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "loongson_drv.h"
+#include <linux/pci.h>
+
+int loongson_irq_init(struct loongson_device *ldev)
+{
+	int ret;
+	struct drm_device *dev = ldev->dev;
+	int irq = to_pci_dev(dev->dev)->irq;;
+
+	ret = drm_vblank_init(dev, ldev->num_crtc);
+	if (ret) {
+		dev_err(dev->dev, "Fatal error during vblank init: %d\n", ret);
+		return ret;
+	}
+	DRM_INFO("drm vblank init finished\n");
+
+	ret = drm_irq_install(dev, irq);
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
+irqreturn_t loongson_irq_handler(int irq, void *arg)
+{
+	struct drm_device *dev = (struct drm_device *) arg;
+	struct loongson_device *ldev = dev->dev_private;
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
+void loongson_irq_preinstall(struct drm_device *dev)
+{
+	struct loongson_device *ldev = dev->dev_private;
+
+	ls7a_mm_wreg(ldev, FB_INT_REG, 0x0000 << 16);
+}
+
+void loongson_irq_uninstall(struct drm_device *dev)
+{
+	struct loongson_device *ldev = dev->dev_private;
+
+	if (ldev == NULL)
+		return;
+
+	ls7a_mm_wreg(ldev, FB_INT_REG, 0x0000 << 16);
+}
-- 
2.32.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
