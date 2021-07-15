Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8773F3C95C5
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Jul 2021 03:58:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BA9640307;
	Thu, 15 Jul 2021 01:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KM-4Dds-uVLG; Thu, 15 Jul 2021 01:58:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2750640292;
	Thu, 15 Jul 2021 01:58:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB78D1BF42D
 for <devel@linuxdriverproject.org>; Thu, 15 Jul 2021 01:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C76A4405AA
 for <devel@linuxdriverproject.org>; Thu, 15 Jul 2021 01:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ppgu_rT9ie4L for <devel@linuxdriverproject.org>;
 Thu, 15 Jul 2021 01:58:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A4B540566
 for <devel@linuxdriverproject.org>; Thu, 15 Jul 2021 01:58:25 +0000 (UTC)
Received: from li-pc.loongson.cn (unknown [10.20.41.133])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxn0I5lu9gFi4gAA--.18314S3; 
 Thu, 15 Jul 2021 09:58:18 +0800 (CST)
From: lichenyang <lichenyang@loongson.cn>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org, Huacai Chen <chenhuacai@kernel.org>
Subject: [PATCH v2 2/3] drm/loongson: Add GPIO and I2C driver for loongson drm.
Date: Thu, 15 Jul 2021 09:58:08 +0800
Message-Id: <20210715015809.107821-2-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715015809.107821-1-lichenyang@loongson.cn>
References: <20210715015809.107821-1-lichenyang@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: AQAAf9Dxn0I5lu9gFi4gAA--.18314S3
X-Coremail-Antispam: 1UD129KBjvAXoWfGFyUXw1UAw1DCFW3XrW5KFg_yoW8WrWkZo
 W8ZFnxu3yrXFyxAa90gF1fXF1UZFn8Xa1Skr4fAr4DZF45trn8tFyYgw17AFyxAF1Yqr4U
 A34agrWrGrW7Ja1kn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
 AaLaJ3UjIYCTnIWjp_UUUYX7k0a2IF6w4kM7kC6x804xWl14x267AKxVW5JVWrJwAFc2x0
 x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87
 I2jVAFwI0_Jr4l82xGYIkIc2x26xkF7I0E14v26r1I6r4UM28lY4IEw2IIxxk0rwA2F7IY
 1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20x
 vEc7CjxVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E
 87Iv6xkF7I0E14v26F4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0V
 AKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1l
 Ox8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JMxkIecxEwVCm-wCF04k20xvY0x
 0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E
 7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkGc2Ij64vIr41lIxAIcV
 C0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF
 04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7
 CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07bOg4hUUUUU=
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQADA13QvNqyDAAAsU
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
Cc: Tiezhu Yang <yangtiezhu@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Implement use GPIO and I2C driver to detect connector
and fetch EDID via DDC.

Signed-off-by: lichenyang <lichenyang@loongson.cn>
---
 drivers/gpu/drm/loongson/Makefile             |   3 +-
 drivers/gpu/drm/loongson/loongson_connector.c |  70 ++++-
 drivers/gpu/drm/loongson/loongson_drv.c       |  16 +-
 drivers/gpu/drm/loongson/loongson_drv.h       |  10 +
 drivers/gpu/drm/loongson/loongson_i2c.c       | 280 ++++++++++++++++++
 drivers/gpu/drm/loongson/loongson_i2c.h       |  38 +++
 6 files changed, 410 insertions(+), 7 deletions(-)
 create mode 100644 drivers/gpu/drm/loongson/loongson_i2c.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_i2c.h

diff --git a/drivers/gpu/drm/loongson/Makefile b/drivers/gpu/drm/loongson/Makefile
index 22d063953b78..773b806e99a2 100644
--- a/drivers/gpu/drm/loongson/Makefile
+++ b/drivers/gpu/drm/loongson/Makefile
@@ -10,5 +10,6 @@ loongson-y := loongson_drv.o \
 	loongson_plane.o \
 	loongson_device.o \
 	loongson_connector.o \
-	loongson_encoder.o
+	loongson_encoder.o \
+	loongson_i2c.o
 obj-$(CONFIG_DRM_LOONGSON) += loongson.o
