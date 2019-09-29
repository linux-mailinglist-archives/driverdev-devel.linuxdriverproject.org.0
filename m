Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A08C1943
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 22:01:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAAFC8797A;
	Sun, 29 Sep 2019 20:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MeMKtG1cxjYU; Sun, 29 Sep 2019 20:01:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B311B879C3;
	Sun, 29 Sep 2019 20:01:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93DC01BF389
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 20:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 871FF85FAC
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 20:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ModXOPELWVev for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 20:00:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs37.siol.net [185.57.226.228])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2D7F85C9A
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 20:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 5E61C5222FC;
 Sun, 29 Sep 2019 22:00:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id gZznrNoI1-3g; Sun, 29 Sep 2019 22:00:54 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 6E13A52233F;
 Sun, 29 Sep 2019 22:00:54 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 043615226EA;
 Sun, 29 Sep 2019 22:00:51 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
Subject: [PATCH v2 1/6] vb2: add V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
Date: Sun, 29 Sep 2019 22:00:18 +0200
Message-Id: <20190929200023.215831-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190929200023.215831-1-jernej.skrabec@siol.net>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, jonas@kwiboo.se,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 boris.brezillon@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hans Verkuil <hverkuil-cisco@xs4all.nl>

This patch adds support for the V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF flag.
It also adds a new V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF capability and
a v4l2_m2m_release_capture_buf() helper function.

Drivers should set vb2_queue->subsystem_flags to
VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF to indicate support for this flag.

The device_run() function should look like this:

if (v4l2_m2m_release_capture_buf(out_vb, cap_vb)) {
	v4l2_m2m_dst_buf_remove(m2m_ctx);
	v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
	cap_vb = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
}
cap_vb->is_held = out_vb->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;

...

v4l2_m2m_buf_done(out_vb, VB2_BUF_STATE_DONE);
if (!cap_vb->is_held) {
	v4l2_m2m_dst_buf_remove(m2m_ctx);
	v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
}

In order to handle the corner case where V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
is always set for the output buffer, and you reached the last frame (so no
new output buffer will be queued with a new timestamp), the driver must
implement support for the V4L2_DEC_CMD_FLUSH command, and that should do:

struct vb2_v4l2_buffer *out_vb = v4l2_m2m_last_src_buf(m2m_ctx);
struct vb2_v4l2_buffer *cap_vb = v4l2_m2m_last_dst_buf(m2m_ctx);

if (out_vb)
	out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
else if (cap_vb && cap_vb->is_held)
	v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);

For formats that do not support slicing (e.g. VP8), the FLUSH command
just does nothing.

Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Tested-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
[Adjust example code]
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 Documentation/media/uapi/v4l/buffer.rst       | 13 ++++++
 .../media/uapi/v4l/vidioc-reqbufs.rst         |  6 +++
 .../media/common/videobuf2/videobuf2-v4l2.c   |  8 +++-
 include/media/v4l2-mem2mem.h                  | 42 +++++++++++++++++++
 include/media/videobuf2-core.h                |  3 ++
 include/media/videobuf2-v4l2.h                |  5 +++
 include/uapi/linux/videodev2.h                | 13 +++---
 7 files changed, 84 insertions(+), 6 deletions(-)

diff --git a/Documentation/media/uapi/v4l/buffer.rst b/Documentation/media/uapi/v4l/buffer.rst
index 1cbd9cde57f3..afb03906ead9 100644
--- a/Documentation/media/uapi/v4l/buffer.rst
+++ b/Documentation/media/uapi/v4l/buffer.rst
@@ -607,6 +607,19 @@ Buffer Flags
 	applications shall use this flag for output buffers if the data in
 	this buffer has not been created by the CPU but by some
 	DMA-capable unit, in which case caches have not been used.
+    * .. _`V4L2-BUF-FLAG-M2M-HOLD-CAPTURE-BUF`:
+
+      - ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF``
+      - 0x00000200
+      - Only valid if ``V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF`` is
+        set. It is typically used with stateless decoders where multiple
+	output buffers each decode to a slice of the decoded frame.
+	Applications can set this flag when queueing the output buffer
+	to prevent the driver from dequeueing the capture buffer after
+	the output buffer has been decoded (i.e. the capture buffer is
+	'held'). If the timestamp of this output buffer differs from that
+	of the previous output buffer, then that indicates the start of a
+	new frame and the previously held capture buffer is dequeued.
     * .. _`V4L2-BUF-FLAG-LAST`:
 
       - ``V4L2_BUF_FLAG_LAST``
diff --git a/Documentation/media/uapi/v4l/vidioc-reqbufs.rst b/Documentation/media/uapi/v4l/vidioc-reqbufs.rst
index d7faef10e39b..d0c643db477a 100644
--- a/Documentation/media/uapi/v4l/vidioc-reqbufs.rst
+++ b/Documentation/media/uapi/v4l/vidioc-reqbufs.rst
@@ -125,6 +125,7 @@ aborting or finishing any DMA in progress, an implicit
 .. _V4L2-BUF-CAP-SUPPORTS-DMABUF:
 .. _V4L2-BUF-CAP-SUPPORTS-REQUESTS:
 .. _V4L2-BUF-CAP-SUPPORTS-ORPHANED-BUFS:
