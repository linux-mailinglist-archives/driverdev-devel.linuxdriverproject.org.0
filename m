Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B117118BCE
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 16:32:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E925E31032;
	Thu,  9 May 2019 14:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HkIFxX9LbFoA; Thu,  9 May 2019 14:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B17021513;
	Thu,  9 May 2019 14:31:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A8A21BF580
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 14:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 27B208685E
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 14:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vq8VRtgy7-hP for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 14:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C778B8684E
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 14:31:52 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4DE02ACB1;
 Thu,  9 May 2019 14:31:51 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] staging: vchiq: revert "switch to
 wait_for_completion_killable"
Date: Thu,  9 May 2019 16:31:34 +0200
Message-Id: <20190509143137.31254-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509143137.31254-1-nsaenzjulienne@suse.de>
References: <20190509143137.31254-1-nsaenzjulienne@suse.de>
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, dan.carpenter@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The killable version of wait_for_completion() is meant to be used on
situations where it should not fail at all costs, but still have the
convenience of being able to kill it if really necessary. VCHIQ doesn't
fit this criteria, as it's mainly used as an interface to V4L2 and ALSA
devices.

Fixes: a772f116702e ("staging: vchiq: switch to wait_for_completion_killable")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 21 ++++++++++---------
 .../interface/vchiq_arm/vchiq_core.c          | 21 ++++++++++---------
 .../interface/vchiq_arm/vchiq_util.c          |  6 +++---
 3 files changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index ab7d6a0ce94c..62d8f599e765 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -532,7 +532,8 @@ add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
 		vchiq_log_trace(vchiq_arm_log_level,
 			"%s - completion queue full", __func__);
 		DEBUG_COUNT(COMPLETION_QUEUE_FULL_COUNT);
