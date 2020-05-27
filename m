Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9252F1E40B4
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:55:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 33515245E3;
	Wed, 27 May 2020 11:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JvxsjFijqgDt; Wed, 27 May 2020 11:54:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89FF2248F6;
	Wed, 27 May 2020 11:54:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5ABFA1BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 504B023E65
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7MKfXceAVVrJ for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 20DF62045E
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:33 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 18955AD2B;
 Wed, 27 May 2020 11:54:34 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 21/50] staging: vchi: Get rid of flags argument in
 vchi_msg_hold()
Date: Wed, 27 May 2020 13:53:26 +0200
Message-Id: <20200527115400.31391-22-nsaenzjulienne@suse.de>
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

All users are ignoring the flags argument. So for the sake of
simplicity delete it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c      |  3 +--
 drivers/staging/vc04_services/interface/vchi/vchi.h  |  1 -
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c   | 12 +++---------
 .../staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c |  2 +-
 .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c    |  2 +-
 5 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 5018b5baa009..68119246f10b 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -102,8 +102,7 @@ static void audio_vchi_callback(void *param,
 	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
 		return;
 
-	status = vchi_msg_hold(instance->service, (void **)&m, &size,
-			       VCHI_FLAGS_NONE, &handle);
+	status = vchi_msg_hold(instance->service, (void **)&m, &size, &handle);
 	if (status)
 		return;
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 55e51e5a1fdc..92ce811fc28d 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -87,7 +87,6 @@ extern int vchi_queue_kernel_message(struct vchi_service *service, void *data,
 extern int32_t vchi_msg_hold(struct vchi_service *service,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
-			     enum vchi_flags flags,
 			     struct vchi_held_msg *message_descriptor);
 
 /*******************************************************************************
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 0c3473861a8d..0466512cfe3c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -195,7 +195,6 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Arguments:  struct vchi_service *service,
  *             void **data,
  *             uint32_t *msg_size,
- *             enum vchi_flags flags,
  *             struct vchi_held_msg *message_handle
  *
  * Description: Routine to return a pointer to the current message (to allow
@@ -207,17 +206,12 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  *
  ***********************************************************/
 int32_t vchi_msg_hold(struct vchi_service *service, void **data,
-		      uint32_t *msg_size, enum vchi_flags flags,
-		      struct vchi_held_msg *message_handle)
+		      uint32_t *msg_size, struct vchi_held_msg *message_handle)
 {
 	struct vchiq_header *header;
 
-	WARN_ON((flags != VCHI_FLAGS_NONE) &&
-		(flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));
-
-	if (flags == VCHI_FLAGS_NONE)
-		if (vchiu_queue_is_empty(&service->queue))
-			return -1;
+	if (vchiu_queue_is_empty(&service->queue))
+		return -1;
 
 	header = vchiu_queue_pop(&service->queue);
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 72b09685db31..826cac7922d2 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -237,7 +237,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 		} while (1);
 
 		while (!vchi_msg_hold(instance->service, (void **)&reply,
-				       &reply_len, VCHI_FLAGS_NONE, &msg)) {
+				      &reply_len, &msg)) {
 			if (reply->trans_id & 0x80000000) {
 				/* Async event or cmd from the VPU */
 				if (instance->vpu_event)
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 5183aff453eb..9f905f529d91 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -693,7 +693,7 @@ static void service_callback(void *param,
 	switch (reason) {
 	case VCHI_CALLBACK_MSG_AVAILABLE:
 		status = vchi_msg_hold(instance->service, (void **)&msg,
-				       &msg_len, VCHI_FLAGS_NONE, &msg_handle);
+				       &msg_len, &msg_handle);
 		if (status) {
 			pr_err("Unable to dequeue a message (%d)\n", status);
 			break;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
