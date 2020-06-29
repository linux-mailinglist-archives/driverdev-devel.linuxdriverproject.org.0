Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 839E720CF85
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2675E888BD;
	Mon, 29 Jun 2020 15:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f8DwRWaGz-92; Mon, 29 Jun 2020 15:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E718888923;
	Mon, 29 Jun 2020 15:10:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A949D1BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3A53221B5
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XGrb39K1s2yI for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:10:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id D4053228DF
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:10:07 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 17948B02D;
 Mon, 29 Jun 2020 15:10:06 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 32/47] staging: vchiq: Pass vchiq's message when holding a
 message
Date: Mon, 29 Jun 2020 17:09:30 +0200
Message-Id: <20200629150945.10720-33-nsaenzjulienne@suse.de>
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

vchi created an opaque structure to be held by services while they
process callback messages. The contents of this opaque structure are the
service handle, which all services already maintain, and a pointer to
vchiq's message structure, struct vchiq_header.

Let's get rid of this opaque structure and directly pass struct
vchiq_header, which is what ultimately vchiq consumes when handling
callback messages.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       | 14 ++---------
 .../interface/vchiq_arm/vchiq_shim.c          | 25 ++++++-------------
 2 files changed, 9 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 74fd169e079a..72771fdee9d6 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -11,16 +11,6 @@
 // Macros to manipulate 'FOURCC' values
 #define MAKE_FOURCC(x) ((int32_t)((x[0] << 24) | (x[1] << 16) | (x[2] << 8) | x[3]))
 
-// Opaque service information
-struct opaque_vchi_service_t;
-
-// Descriptor for a held message. Allocated by client, initialised by vchi_msg_hold,
-// vchi_msg_iter_hold or vchi_msg_iter_hold_next. Fields are for internal VCHI use only.
-struct vchi_held_msg {
-	struct opaque_vchi_service_t *service;
-	void *message;
-};
-
 // Opaque handle for a VCHIQ instance
 struct vchiq_instance;
 
@@ -67,7 +57,7 @@ extern int vchi_queue_kernel_message(unsigned handle, void *data,
 extern int32_t vchi_msg_hold(unsigned handle,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
-			     struct vchi_held_msg *message_descriptor);
+			     struct vchiq_header **message);
 
 /*******************************************************************************
  * Global service support API - operations on held messages
@@ -75,7 +65,7 @@ extern int32_t vchi_msg_hold(unsigned handle,
  ******************************************************************************/
 
 // Routine to release a held message after it has been processed
-extern int32_t vchi_held_msg_release(struct vchi_held_msg *message);
+extern int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message);
 
 /******************************************************************************
  * Global bulk API
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 578346965da6..6eb9a9878641 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -113,7 +113,8 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 /***********************************************************
  * Name: vchi_held_msg_release
  *
- * Arguments:  struct vchi_held_msg *message
+ * Arguments:  unsgined handle
+ *	       struct vchiq_header *message
  *
  * Description: Routine to release a held message (after it has been read with
  *              vchi_msg_hold)
@@ -121,7 +122,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_held_msg_release(struct vchi_held_msg *message)
+int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message)
 {
 	/*
 	 * Convert the service field pointer back to an
@@ -131,8 +132,7 @@ int32_t vchi_held_msg_release(struct vchi_held_msg *message)
 	 * to a pointer.
 	 */
 
-	vchiq_release_message((unsigned int)(long)message->service,
-			      (struct vchiq_header *)message->message);
+	vchiq_release_message(handle, message);
 
 	return 0;
 }
@@ -144,7 +144,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Arguments:  struct vchi_service *service,
  *             void **data,
  *             uint32_t *msg_size,
- *             struct vchi_held_msg *message_handle
+ *             struct vchiq_header **message
  *
  * Description: Routine to return a pointer to the current message (to allow
  *              in place processing). The message is dequeued - don't forget
@@ -155,7 +155,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  *
  ***********************************************************/
 int32_t vchi_msg_hold(unsigned handle, void **data, uint32_t *msg_size,
-		      struct vchi_held_msg *message_handle)
+		      struct vchiq_header **message)
 {
 	struct vchiq_header *header;
 
@@ -165,18 +165,7 @@ int32_t vchi_msg_hold(unsigned handle, void **data, uint32_t *msg_size,
 
 	*data = header->data;
 	*msg_size = header->size;
-
-	/*
-	 * upcast the unsigned int which is an int
-	 * to a pointer and stuff it in the held message.
-	 * This pointer is opaque to everything except
-	 * vchi_held_msg_release which simply downcasts it back
-	 * to an int.
-	 */
-
-	message_handle->service =
-		(struct opaque_vchi_service_t *)(long)handle;
-	message_handle->message = header;
+	*message = header;
 
 	return 0;
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
