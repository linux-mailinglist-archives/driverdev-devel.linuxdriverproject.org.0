Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F067A3DB632
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Jul 2021 11:42:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6024460E6E;
	Fri, 30 Jul 2021 09:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sjJwajAN3p8Y; Fri, 30 Jul 2021 09:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9747260671;
	Fri, 30 Jul 2021 09:42:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 600141BF368
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A36C40122
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:42:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sj2f11jUelf7 for <devel@linuxdriverproject.org>;
 Fri, 30 Jul 2021 09:41:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4437340104
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:41:58 +0000 (UTC)
Received: from li-pc.loongson.cn (unknown [10.20.41.133])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxL0BeyQNha34mAA--.26376S2; 
 Fri, 30 Jul 2021 17:41:50 +0800 (CST)
From: lichenyang <lichenyang@loongson.cn>
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: [PATCH v4 1/3] drm/loongson: Add DRM Driver for Loongson 7A1000
 bridge chip
Date: Fri, 30 Jul 2021 17:41:46 +0800
Message-Id: <20210730094148.620768-1-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CM-TRANSID: AQAAf9DxL0BeyQNha34mAA--.26376S2
X-Coremail-Antispam: 1UD129KBjvAXoWfur47tr45KFW7Zr48tF1UJrb_yoW5Cr48Co
 WxZFnxW3yrXr1xAFZ09rn3tF17ZF4DXanIkrWSyr1DJw4Yy3Z8tF9Igr4fAryfAF1FyF4U
 A34Ykr4xGF47JrZ5n29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
 AaLaJ3UjIYCTnIWjp_UUUYT7AC8VAFwI0_Gr0_Xr1l1xkIjI8I6I8E6xAIw20EY4v20xva
 j40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2
 x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVWx
 JVW8Jr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
 CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
 2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
 W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
 Y2ka0xkIwI1lc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r
 4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF
 67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2I
 x0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI42IY
 6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa
 73UjIFyTuYvjfUoOJ5UUUUU
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQASA13QvNvknwABsA
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
Cc: Huacai Chen <chenhuacai@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 Chenyang Li <lichenyang@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Chenyang Li <lichenyang@loongson.cn>

This patch adds an initial DRM driver for the Loongson LS7A1000
bridge chip(LS7A). The LS7A bridge chip contains two display
controllers, support dual display output. The maximum support for
each channel display is to 1920x1080@60Hz.
At present, DC device detection and DRM driver registration are
completed, the crtc/plane/encoder/connector objects has been
implemented.
On Loongson 3A4000 CPU and 7A1000 system, we have achieved the use
of dual screen, and support dual screen clone mode and expansion
mode.

v10:
- Replace the drmm_ version functions.
- Replace the simple_encoder version function.
- Alphabetize file names.

v9:
- Optimize the error handling process.
- Remove the useless flags parameter.
- Fix some incorrect use of variables and constructs.

v8:
- Update the atomic_update function interface.

v7:
- The pixel clock is limited to less than 173000.

v6:
- Remove spin_lock in mmio reg read and write.
- TO_UNCAC is replac with ioremap.
- Fix error arguments in crtc_atomic_enable/disable/mode_valid.

v5:
- Change the name of the chip to LS7A.
- Change magic value in crtc to macros.
- Correct mistakes words.
- Change the register operation function prefix to ls7a.

v4:
- Move the mode_valid function to the crtc.

v3:
- Move the mode_valid function to the connector and optimize it.
- Fix num_crtc calculation method.

v2:
- Complete the case of 32-bit color in CRTC.

Signed-off-by: Chenyang Li <lichenyang@loongson.cn>
---
 drivers/gpu/drm/Kconfig                       |   2 +
 drivers/gpu/drm/Makefile                      |   1 +
 drivers/gpu/drm/loongson/Kconfig              |  14 +
 drivers/gpu/drm/loongson/Makefile             |  14 +
 drivers/gpu/drm/loongson/loongson_connector.c |  47 +++
 drivers/gpu/drm/loongson/loongson_crtc.c      | 238 +++++++++++++++
 drivers/gpu/drm/loongson/loongson_device.c    |  35 +++
 drivers/gpu/drm/loongson/loongson_drv.c       | 271 ++++++++++++++++++
 drivers/gpu/drm/loongson/loongson_drv.h       | 149 ++++++++++
 drivers/gpu/drm/loongson/loongson_encoder.c   |  21 ++
 drivers/gpu/drm/loongson/loongson_plane.c     |  92 ++++++
 11 files changed, 884 insertions(+)
 create mode 100644 drivers/gpu/drm/loongson/Kconfig
 create mode 100644 drivers/gpu/drm/loongson/Makefile
 create mode 100644 drivers/gpu/drm/loongson/loongson_connector.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_crtc.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_device.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_drv.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_drv.h
 create mode 100644 drivers/gpu/drm/loongson/loongson_encoder.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_plane.c

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 7ff89690a976..08562d9be6e3 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -365,6 +365,8 @@ source "drivers/gpu/drm/xen/Kconfig"
 
 source "drivers/gpu/drm/vboxvideo/Kconfig"
 