diff --git a/drivers/gpu/drm/loongson/loongson_connector.c b/drivers/gpu/drm/loongson/loongson_connector.c
index 6b1f0ffa33bd..2096a6ddc366 100644
--- a/drivers/gpu/drm/loongson/loongson_connector.c
+++ b/drivers/gpu/drm/loongson/loongson_connector.c
@@ -4,12 +4,65 @@
 
 static int loongson_get_modes(struct drm_connector *connector)
 {
-	int count;
+	struct loongson_connector *lconnector;
+	struct i2c_adapter *adapter;
+	struct edid *edid = NULL;
+	u32 ret;
+
+	lconnector = to_loongson_connector(connector);
+	adapter = lconnector->i2c->adapter;
 
-	count = drm_add_modes_noedid(connector, 1920, 1080);
-	drm_set_preferred_mode(connector, 1024, 768);
+	if (adapter != NULL)
+		edid = drm_get_edid(connector, adapter);
+	else
+		DRM_DEBUG_KMS("get loongson connector adapter err\n");
 
-	return count;
+	if (edid) {
+		drm_connector_update_edid_property(connector, edid);
+		ret = drm_add_edid_modes(connector, edid);
+	} else {
+		DRM_ERROR("Failed to read EDID\n");
+		ret = drm_add_modes_noedid(connector, 1024, 768);
+	}
+
+	return ret;
+}
+
+static bool is_connected(struct loongson_connector *ls_connector)
+{
+	unsigned char start = 0x0;
+	struct i2c_adapter *adapter;
+	struct i2c_msg msgs = {
+		.addr = DDC_ADDR,
+		.flags = 0,
+		.len = 1,
+		.buf = &start,
+	};
+
+	if (!ls_connector->i2c)
+		return false;
+
+	adapter = ls_connector->i2c->adapter;
+	if (i2c_transfer(adapter, &msgs, 1) != 1) {
+		DRM_DEBUG_KMS("display-%d not connect\n", ls_connector->id);
+		return false;
+	}
+
+	return true;
+}
+
+static enum drm_connector_status
+loongson_detect(struct drm_connector *connector, bool force)
+{
+	struct loongson_connector *lconnector;
+	enum drm_connector_status ret = connector_status_disconnected;
+
+	lconnector = to_loongson_connector(connector);
+
+	if (is_connected(lconnector))
+		ret = connector_status_connected;
+
+	return ret;
 }
 
 static const struct drm_connector_helper_funcs loongson_connector_helper = {
@@ -17,6 +70,7 @@ static const struct drm_connector_helper_funcs loongson_connector_helper = {
 };
 
 static const struct drm_connector_funcs loongson_connector_funcs = {
+	.detect = loongson_detect,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.destroy = drm_connector_cleanup,
 	.reset = drm_atomic_helper_connector_reset,
@@ -37,11 +91,17 @@ int loongson_connector_init(struct loongson_device *ldev, int index)
 
 	lconnector->ldev = ldev;
 	lconnector->id = index;
+	lconnector->i2c_id = index + DC_I2C_BASE;
+
+	lconnector->i2c = loongson_i2c_bus_match(ldev, lconnector->i2c_id);
+	if (!lconnector->i2c)
+		DRM_INFO("connector-%d match i2c-%d err\n", index,
+			 lconnector->i2c_id);
 
 	ldev->mode_info[index].connector = lconnector;
 	connector = &lconnector->base;
 	drm_connector_init(ldev->dev, connector, &loongson_connector_funcs,
-			   DRM_MODE_CONNECTOR_Unknown);
+			DRM_MODE_CONNECTOR_Unknown);
 	drm_connector_helper_add(connector, &loongson_connector_helper);
 
 	return 0;
diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
index e405199a3df6..252be9e25aff 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.c
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -11,9 +11,10 @@
 
 /* Interface history:
  * 0.1 - original.
+ * 0.2 - add i2c and connector detect.
  */
 #define DRIVER_MAJOR 0
-#define DRIVER_MINOR 1
+#define DRIVER_MINOR 2
 
 static const struct drm_mode_config_funcs loongson_mode_funcs = {
 	.fb_create = drm_gem_fb_create,
@@ -31,6 +32,7 @@ static int loongson_device_init(struct drm_device *dev, uint32_t flags)
 	resource_size_t aper_size;
 	resource_size_t mmio_base;
 	resource_size_t mmio_size;
+	u32 ret;
 
 	/* GPU MEM */
 	/* We need get 7A-gpu pci device information for ldev->gpu_pdev */
@@ -72,6 +74,18 @@ static int loongson_device_init(struct drm_device *dev, uint32_t flags)
 	if (ldev->io == NULL)
 		return -ENOMEM;
 
+	ret = loongson_dc_gpio_init(ldev);
+	if (ret) {
+		DRM_ERROR("Failed to initialize dc gpios\n");
+		return ret;
+	}
+
+	ret = loongson_i2c_init(ldev);
+	if (ret) {
+		DRM_ERROR("Failed to initialize dc i2c\n");
+		return ret;
+	}
+
 	DRM_INFO("DC mmio base 0x%llx size 0x%llx io 0x%llx\n",
 		 mmio_base, mmio_size, *(u64 *)ldev->io);
 	DRM_INFO("GPU vram start = 0x%x size = 0x%x\n",
diff --git a/drivers/gpu/drm/loongson/loongson_drv.h b/drivers/gpu/drm/loongson/loongson_drv.h
index 498d1b082a19..24a534c3c79c 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.h
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -18,6 +18,7 @@
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_encoder.h>
+#include "loongson_i2c.h"
 
 /* General customization:
  */
@@ -28,6 +29,7 @@
 
 #define to_loongson_crtc(x) container_of(x, struct loongson_crtc, base)
 #define to_loongson_encoder(x) container_of(x, struct loongson_encoder, base)
+#define to_loongson_connector(x) container_of(x, struct loongson_connector, base)
 
 #define LS7A_CHIPCFG_REG_BASE (0x10010000)
 #define PCI_DEVICE_ID_LOONGSON_DC 0x7a06
@@ -92,8 +94,10 @@ struct loongson_encoder {
 struct loongson_connector {
 	struct drm_connector base;
 	struct loongson_device *ldev;
+	struct loongson_i2c *i2c;
 	u16 id;
 	u32 type;
+	u16 i2c_id;
 };
 
 struct loongson_mode_info {
@@ -115,6 +119,9 @@ struct loongson_device {
 	u32 num_crtc;
 	struct loongson_mode_info mode_info[2];
 	struct pci_dev *gpu_pdev; /* LS7A gpu device info */
+
+	struct loongson_i2c i2c_bus[LS_MAX_I2C_BUS];
+	struct gpio_chip chip;
 };
 
 /* crtc */
@@ -129,6 +136,9 @@ int loongson_encoder_init(struct loongson_device *ldev, int index);
 /* plane */
 int loongson_plane_init(struct loongson_crtc *lcrtc);
 
+/* i2c */
+int loongson_dc_gpio_init(struct loongson_device *ldev);
+
 /* device */
 u32 loongson_gpu_offset(struct drm_plane_state *state);
 u32 ls7a_mm_rreg(struct loongson_device *ldev, u32 offset);
diff --git a/drivers/gpu/drm/loongson/loongson_i2c.c b/drivers/gpu/drm/loongson/loongson_i2c.c
new file mode 100644
index 000000000000..ef06a6787e34
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_i2c.c
@@ -0,0 +1,280 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "loongson_i2c.h"
+#include "loongson_drv.h"
+#include "linux/gpio.h"
+#include <linux/gpio/consumer.h>
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
+	else
+		return 0;
+}
+
+static int ls_dc_gpio_dir_input(struct gpio_chip *chip, unsigned int pin)
+{
+	struct loongson_device *ldev;
+
+	ldev = container_of(chip, struct loongson_device, chip);
+	__dc_gpio_set_dir(ldev, pin, 1);
+
+	return 0;
+}
+
+static int ls_dc_gpio_dir_output(struct gpio_chip *chip,
+				 unsigned int pin, int value)
+{
+	struct loongson_device *ldev;
+
+	ldev = container_of(chip, struct loongson_device, chip);
+	__dc_gpio_set_val(ldev, pin, value);
+	__dc_gpio_set_dir(ldev, pin, 0);
+
+	return 0;
+}
+
+static void ls_dc_gpio_set(struct gpio_chip *chip, unsigned int pin, int value)
+{
+	struct loongson_device *ldev;
+
+	ldev = container_of(chip, struct loongson_device, chip);
+	__dc_gpio_set_val(ldev, pin, value);
+}
+
+static int ls_dc_gpio_get(struct gpio_chip *chip, unsigned int pin)
+{
+	u32 val;
+	struct loongson_device *ldev;
+
+	ldev = container_of(chip, struct loongson_device, chip);
+	val = ls7a_mm_rreg(ldev, LS7A_DC_GPIO_IN_OFFSET);
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
+static int loongson_i2c_create(struct loongson_i2c *li2c, const char *name)
+{
+	int ret;
+	unsigned int i2c_num;
+	struct i2c_client *i2c_cli;
+	struct i2c_adapter *i2c_adapter;
+	struct i2c_board_info i2c_info;
+	struct i2c_algo_bit_data *i2c_algo_data;
+	struct device *dev;
+
+	dev = &li2c->adapter->dev;
+	i2c_num = li2c->i2c_id;
+	i2c_adapter = kzalloc(sizeof(struct i2c_adapter), GFP_KERNEL);
+	if (IS_ERR(i2c_adapter)) {
+		ret = PTR_ERR(i2c_adapter);
+		goto error_mem;
+	}
+	i2c_algo_data = kzalloc(sizeof(struct i2c_algo_bit_data), GFP_KERNEL);
+	if (IS_ERR(i2c_algo_data)) {
+		ret = PTR_ERR(i2c_algo_data);
+		goto error_mem;
+	}
+
+	i2c_adapter->owner = THIS_MODULE;
+	i2c_adapter->class = I2C_CLASS_DDC;
+	i2c_adapter->algo_data = i2c_algo_data;
+	i2c_adapter->nr = i2c_num;
+	snprintf(i2c_adapter->name, sizeof(i2c_adapter->name), "%s%d",
+		 name, i2c_num - DC_I2C_BASE);
+
+	li2c->data = i2c_num % DC_I2C_BASE * 2;
+	li2c->clock = i2c_num % DC_I2C_BASE * 2 + 1;
+	DRM_INFO("Created i2c-%d, sda=%d, scl=%d\n",
+		 i2c_num, li2c->data, li2c->clock);
+
+	if (gpio_cansleep(i2c_gpios[li2c->data].gpio) ||
+	    gpio_cansleep(i2c_gpios[li2c->clock].gpio))
+		dev_warn(dev, "Slow GPIO pins might wreak havoc I2C timing\n");
+
+	i2c_algo_data->setsda = loongson_i2c_set_data;
+	i2c_algo_data->setscl = loongson_i2c_set_clock;
+	i2c_algo_data->getsda = loongson_i2c_get_data;
+	i2c_algo_data->getscl = loongson_i2c_get_clock;
+	i2c_algo_data->udelay = DC_I2C_TON;
+	i2c_algo_data->timeout = usecs_to_jiffies(2200);
+
+	ret = i2c_bit_add_numbered_bus(i2c_adapter);
+	if (ret) {
+		DRM_ERROR("Failed to register i2c algo-bit adapter %s\n",
+			  i2c_adapter->name);
+		kfree(i2c_adapter);
+		i2c_adapter = NULL;
+	}
+
+	li2c->adapter = i2c_adapter;
+	i2c_algo_data->data = li2c;
+	i2c_set_adapdata(li2c->adapter, li2c);
+	DRM_INFO("Register i2c algo-bit adapter [%s]\n", i2c_adapter->name);
+
+	memset(&i2c_info, 0, sizeof(struct i2c_board_info));
+	strncpy(i2c_info.type, name, I2C_NAME_SIZE);
+	i2c_info.addr = DDC_ADDR;
+	i2c_cli = i2c_new_client_device(i2c_adapter, &i2c_info);
+	if (i2c_cli == NULL) {
+		DRM_ERROR("Failed to create i2c adapter\n");
+		return -EBUSY;
+	}
+	li2c->init = true;
+	return 0;
+
+error_mem:
+	DRM_ERROR("Failed to malloc memory for loongson i2c\n");
+	return ret;
+}
+
+static int loongson_i2c_add(struct loongson_device *ldev, const char *name)
+{
+	int i;
+
+	for (i = 0; i < LS_MAX_I2C_BUS; i++) {
+		if (ldev->i2c_bus[i].use)
+			loongson_i2c_create(&ldev->i2c_bus[i], name);
+		else {
+			DRM_DEBUG_DRIVER("i2c_bus[%d] not use\n", i);
+			return -ENODEV;
+		}
+	}
+	return 0;
+}
+
+int loongson_dc_gpio_init(struct loongson_device *ldev)
+{
+	int ret;
+	struct gpio_chip *chip;
+
+	chip = &ldev->chip;
+	chip->label = "ls7a-dc-gpio";
+	chip->base = LS7A_DC_GPIO_BASE;
+	chip->ngpio = 4;
+	chip->parent = ldev->dev->dev;
+	chip->request = ls_dc_gpio_request;
+	chip->direction_input = ls_dc_gpio_dir_input;
+	chip->direction_output = ls_dc_gpio_dir_output;
+	chip->set = ls_dc_gpio_set;
+	chip->get = ls_dc_gpio_get;
+	chip->can_sleep = false;
+
+	ret = devm_gpiochip_add_data(ldev->dev->dev, chip, ldev);
+	if (ret) {
+		DRM_ERROR("Failed to register ls7a dc gpio driver\n");
+		return -ENODEV;
+	}
+	DRM_INFO("Registered ls7a dc gpio driver\n");
+
+	return 0;
+}
+
+int loongson_i2c_init(struct loongson_device *ldev)
+{
+	int ret;
+
+	ret = gpio_request_array(i2c_gpios, ARRAY_SIZE(i2c_gpios));
+	if (ret) {
+		DRM_ERROR("Failed to request gpio array i2c_gpios\n");
+		return -ENODEV;
+	}
+
+	ldev->i2c_bus[0].i2c_id = 6;
+	ldev->i2c_bus[0].use = true;
+	ldev->i2c_bus[1].i2c_id = 7;
+	ldev->i2c_bus[1].use = true;
+
+	loongson_i2c_add(ldev, DC_I2C_NAME);
+
+	return 0;
+}
+
+struct loongson_i2c *loongson_i2c_bus_match(struct loongson_device *ldev, u32 i2c_id)
+{
+	u32 i;
+	struct loongson_i2c *match = NULL, *tables;
+
+	tables = ldev->i2c_bus;
+
+	for (i = 0; i < LS_MAX_I2C_BUS; i++) {
+		if (tables->i2c_id == i2c_id && tables->init == true) {
+			match = tables;
+			break;
+		}
+
+		tables++;
+	}
+
+	return match;
+}
+
diff --git a/drivers/gpu/drm/loongson/loongson_i2c.h b/drivers/gpu/drm/loongson/loongson_i2c.h
new file mode 100644
index 000000000000..50d4d3f4b10f
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_i2c.h
@@ -0,0 +1,38 @@
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
+#define DC_I2C_BASE 6
+#define DC_I2C_NAME "ls_dc_i2c"
+#define LS_MAX_I2C_BUS 16
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
+	struct i2c_adapter *adapter;
+	u32 data, clock;
+	bool use, init;
+	u32 i2c_id;
+};
+
+struct loongson_i2c *loongson_i2c_bus_match(struct loongson_device *ldev,
+					    u32 i2c_id);
+int loongson_i2c_init(struct loongson_device *ldev);
+
+#endif /* __LOONGSON_I2C_H__ */
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
