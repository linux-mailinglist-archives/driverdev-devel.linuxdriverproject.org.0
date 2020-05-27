Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793C61E40B0
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17F96887A5;
	Wed, 27 May 2020 11:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fmQhhjYO4kHT; Wed, 27 May 2020 11:54:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA0548878B;
	Wed, 27 May 2020 11:54:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D14351BF980
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CC29D887A5
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9HdLZp5dlWe for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43F2B8878B
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:45 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E67F8AD17;
 Wed, 27 May 2020 11:54:45 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 31/50] staging: vchi: Get rid of vchiq_shim's message callback
Date: Wed, 27 May 2020 13:53:36 +0200
Message-Id: <20200527115400.31391-32-nsaenzjulienne@suse.de>
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

As vchiq_shim's callback does nothing aside from pushing messages into
the service's queue, let's bypass it and jump directly to the service's
callbacks, letting them choose whether to use the message queue.

It turns out most services don't need to use the message queue, which
makes for simpler code in the end.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             | 20 ++---
 .../vc04_services/interface/vchi/vchi.h       |  9 +-
 .../interface/vchi/vchi_common.h              | 12 ---
 .../interface/vchiq_arm/vchiq_shim.c          | 42 ++--------
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  | 17 ++--
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 83 +++++++++----------
 6 files changed, 69 insertions(+), 114 deletions(-)
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_common.h

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 0f97eda4ec90..71750ef891dd 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -89,22 +89,17 @@ static int bcm2835_audio_send_simple(struct bcm2835_audio_instance *instance,
 	return bcm2835_audio_send_msg(instance, &m, wait);
 }
 
