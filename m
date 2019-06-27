Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D2B58A64
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6719E87594;
	Thu, 27 Jun 2019 18:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CbQNphheu6je; Thu, 27 Jun 2019 18:57:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAF4C87595;
	Thu, 27 Jun 2019 18:57:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 593401BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5615B85DDC
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BrSWQnGmDA7c for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 143B386357
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661810;
 bh=yz9ARinC93og+5jnEIbXwHj/wwjzpB1P6r189rBFmnA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JmZdPjvJMhyeNhR2D+BN3g9qLceztN6NcA3URY76jvLgAgzc5l18ROHoTbxjm2skr
 ZrpZ0f1kyHmjpl7uDjzW+4dw7Uq0+HEUmDHUVvT76YcYfihyoJ45kv5mBSkwkA0yc4
 +cfmPBI77doKFgp2vIINtP37cwli/EkomJvLrHS0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0Meg8W-1hw21a04DY-00OGyR; Thu, 27 Jun 2019 20:56:50 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 04/31] staging: bcm2835-camera: Do not bulk receive from
 service thread
Date: Thu, 27 Jun 2019 20:56:01 +0200
Message-Id: <1561661788-22744-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:IYmTXewCTBPdP7XHifBO0a02+9akpP8FpA6NR/xAJmt0DQgv9h4
 9YdL+mb7XEvg0lGA7PqRPs0GjfQNr4mp3qeQ7fRrHNa231WcijKkL6F41PUfLoYgUt9lQDf
 33KdXe19iGJMwnoQXX2jqFlA0twde1eyYqdPvBKx2KVoxbWeTZmEVJirnp//gnXZw49496Z
 m7XRSV5YazjGGRT1MXFmA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:X4zk92MyG2g=:f96coLNfkaoQCRIC/4Mc06
 pvUb1YcnKh/ulqvDeoshWXjyFNkPVgUsgznngJqQj5fBiuDmGFmBp1E/PPLesUHwr3rEkcdsF
 mJpVO661a/cM9beCZf1Fb7HAMfKKVBRHNLTIkyX7USej/ICDBU2PRL0pj14vTpZHt9o+wFGSe
 HjNwtkDsX8Af4U1aoPB3NR9uWsj1J0x/QiHtk6KSBxiRAIQiw1ZiNAaNk64E1ViB0wBpTo2fG
 UVHspJIZm7xUumaYVcIUkJQJW54XCwyXEeXKun7ZsGzNirKitsyALS4sRwKDvqdHHgKAQC+E1
 xawtHHVJUtgCY1NUOk65U8tw5JqlS6m+ikUaLkWAyEv/X1HBeyzlaUDwZv/5LwCkMXmhiV51n
 nFDHOLAm8uaiUquRASqQ00fGubd4pylsT+MDTqFCGmErQ3DHgPVeloQtTPspmNHAL7xCbAsZa
 H+C6yVRTDfQkJvNVi3AA+mfJZBl5zi87nXVDZcTJcdXI+fVG4vySZUKdpnnVSbWNEqUD29UK8
 DOsC3SseYsGgs3BWM0yVxIqaC8k37jK6nV4i3nFRaybMUBzsvwKdACHxNNt8x/Boi2AAUYt9X
 6KWl7F+c/8P59NiE+/gswOIz9uTiTMtsEBhvNIaYz6R9nrJspwnJrbJC9fcafJWqncwGkP+tw
 yS+AClWrQcdzExS13K7J8qqTZVg02FxzZVfYWAVEYvv4D3NPrvQTfCoASzKgZdb7klf2M6yhj
 gkXQ+M+9mY6YyGXq6MUm9OT2U4XuVfWJCQzkov54RdhawWS+muB/iQ60ZoZDaqOkOptkKFu0d
 rQdoWKm7/+W9SaeEVMWLRv9SASxee+knkqSJvcLOnsuxpMF4zn+2uZ4mpBbjqsBv+5uTIODh+
 QEguQ4RNv8nXFysL9gbMReI6k+Iy6EHfM/DBnLV7VnGDP1k77nvsLXrj0h5UGVdOJY2T9s2sV
 52EvEdPbWskxnrMB+T9GPgo4XHNp8Jlt+lgTywZbVKw/IYmRXNn6StA5woct6NlKD23BJd3qX
 TebxpQRpJj76jSjL+t0SD5PGE8lrLN59UAG/uTDzFo36bv7lQdAq+12rdRG5XND+vAQu0hWuG
 7sVONezGN0qQbI=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

vchi_bulk_queue_receive will queue up to a default of 4
bulk receives on a connection before blocking.
If called from the VCHI service_callback thread, then
that thread is unable to service the VCHI_CALLBACK_BULK_RECEIVED
events that would enable the queue call to succeed.