-		if (wait_for_completion_killable(&instance->remove_event)) {
+		if (wait_for_completion_interruptible(
+					&instance->remove_event)) {
 			vchiq_log_info(vchiq_arm_log_level,
 				"service_callback interrupted");
 			return VCHIQ_RETRY;
@@ -643,7 +644,7 @@ service_callback(VCHIQ_REASON_T reason, struct vchiq_header *header,
 			}
 
 			DEBUG_TRACE(SERVICE_CALLBACK_LINE);
-			if (wait_for_completion_killable(
+			if (wait_for_completion_interruptible(
 						&user_service->remove_event)
 				!= 0) {
 				vchiq_log_info(vchiq_arm_log_level,
@@ -978,7 +979,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		   has been closed until the client library calls the
 		   CLOSE_DELIVERED ioctl, signalling close_event. */
 		if (user_service->close_pending &&
-			wait_for_completion_killable(
+			wait_for_completion_interruptible(
 				&user_service->close_event))
 			status = VCHIQ_RETRY;
 		break;
@@ -1154,7 +1155,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 			DEBUG_TRACE(AWAIT_COMPLETION_LINE);
 			mutex_unlock(&instance->completion_mutex);
-			rc = wait_for_completion_killable(
+			rc = wait_for_completion_interruptible(
 						&instance->insert_event);
 			mutex_lock(&instance->completion_mutex);
 			if (rc != 0) {
@@ -1324,7 +1325,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 			do {
 				spin_unlock(&msg_queue_spinlock);
 				DEBUG_TRACE(DEQUEUE_MESSAGE_LINE);
-				if (wait_for_completion_killable(
+				if (wait_for_completion_interruptible(
 					&user_service->insert_event)) {
 					vchiq_log_info(vchiq_arm_log_level,
 						"DEQUEUE_MESSAGE interrupted");
@@ -2328,7 +2329,7 @@ vchiq_keepalive_thread_func(void *v)
 	while (1) {
 		long rc = 0, uc = 0;
 
-		if (wait_for_completion_killable(&arm_state->ka_evt)
+		if (wait_for_completion_interruptible(&arm_state->ka_evt)
 				!= 0) {
 			vchiq_log_error(vchiq_susp_log_level,
 				"%s interrupted", __func__);
@@ -2579,7 +2580,7 @@ block_resume(struct vchiq_arm_state *arm_state)
 		write_unlock_bh(&arm_state->susp_res_lock);
 		vchiq_log_info(vchiq_susp_log_level, "%s wait for previously "
 			"blocked clients", __func__);
-		if (wait_for_completion_killable_timeout(
+		if (wait_for_completion_interruptible_timeout(
 				&arm_state->blocked_blocker, timeout_val)
 					<= 0) {
 			vchiq_log_error(vchiq_susp_log_level, "%s wait for "
@@ -2605,7 +2606,7 @@ block_resume(struct vchiq_arm_state *arm_state)
 		write_unlock_bh(&arm_state->susp_res_lock);
 		vchiq_log_info(vchiq_susp_log_level, "%s wait for resume",
 			__func__);
-		if (wait_for_completion_killable_timeout(
+		if (wait_for_completion_interruptible_timeout(
 				&arm_state->vc_resume_complete, timeout_val)
 					<= 0) {
 			vchiq_log_error(vchiq_susp_log_level, "%s wait for "
@@ -2812,7 +2813,7 @@ vchiq_arm_force_suspend(struct vchiq_state *state)
 	do {
 		write_unlock_bh(&arm_state->susp_res_lock);
 
-		rc = wait_for_completion_killable_timeout(
+		rc = wait_for_completion_interruptible_timeout(
 				&arm_state->vc_suspend_complete,
 				msecs_to_jiffies(FORCE_SUSPEND_TIMEOUT_MS));
 
@@ -2908,7 +2909,7 @@ vchiq_arm_allow_resume(struct vchiq_state *state)
 	write_unlock_bh(&arm_state->susp_res_lock);
 
 	if (resume) {
-		if (wait_for_completion_killable(
+		if (wait_for_completion_interruptible(
 			&arm_state->vc_resume_complete) < 0) {
 			vchiq_log_error(vchiq_susp_log_level,
 				"%s interrupted", __func__);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 0c387b6473a5..c65cf1e6f910 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -560,7 +560,7 @@ reserve_space(struct vchiq_state *state, size_t space, int is_blocking)
 			remote_event_signal(&state->remote->trigger);
 
 			if (!is_blocking ||
-				(wait_for_completion_killable(
+				(wait_for_completion_interruptible(
 				&state->slot_available_event)))
 				return NULL; /* No space available */
 		}
@@ -830,7 +830,7 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 			spin_unlock(&quota_spinlock);
 			mutex_unlock(&state->slot_mutex);
 
-			if (wait_for_completion_killable(
+			if (wait_for_completion_interruptible(
 						&state->data_quota_event))
 				return VCHIQ_RETRY;
 
@@ -861,7 +861,7 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 				service_quota->slot_use_count);
 			VCHIQ_SERVICE_STATS_INC(service, quota_stalls);
 			mutex_unlock(&state->slot_mutex);
-			if (wait_for_completion_killable(
+			if (wait_for_completion_interruptible(
 						&service_quota->quota_event))
 				return VCHIQ_RETRY;
 			if (service->closing)
@@ -1710,7 +1710,8 @@ parse_rx_slots(struct vchiq_state *state)
 					&service->bulk_rx : &service->bulk_tx;
 
 				DEBUG_TRACE(PARSE_LINE);
-				if (mutex_lock_killable(&service->bulk_mutex)) {
+				if (mutex_lock_killable(
+					&service->bulk_mutex) != 0) {
 					DEBUG_TRACE(PARSE_LINE);
 					goto bail_not_ready;
 				}
@@ -2428,7 +2429,7 @@ vchiq_open_service_internal(struct vchiq_service *service, int client_id)
 			       QMFLAGS_IS_BLOCKING);
 	if (status == VCHIQ_SUCCESS) {
 		/* Wait for the ACK/NAK */
-		if (wait_for_completion_killable(&service->remove_event)) {
+		if (wait_for_completion_interruptible(&service->remove_event)) {
 			status = VCHIQ_RETRY;
 			vchiq_release_service_internal(service);
 		} else if ((service->srvstate != VCHIQ_SRVSTATE_OPEN) &&
@@ -2795,7 +2796,7 @@ vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 	}
 
 	if (state->conn_state == VCHIQ_CONNSTATE_CONNECTING) {
-		if (wait_for_completion_killable(&state->connect))
+		if (wait_for_completion_interruptible(&state->connect))
 			return VCHIQ_RETRY;
 
 		vchiq_set_conn_state(state, VCHIQ_CONNSTATE_CONNECTED);
@@ -2894,7 +2895,7 @@ vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
 	}
 
 	while (1) {
-		if (wait_for_completion_killable(&service->remove_event)) {
+		if (wait_for_completion_interruptible(&service->remove_event)) {
 			status = VCHIQ_RETRY;
 			break;
 		}
@@ -2955,7 +2956,7 @@ vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
 		request_poll(service->state, service, VCHIQ_POLL_REMOVE);
 	}
 	while (1) {
-		if (wait_for_completion_killable(&service->remove_event)) {
+		if (wait_for_completion_interruptible(&service->remove_event)) {
 			status = VCHIQ_RETRY;
 			break;
 		}
@@ -3038,7 +3039,7 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 		VCHIQ_SERVICE_STATS_INC(service, bulk_stalls);
 		do {
 			mutex_unlock(&service->bulk_mutex);
-			if (wait_for_completion_killable(
+			if (wait_for_completion_interruptible(
 						&service->bulk_remove_event)) {
 				status = VCHIQ_RETRY;
 				goto error_exit;
@@ -3115,7 +3116,7 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 
 	if (bulk_waiter) {
 		bulk_waiter->bulk = bulk;
-		if (wait_for_completion_killable(&bulk_waiter->event))
+		if (wait_for_completion_interruptible(&bulk_waiter->event))
 			status = VCHIQ_RETRY;
 		else if (bulk_waiter->actual == VCHIQ_BULK_ACTUAL_ABORTED)
 			status = VCHIQ_ERROR;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
index 6c519d8e48cb..8ee85c5e6f77 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
@@ -50,7 +50,7 @@ void vchiu_queue_push(struct vchiu_queue *queue, struct vchiq_header *header)
 		return;
 
 	while (queue->write == queue->read + queue->size) {
-		if (wait_for_completion_killable(&queue->pop))
+		if (wait_for_completion_interruptible(&queue->pop))
 			flush_signals(current);
 	}
 
@@ -63,7 +63,7 @@ void vchiu_queue_push(struct vchiu_queue *queue, struct vchiq_header *header)
 struct vchiq_header *vchiu_queue_peek(struct vchiu_queue *queue)
 {
 	while (queue->write == queue->read) {
-		if (wait_for_completion_killable(&queue->push))
+		if (wait_for_completion_interruptible(&queue->push))
 			flush_signals(current);
 	}
 
@@ -77,7 +77,7 @@ struct vchiq_header *vchiu_queue_pop(struct vchiu_queue *queue)
 	struct vchiq_header *header;
 
 	while (queue->write == queue->read) {
-		if (wait_for_completion_killable(&queue->push))
+		if (wait_for_completion_interruptible(&queue->push))
 			flush_signals(current);
 	}
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
