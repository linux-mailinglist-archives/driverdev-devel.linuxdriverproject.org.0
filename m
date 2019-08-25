Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3DF9C22F
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 07:55:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77E3E87E2E;
	Sun, 25 Aug 2019 05:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M4wYHMLAG7kv; Sun, 25 Aug 2019 05:55:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5002C87DA1;
	Sun, 25 Aug 2019 05:55:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FFCD1BF969
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C94A86581
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1vdMvgL0bzR8 for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 05:55:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E73C2865CF
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 05:55:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 238BC2190F;
 Sun, 25 Aug 2019 05:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566712511;
 bh=nboE8qZv/ioL+kAFLyUR5cQqzLW4Oxq+0srKDfEMM50=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U6Zer6bGTJwGX9SYfDbV0wDSJUitQwaaRK/oq/egmlVV9q/EH93zu4Rr0s23d+OMT
 ON6q3sHLvrzGd8hjiA+pVMAW5TPIzJ7ssazws1uPW1njKvyCnNoJ7byir4fhvG9Gk5
 5H/HtasQkzA51i5WkLhheg1Paw0JmNB1MDskhUQ4=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org
Subject: [PATCH 7/9] staging: greybus: move core include files to
 include/linux/greybus/
Date: Sun, 25 Aug 2019 07:54:27 +0200
Message-Id: <20190825055429.18547-8-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825055429.18547-1-gregkh@linuxfoundation.org>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
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
Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Greer <mgreer@animalcreek.com>, linux-kernel@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>, David Lin <dtwlin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

With the goal of moving the core of the greybus code out of staging, the
include files need to be moved to include/linux/greybus.h and
include/linux/greybus/

Cc: Vaibhav Hiremath <hvaibhav.linux@gmail.com>
Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Cc: Mark Greer <mgreer@animalcreek.com>
Cc: Viresh Kumar <vireshk@kernel.org>
Cc: Rui Miguel Silva <rmfrfs@gmail.com>
Cc: David Lin <dtwlin@gmail.com>
Cc: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
Cc: greybus-dev@lists.linaro.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/greybus/arche-platform.c      |  2 +-
 drivers/staging/greybus/audio_apbridgea.c     |  3 +--
 drivers/staging/greybus/audio_codec.h         |  4 +---
 drivers/staging/greybus/audio_gb.c            |  4 +---
 drivers/staging/greybus/authentication.c      |  3 +--
 drivers/staging/greybus/bootrom.c             |  2 +-
 drivers/staging/greybus/bundle.c              |  2 +-
 drivers/staging/greybus/camera.c              |  2 +-
 drivers/staging/greybus/connection.c          |  2 +-
 drivers/staging/greybus/control.c             |  2 +-
 drivers/staging/greybus/core.c                |  2 +-
 drivers/staging/greybus/debugfs.c             |  3 +--
 drivers/staging/greybus/es2.c                 |  3 +--
 drivers/staging/greybus/firmware.h            |  2 +-
 drivers/staging/greybus/fw-core.c             |  2 +-
 drivers/staging/greybus/fw-download.c         |  2 +-
 drivers/staging/greybus/fw-management.c       |  2 +-
 drivers/staging/greybus/gbphy.c               |  2 +-
 drivers/staging/greybus/gpio.c                |  2 +-
 drivers/staging/greybus/hd.c                  |  2 +-
 drivers/staging/greybus/hid.c                 |  3 +--
 drivers/staging/greybus/i2c.c                 |  2 +-
 drivers/staging/greybus/interface.c           |  2 +-
 drivers/staging/greybus/light.c               |  4 +---
 drivers/staging/greybus/log.c                 |  3 +--
 drivers/staging/greybus/loopback.c            |  5 +---
 drivers/staging/greybus/manifest.c            |  2 +-
 drivers/staging/greybus/module.c              |  2 +-
 drivers/staging/greybus/operation.c           |  2 +-
 drivers/staging/greybus/power_supply.c        |  3 +--
 drivers/staging/greybus/pwm.c                 |  2 +-
 drivers/staging/greybus/raw.c                 |  3 +--
 drivers/staging/greybus/sdio.c                |  2 +-
 drivers/staging/greybus/spi.c                 |  2 +-
 drivers/staging/greybus/spilib.c              |  2 +-
 drivers/staging/greybus/svc.c                 |  3 +--
 drivers/staging/greybus/svc_watchdog.c        |  2 +-
 drivers/staging/greybus/uart.c                |  2 +-
 drivers/staging/greybus/usb.c                 |  2 +-
 drivers/staging/greybus/vibrator.c            |  3 +--
 .../greybus => include/linux}/greybus.h       | 24 +++++++++----------
 .../linux}/greybus/bundle.h                   |  0
 .../linux}/greybus/connection.h               |  0
 .../linux}/greybus/control.h                  |  0
 .../linux}/greybus/greybus_id.h               |  0
 .../linux}/greybus/greybus_manifest.h         |  0
 .../linux}/greybus/greybus_protocols.h        |  0
 .../staging => include/linux}/greybus/hd.h    |  0
 .../linux}/greybus/interface.h                |  0
 .../linux}/greybus/manifest.h                 |  0
 .../linux}/greybus/module.h                   |  0
 .../linux}/greybus/operation.h                |  0
 .../staging => include/linux}/greybus/svc.h   |  0
 53 files changed, 52 insertions(+), 71 deletions(-)
 rename {drivers/staging/greybus => include/linux}/greybus.h (89%)
 rename {drivers/staging => include/linux}/greybus/bundle.h (100%)
 rename {drivers/staging => include/linux}/greybus/connection.h (100%)
 rename {drivers/staging => include/linux}/greybus/control.h (100%)
 rename {drivers/staging => include/linux}/greybus/greybus_id.h (100%)
 rename {drivers/staging => include/linux}/greybus/greybus_manifest.h (100%)
 rename {drivers/staging => include/linux}/greybus/greybus_protocols.h (100%)
 rename {drivers/staging => include/linux}/greybus/hd.h (100%)
 rename {drivers/staging => include/linux}/greybus/interface.h (100%)
 rename {drivers/staging => include/linux}/greybus/manifest.h (100%)
 rename {drivers/staging => include/linux}/greybus/module.h (100%)
 rename {drivers/staging => include/linux}/greybus/operation.h (100%)
 rename {drivers/staging => include/linux}/greybus/svc.h (100%)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index 6eb842040c22..eebf0deb39f5 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -19,8 +19,8 @@
 #include <linux/irq.h>
 #include <linux/suspend.h>
 #include <linux/time.h>
