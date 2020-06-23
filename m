Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 033CE205799
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 18:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B57A88F9A;
	Tue, 23 Jun 2020 16:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zUYLU3dwFwsv; Tue, 23 Jun 2020 16:46:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66AF088F71;
	Tue, 23 Jun 2020 16:45:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB2A11BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B5EDA88325
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Hcx-Dnliaxs for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 16:45:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A12258826B
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 16:45:22 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id D56B8AEF3;
 Tue, 23 Jun 2020 16:45:20 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 23/50] staging: vchi: Use vchiq's enum vchiq_reason
Date: Tue, 23 Jun 2020 18:42:09 +0200
Message-Id: <20200623164235.29566-24-nsaenzjulienne@suse.de>
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

enum vchi_callback_reason maps 1:1 to enum vchiq_reason, in an effort to
simplify things, let's use the later, and get rid of the extra
indirection.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  5 +--
 .../interface/vchi/vchi_common.h              | 20 +---------
 .../interface/vchiq_arm/vchiq_shim.c          | 40 +------------------
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 11 +++--
 4 files changed, 10 insertions(+), 66 deletions(-)

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
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 153a81a11ffc..0a33d97572ec 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -549,8 +549,7 @@ static void bulk_abort_cb(struct vchiq_mmal_instance *instance,
 }
 
 /* incoming event service callback */
-static void service_callback(void *param,
-			     const enum vchi_callback_reason reason,
+static void service_callback(void *param, const enum vchiq_reason reason,
 			     void *bulk_ctx)
 {
 	struct vchiq_mmal_instance *instance = param;
@@ -566,7 +565,7 @@ static void service_callback(void *param,
 	}
 
 	switch (reason) {
-	case VCHI_CALLBACK_MSG_AVAILABLE:
+	case VCHIQ_MESSAGE_AVAILABLE:
 		status = vchi_msg_hold(instance->service, (void **)&msg,
 				       &msg_len, &msg_handle);
 		if (status) {
@@ -631,15 +630,15 @@ static void service_callback(void *param,
 
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
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