+.. _V4L2-BUF-CAP-SUPPORTS-M2M-HOLD-CAPTURE-BUF:
 
 .. cssclass:: longtable
 
@@ -150,6 +151,11 @@ aborting or finishing any DMA in progress, an implicit
       - The kernel allows calling :ref:`VIDIOC_REQBUFS` while buffers are still
         mapped or exported via DMABUF. These orphaned buffers will be freed
         when they are unmapped or when the exported DMABUF fds are closed.
+    * - ``V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF``
+      - 0x00000020
+      - Only valid for stateless decoders. If set, then userspace can set the
+        ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag to hold off on returning the
+	capture buffer until the OUTPUT timestamp changes.
 
 Return Value
 ============
diff --git a/drivers/media/common/videobuf2/videobuf2-v4l2.c b/drivers/media/common/videobuf2/videobuf2-v4l2.c
index 5a9ba3846f0a..699787f48f46 100644
--- a/drivers/media/common/videobuf2/videobuf2-v4l2.c
+++ b/drivers/media/common/videobuf2/videobuf2-v4l2.c
@@ -50,7 +50,8 @@ module_param(debug, int, 0644);
 				 V4L2_BUF_FLAG_TIMESTAMP_MASK)
 /* Output buffer flags that should be passed on to the driver */
 #define V4L2_BUFFER_OUT_FLAGS	(V4L2_BUF_FLAG_PFRAME | V4L2_BUF_FLAG_BFRAME | \
-				 V4L2_BUF_FLAG_KEYFRAME | V4L2_BUF_FLAG_TIMECODE)
+				 V4L2_BUF_FLAG_KEYFRAME | V4L2_BUF_FLAG_TIMECODE | \
+				 V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF)
 
 /*
  * __verify_planes_array() - verify that the planes array passed in struct
@@ -194,6 +195,7 @@ static int vb2_fill_vb2_v4l2_buffer(struct vb2_buffer *vb, struct v4l2_buffer *b
 	}
 	vbuf->sequence = 0;
 	vbuf->request_fd = -1;
+	vbuf->is_held = false;
 
 	if (V4L2_TYPE_IS_MULTIPLANAR(b->type)) {
 		switch (b->memory) {
@@ -321,6 +323,8 @@ static int vb2_fill_vb2_v4l2_buffer(struct vb2_buffer *vb, struct v4l2_buffer *b
 		 */
 		vbuf->flags &= ~V4L2_BUF_FLAG_TIMECODE;
 		vbuf->field = b->field;