+#include <linux/greybus.h>
 #include "arche_platform.h"
-#include "greybus.h"
 
 #if IS_ENABLED(CONFIG_USB_HSIC_USB3613)
 #include <linux/usb/usb3613.h>
diff --git a/drivers/staging/greybus/audio_apbridgea.c b/drivers/staging/greybus/audio_apbridgea.c
index 7ebb1bde5cb7..26117e390deb 100644
--- a/drivers/staging/greybus/audio_apbridgea.c
+++ b/drivers/staging/greybus/audio_apbridgea.c
@@ -5,8 +5,7 @@
  * Copyright 2015-2016 Google Inc.
  */
 
-#include "greybus.h"
-#include "greybus_protocols.h"
+#include <linux/greybus.h>
 #include "audio_apbridgea.h"
 #include "audio_codec.h"
 
diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
index 9ba09ea9c2fc..cb5d271da1a5 100644
--- a/drivers/staging/greybus/audio_codec.h
+++ b/drivers/staging/greybus/audio_codec.h
@@ -8,12 +8,10 @@
 #ifndef __LINUX_GBAUDIO_CODEC_H
 #define __LINUX_GBAUDIO_CODEC_H
 
+#include <linux/greybus.h>
 #include <sound/soc.h>
 #include <sound/jack.h>
 
-#include "greybus.h"
-#include "greybus_protocols.h"
-
 #define NAME_SIZE	32
 #define MAX_DAIS	2	/* APB1, APB2 */
 
diff --git a/drivers/staging/greybus/audio_gb.c b/drivers/staging/greybus/audio_gb.c
index 8894f1c87d48..9d8994fdb41a 100644
--- a/drivers/staging/greybus/audio_gb.c
+++ b/drivers/staging/greybus/audio_gb.c
@@ -5,9 +5,7 @@
  * Copyright 2015-2016 Google Inc.
  */
 
-#include "greybus.h"
-#include "greybus_protocols.h"
-#include "operation.h"
+#include <linux/greybus.h>
 #include "audio_codec.h"
 
 /* TODO: Split into separate calls */
