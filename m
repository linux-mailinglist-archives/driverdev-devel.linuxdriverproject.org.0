Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0A21E40B8
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:55:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2175A24723;
	Wed, 27 May 2020 11:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5a6p9RcYnOzB; Wed, 27 May 2020 11:55:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D3A923E65;
	Wed, 27 May 2020 11:54:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B74EF1BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B44B786D2B
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id saS7nXgeozTx for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEE9E86D79
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:35 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AD89AAD17;
 Wed, 27 May 2020 11:54:36 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC 23/50] staging: vchi: Use vchiq's enum vchiq_reason
Date: Wed, 27 May 2020 13:53:28 +0200
Message-Id: <20200527115400.31391-24-nsaenzjulienne@suse.de>
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

enum vchi_callback_reason maps 1:1 to enum vchiq_reason, in an effort to
simplify things, let's use the later, and get rid of the extra
indirection.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  5 +--
 .../interface/vchi/vchi_common.h              | 20 +---------
 .../interface/vchiq_arm/vchiq_shim.c          | 40 +------------------
 .../staging/vc04_services/vc-sm-cma/vc_sm.c   |  1 +
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  |  7 ++--
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 11 +++--
 6 files changed, 14 insertions(+), 70 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 565853ec1e7a..0f97eda4ec90 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -89,8 +89,7 @@ static int bcm2835_audio_send_simple(struct bcm2835_audio_instance *instance,
 	return bcm2835_audio_send_msg(instance, &m, wait);
 }
 
-static void audio_vchi_callback(void *param,
-				const enum vchi_callback_reason reason,
+static void audio_vchi_callback(void *param, const enum vchiq_reason reason,
 				void *msg_handle)
 {
 	struct bcm2835_audio_instance *instance = param;
@@ -99,7 +98,7 @@ static void audio_vchi_callback(void *param,
 	unsigned size;
 	int status;
 
-	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
+	if (reason != VCHIQ_MESSAGE_AVAILABLE)
 		return;
 
 	status = vchi_msg_hold(instance->service, (void **)&m, &size, &handle);
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 52b447c19445..24e8665e214a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -4,27 +4,9 @@
 #ifndef VCHI_COMMON_H_
 #define VCHI_COMMON_H_
 
-//callback reasons when an event occurs on a service
-enum vchi_callback_reason {
-	/*
-	 * This indicates that there is data available handle is the msg id that
-	 * was transmitted with the data
-	 * When a message is received and there was no FULL message available
-	 * previously, send callback
-	 * Tasks get kicked by the callback, reset their event and try and read
-	 * from the fifo until it fails
-	 */
-	VCHI_CALLBACK_SERVICE_CLOSED,
-	VCHI_CALLBACK_MSG_AVAILABLE,
-	VCHI_CALLBACK_BULK_SENT,
-	VCHI_CALLBACK_BULK_RECEIVED,
-	VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
-	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
-};
-
 //Callback used by all services / bulk transfers
 typedef void (*vchi_callback)(void *callback_param, //my service local param
-			      enum vchi_callback_reason reason,
+			      enum vchiq_reason reason,
 			      void *handle); //for transmitting msg's only
 
 #endif // VCHI_COMMON_H_
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 3a5545e0db6b..649a65f02578 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -274,46 +274,10 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 	if (!service->callback)
 		goto release;
 
-	switch (reason) {
-	case VCHIQ_MESSAGE_AVAILABLE:
+	if (reason == VCHIQ_MESSAGE_AVAILABLE)
 		vchiu_queue_push(&service->queue, header);
 
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_MSG_AVAILABLE, NULL);
-
-		break;
-
-	case VCHIQ_BULK_TRANSMIT_DONE:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_BULK_SENT, bulk_user);
-		break;
-
-	case VCHIQ_BULK_RECEIVE_DONE:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_BULK_RECEIVED, bulk_user);
-		break;
-
-	case VCHIQ_SERVICE_CLOSED:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_SERVICE_CLOSED, NULL);
-		break;
-
-	case VCHIQ_BULK_TRANSMIT_ABORTED:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
-				  bulk_user);
-		break;
-
-	case VCHIQ_BULK_RECEIVE_ABORTED:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
-				  bulk_user);
-		break;
-
-	default:
-		WARN(1, "not supported\n");
-		break;
-	}
+	service->callback(service->callback_param, reason, bulk_user);
 
 release:
 	return VCHIQ_SUCCESS;
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
index e660f546a7e4..fcef607e9446 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
@@ -48,6 +48,7 @@
 #include <linux/types.h>
 #include <asm/cacheflush.h>
 
+#include "vchiq_if.h"
 #include "vchiq_connected.h"
 #include "vc_sm_cma_vchi.h"
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index b7de8526fc54..7efe42d51e46 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -265,8 +265,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 	return 0;
 }
 
-static void vc_sm_cma_vchi_callback(void *param,
-				    const enum vchi_callback_reason reason,
+static void vc_sm_cma_vchi_callback(void *param, const enum vchiq_reason reason,
 				    void *msg_handle)
 {
 	struct sm_instance *instance = param;
@@ -274,11 +273,11 @@ static void vc_sm_cma_vchi_callback(void *param,
 	(void)msg_handle;
 
 	switch (reason) {
-	case VCHI_CALLBACK_MSG_AVAILABLE:
+	case VCHIQ_MESSAGE_AVAILABLE:
 		complete(&instance->io_cmplt);
 		break;
 
-	case VCHI_CALLBACK_SERVICE_CLOSED:
+	case VCHIQ_SERVICE_CLOSED:
 		pr_info("%s: service CLOSED!!", __func__);
 	default:
 		break;
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 1d9a3f94799a..258cfab7d397 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -674,8 +674,7 @@ static void bulk_abort_cb(struct vchiq_mmal_instance *instance,
 }
 
 /* incoming event service callback */
-static void service_callback(void *param,
-			     const enum vchi_callback_reason reason,
+static void service_callback(void *param, const enum vchiq_reason reason,
 			     void *bulk_ctx)
 {
 	struct vchiq_mmal_instance *instance = param;
@@ -691,7 +690,7 @@ static void service_callback(void *param,
 	}
 
 	switch (reason) {
-	case VCHI_CALLBACK_MSG_AVAILABLE:
+	case VCHIQ_MESSAGE_AVAILABLE:
 		status = vchi_msg_hold(instance->service, (void **)&msg,
 				       &msg_len, &msg_handle);
 		if (status) {
@@ -756,15 +755,15 @@ static void service_callback(void *param,
 
 		break;
 
-	case VCHI_CALLBACK_BULK_RECEIVED:
+	case VCHIQ_BULK_RECEIVE_DONE:
 		bulk_receive_cb(instance, bulk_ctx);
 		break;
 
-	case VCHI_CALLBACK_BULK_RECEIVE_ABORTED:
+	case VCHIQ_BULK_RECEIVE_ABORTED:
 		bulk_abort_cb(instance, bulk_ctx);
 		break;
 
-	case VCHI_CALLBACK_SERVICE_CLOSED:
+	case VCHIQ_SERVICE_CLOSED:
 		/* TODO: consider if this requires action if received when
 		 * driver is not explicitly closing the service
 		 */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
