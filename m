Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E515303FB
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E33CB86ABB;
	Thu, 30 May 2019 21:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohf6NUxGrmjE; Thu, 30 May 2019 21:15:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 585B586AB0;
	Thu, 30 May 2019 21:15:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 449F71BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 35EE98837C
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A-VSJbAKZZ7i for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:15:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs2.siol.net [185.57.226.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B04CE88299
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 921095227EC;
 Thu, 30 May 2019 23:15:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id r9Y_XVt21vjG; Thu, 30 May 2019 23:15:40 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2C5BA5228C1;
 Thu, 30 May 2019 23:15:40 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id DAF1E5228C2;
 Thu, 30 May 2019 23:15:37 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 4/7] media: cedrus: Remove dst_bufs from context
Date: Thu, 30 May 2019 23:15:13 +0200
Message-Id: <20190530211516.1891-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This array is just duplicated capture buffer queue. Remove it and adjust
code to look into capture buffer queue instead.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 +---
 .../staging/media/sunxi/cedrus/cedrus_h264.c  |  4 ++--
 .../staging/media/sunxi/cedrus/cedrus_video.c | 22 -------------------
 3 files changed, 3 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 3f476d0fd981..d8e6777e5e27 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -100,8 +100,6 @@ struct cedrus_ctx {
 	struct v4l2_ctrl_handler	hdl;
 	struct v4l2_ctrl		**ctrls;
 
-	struct vb2_buffer		*dst_bufs[VIDEO_MAX_FRAME];
-
 	union {
 		struct {
 			void		*mv_col_buf;
@@ -187,7 +185,7 @@ static inline dma_addr_t cedrus_dst_buf_addr(struct cedrus_ctx *ctx,
 	if (index < 0)
 		return 0;
 
-	buf = ctx->dst_bufs[index];
+	buf = ctx->fh.m2m_ctx->cap_q_ctx.q.bufs[index];
 	return buf ? cedrus_buf_addr(buf, &ctx->dst_fmt, plane) : 0;
 }
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index d0ee3f90ff46..b2290f98d81a 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -119,7 +119,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 		if (buf_idx < 0)
 			continue;
 
-		cedrus_buf = vb2_to_cedrus_buffer(ctx->dst_bufs[buf_idx]);
+		cedrus_buf = vb2_to_cedrus_buffer(cap_q->bufs[buf_idx]);
 		position = cedrus_buf->codec.h264.position;
 		used_dpbs |= BIT(position);
 
@@ -194,7 +194,7 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 		if (buf_idx < 0)
 			continue;
 
-		ref_buf = to_vb2_v4l2_buffer(ctx->dst_bufs[buf_idx]);
+		ref_buf = to_vb2_v4l2_buffer(cap_q->bufs[buf_idx]);
 		cedrus_buf = vb2_v4l2_to_cedrus_buffer(ref_buf);
 		position = cedrus_buf->codec.h264.position;
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index e2b530b1a956..681dfe3367a6 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -411,26 +411,6 @@ static void cedrus_queue_cleanup(struct vb2_queue *vq, u32 state)
 	}
 }
 
-static int cedrus_buf_init(struct vb2_buffer *vb)
-{
-	struct vb2_queue *vq = vb->vb2_queue;
-	struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
-
-	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
-		ctx->dst_bufs[vb->index] = vb;
-
-	return 0;
-}
-
-static void cedrus_buf_cleanup(struct vb2_buffer *vb)
-{
-	struct vb2_queue *vq = vb->vb2_queue;
-	struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
-
-	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
-		ctx->dst_bufs[vb->index] = NULL;
-}
-
 static int cedrus_buf_out_validate(struct vb2_buffer *vb)
 {
 	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
@@ -517,8 +497,6 @@ static void cedrus_buf_request_complete(struct vb2_buffer *vb)
 static struct vb2_ops cedrus_qops = {
 	.queue_setup		= cedrus_queue_setup,
 	.buf_prepare		= cedrus_buf_prepare,
-	.buf_init		= cedrus_buf_init,
-	.buf_cleanup		= cedrus_buf_cleanup,
 	.buf_queue		= cedrus_buf_queue,
 	.buf_out_validate	= cedrus_buf_out_validate,
 	.buf_request_complete	= cedrus_buf_request_complete,
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
