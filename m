Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B039F20577F
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 18:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 457DE88DC3;
	Tue, 23 Jun 2020 16:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c32ihxT4oBpv; Tue, 23 Jun 2020 16:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE25688A2B;
	Tue, 23 Jun 2020 16:45:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9602F1BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 930A6876DB
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z4knTS9TY8Tb for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 16:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 60DDC876D2
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 16:45:11 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 8A771B03C;
 Tue, 23 Jun 2020 16:45:09 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/50] staging: mmal-vchiq: Make a mmal_buf struct for passing
 parameters
Date: Tue, 23 Jun 2020 18:41:51 +0200
Message-Id: <20200623164235.29566-6-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 kernel-list@raspberrypi.com, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

The callback from vchi_mmal to the client was growing lots of extra
parameters. Consolidate them into a single struct instead of
growing the list further.
The struct is associated with the client buffer, therefore there
are various changes to setup various containers for the struct,
and pass the appropriate members.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-camera/bcm2835-camera.c           | 64 +++++++++++--------
 .../vc04_services/vchiq-mmal/mmal-common.h    |  5 ++
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 29 ++++++---
 .../vc04_services/vchiq-mmal/mmal-vchiq.h     |  3 +-
 4 files changed, 65 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 4f1adddb804f..73b2354a6bb7 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -75,6 +75,12 @@ static const struct v4l2_fract
 	tpf_max     = {.numerator = 1,	        .denominator = FPS_MIN},
 	tpf_default = {.numerator = 1000,	.denominator = 30000};
 
+/* Container for MMAL and VB2 buffers*/
+struct vb2_mmal_buffer {
+	struct vb2_v4l2_buffer	vb;
+	struct mmal_buffer	mmal;
+};
+
 /* video formats */
 static struct mmal_fmt formats[] = {
 	{
@@ -261,14 +267,15 @@ static int buffer_init(struct vb2_buffer *vb)
 {
 	struct bm2835_mmal_dev *dev = vb2_get_drv_priv(vb->vb2_queue);
 	struct vb2_v4l2_buffer *vb2 = to_vb2_v4l2_buffer(vb);
-	struct mmal_buffer *buf = container_of(vb2, struct mmal_buffer, vb);
+	struct vb2_mmal_buffer *buf =
+				container_of(vb2, struct vb2_mmal_buffer, vb);
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "%s: dev:%p, vb %p\n",
 		 __func__, dev, vb);
-	buf->buffer = vb2_plane_vaddr(&buf->vb.vb2_buf, 0);
-	buf->buffer_size = vb2_plane_size(&buf->vb.vb2_buf, 0);
+	buf->mmal.buffer = vb2_plane_vaddr(&buf->vb.vb2_buf, 0);
+	buf->mmal.buffer_size = vb2_plane_size(&buf->vb.vb2_buf, 0);
 
-	return mmal_vchi_buffer_init(dev->instance, buf);
+	return mmal_vchi_buffer_init(dev->instance, &buf->mmal);
 }
 
 static int buffer_prepare(struct vb2_buffer *vb)
@@ -297,11 +304,13 @@ static void buffer_cleanup(struct vb2_buffer *vb)
 {
 	struct bm2835_mmal_dev *dev = vb2_get_drv_priv(vb->vb2_queue);
 	struct vb2_v4l2_buffer *vb2 = to_vb2_v4l2_buffer(vb);
-	struct mmal_buffer *buf = container_of(vb2, struct mmal_buffer, vb);
+	struct vb2_mmal_buffer *buf =
+				container_of(vb2, struct vb2_mmal_buffer, vb);
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "%s: dev:%p, vb %p\n",
 		 __func__, dev, vb);
-	mmal_vchi_buffer_cleanup(buf);
+
+	mmal_vchi_buffer_cleanup(&buf->mmal);
 }
 
 static inline bool is_capturing(struct bm2835_mmal_dev *dev)