+source "drivers/gpu/drm/loongson/Kconfig"
+
 source "drivers/gpu/drm/lima/Kconfig"
 
 source "drivers/gpu/drm/panfrost/Kconfig"
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index a118692a6df7..29c05b8cf2ad 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -119,6 +119,7 @@ obj-$(CONFIG_DRM_PL111) += pl111/
 obj-$(CONFIG_DRM_TVE200) += tve200/
 obj-$(CONFIG_DRM_XEN) += xen/
 obj-$(CONFIG_DRM_VBOXVIDEO) += vboxvideo/
+obj-$(CONFIG_DRM_LOONGSON) += loongson/
 obj-$(CONFIG_DRM_LIMA)  += lima/
 obj-$(CONFIG_DRM_PANFROST) += panfrost/
 obj-$(CONFIG_DRM_ASPEED_GFX) += aspeed/
diff --git a/drivers/gpu/drm/loongson/Kconfig b/drivers/gpu/drm/loongson/Kconfig
new file mode 100644
index 000000000000..3cf42a4cca08
--- /dev/null
+++ b/drivers/gpu/drm/loongson/Kconfig
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config DRM_LOONGSON
+	tristate "DRM support for LS7A bridge chipset"
+	depends on DRM && PCI
+	depends on CPU_LOONGSON64
+	select DRM_KMS_HELPER
+	select DRM_VRAM_HELPER
+	select DRM_TTM
+	select DRM_TTM_HELPER
+	default n
+	help
+	  Support the display controllers found on the Loongson LS7A
+	  bridge.
diff --git a/drivers/gpu/drm/loongson/Makefile b/drivers/gpu/drm/loongson/Makefile
new file mode 100644
index 000000000000..d73ad44fe1d5
--- /dev/null
+++ b/drivers/gpu/drm/loongson/Makefile
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Makefile for loongson drm drivers.
+# This driver provides support for the
+# Direct Rendering Infrastructure (DRI)
+
+ccflags-y := -Iinclude/drm
+loongson-y := loongson_connector.o \
+	loongson_crtc.o \
+	loongson_device.o \
+	loongson_drv.o \
+	loongson_encoder.o \
+	loongson_plane.o
+obj-$(CONFIG_DRM_LOONGSON) += loongson.o
diff --git a/drivers/gpu/drm/loongson/loongson_connector.c b/drivers/gpu/drm/loongson/loongson_connector.c
new file mode 100644
index 000000000000..a4762d8f9987
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_connector.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "loongson_drv.h"
+
+static int loongson_get_modes(struct drm_connector *connector)
+{
+	int count;
+
+	count = drm_add_modes_noedid(connector, 1920, 1080);
+	drm_set_preferred_mode(connector, 1024, 768);
+
+	return count;
+}
+
+static const struct drm_connector_helper_funcs loongson_connector_helper = {
+	.get_modes = loongson_get_modes,
+};
+
+static const struct drm_connector_funcs loongson_connector_funcs = {
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = drm_connector_cleanup,
+	.reset = drm_atomic_helper_connector_reset,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+int loongson_connector_init(struct loongson_device *ldev, int index)
+{
+	struct drm_device *dev = &ldev->dev;
+	struct drm_connector *connector;
+	struct loongson_connector *lconnector;
+
+	lconnector = kzalloc(sizeof(struct loongson_connector), GFP_KERNEL);
+	if (!lconnector)
+		return -ENOMEM;
+
+	lconnector->ldev = ldev;
+	lconnector->id = index;
+
+	ldev->mode_info[index].connector = lconnector;
+	connector = &lconnector->base;
+	drm_connector_init(dev, connector, &loongson_connector_funcs,
+			   DRM_MODE_CONNECTOR_Unknown);
+	drm_connector_helper_add(connector, &loongson_connector_helper);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/loongson/loongson_crtc.c b/drivers/gpu/drm/loongson/loongson_crtc.c
new file mode 100644
index 000000000000..b9eee34deab2
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_crtc.c
@@ -0,0 +1,238 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "loongson_drv.h"
+
+static void try_each_loopc(u32 clk, u32 pstdiv, u32 frefc,
+			   struct pix_pll *pll_config)
+{
+	u32 loopc;
+	u32 clk_out;
+	u32 precision;
+	u32 min = 1000;
+	u32 base_clk = 100000L;
+
+	for (loopc = LOOPC_MIN; loopc < LOOPC_MAX; loopc++) {
+		if ((loopc < FRE_REF_MIN * frefc) ||
+		    (loopc > FRE_REF_MAX * frefc))
+			continue;
+
+		clk_out = base_clk * loopc / frefc;
+		precision = (clk > clk_out) ? (clk - clk_out) : (clk_out - clk);
+		if (precision < min) {
+			pll_config->l2_div = pstdiv;
+			pll_config->l1_loopc = loopc;
+			pll_config->l1_frefc = frefc;
+		}
+	}
+}
+
+static void cal_freq(u32 pixclock, struct pix_pll *pll_config)
+{
+	u32 pstdiv;
+	u32 frefc;
+	u32 clk;
+
+	for (pstdiv = 1; pstdiv < PST_DIV_MAX; pstdiv++) {
+		clk = pixclock * pstdiv;
+		for (frefc = DIV_REF_MIN; frefc <= DIV_REF_MAX; frefc++)
+			try_each_loopc(clk, pstdiv, frefc, pll_config);
+	}
+}
+
+static void config_pll(struct loongson_device *ldev, unsigned long pll_base,
+		       struct pix_pll *pll_cfg)
+{
+	u32 val;
+	u32 count = 0;
+
+	/* clear sel_pll_out0 */
+	val = ls7a_io_rreg(ldev, pll_base + 0x4);
+	val &= ~(1UL << 8);
+	ls7a_io_wreg(ldev, pll_base + 0x4, val);
+
+	/* set pll_pd */
+	val = ls7a_io_rreg(ldev, pll_base + 0x4);
+	val |= (1UL << 13);
+	ls7a_io_wreg(ldev, pll_base + 0x4, val);
+
+	/* clear set_pll_param */
+	val = ls7a_io_rreg(ldev, pll_base + 0x4);
+	val &= ~(1UL << 11);
+	ls7a_io_wreg(ldev, pll_base + 0x4, val);
+
+	/* clear old value & config new value */
+	val = ls7a_io_rreg(ldev, pll_base + 0x4);
+	val &= ~(0x7fUL << 0);
+	val |= (pll_cfg->l1_frefc << 0); /* refc */
+	ls7a_io_wreg(ldev, pll_base + 0x4, val);
+	val = ls7a_io_rreg(ldev, pll_base + 0x0);
+	val &= ~(0x7fUL << 0);
+	val |= (pll_cfg->l2_div << 0); /* div */
+	val &= ~(0x1ffUL << 21);
+	val |= (pll_cfg->l1_loopc << 21); /* loopc */
+	ls7a_io_wreg(ldev, pll_base + 0x0, val);
+
+	/* set set_pll_param */
+	val = ls7a_io_rreg(ldev, pll_base + 0x4);
+	val |= (1UL << 11);
+	ls7a_io_wreg(ldev, pll_base + 0x4, val);
+	/* clear pll_pd */
+	val = ls7a_io_rreg(ldev, pll_base + 0x4);
+	val &= ~(1UL << 13);
+	ls7a_io_wreg(ldev, pll_base + 0x4, val);
+
+	while (!(ls7a_io_rreg(ldev, pll_base + 0x4) & 0x80)) {
+		cpu_relax();
+		count++;
+		if (count >= 1000) {
+			drm_err(&ldev->dev, "loongson-7A PLL lock failed\n");
+			break;
+		}
+	}
+
+	val = ls7a_io_rreg(ldev, pll_base + 0x4);
+	val |= (1UL << 8);
+	ls7a_io_wreg(ldev, pll_base + 0x4, val);
+}
+
+static void loongson_crtc_mode_set_nofb(struct drm_crtc *crtc)
+{
+	struct drm_device *dev = crtc->dev;
+	struct loongson_device *ldev = to_loongson_device(dev);
+	struct loongson_crtc *lcrtc = to_loongson_crtc(crtc);
+	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
+	const struct drm_format_info *format;
+	struct pix_pll pll_cfg;
+	u32 hr, hss, hse, hfl;
+	u32 vr, vss, vse, vfl;
+	u32 pix_freq;
+	u32 reg_offset;
+
+	hr = mode->hdisplay;
+	hss = mode->hsync_start;
+	hse = mode->hsync_end;
+	hfl = mode->htotal;
+
+	vr = mode->vdisplay;
+	vss = mode->vsync_start;
+	vse = mode->vsync_end;
+	vfl = mode->vtotal;
+
+	pix_freq = mode->clock;
+	reg_offset = lcrtc->reg_offset;
+	format = crtc->primary->state->fb->format;
+
+	ls7a_mm_wreg(ldev, FB_DITCFG_REG + reg_offset, 0);
+	ls7a_mm_wreg(ldev, FB_DITTAB_LO_REG + reg_offset, 0);
+	ls7a_mm_wreg(ldev, FB_DITTAB_HI_REG + reg_offset, 0);
+	ls7a_mm_wreg(ldev, FB_PANCFG_REG + reg_offset, FB_PANCFG_DEF);
+	ls7a_mm_wreg(ldev, FB_PANTIM_REG + reg_offset, 0);
+
+	ls7a_mm_wreg(ldev, FB_HDISPLAY_REG + reg_offset, (hfl << 16) | hr);
+	ls7a_mm_wreg(ldev, FB_HSYNC_REG + reg_offset,
+		     FB_HSYNC_PULSE | (hse << 16) | hss);
+
+	ls7a_mm_wreg(ldev, FB_VDISPLAY_REG + reg_offset, (vfl << 16) | vr);
+	ls7a_mm_wreg(ldev, FB_VSYNC_REG + reg_offset,
+		     FB_VSYNC_PULSE | (vse << 16) | vss);
+
+	switch (format->format) {
+	case DRM_FORMAT_RGB565:
+		lcrtc->cfg_reg |= 0x3;
+		break;
+	case DRM_FORMAT_RGB888:
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_ARGB8888:
+	default:
+		lcrtc->cfg_reg |= 0x4;
+		break;
+	}
+	ls7a_mm_wreg(ldev, FB_CFG_REG + reg_offset, lcrtc->cfg_reg);
+
+	cal_freq(pix_freq, &pll_cfg);
+	config_pll(ldev, LS7A_PIX_PLL + reg_offset, &pll_cfg);
+}
+
+static void loongson_crtc_atomic_enable(struct drm_crtc *crtc,
+					struct drm_atomic_state *old_state)
+{
+	struct drm_device *dev = crtc->dev;
+	struct loongson_device *ldev = to_loongson_device(dev);
+	struct loongson_crtc *lcrtc = to_loongson_crtc(crtc);
+	u32 reg_offset = lcrtc->reg_offset;
+
+	lcrtc->cfg_reg |= CFG_ENABLE;
+	ls7a_mm_wreg(ldev, FB_CFG_REG + reg_offset, lcrtc->cfg_reg);
+}
+
+static void loongson_crtc_atomic_disable(struct drm_crtc *crtc,
+					 struct drm_atomic_state *old_state)
+{
+	struct drm_device *dev = crtc->dev;
+	struct loongson_device *ldev = to_loongson_device(dev);
+	struct loongson_crtc *lcrtc = to_loongson_crtc(crtc);
+	u32 reg_offset = lcrtc->reg_offset;
+
+	lcrtc->cfg_reg &= ~CFG_ENABLE;
+	ls7a_mm_wreg(ldev, FB_CFG_REG + reg_offset, lcrtc->cfg_reg);
+}
+
+static enum drm_mode_status loongson_mode_valid(struct drm_crtc *crtc,
+						const struct drm_display_mode *mode)
+{
+	if (mode->hdisplay > 1920)
+		return MODE_BAD;
+	if (mode->vdisplay > 1080)
+		return MODE_BAD;
+	if (mode->hdisplay % 64)
+		return MODE_BAD;
+	if (mode->clock >= 173000)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
+static const struct drm_crtc_helper_funcs loongson_crtc_helper_funcs = {
+	.mode_valid = loongson_mode_valid,
+	.atomic_enable = loongson_crtc_atomic_enable,
+	.atomic_disable = loongson_crtc_atomic_disable,
+	.mode_set_nofb = loongson_crtc_mode_set_nofb,
+};
+
+static const struct drm_crtc_funcs loongson_crtc_funcs = {
+	.set_config = drm_atomic_helper_set_config,
+	.page_flip = drm_atomic_helper_page_flip,
+	.reset = drm_atomic_helper_crtc_reset,
+	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_crtc_destroy_state,
+};
+
+int loongson_crtc_init(struct loongson_device *ldev, int index)
+{
+	struct drm_device *dev = &ldev->dev;
+	struct loongson_plane *plane;
+	struct loongson_crtc *lcrtc;
+
+	plane = loongson_plane_init(dev, index);
+	if (IS_ERR(plane))
+		return PTR_ERR(plane);
+
+	lcrtc = drmm_crtc_alloc_with_planes(dev, struct loongson_crtc, base,
+					    &plane->base, NULL,
+					    &loongson_crtc_funcs, NULL);
+	if (IS_ERR(lcrtc))
+		return PTR_ERR(lcrtc);
+
+	lcrtc->ldev = ldev;
+	lcrtc->reg_offset = index * REG_OFFSET;
+	lcrtc->cfg_reg = CFG_RESET;
+	lcrtc->crtc_id = index;
+	lcrtc->plane = plane;
+
+	drm_crtc_helper_add(&lcrtc->base, &loongson_crtc_helper_funcs);
+
+	ldev->mode_info[index].crtc = lcrtc;
+
+	return 0;
+}
+
diff --git a/drivers/gpu/drm/loongson/loongson_device.c b/drivers/gpu/drm/loongson/loongson_device.c
new file mode 100644
index 000000000000..a79d64fc1a06
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_device.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "loongson_drv.h"
+
+u32 loongson_gpu_offset(struct drm_plane_state *state,
+			struct loongson_device *ldev)
+{
+	struct drm_gem_vram_object *gbo;
+	u32 gpu_addr;
+
+	gbo = drm_gem_vram_of_gem(state->fb->obj[0]);
+	gpu_addr = ldev->vram_start + drm_gem_vram_offset(gbo);
+
+	return gpu_addr;
+}
+
+u32 ls7a_io_rreg(struct loongson_device *ldev, u32 offset)
+{
+	return readl(ldev->io + offset);
+}
+
+void ls7a_io_wreg(struct loongson_device *ldev, u32 offset, u32 val)
+{
+	writel(val, ldev->io + offset);
+}
+
+u32 ls7a_mm_rreg(struct loongson_device *ldev, u32 offset)
+{
+	return readl(ldev->mmio + offset);
+}
+
+void ls7a_mm_wreg(struct loongson_device *ldev, u32 offset, u32 val)
+{
+	writel(val, ldev->mmio + offset);
+}
diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
new file mode 100644
index 000000000000..2224a03adc1a
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -0,0 +1,271 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Loongson LS7A1000 bridge chipset drm driver
+ */
+
+#include <linux/console.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+
+#include "loongson_drv.h"
+
+/* Interface history:
+ * 0.1 - original.
+ */
+#define DRIVER_MAJOR 0
+#define DRIVER_MINOR 1
+
+static const struct drm_mode_config_funcs loongson_mode_funcs = {
+	.fb_create = drm_gem_fb_create,
+	.atomic_check = drm_atomic_helper_check,
+	.atomic_commit = drm_atomic_helper_commit,
+	.output_poll_changed = drm_fb_helper_output_poll_changed,
+	.mode_valid = drm_vram_helper_mode_valid
+};
+
+static int loongson_device_init(struct drm_device *dev)
+{
+	struct loongson_device *ldev = to_loongson_device(dev);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
+	struct pci_dev *gpu_pdev;
+	resource_size_t aper_base;
+	resource_size_t aper_size;
+	resource_size_t mmio_base;
+	resource_size_t mmio_size;
+	int ret;
+
+	/* GPU MEM */
+	/* We need get 7A-gpu pci device information for ldev->gpu_pdev */
+	/* dev->pdev save 7A-dc pci device information */
+	gpu_pdev = pci_get_device(PCI_VENDOR_ID_LOONGSON,
+				  PCI_DEVICE_ID_LOONGSON_GPU, NULL);
+	ret = pci_enable_device(gpu_pdev);
+	if (ret)
+		return ret;
+	pci_set_drvdata(gpu_pdev, dev);
+
+	aper_base = pci_resource_start(gpu_pdev, 2);
+	aper_size = pci_resource_len(gpu_pdev, 2);
+	ldev->vram_start = aper_base;
+	ldev->vram_size = aper_size;
+
+	if (!devm_request_mem_region(dev->dev, ldev->vram_start,
+				     ldev->vram_size, "loongson_vram")) {
+		drm_err(dev, "Can't reserve VRAM\n");
+		return -ENXIO;
+	}
+
+	/* DC MEM */
+	mmio_base = pci_resource_start(pdev, 0);
+	mmio_size = pci_resource_len(pdev, 0);
+	ldev->mmio = devm_ioremap(dev->dev, mmio_base, mmio_size);
+	if (!ldev->mmio) {
+		drm_err(dev, "Cannot map mmio region\n");
+		return -ENOMEM;
+	}
+
+	if (!devm_request_mem_region(dev->dev, mmio_base,
+				     mmio_size, "loongson_mmio")) {
+		drm_err(dev, "Can't reserve mmio registers\n");
+		return -ENOMEM;
+	}
+
+	/* DC IO */
+	ldev->io = devm_ioremap(dev->dev, LS7A_CHIPCFG_REG_BASE, 0xf);
+	if (!ldev->io)
+		return -ENOMEM;
+
+	drm_info(dev, "DC mmio base 0x%llx size 0x%llx io 0x%llx\n",
+		 mmio_base, mmio_size, *(u64 *)ldev->io);
+	drm_info(dev, "GPU vram start = 0x%x size = 0x%x\n",
+		 ldev->vram_start, ldev->vram_size);
+
+	return 0;
+}
+
+int loongson_modeset_init(struct loongson_device *ldev)
+{
+	struct drm_encoder *encoder;
+	struct drm_connector *connector;
+	int i;
+	int ret;
+
+	for (i = 0; i < 2; i++) {
+		ret = loongson_crtc_init(ldev, i);
+		if (ret) {
+			drm_warn(&ldev->dev, "loongson crtc%d init fail\n", i);
+			continue;
+		}
+
+		ret = loongson_encoder_init(ldev, i);
+		if (ret) {
+			drm_err(&ldev->dev, "loongson_encoder_init failed\n");
+			return ret;
+		}
+
+		ret = loongson_connector_init(ldev, i);
+		if (ret) {
+			drm_err(&ldev->dev, "loongson_connector_init failed\n");
+			return ret;
+		}
+
+		encoder = &ldev->mode_info[i].encoder->base;
+		connector = &ldev->mode_info[i].connector->base;
+		drm_connector_attach_encoder(connector, encoder);
+		ldev->num_crtc++;
+	}
+
+	return 0;
+}
+
+static int loongson_driver_init(struct drm_device *dev)
+{
+	struct loongson_device *ldev = to_loongson_device(dev);
+	int ret;
+
+	ret = loongson_device_init(dev);
+	if (ret)
+		goto err;
+
+	ret = drmm_vram_helper_init(dev, ldev->vram_start, ldev->vram_size);
+	if (ret) {
+		drm_err(dev, "Error initializing vram %d\n", ret);
+		goto err;
+	}
+
+	drm_mode_config_init(dev);
+	dev->mode_config.funcs = (void *)&loongson_mode_funcs;
+	dev->mode_config.min_width = 1;
+	dev->mode_config.min_height = 1;
+	dev->mode_config.max_width = 4096;
+	dev->mode_config.max_height = 4096;
+	dev->mode_config.preferred_depth = 32;
+	dev->mode_config.prefer_shadow = 1;
+	dev->mode_config.fb_base = ldev->vram_start;
+	dev->mode_config.allow_fb_modifiers = true;
+
+	ret = loongson_modeset_init(ldev);
+	if (ret) {
+		drm_err(dev, "Fatal error during modeset init: %d\n", ret);
+		goto err;
+	}
+
+	drm_kms_helper_poll_init(dev);
+	drm_mode_config_reset(dev);
+
+	return 0;
+
+err:
+	drm_err(dev, "failed to initialize drm driver: %d\n", ret);
+	return ret;
+}
+
+static void loongson_driver_fini(struct drm_device *dev)
+{
+	drm_vram_helper_release_mm(dev);
+	drm_mode_config_cleanup(dev);
+	dev->dev_private = NULL;
+	dev_set_drvdata(dev->dev, NULL);
+}
+
+DEFINE_DRM_GEM_FOPS(fops);
+
+static struct drm_driver loongson_driver = {
+	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
+	.fops = &fops,
+	DRM_GEM_VRAM_DRIVER,
+
+	.name = DRIVER_NAME,
+	.desc = DRIVER_DESC,
+	.date = DRIVER_DATE,
+	.major = DRIVER_MAJOR,
+	.minor = DRIVER_MINOR,
+};
+
+static int loongson_pci_probe(struct pci_dev *pdev,
+			      const struct pci_device_id *ent)
+{
+	struct loongson_device *ldev;
+	struct drm_device *dev;
+	int ret;
+
+	DRM_INFO("Start loongson drm probe.\n");
+	ldev = devm_drm_dev_alloc(&pdev->dev, &loongson_driver,
+				  struct loongson_device, dev);
+	if (IS_ERR(ldev))
+		return PTR_ERR(ldev);
+
+	dev = &ldev->dev;
+	pci_set_drvdata(pdev, dev);
+
+	ret = pci_enable_device(pdev);
+	if (ret) {
+		drm_err(dev, "failed to enable pci device: %d\n", ret);
+		goto err_free;
+	}
+
+	ret = loongson_driver_init(dev);
+	if (ret) {
+		drm_err(dev, "failed to load loongson: %d\n", ret);
+		goto err_pdev;
+	}
+
+	ret = drm_dev_register(dev, 0);
+	if (ret) {
+		drm_err(dev, "failed to register drv for userspace access: %d\n",
+			ret);
+		goto driver_fini;
+	}
+
+	drm_fbdev_generic_setup(dev, dev->mode_config.preferred_depth);
+	DRM_INFO("loongson fbdev enabled.\n");
+
+	return 0;
+
+driver_fini:
+	loongson_driver_fini(dev);
+err_pdev:
+	pci_disable_device(pdev);
+err_free:
+	drm_dev_put(dev);
+	return ret;
+}
+
+static void loongson_pci_remove(struct pci_dev *pdev)
+{
+	struct drm_device *dev = pci_get_drvdata(pdev);
+
+	drm_dev_unregister(dev);
+	loongson_driver_fini(dev);
+	drm_dev_put(dev);
+}
+
+static struct pci_device_id loongson_pci_devices[] = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_LOONGSON, PCI_DEVICE_ID_LOONGSON_DC) },
+	{0,}
+};
+
+static struct pci_driver loongson_drm_pci_driver = {
+	.name = DRIVER_NAME,
+	.id_table = loongson_pci_devices,
+	.probe = loongson_pci_probe,
+	.remove = loongson_pci_remove,
+};
+
+static int __init loongson_drm_init(void)
+{
+	return pci_register_driver(&loongson_drm_pci_driver);
+}
+
+static void __exit loongson_drm_exit(void)
+{
+	pci_unregister_driver(&loongson_drm_pci_driver);
+}
+
+module_init(loongson_drm_init);
+module_exit(loongson_drm_exit);
+
+MODULE_AUTHOR(DRIVER_AUTHOR);
+MODULE_DESCRIPTION(DRIVER_DESC);
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/gpu/drm/loongson/loongson_drv.h b/drivers/gpu/drm/loongson/loongson_drv.h
new file mode 100644
index 000000000000..75965d198212
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -0,0 +1,149 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __LOONGSON_DRV_H__
+#define __LOONGSON_DRV_H__
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_connector.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_encoder.h>
+#include <drm/drm_fb_helper.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_gem.h>
+#include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_gem_vram_helper.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_plane.h>
+#include <drm/drm_plane_helper.h>
+
+/* General customization:
+ */
+#define DRIVER_AUTHOR "Loongson graphics driver team"
+#define DRIVER_NAME "loongson-drm"
+#define DRIVER_DESC "Loongson LS7A DRM driver"
+#define DRIVER_DATE "20200915"
+
+#define to_loongson_crtc(x) container_of(x, struct loongson_crtc, base)
+#define to_loongson_encoder(x) container_of(x, struct loongson_encoder, base)
+
+#define LS7A_CHIPCFG_REG_BASE (0x10010000)
+#define PCI_DEVICE_ID_LOONGSON_DC 0x7a06
+#define PCI_DEVICE_ID_LOONGSON_GPU 0x7a15
+#define LS7A_PIX_PLL (0x04b0)
+#define REG_OFFSET (0x10)
+#define FB_CFG_REG (0x1240)
+#define FB_ADDR0_REG (0x1260)
+#define FB_ADDR1_REG (0x1580)
+#define FB_STRI_REG (0x1280)
+#define FB_DITCFG_REG (0x1360)
+#define FB_DITTAB_LO_REG (0x1380)
+#define FB_DITTAB_HI_REG (0x13a0)
+#define FB_PANCFG_REG (0x13c0)
+#define FB_PANTIM_REG (0x13e0)
+#define FB_HDISPLAY_REG (0x1400)
+#define FB_HSYNC_REG (0x1420)
+#define FB_VDISPLAY_REG (0x1480)
+#define FB_VSYNC_REG (0x14a0)
+
+#define CFG_FMT GENMASK(2, 0)
+#define CFG_FBSWITCH BIT(7)
+#define CFG_ENABLE BIT(8)
+#define CFG_FBNUM BIT(11)
+#define CFG_GAMMAR BIT(12)
+#define CFG_RESET BIT(20)
+
+#define FB_PANCFG_DEF 0x80001311
+#define FB_HSYNC_PULSE (1 << 30)
+#define FB_VSYNC_PULSE (1 << 30)
+
+/* PIX PLL */
+#define LOOPC_MIN 24
+#define LOOPC_MAX 161
+#define FRE_REF_MIN 12
+#define FRE_REF_MAX 32
+#define DIV_REF_MIN 3
+#define DIV_REF_MAX 5
+#define PST_DIV_MAX 64
+
+struct pix_pll {
+	u32 l2_div;
+	u32 l1_loopc;
+	u32 l1_frefc;
+};
+
+struct loongson_crtc {
+	struct drm_crtc base;
+	struct loongson_device *ldev;
+	u32 crtc_id;
+	u32 reg_offset;
+	u32 cfg_reg;
+	struct loongson_plane *plane;
+};
+
+struct loongson_plane {
+	struct drm_plane base;
+};
+
+struct loongson_encoder {
+	struct drm_encoder base;
+	struct loongson_device *ldev;
+	struct loongson_crtc *lcrtc;
+};
+
+struct loongson_connector {
+	struct drm_connector base;
+	struct loongson_device *ldev;
+	u16 id;
+	u32 type;
+};
+
+struct loongson_mode_info {
+	struct loongson_device *ldev;
+	struct loongson_crtc *crtc;
+	struct loongson_encoder *encoder;
+	struct loongson_connector *connector;
+};
+
+struct loongson_device {
+	struct drm_device dev;
+	struct drm_atomic_state *state;
+
+	void __iomem *mmio;
+	void __iomem *io;
+	u32 vram_start;
+	u32 vram_size;
+
+	u32 num_crtc;
+	struct loongson_mode_info mode_info[2];
+	struct pci_dev *gpu_pdev; /* LS7A gpu device info */
+};
+
+static inline struct loongson_device *to_loongson_device(struct drm_device *dev)
+{
+	return container_of(dev, struct loongson_device, dev);
+}
+
+/* crtc */
+int loongson_crtc_init(struct loongson_device *ldev, int index);
+
+/* connector */
+int loongson_connector_init(struct loongson_device *ldev, int index);
+
+/* encoder */
+int loongson_encoder_init(struct loongson_device *ldev, int index);
+
+/* plane */
+struct loongson_plane *loongson_plane_init(struct drm_device *dev, int index);
+
+/* device */
+u32 loongson_gpu_offset(struct drm_plane_state *state,
+			struct loongson_device *dev);
+u32 ls7a_mm_rreg(struct loongson_device *ldev, u32 offset);
+void ls7a_mm_wreg(struct loongson_device *ldev, u32 offset, u32 val);
+u32 ls7a_io_rreg(struct loongson_device *ldev, u32 offset);
+void ls7a_io_wreg(struct loongson_device *ldev, u32 offset, u32 val);
+
+#endif /* __LOONGSON_DRV_H__ */
diff --git a/drivers/gpu/drm/loongson/loongson_encoder.c b/drivers/gpu/drm/loongson/loongson_encoder.c
new file mode 100644
index 000000000000..a6325cb261d4
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_encoder.c
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <drm/drm_simple_kms_helper.h>
+
+#include "loongson_drv.h"
+
+int loongson_encoder_init(struct loongson_device *ldev, int index)
+{
+	struct drm_device *dev = &ldev->dev;
+	struct loongson_encoder *lencoder;
+
+	lencoder = drmm_simple_encoder_alloc(dev, struct loongson_encoder,
+					     base, DRM_MODE_ENCODER_DAC);
+	if (IS_ERR(lencoder))
+		return PTR_ERR(lencoder);
+
+	lencoder->base.possible_crtcs = 1 << index;
+	ldev->mode_info[index].encoder = lencoder;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/loongson/loongson_plane.c b/drivers/gpu/drm/loongson/loongson_plane.c
new file mode 100644
index 000000000000..b55b8d8628f0
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_plane.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "loongson_drv.h"
+
+static void loongson_plane_atomic_update(struct drm_plane *plane,
+					 struct drm_atomic_state *state)
+{
+	struct loongson_crtc *lcrtc;
+	struct loongson_device *ldev;
+	struct drm_plane_state *lstate = plane->state;
+	u32 gpu_addr = 0;
+	u32 fb_addr = 0;
+	u32 reg_val = 0;
+	u32 reg_offset;
+	u32 pitch;
+	u8 depth;
+	u32 x, y;
+
+	if (!lstate->crtc || !lstate->fb)
+		return;
+
+	pitch = lstate->fb->pitches[0];
+	lcrtc = to_loongson_crtc(lstate->crtc);
+	ldev = lcrtc->ldev;
+	reg_offset = lcrtc->reg_offset;
+	x = lstate->crtc->x;
+	y = lstate->crtc->y;
+	depth = lstate->fb->format->cpp[0] << 3;
+
+	gpu_addr = loongson_gpu_offset(lstate, ldev);
+	reg_val = (pitch + 255) & ~255;
+	ls7a_mm_wreg(ldev, FB_STRI_REG + reg_offset, reg_val);
+
+	switch (depth) {
+	case 12 ... 16:
+		fb_addr = gpu_addr + y * pitch + ALIGN(x, 64) * 2;
+		break;
+	case 24 ... 32:
+	default:
+		fb_addr = gpu_addr + y * pitch + ALIGN(x, 64) * 4;
+		break;
+	}
+
+	ls7a_mm_wreg(ldev, FB_ADDR0_REG + reg_offset, fb_addr);
+	ls7a_mm_wreg(ldev, FB_ADDR1_REG + reg_offset, fb_addr);
+	reg_val = lcrtc->cfg_reg | CFG_ENABLE;
+	ls7a_mm_wreg(ldev, FB_CFG_REG + reg_offset, reg_val);
+}
+
+static const uint32_t loongson_formats[] = {
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_RGB888,
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_ARGB8888,
+};
+
+static const uint64_t loongson_format_modifiers[] = { DRM_FORMAT_MOD_LINEAR,
+						      DRM_FORMAT_MOD_INVALID };
+
+static const struct drm_plane_funcs loongson_plane_funcs = {
+	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_plane_destroy_state,
+	.disable_plane = drm_atomic_helper_disable_plane,
+	.reset = drm_atomic_helper_plane_reset,
+	.update_plane = drm_atomic_helper_update_plane,
+};
+
+static const struct drm_plane_helper_funcs loongson_plane_helper_funcs = {
+	.prepare_fb	= drm_gem_vram_plane_helper_prepare_fb,
+	.cleanup_fb	= drm_gem_vram_plane_helper_cleanup_fb,
+	.atomic_update = loongson_plane_atomic_update,
+};
+
+struct loongson_plane *loongson_plane_init(struct drm_device *dev, int index)
+{
+	struct loongson_plane *plane;
+
+	plane = drmm_universal_plane_alloc(dev, struct loongson_plane, base,
+					   BIT(index), &loongson_plane_funcs,
+					   loongson_formats,
+					   ARRAY_SIZE(loongson_formats),
+					   loongson_format_modifiers,
+					   DRM_PLANE_TYPE_PRIMARY, NULL);
+	if (IS_ERR(plane)) {
+		drm_err(dev, "failed to allocate and initialize plane\n");
+		return plane;
+	}
+
+	drm_plane_helper_add(&plane->base, &loongson_plane_helper_funcs);
+
+	return plane;
+}
-- 
2.32.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