diff --git a/drivers/staging/greybus/authentication.c b/drivers/staging/greybus/authentication.c
index a5d7c53df987..297e69f011c7 100644
--- a/drivers/staging/greybus/authentication.c
+++ b/drivers/staging/greybus/authentication.c
@@ -6,8 +6,7 @@
  * Copyright 2016 Linaro Ltd.
  */
 
-#include "greybus.h"
-
+#include <linux/greybus.h>
 #include <linux/cdev.h>
 #include <linux/fs.h>
 #include <linux/ioctl.h>
diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
index 402e6360834f..a8efb86de140 100644
--- a/drivers/staging/greybus/bootrom.c
+++ b/drivers/staging/greybus/bootrom.c
@@ -10,8 +10,8 @@
 #include <linux/jiffies.h>
 #include <linux/mutex.h>
 #include <linux/workqueue.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "firmware.h"
 
 /* Timeout, in jiffies, within which the next request must be received */
diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
index 3f702db9e098..84660729538b 100644
--- a/drivers/staging/greybus/bundle.c
+++ b/drivers/staging/greybus/bundle.c
@@ -6,7 +6,7 @@
  * Copyright 2014-2015 Linaro Ltd.
  */
 
-#include "greybus.h"
+#include <linux/greybus.h>
 #include "greybus_trace.h"
 
 static ssize_t bundle_class_show(struct device *dev,
diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 615c8e7fd51e..b570e13394ac 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -14,9 +14,9 @@
 #include <linux/string.h>
 #include <linux/uaccess.h>
 #include <linux/vmalloc.h>
+#include <linux/greybus.h>
 
 #include "gb-camera.h"
-#include "greybus.h"
 #include "greybus_protocols.h"
 
 enum gb_camera_debugs_buffer_id {
diff --git a/drivers/staging/greybus/connection.c b/drivers/staging/greybus/connection.c
index eda964208cce..fc8f57f97ce6 100644
--- a/drivers/staging/greybus/connection.c
+++ b/drivers/staging/greybus/connection.c
@@ -7,8 +7,8 @@
  */
 
 #include <linux/workqueue.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "greybus_trace.h"
 
 #define GB_CONNECTION_CPORT_QUIESCE_TIMEOUT	1000
diff --git a/drivers/staging/greybus/control.c b/drivers/staging/greybus/control.c
index a9e8b6036cac..359a25841973 100644
--- a/drivers/staging/greybus/control.c
+++ b/drivers/staging/greybus/control.c
@@ -9,7 +9,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/slab.h>
-#include "greybus.h"
+#include <linux/greybus.h>
 
 /* Highest control-protocol version supported */
 #define GB_CONTROL_VERSION_MAJOR	0
diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index d6b0d49130c0..e546c6431877 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -9,7 +9,7 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #define CREATE_TRACE_POINTS
-#include "greybus.h"
+#include <linux/greybus.h>
 #include "greybus_trace.h"
 
 #define GB_BUNDLE_AUTOSUSPEND_MS	3000
diff --git a/drivers/staging/greybus/debugfs.c b/drivers/staging/greybus/debugfs.c
index 56e20c30feb5..e102d7badb9d 100644
--- a/drivers/staging/greybus/debugfs.c
+++ b/drivers/staging/greybus/debugfs.c
@@ -7,8 +7,7 @@
  */
 
 #include <linux/debugfs.h>
-
-#include "greybus.h"
+#include <linux/greybus.h>
 
 static struct dentry *gb_debug_root;
 
diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
index be6af18cec31..366716f11b1a 100644
--- a/drivers/staging/greybus/es2.c
+++ b/drivers/staging/greybus/es2.c
@@ -11,12 +11,11 @@
 #include <linux/kfifo.h>
 #include <linux/debugfs.h>
 #include <linux/list.h>
+#include <linux/greybus.h>
 #include <asm/unaligned.h>
 
 #include "arpc.h"
-#include "greybus.h"
 #include "greybus_trace.h"
-#include "connection.h"
 
 
 /* Default timeout for USB vendor requests. */
diff --git a/drivers/staging/greybus/firmware.h b/drivers/staging/greybus/firmware.h
index 72dfabfa4704..5d2564462ffc 100644
--- a/drivers/staging/greybus/firmware.h
+++ b/drivers/staging/greybus/firmware.h
@@ -9,7 +9,7 @@
 #ifndef __FIRMWARE_H
 #define __FIRMWARE_H
 
-#include "greybus.h"
+#include <linux/greybus.h>
 
 #define FW_NAME_PREFIX	"gmp_"
 
diff --git a/drivers/staging/greybus/fw-core.c b/drivers/staging/greybus/fw-core.c
index 388866d92f5b..57bebf24636b 100644
--- a/drivers/staging/greybus/fw-core.c
+++ b/drivers/staging/greybus/fw-core.c
@@ -8,8 +8,8 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/firmware.h>
+#include <linux/greybus.h>
 #include "firmware.h"
-#include "greybus.h"
 #include "spilib.h"
 
 struct gb_fw_core {
diff --git a/drivers/staging/greybus/fw-download.c b/drivers/staging/greybus/fw-download.c
index d3b7cccbc10d..543692c567f9 100644
--- a/drivers/staging/greybus/fw-download.c
+++ b/drivers/staging/greybus/fw-download.c
@@ -10,8 +10,8 @@
 #include <linux/jiffies.h>
 #include <linux/mutex.h>
 #include <linux/workqueue.h>
+#include <linux/greybus.h>
 #include "firmware.h"
-#include "greybus.h"
 
 /* Estimated minimum buffer size, actual size can be smaller than this */
 #define MIN_FETCH_SIZE		512
diff --git a/drivers/staging/greybus/fw-management.c b/drivers/staging/greybus/fw-management.c
index 71aec14f8181..687c6405c65b 100644
--- a/drivers/staging/greybus/fw-management.c
+++ b/drivers/staging/greybus/fw-management.c
@@ -13,10 +13,10 @@
 #include <linux/idr.h>
 #include <linux/ioctl.h>
 #include <linux/uaccess.h>
+#include <linux/greybus.h>
 
 #include "firmware.h"
 #include "greybus_firmware.h"
-#include "greybus.h"
 
 #define FW_MGMT_TIMEOUT_MS		1000
 
diff --git a/drivers/staging/greybus/gbphy.c b/drivers/staging/greybus/gbphy.c
index 6cb85c3d3572..9fc5c47be9bd 100644
--- a/drivers/staging/greybus/gbphy.c
+++ b/drivers/staging/greybus/gbphy.c
@@ -13,8 +13,8 @@
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/device.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "gbphy.h"
 
 #define GB_GBPHY_AUTOSUSPEND_MS	3000
diff --git a/drivers/staging/greybus/gpio.c b/drivers/staging/greybus/gpio.c
index 3151004d26fb..1ff34abd5692 100644
--- a/drivers/staging/greybus/gpio.c
+++ b/drivers/staging/greybus/gpio.c
@@ -13,8 +13,8 @@
 #include <linux/irqdomain.h>
 #include <linux/gpio/driver.h>
 #include <linux/mutex.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "gbphy.h"
 
 struct gb_gpio_line {
diff --git a/drivers/staging/greybus/hd.c b/drivers/staging/greybus/hd.c
index e2b9ab5f6ec2..72b21bf2d7d3 100644
--- a/drivers/staging/greybus/hd.c
+++ b/drivers/staging/greybus/hd.c
@@ -8,8 +8,8 @@
 
 #include <linux/kernel.h>
 #include <linux/slab.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "greybus_trace.h"
 
 EXPORT_TRACEPOINT_SYMBOL_GPL(gb_hd_create);
diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
index 8ab810bf5716..04bfd9110502 100644
--- a/drivers/staging/greybus/hid.c
+++ b/drivers/staging/greybus/hid.c
@@ -12,8 +12,7 @@
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/slab.h>
-
-#include "greybus.h"
+#include <linux/greybus.h>
 
 /* Greybus HID device's structure */
 struct gb_hid {
diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
index b2522043a1a4..ab06fc3b9e7e 100644
--- a/drivers/staging/greybus/i2c.c
+++ b/drivers/staging/greybus/i2c.c
@@ -10,8 +10,8 @@
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/i2c.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "gbphy.h"
 
 struct gb_i2c_device {
diff --git a/drivers/staging/greybus/interface.c b/drivers/staging/greybus/interface.c
index d7b5b89a2f40..67dbe6fda9a1 100644
--- a/drivers/staging/greybus/interface.c
+++ b/drivers/staging/greybus/interface.c
@@ -7,8 +7,8 @@
  */
 
 #include <linux/delay.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "greybus_trace.h"
 
 #define GB_INTERFACE_MODE_SWITCH_TIMEOUT	2000
diff --git a/drivers/staging/greybus/light.c b/drivers/staging/greybus/light.c
index 010ae1e9c7fb..b3b1b253d112 100644
--- a/drivers/staging/greybus/light.c
+++ b/drivers/staging/greybus/light.c
@@ -11,11 +11,9 @@
 #include <linux/led-class-flash.h>
 #include <linux/module.h>
 #include <linux/slab.h>
+#include <linux/greybus.h>
 #include <media/v4l2-flash-led-class.h>
 
-#include "greybus.h"
-#include "greybus_protocols.h"
-
 #define NAMES_MAX	32
 
 struct gb_channel {
diff --git a/drivers/staging/greybus/log.c b/drivers/staging/greybus/log.c
index 4f1f161ff11c..971f36dccac6 100644
--- a/drivers/staging/greybus/log.c
+++ b/drivers/staging/greybus/log.c
@@ -9,8 +9,7 @@
 #include <linux/slab.h>
 #include <linux/sizes.h>
 #include <linux/uaccess.h>
-
-#include "greybus.h"
+#include <linux/greybus.h>
 
 struct gb_log {
 	struct gb_connection *connection;
diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index b0ab0eed5c18..583d9708a191 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -25,12 +25,9 @@
 #include <linux/workqueue.h>
 #include <linux/atomic.h>
 #include <linux/pm_runtime.h>
-
+#include <linux/greybus.h>
 #include <asm/div64.h>
 
-#include "greybus.h"
-#include "connection.h"
-
 #define NSEC_PER_DAY 86400000000000ULL
 
 struct gb_loopback_stats {
diff --git a/drivers/staging/greybus/manifest.c b/drivers/staging/greybus/manifest.c
index 4ebbba52b07c..dd7040697bde 100644
--- a/drivers/staging/greybus/manifest.c
+++ b/drivers/staging/greybus/manifest.c
@@ -6,7 +6,7 @@
  * Copyright 2014-2015 Linaro Ltd.
  */
 
-#include "greybus.h"
+#include <linux/greybus.h>
 
 static const char *get_descriptor_type_string(u8 type)
 {
diff --git a/drivers/staging/greybus/module.c b/drivers/staging/greybus/module.c
index b251a53d0e8e..36f77f9e1d74 100644
--- a/drivers/staging/greybus/module.c
+++ b/drivers/staging/greybus/module.c
@@ -6,7 +6,7 @@
  * Copyright 2016 Linaro Ltd.
  */
 
-#include "greybus.h"
+#include <linux/greybus.h>
 #include "greybus_trace.h"
 
 static ssize_t eject_store(struct device *dev,
diff --git a/drivers/staging/greybus/operation.c b/drivers/staging/greybus/operation.c
index fe268f7b63ed..8459e9bc0749 100644
--- a/drivers/staging/greybus/operation.c
+++ b/drivers/staging/greybus/operation.c
@@ -12,8 +12,8 @@
 #include <linux/sched.h>
 #include <linux/wait.h>
 #include <linux/workqueue.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "greybus_trace.h"
 
 static struct kmem_cache *gb_operation_cache;
diff --git a/drivers/staging/greybus/power_supply.c b/drivers/staging/greybus/power_supply.c
index 34b40a409ea3..ec96f28887f9 100644
--- a/drivers/staging/greybus/power_supply.c
+++ b/drivers/staging/greybus/power_supply.c
@@ -10,8 +10,7 @@
 #include <linux/module.h>
 #include <linux/power_supply.h>
 #include <linux/slab.h>
-
-#include "greybus.h"
+#include <linux/greybus.h>
 
 #define PROP_MAX 32
 
diff --git a/drivers/staging/greybus/pwm.c b/drivers/staging/greybus/pwm.c
index 4a6d394b6c44..891a6a672378 100644
--- a/drivers/staging/greybus/pwm.c
+++ b/drivers/staging/greybus/pwm.c
@@ -10,8 +10,8 @@
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/pwm.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "gbphy.h"
 
 struct gb_pwm_chip {
diff --git a/drivers/staging/greybus/raw.c b/drivers/staging/greybus/raw.c
index 838acbe84ca0..64a17dfe3b6e 100644
--- a/drivers/staging/greybus/raw.c
+++ b/drivers/staging/greybus/raw.c
@@ -13,8 +13,7 @@
 #include <linux/fs.h>
 #include <linux/idr.h>
 #include <linux/uaccess.h>
-
-#include "greybus.h"
+#include <linux/greybus.h>
 
 struct gb_raw {
 	struct gb_connection *connection;
diff --git a/drivers/staging/greybus/sdio.c b/drivers/staging/greybus/sdio.c
index a097a8916b3b..68c5718be827 100644
--- a/drivers/staging/greybus/sdio.c
+++ b/drivers/staging/greybus/sdio.c
@@ -12,8 +12,8 @@
 #include <linux/mmc/mmc.h>
 #include <linux/scatterlist.h>
 #include <linux/workqueue.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "gbphy.h"
 
 struct gb_sdio_host {
diff --git a/drivers/staging/greybus/spi.c b/drivers/staging/greybus/spi.c
index 47d896992b35..68e8d272db6d 100644
--- a/drivers/staging/greybus/spi.c
+++ b/drivers/staging/greybus/spi.c
@@ -7,8 +7,8 @@
  */
 
 #include <linux/module.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "gbphy.h"
 #include "spilib.h"
 
diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
index 2e07c6b41334..fc27c52de74a 100644
--- a/drivers/staging/greybus/spilib.c
+++ b/drivers/staging/greybus/spilib.c
@@ -10,9 +10,9 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/slab.h>
+#include <linux/greybus.h>
 #include <linux/spi/spi.h>
 
-#include "greybus.h"
 #include "spilib.h"
 
 struct gb_spilib {
diff --git a/drivers/staging/greybus/svc.c b/drivers/staging/greybus/svc.c
index 05bc45287b87..ce7740ef449b 100644
--- a/drivers/staging/greybus/svc.c
+++ b/drivers/staging/greybus/svc.c
@@ -8,8 +8,7 @@
 
 #include <linux/debugfs.h>
 #include <linux/workqueue.h>
-
-#include "greybus.h"
+#include <linux/greybus.h>
 
 #define SVC_INTF_EJECT_TIMEOUT		9000
 #define SVC_INTF_ACTIVATE_TIMEOUT	6000
diff --git a/drivers/staging/greybus/svc_watchdog.c b/drivers/staging/greybus/svc_watchdog.c
index 7868ad8211c5..b6b1682c19c4 100644
--- a/drivers/staging/greybus/svc_watchdog.c
+++ b/drivers/staging/greybus/svc_watchdog.c
@@ -8,7 +8,7 @@
 #include <linux/delay.h>
 #include <linux/suspend.h>
 #include <linux/workqueue.h>
-#include "greybus.h"
+#include <linux/greybus.h>
 
 #define SVC_WATCHDOG_PERIOD	(2 * HZ)
 
diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index b3bffe91ae99..55c51143bb09 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -28,8 +28,8 @@
 #include <linux/kfifo.h>
 #include <linux/workqueue.h>
 #include <linux/completion.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "gbphy.h"
 
 #define GB_NUM_MINORS	16	/* 16 is more than enough */
diff --git a/drivers/staging/greybus/usb.c b/drivers/staging/greybus/usb.c
index 1c246c73a085..8e9d9d59a357 100644
--- a/drivers/staging/greybus/usb.c
+++ b/drivers/staging/greybus/usb.c
@@ -10,8 +10,8 @@
 #include <linux/slab.h>
 #include <linux/usb.h>
 #include <linux/usb/hcd.h>
+#include <linux/greybus.h>
 
-#include "greybus.h"
 #include "gbphy.h"
 
 /* Greybus USB request types */
diff --git a/drivers/staging/greybus/vibrator.c b/drivers/staging/greybus/vibrator.c
index 3e5dedeacd5c..0e2b188e5ca3 100644
--- a/drivers/staging/greybus/vibrator.c
+++ b/drivers/staging/greybus/vibrator.c
@@ -13,8 +13,7 @@
 #include <linux/kdev_t.h>
 #include <linux/idr.h>
 #include <linux/pm_runtime.h>
-
-#include "greybus.h"
+#include <linux/greybus.h>
 
 struct gb_vibrator_device {
 	struct gb_connection	*connection;
diff --git a/drivers/staging/greybus/greybus.h b/include/linux/greybus.h
similarity index 89%
rename from drivers/staging/greybus/greybus.h
rename to include/linux/greybus.h
index f0488ffff93e..18c0fb958b74 100644
--- a/drivers/staging/greybus/greybus.h
+++ b/include/linux/greybus.h
@@ -20,18 +20,18 @@
 #include <linux/pm_runtime.h>
 #include <linux/idr.h>
 
-#include "greybus_id.h"
-#include "greybus_manifest.h"
-#include "greybus_protocols.h"
-#include "manifest.h"
-#include "hd.h"
-#include "svc.h"
-#include "control.h"
-#include "module.h"
-#include "interface.h"
-#include "bundle.h"
-#include "connection.h"
-#include "operation.h"
+#include <linux/greybus/greybus_id.h>
+#include <linux/greybus/greybus_manifest.h>
+#include <linux/greybus/greybus_protocols.h>
+#include <linux/greybus/manifest.h>
+#include <linux/greybus/hd.h>
+#include <linux/greybus/svc.h>
+#include <linux/greybus/control.h>
+#include <linux/greybus/module.h>
+#include <linux/greybus/interface.h>
+#include <linux/greybus/bundle.h>
+#include <linux/greybus/connection.h>
+#include <linux/greybus/operation.h>
 
 /* Matches up with the Greybus Protocol specification document */
 #define GREYBUS_VERSION_MAJOR	0x00
diff --git a/drivers/staging/greybus/bundle.h b/include/linux/greybus/bundle.h
similarity index 100%
rename from drivers/staging/greybus/bundle.h
rename to include/linux/greybus/bundle.h
diff --git a/drivers/staging/greybus/connection.h b/include/linux/greybus/connection.h
similarity index 100%
rename from drivers/staging/greybus/connection.h
rename to include/linux/greybus/connection.h
diff --git a/drivers/staging/greybus/control.h b/include/linux/greybus/control.h
similarity index 100%
rename from drivers/staging/greybus/control.h
rename to include/linux/greybus/control.h
diff --git a/drivers/staging/greybus/greybus_id.h b/include/linux/greybus/greybus_id.h
similarity index 100%
rename from drivers/staging/greybus/greybus_id.h
rename to include/linux/greybus/greybus_id.h
diff --git a/drivers/staging/greybus/greybus_manifest.h b/include/linux/greybus/greybus_manifest.h
similarity index 100%
rename from drivers/staging/greybus/greybus_manifest.h
rename to include/linux/greybus/greybus_manifest.h
diff --git a/drivers/staging/greybus/greybus_protocols.h b/include/linux/greybus/greybus_protocols.h
similarity index 100%
rename from drivers/staging/greybus/greybus_protocols.h
rename to include/linux/greybus/greybus_protocols.h
diff --git a/drivers/staging/greybus/hd.h b/include/linux/greybus/hd.h
similarity index 100%
rename from drivers/staging/greybus/hd.h
rename to include/linux/greybus/hd.h
diff --git a/drivers/staging/greybus/interface.h b/include/linux/greybus/interface.h
similarity index 100%
rename from drivers/staging/greybus/interface.h
rename to include/linux/greybus/interface.h
diff --git a/drivers/staging/greybus/manifest.h b/include/linux/greybus/manifest.h
similarity index 100%
rename from drivers/staging/greybus/manifest.h
rename to include/linux/greybus/manifest.h
diff --git a/drivers/staging/greybus/module.h b/include/linux/greybus/module.h
similarity index 100%
rename from drivers/staging/greybus/module.h
rename to include/linux/greybus/module.h
diff --git a/drivers/staging/greybus/operation.h b/include/linux/greybus/operation.h
similarity index 100%
rename from drivers/staging/greybus/operation.h
rename to include/linux/greybus/operation.h
diff --git a/drivers/staging/greybus/svc.h b/include/linux/greybus/svc.h
similarity index 100%
rename from drivers/staging/greybus/svc.h
rename to include/linux/greybus/svc.h
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
