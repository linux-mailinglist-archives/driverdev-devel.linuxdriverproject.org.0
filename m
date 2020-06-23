Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5E420581D
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 19:01:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D406A8947B;
	Tue, 23 Jun 2020 17:01:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ZOC-QFtcYcA; Tue, 23 Jun 2020 17:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3300883B8;
	Tue, 23 Jun 2020 17:01:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC4FF1BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 17:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E94218651A
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 17:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wML2aFMUuOFQ for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 17:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C5D6186B89
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 17:01:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id AB915B049;
 Tue, 23 Jun 2020 16:45:32 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 44/50] staging: vchi: Get rid of vchi_bulk_queue_transmit()
Date: Tue, 23 Jun 2020 18:42:30 +0200
Message-Id: <20200623164235.29566-45-nsaenzjulienne@suse.de>
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

Its vchiq counterpart, vchiq_bulk_transmit() is only used by vchi. We
can then merge both functions by moving vchi_bulk_queue_transmit()'s
retry mechanism into vchiq_bulk_transmit() and let services call the
later.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  7 +-
 .../vc04_services/interface/vchi/vchi.h       | 11 ----
 .../interface/vchiq_arm/vchiq_arm.c           | 38 +++++++----
 .../interface/vchiq_arm/vchiq_shim.c          | 66 ++++---------------
 4 files changed, 41 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 55f1e684eef1..28d64bc895cd 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -343,10 +343,9 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 	count = size;
 	if (!instance->max_packet) {
 		/* Send the message to the videocore */
-		status = vchi_bulk_queue_transmit(instance->service_handle,
-						  src, count,
-						  VCHIQ_BULK_MODE_BLOCKING,
-						  NULL);
+		status = vchiq_bulk_transmit(instance->service_handle, src,
+					     count, NULL,
+					     VCHIQ_BULK_MODE_BLOCKING);
 	} else {
 		while (count > 0) {
 			int bytes = min(instance->max_packet, count);
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index ca20b99122f2..c800796f9986 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -54,17 +54,6 @@ struct vchiq_header *vchi_msg_hold(unsigned handle);
 // Routine to release a held message after it has been processed
 extern int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message);
 
-/******************************************************************************
- * Global bulk API
- *****************************************************************************/
-
-// Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
-extern int32_t vchi_bulk_queue_transmit(unsigned handle,
-					const void *data_src,
-					uint32_t data_size,
-				        enum vchiq_bulk_mode mode,
-					void *transfer_handle);
-
 /******************************************************************************
  * Configuration plumbing
  *****************************************************************************/
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 50294930ed27..d25d1031ed96 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -354,19 +354,31 @@ vchiq_bulk_transmit(unsigned int handle, const void *data,
 {
 	enum vchiq_status status;
 
-	switch (mode) {
-	case VCHIQ_BULK_MODE_NOCALLBACK:
-	case VCHIQ_BULK_MODE_CALLBACK:
-		status = vchiq_bulk_transfer(handle, (void *)data, size,
-					     userdata, mode,
-					     VCHIQ_BULK_TRANSMIT);
-		break;
-	case VCHIQ_BULK_MODE_BLOCKING:
-		status = vchiq_blocking_bulk_transfer(handle,
-			(void *)data, size, VCHIQ_BULK_TRANSMIT);
-		break;
-	default:
-		return VCHIQ_ERROR;
+	while (1) {
+		switch (mode) {
+		case VCHIQ_BULK_MODE_NOCALLBACK:
+		case VCHIQ_BULK_MODE_CALLBACK:
+			status = vchiq_bulk_transfer(handle, (void *)data, size,
+						     userdata, mode,
+						     VCHIQ_BULK_TRANSMIT);
+			break;
+		case VCHIQ_BULK_MODE_BLOCKING:
+			status = vchiq_blocking_bulk_transfer(handle,
+				(void *)data, size, VCHIQ_BULK_TRANSMIT);
+			break;
+		default:
+			return VCHIQ_ERROR;
+		}
+
+		/*
+		 * vchiq_*_bulk_transfer() may return VCHIQ_RETRY, so we need
+		 * to implement a retry mechanism since this function is
+		 * supposed to block until queued
+		 */
+		if (status != VCHIQ_RETRY)
+			break;
+
+		msleep(1);
 	}
 
 	return status;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index f69936a9eb29..33493643b5f8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -31,46 +31,6 @@ int vchi_queue_kernel_message(unsigned handle, void *data, unsigned int size)
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
-/***********************************************************
- * Name: vchi_bulk_queue_transmit
- *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
- *             const void *data_src,
- *             uint32_t data_size,
- *             enum vchi_flags flags,
- *             void *bulk_handle
- *
- * Description: Routine to transmit some data
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_bulk_queue_transmit(unsigned handle, const void *data_src,
-				 uint32_t data_size, enum vchiq_bulk_mode mode,
-				 void *bulk_handle)
-{
-	enum vchiq_status status;
-
-	while (1) {
-		status = vchiq_bulk_transmit(handle, data_src, data_size,
-					     bulk_handle, mode);
-
-		/*
-		 * vchiq_bulk_transmit() may return VCHIQ_RETRY, so we need to
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
-EXPORT_SYMBOL(vchi_bulk_queue_transmit);
-
-
 /***********************************************************
  * Name: vchi_held_msg_release
  *
@@ -80,10 +40,10 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
  * Description: Routine to release a held message (after it has been read with
  *              vchi_msg_hold)
  *
- * Returns: int32_t - success == 0
+ * Returns: int - success == 0
  *
  ***********************************************************/
-int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message)
+int vchi_held_msg_release(unsigned handle, struct vchiq_header *message)
 {
 	/*
 	 * Convert the service field pointer back to an
@@ -104,7 +64,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  *
  * Arguments:  struct vchi_service *service,
  *             void **data,
- *             uint32_t *msg_size,
+ *             unsigned *msg_size,
  *             struct vchiq_header **message
  *
  * Description: Routine to return a pointer to the current message (to allow
@@ -112,7 +72,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  *              to release the message using vchi_held_msg_release when you're
  *              finished.
  *
- * Returns: int32_t - success == 0
+ * Returns: int - success == 0
  *
  ***********************************************************/
 struct vchiq_header *vchi_msg_hold(unsigned handle)
@@ -134,7 +94,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
  *
  ***********************************************************/
 
-int32_t vchi_initialise(struct vchiq_instance **instance)
+int vchi_initialise(struct vchiq_instance **instance)
 {
 	return vchiq_initialise(instance);
 }
@@ -151,7 +111,7 @@ EXPORT_SYMBOL(vchi_initialise);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_connect(struct vchiq_instance *instance)
+int vchi_connect(struct vchiq_instance *instance)
 {
 	return vchiq_connect(instance);
 }
@@ -168,7 +128,7 @@ EXPORT_SYMBOL(vchi_connect);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_disconnect(struct vchiq_instance *instance)
+int vchi_disconnect(struct vchiq_instance *instance)
 {
 	return vchiq_shutdown(instance);
 }
@@ -184,11 +144,11 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  * Description: Routine to open a service
  *
- * Returns: int32_t - success == 0
+ * Returns: int - success == 0
  *
  ***********************************************************/
 
-int32_t vchi_service_open(struct vchiq_instance *instance,
+int vchi_service_open(struct vchiq_instance *instance,
 		      struct vchiq_service_params *params,
 		      unsigned *handle)
 {
@@ -196,13 +156,13 @@ int32_t vchi_service_open(struct vchiq_instance *instance,
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-int32_t vchi_service_close(unsigned handle)
+int vchi_service_close(unsigned handle)
 {
 	return vchiq_close_service(handle);
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_get_peer_version(unsigned handle, short *peer_version)
+int vchi_get_peer_version(unsigned handle, short *peer_version)
 {
 	return vchiq_get_peer_version(handle, peer_version);
 }
@@ -218,7 +178,7 @@ EXPORT_SYMBOL(vchi_get_peer_version);
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_use(unsigned handle)
+int vchi_service_use(unsigned handle)
 {
 	return vchiq_use_service(handle);
 }
@@ -234,7 +194,7 @@ EXPORT_SYMBOL(vchi_service_use);
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_release(unsigned handle)
+int vchi_service_release(unsigned handle)
 {
 	return vchiq_release_service(handle);
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
