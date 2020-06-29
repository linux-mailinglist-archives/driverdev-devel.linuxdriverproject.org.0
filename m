Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D7F20CF81
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A9E725D30;
	Mon, 29 Jun 2020 15:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n+cOhf7NKoCl; Mon, 29 Jun 2020 15:11:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 17D4A22888;
	Mon, 29 Jun 2020 15:10:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A16011BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 962B5204F2
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wE2cl03bjADw for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:10:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B85F228B4
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:10:07 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 4D05DAFBE;
 Mon, 29 Jun 2020 15:10:05 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 30/47] staging: vchi: Use struct vchiq_service_params
Date: Mon, 29 Jun 2020 17:09:28 +0200
Message-Id: <20200629150945.10720-31-nsaenzjulienne@suse.de>
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

For initialization, vchi has its own params structure, which is then
translated to vchiq's params structure. They are essentially the same,
so lets directly use vchiq's.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  9 +++++----
 .../vc04_services/interface/vchi/vchi.h       | 19 +------------------
 .../interface/vchiq_arm/vchiq_shim.c          | 12 ++----------
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 11 ++++++-----
 4 files changed, 14 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 71750ef891dd..c1537a41a2fe 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -122,11 +122,12 @@ static int
 vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 		   struct bcm2835_audio_instance *instance)
 {
-	struct service_creation params = {
-		.version		= VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
-		.service_id		= VC_AUDIO_SERVER_NAME,
+	struct vchiq_service_params params = {
+		.version		= VC_AUDIOSERV_VER,
+		.version_min		= VC_AUDIOSERV_MIN_VER,
+		.fourcc			= VC_AUDIO_SERVER_NAME,
 		.callback		= audio_vchi_callback,
-		.callback_param		= instance,
+		.userdata		= instance,
 	};
 	int status;
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index cb66ea1ffad2..4afa6e9f57c4 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -8,12 +8,6 @@
  * Global defs
  *****************************************************************************/
 
-struct vchi_version {
-	uint32_t version;
-	uint32_t version_min;
-};
-#define VCHI_VERSION_EX(v_, m_) { v_, m_ }
-
 // Macros to manipulate 'FOURCC' values
 #define MAKE_FOURCC(x) ((int32_t)((x[0] << 24) | (x[1] << 16) | (x[2] << 8) | x[3]))
 
@@ -31,17 +25,6 @@ struct vchi_service {
 	unsigned int handle;
 };
 
-// structure used to provide the information needed to open a server or a client
-struct service_creation {
-	struct vchi_version version;
-	int32_t service_id;
-	enum vchiq_status (*callback)(enum vchiq_reason reason,
-				      struct vchiq_header *header,
-				      unsigned int handle,
-				      void *bulk_userdata);
-	void *callback_param;
-};
-
 // Opaque handle for a VCHIQ instance
 struct vchiq_instance;
 
@@ -64,7 +47,7 @@ extern int32_t vchi_disconnect(struct vchiq_instance *instance);
  *****************************************************************************/
 // Routine to open a named service
 extern int32_t vchi_service_open(struct vchiq_instance *instance,
-				 struct service_creation *setup,
+				 struct vchiq_service_params *setup,
 				 struct vchi_service **service);
 
 extern int32_t vchi_get_peer_version(struct vchi_service *service,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index fb9fd5fec42c..30083927b33d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -265,23 +265,15 @@ static void service_free(struct vchi_service *service)
 }
 
 int32_t vchi_service_open(struct vchiq_instance *instance,
-	struct service_creation *setup,
+	struct vchiq_service_params *params,
 	struct vchi_service **service)
 {
 
 	*service = service_alloc();
 	if (*service) {
-		struct vchiq_service_params params;
 		enum vchiq_status status;
 
-		memset(&params, 0, sizeof(params));
-		params.fourcc = setup->service_id;
-		params.callback = setup->callback;
-		params.userdata = setup->callback_param;
-		params.version = setup->version.version;
-		params.version_min = setup->version.version_min;
-
-		status = vchiq_open_service(instance, &params,
+		status = vchiq_open_service(instance, params,
 			&((*service)->handle));
 		if (status != VCHIQ_SUCCESS) {
 			service_free(*service);
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 2abf0f6664f9..4788bb645dc5 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -1860,11 +1860,12 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	int status;
 	struct vchiq_mmal_instance *instance;
 	static struct vchiq_instance *vchiq_instance;
-	struct service_creation params = {
-		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
-		.service_id		= VC_MMAL_SERVER_NAME,
+	struct vchiq_service_params params = {
+		.version		= VC_MMAL_VER,
+		.version_min		= VC_MMAL_MIN_VER,
+		.fourcc			= VC_MMAL_SERVER_NAME,
 		.callback		= service_callback,
-		.callback_param		= NULL,
+		.userdata		= NULL,
 	};
 
 	/* compile time checks to ensure structure size as they are
@@ -1906,7 +1907,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	mutex_init(&instance->context_map_lock);
 	idr_init_base(&instance->context_map, 1);
 
-	params.callback_param = instance;
+	params.userdata = instance;
 
 	instance->bulk_wq = alloc_ordered_workqueue("mmal-vchiq",
 						    WQ_MEM_RECLAIM);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
