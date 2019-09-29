Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E17C1946
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 22:01:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CC23879A5;
	Sun, 29 Sep 2019 20:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wnPjk2j-izQQ; Sun, 29 Sep 2019 20:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0F8B878CD;
	Sun, 29 Sep 2019 20:01:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E4011BF389
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 20:01:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 077E785D6C
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 20:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id szntZqYeyn16 for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 20:01:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs14.siol.net [185.57.226.205])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F41285D68
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 20:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 751D75223B9;
 Sun, 29 Sep 2019 22:01:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id RRnT9vDB_VQ1; Sun, 29 Sep 2019 22:01:07 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 0D1E552233F;
 Sun, 29 Sep 2019 22:01:07 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 96C2E5223B9;
 Sun, 29 Sep 2019 22:01:04 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
Subject: [PATCH v2 6/6] media: cedrus: Add support for holding capture buffer
Date: Sun, 29 Sep 2019 22:00:23 +0200
Message-Id: <20190929200023.215831-7-jernej.skrabec@siol.net>
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

When frame contains multiple slices and driver works in slice mode, it's
more efficient to hold capture buffer in queue until all slices of a
same frame are decoded.

Add support for that to Cedrus driver by exposing and implementing
V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF capability.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_dec.c   |  9 +++++++++
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c    |  8 +++++---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++++++++++
 3 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index e49c3396ca4d..67f7d4326fc1 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
@@ -31,6 +31,14 @@ void cedrus_device_run(void *priv)
 
 	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+
+	if (v4l2_m2m_release_capture_buf(run.src, run.dst)) {
+		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+		v4l2_m2m_buf_done(run.dst, VB2_BUF_STATE_DONE);
+		run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	}
+	run.dst->is_held = run.src->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+
 	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
 		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;
 
@@ -46,6 +54,7 @@ void cedrus_device_run(void *priv)
 			V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
 		run.mpeg2.quantization = cedrus_find_control_data(ctx,
 			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
+		run.dst->is_held = false;
 		break;
 
 	case V4L2_PIX_FMT_H264_SLICE:
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index fc8579b90dab..b466041c25db 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -122,7 +122,7 @@ static irqreturn_t cedrus_irq(int irq, void *data)
 	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);
 
 	src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 
 	if (!src_buf || !dst_buf) {
 		v4l2_err(&dev->v4l2_dev,
@@ -136,8 +136,10 @@ static irqreturn_t cedrus_irq(int irq, void *data)
 		state = VB2_BUF_STATE_DONE;
 
 	v4l2_m2m_buf_done(src_buf, state);
-	v4l2_m2m_buf_done(dst_buf, state);
-
+	if (!dst_buf->is_held) {
+		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+		v4l2_m2m_buf_done(dst_buf, state);
+	}
 	v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);
 
 	return IRQ_HANDLED;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 3ec3a2db790c..82198b2bb081 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -303,6 +303,17 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
 
 	ctx->src_fmt = f->fmt.pix;
 
+	switch (ctx->src_fmt.pixelformat) {
+	case V4L2_PIX_FMT_H264_SLICE:
+		vq->subsystem_flags |=
+			VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
+		break;
+	default:
+		vq->subsystem_flags &=
+			(u32)~VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
+		break;
+	}
+
 	/* Propagate colorspace information to capture. */
 	ctx->dst_fmt.colorspace = f->fmt.pix.colorspace;
 	ctx->dst_fmt.xfer_func = f->fmt.pix.xfer_func;
@@ -336,6 +347,9 @@ const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
 	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
 	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
 
+	.vidioc_try_decoder_cmd		= v4l2_m2m_ioctl_stateless_try_decoder_cmd,
+	.vidioc_decoder_cmd		= v4l2_m2m_ioctl_stateless_decoder_cmd,
+
 	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
 };
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
