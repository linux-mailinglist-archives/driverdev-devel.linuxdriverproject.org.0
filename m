Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDCF20CF7F
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCE35888B0;
	Mon, 29 Jun 2020 15:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s4sjkBdnHiXV; Mon, 29 Jun 2020 15:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 119B088906;
	Mon, 29 Jun 2020 15:10:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB0851BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C627B25D30
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EBnTdrq-75hl for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:10:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 09627204F2
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:10:02 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 7B68DAF7E;
 Mon, 29 Jun 2020 15:10:00 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 18/47] staging: vchi: Get rid of flags argument in
 vchi_msg_hold()
Date: Mon, 29 Jun 2020 17:09:16 +0200
Message-Id: <20200629150945.10720-19-nsaenzjulienne@suse.de>
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

All users are ignoring the flags argument. So for the sake of
simplicity delete it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c      |  3 +--
 drivers/staging/vc04_services/interface/vchi/vchi.h  |  1 -
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c   | 12 +++---------
 .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c    |  2 +-
 4 files changed, 5 insertions(+), 13 deletions(-)

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
index 53e0357d4aba..6c48d9ef45cb 100644
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
 
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 075dcf4d6b3e..b63d4f5bda1c 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -568,7 +568,7 @@ static void service_callback(void *param,
 	switch (reason) {
 	case VCHI_CALLBACK_MSG_AVAILABLE:
 		status = vchi_msg_hold(instance->service, (void **)&msg,
-				       &msg_len, VCHI_FLAGS_NONE, &msg_handle);
+				       &msg_len, &msg_handle);
 		if (status) {
 			pr_err("Unable to dequeue a message (%d)\n", status);
 			break;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
