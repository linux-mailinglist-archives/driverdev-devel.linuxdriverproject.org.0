Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD1B17FA21
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 14:03:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A44E2078B;
	Tue, 10 Mar 2020 13:03:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wTm1N9AZiSmO; Tue, 10 Mar 2020 13:03:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3CAA9214D2;
	Tue, 10 Mar 2020 13:03:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9B701BF29F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFA3D20796
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rM03erzBNkDK
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id E46C52078B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:51 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: eiChWrzN7xKATIXdxSj8hdeAPr/zv/r1o7GjrA++b8/IJNH6RZfztGDT1dzcEWZtk5xQWSexqI
 XqHUavtqRSfmFLQ4UqtxjJMNKhRJ34MtxpDhrTtM/3Dt0CNzIaEJEb3GRj6ufVHQxaP/jyU6dk
 qo7JjCxxLbmTmFqx3fVHTspUa4C2nDXVZmy7pjB9BnUpT2T8eUazzzE73olDzpYIeTBVEYRkDD
 1ehAx4rUYAviLhBCv9/rKn7JFNPqHf71BB2I56ZAFdt9U0LPndSuV+9G2LKD15sGhR8hzF3T/i
 ikc=
X-IronPort-AV: E=Sophos;i="5.70,537,1574146800"; d="scan'208";a="68285739"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Mar 2020 06:02:47 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Mar 2020 06:02:43 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Mar 2020 06:02:45 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH v5 1/3] staging: most: move core files out of the
 staging area
Date: Tue, 10 Mar 2020 14:02:40 +0100
Message-ID: <1583845362-26707-2-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
References: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch moves the core module to the /drivers/most directory
and makes all necessary changes in order to not break the build.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
v3:
v4:
v5: rebased and adapted

 drivers/Kconfig                                |  1 +
 drivers/Makefile                               |  1 +
 drivers/most/Kconfig                           | 15 +++++++++++++++
 drivers/most/Makefile                          |  4 ++++
 drivers/{staging => }/most/configfs.c          |  3 +--
 drivers/{staging => }/most/core.c              |  3 +--
 drivers/staging/most/Kconfig                   |  6 +++---
 drivers/staging/most/Makefile                  |  3 ---
 drivers/staging/most/cdev/cdev.c               |  3 +--
 drivers/staging/most/dim2/dim2.c               |  3 +--
 drivers/staging/most/i2c/i2c.c                 |  3 +--
 drivers/staging/most/net/net.c                 |  3 +--
 drivers/staging/most/sound/sound.c             |  3 +--
 drivers/staging/most/usb/usb.c                 |  3 +--
 drivers/staging/most/video/video.c             |  3 +--
 {drivers/staging/most => include/linux}/most.h |  0
 16 files changed, 33 insertions(+), 24 deletions(-)
 create mode 100644 drivers/most/Kconfig
 create mode 100644 drivers/most/Makefile
 rename drivers/{staging => }/most/configfs.c (99%)
 rename drivers/{staging => }/most/core.c (99%)
 rename {drivers/staging/most => include/linux}/most.h (100%)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 8befa53..c739665 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -228,4 +228,5 @@ source "drivers/interconnect/Kconfig"
 
 source "drivers/counter/Kconfig"
 
+source "drivers/most/Kconfig"
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 31cf17d..7646549a 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -186,3 +186,4 @@ obj-$(CONFIG_SIOX)		+= siox/
 obj-$(CONFIG_GNSS)		+= gnss/
 obj-$(CONFIG_INTERCONNECT)	+= interconnect/
 obj-$(CONFIG_COUNTER)		+= counter/
+obj-$(CONFIG_MOST)		+= most/
diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
new file mode 100644
index 0000000..58d7999
--- /dev/null
+++ b/drivers/most/Kconfig
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0
+menuconfig MOST
+	tristate "MOST support"
+	depends on HAS_DMA && CONFIGFS_FS
+	default n
+	help
+	  Say Y here if you want to enable MOST support.
+	  This driver needs at least one additional component to enable the
+	  desired access from userspace (e.g. character devices) and one that
+	  matches the network controller's hardware interface (e.g. USB).
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called most_core.
+
+	  If in doubt, say N here.
diff --git a/drivers/most/Makefile b/drivers/most/Makefile
new file mode 100644
index 0000000..e810cd3
--- /dev/null
+++ b/drivers/most/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_MOST) += most_core.o
+most_core-y :=	core.o \
+		configfs.o
diff --git a/drivers/staging/most/configfs.c b/drivers/most/configfs.c
similarity index 99%
rename from drivers/staging/most/configfs.c
rename to drivers/most/configfs.c
index 9a96122..27b0c92 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/most/configfs.c
@@ -10,8 +10,7 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/configfs.h>
-
-#include "most.h"
+#include <linux/most.h>
 
 #define MAX_STRING_SIZE 80
 
