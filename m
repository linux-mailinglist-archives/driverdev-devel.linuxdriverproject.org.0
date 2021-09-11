Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA094074A1
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Sep 2021 04:32:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31C0D84B32;
	Sat, 11 Sep 2021 02:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFhtcRt92Dw7; Sat, 11 Sep 2021 02:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9ED784B21;
	Sat, 11 Sep 2021 02:32:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 613D51C113E
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 02:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D65661BC3
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 02:31:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XnxZGTOMpOXF for <devel@linuxdriverproject.org>;
 Sat, 11 Sep 2021 02:31:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA72561BC2
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 02:31:50 +0000 (UTC)
Received: from li-pc.loongson.cn (unknown [10.20.41.85])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxNeUIFTxhpBMEAA--.13012S3; 
 Sat, 11 Sep 2021 10:31:37 +0800 (CST)
From: lichenyang <lichenyang@loongson.cn>
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: [PATCH v5 2/3] drm/loongson: Add GPIO and I2C driver for loongson drm.
Date: Sat, 11 Sep 2021 10:31:32 +0800
Message-Id: <20210911023133.851311-2-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911023133.851311-1-lichenyang@loongson.cn>
References: <20210911023133.851311-1-lichenyang@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: AQAAf9DxNeUIFTxhpBMEAA--.13012S3
X-Coremail-Antispam: 1UD129KBjvAXoWfGr1ktFW7KryxWFy5KFWfXwb_yoW8JF4kto
 W8uFnxW3yrXF18Aa90qF1SgF1UZF15XanIyw4xAr4DArW5trn8tFy3Ww1xA34fAF1Fqr45
 A345Kr4rWr47Jw4kn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
 AaLaJ3UjIYCTnIWjp_UUUO07k0a2IF6w4kM7kC6x804xWl14x267AKxVW5JVWrJwAFc2x0
 x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87
 I2jVAFwI0_Jr4l82xGYIkIc2x26xkF7I0E14v26r4j6ryUM28lY4IEw2IIxxk0rwA2F7IY
 1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20x
 vEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWxJVW8Jr1l84ACjcxK6I8E87Iv
 6xkF7I0E14v26r4UJVWxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4
 CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvj
 eVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwACI402YVCY1x02628vn2kIc2xKxw
 CY02Avz4vE-syl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAq
 x4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r
 43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF
 7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxV
 WUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxU
 yjYLDUUUU
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQABA13QvN-LywADsu
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

v4:
- Delete the gpioo_chip subsystem call.
- Delete some redundant prints.

v3:
- Change some driver log to the drm_ version.

v2:
- Optimize the error handling process.
- Delete loongson_i2c_bus_match and loongson_i2c_add function.
- Optimize part of the code flow.

Signed-off-by: lichenyang <lichenyang@loongson.cn>
---
 drivers/gpu/drm/loongson/Makefile             |   1 +
 drivers/gpu/drm/loongson/loongson_connector.c |  59 +++++-
 drivers/gpu/drm/loongson/loongson_drv.c       |  16 +-
 drivers/gpu/drm/loongson/loongson_drv.h       |  10 +
 drivers/gpu/drm/loongson/loongson_i2c.c       | 189 ++++++++++++++++++
 drivers/gpu/drm/loongson/loongson_i2c.h       |  30 +++
 6 files changed, 297 insertions(+), 8 deletions(-)
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
diff --git a/drivers/gpu/drm/loongson/loongson_connector.c b/drivers/gpu/drm/loongson/loongson_connector.c
index 3300076df5dc..9aa8c34e1856 100644
--- a/drivers/gpu/drm/loongson/loongson_connector.c
+++ b/drivers/gpu/drm/loongson/loongson_connector.c
@@ -6,12 +6,56 @@
 
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
@@ -19,6 +63,7 @@ static const struct drm_connector_helper_funcs loongson_connector_helper = {
 };
 
 static const struct drm_connector_funcs loongson_connector_funcs = {
+	.detect = loongson_detect,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.destroy = drm_connector_cleanup,
 	.reset = drm_atomic_helper_connector_reset,
@@ -38,6 +83,12 @@ int loongson_connector_init(struct loongson_device *ldev, int index)
 
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
index 279815be633a..a27c24b1fadf 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.c
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -17,9 +17,10 @@
 
 /* Interface history:
  * 0.1 - original.
+ * 0.2 - add i2c and connector detect.
  */
 #define DRIVER_MAJOR 0
-#define DRIVER_MINOR 1
+#define DRIVER_MINOR 2
 
 static const struct drm_mode_config_funcs loongson_mode_funcs = {
 	.fb_create = drm_gem_fb_create,
@@ -83,15 +84,22 @@ static int loongson_device_init(struct drm_device *dev)
 
 	ldev->num_crtc = 2;
 
-	drm_info(dev, "DC mmio base 0x%llx size 0x%llx io 0x%llx\n",
-		 mmio_base, mmio_size, *(u64 *)ldev->io);
+	ret = loongson_dc_gpio_init(ldev);
+	if (ret)
+		return ret;
+
+	ret = loongson_i2c_init(ldev);
+	if (ret)
+		return ret;
+
+	drm_info(dev, "DC mmio base 0x%llx size 0x%llx\n", mmio_base, mmio_size);
 	drm_info(dev, "GPU vram start = 0x%x size = 0x%x\n",
 		 ldev->vram_start, ldev->vram_size);
 
 	return 0;
 }
 
-int loongson_modeset_init(struct loongson_device *ldev)
+static int loongson_modeset_init(struct loongson_device *ldev)
 {
 	struct drm_encoder *encoder;
 	struct drm_connector *connector;
diff --git a/drivers/gpu/drm/loongson/loongson_drv.h b/drivers/gpu/drm/loongson/loongson_drv.h
index dd4460b80618..4a5860814368 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.h
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -6,6 +6,8 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_gem_vram_helper.h>
 
+#include "loongson_i2c.h"
+
 /* General customization:
  */
 #define DRIVER_AUTHOR "Loongson graphics driver team"
@@ -15,6 +17,7 @@
 
 #define to_loongson_crtc(x) container_of(x, struct loongson_crtc, base)
 #define to_loongson_encoder(x) container_of(x, struct loongson_encoder, base)
+#define to_loongson_connector(x) container_of(x, struct loongson_connector, base)
 
 #define LS7A_CHIPCFG_REG_BASE (0x10010000)
 #define PCI_DEVICE_ID_LOONGSON_DC 0x7a06
@@ -83,6 +86,8 @@ struct loongson_encoder {
 struct loongson_connector {
 	struct drm_connector base;
 	struct loongson_device *ldev;
+	struct loongson_i2c *i2c;
+	u16 i2c_id;
 	u16 id;
 	u32 type;
 };
@@ -105,6 +110,8 @@ struct loongson_device {
 	u32 num_crtc;
 	struct loongson_mode_info mode_info[2];
 	struct pci_dev *gpu_pdev; /* LS7A gpu device info */
+
+	struct loongson_i2c i2c_bus[DC_MAX_I2C_BUS];
 };
 
 static inline struct loongson_device *to_loongson_device(struct drm_device *dev)
@@ -124,6 +131,9 @@ int loongson_encoder_init(struct loongson_device *ldev, int index);
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
index 000000000000..08fa536388b3
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_i2c.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
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
+
diff --git a/drivers/gpu/drm/loongson/loongson_i2c.h b/drivers/gpu/drm/loongson/loongson_i2c.h
new file mode 100644
index 000000000000..cb1b413641df
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_i2c.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
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
2.33.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
