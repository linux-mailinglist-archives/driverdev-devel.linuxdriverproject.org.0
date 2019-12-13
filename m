Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF1411E330
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:06:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60DFE88B98;
	Fri, 13 Dec 2019 12:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HDqg7WKPOUxC; Fri, 13 Dec 2019 12:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F31288B6B;
	Fri, 13 Dec 2019 12:06:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43F5B1BF2AE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2215187297
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H3XxucT4L6O7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1D0A872D8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
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
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ZAfbAIgfLJsi/kkpJHOSk50+UKExQ9DlB77hIRjpQFX1d7ryRrYf4L+NhBuNLRHBiCPruhdj7J
 nDZdHw78SsF7mRckSsKhkOiKHCLXQNUqszpGf77jOwIPHT4Ks4QYIZqmSKnAfFpygWQvqxErno
 SHHxoqlsiShXA6aE6N3Z2DqBFt+rHJ9eDfG9XLNE7Uuenp2A4lTW3juGQ8ZXVaSyNj2LsFef0M
 ePTTvOLBc0SPrvNBtEyPowde9aN3TvK/FlBzEByiqLrBuZKrG1tDRxpRT35znKTTtYFd8L/+xM
 lWk=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="58898041"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:15 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:14 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:13 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 7/9] staging: most: move core files out of the staging
 area
Date: Fri, 13 Dec 2019 13:04:20 +0100
Message-ID: <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
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

 drivers/Kconfig                                |  1 +
 drivers/Makefile                               |  1 +
 drivers/most/Kconfig                           | 15 +++++++++++++++
 drivers/most/Makefile                          |  4 ++++
 drivers/{staging => }/most/configfs.c          |  2 +-
 drivers/{staging => }/most/core.c              |  2 +-
 drivers/staging/most/Kconfig                   |  6 +++---
 drivers/staging/most/Makefile                  |  5 -----
 drivers/staging/most/cdev/cdev.c               |  2 +-
 drivers/staging/most/dim2/dim2.c               |  2 +-
 drivers/staging/most/i2c/i2c.c                 |  2 +-
 drivers/staging/most/net/net.c                 |  2 +-
 drivers/staging/most/sound/sound.c             |  2 +-
 drivers/staging/most/usb/usb.c                 |  2 +-
 drivers/staging/most/video/video.c             |  2 +-
 {drivers/staging/most => include/linux}/most.h |  0
 16 files changed, 33 insertions(+), 17 deletions(-)
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
index aaef17c..0e1dcbc 100644
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
index 9818f6c..77b0855 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/most/configfs.c
@@ -10,7 +10,7 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/configfs.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define MAX_STRING_SIZE 80
 
diff --git a/drivers/staging/most/core.c b/drivers/most/core.c
similarity index 99%
rename from drivers/staging/most/core.c
rename to drivers/most/core.c
index af542ed..8c05e0d 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/most/core.c
@@ -21,7 +21,7 @@
 #include <linux/kthread.h>
 #include <linux/dma-mapping.h>
 #include <linux/idr.h>
-#include <most/most.h>
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
index 85ea5a4..3c446bb 100644
--- a/drivers/staging/most/Makefile
+++ b/drivers/staging/most/Makefile
@@ -1,9 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_MOST) += most_core.o
-most_core-y := core.o
-most_core-y += configfs.o
-ccflags-y += -I $(srctree)/drivers/staging/
-
 obj-$(CONFIG_MOST_CDEV)	+= cdev/
 obj-$(CONFIG_MOST_NET)	+= net/
 obj-$(CONFIG_MOST_SOUND)	+= sound/
diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 59f346d..cc1e3de 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -16,7 +16,7 @@
 #include <linux/kfifo.h>
 #include <linux/uaccess.h>
 #include <linux/idr.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define CHRDEV_REGION_SIZE 50
 
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 9eb10fc..10ff0cc 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -21,7 +21,7 @@
 #include <linux/sched.h>
 #include <linux/kthread.h>
 
-#include <most/most.h>
+#include <linux/most.h>
 #include "hal.h"
 #include "errors.h"
 #include "sysfs.h"
diff --git a/drivers/staging/most/i2c/i2c.c b/drivers/staging/most/i2c/i2c.c
index d07719c..d4a9cd8 100644
--- a/drivers/staging/most/i2c/i2c.c
+++ b/drivers/staging/most/i2c/i2c.c
@@ -14,7 +14,7 @@
 #include <linux/interrupt.h>
 #include <linux/err.h>
 
-#include <most/most.h>
+#include <linux/most.h>
 
 enum { CH_RX, CH_TX, NUM_CHANNELS };
 
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index db42732..d6d5b2a 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -15,7 +15,7 @@
 #include <linux/list.h>
 #include <linux/wait.h>
 #include <linux/kobject.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define MEP_HDR_LEN 8
 #define MDP_HDR_LEN 16
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 23baf4b..1527f41 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -17,7 +17,7 @@
 #include <sound/pcm_params.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define DRIVER_NAME "sound"
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 491b38e..4c11fad 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -23,7 +23,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/etherdevice.h>
 #include <linux/uaccess.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define USB_MTU			512
 #define NO_ISOCHRONOUS_URB	0
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 9e9e45a..ce3a44a 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -21,7 +21,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
 
-#include <most/most.h>
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