Add a workqueue to schedule the call vchi_bulk_queue_receive
in an alternate context to avoid the lock up.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 101 ++++++++++++---------
 1 file changed, 59 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index f1bb900..1a343d8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -117,8 +117,10 @@ struct mmal_msg_context {

 	union {
 		struct {
-			/* work struct for defered callback - must come first */
+			/* work struct for buffer_cb callback */
 			struct work_struct work;
+			/* work struct for deferred callback */
+			struct work_struct buffer_to_host_work;
 			/* mmal instance */
 			struct vchiq_mmal_instance *instance;
 			/* mmal port */
@@ -167,6 +169,9 @@ struct vchiq_mmal_instance {
 	/* component to use next */
 	int component_idx;
 	struct vchiq_mmal_component component[VCHIQ_MMAL_MAX_COMPONENTS];
+
+	/* ordered workqueue to process all bulk operations */
+	struct workqueue_struct *bulk_wq;
 };

 static struct mmal_msg_context *
@@ -248,7 +253,44 @@ static void buffer_work_cb(struct work_struct *work)
 					    msg_context->u.bulk.mmal_flags,
 					    msg_context->u.bulk.dts,
 					    msg_context->u.bulk.pts);
+}

+/* workqueue scheduled callback to handle receiving buffers
+ *
+ * VCHI will allow up to 4 bulk receives to be scheduled before blocking.
+ * If we block in the service_callback context then we can't process the
+ * VCHI_CALLBACK_BULK_RECEIVED message that would otherwise allow the blocked
+ * vchi_bulk_queue_receive() call to complete.
+ */
+static void buffer_to_host_work_cb(struct work_struct *work)
+{
+	struct mmal_msg_context *msg_context =
+		container_of(work, struct mmal_msg_context,
+			     u.bulk.buffer_to_host_work);
+	struct vchiq_mmal_instance *instance = msg_context->instance;
+	unsigned long len = msg_context->u.bulk.buffer_used;
+	int ret;
+
+	if (!len)
+		/* Dummy receive to ensure the buffers remain in order */
+		len = 8;
+	/* queue the bulk submission */
+	vchi_service_use(instance->handle);
+	ret = vchi_bulk_queue_receive(instance->handle,
+				      msg_context->u.bulk.buffer->buffer,
+				      /* Actual receive needs to be a multiple
+				       * of 4 bytes
+				       */
+				      (len + 3) & ~3,
+				      VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE |
+				      VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
+				      msg_context);
+
+	vchi_service_release(instance->handle);
+
+	if (ret != 0)
+		pr_err("%s: ctx: %p, vchi_bulk_queue_receive failed %d\n",
+		       __func__, msg_context, ret);
 }

 /* enqueue a bulk receive for a given message context */
@@ -257,7 +299,6 @@ static int bulk_receive(struct vchiq_mmal_instance *instance,
 			struct mmal_msg_context *msg_context)
 {
 	unsigned long rd_len;
-	int ret;

 	rd_len = msg->u.buffer_from_host.buffer_header.length;

@@ -293,45 +334,10 @@ static int bulk_receive(struct vchiq_mmal_instance *instance,
 	msg_context->u.bulk.dts = msg->u.buffer_from_host.buffer_header.dts;
 	msg_context->u.bulk.pts = msg->u.buffer_from_host.buffer_header.pts;

-	/* queue the bulk submission */
-	vchi_service_use(instance->handle);
-	ret = vchi_bulk_queue_receive(instance->handle,
-				      msg_context->u.bulk.buffer->buffer,
-				      /* Actual receive needs to be a multiple
-				       * of 4 bytes
-				       */
-				      (rd_len + 3) & ~3,
-				      VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE |
-				      VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
-				      msg_context);
-
-	vchi_service_release(instance->handle);
+	queue_work(msg_context->instance->bulk_wq,
+		   &msg_context->u.bulk.buffer_to_host_work);

-	return ret;
-}
-
-/* enque a dummy bulk receive for a given message context */
-static int dummy_bulk_receive(struct vchiq_mmal_instance *instance,
-			      struct mmal_msg_context *msg_context)
-{
-	int ret;
-
-	/* zero length indicates this was a dummy transfer */
-	msg_context->u.bulk.buffer_used = 0;
-
-	/* queue the bulk submission */
-	vchi_service_use(instance->handle);
-
-	ret = vchi_bulk_queue_receive(instance->handle,
-				      instance->bulk_scratch,
-				      8,
-				      VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE |
-				      VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
-				      msg_context);
-
-	vchi_service_release(instance->handle);
-
-	return ret;
+	return 0;
 }

 /* data in message, memcpy from packet into output buffer */
@@ -379,6 +385,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,

 	/* initialise work structure ready to schedule callback */
 	INIT_WORK(&msg_context->u.bulk.work, buffer_work_cb);
+	INIT_WORK(&msg_context->u.bulk.buffer_to_host_work,
+		  buffer_to_host_work_cb);

 	/* prep the buffer from host message */
 	memset(&m, 0xbc, sizeof(m));	/* just to make debug clearer */
@@ -459,7 +467,7 @@ static void buffer_to_host_cb(struct vchiq_mmal_instance *instance,
 		if (msg->u.buffer_from_host.buffer_header.flags &
 		    MMAL_BUFFER_HEADER_FLAG_EOS) {
 			msg_context->u.bulk.status =
-			    dummy_bulk_receive(instance, msg_context);
+			    bulk_receive(instance, msg, msg_context);
 			if (msg_context->u.bulk.status == 0)
 				return;	/* successful bulk submission, bulk
 					 * completion will trigger callback
@@ -1793,6 +1801,9 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)

 	mutex_unlock(&instance->vchiq_mutex);

+	flush_workqueue(instance->bulk_wq);
+	destroy_workqueue(instance->bulk_wq);
+
 	vfree(instance->bulk_scratch);

 	idr_destroy(&instance->context_map);
@@ -1855,6 +1866,11 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)

 	params.callback_param = instance;

+	instance->bulk_wq = alloc_ordered_workqueue("mmal-vchiq",
+						    WQ_MEM_RECLAIM);
+	if (!instance->bulk_wq)
+		goto err_free;
+
 	status = vchi_service_open(vchi_instance, &params, &instance->handle);
 	if (status) {
 		pr_err("Failed to open VCHI service connection (status=%d)\n",
@@ -1869,8 +1885,9 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	return 0;

 err_close_services:
-
 	vchi_service_close(instance->handle);
+	destroy_workqueue(instance->bulk_wq);
+err_free:
 	vfree(instance->bulk_scratch);
 	kfree(instance);
 	return -ENODEV;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