diff --git a/drivers/staging/most/core.c b/drivers/most/core.c
similarity index 99%
rename from drivers/staging/most/core.c
rename to drivers/most/core.c
index 0c4ae69..6a59e87 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/most/core.c
@@ -20,8 +20,7 @@
 #include <linux/kthread.h>
 #include <linux/dma-mapping.h>
 #include <linux/idr.h>
-
-#include "most.h"
+#include <linux/most.h>
 
 #define MAX_CHANNELS	64
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/Kconfig b/drivers/staging/most/Kconfig
index 6262eb2..c5a99f7 100644
--- a/drivers/staging/most/Kconfig
+++ b/drivers/staging/most/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
-menuconfig MOST
+menuconfig MOST_COMPONENTS
 	tristate "MOST support"
-	depends on HAS_DMA && CONFIGFS_FS
+	depends on HAS_DMA && CONFIGFS_FS && MOST
 	default n
 	help
 	  Say Y here if you want to enable MOST support.
@@ -16,7 +16,7 @@ menuconfig MOST
 
 
 
-if MOST
+if MOST_COMPONENTS
 
 source "drivers/staging/most/cdev/Kconfig"
 
diff --git a/drivers/staging/most/Makefile b/drivers/staging/most/Makefile
index 20a99ec..a803a98 100644
--- a/drivers/staging/most/Makefile
+++ b/drivers/staging/most/Makefile
@@ -1,7 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_MOST) += most_core.o
-most_core-y := core.o
-most_core-y += configfs.o
 
 obj-$(CONFIG_MOST_CDEV)	+= cdev/
 obj-$(CONFIG_MOST_NET)	+= net/
diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 71943d1..cc1e3de 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -16,8 +16,7 @@
 #include <linux/kfifo.h>
 #include <linux/uaccess.h>
 #include <linux/idr.h>
-
-#include "../most.h"
+#include <linux/most.h>
 
 #define CHRDEV_REGION_SIZE 50
 
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 1659328..8e0f27e 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -20,8 +20,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
-
-#include "../most.h"
+#include <linux/most.h>
 #include "hal.h"
 #include "errors.h"
 #include "sysfs.h"
diff --git a/drivers/staging/most/i2c/i2c.c b/drivers/staging/most/i2c/i2c.c
index 2980f70..893a8bab 100644
--- a/drivers/staging/most/i2c/i2c.c
+++ b/drivers/staging/most/i2c/i2c.c
@@ -13,8 +13,7 @@
 #include <linux/i2c.h>
 #include <linux/interrupt.h>
 #include <linux/err.h>
-
-#include "../most.h"
+#include <linux/most.h>
 
 enum { CH_RX, CH_TX, NUM_CHANNELS };
 
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index 5547e36..830f089 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -15,8 +15,7 @@
 #include <linux/list.h>
 #include <linux/wait.h>
 #include <linux/kobject.h>
-
-#include "../most.h"
+#include <linux/most.h>
 
 #define MEP_HDR_LEN 8
 #define MDP_HDR_LEN 16
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 44cf233..1527f41 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -17,8 +17,7 @@
 #include <sound/pcm_params.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
-
-#include "../most.h"
+#include <linux/most.h>
 
 #define DRIVER_NAME "sound"
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 0bda88c..e8c5a8c 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -23,8 +23,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/etherdevice.h>
 #include <linux/uaccess.h>
-
-#include "../most.h"
+#include <linux/most.h>
 
 #define USB_MTU			512
 #define NO_ISOCHRONOUS_URB	0
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index d32ae49..20d177a 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -20,8 +20,7 @@
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
-
-#include "../most.h"
+#include <linux/most.h>
 
 #define V4L2_CMP_MAX_INPUT  1
 
diff --git a/drivers/staging/most/most.h b/include/linux/most.h
similarity index 100%
rename from drivers/staging/most/most.h
rename to include/linux/most.h
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
