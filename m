Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECB6205779
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 18:45:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D7E472DFFF;
	Tue, 23 Jun 2020 16:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9izApMLBiRgX; Tue, 23 Jun 2020 16:45:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B4F2C263D6;
	Tue, 23 Jun 2020 16:45:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9711BF969
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C50B897A7
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m+f-SZeEXstN for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 16:45:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9AA3C87A11
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 16:45:09 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 9C3B2AEBE;
 Tue, 23 Jun 2020 16:45:07 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/50] staging: bcm2835: Break MMAL support out from camera
Date: Tue, 23 Jun 2020 18:41:47 +0200
Message-Id: <20200623164235.29566-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623164235.29566-1-nsaenzjulienne@suse.de>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 kernel-list@raspberrypi.com, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Jacopo Mondi <jacopo@jmondi.org>

The BCM2835 camera host is currently the only component that uses the
VCHIQ MMAL interface. This will soon change with the upporting of
BCM2835 ISP, which make use of the same interface.

Break VCHIQ MMAL interface support out from camera host directory to
make it possible for the ISP driver to use it as well.

The only modification to the existing mmal code is the introduction of
EXPORT_SYMBOL() for symbols required by bcm2835-camera and the addition
of the module author and licenses.

Signed-off-by: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/Kconfig         |  2 ++
 drivers/staging/vc04_services/Makefile        |  5 +++--
 .../vc04_services/bcm2835-camera/Kconfig      |  1 +
 .../vc04_services/bcm2835-camera/Makefile     |  4 ++--
 .../staging/vc04_services/vchiq-mmal/Kconfig  |  7 +++++++
 .../staging/vc04_services/vchiq-mmal/Makefile |  8 +++++++
 .../mmal-common.h                             |  0
 .../mmal-encodings.h                          |  0
 .../mmal-msg-common.h                         |  0
 .../mmal-msg-format.h                         |  0
 .../mmal-msg-port.h                           |  0
 .../{bcm2835-camera => vchiq-mmal}/mmal-msg.h |  0
 .../mmal-parameters.h                         |  0
 .../mmal-vchiq.c                              | 21 +++++++++++++++++++
 .../mmal-vchiq.h                              |  0
 15 files changed, 44 insertions(+), 4 deletions(-)
 create mode 100644 drivers/staging/vc04_services/vchiq-mmal/Kconfig
 create mode 100644 drivers/staging/vc04_services/vchiq-mmal/Makefile
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-common.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-encodings.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-msg-common.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-msg-format.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-msg-port.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-msg.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-parameters.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-vchiq.c (98%)
 rename drivers/staging/vc04_services/{bcm2835-camera => vchiq-mmal}/mmal-vchiq.h (100%)

diff --git a/drivers/staging/vc04_services/Kconfig b/drivers/staging/vc04_services/Kconfig
index 6baf9dd57f1f..4b886293f198 100644
--- a/drivers/staging/vc04_services/Kconfig
+++ b/drivers/staging/vc04_services/Kconfig
@@ -23,5 +23,7 @@ source "drivers/staging/vc04_services/bcm2835-audio/Kconfig"
 
 source "drivers/staging/vc04_services/bcm2835-camera/Kconfig"
 
+source "drivers/staging/vc04_services/vchiq-mmal/Kconfig"
+
 endif
 
diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index 54d9e2f31916..d37f21d1a219 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -10,8 +10,9 @@ vchiq-objs := \
    interface/vchiq_arm/vchiq_util.o \
    interface/vchiq_arm/vchiq_connected.o \
 
-obj-$(CONFIG_SND_BCM2835)	+= bcm2835-audio/
-obj-$(CONFIG_VIDEO_BCM2835)	+= bcm2835-camera/
+obj-$(CONFIG_SND_BCM2835)		+= bcm2835-audio/
+obj-$(CONFIG_VIDEO_BCM2835)		+= bcm2835-camera/
+obj-$(CONFIG_BCM2835_VCHIQ_MMAL)	+= vchiq-mmal/
 
 ccflags-y += -D__VCCOREVER__=0x04000000
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/Kconfig b/drivers/staging/vc04_services/bcm2835-camera/Kconfig
index c81baf2c111e..d0653d1ed3c7 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/Kconfig
+++ b/drivers/staging/vc04_services/bcm2835-camera/Kconfig
@@ -4,6 +4,7 @@ config VIDEO_BCM2835
 	depends on MEDIA_SUPPORT
 	depends on VIDEO_V4L2 && (ARCH_BCM2835 || COMPILE_TEST)
 	select BCM2835_VCHIQ
+	select BCM2835_VCHIQ_MMAL
 	select VIDEOBUF2_VMALLOC
 	select BTREE
 	help
diff --git a/drivers/staging/vc04_services/bcm2835-camera/Makefile b/drivers/staging/vc04_services/bcm2835-camera/Makefile
index 472f21e1f2a1..3a76d6ade428 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/Makefile
+++ b/drivers/staging/vc04_services/bcm2835-camera/Makefile
@@ -1,11 +1,11 @@
 # SPDX-License-Identifier: GPL-2.0
 bcm2835-v4l2-$(CONFIG_VIDEO_BCM2835) := \
 	bcm2835-camera.o \
-	controls.o \
-	mmal-vchiq.o
+	controls.o
 
 obj-$(CONFIG_VIDEO_BCM2835) += bcm2835-v4l2.o
 
 ccflags-y += \
 	-I $(srctree)/$(src)/.. \
