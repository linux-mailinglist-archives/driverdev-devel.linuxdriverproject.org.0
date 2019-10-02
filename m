Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CDEC9271
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 21:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D57B0204E0;
	Wed,  2 Oct 2019 19:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E2W48V2iNLBf; Wed,  2 Oct 2019 19:36:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F325C226D8;
	Wed,  2 Oct 2019 19:36:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A33B91BF969
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:36:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A0B9581E57
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WIRu2Ah2ioTY for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 19:36:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs33.siol.net [185.57.226.224])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00FAE820BF
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 19:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DBBFC523B2B;
 Wed,  2 Oct 2019 21:36:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id HIr41ruBPwmH; Wed,  2 Oct 2019 21:36:07 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8994F523B0A;
 Wed,  2 Oct 2019 21:36:07 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 3F4AE523B34;
 Wed,  2 Oct 2019 21:36:05 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v2 3/3] media: cedrus: Use helpers to access capture queue
Date: Wed,  2 Oct 2019 21:35:53 +0200
Message-Id: <20191002193553.1633467-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002193553.1633467-1-jernej.skrabec@siol.net>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
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
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Accessing capture queue structue directly is not safe. Use helpers for
that.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h      | 8 ++++++--
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++++++--
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 986e059e3202..c45fb9a7ad07 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -197,12 +197,16 @@ static inline dma_addr_t cedrus_buf_addr(struct vb2_buffer *buf,
 static inline dma_addr_t cedrus_dst_buf_addr(struct cedrus_ctx *ctx,
 					     int index, unsigned int plane)
 {
-	struct vb2_buffer *buf;
+	struct vb2_buffer *buf = NULL;
+	struct vb2_queue *vq;
 
 	if (index < 0)
 		return 0;
 
-	buf = ctx->fh.m2m_ctx->cap_q_ctx.q.bufs[index];
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
+	if (vq)
+		buf = vb2_get_buffer(vq, index);
+
 	return buf ? cedrus_buf_addr(buf, &ctx->dst_fmt, plane) : 0;
 }
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index 4a0e69855c7f..4650982c69a8 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -97,7 +97,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
 	const struct v4l2_ctrl_h264_slice_params *slice = run->h264.slice_params;
 	const struct v4l2_ctrl_h264_sps *sps = run->h264.sps;
-	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
+	struct vb2_queue *cap_q;
 	struct cedrus_buffer *output_buf;
 	struct cedrus_dev *dev = ctx->dev;
 	unsigned long used_dpbs = 0;
@@ -105,6 +105,8 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 	unsigned int output = 0;
 	unsigned int i;
 
+	cap_q = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
+
 	memset(pic_list, 0, sizeof(pic_list));
 
 	for (i = 0; i < ARRAY_SIZE(decode->dpb); i++) {
@@ -168,12 +170,14 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 				   enum cedrus_h264_sram_off sram)
 {
 	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
-	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
+	struct vb2_queue *cap_q;
 	struct cedrus_dev *dev = ctx->dev;
 	u8 sram_array[CEDRUS_MAX_REF_IDX];
 	unsigned int i;
 	size_t size;
 
+	cap_q = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
+
 	memset(sram_array, 0, sizeof(sram_array));
 
 	for (i = 0; i < num_ref; i++) {
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
