Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D01620578C
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 18:45:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEA4D88F54;
	Tue, 23 Jun 2020 16:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i33ac3FfjyCh; Tue, 23 Jun 2020 16:45:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E25A188A2B;
	Tue, 23 Jun 2020 16:45:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 832121BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7FF5D88325
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8o+E+zvQQC6B for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 16:45:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6CCFF8826B
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 16:45:15 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id A19AEAED2;
 Tue, 23 Jun 2020 16:45:13 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/50] staging: vchi: Get rid of vchi_msg_peek()
Date: Tue, 23 Jun 2020 18:41:59 +0200
Message-Id: <20200623164235.29566-14-nsaenzjulienne@suse.de>
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

There already is a function that covers most of the functionality
vchi_msg_peek() provides: vchi_msg_hold(). The main difference being
that the later removes the message from vchu's queue while the other
does it later on, while releasing the message.

There are no users of this function that can't be trivially converted to
vchi_msg_hold(). So, for the sake of removing duplicate code, get rid of
vchi_msg_peek().

Note that the opposite change could be performed as well. But
vchi_msg_peek()'s implementation was deemed less robust as messages have
to be released in order.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       | 12 ----
 .../interface/vchiq_arm/vchiq_shim.c          | 64 -------------------
 .../interface/vchiq_arm/vchiq_util.c          | 12 ----
 .../interface/vchiq_arm/vchiq_util.h          |  1 -
 4 files changed, 89 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 1a981e98e82b..1daef5ad70f1 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -103,18 +103,6 @@ extern int32_t vchi_msg_dequeue(struct vchi_service_handle *handle,
 				uint32_t *actual_msg_size,
 				enum vchi_flags flags);
 
-// Routine to look at a message in place.
-// The message is not dequeued, so a subsequent call to peek or dequeue
-// will return the same message.
-extern int32_t vchi_msg_peek(struct vchi_service_handle *handle,
-			     void **data,
-			     uint32_t *msg_size,
-			     enum vchi_flags flags);
-
-// Routine to remove a message after it has been read in place with peek
-// The first message on the queue is dequeued.
-extern int32_t vchi_msg_remove(struct vchi_service_handle *handle);
-
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 75d87b6992c4..54c2492b7c83 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -18,70 +18,6 @@ struct shim_service {
 	void *callback_param;
 };
 
-/***********************************************************
- * Name: vchi_msg_peek
- *
- * Arguments:  struct vchi_service_handle *handle,
- *             void **data,
- *             uint32_t *msg_size,
-
- *             enum vchi_flags flags
- *
- * Description: Routine to return a pointer to the current message (to allow in
- *              place processing). The message can be removed using
- *              vchi_msg_remove when you're finished
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_msg_peek(struct vchi_service_handle *handle,
-		      void **data,
-		      uint32_t *msg_size,
-		      enum vchi_flags flags)
-{
-	struct shim_service *service = (struct shim_service *)handle;
-	struct vchiq_header *header;
-
-	WARN_ON((flags != VCHI_FLAGS_NONE) &&
-		(flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));
-
-	if (flags == VCHI_FLAGS_NONE)
-		if (vchiu_queue_is_empty(&service->queue))
-			return -1;
-
-	header = vchiu_queue_peek(&service->queue);
-
-	*data = header->data;
-	*msg_size = header->size;
-
-	return 0;
-}
-EXPORT_SYMBOL(vchi_msg_peek);
-
-/***********************************************************
- * Name: vchi_msg_remove
- *
- * Arguments:  struct vchi_service_handle *handle,
- *
- * Description: Routine to remove a message (after it has been read with
- *              vchi_msg_peek)
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_msg_remove(struct vchi_service_handle *handle)
-{
-	struct shim_service *service = (struct shim_service *)handle;
-	struct vchiq_header *header;
-
-	header = vchiu_queue_pop(&service->queue);
-
-	vchiq_release_message(service->handle, header);
-
-	return 0;
-}
-EXPORT_SYMBOL(vchi_msg_remove);
-
 int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
 			       unsigned int size)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
index 644844d88fed..c1c81f9ab9e6 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
@@ -55,18 +55,6 @@ void vchiu_queue_push(struct vchiu_queue *queue, struct vchiq_header *header)
 	complete(&queue->push);
 }
 
-struct vchiq_header *vchiu_queue_peek(struct vchiu_queue *queue)
-{
-	while (queue->write == queue->read) {
-		if (wait_for_completion_interruptible(&queue->push))
-			flush_signals(current);
-	}
-
-	complete(&queue->push); // We haven't removed anything from the queue.
-
-	return queue->storage[queue->read & (queue->size - 1)];
-}
-
 struct vchiq_header *vchiu_queue_pop(struct vchiu_queue *queue)
 {
 	struct vchiq_header *header;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
index f03a4250de0d..1c90a8da1a92 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
@@ -44,7 +44,6 @@ extern int vchiu_queue_is_empty(struct vchiu_queue *queue);
 extern void vchiu_queue_push(struct vchiu_queue *queue,
 			     struct vchiq_header *header);
 
-extern struct vchiq_header *vchiu_queue_peek(struct vchiu_queue *queue);
 extern struct vchiq_header *vchiu_queue_pop(struct vchiu_queue *queue);
 
 #endif
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
