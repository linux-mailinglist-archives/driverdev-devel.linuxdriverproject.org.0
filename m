Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0181C1E41B9
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 14:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1400086D27;
	Wed, 27 May 2020 12:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6OwC8DBr51vj; Wed, 27 May 2020 12:13:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F126E86D2B;
	Wed, 27 May 2020 12:13:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 176B81BF2FC
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13700882AD
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wrh7EuYpXlwt for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 12:13:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BCC6C8805D
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 12:13:47 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D415AAE2D;
 Wed, 27 May 2020 11:55:06 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC 50/50] staging: vchiq: Move vchiq.h into include directory
Date: Wed, 27 May 2020 13:53:55 +0200
Message-Id: <20200527115400.31391-51-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
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
 laurent.pinchart@ideasonboard.com, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

To make the separation clear between vchiq's header files and vchiq.h,
which is to be used by services and is the 'public' API, move it into a
dedicated includes directory.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/Makefile                         | 2 +-
 drivers/staging/vc04_services/bcm2835-audio/Makefile           | 2 +-
 drivers/staging/vc04_services/bcm2835-audio/bcm2835.h          | 2 +-
 .../{interface/vchiq_arm => include/linux/raspberrypi}/vchiq.h | 0
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h | 2 +-
 .../staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h    | 2 +-
 drivers/staging/vc04_services/vc-sm-cma/Makefile               | 1 -
 drivers/staging/vc04_services/vc-sm-cma/vc_sm.c                | 2 +-
 drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c       | 2 +-
 drivers/staging/vc04_services/vchiq-mmal/Makefile              | 1 +
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c          | 3 +--
 11 files changed, 9 insertions(+), 10 deletions(-)
 rename drivers/staging/vc04_services/{interface/vchiq_arm => include/linux/raspberrypi}/vchiq.h (100%)

diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index e32c0744e7fc..e1de39303ffe 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -14,5 +14,5 @@ obj-$(CONFIG_VIDEO_ISP_BCM2835)		+= bcm2835-isp/
 obj-$(CONFIG_BCM_VC_SM_CMA) 		+= vc-sm-cma/
 obj-$(CONFIG_BCM2835_VCHIQ_MMAL)	+= vchiq-mmal/
 
-ccflags-y += -D__VCCOREVER__=0x04000000
+ccflags-y += -I $(srctree)/$(src)/include  -D__VCCOREVER__=0x04000000
 
diff --git a/drivers/staging/vc04_services/bcm2835-audio/Makefile b/drivers/staging/vc04_services/bcm2835-audio/Makefile
index 13fa6d7d9745..d59fe4dde615 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/Makefile
+++ b/drivers/staging/vc04_services/bcm2835-audio/Makefile
@@ -2,4 +2,4 @@
 obj-$(CONFIG_SND_BCM2835)	+= snd-bcm2835.o
 snd-bcm2835-objs		:= bcm2835.o bcm2835-ctl.o bcm2835-pcm.o bcm2835-vchiq.o
 
-ccflags-y += -I $(srctree)/$(src)/.. -D__VCCOREVER__=0x04000000
+ccflags-y += -I $(srctree)/$(src)/../include -D__VCCOREVER__=0x04000000
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index ca220f5230ec..1b36475872d6 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -6,10 +6,10 @@
 
 #include <linux/device.h>
 #include <linux/wait.h>
+#include <linux/raspberrypi/vchiq.h>
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/pcm-indirect.h>
-#include "interface/vchiq_arm/vchiq.h"
 
 #define MAX_SUBSTREAMS   (8)
 #define AVAIL_SUBSTREAMS_MASK  (0xff)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h b/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
similarity index 100%
rename from drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
rename to drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 8a27f3d7217e..e67692879249 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -10,10 +10,10 @@
 #include <linux/kref.h>
 #include <linux/rcupdate.h>
 #include <linux/wait.h>
+#include <linux/raspberrypi/vchiq.h>
 
 #include "vchiq_cfg.h"
 
-#include "vchiq.h"
 
 /* Do this so that we can test-build the code on non-rpi systems */
 #if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index f285d754ad28..3653fd99d8a1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -5,7 +5,7 @@
 #define VCHIQ_IOCTLS_H
 
 #include <linux/ioctl.h>
-#include "vchiq.h"
+#include <linux/raspberrypi/vchiq.h>
 
 #define VCHIQ_IOC_MAGIC 0xc4
 #define VCHIQ_INVALID_HANDLE (~0)
diff --git a/drivers/staging/vc04_services/vc-sm-cma/Makefile b/drivers/staging/vc04_services/vc-sm-cma/Makefile
index 77d173694fbf..c92a5775c62e 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/Makefile
+++ b/drivers/staging/vc04_services/vc-sm-cma/Makefile
@@ -1,6 +1,5 @@
 ccflags-y += \
 	-I$(srctree)/$(src)/../ \
-	-I$(srctree)/$(src)/../interface/vchi \
 	-I$(srctree)/$(src)/../interface/vchiq_arm\
 	-I$(srctree)/$(src)/../include
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
index e4f7bdeef66d..cc69ce932317 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
@@ -46,9 +46,9 @@
 #include <linux/seq_file.h>
 #include <linux/syscalls.h>
 #include <linux/types.h>
+#include <linux/raspberrypi/vchiq.h>
 #include <asm/cacheflush.h>
 
-#include "vchiq.h"
 #include "vchiq_connected.h"
 #include "vc_sm_cma_vchi.h"
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 2c65416cd331..8d8eda1a8142 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -18,8 +18,8 @@
 #include <linux/semaphore.h>
 #include <linux/slab.h>
 #include <linux/types.h>
+#include <linux/raspberrypi/vchiq.h>
 
-#include "vchiq.h"
 #include "vc_sm_cma_vchi.h"
 
 #define VC_SM_VER  1
diff --git a/drivers/staging/vc04_services/vchiq-mmal/Makefile b/drivers/staging/vc04_services/vchiq-mmal/Makefile
index f8164c33aec3..b2a830f48acc 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/Makefile
+++ b/drivers/staging/vc04_services/vchiq-mmal/Makefile
@@ -5,4 +5,5 @@ obj-$(CONFIG_BCM2835_VCHIQ_MMAL) += bcm2835-mmal-vchiq.o
 
 ccflags-y += \
 	-I$(srctree)/$(src)/.. \
+	-I$(srctree)/$(src)/../include \
 	-D__VCCOREVER__=0x04000000
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 2101b79780eb..e057e21961d5 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -23,6 +23,7 @@
 #include <linux/slab.h>
 #include <linux/completion.h>
 #include <linux/vmalloc.h>
+#include <linux/raspberrypi/vchiq.h>
 #include <media/videobuf2-vmalloc.h>
 
 #include "mmal-common.h"
@@ -32,8 +33,6 @@
 
 #include "vc-sm-cma/vc_sm_knl.h"
 
-#include "interface/vchiq_arm/vchiq.h"
-
 /*
  * maximum number of components supported.
  * This matches the maximum permitted by default on the VPU
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
