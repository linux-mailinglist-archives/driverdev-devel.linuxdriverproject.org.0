Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C77119371
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 22:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E81928842E;
	Tue, 10 Dec 2019 21:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GpcwacFZD7Gb; Tue, 10 Dec 2019 21:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D3A788395;
	Tue, 10 Dec 2019 21:12:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 547C61BF580
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 514AD8835D
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBdbm4-cKFGF for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 21:12:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C91BD8834C
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 21:12:05 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEAEE246B4;
 Tue, 10 Dec 2019 21:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012325;
 bh=alF0iVCcCKNzMmvm++PJFTaNJLFbEjzDjBZ5N5Wh7Ik=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c6ogMpVVVNXNkM3gHTDPez/XuK+/xjvVC6G7wk32griTt20HMUm/fHq7oA6n5ptV3
 kSYMNfvy7dABNHOUqVBcZDPPsFIxmcKbOaUZ3dNmNgTXPh8HFAJ0bGcuEGnFq69XK5
 DGGr/C43+LutRINGQA7fhA2JpZhdlBVqjG8m7Pww=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 258/350] media: cedrus: Use helpers to access
 capture queue
Date: Tue, 10 Dec 2019 16:06:03 -0500
Message-Id: <20191210210735.9077-219-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Jernej Skrabec <jernej.skrabec@siol.net>

[ Upstream commit 1fd50a2c294457508f06b8b631d01a58de81cdd2 ]

Accessing capture queue structue directly is not safe. Use helpers for
that.

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h      | 8 ++++++--
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++++++--
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 2f017a6518486..3758a1c4e2d05 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -179,12 +179,16 @@ static inline dma_addr_t cedrus_buf_addr(struct vb2_buffer *buf,
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
index d6a782703c9b0..08c6c9c410cc3 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -96,7 +96,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
 	const struct v4l2_ctrl_h264_slice_params *slice = run->h264.slice_params;
 	const struct v4l2_ctrl_h264_sps *sps = run->h264.sps;
-	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
+	struct vb2_queue *cap_q;
 	struct cedrus_buffer *output_buf;
 	struct cedrus_dev *dev = ctx->dev;
 	unsigned long used_dpbs = 0;
@@ -104,6 +104,8 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 	unsigned int output = 0;
 	unsigned int i;
 
+	cap_q = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
+
 	memset(pic_list, 0, sizeof(pic_list));
 
 	for (i = 0; i < ARRAY_SIZE(decode->dpb); i++) {
@@ -167,12 +169,14 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
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
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
