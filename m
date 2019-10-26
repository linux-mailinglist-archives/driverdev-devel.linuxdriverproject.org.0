Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 329E4E5E48
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 19:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2069861A4;
	Sat, 26 Oct 2019 17:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mzuxjxgAXNm4; Sat, 26 Oct 2019 17:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CA538620B;
	Sat, 26 Oct 2019 17:47:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C88F21BF44A
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 17:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5A708610A
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 17:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofYnJY9w1Qgb for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 17:47:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs44.siol.net [185.57.226.235])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11C10860B5
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 17:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 2D7AE523991;
 Sat, 26 Oct 2019 19:47:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 78Q2iftWDMu5; Sat, 26 Oct 2019 19:47:23 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id CC977520606;
 Sat, 26 Oct 2019 19:47:23 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 76B70523991;
 Sat, 26 Oct 2019 19:47:21 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 4/4] media: cedrus: hevc: Add support for multiple slices
Date: Sat, 26 Oct 2019 19:47:03 +0200
Message-Id: <20191026174703.1120023-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026174703.1120023-1-jernej.skrabec@siol.net>
References: <20191026174703.1120023-1-jernej.skrabec@siol.net>
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 boris.brezillon@collabora.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now that segment address is available, support for multi-slice frames
can be easily added.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 21 +++++++++++++++----
 .../staging/media/sunxi/cedrus/cedrus_video.c |  1 +
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
index 888bfd5ca224..e909adf6f30f 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -366,15 +366,28 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	reg = VE_DEC_H265_BITS_END_ADDR_BASE(src_buf_end_addr);
 	cedrus_write(dev, VE_DEC_H265_BITS_END_ADDR, reg);
 
-	/* Coding tree block address: start at the beginning. */
+	/* Coding tree block address */
 	reg = VE_DEC_H265_DEC_CTB_ADDR_X(0) | VE_DEC_H265_DEC_CTB_ADDR_Y(0);
+	if (!ctx->fh.m2m_ctx->new_frame) {
+		unsigned int log2_max_luma_coding_block_size =
+			sps->log2_min_luma_coding_block_size_minus3 + 3 +
+			sps->log2_diff_max_min_luma_coding_block_size;
+		unsigned int ctb_size_luma =
+			1UL << log2_max_luma_coding_block_size;
+		unsigned int width_in_ctb_luma =
+			DIV_ROUND_UP(sps->pic_width_in_luma_samples, ctb_size_luma);
+
+		reg = VE_DEC_H265_DEC_CTB_ADDR_X(slice_params->slice_segment_addr % width_in_ctb_luma);
+		reg |= VE_DEC_H265_DEC_CTB_ADDR_Y(slice_params->slice_segment_addr / width_in_ctb_luma);
+	}
 	cedrus_write(dev, VE_DEC_H265_DEC_CTB_ADDR, reg);
 
 	cedrus_write(dev, VE_DEC_H265_TILE_START_CTB, 0);
 	cedrus_write(dev, VE_DEC_H265_TILE_END_CTB, 0);
 
 	/* Clear the number of correctly-decoded coding tree blocks. */
-	cedrus_write(dev, VE_DEC_H265_DEC_CTB_NUM, 0);
+	if (ctx->fh.m2m_ctx->new_frame)
+		cedrus_write(dev, VE_DEC_H265_DEC_CTB_NUM, 0);
 
 	/* Initialize bitstream access. */
 	cedrus_write(dev, VE_DEC_H265_TRIGGER, VE_DEC_H265_TRIGGER_INIT_SWDEC);
@@ -523,8 +536,8 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 				V4L2_HEVC_PPS_FLAG_DEPENDENT_SLICE_SEGMENT,
 				pps->flags);
 
-	/* FIXME: For multi-slice support. */
-	reg |= VE_DEC_H265_DEC_SLICE_HDR_INFO0_FLAG_FIRST_SLICE_SEGMENT_IN_PIC;
+	if (ctx->fh.m2m_ctx->new_frame)
+		reg |= VE_DEC_H265_DEC_SLICE_HDR_INFO0_FLAG_FIRST_SLICE_SEGMENT_IN_PIC;
 
 	cedrus_write(dev, VE_DEC_H265_DEC_SLICE_HDR_INFO0, reg);
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 15cf1f10221b..497b1199d3fe 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -311,6 +311,7 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
 
 	switch (ctx->src_fmt.pixelformat) {
 	case V4L2_PIX_FMT_H264_SLICE:
+	case V4L2_PIX_FMT_HEVC_SLICE:
 		vq->subsystem_flags |=
 			VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
 		break;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
