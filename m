Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DBE205824
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 19:01:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CF8788F38;
	Tue, 23 Jun 2020 17:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kyIp4x7fRbws; Tue, 23 Jun 2020 17:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB72188DB6;
	Tue, 23 Jun 2020 17:01:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B1281BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 17:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC55A204F2
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 17:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 09CxD1bfxt3I for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 17:01:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 4FFB7203BB
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 17:01:23 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 4677EB080;
 Tue, 23 Jun 2020 16:45:35 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 48/50] staging: vchiq: Use vchiq.h as the main header file for
 services
Date: Tue, 23 Jun 2020 18:42:34 +0200
Message-Id: <20200623164235.29566-49-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This used to be vchiq_if.h but vchiq.h is more concise for an include
file that will hopefully be in the future in the includes directory.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/bcm2835-audio/bcm2835.h     |   2 +-
 .../vc04_services/interface/vchiq_arm/vchiq.h | 107 ++++++++++++++++-
 .../interface/vchiq_arm/vchiq_if.h            | 109 ------------------
 .../interface/vchiq_arm/vchiq_ioctl.h         |   2 +-
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     |   2 +-
 5 files changed, 106 insertions(+), 116 deletions(-)
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index a15f251033ac..ca220f5230ec 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -9,7 +9,7 @@
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/pcm-indirect.h>
-#include "interface/vchiq_arm/vchiq_if.h"
+#include "interface/vchiq_arm/vchiq.h"
 
 #define MAX_SUBSTREAMS   (8)
 #define AVAIL_SUBSTREAMS_MASK  (0xff)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
