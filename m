Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B406132AA
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Oct 2022 10:24:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 280B080FA9;
	Mon, 31 Oct 2022 09:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 280B080FA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nROFRWHHawvl; Mon, 31 Oct 2022 09:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD8A080D1D;
	Mon, 31 Oct 2022 09:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD8A080D1D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A00081BF358
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 09:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89C484025A
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 09:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89C484025A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p2gXvJH04mE9 for <devel@linuxdriverproject.org>;
 Mon, 31 Oct 2022 09:24:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE82040258
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE82040258
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 09:24:26 +0000 (UTC)
Received: from loongson.cn (unknown [10.20.42.62])
 by gateway (Coremail) with SMTP id _____8CxfbZHlF9jLI0DAA--.1223S3;
 Mon, 31 Oct 2022 17:24:23 +0800 (CST)
Received: from li-X99.loongson.cn (unknown [10.20.42.62])
 by localhost.localdomain (Coremail) with SMTP id
 AQAAf8AxiFdDlF9jzvcIAA--.9634S5; 
 Mon, 31 Oct 2022 17:24:23 +0800 (CST)
From: lichenyang <lichenyang@loongson.cn>
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: [PATCH v8 4/4] drm/loongson: Use acpi to get video bios.
Date: Mon, 31 Oct 2022 17:24:18 +0800
Message-Id: <20221031092418.2980766-4-lichenyang@loongson.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031092418.2980766-1-lichenyang@loongson.cn>
References: <20221031092418.2980766-1-lichenyang@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: AQAAf8AxiFdDlF9jzvcIAA--.9634S5
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQAQA2NeaWMNFQAAs9
X-Coremail-Antispam: 1Uk129KBjvJXoW3XF4UuryfAr45Ar13AF1UKFg_yoW7Cw45pF
 43A34Fgr4rJF4a93s5JayrAF45Za43uF97WFW7Jw15u39rCw1Uu345JFWUtFZrZryUGFyI
 qFykKFW8GF1jgw7anT9S1TB71UUUUUDqnTZGkaVYY2UrUUUUj1kv1TuYvTs0mT0YCTnIWj
 qI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUIcSsGvfJTRUUU
 b28YFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s
 1l1IIY67AEw4v_Gr0E3s1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xv
 wVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwA2z4
 x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4UJVWxJr1l
 e2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0cIa020Ex4CE44I27wAqx4xG64xvF2
 IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jw0_WrylYx0Ex4A2jsIE14v26r4j6F4U
 McvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCF04k20xvY0x0EwIxGrwCFx2
 IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v2
 6r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67
 AKxVW5JVW7JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IY
 s7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr
 0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07Ul4E_UUUUU=
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

Add get video bios from the ACPI table.
Define new acpi table "VIAT" for loongson video bios.

Signed-off-by: Chenyang Li <lichenyang@loongson.cn>
---
 drivers/gpu/drm/loongson/Makefile         |  3 +-
 drivers/gpu/drm/loongson/loongson_drv.c   | 21 +++++++-
 drivers/gpu/drm/loongson/loongson_drv.h   |  1 +
 drivers/gpu/drm/loongson/loongson_vbios.c | 62 +++++++++++++++++++++++
 drivers/gpu/drm/loongson/loongson_vbios.h | 29 +++++++++++
 5 files changed, 113 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/loongson/loongson_vbios.c
 create mode 100644 drivers/gpu/drm/loongson/loongson_vbios.h

diff --git a/drivers/gpu/drm/loongson/Makefile b/drivers/gpu/drm/loongson/Makefile
index b083854d789b..b774a91003d9 100644
--- a/drivers/gpu/drm/loongson/Makefile
+++ b/drivers/gpu/drm/loongson/Makefile
@@ -11,5 +11,6 @@ loongson-y := loongson_connector.o \
 	loongson_encoder.o \
 	loongson_i2c.o \
 	loongson_irq.o \
-	loongson_plane.o
+	loongson_plane.o \
+	loongson_vbios.o
 obj-$(CONFIG_DRM_LOONGSON) += loongson.o
diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
index c9702970a037..1e777f4c1753 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.c
+++ b/drivers/gpu/drm/loongson/loongson_drv.c
@@ -17,14 +17,28 @@
 #include <drm/drm_probe_helper.h>
 
 #include "loongson_drv.h"
+#include "loongson_vbios.h"
+
+/*
+ * Completed
+ * 1.Displays controller device initialization and display funcitons
+ * 2.I2c bus driver and DDC functions
+ * 3.Vblank and vsync interrupt support
+ * 4.Use acpi to get video bios
+ * Todo
+ * 1.Video bios parse functions
+ * 2.Hardware cursor driver
+ * 3.New device support as well as Loongson GPU
+ */
 
 /* Interface history:
  * 0.1 - original.
  * 0.2 - add i2c and connector detect.
  * 0.3 - Vblank and vsync interrupt support.
+ * 0.4 - Use acpi to get vbios.
  */
 #define DRIVER_MAJOR 0