+		if (!(q->subsystem_flags & VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF))
+			vbuf->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
 	} else {
 		/* Zero any output buffer flags as this is a capture buffer */
 		vbuf->flags &= ~V4L2_BUFFER_OUT_FLAGS;
@@ -654,6 +658,8 @@ static void fill_buf_caps(struct vb2_queue *q, u32 *caps)
 		*caps |= V4L2_BUF_CAP_SUPPORTS_USERPTR;
 	if (q->io_modes & VB2_DMABUF)
 		*caps |= V4L2_BUF_CAP_SUPPORTS_DMABUF;
+	if (q->subsystem_flags & VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF)
+		*caps |= V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
 #ifdef CONFIG_MEDIA_CONTROLLER_REQUEST_API
 	if (q->supports_requests)
 		*caps |= V4L2_BUF_CAP_SUPPORTS_REQUESTS;
diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
index 0b9c3a287061..c9fa96c8eed1 100644
--- a/include/media/v4l2-mem2mem.h
+++ b/include/media/v4l2-mem2mem.h
@@ -644,6 +644,48 @@ void v4l2_m2m_buf_copy_metadata(const struct vb2_v4l2_buffer *out_vb,
 				struct vb2_v4l2_buffer *cap_vb,
 				bool copy_frame_flags);
 
+/**
+ * v4l2_m2m_release_capture_buf() - check if the capture buffer should be
+ * released
+ *
+ * @out_vb: the output buffer
+ * @cap_vb: the capture buffer
+ *
+ * This helper function returns true if the current capture buffer should
+ * be released to vb2. This is the case if the output buffer specified that
+ * the capture buffer should be held (i.e. not returned to vb2) AND if the
+ * timestamp of the capture buffer differs from the output buffer timestamp.
+ *
+ * This helper is to be called at the start of the device_run callback:
+ *
+ * .. code-block:: c
+ *
+ *	if (v4l2_m2m_release_capture_buf(out_vb, cap_vb)) {
+ *		v4l2_m2m_dst_buf_remove(m2m_ctx);
+ *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+ *		cap_vb = v4l2_m2m_next_dst_buf(m2m_ctx);
+ *	}
+ *	cap_vb->is_held = out_vb->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+ *
+ *	...
+ *
+ *	v4l2_m2m_buf_done(out_vb, VB2_BUF_STATE_DONE);
+ *	if (!cap_vb->is_held) {
+ *		v4l2_m2m_dst_buf_remove(m2m_ctx);
+ *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+ *	}
+ *
+ * This allows for multiple output buffers to be used to fill in a single
+ * capture buffer. This is typically used by stateless decoders where
+ * multiple e.g. H.264 slices contribute to a single decoded frame.
+ */
+static inline bool v4l2_m2m_release_capture_buf(const struct vb2_v4l2_buffer *out_vb,
+						const struct vb2_v4l2_buffer *cap_vb)
+{
+	return cap_vb->is_held && cap_vb->vb2_buf.copied_timestamp &&
+	       out_vb->vb2_buf.timestamp != cap_vb->vb2_buf.timestamp;
+}
+
 /* v4l2 request helper */
 
 void v4l2_m2m_request_queue(struct media_request *req);
diff --git a/include/media/videobuf2-core.h b/include/media/videobuf2-core.h
index 640aabe69450..a2b2208b02da 100644
--- a/include/media/videobuf2-core.h
+++ b/include/media/videobuf2-core.h
@@ -505,6 +505,8 @@ struct vb2_buf_ops {
  * @buf_ops:	callbacks to deliver buffer information.
  *		between user-space and kernel-space.
  * @drv_priv:	driver private data.
+ * @subsystem_flags: Flags specific to the subsystem (V4L2/DVB/etc.). Not used
+ *		by the vb2 core.
  * @buf_struct_size: size of the driver-specific buffer structure;
  *		"0" indicates the driver doesn't want to use a custom buffer
  *		structure type. for example, ``sizeof(struct vb2_v4l2_buffer)``
@@ -571,6 +573,7 @@ struct vb2_queue {
 	const struct vb2_buf_ops	*buf_ops;
 
 	void				*drv_priv;
+	u32				subsystem_flags;
 	unsigned int			buf_struct_size;
 	u32				timestamp_flags;
 	gfp_t				gfp_flags;
diff --git a/include/media/videobuf2-v4l2.h b/include/media/videobuf2-v4l2.h
index 8a10889dc2fd..13ab101864aa 100644
--- a/include/media/videobuf2-v4l2.h
+++ b/include/media/videobuf2-v4l2.h
@@ -33,6 +33,7 @@
  * @timecode:	frame timecode.
  * @sequence:	sequence count of this frame.
  * @request_fd:	the request_fd associated with this buffer
+ * @is_held:	if true, then this buffer was held
  * @planes:	plane information (userptr/fd, length, bytesused, data_offset).
  *
  * Should contain enough information to be able to cover all the fields
@@ -46,9 +47,13 @@ struct vb2_v4l2_buffer {
 	struct v4l2_timecode	timecode;
 	__u32			sequence;
 	__s32			request_fd;
+	bool			is_held;
 	struct vb2_plane	planes[VB2_MAX_PLANES];
 };
 
+/* VB2 V4L2 flags as set in vb2_queue.subsystem_flags */
+#define VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF (1 << 0)
+
 /*
  * to_vb2_v4l2_buffer() - cast struct vb2_buffer * to struct vb2_v4l2_buffer *
  */
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 530638dffd93..4fa9f543742d 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -915,11 +915,12 @@ struct v4l2_requestbuffers {
 };
 
 /* capabilities for struct v4l2_requestbuffers and v4l2_create_buffers */
-#define V4L2_BUF_CAP_SUPPORTS_MMAP	(1 << 0)
-#define V4L2_BUF_CAP_SUPPORTS_USERPTR	(1 << 1)
-#define V4L2_BUF_CAP_SUPPORTS_DMABUF	(1 << 2)
-#define V4L2_BUF_CAP_SUPPORTS_REQUESTS	(1 << 3)
-#define V4L2_BUF_CAP_SUPPORTS_ORPHANED_BUFS (1 << 4)
+#define V4L2_BUF_CAP_SUPPORTS_MMAP			(1 << 0)
+#define V4L2_BUF_CAP_SUPPORTS_USERPTR			(1 << 1)
+#define V4L2_BUF_CAP_SUPPORTS_DMABUF			(1 << 2)
+#define V4L2_BUF_CAP_SUPPORTS_REQUESTS			(1 << 3)
+#define V4L2_BUF_CAP_SUPPORTS_ORPHANED_BUFS		(1 << 4)
+#define V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF	(1 << 5)
 
 /**
  * struct v4l2_plane - plane info for multi-planar buffers
@@ -1041,6 +1042,8 @@ static inline __u64 v4l2_timeval_to_ns(const struct timeval *tv)
 #define V4L2_BUF_FLAG_IN_REQUEST		0x00000080
 /* timecode field is valid */
 #define V4L2_BUF_FLAG_TIMECODE			0x00000100
+/* Don't return the capture buffer until OUTPUT timestamp changes */
+#define V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF	0x00000200
 /* Buffer is prepared for queuing */
 #define V4L2_BUF_FLAG_PREPARED			0x00000400
 /* Cache handling flags */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