+	-I $(srctree)/$(src)/../vchiq-mmal/ \
 	-D__VCCOREVER__=0x04000000
diff --git a/drivers/staging/vc04_services/vchiq-mmal/Kconfig b/drivers/staging/vc04_services/vchiq-mmal/Kconfig
new file mode 100644
index 000000000000..500c0d12e4ff
--- /dev/null
+++ b/drivers/staging/vc04_services/vchiq-mmal/Kconfig
@@ -0,0 +1,7 @@
+config BCM2835_VCHIQ_MMAL
+	tristate "BCM2835 MMAL VCHIQ service"
+	depends on (ARCH_BCM2835 || COMPILE_TEST)
+	help
+	  Enables the MMAL API over VCHIQ interface as used for the
+	  majority of the multimedia services on VideoCore.
+	  Defaults to Y when the Broadcomd BCM2835 camera host is selected.
diff --git a/drivers/staging/vc04_services/vchiq-mmal/Makefile b/drivers/staging/vc04_services/vchiq-mmal/Makefile
new file mode 100644
index 000000000000..f8164c33aec3
--- /dev/null
+++ b/drivers/staging/vc04_services/vchiq-mmal/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+bcm2835-mmal-vchiq-objs := mmal-vchiq.o
+
+obj-$(CONFIG_BCM2835_VCHIQ_MMAL) += bcm2835-mmal-vchiq.o
+
+ccflags-y += \
+	-I$(srctree)/$(src)/.. \
+	-D__VCCOREVER__=0x04000000
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-common.h
similarity index 100%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-common.h
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-encodings.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-encodings.h
similarity index 100%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-encodings.h
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-encodings.h
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-common.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-msg-common.h
similarity index 100%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-msg-common.h
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-msg-common.h
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-msg-format.h
similarity index 100%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-msg-format.h
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-port.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-msg-port.h
similarity index 100%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-msg-port.h
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-msg-port.h
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h
similarity index 100%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-parameters.h
similarity index 100%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-parameters.h
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
similarity index 98%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index de03b90021a8..daf21087f8f9 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -17,6 +17,7 @@
 
 #include <linux/errno.h>
 #include <linux/kernel.h>
+#include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/mm.h>
 #include <linux/slab.h>
@@ -1396,6 +1397,7 @@ int vchiq_mmal_port_set_format(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_port_set_format);
 
 int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
 				  struct vchiq_mmal_port *port,
@@ -1412,6 +1414,7 @@ int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_port_parameter_set);
 
 int vchiq_mmal_port_parameter_get(struct vchiq_mmal_instance *instance,
 				  struct vchiq_mmal_port *port,
@@ -1428,6 +1431,7 @@ int vchiq_mmal_port_parameter_get(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_port_parameter_get);
 
 /* enable a port
  *
@@ -1458,6 +1462,7 @@ int vchiq_mmal_port_enable(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_port_enable);
 
 int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
 			    struct vchiq_mmal_port *port)
@@ -1478,6 +1483,7 @@ int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_port_disable);
 
 /* ports will be connected in a tunneled manner so data buffers
  * are not handled by client.
@@ -1565,6 +1571,7 @@ int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_port_connect_tunnel);
 
 int vchiq_mmal_submit_buffer(struct vchiq_mmal_instance *instance,
 			     struct vchiq_mmal_port *port,
@@ -1583,6 +1590,7 @@ int vchiq_mmal_submit_buffer(struct vchiq_mmal_instance *instance,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_submit_buffer);
 
 int mmal_vchi_buffer_init(struct vchiq_mmal_instance *instance,
 			  struct mmal_buffer *buf)
@@ -1595,6 +1603,7 @@ int mmal_vchi_buffer_init(struct vchiq_mmal_instance *instance,
 	buf->msg_context = msg_context;
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mmal_vchi_buffer_init);
 
 int mmal_vchi_buffer_cleanup(struct mmal_buffer *buf)
 {
@@ -1606,6 +1615,7 @@ int mmal_vchi_buffer_cleanup(struct mmal_buffer *buf)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mmal_vchi_buffer_cleanup);
 
 /* Initialise a mmal component and its ports
  *
@@ -1693,6 +1703,7 @@ int vchiq_mmal_component_init(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_component_init);
 
 /*
  * cause a mmal component to be destroyed
@@ -1714,6 +1725,7 @@ int vchiq_mmal_component_finalise(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_component_finalise);
 
 /*
  * cause a mmal component to be enabled
@@ -1739,6 +1751,7 @@ int vchiq_mmal_component_enable(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_component_enable);
 
 /*
  * cause a mmal component to be enabled
@@ -1764,6 +1777,7 @@ int vchiq_mmal_component_disable(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_component_disable);
 
 int vchiq_mmal_version(struct vchiq_mmal_instance *instance,
 		       u32 *major_out, u32 *minor_out)
@@ -1779,6 +1793,7 @@ int vchiq_mmal_version(struct vchiq_mmal_instance *instance,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_version);
 
 int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 {
@@ -1809,6 +1824,7 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 
 	return status;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_finalise);
 
 int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 {
@@ -1889,3 +1905,8 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	kfree(instance);
 	return -ENODEV;
 }
+EXPORT_SYMBOL_GPL(vchiq_mmal_init);
+
+MODULE_DESCRIPTION("BCM2835 MMAL VCHIQ interface");
+MODULE_AUTHOR("Dave Stevenson, <dave.stevenson@raspberrypi.org>");
+MODULE_LICENSE("GPL");
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h
similarity index 100%
rename from drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
rename to drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
