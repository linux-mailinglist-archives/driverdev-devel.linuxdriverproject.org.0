Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 187AB6132A9
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Oct 2022 10:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66F6140257;
	Mon, 31 Oct 2022 09:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66F6140257
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EKU49aOlAE-s; Mon, 31 Oct 2022 09:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 609684024F;
	Mon, 31 Oct 2022 09:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 609684024F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 978CC1BF358
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 09:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 796C740259
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 09:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 796C740259
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wOXSGv8-bG-i for <devel@linuxdriverproject.org>;
 Mon, 31 Oct 2022 09:24:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43D564024F
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43D564024F
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 09:24:25 +0000 (UTC)
Received: from loongson.cn (unknown [10.20.42.62])
 by gateway (Coremail) with SMTP id _____8Bx37dHlF9jH40DAA--.8085S3;
 Mon, 31 Oct 2022 17:24:23 +0800 (CST)
Received: from li-X99.loongson.cn (unknown [10.20.42.62])
 by localhost.localdomain (Coremail) with SMTP id
 AQAAf8AxiFdDlF9jzvcIAA--.9634S3; 
 Mon, 31 Oct 2022 17:24:22 +0800 (CST)
From: lichenyang <lichenyang@loongson.cn>
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: [PATCH v8 2/4] drm/loongson: Add GPIO and I2C driver for loongson drm.
Date: Mon, 31 Oct 2022 17:24:16 +0800
Message-Id: <20221031092418.2980766-2-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031092418.2980766-1-lichenyang@loongson.cn>
References: <20221031092418.2980766-1-lichenyang@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: AQAAf8AxiFdDlF9jzvcIAA--.9634S3
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQAQA2NeaWMNEQAAs5
X-Coremail-Antispam: 1Uk129KBjvJXoW3Cry7Aw1UXFWrWw4UXFW5Jrb_yoWkArWDpr
 4fAa4FgrW5AF4293s8AFWrAr15A34akasxGFW7Gw1I9rWDJ34UZr95tFWUtFW7AFWUGry2
 qrykGrWrWF1jgw7anT9S1TB71UUUUjUqnTZGkaVYY2UrUUUUj1kv1TuYvTs0mT0YCTnIWj
 qI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUIcSsGvfJTRUUU
 bSxYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s
 1l1IIY67AEw4v_Jw0_Gr1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xv
 wVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwA2z4
 x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4UJVWxJr1l
 n4kS14v26r1Y6r17M2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2x26I8E6x
 ACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1q6rW5McIj6I8E
 87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lc7CjxV
 Aaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1l4IxY
 O2xFxVAFwI0_Jrv_JF1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGV
 WUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_
 Gr0_Xr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rV
 WUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4U
 JbIYCTnIWIevJa73UjIFyTuYvjxUwBMKDUUUU
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
Cc: Yi Li <liyi@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Chenyang Li <lichenyang@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Implement use GPIO and I2C driver to detect connector
and fetch EDID via DDC.

v5:
- Use braidge->ddc to get EDID and detect connector.

v4:
- Delete the gpio_chip subsystem call.
- Delete some redundant prints.

v3:
- Change some driver log to the drm_ version.

v2:
- Optimize the error handling process.
- Delete loongson_i2c_bus_match and loongson_i2c_add function.
- Optimize part of the code flow.

Signed-off-by: Yi Li <liyi@loongson.cn>
Signed-off-by: Chenyang Li <lichenyang@loongson.cn>
---
 drivers/gpu/drm/loongson/Makefile           |   1 +
 drivers/gpu/drm/loongson/loongson_drv.c     |  11 +-
 drivers/gpu/drm/loongson/loongson_drv.h     |   7 +
 drivers/gpu/drm/loongson/loongson_encoder.c |  31 +++-
 drivers/gpu/drm/loongson/loongson_i2c.c     | 189 ++++++++++++++++++++
 drivers/gpu/drm/loongson/loongson_i2c.h     |  31 ++++
 6 files changed, 261 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/loongson/loongson_i2c.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_i2c.h

diff --git a/drivers/gpu/drm/loongson/Makefile b/drivers/gpu/drm/loongson/Makefile
index 534a64047fb6..4a5fab7d000b 100644
--- a/drivers/gpu/drm/loongson/Makefile
+++ b/drivers/gpu/drm/loongson/Makefile
@@ -9,5 +9,6 @@ loongson-y := loongson_connector.o \
 	loongson_device.o \
 	loongson_drv.o \
 	loongson_encoder.o \
