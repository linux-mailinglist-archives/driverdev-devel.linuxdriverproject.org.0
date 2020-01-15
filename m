Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5D813C9E5
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 17:45:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE926877F1;
	Wed, 15 Jan 2020 16:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lti7aJYSDbtH; Wed, 15 Jan 2020 16:45:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F305857B2;
	Wed, 15 Jan 2020 16:45:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E25FE1BF2BF
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 16:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D8DF685E25
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 16:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EFFqRfqmAaCN for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 16:45:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com [210.131.2.76])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6D27D84A6C
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 16:45:22 +0000 (UTC)
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 00FGivO6011079;
 Thu, 16 Jan 2020 01:44:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 00FGivO6011079
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579106697;
 bh=SZOkYphT7E9GHjXKlgV0QDCeNekw7U6rZwFuYSvNizY=;
 h=From:To:Cc:Subject:Date:From;
 b=lx0ln1tP6OWFky+GojsB/NB82j+COpWI/RRYP8E8JvKhGC0+W3VmISGmKk0JzRu20
 6T5YjGFgNyG/mUf6BInQa2RW84MR/ix0cDo0fv9sN/IHYvDZuVnIDESalqMhOIGgcK
 YUzSoUmhVnwIE9KSNOsy/7h3rp2Y9jr9D62IKYFQCxRgSKgO36Q09hqtjEtJvDsvYJ
 n5AfMXRtb1cIVxujBoqX0bm8NJfXTZV+hnjHfD6CjU2dhOJLn+JgdvkATwbyIAI5cd
 J90vyX2mxOmWpHG3ge+atVdTS0YOxaXG5WpOygW17cpakQZrkaSWRmrLKUWefCcRlk
 qizmzh+kUmj2A==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: most: remove header include path to
 drivers/staging
Date: Thu, 16 Jan 2020 01:44:51 +0900
Message-Id: <20200115164451.13203-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
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
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is no need to add "ccflags-y += -I $(srctree)/drivers/staging"
just for including <most/most.h>.

Use the #include "..." directive with the correct relative path.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
 - rebase on linux-next

 drivers/staging/most/Makefile       | 1 -
 drivers/staging/most/cdev/Makefile  | 1 -
 drivers/staging/most/cdev/cdev.c    | 3 ++-
 drivers/staging/most/configfs.c     | 3 ++-
 drivers/staging/most/core.c         | 3 ++-
 drivers/staging/most/dim2/Makefile  | 1 -
 drivers/staging/most/dim2/dim2.c    | 2 +-
 drivers/staging/most/i2c/Makefile   | 1 -
 drivers/staging/most/i2c/i2c.c      | 2 +-
 drivers/staging/most/net/Makefile   | 1 -
 drivers/staging/most/net/net.c      | 3 ++-
 drivers/staging/most/sound/Makefile | 1 -
 drivers/staging/most/sound/sound.c  | 3 ++-
 drivers/staging/most/usb/Makefile   | 1 -
 drivers/staging/most/usb/usb.c      | 3 ++-
 drivers/staging/most/video/Makefile | 1 -
 drivers/staging/most/video/video.c  | 2 +-
 17 files changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/most/Makefile b/drivers/staging/most/Makefile
index 85ea5a434ced..20a99ecb37c4 100644
--- a/drivers/staging/most/Makefile
+++ b/drivers/staging/most/Makefile
@@ -2,7 +2,6 @@
 obj-$(CONFIG_MOST) += most_core.o
 most_core-y := core.o
 most_core-y += configfs.o
-ccflags-y += -I $(srctree)/drivers/staging/
 
 obj-$(CONFIG_MOST_CDEV)	+= cdev/
 obj-$(CONFIG_MOST_NET)	+= net/
diff --git a/drivers/staging/most/cdev/Makefile b/drivers/staging/most/cdev/Makefile
index 9f4a8b8c9c27..ef90cd71994a 100644
--- a/drivers/staging/most/cdev/Makefile
+++ b/drivers/staging/most/cdev/Makefile
@@ -2,4 +2,3 @@
 obj-$(CONFIG_MOST_CDEV) += most_cdev.o
 
 most_cdev-objs := cdev.o
-ccflags-y += -I $(srctree)/drivers/staging/
diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 59f346d1f4af..71943d17f825 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -16,7 +16,8 @@
 #include <linux/kfifo.h>
 #include <linux/uaccess.h>
 #include <linux/idr.h>
-#include <most/most.h>
+
+#include "../most.h"
 
 #define CHRDEV_REGION_SIZE 50
 
diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 9818f6c8b22a..034ab96ef69e 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -10,7 +10,8 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/configfs.h>
-#include <most/most.h>
+
+#include "most.h"
 
 #define MAX_STRING_SIZE 80
 
diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index af542ed6c7f0..4958921f3bb3 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -21,7 +21,8 @@
 #include <linux/kthread.h>
 #include <linux/dma-mapping.h>
 #include <linux/idr.h>
