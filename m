Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D401E40B1
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30ECB86DA6;
	Wed, 27 May 2020 11:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Q-Nb7QDU-uj; Wed, 27 May 2020 11:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0DA8F86D9C;
	Wed, 27 May 2020 11:54:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DFC1E1BF980
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC70286D6E
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZXZuQPiz0WA for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5FF0B86D52
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:38 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6A614AD2B;
 Wed, 27 May 2020 11:54:39 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 26/50] staging: vchiq: Move message queue into struct
 vchiq_service
Date: Wed, 27 May 2020 13:53:31 +0200
Message-Id: <20200527115400.31391-27-nsaenzjulienne@suse.de>
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

This has historically been handled by vchi, but there is no reason why
this couldn't be handled directly in vchiq.

The patch tries to avoid altering any behavior, with the exception of
the msg_queue size, which is now fixed to VCHIQ_MAX_SLOTS (it was set to
VCHIQ_MAX_SLOTS / 2). This is done to match vchiq's user_service message
queue, which could be merged with this one in the future.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/Makefile        |  1 -
 .../interface/vchiq_arm/vchiq_core.c          | 46 ++++++++++++
 .../interface/vchiq_arm/vchiq_core.h          |  6 ++
 .../interface/vchiq_arm/vchiq_if.h            |  2 +
 .../interface/vchiq_arm/vchiq_shim.c          | 24 ++----
 .../interface/vchiq_arm/vchiq_util.c          | 73 -------------------
 .../interface/vchiq_arm/vchiq_util.h          | 22 ------
 7 files changed, 61 insertions(+), 113 deletions(-)
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c

diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index 5fc3b65224a3..6a426572793b 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -7,7 +7,6 @@ vchiq-objs := \
    interface/vchiq_arm/vchiq_2835_arm.o \
    interface/vchiq_arm/vchiq_debugfs.o \
    interface/vchiq_arm/vchiq_shim.o \
-   interface/vchiq_arm/vchiq_util.o \
    interface/vchiq_arm/vchiq_connected.o \
 
 obj-$(CONFIG_SND_BCM2835)		+= bcm2835-audio/
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 46b09b7154f8..0e9680904e68 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2265,6 +2265,47 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	return VCHIQ_ERROR;
 }
 
