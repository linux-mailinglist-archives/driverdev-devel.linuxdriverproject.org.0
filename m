Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FED11E32F
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:06:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E89A288B80;
	Fri, 13 Dec 2019 12:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nDQaqI1vPLsA; Fri, 13 Dec 2019 12:06:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3EF188B98;
	Fri, 13 Dec 2019 12:06:09 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 047031BF9CB
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DE6D288514
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-by0gmLG9+0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C8E58843F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
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
IronPort-SDR: bF4Op79t6UQy13J8Jylj4wIiWUrPRqZCJPTkxtHDOQ+V3lI5He0QUx5Yq+9oBWhXWL7Z+RTtqy
 MPcnMqyDUyNGx649SgyjZzeVsvDiFyyWwLRsaKP3dxD78lsoWAWBFIG4OLGKh+TH9xZX6PnPPA
 bX4JY1qVLvK0WZT5Tjz+xj+oX99aPJf2ZUXBks3kjUMISIOv+ZDeOpaAjRSwa6Zskky9wLABDX
 DpaJkMIFccnFxJW8SeTScMjfB5ILyFOpa7oN24izffJiYrymq4A0dPn+bZp5FiLe0Z7IRLHEoC
 +lk=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="60276013"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:13 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:13 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:12 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 6/9] staging: most: use angle brackets in include path
Date: Fri, 13 Dec 2019 13:04:19 +0100
Message-ID: <1576238662-16512-7-git-send-email-christian.gromm@microchip.com>
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

This patch replaces the double quotes in all include paths
with angle brackets.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:

 drivers/staging/most/cdev/cdev.c   | 2 +-
 drivers/staging/most/dim2/dim2.c   | 2 +-
 drivers/staging/most/i2c/i2c.c     | 2 +-
 drivers/staging/most/net/net.c     | 2 +-
 drivers/staging/most/usb/usb.c     | 2 +-
 drivers/staging/most/video/video.c | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 9ce2f23..59f346d 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -16,7 +16,7 @@
 #include <linux/kfifo.h>
 #include <linux/uaccess.h>
 #include <linux/idr.h>
-#include "most/most.h"
+#include <most/most.h>
 
 #define CHRDEV_REGION_SIZE 50
 
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index e15e847..9eb10fc 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -21,7 +21,7 @@
 #include <linux/sched.h>
 #include <linux/kthread.h>
 
-#include "most/most.h"
+#include <most/most.h>
 #include "hal.h"
 #include "errors.h"
 #include "sysfs.h"
diff --git a/drivers/staging/most/i2c/i2c.c b/drivers/staging/most/i2c/i2c.c
index d4606ac..d07719c 100644
--- a/drivers/staging/most/i2c/i2c.c
+++ b/drivers/staging/most/i2c/i2c.c
@@ -14,7 +14,7 @@
 #include <linux/interrupt.h>
 #include <linux/err.h>
 
-#include "most/most.h"
+#include <most/most.h>
 
 enum { CH_RX, CH_TX, NUM_CHANNELS };
 
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index e3dd337..db42732 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -15,7 +15,7 @@
 #include <linux/list.h>
 #include <linux/wait.h>
 #include <linux/kobject.h>
-#include "most/most.h"
+#include <most/most.h>
 
 #define MEP_HDR_LEN 8
 #define MDP_HDR_LEN 16
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 69756ca..491b38e 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -23,7 +23,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/etherdevice.h>
 #include <linux/uaccess.h>
-#include "most/most.h"
+#include <most/most.h>
 
 #define USB_MTU			512
 #define NO_ISOCHRONOUS_URB	0
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 0f45b04..9e9e45a 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -21,7 +21,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
 
-#include "most/most.h"
+#include <most/most.h>
 
 #define V4L2_CMP_MAX_INPUT  1
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
