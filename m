Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E38D18BD8
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 16:32:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5ACCF2210F;
	Thu,  9 May 2019 14:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U7w8+YLYf8PY; Thu,  9 May 2019 14:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1925531018;
	Thu,  9 May 2019 14:32:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A82F1BF580
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 14:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 87D24881B7
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 14:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3uow6-aowpp1 for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 14:31:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3EC70881A8
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 14:31:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AC869ACBC;
 Thu,  9 May 2019 14:31:53 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v3 4/4] staging: vchiq: stop explicitly comparing with zero to
 catch errors
Date: Thu,  9 May 2019 16:31:36 +0200
Message-Id: <20190509143137.31254-5-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, dan.carpenter@oracle.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The vchiq code tends to follow a coding pattern that's not accepted as
per the Linux kernel coding style

We have this:
	if (expression != 0)

We want this:
	if (expression)

We make an exception if the expression refers to a size, in which case
it's accepted for the sake of clarity.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-camera/bcm2835-camera.c           | 11 ++--
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  2 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 66 ++++++++-----------
 .../interface/vchiq_arm/vchiq_connected.c     |  4 +-
 .../interface/vchiq_arm/vchiq_core.c          | 28 ++++----
 .../interface/vchiq_arm/vchiq_debugfs.c       |  4 +-
 6 files changed, 52 insertions(+), 63 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 68f08dc18da9..57f79c153277 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -327,7 +327,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 		 "%s: status:%d, buf:%p, length:%lu, flags %u, pts %lld\n",
 		 __func__, status, buf, length, mmal_flags, pts);
 
