Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86971130376
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jan 2020 17:21:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 23A95204C7;
	Sat,  4 Jan 2020 16:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKpvwboiV7LO; Sat,  4 Jan 2020 16:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 39835203BE;
	Sat,  4 Jan 2020 16:21:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26D291BF48D
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2306786506
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:21:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cpirPYvkIjSF for <devel@linuxdriverproject.org>;
 Sat,  4 Jan 2020 16:21:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from condef-10.nifty.com (condef-10.nifty.com [202.248.20.75])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A9245817FB
 for <devel@driverdev.osuosl.org>; Sat,  4 Jan 2020 16:21:41 +0000 (UTC)
Received: from conuserg-07.nifty.com ([10.126.8.70])by condef-10.nifty.com
 with ESMTP id 004GJZNs014770
 for <devel@driverdev.osuosl.org>; Sun, 5 Jan 2020 01:19:35 +0900
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 004GJ8oP011517;
 Sun, 5 Jan 2020 01:19:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 004GJ8oP011517
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578154749;
 bh=zePdzdwBtHIGogzGwb31GcCJQDH95pGUnC9jUQxS7HM=;
 h=From:To:Cc:Subject:Date:From;
 b=byknvfZDG0lGsRXOdRznn+EoyEpsq8f5gVmFqzCl9i/DWD1L/UtG2qOxmD7fV7J9o
 ndlrsiPxxfLchakuSqHOJeSX61UoIJqfALKvUtTFrQMCKlnrheWjX/LFwUBsjyV/IW
 5gDp9vJxXWF3EHbAhmGPSZ1PYbwgT70kYGy1fha4cDXAS14ml2FMJ1BEgDm1yiwAry
 3E80VOhlMqw9Rt8M0Rf0YrW7ER28F0iGmuMAu5ahJmUYiGu+Yzse263s9oLdQTmw9C
 nqtPPuf0v9MWbNuxPevueAtGujd2fy1ZRYy+71G4y5dcI/oJSxlXoS+DWJuVTu+vAs
 yoHwlCl228B6Q==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: remove header include path to drivers/staging
Date: Sun,  5 Jan 2020 01:18:27 +0900
Message-Id: <20200104161827.18960-1-masahiroy@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Masahiro Yamada <masahiroy@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is no need to add "ccflags-y += -I $(srctree)/drivers/staging"
just for including <most/core.h>.

Use the #include "..." directive with the correct relative path.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

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
index f880147c82fd..e2ade8eff2d9 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -16,7 +16,8 @@
 #include <linux/kfifo.h>
 #include <linux/uaccess.h>
 #include <linux/idr.h>
-#include "most/core.h"
+
+#include "../core.h"
 
 #define CHRDEV_REGION_SIZE 50
 
diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 34a9fb53985c..76c9485cb470 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -10,7 +10,8 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/configfs.h>
-#include <most/core.h>
+
+#include "core.h"
 
 struct mdev_link {
 	struct config_item item;
diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 51a6b41d5b82..7da0db64ffec 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -21,7 +21,8 @@
 #include <linux/kthread.h>
 #include <linux/dma-mapping.h>
 #include <linux/idr.h>
-#include <most/core.h>
+
+#include "core.h"
 
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
index 64c979155a49..b96faab08b38 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -21,7 +21,7 @@
 #include <linux/sched.h>
 #include <linux/kthread.h>
 
-#include "most/core.h"
+#include "../core.h"
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
index 4a4fc1005932..0418f77d4007 100644
--- a/drivers/staging/most/i2c/i2c.c
+++ b/drivers/staging/most/i2c/i2c.c
@@ -14,7 +14,7 @@
 #include <linux/interrupt.h>
 #include <linux/err.h>
 
-#include "most/core.h"
+#include "../core.h"
 
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
index 6cab1bb8956e..f4c083c3d1f4 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -15,7 +15,8 @@
 #include <linux/list.h>
 #include <linux/wait.h>
 #include <linux/kobject.h>
-#include "most/core.h"
+
+#include "../core.h"
 
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
index 723d0bd1cc21..4f77ef6f459d 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -17,7 +17,8 @@
 #include <sound/pcm_params.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
-#include <most/core.h>
+
+#include "../core.h"
 
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
index 360cb5b7a10b..d471c675f423 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -23,7 +23,8 @@
 #include <linux/dma-mapping.h>
 #include <linux/etherdevice.h>
 #include <linux/uaccess.h>
-#include "most/core.h"
+
+#include "../core.h"
 
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
index 10c1ef7e3a3e..f3d23cc8e19b 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -21,7 +21,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
 
-#include "most/core.h"
+#include "../core.h"
 
 #define V4L2_CMP_MAX_INPUT  1
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
