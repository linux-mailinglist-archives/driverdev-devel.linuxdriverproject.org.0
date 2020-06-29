Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6935B20CF65
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:10:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0BFC893E4;
	Mon, 29 Jun 2020 15:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b6TYTtS4CpVZ; Mon, 29 Jun 2020 15:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FF7F893D4;
	Mon, 29 Jun 2020 15:10:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A4231BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 074FF875EA
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o4prg9v3J5_B for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:09:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 45EC4875E0
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:09:59 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id D2B17AF6F;
 Mon, 29 Jun 2020 15:09:57 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 12/47] staging: vchi: Unify struct shim_service and struct
 vchi_service_handle
Date: Mon, 29 Jun 2020 17:09:10 +0200
Message-Id: <20200629150945.10720-13-nsaenzjulienne@suse.de>
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

The idea behind struct vchi_service_handle is to create an opaque handle
to struct shim_service. This can be achieved by doing a forward
declaration of struct shim_service, which will avoid unwarranted casts
and pointer play.

Ultimately as a rename is due all over the vchi user space, rename
struct shim_service into struvt vchi_service, which is more consistent
with the rest of the exposed API.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes since v1:
- Open service only if allocation was successful

 .../bcm2835-audio/bcm2835-vchiq.c             | 24 +++----
 .../vc04_services/interface/vchi/vchi.h       | 27 ++++---
 .../interface/vchiq_arm/vchiq_shim.c          | 70 ++++++++-----------
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 34 ++++-----
 4 files changed, 70 insertions(+), 85 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 8c9390153a26..62eef233275f 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -9,7 +9,7 @@
 
 struct bcm2835_audio_instance {
 	struct device *dev;
-	struct vchi_service_handle *vchi_handle;
+	struct vchi_service *service;
 	struct completion msg_avail_comp;
 	struct mutex vchi_mutex;
 	struct bcm2835_alsa_stream *alsa_stream;
@@ -25,12 +25,12 @@ MODULE_PARM_DESC(force_bulk, "Force use of vchiq bulk for audio");
 static void bcm2835_audio_lock(struct bcm2835_audio_instance *instance)
 {
 	mutex_lock(&instance->vchi_mutex);
-	vchi_service_use(instance->vchi_handle);
+	vchi_service_use(instance->service);
 }
 
 static void bcm2835_audio_unlock(struct bcm2835_audio_instance *instance)
 {
-	vchi_service_release(instance->vchi_handle);
+	vchi_service_release(instance->service);
 	mutex_unlock(&instance->vchi_mutex);
 }
 
@@ -44,7 +44,7 @@ static int bcm2835_audio_send_msg_locked(struct bcm2835_audio_instance *instance
 		init_completion(&instance->msg_avail_comp);
 	}
 
-	status = vchi_queue_kernel_message(instance->vchi_handle,
+	status = vchi_queue_kernel_message(instance->service,
 					   m, sizeof(*m));
 	if (status) {
 		dev_err(instance->dev,
@@ -101,7 +101,7 @@ static void audio_vchi_callback(void *param,
 	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
 		return;
 
-	status = vchi_msg_dequeue(instance->vchi_handle,
+	status = vchi_msg_dequeue(instance->service,
 				  &m, sizeof(m), &msg_len, VCHI_FLAGS_NONE);
 	if (status)
 		return;
@@ -135,7 +135,7 @@ vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 
 	/* Open the VCHI service connections */
 	status = vchi_service_open(vchiq_instance, &params,
-				   &instance->vchi_handle);
+				   &instance->service);
 
 	if (status) {
 		dev_err(instance->dev,
@@ -145,7 +145,7 @@ vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 	}
 
 	/* Finished with the service for now */
-	vchi_service_release(instance->vchi_handle);
+	vchi_service_release(instance->service);
 
 	return 0;
 }
@@ -155,10 +155,10 @@ static void vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
 	int status;
 
 	mutex_lock(&instance->vchi_mutex);
-	vchi_service_use(instance->vchi_handle);
+	vchi_service_use(instance->service);
 
 	/* Close all VCHI service connections */
-	status = vchi_service_close(instance->vchi_handle);
+	status = vchi_service_close(instance->service);
 	if (status) {
 		dev_err(instance->dev,
 			"failed to close VCHI service connection (status=%d)\n",
@@ -228,7 +228,7 @@ int bcm2835_audio_open(struct bcm2835_alsa_stream *alsa_stream)
 		goto deinit;
 
 	bcm2835_audio_lock(instance);
-	vchi_get_peer_version(instance->vchi_handle, &instance->peer_version);
+	vchi_get_peer_version(instance->service, &instance->peer_version);
 	bcm2835_audio_unlock(instance);
 	if (instance->peer_version < 2 || force_bulk)
 		instance->max_packet = 0; /* bulk transfer */
@@ -344,7 +344,7 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 	count = size;
 	if (!instance->max_packet) {
 		/* Send the message to the videocore */
-		status = vchi_bulk_queue_transmit(instance->vchi_handle,
+		status = vchi_bulk_queue_transmit(instance->service,
 						  src, count,
 						  VCHI_FLAGS_BLOCK_UNTIL_DATA_READ,
 						  NULL);
@@ -352,7 +352,7 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 		while (count > 0) {
 			int bytes = min(instance->max_packet, count);
 
-			status = vchi_queue_kernel_message(instance->vchi_handle,
+			status = vchi_queue_kernel_message(instance->service,
 							   src, bytes);
 			src += bytes;
 			count -= bytes;
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 6b73d8fb394a..ff302e6b8b1b 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -53,7 +53,7 @@ struct service_creation {
 struct vchiq_instance;
 
 // Opaque handle for a server or client
-struct vchi_service_handle;
+struct vchi_service;
 
 /******************************************************************************
  * Global funcs - implementation is specific to which side you are on
@@ -75,30 +75,27 @@ extern int32_t vchi_disconnect(struct vchiq_instance *instance);
 // Routine to open a named service
 extern int32_t vchi_service_open(struct vchiq_instance *instance,
 				 struct service_creation *setup,
-				 struct vchi_service_handle **handle);
+				 struct vchi_service **service);
 
-extern int32_t vchi_get_peer_version(const struct vchi_service_handle *handle,
+extern int32_t vchi_get_peer_version(struct vchi_service *service,
 				     short *peer_version);
 
 // Routine to close a named service
-extern int32_t vchi_service_close(const struct vchi_service_handle *handle);
+extern int32_t vchi_service_close(struct vchi_service *service);
 
 // Routine to increment ref count on a named service
-extern int32_t vchi_service_use(const struct vchi_service_handle *handle);
+extern int32_t vchi_service_use(struct vchi_service *service);
 
 // Routine to decrement ref count on a named service
-extern int32_t vchi_service_release(const struct vchi_service_handle *handle);
+extern int32_t vchi_service_release(struct vchi_service *service);
 
 /* Routine to send a message from kernel memory across a service */
-extern int
-vchi_queue_kernel_message(struct vchi_service_handle *handle,
-			  void *data,
-			  unsigned int size);
+extern int vchi_queue_kernel_message(struct vchi_service *service, void *data,
+				     unsigned int size);
 
 // Routine to receive a msg from a service
 // Dequeue is equivalent to hold, copy into client buffer, release
-extern int32_t vchi_msg_dequeue(struct vchi_service_handle *handle,
-				void *data,
+extern int32_t vchi_msg_dequeue(struct vchi_service *service, void *data,
 				uint32_t max_data_size_to_read,
 				uint32_t *actual_msg_size,
 				enum vchi_flags flags);
@@ -106,7 +103,7 @@ extern int32_t vchi_msg_dequeue(struct vchi_service_handle *handle,
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
-extern int32_t vchi_msg_hold(struct vchi_service_handle *handle,
+extern int32_t vchi_msg_hold(struct vchi_service *service,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
 			     enum vchi_flags flags,
@@ -125,14 +122,14 @@ extern int32_t vchi_held_msg_release(struct vchi_held_msg *message);
  *****************************************************************************/
 
 // Routine to prepare interface for a transfer from the other side
-extern int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle,
+extern int32_t vchi_bulk_queue_receive(struct vchi_service *service,
 				       void *data_dst,
 				       uint32_t data_size,
 				       enum vchi_flags flags,
 				       void *transfer_handle);
 
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
-extern int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
+extern int32_t vchi_bulk_queue_transmit(struct vchi_service *service,
 					const void *data_src,
 					uint32_t data_size,
 					enum vchi_flags flags,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 8758704d61c9..39502786b41c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -9,7 +9,7 @@
 
 #include "vchiq_util.h"
 
-struct shim_service {
+struct vchi_service {
 	unsigned int handle;
 
 	struct vchiu_queue queue;
@@ -18,10 +18,9 @@ struct shim_service {
 	void *callback_param;
 };
 
-int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
-			       unsigned int size)
+int vchi_queue_kernel_message(struct vchi_service *service, void *data,
+			      unsigned int size)
 {
-	struct shim_service *service = (struct shim_service *)handle;
 	enum vchiq_status status;
 
 	while (1) {
@@ -57,11 +56,10 @@ EXPORT_SYMBOL(vchi_queue_kernel_message);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_dst,
+int32_t vchi_bulk_queue_receive(struct vchi_service *service, void *data_dst,
 				uint32_t data_size, enum vchi_flags flags,
 				void *bulk_handle)
 {
-	struct shim_service *service = (struct shim_service *)handle;
 	enum vchiq_bulk_mode mode;
 	enum vchiq_status status;
 
@@ -115,13 +113,12 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
+int32_t vchi_bulk_queue_transmit(struct vchi_service *service,
 				 const void *data_src,
 				 uint32_t data_size,
 				 enum vchi_flags flags,
 				 void *bulk_handle)
 {
-	struct shim_service *service = (struct shim_service *)handle;
 	enum vchiq_bulk_mode mode;
 	enum vchiq_status status;
 
@@ -166,7 +163,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 /***********************************************************
  * Name: vchi_msg_dequeue
  *
- * Arguments:  struct vchi_service_handle *handle,
+ * Arguments:  struct vchi_service *service,
  *             void *data,
  *             uint32_t max_data_size_to_read,
  *             uint32_t *actual_msg_size
@@ -177,11 +174,10 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_dequeue(struct vchi_service_handle *handle, void *data,
+int32_t vchi_msg_dequeue(struct vchi_service *service, void *data,
 			 uint32_t max_data_size_to_read,
 			 uint32_t *actual_msg_size, enum vchi_flags flags)
 {
-	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
 
 	WARN_ON((flags != VCHI_FLAGS_NONE) &&
@@ -235,7 +231,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
 /***********************************************************
  * Name: vchi_msg_hold
  *
- * Arguments:  struct vchi_service_handle *handle,
+ * Arguments:  struct vchi_service *service,
  *             void **data,
  *             uint32_t *msg_size,
  *             enum vchi_flags flags,
@@ -249,11 +245,10 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_hold(struct vchi_service_handle *handle, void **data,
+int32_t vchi_msg_hold(struct vchi_service *service, void **data,
 		      uint32_t *msg_size, enum vchi_flags flags,
 		      struct vchi_held_msg *message_handle)
 {
-	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
 
 	WARN_ON((flags != VCHI_FLAGS_NONE) &&
@@ -343,7 +338,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  * Arguments: struct vchiq_instance *instance
  *            struct service_creation *setup,
- *            struct vchi_service_handle **handle
+ *            struct vchi_service **service
  *
  * Description: Routine to open a service
  *
@@ -356,8 +351,8 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 				    unsigned int handle,
 				    void *bulk_user)
 {
-	struct shim_service *service =
-		(struct shim_service *)VCHIQ_GET_SERVICE_USERDATA(handle);
+	struct vchi_service *service =
+		(struct vchi_service *)VCHIQ_GET_SERVICE_USERDATA(handle);
 
 	if (!service->callback)
 		goto release;
@@ -407,10 +402,10 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 	return VCHIQ_SUCCESS;
 }
 
-static struct shim_service *service_alloc(struct vchiq_instance *instance,
+static struct vchi_service *service_alloc(struct vchiq_instance *instance,
 	struct service_creation *setup)
 {
-	struct shim_service *service = kzalloc(sizeof(struct shim_service), GFP_KERNEL);
+	struct vchi_service *service = kzalloc(sizeof(struct vchi_service), GFP_KERNEL);
 
 	(void)instance;
 
@@ -427,7 +422,7 @@ static struct shim_service *service_alloc(struct vchiq_instance *instance,
 	return service;
 }
 
-static void service_free(struct shim_service *service)
+static void service_free(struct vchi_service *service)
 {
 	if (service) {
 		vchiu_queue_delete(&service->queue);
@@ -437,40 +432,36 @@ static void service_free(struct shim_service *service)
 
 int32_t vchi_service_open(struct vchiq_instance *instance,
 	struct service_creation *setup,
-	struct vchi_service_handle **handle)
+	struct vchi_service **service)
 {
-	struct shim_service *service = service_alloc(instance, setup);
 
-	*handle = (struct vchi_service_handle *)service;
-
-	if (service) {
+	*service = service_alloc(instance, setup);
+	if (*service) {
 		struct vchiq_service_params params;
 		enum vchiq_status status;
 
 		memset(&params, 0, sizeof(params));
 		params.fourcc = setup->service_id;
 		params.callback = shim_callback;
-		params.userdata = service;
+		params.userdata = *service;
 		params.version = setup->version.version;
 		params.version_min = setup->version.version_min;
 
 		status = vchiq_open_service(instance, &params,
-			&service->handle);
+			&((*service)->handle));
 		if (status != VCHIQ_SUCCESS) {
-			service_free(service);
-			service = NULL;
-			*handle = NULL;
+			service_free(*service);
+			*service = NULL;
 		}
 	}
 
-	return service ? 0 : -1;
+	return *service ? 0 : -1;
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-int32_t vchi_service_close(const struct vchi_service_handle *handle)
+int32_t vchi_service_close(struct vchi_service *service)
 {
 	int32_t ret = -1;
-	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service) {
 		enum vchiq_status status = vchiq_close_service(service->handle);
@@ -483,10 +474,9 @@ int32_t vchi_service_close(const struct vchi_service_handle *handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_get_peer_version(const struct vchi_service_handle *handle, short *peer_version)
+int32_t vchi_get_peer_version(struct vchi_service *service, short *peer_version)
 {
 	int32_t ret = -1;
-	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service) {
 		enum vchiq_status status;
@@ -501,18 +491,17 @@ EXPORT_SYMBOL(vchi_get_peer_version);
 /***********************************************************
  * Name: vchi_service_use
  *
- * Arguments: const struct vchi_service_handle *handle
+ * Arguments: struct vchi_service *service
  *
  * Description: Routine to increment refcount on a service
  *
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_use(const struct vchi_service_handle *handle)
+int32_t vchi_service_use(struct vchi_service *service)
 {
 	int32_t ret = -1;
 
-	struct shim_service *service = (struct shim_service *)handle;
 	if (service)
 		ret = vchiq_use_service(service->handle);
 	return ret;
@@ -522,18 +511,17 @@ EXPORT_SYMBOL(vchi_service_use);
 /***********************************************************
  * Name: vchi_service_release
  *
- * Arguments: const struct vchi_service_handle *handle
+ * Arguments: struct vchi_service *service
  *
  * Description: Routine to decrement refcount on a service
  *
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_release(const struct vchi_service_handle *handle)
+int32_t vchi_service_release(struct vchi_service *service)
 {
 	int32_t ret = -1;
 
-	struct shim_service *service = (struct shim_service *)handle;
 	if (service)
 		ret = vchiq_release_service(service->handle);
 	return ret;
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 30f97c4bb9fc..05ac1739db5f 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -165,7 +165,7 @@ struct mmal_msg_context {
 };
 
 struct vchiq_mmal_instance {
-	struct vchi_service_handle *handle;
+	struct vchi_service *service;
 
 	/* ensure serialised access to service */
 	struct mutex vchiq_mutex;
@@ -294,8 +294,8 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 		/* Dummy receive to ensure the buffers remain in order */
 		len = 8;
 	/* queue the bulk submission */
-	vchi_service_use(instance->handle);
-	ret = vchi_bulk_queue_receive(instance->handle,
+	vchi_service_use(instance->service);
+	ret = vchi_bulk_queue_receive(instance->service,
 				      msg_context->u.bulk.buffer->buffer,
 				      /* Actual receive needs to be a multiple
 				       * of 4 bytes
@@ -305,7 +305,7 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 				      VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
 				      msg_context);
 
-	vchi_service_release(instance->handle);
+	vchi_service_release(instance->service);
 
 	if (ret != 0)
 		pr_err("%s: ctx: %p, vchi_bulk_queue_receive failed %d\n",
@@ -384,7 +384,7 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	if (!port->enabled)
 		return -EINVAL;
 
-	pr_debug("instance:%p buffer:%p\n", instance->handle, buf);
+	pr_debug("instance:%p buffer:%p\n", instance->service, buf);
 
 	/* get context */
 	if (!buf->msg_context) {
@@ -439,14 +439,14 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	/* no payload in message */
 	m.u.buffer_from_host.payload_in_message = 0;
 
-	vchi_service_use(instance->handle);
+	vchi_service_use(instance->service);
 
-	ret = vchi_queue_kernel_message(instance->handle,
+	ret = vchi_queue_kernel_message(instance->service,
 					&m,
 					sizeof(struct mmal_msg_header) +
 					sizeof(m.u.buffer_from_host));
 
-	vchi_service_release(instance->handle);
+	vchi_service_release(instance->service);
 
 	return ret;
 }
@@ -568,7 +568,7 @@ static void service_callback(void *param,
 
 	switch (reason) {
 	case VCHI_CALLBACK_MSG_AVAILABLE:
-		status = vchi_msg_hold(instance->handle, (void **)&msg,
+		status = vchi_msg_hold(instance->service, (void **)&msg,
 				       &msg_len, VCHI_FLAGS_NONE, &msg_handle);
 		if (status) {
 			pr_err("Unable to dequeue a message (%d)\n", status);
@@ -684,14 +684,14 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 	DBG_DUMP_MSG(msg, (sizeof(struct mmal_msg_header) + payload_len),
 		     ">>> sync message");
 
-	vchi_service_use(instance->handle);
+	vchi_service_use(instance->service);
 
-	ret = vchi_queue_kernel_message(instance->handle,
+	ret = vchi_queue_kernel_message(instance->service,
 					msg,
 					sizeof(struct mmal_msg_header) +
 					payload_len);
 
-	vchi_service_release(instance->handle);
+	vchi_service_release(instance->service);
 
 	if (ret) {
 		pr_err("error %d queuing message\n", ret);
@@ -1839,9 +1839,9 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 	if (mutex_lock_interruptible(&instance->vchiq_mutex))
 		return -EINTR;
 
-	vchi_service_use(instance->handle);
+	vchi_service_use(instance->service);
 
-	status = vchi_service_close(instance->handle);
+	status = vchi_service_close(instance->service);
 	if (status != 0)
 		pr_err("mmal-vchiq: VCHIQ close failed\n");
 
@@ -1918,21 +1918,21 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	if (!instance->bulk_wq)
 		goto err_free;
 
-	status = vchi_service_open(vchiq_instance, &params, &instance->handle);
+	status = vchi_service_open(vchiq_instance, &params, &instance->service);
 	if (status) {
 		pr_err("Failed to open VCHI service connection (status=%d)\n",
 		       status);
 		goto err_close_services;
 	}
 
-	vchi_service_release(instance->handle);
+	vchi_service_release(instance->service);
 
 	*out_instance = instance;
 
 	return 0;
 
 err_close_services:
-	vchi_service_close(instance->handle);
+	vchi_service_close(instance->service);
 	destroy_workqueue(instance->bulk_wq);
 err_free:
 	vfree(instance->bulk_scratch);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
