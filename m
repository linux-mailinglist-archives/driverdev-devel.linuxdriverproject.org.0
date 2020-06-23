Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0139020581C
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 19:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E47C89910;
	Tue, 23 Jun 2020 17:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tw7A+Fxv35Wh; Tue, 23 Jun 2020 17:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2DA889810;
	Tue, 23 Jun 2020 17:01:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 321A11BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 17:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EC0B88D49
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 17:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CLUhS4EiLVt2 for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 17:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD4A988A7B
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 17:01:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 43638B03F;
 Tue, 23 Jun 2020 16:45:32 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 43/50] staging: vchi: Get rid of vchi_bulk_queue_receive()
Date: Tue, 23 Jun 2020 18:42:29 +0200
Message-Id: <20200623164235.29566-44-nsaenzjulienne@suse.de>
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

Its vchiq counterpart, vchiq_bulk_receive() is only used by vchi. We can
then merge both functions by moving vchi_bulk_queue_receive()'s retry
mechanism into vchiq_bulk_receive() and let services call the later.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  7 ----
 .../interface/vchiq_arm/vchiq_arm.c           | 42 ++++++++++++-------
 .../interface/vchiq_arm/vchiq_shim.c          | 38 -----------------
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 20 ++++-----
 4 files changed, 37 insertions(+), 70 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index d24e7027c08f..ca20b99122f2 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -58,13 +58,6 @@ extern int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *messa
  * Global bulk API
  *****************************************************************************/
 
-// Routine to prepare interface for a transfer from the other side
-extern int32_t vchi_bulk_queue_receive(unsigned handle,
-				       void *data_dst,
-				       uint32_t data_size,
-				       enum vchiq_bulk_mode mode,
-				       void *transfer_handle);
-
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
 extern int32_t vchi_bulk_queue_transmit(unsigned handle,
 					const void *data_src,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 41b069275b9b..50294930ed27 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -373,24 +373,36 @@ vchiq_bulk_transmit(unsigned int handle, const void *data,
 }
 EXPORT_SYMBOL(vchiq_bulk_transmit);
 
-enum vchiq_status
-vchiq_bulk_receive(unsigned int handle, void *data,
-	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
+enum vchiq_status vchiq_bulk_receive(unsigned int handle, void *data,
+				     unsigned int size, void *userdata,
+				     enum vchiq_bulk_mode mode)
 {
 	enum vchiq_status status;
 
-	switch (mode) {
-	case VCHIQ_BULK_MODE_NOCALLBACK:
-	case VCHIQ_BULK_MODE_CALLBACK:
-		status = vchiq_bulk_transfer(handle, data, size, userdata,
-					     mode, VCHIQ_BULK_RECEIVE);
-		break;
-	case VCHIQ_BULK_MODE_BLOCKING:
-		status = vchiq_blocking_bulk_transfer(handle,
-			(void *)data, size, VCHIQ_BULK_RECEIVE);
-		break;
-	default:
-		return VCHIQ_ERROR;
+	while (1) {
+		switch (mode) {
+		case VCHIQ_BULK_MODE_NOCALLBACK:
+		case VCHIQ_BULK_MODE_CALLBACK:
+			status = vchiq_bulk_transfer(handle, data, size, userdata,
+						     mode, VCHIQ_BULK_RECEIVE);
+			break;
+		case VCHIQ_BULK_MODE_BLOCKING:
+			status = vchiq_blocking_bulk_transfer(handle,
+				(void *)data, size, VCHIQ_BULK_RECEIVE);
+			break;
+		default:
+			return VCHIQ_ERROR;
+		}
+
+		/*
+		 * vchiq_*_bulk_transfer() may return VCHIQ_RETRY, so we need
+		 * to implement a retry mechanism since this function is
+		 * supposed to block until queued
+		 */
+		if (status != VCHIQ_RETRY)
+			break;
+
+		msleep(1);
 	}
 
 	return status;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 52654123463d..f69936a9eb29 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -31,44 +31,6 @@ int vchi_queue_kernel_message(unsigned handle, void *data, unsigned int size)
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
-/***********************************************************
- * Name: vchi_bulk_queue_receive
- *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
- *             void *data_dst,
- *             const uint32_t data_size,
- *             enum vchi_flags flags
- *             void *bulk_handle
- *
- * Description: Routine to setup a rcv buffer
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_bulk_queue_receive(unsigned handle, void *data_dst,
-				uint32_t data_size, enum vchiq_bulk_mode mode,
-				void *bulk_handle)
-{
-	enum vchiq_status status;
-
-	while (1) {
-		status = vchiq_bulk_receive(handle, data_dst, data_size,
-					    bulk_handle, mode);
-		/*
-		 * vchiq_bulk_receive() may return VCHIQ_RETRY, so we need to
-		 * implement a retry mechanism since this function is supposed
-		 * to block until queued
-		 */
-		if (status != VCHIQ_RETRY)
-			break;
-
-		msleep(1);
-	}
-
-	return status;
-}
-EXPORT_SYMBOL(vchi_bulk_queue_receive);
-
 /***********************************************************
  * Name: vchi_bulk_queue_transmit
  *
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 09eef9e6fb9a..34a1627754f3 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -279,7 +279,7 @@ static void buffer_work_cb(struct work_struct *work)
  * VCHI will allow up to 4 bulk receives to be scheduled before blocking.
  * If we block in the service_callback context then we can't process the
  * VCHI_CALLBACK_BULK_RECEIVED message that would otherwise allow the blocked
- * vchi_bulk_queue_receive() call to complete.
+ * vchiq_bulk_receive() call to complete.
  */
 static void buffer_to_host_work_cb(struct work_struct *work)
 {
@@ -295,19 +295,19 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 		len = 8;
 	/* queue the bulk submission */
 	vchi_service_use(instance->service_handle);
-	ret = vchi_bulk_queue_receive(instance->service_handle,
-				      msg_context->u.bulk.buffer->buffer,
-				      /* Actual receive needs to be a multiple
-				       * of 4 bytes
-				       */
-				      (len + 3) & ~3,
-				      VCHIQ_BULK_MODE_CALLBACK,
-				      msg_context);
+	ret = vchiq_bulk_receive(instance->service_handle,
+				 msg_context->u.bulk.buffer->buffer,
+			         /* Actual receive needs to be a multiple
+			          * of 4 bytes
+			          */
+			         (len + 3) & ~3,
+			         msg_context,
+			         VCHIQ_BULK_MODE_CALLBACK);
 
 	vchi_service_release(instance->service_handle);
 
 	if (ret != 0)
-		pr_err("%s: ctx: %p, vchi_bulk_queue_receive failed %d\n",
+		pr_err("%s: ctx: %p, vchiq_bulk_receive failed %d\n",
 		       __func__, msg_context, ret);
 }
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