+	loongson_i2c.o \
 	loongson_plane.o
 obj-$(CONFIG_DRM_LOONGSON) += loongson.o
diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
index 3db298293865..9120d8188ddf 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.c
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -20,9 +20,10 @@
 
 /* Interface history:
  * 0.1 - original.
+ * 0.2 - add i2c and connector detect.
  */
 #define DRIVER_MAJOR 0
-#define DRIVER_MINOR 1
+#define DRIVER_MINOR 2
 
 static const struct drm_mode_config_funcs loongson_mode_funcs = {
 	.fb_create = drm_gem_fb_create,
@@ -86,6 +87,14 @@ static int loongson_device_init(struct drm_device *dev)
 
 	ldev->num_crtc = 2;
 
+	ret = loongson_dc_gpio_init(ldev);
+	if (ret)
+		return ret;
+
+	ret = loongson_i2c_init(ldev);
+	if (ret)
+		return ret;
+
 	drm_info(dev, "DC mmio base 0x%llx size 0x%llx io 0x%llx\n",
 		 mmio_base, mmio_size, *(u64 *)ldev->io);
 	drm_info(dev, "GPU vram start = 0x%x size = 0x%x\n",
diff --git a/drivers/gpu/drm/loongson/loongson_drv.h b/drivers/gpu/drm/loongson/loongson_drv.h
index feb254ae8c32..e8ca0eac827c 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.h
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -8,6 +8,8 @@
 #include <drm/drm_gem_vram_helper.h>
 #include <drm/drm_bridge.h>
 
+#include "loongson_i2c.h"
+
 /* General customization:
  */
 #define DRIVER_AUTHOR "Loongson graphics driver team"
@@ -100,6 +102,8 @@ struct loongson_device {
 	u32 num_crtc;
 	struct loongson_mode_info mode_info[2];
 	struct pci_dev *gpu_pdev; /* LS7A gpu device info */
+
+	struct loongson_i2c i2c_bus[DC_MAX_I2C_BUS];
 };
 
 static inline struct loongson_device *to_loongson_device(struct drm_device *dev)
@@ -119,6 +123,9 @@ int loongson_encoder_init(struct loongson_device *ldev, int index);
 /* plane */
 struct loongson_plane *loongson_plane_init(struct drm_device *dev, int index);
 
+/* i2c */
+int loongson_dc_gpio_init(struct loongson_device *ldev);
+
 /* device */
 u32 loongson_gpu_offset(struct drm_plane_state *state,
 			struct loongson_device *dev);
diff --git a/drivers/gpu/drm/loongson/loongson_encoder.c b/drivers/gpu/drm/loongson/loongson_encoder.c
index 0645a645cb9d..f07c39e1713b 100644
--- a/drivers/gpu/drm/loongson/loongson_encoder.c
+++ b/drivers/gpu/drm/loongson/loongson_encoder.c
@@ -6,19 +6,31 @@
 
 #include "loongson_drv.h"
 
-static int loongson_bridge_get_modes(struct drm_bridge *bridge,
-				     struct drm_connector *connector)
+enum drm_connector_status loongson_bridge_detect(struct drm_bridge *bridge)
 {
-	int count;
+	unsigned char start = 0x0;
+	struct i2c_msg msgs = {
+		.addr = DDC_ADDR,
+		.flags = 0,
+		.len = 1,
+		.buf = &start,
+	};
 
-	count = drm_add_modes_noedid(connector, 1920, 1080);
-	drm_set_preferred_mode(connector, 1024, 768);
+	if (i2c_transfer(bridge->ddc, &msgs, 1) != 1)
+		return connector_status_disconnected;
+	else
+		return connector_status_connected;
+}
 
-	return count;
+static struct edid *loongson_bridge_get_edid(struct drm_bridge *bridge,
+					     struct drm_connector *connector)
+{
+	return drm_get_edid(connector, bridge->ddc);
 }
 
 static const struct drm_bridge_funcs loongson_encoder_bridge_funcs = {
-	.get_modes = loongson_bridge_get_modes,
+	.detect = loongson_bridge_detect,
+	.get_edid = loongson_bridge_get_edid,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset = drm_atomic_helper_bridge_reset,
@@ -39,7 +51,10 @@ int loongson_encoder_init(struct loongson_device *ldev, int index)
 	ldev->mode_info[index].encoder = lencoder;
 
 	lencoder->bridge.funcs = &loongson_encoder_bridge_funcs;
-	lencoder->bridge.ops = DRM_BRIDGE_OP_MODES;
+	lencoder->bridge.ddc = ldev->i2c_bus[index].adapter;
+	lencoder->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID
+			       | DRM_BRIDGE_OP_MODES;
+
 	if (index == 0)
 		lencoder->bridge.type = DRM_MODE_CONNECTOR_VGA;
 	else if (index == 1)
diff --git a/drivers/gpu/drm/loongson/loongson_i2c.c b/drivers/gpu/drm/loongson/loongson_i2c.c
new file mode 100644
index 000000000000..9f2b99159dd0
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_i2c.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Copyright (C) 2022 Loongson Inc. */
+
+#include "loongson_drv.h"
+#include "loongson_i2c.h"
+
+static inline void dc_gpio_set_dir(struct loongson_device *ldev,
+				   unsigned int pin, int input)
+{
+	u32 temp;
+
+	temp = ls7a_mm_rreg(ldev, LS7A_DC_GPIO_CFG_OFFSET);
+	if (input)
+		temp |= 1UL << pin;
+	else
+		temp &= ~(1UL << pin);
+
+	ls7a_mm_wreg(ldev, LS7A_DC_GPIO_CFG_OFFSET, temp);
+}
+
+static void dc_gpio_set_val(struct loongson_device *ldev, unsigned int pin,
+			    int high)
+{
+	u32 temp;
+
+	temp = ls7a_mm_rreg(ldev, LS7A_DC_GPIO_OUT_OFFSET);
+	if (high)
+		temp |= 1UL << pin;
+	else
+		temp &= ~(1UL << pin);
+
+	ls7a_mm_wreg(ldev, LS7A_DC_GPIO_OUT_OFFSET, temp);
+}
+
+static void loongson_i2c_set_data(void *i2c, int value)
+{
+	struct loongson_i2c *li2c = i2c;
+	struct loongson_device *ldev = li2c->ldev;
+	unsigned int pin = li2c->data;
+
+	if (value)
+		dc_gpio_set_dir(ldev, pin, 1);
+	else {
+		dc_gpio_set_val(ldev, pin, 0);
+		dc_gpio_set_dir(ldev, pin, 0);
+	}
+}
+
+static void loongson_i2c_set_clock(void *i2c, int value)
+{
+	struct loongson_i2c *li2c = i2c;
+	struct loongson_device *ldev = li2c->ldev;
+	unsigned int pin = li2c->clock;
+
+	if (value)
+		dc_gpio_set_dir(ldev, pin, 1);
+	else {
+		dc_gpio_set_val(ldev, pin, 0);
+		dc_gpio_set_dir(ldev, pin, 0);
+	}
+}
+
+static int loongson_i2c_get_data(void *i2c)
+{
+	int val;
+	struct loongson_i2c *li2c = i2c;
+	struct loongson_device *ldev = li2c->ldev;
+	unsigned int pin = li2c->data;
+
+	val = ls7a_mm_rreg(ldev, LS7A_DC_GPIO_IN_OFFSET);
+
+	return (val >> pin) & 1;
+}
+
+static int loongson_i2c_get_clock(void *i2c)
+{
+	int val;
+	struct loongson_i2c *li2c = i2c;
+	struct loongson_device *ldev = li2c->ldev;
+	unsigned int pin = li2c->clock;
+
+	val = ls7a_mm_rreg(ldev, LS7A_DC_GPIO_IN_OFFSET);
+
+	return (val >> pin) & 1;
+}
+
+static int loongson_i2c_create(struct loongson_device *ldev,
+			       struct loongson_i2c *li2c, const char *name)
+{
+	int ret;
+	unsigned int i2c_num;
+	struct drm_device *dev = &ldev->dev;
+	struct i2c_client *i2c_cli;
+	struct i2c_adapter *i2c_adapter;
+	struct i2c_algo_bit_data *i2c_algo_data;
+	const struct i2c_board_info i2c_info = {
+		.type = "ddc-dev",
+		.addr = DDC_ADDR,
+		.flags = I2C_CLASS_DDC,
+	};
+
+	i2c_num = li2c->i2c_id;
+	i2c_adapter = devm_kzalloc(dev->dev, sizeof(*i2c_adapter), GFP_KERNEL);
+	if (!i2c_adapter)
+		return -ENOMEM;
+
+	i2c_algo_data = devm_kzalloc(dev->dev, sizeof(*i2c_algo_data), GFP_KERNEL);
+	if (!i2c_algo_data) {
+		ret = -ENOMEM;
+		goto free_adapter;
+	}
+
+	i2c_adapter->owner = THIS_MODULE;
+	i2c_adapter->class = I2C_CLASS_DDC;
+	i2c_adapter->algo_data = i2c_algo_data;
+	i2c_adapter->dev.parent = dev->dev;
+	i2c_adapter->nr = -1;
+	snprintf(i2c_adapter->name, sizeof(i2c_adapter->name), "%s%d",
+		 name, i2c_num);
+
+	li2c->data = i2c_num * 2;
+	li2c->clock = i2c_num * 2 + 1;
+	DRM_INFO("Created i2c-%d, sda=%d, scl=%d\n",
+		 i2c_num, li2c->data, li2c->clock);
+
+	i2c_algo_data->setsda = loongson_i2c_set_data;
+	i2c_algo_data->setscl = loongson_i2c_set_clock;
+	i2c_algo_data->getsda = loongson_i2c_get_data;
+	i2c_algo_data->getscl = loongson_i2c_get_clock;
+	i2c_algo_data->udelay = DC_I2C_TON;
+	i2c_algo_data->timeout = usecs_to_jiffies(2200);
+
+	ret = i2c_bit_add_numbered_bus(i2c_adapter);
+	if (ret)
+		goto free_algo_data;
+
+	li2c->adapter = i2c_adapter;
+	i2c_algo_data->data = li2c;
+	i2c_set_adapdata(li2c->adapter, li2c);
+	li2c->ldev = ldev;
+	DRM_INFO("Register i2c algo-bit adapter [%s]\n", i2c_adapter->name);
+
+	i2c_cli = i2c_new_client_device(i2c_adapter, &i2c_info);
+	if (IS_ERR(i2c_cli)) {
+		ret = PTR_ERR(i2c_cli);
+		goto remove_i2c_adapter;
+	}
+
+	return 0;
+
+remove_i2c_adapter:
+	drm_err(dev, "Failed to create i2c client\n");
+	i2c_del_adapter(i2c_adapter);
+free_algo_data:
+	drm_err(dev, "Failed to register i2c adapter %s\n", i2c_adapter->name);
+	kfree(i2c_algo_data);
+free_adapter:
+	kfree(i2c_adapter);
+
+	return ret;
+}
+
+int loongson_dc_gpio_init(struct loongson_device *ldev)
+{
+	int pin;
+
+	/* set gpio dir output 0-3 */
+	for (pin = 0; pin < 4; pin++) {
+		dc_gpio_set_val(ldev, pin, 0);
+		dc_gpio_set_dir(ldev, pin, 0);
+	}
+
+	return 0;
+}
+
+int loongson_i2c_init(struct loongson_device *ldev)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < 2; i++) {
+		ldev->i2c_bus[1].i2c_id = i;
+		ret = loongson_i2c_create(ldev, &ldev->i2c_bus[i], DC_I2C_NAME);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/loongson/loongson_i2c.h b/drivers/gpu/drm/loongson/loongson_i2c.h
new file mode 100644
index 000000000000..c6c9c564fec4
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_i2c.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2022 Loongson Inc. */
+
+#ifndef __LOONGSON_I2C_H__
+#define __LOONGSON_I2C_H__
+
+#include <linux/i2c.h>
+#include <linux/i2c-algo-bit.h>
+
+#include <drm/drm_edid.h>
+
+#define DC_I2C_TON 5
+#define DC_I2C_NAME "ls_dc_i2c"
+#define DC_MAX_I2C_BUS 2
+
+#define LS7A_DC_GPIO_CFG_OFFSET (0x1660)
+#define LS7A_DC_GPIO_IN_OFFSET (0x1650)
+#define LS7A_DC_GPIO_OUT_OFFSET (0x1650)
+
+struct loongson_device;
+struct loongson_i2c {
+	struct loongson_device *ldev;
+	struct i2c_adapter *adapter;
+	u32 data;
+	u32 clock;
+	u32 i2c_id;
+};
+
+int loongson_i2c_init(struct loongson_device *ldev);
+
+#endif /* __LOONGSON_I2C_H__ */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