-#include <most/most.h>
+
+#include "most.h"
 
 #define MAX_CHANNELS	64
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/dim2/Makefile b/drivers/staging/most/dim2/Makefile
index 116f04d69244..861adacf6c72 100644
--- a/drivers/staging/most/dim2/Makefile
+++ b/drivers/staging/most/dim2/Makefile
@@ -2,4 +2,3 @@
 obj-$(CONFIG_MOST_DIM2) += most_dim2.o
 
 most_dim2-objs := dim2.o hal.o sysfs.o
-ccflags-y += -I $(srctree)/drivers/staging/
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 9eb10fc0903e..15c6aa8fa1ea 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -21,7 +21,7 @@
 #include <linux/sched.h>
 #include <linux/kthread.h>
 
-#include <most/most.h>
+#include "../most.h"
 #include "hal.h"
 #include "errors.h"
 #include "sysfs.h"
diff --git a/drivers/staging/most/i2c/Makefile b/drivers/staging/most/i2c/Makefile
index 2b3769dc19e7..71099dd0f85b 100644
--- a/drivers/staging/most/i2c/Makefile
+++ b/drivers/staging/most/i2c/Makefile
@@ -2,4 +2,3 @@
 obj-$(CONFIG_MOST_I2C) += most_i2c.o
 
 most_i2c-objs := i2c.o
-ccflags-y += -I $(srctree)/drivers/staging/
diff --git a/drivers/staging/most/i2c/i2c.c b/drivers/staging/most/i2c/i2c.c
index d07719c38fc9..2980f7065846 100644
--- a/drivers/staging/most/i2c/i2c.c
+++ b/drivers/staging/most/i2c/i2c.c
@@ -14,7 +14,7 @@
 #include <linux/interrupt.h>
 #include <linux/err.h>
 
-#include <most/most.h>
+#include "../most.h"
 
 enum { CH_RX, CH_TX, NUM_CHANNELS };
 
diff --git a/drivers/staging/most/net/Makefile b/drivers/staging/most/net/Makefile
index f0ac64dee71b..1582c97eb204 100644
--- a/drivers/staging/most/net/Makefile
+++ b/drivers/staging/most/net/Makefile
@@ -2,4 +2,3 @@
 obj-$(CONFIG_MOST_NET) += most_net.o
 
 most_net-objs := net.o
-ccflags-y += -I $(srctree)/drivers/staging/
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index db4273256ce8..8218c9a06cb5 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -15,7 +15,8 @@
 #include <linux/list.h>
 #include <linux/wait.h>
 #include <linux/kobject.h>
-#include <most/most.h>
+
+#include "../most.h"
 
 #define MEP_HDR_LEN 8
 #define MDP_HDR_LEN 16
diff --git a/drivers/staging/most/sound/Makefile b/drivers/staging/most/sound/Makefile
index a3d086c6ca70..f0cd9d8d213e 100644
--- a/drivers/staging/most/sound/Makefile
+++ b/drivers/staging/most/sound/Makefile
@@ -2,4 +2,3 @@
 obj-$(CONFIG_MOST_SOUND) += most_sound.o
 
 most_sound-objs := sound.o
-ccflags-y += -I $(srctree)/drivers/staging/
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 23baf4bd7c12..44cf2334834f 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -17,7 +17,8 @@
 #include <sound/pcm_params.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
-#include <most/most.h>
+
+#include "../most.h"
 
 #define DRIVER_NAME "sound"
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/usb/Makefile b/drivers/staging/most/usb/Makefile
index 83cf2ead7122..c2b207339aec 100644
--- a/drivers/staging/most/usb/Makefile
+++ b/drivers/staging/most/usb/Makefile
@@ -2,4 +2,3 @@
 obj-$(CONFIG_MOST_USB) += most_usb.o
 
 most_usb-objs := usb.o
-ccflags-y += -I $(srctree)/drivers/staging/
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 491b38e91e9d..35217ca65cbb 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -23,7 +23,8 @@
 #include <linux/dma-mapping.h>
 #include <linux/etherdevice.h>
 #include <linux/uaccess.h>
-#include <most/most.h>
+
+#include "../most.h"
 
 #define USB_MTU			512
 #define NO_ISOCHRONOUS_URB	0
diff --git a/drivers/staging/most/video/Makefile b/drivers/staging/most/video/Makefile
index 2d857d3cbcc8..856175fec8b6 100644
--- a/drivers/staging/most/video/Makefile
+++ b/drivers/staging/most/video/Makefile
@@ -2,4 +2,3 @@
 obj-$(CONFIG_MOST_VIDEO) += most_video.o
 
 most_video-objs := video.o
-ccflags-y += -I $(srctree)/drivers/staging/
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 9e9e45ac386e..d32ae49d617b 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -21,7 +21,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
 
-#include <most/most.h>
+#include "../most.h"
 
 #define V4L2_CMP_MAX_INPUT  1
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
