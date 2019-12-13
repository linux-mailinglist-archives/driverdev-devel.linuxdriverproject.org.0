Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE44111E328
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8528388B6B;
	Fri, 13 Dec 2019 12:05:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EVXeu8XV4MSw; Fri, 13 Dec 2019 12:05:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 246B088B61;
	Fri, 13 Dec 2019 12:05:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C6BC1BF2AE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 104C088514
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRb1JEB6uOlg
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1671A8843F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:08 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: IO6zwhwDEv2XHn+iCYUEwCVKxWJlxLk5NdDvSQnZPfDQGuOQyK9abScjaX1maMjaexhZk+D5hL
 E/xtjpQ2Yidl2aWLbWSd/PP5kidZ4Vosg91rcLvgWfcClefN1R6eN1uztuyVlM1ZihOQ/mzb6j
 Jcr2J21HH30pUyTqsq4apZCaeXnvOizTC/brYbjpkmpXG7EgIZFuLrUWYnRMegvG54wQyjP1Pq
 pwWAQbOhTfxqwqEnk0/JOkhEt5f4/GA/Lehl/EEi72GKsX8Ve03qlP3yEytX7JYVdH0mWUOGJ7
 0nw=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="60276007"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:07 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:07 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:06 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 1/9] staging: most: rename core.h to most.h
Date: Fri, 13 Dec 2019 13:04:14 +0100
Message-ID: <1576238662-16512-2-git-send-email-christian.gromm@microchip.com>
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

This patch renames the core header file core.h to most.h. The intention
behind this is to have a meaningful name once this file is moved to the
/include/linux directory.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:

 drivers/staging/most/cdev/cdev.c        | 2 +-
 drivers/staging/most/configfs.c         | 2 +-
 drivers/staging/most/core.c             | 2 +-
 drivers/staging/most/dim2/dim2.c        | 2 +-
 drivers/staging/most/i2c/i2c.c          | 2 +-
 drivers/staging/most/{core.h => most.h} | 0
 drivers/staging/most/net/net.c          | 2 +-
 drivers/staging/most/sound/sound.c      | 2 +-
 drivers/staging/most/usb/usb.c          | 2 +-
 drivers/staging/most/video/video.c      | 2 +-
 10 files changed, 9 insertions(+), 9 deletions(-)
 rename drivers/staging/most/{core.h => most.h} (100%)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index f880147..df4cb5a 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -16,7 +16,7 @@
 #include <linux/kfifo.h>
 #include <linux/uaccess.h>
 #include <linux/idr.h>
-#include "most/core.h"
+#include "most/most.h"
 
 #define CHRDEV_REGION_SIZE 50
 
diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 34a9fb5..e17d846 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -10,7 +10,7 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/configfs.h>
-#include <most/core.h>
+#include <most/most.h>
 
 struct mdev_link {
 	struct config_item item;
diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 51a6b41..e32030c 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -21,7 +21,7 @@
 #include <linux/kthread.h>
 #include <linux/dma-mapping.h>
 #include <linux/idr.h>
-#include <most/core.h>
+#include <most/most.h>
 
 #define MAX_CHANNELS	64
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 64c9791..e15e847 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -21,7 +21,7 @@
 #include <linux/sched.h>
 #include <linux/kthread.h>
 
-#include "most/core.h"
+#include "most/most.h"
 #include "hal.h"
 #include "errors.h"
 #include "sysfs.h"
diff --git a/drivers/staging/most/i2c/i2c.c b/drivers/staging/most/i2c/i2c.c
index 4a4fc10..d4606ac 100644
--- a/drivers/staging/most/i2c/i2c.c
+++ b/drivers/staging/most/i2c/i2c.c
@@ -14,7 +14,7 @@
 #include <linux/interrupt.h>
 #include <linux/err.h>
 
-#include "most/core.h"
+#include "most/most.h"
 
 enum { CH_RX, CH_TX, NUM_CHANNELS };
 
diff --git a/drivers/staging/most/core.h b/drivers/staging/most/most.h
similarity index 100%
rename from drivers/staging/most/core.h
rename to drivers/staging/most/most.h
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index 6cab1bb..34d93c4 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -15,7 +15,7 @@
 #include <linux/list.h>
 #include <linux/wait.h>
 #include <linux/kobject.h>
-#include "most/core.h"
+#include "most/most.h"
 
 #define MEP_HDR_LEN 8
 #define MDP_HDR_LEN 16
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 1ccfcb8..38642b2 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -17,7 +17,7 @@
 #include <sound/pcm_params.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
-#include <most/core.h>
+#include <most/most.h>
 
 #define DRIVER_NAME "sound"
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 360cb5b..69756ca 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -23,7 +23,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/etherdevice.h>
 #include <linux/uaccess.h>
-#include "most/core.h"
+#include "most/most.h"
 
 #define USB_MTU			512
 #define NO_ISOCHRONOUS_URB	0
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 10c1ef7..b75ccc8 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -21,7 +21,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
 
-#include "most/core.h"
+#include "most/most.h"
 
 #define V4L2_CMP_MAX_INPUT  1
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
