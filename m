Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F343DB62D
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Jul 2021 11:42:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F23E40538;
	Fri, 30 Jul 2021 09:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Il1rpiFKS11T; Fri, 30 Jul 2021 09:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11AA94024A;
	Fri, 30 Jul 2021 09:42:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CB7A1BF368
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6CB4940239
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8xzqFkCHgAi for <devel@linuxdriverproject.org>;
 Fri, 30 Jul 2021 09:41:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp2.osuosl.org (Postfix) with ESMTP id 452FC40122
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 09:41:58 +0000 (UTC)
Received: from li-pc.loongson.cn (unknown [10.20.41.133])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxL0BeyQNha34mAA--.26376S3; 
 Fri, 30 Jul 2021 17:41:50 +0800 (CST)
From: lichenyang <lichenyang@loongson.cn>
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: [PATCH v4 2/3] drm/loongson: Add GPIO and I2C driver for loongson drm.
Date: Fri, 30 Jul 2021 17:41:47 +0800
Message-Id: <20210730094148.620768-2-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210730094148.620768-1-lichenyang@loongson.cn>
References: <20210730094148.620768-1-lichenyang@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: AQAAf9DxL0BeyQNha34mAA--.26376S3
X-Coremail-Antispam: 1UD129KBjvAXoW3ur17CF4UKF4Dtw4kKF1fCrg_yoW8Xryrto
 WxZFnxW3yrXFyxAa90qF1fWF1UZFn8Xanakw4xAr4DZay5tr1DtFyagw17AFyxZF4Yqr45
 A34ag3yrGrW7Jaykn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
 AaLaJ3UjIYCTnIWjp_UUUO17k0a2IF6w4kM7kC6x804xWl14x267AKxVW5JVWrJwAFc2x0
 x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87
 I2jVAFwI0_Jr4l82xGYIkIc2x26xkF7I0E14v26r4j6ryUM28lY4IEw2IIxxk0rwA2F7IY
 1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20x
 vEc7CjxVAFwI0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv
 6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c
 02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE
 4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1lc2
 xSY4AK6svPMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8C
 rVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8Zw
 CIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x02
 67AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr
 0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU5Nj
 jDUUUUU==
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQASA13QvNvknwADsC
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

Implement use GPIO and I2C driver to detect connector
and fetch EDID via DDC.

v3:
- Change some driver log to the drm_ version.

v2:
- Optimize the error handling process.
- Delete loongson_i2c_bus_match and loongson_i2c_add function.
- Optimize part of the code flow.

Signed-off-by: lichenyang <lichenyang@loongson.cn>
---
 drivers/gpu/drm/loongson/Makefile             |   1 +
 drivers/gpu/drm/loongson/loongson_connector.c |  59 ++++-
 drivers/gpu/drm/loongson/loongson_drv.c       |  15 +-
 drivers/gpu/drm/loongson/loongson_drv.h       |  11 +
 drivers/gpu/drm/loongson/loongson_i2c.c       | 249 ++++++++++++++++++
 drivers/gpu/drm/loongson/loongson_i2c.h       |  36 +++
 6 files changed, 366 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/loongson/loongson_i2c.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_i2c.h

diff --git a/drivers/gpu/drm/loongson/Makefile b/drivers/gpu/drm/loongson/Makefile
index d73ad44fe1d5..a842e85cf6ca 100644
--- a/drivers/gpu/drm/loongson/Makefile
+++ b/drivers/gpu/drm/loongson/Makefile
@@ -10,5 +10,6 @@ loongson-y := loongson_connector.o \
 	loongson_device.o \
 	loongson_drv.o \
 	loongson_encoder.o \
+	loongson_i2c.o \
 	loongson_plane.o
 obj-$(CONFIG_DRM_LOONGSON) += loongson.o