-#define DRIVER_MINOR 3
+#define DRIVER_MINOR 4
 
 static const struct drm_mode_config_funcs loongson_mode_funcs = {
 	.fb_create = drm_gem_fb_create,
@@ -86,7 +100,10 @@ static int loongson_device_init(struct drm_device *dev)
 	if (!ldev->io)
 		return -ENOMEM;
 
-	ldev->num_crtc = 2;
+	if (!loongson_vbios_init(ldev)) {
+		DRM_WARN("Get vbios failed, enable two crtc\n");
+		ldev->num_crtc = 2;
+	}
 
 	ret = loongson_dc_gpio_init(ldev);
 	if (ret)
diff --git a/drivers/gpu/drm/loongson/loongson_drv.h b/drivers/gpu/drm/loongson/loongson_drv.h
index ec22dff89e88..eb13f2f68a17 100644
--- a/drivers/gpu/drm/loongson/loongson_drv.h
+++ b/drivers/gpu/drm/loongson/loongson_drv.h
@@ -107,6 +107,7 @@ struct loongson_device {
 	u32 num_crtc;
 	struct loongson_mode_info mode_info[2];
 	struct pci_dev *gpu_pdev; /* LS7A gpu device info */
+	void *vbios;
 
 	struct loongson_i2c i2c_bus[DC_MAX_I2C_BUS];
 };
diff --git a/drivers/gpu/drm/loongson/loongson_vbios.c b/drivers/gpu/drm/loongson/loongson_vbios.c
new file mode 100644
index 000000000000..66f64f038d1f
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_vbios.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2020-2022 Loongson Technology Corporation Limited
+ */
+
+#include "loongson_drv.h"
+#include "loongson_vbios.h"
+
+#ifdef CONFIG_ACPI
+static bool read_bios_from_acpi(struct loongson_device *ldev)
+{
+	void *vaddr;
+	struct acpi_table_header *hdr;
+	struct acpi_viat_table *viat;
+	acpi_size tbl_size;
+
+	if (!ACPI_SUCCESS(acpi_get_table("VIAT", 1, &hdr)))
+		return false;
+
+	tbl_size = hdr->length;
+	if (tbl_size != sizeof(struct acpi_viat_table)) {
+		DRM_WARN("ACPI viat table present but broken(too short #1)\n");
+		return false;
+	}
+
+	viat = (struct acpi_viat_table *)hdr;
+	ldev->vbios = kmalloc(VBIOS_SIZE, GFP_KERNEL);
+	if (!ldev->vbios) {
+		kfree(ldev->vbios);
+		return false;
+	}
+
+	vaddr = phys_to_virt(viat->vbios_addr);
+	memcpy(ldev->vbios, vaddr, VBIOS_SIZE);
+	DRM_INFO("Get vbios from ACPI success!\n");
+
+	return true;
+}
+#else
+static bool read_bios_from_acpi(struct loongson_device *ldev)
+{
+	return false;
+}
+#endif
+
+bool loongson_vbios_init(struct loongson_device *ldev)
+{
+	int ret;
+	struct loongson_vbios *header;
+
+	ret = read_bios_from_acpi(ldev);
+	if (!ret)
+		return ret;
+
+	header = ldev->vbios;
+	ldev->num_crtc = header->crtc_num;
+
+	DRM_INFO("Loongson vbios version %d.%d crtc num %d.\n",
+		 header->version_major, header->version_minor, ldev->num_crtc);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/loongson/loongson_vbios.h b/drivers/gpu/drm/loongson/loongson_vbios.h
new file mode 100644
index 000000000000..339498577395
--- /dev/null
+++ b/drivers/gpu/drm/loongson/loongson_vbios.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020-2022 Loongson Technology Corporation Limited
+ */
+
+#ifndef __LOONGSON_VBIOS_H__
+#define __LOONGSON_VBIOS_H__
+
+#include <linux/acpi.h>
+
+#define VBIOS_SIZE 0x40000
+
+struct loongson_vbios {
+	uint32_t version_major;
+	uint32_t version_minor;
+	uint32_t crtc_num;
+} __packed;
+
+#ifdef CONFIG_ACPI
+/* VBOIS INFO ADDRESS TABLE */
+struct acpi_viat_table {
+	struct acpi_table_header header;
+	u64 vbios_addr;
+} __packed;
+#endif
+
+bool loongson_vbios_init(struct loongson_device *ldev);
+
+#endif /* __LOONGSON_VBIOS_H__ */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