+void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header)
+{
+	struct vchiq_service *service = find_service_by_handle(handle);
+	int pos;
+
+	while (service->msg_queue_write == service->msg_queue_read +
+		VCHIQ_MAX_SLOTS) {
+		if (wait_for_completion_interruptible(&service->msg_queue_pop))
+			flush_signals(current);
+	}
+
+	pos = service->msg_queue_write++ & (VCHIQ_MAX_SLOTS - 1);
+	service->msg_queue[pos] = header;
+
+	complete(&service->msg_queue_push);
+}
+EXPORT_SYMBOL(vchiq_msg_queue_push);
+
+struct vchiq_header *vchiq_msg_hold(unsigned handle)
+{
+	struct vchiq_service *service = find_service_by_handle(handle);
+	struct vchiq_header *header;
+	int pos;
+
+	if (service->msg_queue_write == service->msg_queue_read)
+		return NULL;
+
+	while (service->msg_queue_write == service->msg_queue_read) {
+		if (wait_for_completion_interruptible(&service->msg_queue_push))
+			flush_signals(current);
+	}
+
+	pos = service->msg_queue_read++ & (VCHIQ_MAX_SLOTS - 1);
+	header = service->msg_queue[pos];
+
+	complete(&service->msg_queue_pop);
+
+	return header;
+}
+EXPORT_SYMBOL(vchiq_msg_hold);
+
 static int vchiq_validate_params(const struct vchiq_service_params *params)
 {
 	if (!params->callback || !params->fourcc) {
@@ -2319,12 +2360,17 @@ vchiq_add_service_internal(struct vchiq_state *state,
 	service->state         = state;
 	service->instance      = instance;
 	service->service_use_count = 0;
+	service->msg_queue_read = 0;
+	service->msg_queue_write = 0;
 	init_bulk_queue(&service->bulk_tx);
 	init_bulk_queue(&service->bulk_rx);
 	init_completion(&service->remove_event);
 	init_completion(&service->bulk_remove_event);
+	init_completion(&service->msg_queue_pop);
+	init_completion(&service->msg_queue_push);
 	mutex_init(&service->bulk_mutex);
 	memset(&service->stats, 0, sizeof(service->stats));
+	memset(&service->msg_queue, 0, sizeof(service->msg_queue));
 
 	/* Although it is perfectly possible to use a spinlock
 	** to protect the creation of services, it is overkill as it
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 1fe6cd8b86c0..b97b661bea1c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -297,6 +297,12 @@ struct vchiq_service {
 		uint64_t bulk_tx_bytes;
 		uint64_t bulk_rx_bytes;
 	} stats;
+
+	int msg_queue_read;
+	int msg_queue_write;
+	struct completion msg_queue_pop;
+	struct completion msg_queue_push;
+	struct vchiq_header *msg_queue[VCHIQ_MAX_SLOTS];
 };
 
 /* The quota information is outside struct vchiq_service so that it can
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index b62fd6d6f1ac..8fd51d885a18 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -136,5 +136,7 @@ extern enum vchiq_status vchiq_dump_phys_mem(unsigned int service,
 
 extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
       short *peer_version);
+extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
+extern struct vchiq_header *vchiq_msg_hold(unsigned handle);
 
 #endif /* VCHIQ_IF_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index dcf8776834b1..85d79d0033bf 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -13,8 +13,6 @@
 struct vchi_service {
 	unsigned int handle;
 
-	struct vchiu_queue queue;
-
 	vchi_callback callback;
 	void *callback_param;
 };
@@ -172,10 +170,9 @@ int32_t vchi_msg_hold(struct vchi_service *service, void **data,
 {
 	struct vchiq_header *header;
 
-	if (vchiu_queue_is_empty(&service->queue))
-		return -1;
-
-	header = vchiu_queue_pop(&service->queue);
+	header = vchiq_msg_hold(service->handle);
+	if (!header)
+		return -ENOENT;
 
 	*data = header->data;
 	*msg_size = header->size;
@@ -272,7 +269,7 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 		(struct vchi_service *)VCHIQ_GET_SERVICE_USERDATA(handle);
 
 	if (reason == VCHIQ_MESSAGE_AVAILABLE)
-		vchiu_queue_push(&service->queue, header);
+		vchiq_msg_queue_push(service->handle, header);
 
 	service->callback(service->callback_param, reason, bulk_user);
 
@@ -285,13 +282,8 @@ static struct vchi_service *service_alloc(struct vchiq_instance *instance,
 	struct vchi_service *service = kzalloc(sizeof(struct vchi_service), GFP_KERNEL);
 
 	if (service) {
-		if (!vchiu_queue_init(&service->queue, 64)) {
-			service->callback = setup->callback;
-			service->callback_param = setup->callback_param;
-		} else {
-			kfree(service);
-			service = NULL;
-		}
+		service->callback = setup->callback;
+		service->callback_param = setup->callback_param;
 	}
 
 	return service;
@@ -299,10 +291,8 @@ static struct vchi_service *service_alloc(struct vchiq_instance *instance,
 
 static void service_free(struct vchi_service *service)
 {
-	if (service) {
-		vchiu_queue_delete(&service->queue);
+	if (service)
 		kfree(service);
-	}
 }
 
 int32_t vchi_service_open(struct vchiq_instance *instance,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
deleted file mode 100644
index c1c81f9ab9e6..000000000000
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ /dev/null
@@ -1,73 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-
-#include "vchiq_util.h"
-
-static inline int is_pow2(int i)
-{
-	return i && !(i & (i - 1));
-}
-
-int vchiu_queue_init(struct vchiu_queue *queue, int size)
-{
-	WARN_ON(!is_pow2(size));
-
-	queue->size = size;
-	queue->read = 0;
-	queue->write = 0;
-	queue->initialized = 1;
-
-	init_completion(&queue->pop);
-	init_completion(&queue->push);
-
-	queue->storage = kcalloc(size, sizeof(struct vchiq_header *),
-				 GFP_KERNEL);
-	if (!queue->storage) {
-		vchiu_queue_delete(queue);
-		return -ENOMEM;
-	}
-	return 0;
-}
-
-void vchiu_queue_delete(struct vchiu_queue *queue)
-{
-	kfree(queue->storage);
-}
-
-int vchiu_queue_is_empty(struct vchiu_queue *queue)
-{
-	return queue->read == queue->write;
-}
-
-void vchiu_queue_push(struct vchiu_queue *queue, struct vchiq_header *header)
-{
-	if (!queue->initialized)
-		return;
-
-	while (queue->write == queue->read + queue->size) {
-		if (wait_for_completion_interruptible(&queue->pop))
-			flush_signals(current);
-	}
-
-	queue->storage[queue->write & (queue->size - 1)] = header;
-	queue->write++;
-
-	complete(&queue->push);
-}
-
-struct vchiq_header *vchiu_queue_pop(struct vchiu_queue *queue)
-{
-	struct vchiq_header *header;
-
-	while (queue->write == queue->read) {
-		if (wait_for_completion_interruptible(&queue->push))
-			flush_signals(current);
-	}
-
-	header = queue->storage[queue->read & (queue->size - 1)];
-	queue->read++;
-
-	complete(&queue->pop);
-
-	return header;
-}
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
index 1c90a8da1a92..dcf081079c39 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
@@ -24,26 +24,4 @@
 
 #include "vchiq_if.h"
 
-struct vchiu_queue {
-	int size;
-	int read;
-	int write;
-	int initialized;
-
-	struct completion pop;
-	struct completion push;
-
-	struct vchiq_header **storage;
-};
-
-extern int  vchiu_queue_init(struct vchiu_queue *queue, int size);
-extern void vchiu_queue_delete(struct vchiu_queue *queue);
-
-extern int vchiu_queue_is_empty(struct vchiu_queue *queue);
-
-extern void vchiu_queue_push(struct vchiu_queue *queue,
-			     struct vchiq_header *header);
-
-extern struct vchiq_header *vchiu_queue_pop(struct vchiu_queue *queue);
-
 #endif
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
