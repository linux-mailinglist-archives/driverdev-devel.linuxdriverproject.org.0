Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC941E40CF
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC22120387;
	Wed, 27 May 2020 11:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PumgtxzKVEsx; Wed, 27 May 2020 11:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A99E024DFD;
	Wed, 27 May 2020 11:55:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1A1C1BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B89987E77
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uy91wKtaDlBM for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75FDD87E71
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:49 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 19E44ACB8;
 Wed, 27 May 2020 11:54:50 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 34/50] staging: vchi: Get rid of struct vchi_service
Date: Wed, 27 May 2020 13:53:39 +0200
Message-Id: <20200527115400.31391-35-nsaenzjulienne@suse.de>
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

The structure only contains a single parameter, which is the underlying
vchiq handle. Get rid of the struct and directly pass the handle around.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             | 23 ++---
 .../vc04_services/interface/vchi/vchi.h       | 25 ++---
 .../interface/vchiq_arm/vchiq_shim.c          | 99 +++++--------------
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  | 26 +++--
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 55 ++++++-----
 5 files changed, 84 insertions(+), 144 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c1537a41a2fe..18309578e9a2 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -9,7 +9,7 @@
 
 struct bcm2835_audio_instance {
 	struct device *dev;
-	struct vchi_service *service;
+	unsigned service_handle;
 	struct completion msg_avail_comp;
 	struct mutex vchi_mutex;
 	struct bcm2835_alsa_stream *alsa_stream;
@@ -25,12 +25,12 @@ MODULE_PARM_DESC(force_bulk, "Force use of vchiq bulk for audio");
 static void bcm2835_audio_lock(struct bcm2835_audio_instance *instance)
 {
 	mutex_lock(&instance->vchi_mutex);
-	vchi_service_use(instance->service);
+	vchi_service_use(instance->service_handle);
 }
 
 static void bcm2835_audio_unlock(struct bcm2835_audio_instance *instance)
 {
-	vchi_service_release(instance->service);
+	vchi_service_release(instance->service_handle);
 	mutex_unlock(&instance->vchi_mutex);
 }
 
@@ -44,7 +44,7 @@ static int bcm2835_audio_send_msg_locked(struct bcm2835_audio_instance *instance
 		init_completion(&instance->msg_avail_comp);
 	}
 
-	status = vchi_queue_kernel_message(instance->service,
+	status = vchi_queue_kernel_message(instance->service_handle,
 					   m, sizeof(*m));
 	if (status) {
 		dev_err(instance->dev,
@@ -133,7 +133,7 @@ vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 
 	/* Open the VCHI service connections */
 	status = vchi_service_open(vchiq_instance, &params,
-				   &instance->service);
+				   &instance->service_handle);
 
 	if (status) {
 		dev_err(instance->dev,
@@ -143,7 +143,7 @@ vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 	}
 
 	/* Finished with the service for now */
-	vchi_service_release(instance->service);
+	vchi_service_release(instance->service_handle);
 
 	return 0;
 }
@@ -153,10 +153,10 @@ static void vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
 	int status;
 
 	mutex_lock(&instance->vchi_mutex);
-	vchi_service_use(instance->service);
+	vchi_service_use(instance->service_handle);
 
 	/* Close all VCHI service connections */
-	status = vchi_service_close(instance->service);
+	status = vchi_service_close(instance->service_handle);
 	if (status) {
 		dev_err(instance->dev,
 			"failed to close VCHI service connection (status=%d)\n",
@@ -226,7 +226,8 @@ int bcm2835_audio_open(struct bcm2835_alsa_stream *alsa_stream)
 		goto deinit;
 
 	bcm2835_audio_lock(instance);
-	vchi_get_peer_version(instance->service, &instance->peer_version);
+	vchi_get_peer_version(instance->service_handle,
+			      &instance->peer_version);
 	bcm2835_audio_unlock(instance);
 	if (instance->peer_version < 2 || force_bulk)
 		instance->max_packet = 0; /* bulk transfer */
@@ -342,7 +343,7 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 	count = size;
 	if (!instance->max_packet) {
 		/* Send the message to the videocore */
-		status = vchi_bulk_queue_transmit(instance->service,
+		status = vchi_bulk_queue_transmit(instance->service_handle,
 						  src, count,
 						  VCHIQ_BULK_MODE_BLOCKING,
 						  NULL);
@@ -350,7 +351,7 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 		while (count > 0) {
 			int bytes = min(instance->max_packet, count);
 
-			status = vchi_queue_kernel_message(instance->service,
+			status = vchi_queue_kernel_message(instance->service_handle,
 							   src, bytes);
 			src += bytes;
 			count -= bytes;
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 4afa6e9f57c4..74fd169e079a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -21,10 +21,6 @@ struct vchi_held_msg {
 	void *message;
 };
 
-struct vchi_service {
-	unsigned int handle;
-};
-
 // Opaque handle for a VCHIQ instance
 struct vchiq_instance;
 
@@ -46,24 +42,23 @@ extern int32_t vchi_disconnect(struct vchiq_instance *instance);
  * Global service API
  *****************************************************************************/
 // Routine to open a named service
-extern int32_t vchi_service_open(struct vchiq_instance *instance,
-				 struct vchiq_service_params *setup,
-				 struct vchi_service **service);
+extern int vchi_service_open(struct vchiq_instance *instance,
+			    struct vchiq_service_params *params,
+			    unsigned *handle);
 
-extern int32_t vchi_get_peer_version(struct vchi_service *service,
-				     short *peer_version);
+extern int32_t vchi_get_peer_version(unsigned handle, short *peer_version);
 
 // Routine to close a named service
-extern int32_t vchi_service_close(struct vchi_service *service);
+extern int32_t vchi_service_close(unsigned handle);
 
 // Routine to increment ref count on a named service
-extern int32_t vchi_service_use(struct vchi_service *service);
+extern int32_t vchi_service_use(unsigned handle);
 
 // Routine to decrement ref count on a named service
-extern int32_t vchi_service_release(struct vchi_service *service);
+extern int32_t vchi_service_release(unsigned handle);
 
 /* Routine to send a message from kernel memory across a service */
-extern int vchi_queue_kernel_message(struct vchi_service *service, void *data,
+extern int vchi_queue_kernel_message(unsigned handle, void *data,
 				     unsigned int size);
 
 // Routine to look at a message in place.
@@ -87,14 +82,14 @@ extern int32_t vchi_held_msg_release(struct vchi_held_msg *message);
  *****************************************************************************/
 
 // Routine to prepare interface for a transfer from the other side
-extern int32_t vchi_bulk_queue_receive(struct vchi_service *service,
+extern int32_t vchi_bulk_queue_receive(unsigned handle,
 				       void *data_dst,
 				       uint32_t data_size,
 				       enum vchiq_bulk_mode mode,
 				       void *transfer_handle);
 
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
-extern int32_t vchi_bulk_queue_transmit(struct vchi_service *service,
+extern int32_t vchi_bulk_queue_transmit(unsigned handle,
 					const void *data_src,
 					uint32_t data_size,
 				        enum vchiq_bulk_mode mode,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index e76399e083f6..578346965da6 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -10,14 +10,12 @@
 #include "vchiq.h"
 #include "vchiq_core.h"
 
-int vchi_queue_kernel_message(struct vchi_service *service, void *data,
-			      unsigned int size)
+int vchi_queue_kernel_message(unsigned handle, void *data, unsigned int size)
 {
 	enum vchiq_status status;
 
 	while (1) {
-		status = vchiq_queue_kernel_message(service->handle, data,
-						    size);
+		status = vchiq_queue_kernel_message(handle, data, size);
 
 		/*
 		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
@@ -48,15 +46,15 @@ EXPORT_SYMBOL(vchi_queue_kernel_message);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_receive(struct vchi_service *service, void *data_dst,
+int32_t vchi_bulk_queue_receive(unsigned handle, void *data_dst,
 				uint32_t data_size, enum vchiq_bulk_mode mode,
 				void *bulk_handle)
 {
 	enum vchiq_status status;
 
 	while (1) {
-		status = vchiq_bulk_receive(service->handle, data_dst,
-			data_size, bulk_handle, mode);
+		status = vchiq_bulk_receive(handle, data_dst, data_size,
+					    bulk_handle, mode);
 		/*
 		 * vchiq_bulk_receive() may return VCHIQ_RETRY, so we need to
 		 * implement a retry mechanism since this function is supposed
@@ -86,17 +84,15 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_transmit(struct vchi_service *service,
-				 const void *data_src,
-				 uint32_t data_size,
-				 enum vchiq_bulk_mode mode,
+int32_t vchi_bulk_queue_transmit(unsigned handle, const void *data_src,
+				 uint32_t data_size, enum vchiq_bulk_mode mode,
 				 void *bulk_handle)
 {
 	enum vchiq_status status;
 
 	while (1) {
-		status = vchiq_bulk_transmit(service->handle, data_src,
-			data_size, bulk_handle, mode);
+		status = vchiq_bulk_transmit(handle, data_src, data_size,
+					     bulk_handle, mode);
 
 		/*
 		 * vchiq_bulk_transmit() may return VCHIQ_RETRY, so we need to
@@ -245,7 +241,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  * Arguments: struct vchiq_instance *instance
  *            struct service_creation *setup,
- *            struct vchi_service **service
+ *            unsigned *handle
  *
  * Description: Routine to open a service
  *
@@ -253,103 +249,54 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  ***********************************************************/
 
-static struct vchi_service *service_alloc(void)
-{
-	return kzalloc(sizeof(struct vchi_service), GFP_KERNEL);
-}
-
-static void service_free(struct vchi_service *service)
-{
-	if (service)
-		kfree(service);
-}
-
 int32_t vchi_service_open(struct vchiq_instance *instance,
-	struct vchiq_service_params *params,
-	struct vchi_service **service)
+		      struct vchiq_service_params *params,
+		      unsigned *handle)
 {
-
-	*service = service_alloc();
-	if (service) {
-		enum vchiq_status status;
-
-		status = vchiq_open_service(instance, params,
-			&((*service)->handle));
-		if (status != VCHIQ_SUCCESS) {
-			service_free(*service);
-			*service = NULL;
-		}
-	}
-
-	return *service ? 0 : -1;
+	return vchiq_open_service(instance, params, handle);
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-int32_t vchi_service_close(struct vchi_service *service)
+int32_t vchi_service_close(unsigned handle)
 {
-	int32_t ret = -1;
-
-	if (service) {
-		enum vchiq_status status = vchiq_close_service(service->handle);
-		if (status == VCHIQ_SUCCESS)
-			service_free(service);
-
-		ret = status;
-	}
-	return ret;
+	return vchiq_close_service(handle);
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_get_peer_version(struct vchi_service *service, short *peer_version)
+int32_t vchi_get_peer_version(unsigned handle, short *peer_version)
 {
-	int32_t ret = -1;
-
-	if (service) {
-		enum vchiq_status status;
-
-		status = vchiq_get_peer_version(service->handle, peer_version);
-		ret = status;
-	}
-	return ret;
+	return vchiq_get_peer_version(handle, peer_version);
 }
 EXPORT_SYMBOL(vchi_get_peer_version);
 
 /***********************************************************
  * Name: vchi_service_use
  *
- * Arguments: struct vchi_service *service
+ * Arguments: unsigned handle
  *
  * Description: Routine to increment refcount on a service
  *
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_use(struct vchi_service *service)
+int32_t vchi_service_use(unsigned handle)
 {
-	int32_t ret = -1;
-
-	if (service)
-		ret = vchiq_use_service(service->handle);
-	return ret;
+	return vchiq_use_service(handle);
 }
 EXPORT_SYMBOL(vchi_service_use);
 
 /***********************************************************
  * Name: vchi_service_release
  *
- * Arguments: struct vchi_service *service
+ * Arguments: unsigned handle
  *
  * Description: Routine to decrement refcount on a service
  *
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_release(struct vchi_service *service)
+int32_t vchi_service_release(unsigned handle)
 {
-	int32_t ret = -1;
-
-	if (service)
-		ret = vchiq_release_service(service->handle);
-	return ret;
+	return vchiq_release_service(handle);
 }
 EXPORT_SYMBOL(vchi_service_release);
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index a37607d07335..b0339b5438aa 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -47,7 +47,7 @@ struct sm_cmd_rsp_blk {
 };
 
 struct sm_instance {
-	struct vchi_service *service;
+	unsigned service_handle;
 	struct task_struct *io_thread;
 	struct completion io_cmplt;
 
@@ -76,13 +76,9 @@ struct sm_instance {
 
 /* ---- Private Functions ------------------------------------------------ */
 static int
-bcm2835_vchi_msg_queue(struct vchi_service *service,
-		       void *data,
-		       unsigned int size)
+bcm2835_vchi_msg_queue(unsigned handle, void *data, unsigned int size)
 {
-	return vchi_queue_kernel_message(service,
-					 data,
-					 size);
+	return vchi_queue_kernel_message(handle, data, size);
 }
 
 static struct
@@ -187,13 +183,13 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 	while (1) {
 		if (svc_use)
-			vchi_service_release(instance->service);
+			vchi_service_release(instance->service_handle);
 		svc_use = 0;
 
 		if (wait_for_completion_interruptible(&instance->io_cmplt))
 			continue;
 
-		vchi_service_use(instance->service);
+		vchi_service_use(instance->service_handle);
 		svc_use = 1;
 
 		do {
@@ -214,7 +210,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 			/* Send the command */
 			status =
-				bcm2835_vchi_msg_queue(instance->service,
+				bcm2835_vchi_msg_queue(instance->service_handle,
 						       cmd->msg, cmd->length);
 			if (status) {
 				pr_err("%s: failed to queue message (%d)",
@@ -237,7 +233,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 		} while (1);
 
-		while (!vchi_msg_hold(instance->service->handle,
+		while (!vchi_msg_hold(instance->service_handle,
 				      (void **)&reply, &reply_len, &msg)) {
 			if (reply->trans_id & 0x80000000) {
 				/* Async event or cmd from the VPU */
@@ -322,7 +318,7 @@ struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
 	params.userdata = instance;
 
 	/* Open the VCHI service connections */
-	status = vchi_service_open(vchiq_instance, &params, &instance->service);
+	status = vchi_service_open(vchiq_instance, &params, &instance->service_handle);
 	if (status) {
 		pr_err("%s: failed to open VCHI service (%d)",
 		       __func__, status);
@@ -346,7 +342,7 @@ struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
 	return instance;
 
 err_close_services:
-	vchi_service_close(instance->service);
+	vchi_service_close(instance->service_handle);
 	kfree(instance);
 	pr_debug("%s: FAILED", __func__);
 	return NULL;
@@ -368,8 +364,8 @@ int vc_sm_cma_vchi_stop(struct sm_instance **handle)
 
 	instance = *handle;
 
-	vchi_service_use(instance->service);
-	vchi_service_close(instance->service);
+	vchi_service_use(instance->service_handle);
+	vchi_service_close(instance->service_handle);
 
 	kfree(instance);
 
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index a3ad8aa8b8cc..3707212d8e7e 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -170,7 +170,7 @@ struct mmal_msg_context {
 };
 
 struct vchiq_mmal_instance {
-	struct vchi_service *service;
+	unsigned service_handle;
 
 	/* ensure serialised access to service */
 	struct mutex vchiq_mutex;
@@ -292,8 +292,8 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 		/* Dummy receive to ensure the buffers remain in order */
 		len = 8;
 	/* queue the bulk submission */
-	vchi_service_use(instance->service);
-	ret = vchi_bulk_queue_receive(instance->service,
+	vchi_service_use(instance->service_handle);
+	ret = vchi_bulk_queue_receive(instance->service_handle,
 				      msg_context->u.bulk.buffer->buffer,
 				      /* Actual receive needs to be a multiple
 				       * of 4 bytes
@@ -302,7 +302,7 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 				      VCHIQ_BULK_MODE_CALLBACK,
 				      msg_context);
 
-	vchi_service_release(instance->service);
+	vchi_service_release(instance->service_handle);
 
 	if (ret != 0)
 		pr_err("%s: ctx: %p, vchi_bulk_queue_receive failed %d\n",
@@ -382,7 +382,7 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	if (!port->enabled)
 		return -EINVAL;
 
-	pr_debug("instance:%p buffer:%p\n", instance->service, buf);
+	pr_debug("instance:%u buffer:%p\n", instance->service_handle, buf);
 
 	/* get context */
 	if (!buf->msg_context) {
@@ -450,14 +450,14 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	/* no payload in message */
 	m.u.buffer_from_host.payload_in_message = 0;
 
-	vchi_service_use(instance->service);
+	vchi_service_use(instance->service_handle);
 
-	ret = vchi_queue_kernel_message(instance->service,
+	ret = vchi_queue_kernel_message(instance->service_handle,
 					&m,
 					sizeof(struct mmal_msg_header) +
 					sizeof(m.u.buffer_from_host));
 
-	vchi_service_release(instance->service);
+	vchi_service_release(instance->service_handle);
 
 	return ret;
 }
@@ -804,14 +804,14 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 	DBG_DUMP_MSG(msg, (sizeof(struct mmal_msg_header) + payload_len),
 		     ">>> sync message");
 
-	vchi_service_use(instance->service);
+	vchi_service_use(instance->service_handle);
 
-	ret = vchi_queue_kernel_message(instance->service,
+	ret = vchi_queue_kernel_message(instance->service_handle,
 					msg,
 					sizeof(struct mmal_msg_header) +
 					payload_len);
 
-	vchi_service_release(instance->service);
+	vchi_service_release(instance->service_handle);
 
 	if (ret) {
 		pr_err("error %d queuing message\n", ret);
@@ -951,7 +951,7 @@ static int port_info_set(struct vchiq_mmal_instance *instance,
 		 port->component->handle, port->handle);
 
 release_msg:
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1046,7 +1046,7 @@ static int port_info_get(struct vchiq_mmal_instance *instance,
 	pr_debug("%s:result:%d component:0x%x port:%d\n",
 		 __func__, ret, port->component->handle, port->handle);
 
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1094,7 +1094,7 @@ static int create_component(struct vchiq_mmal_instance *instance,
 		 component->inputs, component->outputs, component->clocks);
 
 release_msg:
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1127,7 +1127,7 @@ static int destroy_component(struct vchiq_mmal_instance *instance,
 
 release_msg:
 
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1159,7 +1159,7 @@ static int enable_component(struct vchiq_mmal_instance *instance,
 	ret = -rmsg->u.component_enable_reply.status;
 
 release_msg:
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1192,7 +1192,7 @@ static int disable_component(struct vchiq_mmal_instance *instance,
 
 release_msg:
 
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1224,7 +1224,7 @@ static int get_version(struct vchiq_mmal_instance *instance,
 	*minor_out = rmsg->u.version.minor;
 
 release_msg:
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1266,7 +1266,7 @@ static int port_action_port(struct vchiq_mmal_instance *instance,
 		 port_action_type_names[action_type], action_type);
 
 release_msg:
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1314,7 +1314,7 @@ static int port_action_handle(struct vchiq_mmal_instance *instance,
 		 action_type, connect_component_handle, connect_port_handle);
 
 release_msg:
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1355,7 +1355,7 @@ static int port_parameter_set(struct vchiq_mmal_instance *instance,
 		 ret, port->component->handle, port->handle, parameter_id);
 
 release_msg:
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -1414,7 +1414,7 @@ static int port_parameter_get(struct vchiq_mmal_instance *instance,
 		 ret, port->component->handle, port->handle, parameter_id);
 
 release_msg:
-	vchiq_release_message(instance->service->handle, rmsg_handle);
+	vchiq_release_message(instance->service_handle, rmsg_handle);
 
 	return ret;
 }
@@ -2068,9 +2068,9 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 	if (mutex_lock_interruptible(&instance->vchiq_mutex))
 		return -EINTR;
 
-	vchi_service_use(instance->service);
+	vchi_service_use(instance->service_handle);
 
-	status = vchi_service_close(instance->service);
+	status = vchi_service_close(instance->service_handle);
 	if (status != 0)
 		pr_err("mmal-vchiq: VCHIQ close failed\n");
 
@@ -2148,21 +2148,22 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	if (!instance->bulk_wq)
 		goto err_free;
 
-	status = vchi_service_open(vchiq_instance, &params, &instance->service);
+	status = vchi_service_open(vchiq_instance, &params,
+				   &instance->service_handle);
 	if (status) {
 		pr_err("Failed to open VCHI service connection (status=%d)\n",
 		       status);
 		goto err_close_services;
 	}
 
-	vchi_service_release(instance->service);
+	vchi_service_release(instance->service_handle);
 
 	*out_instance = instance;
 
 	return 0;
 
 err_close_services:
-	vchi_service_close(instance->service);
+	vchi_service_close(instance->service_handle);
 	destroy_workqueue(instance->bulk_wq);
 err_free:
 	vfree(instance->bulk_scratch);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
