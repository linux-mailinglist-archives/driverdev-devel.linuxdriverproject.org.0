Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8F99A058
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 21:45:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20AAA8795A;
	Thu, 22 Aug 2019 19:45:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYR1nI2X6+gK; Thu, 22 Aug 2019 19:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A73C8793F;
	Thu, 22 Aug 2019 19:45:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36C811BF3B8
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 19:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2FE6B86AB6
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 19:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 11v075SsIkFZ for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 19:45:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs5.siol.net [185.57.226.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BFA0586AB2
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 19:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id E0B52524922;
 Thu, 22 Aug 2019 21:45:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id GUgxcelfQGCl; Thu, 22 Aug 2019 21:45:26 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 84BC452481F;
 Thu, 22 Aug 2019 21:45:26 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 20948524922;
 Thu, 22 Aug 2019 21:45:24 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
Subject: [PATCH 7/8] media: cedrus: Add support for holding capture buffer
Date: Thu, 22 Aug 2019 21:44:59 +0200
Message-Id: <20190822194500.2071-8-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190822194500.2071-1-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, pawel@osciak.com,
 acourbot@chromium.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 wens@csie.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 ezequiel@collabora.com, linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
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
 drivers/staging/media/sunxi/cedrus/cedrus_dec.c   | 9 +++++++++
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 8 +++++---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 1 +
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index d7b54accfe83..68462b99750e 100644
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
 	run.first_slice =
 		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;
 
@@ -46,6 +54,7 @@ void cedrus_device_run(void *priv)
 			V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
 		run.mpeg2.quantization = cedrus_find_control_data(ctx,
 			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
+		run.dst->is_held = false;
 		break;
 
 	case V4L2_PIX_FMT_H264_SLICE:
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index a942cd9bed57..99fedec80224 100644
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
index eeee3efd247b..5153b2bba21e 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -515,6 +515,7 @@ int cedrus_queue_init(void *priv, struct vb2_queue *src_vq,
 	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
 	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	src_vq->drv_priv = ctx;
+	src_vq->subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
 	src_vq->buf_struct_size = sizeof(struct cedrus_buffer);
 	src_vq->min_buffers_needed = 1;
 	src_vq->ops = &cedrus_qops;
-- 
2.22.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
