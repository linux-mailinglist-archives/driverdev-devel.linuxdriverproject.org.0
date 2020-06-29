Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B60720CF6D
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:10:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05CFF893FE;
	Mon, 29 Jun 2020 15:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LlnZpVULLuFk; Mon, 29 Jun 2020 15:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A9F6893CF;
	Mon, 29 Jun 2020 15:10:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4400C1BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 40E31893C7
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WEWVRLsz+OWD for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:10:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 61066893C4
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:10:04 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id EAF57AF8F;
 Mon, 29 Jun 2020 15:10:02 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 24/47] staging: vchiq: Get rid of vchiq_util.h
Date: Mon, 29 Jun 2020 17:09:22 +0200
Message-Id: <20200629150945.10720-25-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629150945.10720-1-nsaenzjulienne@suse.de>
References: <20200629150945.10720-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The header file only provides other includes. Move the relevant includes
to their respective C files and delete it for good.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq.h |  1 -
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  1 +
 .../interface/vchiq_arm/vchiq_arm.c           |  2 ++
 .../interface/vchiq_arm/vchiq_core.c          |  9 +++++++
 .../interface/vchiq_arm/vchiq_shim.c          |  4 +--
 .../interface/vchiq_arm/vchiq_util.h          | 27 -------------------
 6 files changed, 14 insertions(+), 30 deletions(-)
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
index 25af99a0f394..211b20705e36 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
@@ -5,7 +5,6 @@
 #define VCHIQ_VCHIQ_H
 
 #include "vchiq_if.h"
-#include "vchiq_util.h"
 
 /* Do this so that we can test-build the code on non-rpi systems */
 #if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 46160139933e..5ed36d557014 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -12,6 +12,7 @@
 #include <linux/uaccess.h>
 #include <linux/mm.h>
 #include <linux/of.h>
+#include <linux/slab.h>
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
 #define TOTAL_SLOTS (VCHIQ_SLOT_ZERO_SLOTS + 2 * 32)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 355590f1e130..dddd5ea5d917 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -23,6 +23,8 @@
 #include <linux/compat.h>
 #include <linux/dma-mapping.h>
 #include <linux/rcupdate.h>
+#include <linux/delay.h>
+#include <linux/slab.h>
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
 #include "vchiq_core.h"
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index fe8ce6880e49..2382dfb914ae 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1,8 +1,17 @@
 // SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
 /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
 
+#include <linux/types.h>
+#include <linux/completion.h>
+#include <linux/mutex.h>
+#include <linux/bitops.h>
+#include <linux/kthread.h>
+#include <linux/wait.h>
+#include <linux/delay.h>
+#include <linux/slab.h>
 #include <linux/kref.h>
 #include <linux/rcupdate.h>
+#include <linux/sched/signal.h>
 
 #include "vchiq_core.h"
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index fb6f3c052e11..d8329590b5b1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -2,14 +2,14 @@
 /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
 #include <linux/module.h>
 #include <linux/types.h>
+#include <linux/slab.h>
+#include <linux/delay.h>
 
 #include "vchiq_if.h"
 #include "../vchi/vchi.h"
 #include "vchiq.h"
 #include "vchiq_core.h"
 
-#include "vchiq_util.h"
-
 struct vchi_service {
 	unsigned int handle;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
deleted file mode 100644
index dcf081079c39..000000000000
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-
-#ifndef VCHIQ_UTIL_H
-#define VCHIQ_UTIL_H
-
-#include <linux/types.h>
-#include <linux/completion.h>
-#include <linux/mutex.h>
-#include <linux/bitops.h>
-#include <linux/kthread.h>
-#include <linux/wait.h>
-#include <linux/vmalloc.h>
-#include <linux/jiffies.h>
-#include <linux/delay.h>
-#include <linux/string.h>
-#include <linux/interrupt.h>
-#include <linux/random.h>
-#include <linux/sched/signal.h>
-#include <linux/ctype.h>
-#include <linux/uaccess.h>
-#include <linux/time.h>  /* for time_t */
-#include <linux/slab.h>
-
-#include "vchiq_if.h"
-
-#endif
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