@@ -313,14 +322,16 @@ static inline bool is_capturing(struct bm2835_mmal_dev *dev)
 static void buffer_cb(struct vchiq_mmal_instance *instance,
 		      struct vchiq_mmal_port *port,
 		      int status,
-		      struct mmal_buffer *buf,
-		      unsigned long length, u32 mmal_flags, s64 dts, s64 pts)
+		      struct mmal_buffer *mmal_buf)
 {
 	struct bm2835_mmal_dev *dev = port->cb_ctx;
+	struct vb2_mmal_buffer *buf =
+			container_of(mmal_buf, struct vb2_mmal_buffer, mmal);
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "%s: status:%d, buf:%p, length:%lu, flags %u, pts %lld\n",
-		 __func__, status, buf, length, mmal_flags, pts);
+		 __func__, status, buf, mmal_buf->length, mmal_buf->mmal_flags,
+		 mmal_buf->pts);
 
 	if (status) {
 		/* error in transfer */
@@ -331,7 +342,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 		return;
 	}
 
-	if (length == 0) {
+	if (mmal_buf->length == 0) {
 		/* stream ended */
 		if (dev->capture.frame_count) {
 			/* empty buffer whilst capturing - expected to be an
@@ -347,7 +358,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 					&dev->capture.frame_count,
 					sizeof(dev->capture.frame_count));
 			}
-			if (vchiq_mmal_submit_buffer(instance, port, buf))
+			if (vchiq_mmal_submit_buffer(instance, port,
+						     &buf->mmal))
 				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 					 "Failed to return EOS buffer");
 		} else {
@@ -367,16 +379,16 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 		return;
 	}
 
-	if (dev->capture.vc_start_timestamp != -1 && pts) {
+	if (dev->capture.vc_start_timestamp != -1 && mmal_buf->pts) {
 		ktime_t timestamp;
-		s64 runtime_us = pts - dev->capture.vc_start_timestamp;
-
+		s64 runtime_us = mmal_buf->pts -
+		    dev->capture.vc_start_timestamp;
 		timestamp = ktime_add_us(dev->capture.kernel_start_ts,
 					 runtime_us);
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Convert start time %llu and %llu with offset %llu to %llu\n",
 			 ktime_to_ns(dev->capture.kernel_start_ts),
-			 dev->capture.vc_start_timestamp, pts,
+			 dev->capture.vc_start_timestamp, mmal_buf->pts,
 			 ktime_to_ns(timestamp));
 		buf->vb.vb2_buf.timestamp = ktime_to_ns(timestamp);
 	} else {
@@ -385,13 +397,13 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	buf->vb.sequence = dev->capture.sequence++;
 	buf->vb.field = V4L2_FIELD_NONE;
 
-	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
-	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
+	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, mmal_buf->length);
+	if (mmal_buf->mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
 		buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;
 
 	vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
 
-	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
+	if (mmal_buf->mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
 	    is_capturing(dev)) {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Grab another frame as buffer has EOS");
@@ -472,14 +484,16 @@ static void buffer_queue(struct vb2_buffer *vb)
 {
 	struct bm2835_mmal_dev *dev = vb2_get_drv_priv(vb->vb2_queue);
 	struct vb2_v4l2_buffer *vb2 = to_vb2_v4l2_buffer(vb);
-	struct mmal_buffer *buf = container_of(vb2, struct mmal_buffer, vb);
+	struct vb2_mmal_buffer *buf =
+				container_of(vb2, struct vb2_mmal_buffer, vb);
 	int ret;
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "%s: dev:%p buf:%p, idx %u\n",
 		 __func__, dev, buf, vb2->vb2_buf.index);
 
-	ret = vchiq_mmal_submit_buffer(dev->instance, dev->capture.port, buf);
+	ret = vchiq_mmal_submit_buffer(dev->instance, dev->capture.port,
+				       &buf->mmal);
 	if (ret < 0)
 		v4l2_err(&dev->v4l2_dev, "%s: error submitting buffer\n",
 			 __func__);
@@ -592,7 +606,7 @@ static void stop_streaming(struct vb2_queue *vq)
 	dev->capture.frame_count = 0;
 
 	/* ensure a format has actually been set */
-	if (!dev->capture.port) {
+	if (!port) {
 		v4l2_err(&dev->v4l2_dev,
 			 "no capture port - stream not started?\n");
 		return;
@@ -612,11 +626,11 @@ static void stop_streaming(struct vb2_queue *vq)
 
 	/* disable the connection from camera to encoder */
 	ret = vchiq_mmal_port_disable(dev->instance, dev->capture.camera_port);
-	if (!ret && dev->capture.camera_port != dev->capture.port) {
+	if (!ret && dev->capture.camera_port != port) {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "disabling port\n");
-		ret = vchiq_mmal_port_disable(dev->instance, dev->capture.port);
-	} else if (dev->capture.camera_port != dev->capture.port) {
+		ret = vchiq_mmal_port_disable(dev->instance, port);
+	} else if (dev->capture.camera_port != port) {
 		v4l2_err(&dev->v4l2_dev, "port_disable failed, error %d\n",
 			 ret);
 	}
@@ -1916,7 +1930,7 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
 		q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 		q->io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
 		q->drv_priv = dev;
-		q->buf_struct_size = sizeof(struct mmal_buffer);
+		q->buf_struct_size = sizeof(struct vb2_mmal_buffer);
 		q->ops = &bm2835_mmal_video_qops;
 		q->mem_ops = &vb2_vmalloc_memops;
 		q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-common.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-common.h
index ce88fac7c24b..5bd7410a034a 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-common.h
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-common.h
@@ -49,6 +49,11 @@ struct mmal_buffer {
 	unsigned long buffer_size; /* size of allocated buffer */
 
 	struct mmal_msg_context *msg_context;
+
+	unsigned long length;
+	u32 mmal_flags;
+	s64 dts;
+	s64 pts;
 };
 
 /* */
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 070ff63b3850..48feeef60091 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -253,17 +253,25 @@ static void buffer_work_cb(struct work_struct *work)
 {
 	struct mmal_msg_context *msg_context =
 		container_of(work, struct mmal_msg_context, u.bulk.work);
+	struct mmal_buffer *buffer = msg_context->u.bulk.buffer;
+
+	if (!buffer) {
+		pr_err("%s: ctx: %p, No mmal buffer to pass details\n",
+		       __func__, msg_context);
+		return;
+	}
+
+	buffer->length = msg_context->u.bulk.buffer_used;
+	buffer->mmal_flags = msg_context->u.bulk.mmal_flags;
+	buffer->dts = msg_context->u.bulk.dts;
+	buffer->pts = msg_context->u.bulk.pts;
 
 	atomic_dec(&msg_context->u.bulk.port->buffers_with_vpu);
 
 	msg_context->u.bulk.port->buffer_cb(msg_context->u.bulk.instance,
 					    msg_context->u.bulk.port,
 					    msg_context->u.bulk.status,
-					    msg_context->u.bulk.buffer,
-					    msg_context->u.bulk.buffer_used,
-					    msg_context->u.bulk.mmal_flags,
-					    msg_context->u.bulk.dts,
-					    msg_context->u.bulk.pts);
+					    msg_context->u.bulk.buffer);
 }
 
 /* workqueue scheduled callback to handle receiving buffers
@@ -1321,11 +1329,14 @@ static int port_disable(struct vchiq_mmal_instance *instance,
 			mmalbuf = list_entry(buf_head, struct mmal_buffer,
 					     list);
 			list_del(buf_head);
-			if (port->buffer_cb)
+			if (port->buffer_cb) {
+				mmalbuf->length = 0;
+				mmalbuf->mmal_flags = 0;
+				mmalbuf->dts = MMAL_TIME_UNKNOWN;
+				mmalbuf->pts = MMAL_TIME_UNKNOWN;
 				port->buffer_cb(instance,
-						port, 0, mmalbuf, 0, 0,
-						MMAL_TIME_UNKNOWN,
-						MMAL_TIME_UNKNOWN);
+						port, 0, mmalbuf);
+			}
 		}
 
 		spin_unlock_irqrestore(&port->slock, flags);
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h
index 4e34728d87e5..cca7289761c2 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h
@@ -44,8 +44,7 @@ struct vchiq_mmal_port;
 typedef void (*vchiq_mmal_buffer_cb)(
 		struct vchiq_mmal_instance  *instance,
 		struct vchiq_mmal_port *port,
-		int status, struct mmal_buffer *buffer,
-		unsigned long length, u32 mmal_flags, s64 dts, s64 pts);
+		int status, struct mmal_buffer *buffer);
 
 struct vchiq_mmal_port {
 	u32 enabled:1;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