-static void audio_vchi_callback(void *param, const enum vchiq_reason reason,
-				void *msg_handle)
+static enum vchiq_status audio_vchi_callback(enum vchiq_reason reason,
+					     struct vchiq_header *header,
+					     unsigned handle, void *userdata)
 {
-	struct bcm2835_audio_instance *instance = param;
-	struct vchi_held_msg handle;
+	struct bcm2835_audio_instance *instance = vchiq_get_service_userdata(handle);
 	struct vc_audio_msg *m;
-	unsigned size;
-	int status;
 
 	if (reason != VCHIQ_MESSAGE_AVAILABLE)
-		return;
-
-	status = vchi_msg_hold(instance->service, (void **)&m, &size, &handle);
-	if (status)
-		return;
+		return VCHIQ_SUCCESS;
 
+	m = (void *)header->data;
 	if (m->type == VC_AUDIO_MSG_TYPE_RESULT) {
 		instance->result = m->result.success;
 		complete(&instance->msg_avail_comp);
@@ -119,7 +114,8 @@ static void audio_vchi_callback(void *param, const enum vchiq_reason reason,
 		dev_err(instance->dev, "unexpected callback type=%d\n", m->type);
 	}
 
-	vchi_held_msg_release(&handle);
+	vchiq_release_message(handle, header);
+	return VCHIQ_SUCCESS;
 }
 
 static int
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 789acb7999d1..fdc243f3f60a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -4,8 +4,6 @@
 #ifndef VCHI_H_
 #define VCHI_H_
 
-#include "vchi_common.h"
-
 /******************************************************************************
  * Global defs
  *****************************************************************************/
@@ -31,16 +29,13 @@ struct vchi_held_msg {
 
 struct vchi_service {
 	unsigned int handle;
-
-	vchi_callback callback;
-	void *callback_param;
 };
 
 // structure used to provide the information needed to open a server or a client
 struct service_creation {
 	struct vchi_version version;
 	int32_t service_id;
-	vchi_callback callback;
+	vchiq_callback callback;
 	void *callback_param;
 };
 
@@ -88,7 +83,7 @@ extern int vchi_queue_kernel_message(struct vchi_service *service, void *data,
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
-extern int32_t vchi_msg_hold(struct vchi_service *service,
+extern int32_t vchi_msg_hold(unsigned handle,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
 			     struct vchi_held_msg *message_descriptor);
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
deleted file mode 100644
index 24e8665e214a..000000000000
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-
-#ifndef VCHI_COMMON_H_
-#define VCHI_COMMON_H_
-
-//Callback used by all services / bulk transfers
-typedef void (*vchi_callback)(void *callback_param, //my service local param
-			      enum vchiq_reason reason,
-			      void *handle); //for transmitting msg's only
-
-#endif // VCHI_COMMON_H_
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 843ee978928f..e6773cd51b44 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -158,12 +158,12 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_hold(struct vchi_service *service, void **data,
-		      uint32_t *msg_size, struct vchi_held_msg *message_handle)
+int32_t vchi_msg_hold(unsigned handle, void **data, uint32_t *msg_size,
+		      struct vchi_held_msg *message_handle)
 {
 	struct vchiq_header *header;
 
-	header = vchiq_msg_hold(service->handle);
+	header = vchiq_msg_hold(handle);
 	if (!header)
 		return -ENOENT;
 
@@ -179,7 +179,7 @@ int32_t vchi_msg_hold(struct vchi_service *service, void **data,
 	 */
 
 	message_handle->service =
-		(struct opaque_vchi_service_t *)(long)service->handle;
+		(struct opaque_vchi_service_t *)(long)handle;
 	message_handle->message = header;
 
 	return 0;
@@ -253,33 +253,9 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  ***********************************************************/
 
-static enum vchiq_status shim_callback(enum vchiq_reason reason,
-				    struct vchiq_header *header,
-				    unsigned int handle,
-				    void *bulk_user)
+static struct vchi_service *service_alloc(void)
 {
-	struct vchi_service *service =
-		(struct vchi_service *)VCHIQ_GET_SERVICE_USERDATA(handle);
-
-	if (reason == VCHIQ_MESSAGE_AVAILABLE)
-		vchiq_msg_queue_push(service->handle, header);
-
-	service->callback(service->callback_param, reason, bulk_user);
-
-	return VCHIQ_SUCCESS;
-}
-
-static struct vchi_service *service_alloc(struct vchiq_instance *instance,
-	struct service_creation *setup)
-{
-	struct vchi_service *service = kzalloc(sizeof(struct vchi_service), GFP_KERNEL);
-
-	if (service) {
-		service->callback = setup->callback;
-		service->callback_param = setup->callback_param;
-	}
-
-	return service;
+	return kzalloc(sizeof(struct vchi_service), GFP_KERNEL);
 }
 
 static void service_free(struct vchi_service *service)
@@ -293,15 +269,15 @@ int32_t vchi_service_open(struct vchiq_instance *instance,
 	struct vchi_service **service)
 {
 
-	*service = service_alloc(instance, setup);
+	*service = service_alloc();
 	if (service) {
 		struct vchiq_service_params params;
 		enum vchiq_status status;
 
 		memset(&params, 0, sizeof(params));
 		params.fourcc = setup->service_id;
-		params.callback = shim_callback;
-		params.userdata = *service;
+		params.callback = setup->callback;
+		params.userdata = setup->callback_param;
 		params.version = setup->version.version;
 		params.version_min = setup->version.version_min;
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 7efe42d51e46..5088f72f57c9 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -237,8 +237,8 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 		} while (1);
 
-		while (!vchi_msg_hold(instance->service, (void **)&reply,
-				      &reply_len, &msg)) {
+		while (!vchi_msg_hold(instance->service->handle,
+				      (void **)&reply, &reply_len, &msg)) {
 			if (reply->trans_id & 0x80000000) {
 				/* Async event or cmd from the VPU */
 				if (instance->vpu_event)
@@ -265,15 +265,16 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 	return 0;
 }
 
-static void vc_sm_cma_vchi_callback(void *param, const enum vchiq_reason reason,
-				    void *msg_handle)
+static enum vchiq_status vc_sm_cma_vchi_callback(enum vchiq_reason reason,
+						 struct vchiq_header *header,
+						 unsigned handle,
+						 void *user_data)
 {
-	struct sm_instance *instance = param;
-
-	(void)msg_handle;
+	struct sm_instance *instance = vchiq_get_service_userdata(handle);
 
 	switch (reason) {
 	case VCHIQ_MESSAGE_AVAILABLE:
+		vchiq_msg_queue_push(handle, header);
 		complete(&instance->io_cmplt);
 		break;
 
@@ -282,6 +283,8 @@ static void vc_sm_cma_vchi_callback(void *param, const enum vchiq_reason reason,
 	default:
 		break;
 	}
+
+	return VCHIQ_SUCCESS;
 }
 
 struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 258cfab7d397..3207d0612515 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -157,7 +157,7 @@ struct mmal_msg_context {
 
 		struct {
 			/* message handle to release */
-			struct vchi_held_msg msg_handle;
+			struct vchiq_header *msg_handle;
 			/* pointer to received message */
 			struct mmal_msg *msg;
 			/* received message length */
@@ -674,54 +674,49 @@ static void bulk_abort_cb(struct vchiq_mmal_instance *instance,
 }
 
 /* incoming event service callback */
-static void service_callback(void *param, const enum vchiq_reason reason,
-			     void *bulk_ctx)
+static enum vchiq_status service_callback(enum vchiq_reason reason,
+					  struct vchiq_header *header,
+					  unsigned handle, void *bulk_ctx)
 {
-	struct vchiq_mmal_instance *instance = param;
-	int status;
+	struct vchiq_mmal_instance *instance = vchiq_get_service_userdata(handle);
 	u32 msg_len;
 	struct mmal_msg *msg;
-	struct vchi_held_msg msg_handle;
 	struct mmal_msg_context *msg_context;
 
 	if (!instance) {
 		pr_err("Message callback passed NULL instance\n");
-		return;
+		return VCHIQ_SUCCESS;
 	}
 
 	switch (reason) {
 	case VCHIQ_MESSAGE_AVAILABLE:
-		status = vchi_msg_hold(instance->service, (void **)&msg,
-				       &msg_len, &msg_handle);
-		if (status) {
-			pr_err("Unable to dequeue a message (%d)\n", status);
-			break;
-		}
+		msg = (void *)header->data;
+		msg_len = header->size;
 
 		DBG_DUMP_MSG(msg, msg_len, "<<< reply message");
 
 		/* handling is different for buffer messages */
 		switch (msg->h.type) {
 		case MMAL_MSG_TYPE_BUFFER_FROM_HOST:
-			vchi_held_msg_release(&msg_handle);
+			vchiq_release_message(handle, header);
 			break;
 
 		case MMAL_MSG_TYPE_EVENT_TO_HOST:
 			event_to_host_cb(instance, msg, msg_len);
-			vchi_held_msg_release(&msg_handle);
+			vchiq_release_message(handle, header);
 
 			break;
 
 		case MMAL_MSG_TYPE_BUFFER_TO_HOST:
 			buffer_to_host_cb(instance, msg, msg_len);
-			vchi_held_msg_release(&msg_handle);
+			vchiq_release_message(handle, header);
 			break;
 
 		default:
 			/* messages dependent on header context to complete */
 			if (!msg->h.context) {
 				pr_err("received message context was null!\n");
-				vchi_held_msg_release(&msg_handle);
+				vchiq_release_message(handle, header);
 				break;
 			}
 
@@ -730,12 +725,12 @@ static void service_callback(void *param, const enum vchiq_reason reason,
 			if (!msg_context) {
 				pr_err("received invalid message context %u!\n",
 				       msg->h.context);
-				vchi_held_msg_release(&msg_handle);
+				vchiq_release_message(handle, header);
 				break;
 			}
 
 			/* fill in context values */
-			msg_context->u.sync.msg_handle = msg_handle;
+			msg_context->u.sync.msg_handle = header;
 			msg_context->u.sync.msg = msg;
 			msg_context->u.sync.msg_len = msg_len;
 
@@ -773,13 +768,15 @@ static void service_callback(void *param, const enum vchiq_reason reason,
 		pr_err("Received unhandled message reason %d\n", reason);
 		break;
 	}
+
+	return VCHIQ_SUCCESS;
 }
 
 static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 				     struct mmal_msg *msg,
 				     unsigned int payload_len,
 				     struct mmal_msg **msg_out,
-				     struct vchi_held_msg *msg_handle_out)
+				     struct vchiq_header **msg_handle)
 {
 	struct mmal_msg_context *msg_context;
 	int ret;
@@ -833,7 +830,7 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 	}
 
 	*msg_out = msg_context->u.sync.msg;
-	*msg_handle_out = msg_context->u.sync.msg_handle;
+	*msg_handle = msg_context->u.sync.msg_handle;
 	release_msg_context(msg_context);
 
 	return 0;
@@ -905,7 +902,7 @@ static int port_info_set(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	pr_debug("setting port info port %p\n", port);
 	if (!port)
@@ -954,7 +951,7 @@ static int port_info_set(struct vchiq_mmal_instance *instance,
 		 port->component->handle, port->handle);
 
 release_msg:
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -966,7 +963,7 @@ static int port_info_get(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	/* port info time */
 	m.h.type = MMAL_MSG_TYPE_PORT_INFO_GET;
@@ -1049,7 +1046,7 @@ static int port_info_get(struct vchiq_mmal_instance *instance,
 	pr_debug("%s:result:%d component:0x%x port:%d\n",
 		 __func__, ret, port->component->handle, port->handle);
 
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1062,7 +1059,7 @@ static int create_component(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	/* build component create message */
 	m.h.type = MMAL_MSG_TYPE_COMPONENT_CREATE;
@@ -1097,7 +1094,7 @@ static int create_component(struct vchiq_mmal_instance *instance,
 		 component->inputs, component->outputs, component->clocks);
 
 release_msg:
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1109,7 +1106,7 @@ static int destroy_component(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	m.h.type = MMAL_MSG_TYPE_COMPONENT_DESTROY;
 	m.u.component_destroy.component_handle = component->handle;
@@ -1130,7 +1127,7 @@ static int destroy_component(struct vchiq_mmal_instance *instance,
 
 release_msg:
 
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1142,7 +1139,7 @@ static int enable_component(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	m.h.type = MMAL_MSG_TYPE_COMPONENT_ENABLE;
 	m.u.component_enable.component_handle = component->handle;
@@ -1162,7 +1159,7 @@ static int enable_component(struct vchiq_mmal_instance *instance,
 	ret = -rmsg->u.component_enable_reply.status;
 
 release_msg:
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1174,7 +1171,7 @@ static int disable_component(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	m.h.type = MMAL_MSG_TYPE_COMPONENT_DISABLE;
 	m.u.component_disable.component_handle = component->handle;
@@ -1195,7 +1192,7 @@ static int disable_component(struct vchiq_mmal_instance *instance,
 
 release_msg:
 
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1207,7 +1204,7 @@ static int get_version(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	m.h.type = MMAL_MSG_TYPE_GET_VERSION;
 
@@ -1227,7 +1224,7 @@ static int get_version(struct vchiq_mmal_instance *instance,
 	*minor_out = rmsg->u.version.minor;
 
 release_msg:
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1240,7 +1237,7 @@ static int port_action_port(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	m.h.type = MMAL_MSG_TYPE_PORT_ACTION;
 	m.u.port_action_port.component_handle = port->component->handle;
@@ -1269,7 +1266,7 @@ static int port_action_port(struct vchiq_mmal_instance *instance,
 		 port_action_type_names[action_type], action_type);
 
 release_msg:
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1284,7 +1281,7 @@ static int port_action_handle(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	m.h.type = MMAL_MSG_TYPE_PORT_ACTION;
 
@@ -1317,7 +1314,7 @@ static int port_action_handle(struct vchiq_mmal_instance *instance,
 		 action_type, connect_component_handle, connect_port_handle);
 
 release_msg:
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1329,7 +1326,7 @@ static int port_parameter_set(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	m.h.type = MMAL_MSG_TYPE_PORT_PARAMETER_SET;
 
@@ -1358,7 +1355,7 @@ static int port_parameter_set(struct vchiq_mmal_instance *instance,
 		 ret, port->component->handle, port->handle, parameter_id);
 
 release_msg:
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
@@ -1370,7 +1367,7 @@ static int port_parameter_get(struct vchiq_mmal_instance *instance,
 	int ret;
 	struct mmal_msg m;
 	struct mmal_msg *rmsg;
-	struct vchi_held_msg rmsg_handle;
+	struct vchiq_header *rmsg_handle;
 
 	m.h.type = MMAL_MSG_TYPE_PORT_PARAMETER_GET;
 
@@ -1417,7 +1414,7 @@ static int port_parameter_get(struct vchiq_mmal_instance *instance,
 		 ret, port->component->handle, port->handle, parameter_id);
 
 release_msg:
-	vchi_held_msg_release(&rmsg_handle);
+	vchiq_release_message(instance->service->handle, rmsg_handle);
 
 	return ret;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