diff --git a/drivers/gpu/drm/loongson/loongson_connector.c b/drivers/gpu/drm/loongson/loongson_connector.c
index a4762d8f9987..bdf7d651d6d1 100644
--- a/drivers/gpu/drm/loongson/loongson_connector.c
+++ b/drivers/gpu/drm/loongson/loongson_connector.c
@@ -4,12 +4,56 @@
 
 static int loongson_get_modes(struct drm_connector *connector)
 {
-	int count;
+	struct drm_device *dev = connector->dev;
+	struct loongson_connector *lconnector =
+				to_loongson_connector(connector);
+	struct i2c_adapter *adapter = lconnector->i2c->adapter;
+	struct edid *edid = NULL;
+	u32 ret;
 
-	count = drm_add_modes_noedid(connector, 1920, 1080);
-	drm_set_preferred_mode(connector, 1024, 768);
+	edid = drm_get_edid(connector, adapter);
+	if (edid) {
+		drm_connector_update_edid_property(connector, edid);
+		ret = drm_add_edid_modes(connector, edid);
+	} else {
+		drm_warn(dev, "Failed to read EDID\n");
+		ret = drm_add_modes_noedid(connector, 1920, 1080);
+		drm_set_preferred_mode(connector, 1024, 768);
+	}
 
-	return count;
+	return ret;
+}
+
+static bool is_connected(struct loongson_connector *lconnector)
+{
+	struct i2c_adapter *adapter = lconnector->i2c->adapter;
+	unsigned char start = 0x0;
+	struct i2c_msg msgs = {
+		.addr = DDC_ADDR,
+		.flags = 0,
+		.len = 1,
+		.buf = &start,
+	};
+
+	if (!lconnector->i2c)
+		return false;
+
+	if (i2c_transfer(adapter, &msgs, 1) != 1)
+		return false;
+
+	return true;
+}
+
+static enum drm_connector_status
+loongson_detect(struct drm_connector *connector, bool force)
+{
+	struct loongson_connector *lconnector =
+				to_loongson_connector(connector);
+
+	if (is_connected(lconnector))
+		return connector_status_connected;
+
+	return connector_status_disconnected;
 }
 
 static const struct drm_connector_helper_funcs loongson_connector_helper = {
@@ -17,6 +61,7 @@ static const struct drm_connector_helper_funcs loongson_connector_helper = {
 };
 
 static const struct drm_connector_funcs loongson_connector_funcs = {
+	.detect = loongson_detect,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.destroy = drm_connector_cleanup,
 	.reset = drm_atomic_helper_connector_reset,
@@ -36,6 +81,12 @@ int loongson_connector_init(struct loongson_device *ldev, int index)
 
 	lconnector->ldev = ldev;
 	lconnector->id = index;
+	lconnector->i2c_id = index;
+
+	lconnector->i2c = &ldev->i2c_bus[lconnector->i2c_id];
+	if (!lconnector->i2c)
+		drm_err(dev, "connector-%d match i2c-%d err\n", index,
+			lconnector->i2c_id);
 
 	ldev->mode_info[index].connector = lconnector;
 	connector = &lconnector->base;
diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
index 2224a03adc1a..4c02cbe1a5e6 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.c
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -12,9 +12,10 @@
 
 /* Interface history:
  * 0.1 - original.
+ * 0.2 - add i2c and connector detect.
  */
 #define DRIVER_MAJOR 0
-#define DRIVER_MINOR 1
+#define DRIVER_MINOR 2
 
 static const struct drm_mode_config_funcs loongson_mode_funcs = {
 	.fb_create = drm_gem_fb_create,
@@ -76,6 +77,18 @@ static int loongson_device_init(struct drm_device *dev)
 	if (!ldev->io)
 		return -ENOMEM;
 
+	ret = loongson_dc_gpio_init(ldev);
+	if (ret) {
+		drm_err(dev, "Failed to initialize dc gpios\n");
+		return ret;
+	}
+
+	ret = loongson_i2c_init(ldev);
+	if (ret) {
+		drm_err(dev, "Failed to initialize dc i2c err %d\n", ret);
+		return ret;
+	}
+
 	drm_info(dev, "DC mmio base 0x%llx size 0x%llx io 0x%llx\n",
 		 mmio_base, mmio_size, *(u64 *)ldev->io);
 	drm_info(dev, "GPU vram start = 0x%x size = 0x%x\n",
diff --git a/drivers/gpu/drm/loongson/loongson_drv.h b/drivers/gpu/drm/loongson/loongson_drv.h
index 75965d198212..67d7d61d93f5 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.h
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -19,6 +19,8 @@
 #include <drm/drm_plane.h>
 #include <drm/drm_plane_helper.h>
 
+#include "loongson_i2c.h"
+
 /* General customization:
  */
 #define DRIVER_AUTHOR "Loongson graphics driver team"
@@ -28,6 +30,7 @@
 
 #define to_loongson_crtc(x) container_of(x, struct loongson_crtc, base)
 #define to_loongson_encoder(x) container_of(x, struct loongson_encoder, base)
+#define to_loongson_connector(x) container_of(x, struct loongson_connector, base)
 
 #define LS7A_CHIPCFG_REG_BASE (0x10010000)
 #define PCI_DEVICE_ID_LOONGSON_DC 0x7a06
@@ -96,6 +99,8 @@ struct loongson_encoder {
 struct loongson_connector {
 	struct drm_connector base;
 	struct loongson_device *ldev;
+	struct loongson_i2c *i2c;
+	u16 i2c_id;
 	u16 id;
 	u32 type;
 };
@@ -119,6 +124,9 @@ struct loongson_device {
 	u32 num_crtc;
 	struct loongson_mode_info mode_info[2];
 	struct pci_dev *gpu_pdev; /* LS7A gpu device info */
+
+	struct loongson_i2c i2c_bus[LS_MAX_I2C_BUS];
+	struct gpio_chip chip;
 };
 
 static inline struct loongson_device *to_loongson_device(struct drm_device *dev)
@@ -138,6 +146,9 @@ int loongson_encoder_init(struct loongson_device *ldev, int index);
 /* plane */
 struct loongson_plane *loongson_plane_init(struct drm_device *dev, int index);
 
+/* i2c */
+int loongson_dc_gpio_init(struct loongson_device *ldev);
+
 /* device */
 u32 loongson_gpu_offset(struct drm_plane_state *state,
 			struct loongson_device *dev);
diff --git a/drivers/gpu/drm/loongson/loongson_i2c.c b/drivers/gpu/drm/loongson/loongson_i2c.c
new file mode 100644
index 000000000000..d3a9830afbed
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_i2c.c
@@ -0,0 +1,249 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "linux/gpio.h"
+#include <linux/gpio/consumer.h>
+
+#include "loongson_drv.h"
+//#include "loongson_i2c.h"
+
+static struct gpio i2c_gpios[4] = {
+	{ .gpio = DC_GPIO_0, .flags = GPIOF_OPEN_DRAIN, .label = "i2c-6-sda" },
+	{ .gpio = DC_GPIO_1, .flags = GPIOF_OPEN_DRAIN, .label = "i2c-6-scl" },
+	{ .gpio = DC_GPIO_2, .flags = GPIOF_OPEN_DRAIN, .label = "i2c-7-sda" },
+	{ .gpio = DC_GPIO_3, .flags = GPIOF_OPEN_DRAIN, .label = "i2c-7-scl" },
+};
+
+static inline void __dc_gpio_set_dir(struct loongson_device *ldev,
+				     unsigned int pin, int input)
+{
+	u32 temp;
+
+	temp = ls7a_mm_rreg(ldev, LS7A_DC_GPIO_CFG_OFFSET);
+
+	if (input)
+		temp |= 1UL << pin;
+	else
+		temp &= ~(1UL << pin);
+
+	ls7a_mm_wreg(ldev, LS7A_DC_GPIO_CFG_OFFSET, temp);
+}
+
+static void __dc_gpio_set_val(struct loongson_device *ldev,
+			      unsigned int pin, int high)
+{
+	u32 temp;
+
+	temp = ls7a_mm_rreg(ldev, LS7A_DC_GPIO_OUT_OFFSET);
+
+	if (high)
+		temp |= 1UL << pin;
+	else
+		temp &= ~(1UL << pin);
+
+	ls7a_mm_wreg(ldev, LS7A_DC_GPIO_OUT_OFFSET, temp);
+}
+
+static int ls_dc_gpio_request(struct gpio_chip *chip, unsigned int pin)
+{
+	if (pin >= (chip->ngpio + chip->base))
+		return -EINVAL;
+	return 0;
+}
+
+static int ls_dc_gpio_dir_input(struct gpio_chip *chip, unsigned int pin)
+{
+	struct loongson_device *ldev =
+			container_of(chip, struct loongson_device, chip);
+
+	__dc_gpio_set_dir(ldev, pin, 1);
+
+	return 0;
+}
+
+static int ls_dc_gpio_dir_output(struct gpio_chip *chip,
+				 unsigned int pin, int value)
+{
+	struct loongson_device *ldev =
+			container_of(chip, struct loongson_device, chip);
+
+	__dc_gpio_set_val(ldev, pin, value);
+	__dc_gpio_set_dir(ldev, pin, 0);
+
+	return 0;
+}
+
+static void ls_dc_gpio_set(struct gpio_chip *chip, unsigned int pin, int value)
+{
+	struct loongson_device *ldev =
+			container_of(chip, struct loongson_device, chip);
+
+	__dc_gpio_set_val(ldev, pin, value);
+}
+
+static int ls_dc_gpio_get(struct gpio_chip *chip, unsigned int pin)
+{
+	struct loongson_device *ldev =
+			container_of(chip, struct loongson_device, chip);
+	u32 val = ls7a_mm_rreg(ldev, LS7A_DC_GPIO_IN_OFFSET);
+
+	return (val >> pin) & 1;
+}
+
+static void loongson_i2c_set_data(void *i2c, int value)
+{
+	struct loongson_i2c *li2c = i2c;
+	struct gpio_desc *gpiod = gpio_to_desc(i2c_gpios[li2c->data].gpio);
+
+	gpiod_set_value_cansleep(gpiod, value);
+}
+
+static void loongson_i2c_set_clock(void *i2c, int value)
+{
+	struct loongson_i2c *li2c = i2c;
+	struct gpio_desc *gpiod = gpio_to_desc(i2c_gpios[li2c->clock].gpio);
+
+	gpiod_set_value_cansleep(gpiod, value);
+}
+
+static int loongson_i2c_get_data(void *i2c)
+{
+	struct loongson_i2c *li2c = i2c;
+	struct gpio_desc *gpiod = gpio_to_desc(i2c_gpios[li2c->data].gpio);
+
+	return gpiod_get_value_cansleep(gpiod);
+}
+
+static int loongson_i2c_get_clock(void *i2c)
+{
+	struct loongson_i2c *li2c = i2c;
+	struct gpio_desc *gpiod = gpio_to_desc(i2c_gpios[li2c->clock].gpio);
+
+	return gpiod_get_value_cansleep(gpiod);
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
+	i2c_adapter = kzalloc(sizeof(struct i2c_adapter), GFP_KERNEL);
+	if (!i2c_adapter)
+		return -ENOMEM;
+
+	i2c_algo_data = kzalloc(sizeof(struct i2c_algo_bit_data), GFP_KERNEL);
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
+	struct drm_device *dev = &ldev->dev;
+	struct gpio_chip *chip = &ldev->chip;
+	int ret;
+
+	chip->label = "ls7a-dc-gpio";
+	chip->base = LS7A_DC_GPIO_BASE;
+	chip->ngpio = 4;
+	chip->parent = dev->dev;
+	chip->request = ls_dc_gpio_request;
+	chip->direction_input = ls_dc_gpio_dir_input;
+	chip->direction_output = ls_dc_gpio_dir_output;
+	chip->set = ls_dc_gpio_set;
+	chip->get = ls_dc_gpio_get;
+	chip->can_sleep = false;
+
+	ret = devm_gpiochip_add_data(dev->dev, chip, ldev);
+	if (ret) {
+		drm_err(dev, "Failed to register ls7a dc gpio driver\n");
+		return ret;
+	}
+	DRM_INFO("Registered ls7a dc gpio driver\n");
+
+	return 0;
+}
+
+int loongson_i2c_init(struct loongson_device *ldev)
+{
+	struct drm_device *dev = &ldev->dev;
+	int ret;
+	int i;
+
+	ret = gpio_request_array(i2c_gpios, ARRAY_SIZE(i2c_gpios));
+	if (ret) {
+		drm_err(dev, "Failed to request gpio array i2c_gpios\n");
+		return -ENODEV;
+	}
+
+	ldev->i2c_bus[0].i2c_id = 0;
+	ldev->i2c_bus[1].i2c_id = 1;
+
+	for (i = 0; i < 2; i++) {
+		ret = loongson_i2c_create(ldev, &ldev->i2c_bus[i], DC_I2C_NAME);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
diff --git a/drivers/gpu/drm/loongson/loongson_i2c.h b/drivers/gpu/drm/loongson/loongson_i2c.h
new file mode 100644
index 000000000000..95cc961bc968
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_i2c.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __LOONGSON_I2C_H__
+#define __LOONGSON_I2C_H__
+
+#include <linux/i2c.h>
+#include <linux/i2c-algo-bit.h>
+#include <linux/gpio/driver.h>
+#include <drm/drm_edid.h>
+
+#define DC_I2C_TON 5
+#define DC_I2C_NAME "ls_dc_i2c"
+#define LS_MAX_I2C_BUS 2
+
+/* Loongson 7A display controller proprietary GPIOs */
+#define LS7A_DC_GPIO_BASE 73
+#define DC_GPIO_0 (73)
+#define DC_GPIO_1 (74)
+#define DC_GPIO_2 (75)
+#define DC_GPIO_3 (76)
+#define LS7A_DC_GPIO_CFG_OFFSET (0x1660)
+#define LS7A_DC_GPIO_IN_OFFSET (0x1650)
+#define LS7A_DC_GPIO_OUT_OFFSET (0x1650)
+
+struct loongson_device;
+struct loongson_i2c {
+	struct loongson_device *ldev;
+	struct i2c_adapter *adapter;
+	u32 data, clock;
+	bool use;
+	u32 i2c_id;
+};
+
+int loongson_i2c_init(struct loongson_device *ldev);
+
+#endif /* __LOONGSON_I2C_H__ */
-- 
2.32.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
