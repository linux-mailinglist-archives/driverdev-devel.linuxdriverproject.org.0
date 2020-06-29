Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F75E20CFA1
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:21:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B4A38764F;
	Mon, 29 Jun 2020 15:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6bO_32h5UkDv; Mon, 29 Jun 2020 15:21:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 910E087617;
	Mon, 29 Jun 2020 15:21:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 242711BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2160F875EA
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RQUplxJfdvKf for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:21:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED755875CF
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:21:25 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 59B8BB066;
 Mon, 29 Jun 2020 15:10:10 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 42/47] staging: vchi: Move vchi_queue_kernel_message() into
 vchiq
Date: Mon, 29 Jun 2020 17:09:40 +0200
Message-Id: <20200629150945.10720-43-nsaenzjulienne@suse.de>
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

We can't really merge it with vchiq_queue_message() as it has internal
users that will not benefit from the retry mechanism
vchiq_queue_kernel_message() uses. So, for the sake of getting rid of
vchi, move it into vchiq.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  8 +++----
 .../vc04_services/interface/vchi/vchi.h       |  4 ----
 .../interface/vchiq_arm/vchiq_core.c          | 23 ++++++++++++++++---
 .../interface/vchiq_arm/vchiq_if.h            |  4 ++--
 .../interface/vchiq_arm/vchiq_shim.c          | 22 ------------------
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 14 +++++------
 6 files changed, 32 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 28d64bc895cd..efaa2ae11f52 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -44,8 +44,8 @@ static int bcm2835_audio_send_msg_locked(struct bcm2835_audio_instance *instance
 		init_completion(&instance->msg_avail_comp);
 	}
 
-	status = vchi_queue_kernel_message(instance->service_handle,
-					   m, sizeof(*m));
+	status = vchiq_queue_kernel_message(instance->service_handle,
+					    m, sizeof(*m));
 	if (status) {
 		dev_err(instance->dev,
 			"vchi message queue failed: %d, msg=%d\n",
@@ -350,8 +350,8 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 		while (count > 0) {
 			int bytes = min(instance->max_packet, count);
 
-			status = vchi_queue_kernel_message(instance->service_handle,
-							   src, bytes);
+			status = vchiq_queue_kernel_message(instance->service_handle,
+							    src, bytes);
 			src += bytes;
 			count -= bytes;
 		}
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index c800796f9986..6de5df43cc29 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -37,10 +37,6 @@ extern int32_t vchi_service_use(unsigned handle);
 // Routine to decrement ref count on a named service
 extern int32_t vchi_service_release(unsigned handle);
 
-/* Routine to send a message from kernel memory across a service */
-extern int vchi_queue_kernel_message(unsigned handle, void *data,
-				     unsigned int size);
-
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index bb69c91c44b0..39d15f9f4a18 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3213,11 +3213,28 @@ vchiq_queue_message(unsigned int handle,
 	return status;
 }
 
-enum vchiq_status vchiq_queue_kernel_message(unsigned int handle, void *context,
-				      size_t size)
+int vchiq_queue_kernel_message(unsigned handle, void *data, unsigned size)
 {
-	return vchiq_queue_message(handle, memcpy_copy_callback, context, size);
+	enum vchiq_status status;
+
+	while (1) {
+		status = vchiq_queue_message(handle, memcpy_copy_callback,
+					     data, size);
+
+		/*
+		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
+		 * implement a retry mechanism since this function is supposed
+		 * to block until queued
+		 */
+		if (status != VCHIQ_RETRY)
+			break;
+
+		msleep(1);
+	}
+
+	return status;
 }
+EXPORT_SYMBOL(vchiq_queue_kernel_message);
 
 void
 vchiq_release_message(unsigned int handle,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 931debcd6492..6374eda4ea0c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -89,8 +89,8 @@ extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
 extern enum vchiq_status vchiq_close_service(unsigned int service);
 extern enum vchiq_status vchiq_use_service(unsigned int service);
 extern enum vchiq_status vchiq_release_service(unsigned int service);
-extern enum vchiq_status vchiq_queue_kernel_message(unsigned int handle,
-						    void *context, size_t size);
+extern int vchiq_queue_kernel_message(unsigned handle, void *data,
+				      unsigned size);
 extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
 extern void           vchiq_release_message(unsigned int service,
 	struct vchiq_header *header);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 33493643b5f8..57ac6a289a08 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -9,28 +9,6 @@
 #include "../vchi/vchi.h"
 #include "vchiq.h"
 
-int vchi_queue_kernel_message(unsigned handle, void *data, unsigned int size)
-{
-	enum vchiq_status status;
-
-	while (1) {
-		status = vchiq_queue_kernel_message(handle, data, size);
-
-		/*
-		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
-		 * implement a retry mechanism since this function is supposed
-		 * to block until queued
-		 */
-		if (status != VCHIQ_RETRY)
-			break;
-
-		msleep(1);
-	}
-
-	return status;
-}
-EXPORT_SYMBOL(vchi_queue_kernel_message);
-
 /***********************************************************
  * Name: vchi_held_msg_release
  *
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 4c6a6f4d89fc..c7a425db1d29 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -440,10 +440,9 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 
 	vchi_service_use(instance->service_handle);
 
-	ret = vchi_queue_kernel_message(instance->service_handle,
-					&m,
-					sizeof(struct mmal_msg_header) +
-					sizeof(m.u.buffer_from_host));
+	ret = vchiq_queue_kernel_message(instance->service_handle, &m,
+					 sizeof(struct mmal_msg_header) +
+					 sizeof(m.u.buffer_from_host));
 
 	vchi_service_release(instance->service_handle);
 
@@ -681,10 +680,9 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 
 	vchi_service_use(instance->service_handle);
 
-	ret = vchi_queue_kernel_message(instance->service_handle,
-					msg,
-					sizeof(struct mmal_msg_header) +
-					payload_len);
+	ret = vchiq_queue_kernel_message(instance->service_handle, msg,
+					 sizeof(struct mmal_msg_header) +
+					 payload_len);
 
 	vchi_service_release(instance->service_handle);
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