-	if (status != 0) {
+	if (status) {
 		/* error in transfer */
 		if (buf) {
 			/* there was a buffer with the error so return it */
@@ -359,8 +359,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 		}
 	} else {
 		if (dev->capture.frame_count) {
-			if (dev->capture.vc_start_timestamp != -1 &&
-			    pts != 0) {
+			if (dev->capture.vc_start_timestamp != -1 && pts) {
 				ktime_t timestamp;
 				s64 runtime_us = pts -
 				    dev->capture.vc_start_timestamp;
@@ -826,7 +825,7 @@ static int vidioc_enum_input(struct file *file, void *priv,
 			     struct v4l2_input *inp)
 {
 	/* only a single camera input */
-	if (inp->index != 0)
+	if (inp->index)
 		return -EINVAL;
 
 	inp->type = V4L2_INPUT_TYPE_CAMERA;
@@ -842,7 +841,7 @@ static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
 
 static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
 {
-	if (i != 0)
+	if (i)
 		return -EINVAL;
 
 	return 0;
@@ -1281,7 +1280,7 @@ static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
 	}
 
 	ret = mmal_setup_components(dev, f);
-	if (ret != 0) {
+	if (ret) {
 		v4l2_err(&dev->v4l2_dev,
 			 "%s: failed to setup mmal components: %d\n",
 			 __func__, ret);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 49d3b39b1059..cb588c0b9364 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -514,7 +514,7 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 		(g_cache_line_size - 1)))) {
 		char *fragments;
 
-		if (down_interruptible(&g_free_fragments_sema) != 0) {
+		if (down_interruptible(&g_free_fragments_sema)) {
 			cleanup_pagelistinfo(pagelistinfo);
 			return NULL;
 		}
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 62d8f599e765..9264a07cf160 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -238,7 +238,7 @@ VCHIQ_STATUS_T vchiq_shutdown(VCHIQ_INSTANCE_T instance)
 	vchiq_log_trace(vchiq_core_log_level,
 		"%s(%p) called", __func__, instance);
 
-	if (mutex_lock_killable(&state->mutex) != 0)
+	if (mutex_lock_killable(&state->mutex))
 		return VCHIQ_RETRY;
 
 	/* Remove all services */
@@ -280,7 +280,7 @@ VCHIQ_STATUS_T vchiq_connect(VCHIQ_INSTANCE_T instance)
 	vchiq_log_trace(vchiq_core_log_level,
 		"%s(%p) called", __func__, instance);
 
-	if (mutex_lock_killable(&state->mutex) != 0) {
+	if (mutex_lock_killable(&state->mutex)) {
 		vchiq_log_trace(vchiq_core_log_level,
 			"%s: call to mutex_lock failed", __func__);
 		status = VCHIQ_RETRY;
@@ -645,8 +645,7 @@ service_callback(VCHIQ_REASON_T reason, struct vchiq_header *header,
 
 			DEBUG_TRACE(SERVICE_CALLBACK_LINE);
 			if (wait_for_completion_interruptible(
-						&user_service->remove_event)
-				!= 0) {
+						&user_service->remove_event)) {
 				vchiq_log_info(vchiq_arm_log_level,
 					"%s interrupted", __func__);
 				DEBUG_TRACE(SERVICE_CALLBACK_LINE);
@@ -850,7 +849,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 			break;
 		}
 		rc = mutex_lock_killable(&instance->state->mutex);
-		if (rc != 0) {
+		if (rc) {
 			vchiq_log_error(vchiq_arm_log_level,
 				"vchiq: connect: could not lock mutex for "
 				"state %d: %d",
@@ -874,9 +873,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		void *userdata;
 		int srvstate;
 
-		if (copy_from_user
-			 (&args, (const void __user *)arg,
-			  sizeof(args)) != 0) {
+		if (copy_from_user(&args, (const void __user *)arg,
+				   sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
@@ -940,7 +938,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 				&(((struct vchiq_create_service __user *)
 					arg)->handle),
 				(const void *)&service->handle,
-				sizeof(service->handle)) != 0) {
+				sizeof(service->handle))) {
 				ret = -EFAULT;
 				vchiq_remove_service(service->handle);
 			}
@@ -1015,9 +1013,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	case VCHIQ_IOC_QUEUE_MESSAGE: {
 		struct vchiq_queue_message args;
 
-		if (copy_from_user
-			 (&args, (const void __user *)arg,
-			  sizeof(args)) != 0) {
+		if (copy_from_user(&args, (const void __user *)arg,
+				   sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
@@ -1049,9 +1046,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 			(cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT) ?
 			VCHIQ_BULK_TRANSMIT : VCHIQ_BULK_RECEIVE;
 
-		if (copy_from_user
-			(&args, (const void __user *)arg,
-			sizeof(args)) != 0) {
+		if (copy_from_user(&args, (const void __user *)arg,
+				   sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
@@ -1125,7 +1121,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 				&(((struct vchiq_queue_bulk_transfer __user *)
 					arg)->mode),
 				(const void *)&mode_waiting,
-				sizeof(mode_waiting)) != 0)
+				sizeof(mode_waiting)))
 				ret = -EFAULT;
 		}
 	} break;
@@ -1140,7 +1136,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		}
 
 		if (copy_from_user(&args, (const void __user *)arg,
-			sizeof(args)) != 0) {
+			sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
@@ -1158,7 +1154,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 			rc = wait_for_completion_interruptible(
 						&instance->insert_event);
 			mutex_lock(&instance->completion_mutex);
-			if (rc != 0) {
+			if (rc) {
 				DEBUG_TRACE(AWAIT_COMPLETION_LINE);
 				vchiq_log_info(vchiq_arm_log_level,
 					"AWAIT_COMPLETION interrupted");
@@ -1224,7 +1220,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 					if (copy_from_user(&msgbuf,
 						(const void __user *)
 						&args.msgbufs[msgbufcount],
-						sizeof(msgbuf)) != 0) {
+						sizeof(msgbuf))) {
 						if (ret == 0)
 							ret = -EFAULT;
 						break;
@@ -1232,7 +1228,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 					/* Copy the message to user space */
 					if (copy_to_user(msgbuf, header,
-						msglen) != 0) {
+						msglen)) {
 						if (ret == 0)
 							ret = -EFAULT;
 						break;
@@ -1257,8 +1253,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 					(size_t)args.buf + ret *
 					sizeof(struct vchiq_completion_data)),
 					completion,
-					sizeof(struct vchiq_completion_data))
-									!= 0) {
+					sizeof(struct vchiq_completion_data))) {
 						if (ret == 0)
 							ret = -EFAULT;
 					break;
@@ -1278,13 +1273,13 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 					&((struct vchiq_await_completion *)arg)
 						->msgbufcount,
 					&msgbufcount,
-					sizeof(msgbufcount)) != 0) {
+					sizeof(msgbufcount))) {
 					ret = -EFAULT;
 				}
 			}
 		}
 
-		if (ret != 0)
+		if (ret)
 			complete(&instance->remove_event);
 		mutex_unlock(&instance->completion_mutex);
 		DEBUG_TRACE(AWAIT_COMPLETION_LINE);
@@ -1296,9 +1291,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		struct vchiq_header *header;
 
 		DEBUG_TRACE(DEQUEUE_MESSAGE_LINE);
-		if (copy_from_user
-			 (&args, (const void __user *)arg,
-			  sizeof(args)) != 0) {
+		if (copy_from_user(&args, (const void __user *)arg,
+				   sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
@@ -1384,7 +1378,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		struct vchiq_config config;
 
 		if (copy_from_user(&args, (const void __user *)arg,
-			sizeof(args)) != 0) {
+				   sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
@@ -1403,9 +1397,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	case VCHIQ_IOC_SET_SERVICE_OPTION: {
 		struct vchiq_set_service_option args;
 
-		if (copy_from_user(
-			&args, (const void __user *)arg,
-			sizeof(args)) != 0) {
+		if (copy_from_user(&args, (const void __user *)arg,
+				   sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
@@ -2329,8 +2322,7 @@ vchiq_keepalive_thread_func(void *v)
 	while (1) {
 		long rc = 0, uc = 0;
 
-		if (wait_for_completion_interruptible(&arm_state->ka_evt)
-				!= 0) {
+		if (wait_for_completion_interruptible(&arm_state->ka_evt)) {
 			vchiq_log_error(vchiq_susp_log_level,
 				"%s interrupted", __func__);
 			flush_signals(current);
@@ -3011,7 +3003,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 			vchiq_log_info(vchiq_susp_log_level, "%s %s resume "
 				"blocked - waiting...", __func__, entity);
 			if (wait_for_completion_killable(
-					&arm_state->resume_blocker) != 0) {
+					&arm_state->resume_blocker)) {
 				vchiq_log_error(vchiq_susp_log_level, "%s %s "
 					"wait for resume blocker interrupted",
 					__func__, entity);
@@ -3060,7 +3052,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		vchiq_log_info(vchiq_susp_log_level, "%s %s wait for resume",
 			__func__, entity);
 		if (wait_for_completion_killable(
-				&arm_state->vc_resume_complete) != 0) {
+				&arm_state->vc_resume_complete)) {
 			vchiq_log_error(vchiq_susp_log_level, "%s %s wait for "
 				"resume interrupted", __func__, entity);
 			ret = VCHIQ_ERROR;
@@ -3505,13 +3497,13 @@ static int vchiq_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, drvdata);
 
 	err = vchiq_platform_init(pdev, &g_state);
-	if (err != 0)
+	if (err)
 		goto failed_platform_init;
 
 	cdev_init(&vchiq_cdev, &vchiq_fops);
 	vchiq_cdev.owner = THIS_MODULE;
 	err = cdev_add(&vchiq_cdev, vchiq_devid, 1);
-	if (err != 0) {
+	if (err) {
 		vchiq_log_error(vchiq_arm_log_level,
 			"Unable to register device");
 		goto failed_platform_init;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
index e87e6619695e..1640906e3929 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
@@ -41,7 +41,7 @@ void vchiq_add_connected_callback(VCHIQ_CONNECTED_CALLBACK_T callback)
 {
 	connected_init();
 
-	if (mutex_lock_killable(&g_connected_mutex) != 0)
+	if (mutex_lock_killable(&g_connected_mutex))
 		return;
 
 	if (g_connected)
@@ -76,7 +76,7 @@ void vchiq_call_connected_callbacks(void)
 
 	connected_init();
 
-	if (mutex_lock_killable(&g_connected_mutex) != 0)
+	if (mutex_lock_killable(&g_connected_mutex))
 		return;
 
 	for (i = 0; i <  g_num_deferred_callbacks; i++)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 44bfa890e0e5..44f0eb64952a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -800,7 +800,7 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 	WARN_ON(!(stride <= VCHIQ_SLOT_SIZE));
 
 	if (!(flags & QMFLAGS_NO_MUTEX_LOCK) &&
-		(mutex_lock_killable(&state->slot_mutex) != 0))
+	    mutex_lock_killable(&state->slot_mutex))
 		return VCHIQ_RETRY;
 
 	if (type == VCHIQ_MSG_DATA) {
@@ -812,8 +812,8 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 			return VCHIQ_ERROR;
 		}
 
-		WARN_ON((flags & (QMFLAGS_NO_MUTEX_LOCK |
-				  QMFLAGS_NO_MUTEX_UNLOCK)) != 0);
+		WARN_ON(flags & (QMFLAGS_NO_MUTEX_LOCK |
+				 QMFLAGS_NO_MUTEX_UNLOCK));
 
 		if (service->closing) {
 			/* The service has been closed */
@@ -874,7 +874,7 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 				return VCHIQ_RETRY;
 			if (service->closing)
 				return VCHIQ_ERROR;
-			if (mutex_lock_killable(&state->slot_mutex) != 0)
+			if (mutex_lock_killable(&state->slot_mutex))
 				return VCHIQ_RETRY;
 			if (service->srvstate != VCHIQ_SRVSTATE_OPEN) {
 				/* The service has been closed */
@@ -912,8 +912,8 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 			header, size, VCHIQ_MSG_SRCPORT(msgid),
 			VCHIQ_MSG_DSTPORT(msgid));
 
-		WARN_ON((flags & (QMFLAGS_NO_MUTEX_LOCK |
-				  QMFLAGS_NO_MUTEX_UNLOCK)) != 0);
+		WARN_ON(flags & (QMFLAGS_NO_MUTEX_LOCK |
+				 QMFLAGS_NO_MUTEX_UNLOCK));
 
 		callback_result =
 			copy_message_data(copy_callback, context,
@@ -1040,8 +1040,8 @@ queue_message_sync(struct vchiq_state *state, struct vchiq_service *service,
 
 	local = state->local;
 
-	if ((VCHIQ_MSG_TYPE(msgid) != VCHIQ_MSG_RESUME) &&
-		(mutex_lock_killable(&state->sync_mutex) != 0))
+	if (VCHIQ_MSG_TYPE(msgid) != VCHIQ_MSG_RESUME &&
+	    mutex_lock_killable(&state->sync_mutex))
 		return VCHIQ_RETRY;
 
 	remote_event_wait(&state->sync_release_event, &local->sync_release);
@@ -1718,8 +1718,7 @@ parse_rx_slots(struct vchiq_state *state)
 					&service->bulk_rx : &service->bulk_tx;
 
 				DEBUG_TRACE(PARSE_LINE);
-				if (mutex_lock_killable(
-					&service->bulk_mutex) != 0) {
+				if (mutex_lock_killable(&service->bulk_mutex)) {
 					DEBUG_TRACE(PARSE_LINE);
 					goto bail_not_ready;
 				}
@@ -2523,7 +2522,7 @@ do_abort_bulks(struct vchiq_service *service)
 	VCHIQ_STATUS_T status;
 
 	/* Abort any outstanding bulk transfers */
-	if (mutex_lock_killable(&service->bulk_mutex) != 0)
+	if (mutex_lock_killable(&service->bulk_mutex))
 		return 0;
 	abort_outstanding_bulks(service, &service->bulk_tx);
 	abort_outstanding_bulks(service, &service->bulk_rx);
@@ -3038,7 +3037,7 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 	queue = (dir == VCHIQ_BULK_TRANSMIT) ?
 		&service->bulk_tx : &service->bulk_rx;
 
-	if (mutex_lock_killable(&service->bulk_mutex) != 0) {
+	if (mutex_lock_killable(&service->bulk_mutex)) {
 		status = VCHIQ_RETRY;
 		goto error_exit;
 	}
@@ -3052,8 +3051,7 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 				status = VCHIQ_RETRY;
 				goto error_exit;
 			}
-			if (mutex_lock_killable(&service->bulk_mutex)
-				!= 0) {
+			if (mutex_lock_killable(&service->bulk_mutex)) {
 				status = VCHIQ_RETRY;
 				goto error_exit;
 			}
@@ -3081,7 +3079,7 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 
 	/* The slot mutex must be held when the service is being closed, so
 	   claim it here to ensure that isn't happening */
-	if (mutex_lock_killable(&state->slot_mutex) != 0) {
+	if (mutex_lock_killable(&state->slot_mutex)) {
 		status = VCHIQ_RETRY;
 		goto cancel_bulk_error_exit;
 	}
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
index 2bb9120883fd..f217b78d95a0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
@@ -86,7 +86,7 @@ static ssize_t debugfs_log_write(struct file *file,
 	if (count >= DEBUGFS_WRITE_BUF_SIZE)
 		count = DEBUGFS_WRITE_BUF_SIZE;
 
-	if (copy_from_user(kbuf, buffer, count) != 0)
+	if (copy_from_user(kbuf, buffer, count))
 		return -EFAULT;
 	kbuf[count - 1] = 0;
 
@@ -151,7 +151,7 @@ static ssize_t debugfs_trace_write(struct file *file,
 	VCHIQ_INSTANCE_T instance = f->private;
 	char firstchar;
 
-	if (copy_from_user(&firstchar, buffer, 1) != 0)
+	if (copy_from_user(&firstchar, buffer, 1))
 		return -EFAULT;
 
 	switch (firstchar) {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