index 57fe7d5e9a85..04b7ff41a025 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
@@ -1,9 +1,108 @@
 /* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
 /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
 
-#ifndef VCHIQ_VCHIQ_H
-#define VCHIQ_VCHIQ_H
+#ifndef VCHIQ_H
+#define VCHIQ_H
 
-#include "vchiq_if.h"
+#define VCHIQ_SERVICE_HANDLE_INVALID 0
 
-#endif
+#define VCHIQ_SLOT_SIZE     4096
+#define VCHIQ_MAX_MSG_SIZE  (VCHIQ_SLOT_SIZE - sizeof(struct vchiq_header))
+
+#define VCHIQ_MAKE_FOURCC(x0, x1, x2, x3) \
+			(((x0) << 24) | ((x1) << 16) | ((x2) << 8) | (x3))
+
+enum vchiq_reason {
+	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
+	VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
+	VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
+	VCHIQ_BULK_TRANSMIT_DONE,     /* service, -, bulk_userdata */
+	VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
+	VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
+	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
+};
+
+enum vchiq_status {
+	VCHIQ_ERROR   = -1,
+	VCHIQ_SUCCESS = 0,
+	VCHIQ_RETRY   = 1
+};
+
+enum vchiq_bulk_mode {
+	VCHIQ_BULK_MODE_CALLBACK,
+	VCHIQ_BULK_MODE_BLOCKING,
+	VCHIQ_BULK_MODE_NOCALLBACK,
+	VCHIQ_BULK_MODE_WAITING		/* Reserved for internal use */
+};
+
+enum vchiq_service_option {
+	VCHIQ_SERVICE_OPTION_AUTOCLOSE,
+	VCHIQ_SERVICE_OPTION_SLOT_QUOTA,
+	VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA,
+	VCHIQ_SERVICE_OPTION_SYNCHRONOUS,
+	VCHIQ_SERVICE_OPTION_TRACE
+};
+
+struct vchiq_header {
+	/* The message identifier - opaque to applications. */
+	int msgid;
+
+	/* Size of message data. */
+	unsigned int size;
+
+	char data[0];           /* message */
+};
+
+struct vchiq_element {
+	const void __user *data;
+	unsigned int size;
+};
+
+struct vchiq_service_base {
+	int fourcc;
+	enum vchiq_status (*callback)(enum vchiq_reason reason,
+				      struct vchiq_header *header,
+				      unsigned int handle,
+				      void *bulk_userdata);
+	void *userdata;
+};
+
+struct vchiq_service_params {
+	int fourcc;
+	enum vchiq_status (*callback)(enum vchiq_reason reason,
+				      struct vchiq_header *header,
+				      unsigned int handle,
+				      void *bulk_userdata);
+	void *userdata;
+	short version;       /* Increment for non-trivial changes */
+	short version_min;   /* Update for incompatible changes */
+};
+
+struct vchiq_instance;
+
+extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
+extern enum vchiq_status vchiq_shutdown(struct vchiq_instance *instance);
+extern enum vchiq_status vchiq_connect(struct vchiq_instance *instance);
+extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
+	const struct vchiq_service_params *params,
+	unsigned int *pservice);
+extern enum vchiq_status vchiq_close_service(unsigned int service);
+extern enum vchiq_status vchiq_use_service(unsigned int service);
+extern enum vchiq_status vchiq_release_service(unsigned int service);
+extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
+extern void           vchiq_release_message(unsigned int service,
+	struct vchiq_header *header);
+extern int vchiq_queue_kernel_message(unsigned handle, void *data,
+				      unsigned size);
+extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
+	const void *data, unsigned int size, void *userdata,
+	enum vchiq_bulk_mode mode);
+extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
+	void *data, unsigned int size, void *userdata,
+	enum vchiq_bulk_mode mode);
+extern void *vchiq_get_service_userdata(unsigned int service);
+extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
+      short *peer_version);
+extern struct vchiq_header *vchiq_msg_hold(unsigned handle);
+
+#endif /* VCHIQ_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
deleted file mode 100644
index 6374eda4ea0c..000000000000
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ /dev/null
@@ -1,109 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-
-#ifndef VCHIQ_IF_H
-#define VCHIQ_IF_H
-
-#define VCHIQ_SERVICE_HANDLE_INVALID 0
-
-#define VCHIQ_SLOT_SIZE     4096
-#define VCHIQ_MAX_MSG_SIZE  (VCHIQ_SLOT_SIZE - sizeof(struct vchiq_header))
-
-#define VCHIQ_MAKE_FOURCC(x0, x1, x2, x3) \
-			(((x0) << 24) | ((x1) << 16) | ((x2) << 8) | (x3))
-
-enum vchiq_reason {
-	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
-	VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
-	VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
-	VCHIQ_BULK_TRANSMIT_DONE,     /* service, -, bulk_userdata */
-	VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
-	VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
-	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
-};
-
-enum vchiq_status {
-	VCHIQ_ERROR   = -1,
-	VCHIQ_SUCCESS = 0,
-	VCHIQ_RETRY   = 1
-};
-
-enum vchiq_bulk_mode {
-	VCHIQ_BULK_MODE_CALLBACK,
-	VCHIQ_BULK_MODE_BLOCKING,
-	VCHIQ_BULK_MODE_NOCALLBACK,
-	VCHIQ_BULK_MODE_WAITING		/* Reserved for internal use */
-};
-
-enum vchiq_service_option {
-	VCHIQ_SERVICE_OPTION_AUTOCLOSE,
-	VCHIQ_SERVICE_OPTION_SLOT_QUOTA,
-	VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA,
-	VCHIQ_SERVICE_OPTION_SYNCHRONOUS,
-	VCHIQ_SERVICE_OPTION_TRACE
-};
-
-struct vchiq_header {
-	/* The message identifier - opaque to applications. */
-	int msgid;
-
-	/* Size of message data. */
-	unsigned int size;
-
-	char data[0];           /* message */
-};
-
-struct vchiq_element {
-	const void __user *data;
-	unsigned int size;
-};
-
-struct vchiq_service_base {
-	int fourcc;
-	enum vchiq_status (*callback)(enum vchiq_reason reason,
-				      struct vchiq_header *header,
-				      unsigned int handle,
-				      void *bulk_userdata);
-	void *userdata;
-};
-
-struct vchiq_service_params {
-	int fourcc;
-	enum vchiq_status (*callback)(enum vchiq_reason reason,
-				      struct vchiq_header *header,
-				      unsigned int handle,
-				      void *bulk_userdata);
-	void *userdata;
-	short version;       /* Increment for non-trivial changes */
-	short version_min;   /* Update for incompatible changes */
-};
-
-struct vchiq_instance;
-
-extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
-extern enum vchiq_status vchiq_shutdown(struct vchiq_instance *instance);
-extern enum vchiq_status vchiq_connect(struct vchiq_instance *instance);
-extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
-	const struct vchiq_service_params *params,
-	unsigned int *pservice);
-extern enum vchiq_status vchiq_close_service(unsigned int service);
-extern enum vchiq_status vchiq_use_service(unsigned int service);
-extern enum vchiq_status vchiq_release_service(unsigned int service);
-extern int vchiq_queue_kernel_message(unsigned handle, void *data,
-				      unsigned size);
-extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
-extern void           vchiq_release_message(unsigned int service,
-	struct vchiq_header *header);
-extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
-	const void *data, unsigned int size, void *userdata,
-	enum vchiq_bulk_mode mode);
-extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
-	void *data, unsigned int size, void *userdata,
-	enum vchiq_bulk_mode mode);
-extern void *vchiq_get_service_userdata(unsigned int service);
-extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
-      short *peer_version);
-extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
-extern struct vchiq_header *vchiq_msg_hold(unsigned handle);
-
-#endif /* VCHIQ_IF_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index 202889b3774f..f285d754ad28 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -5,7 +5,7 @@
 #define VCHIQ_IOCTLS_H
 
 #include <linux/ioctl.h>
-#include "vchiq_if.h"
+#include "vchiq.h"
 
 #define VCHIQ_IOC_MAGIC 0xc4
 #define VCHIQ_INVALID_HANDLE (~0)
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index f2a0341f6fc2..72afa4319bd3 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -29,7 +29,7 @@
 #include "mmal-vchiq.h"
 #include "mmal-msg.h"
 
-#include "interface/vchiq_arm/vchiq_if.h"
+#include "interface/vchiq_arm/vchiq.h"
 
 /*
  * maximum number of components supported.
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
