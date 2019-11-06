Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99897F205E
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 22:06:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 723538929F;
	Wed,  6 Nov 2019 21:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9_fpjIlYjjm; Wed,  6 Nov 2019 21:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 194F988FC2;
	Wed,  6 Nov 2019 21:06:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B74C1BF9AF
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 21:06:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 238488A29B
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 21:06:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FsDUCZ2xAFWY for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 21:06:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs24.siol.net [185.57.226.215])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 380768A27F
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 21:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DFEF5524D65;
 Wed,  6 Nov 2019 22:06:06 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id piCD9clFk8gd; Wed,  6 Nov 2019 22:06:06 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 5DB06524A72;
 Wed,  6 Nov 2019 22:06:06 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 0EE64524EEA;
 Wed,  6 Nov 2019 22:06:04 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org, paul.kocialkowski@bootlin.com, hverkuil-cisco@xs4all.nl
Subject: [PATCH v2 2/3] media: cedrus: Fix H264 4k support
Date: Wed,  6 Nov 2019 22:05:37 +0100
Message-Id: <20191106210538.3474-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191106210538.3474-1-jernej.skrabec@siol.net>
References: <20191106210538.3474-1-jernej.skrabec@siol.net>
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
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

H264 decoder needs additional or bigger buffers in order to decode 4k
videos.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  7 ++
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 91 +++++++++++++++++--
 .../staging/media/sunxi/cedrus/cedrus_regs.h  | 11 +++
 3 files changed, 101 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index c45fb9a7ad07..96765555ab8a 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -116,8 +116,15 @@ struct cedrus_ctx {
 			ssize_t		mv_col_buf_size;
 			void		*pic_info_buf;
 			dma_addr_t	pic_info_buf_dma;
+			ssize_t		pic_info_buf_size;
 			void		*neighbor_info_buf;
 			dma_addr_t	neighbor_info_buf_dma;
+			void		*deblk_buf;
+			dma_addr_t	deblk_buf_dma;
+			ssize_t		deblk_buf_size;
+			void		*intra_pred_buf;
+			dma_addr_t	intra_pred_buf_dma;
+			ssize_t		intra_pred_buf_size;
 		} h264;
 		struct {
 			void		*mv_col_buf;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index d2c854ecdf15..ab83a6f1f921 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -39,7 +39,7 @@ struct cedrus_h264_sram_ref_pic {
 #define CEDRUS_H264_FRAME_NUM		18
 
 #define CEDRUS_NEIGHBOR_INFO_BUF_SIZE	(16 * SZ_1K)
-#define CEDRUS_PIC_INFO_BUF_SIZE	(128 * SZ_1K)
+#define CEDRUS_MIN_PIC_INFO_BUF_SIZE       (130 * SZ_1K)
 
 static void cedrus_h264_write_sram(struct cedrus_dev *dev,
 				   enum cedrus_h264_sram_off off,
@@ -342,6 +342,20 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 		     VE_H264_VLD_ADDR_FIRST | VE_H264_VLD_ADDR_VALID |
 		     VE_H264_VLD_ADDR_LAST);
 
+	if (ctx->src_fmt.width > 2048) {
+		cedrus_write(dev, VE_BUF_CTRL,
+			     VE_BUF_CTRL_INTRAPRED_MIXED_RAM |
+			     VE_BUF_CTRL_DBLK_MIXED_RAM);
+		cedrus_write(dev, VE_DBLK_DRAM_BUF_ADDR,
+			     ctx->codec.h264.deblk_buf_dma);
+		cedrus_write(dev, VE_INTRAPRED_DRAM_BUF_ADDR,
+			     ctx->codec.h264.intra_pred_buf_dma);
+	} else {
+		cedrus_write(dev, VE_BUF_CTRL,
+			     VE_BUF_CTRL_INTRAPRED_INT_SRAM |
+			     VE_BUF_CTRL_DBLK_INT_SRAM);
+	}
+
 	/*
 	 * FIXME: Since the bitstream parsing is done in software, and
 	 * in userspace, this shouldn't be needed anymore. But it
@@ -502,18 +516,30 @@ static void cedrus_h264_setup(struct cedrus_ctx *ctx,
 static int cedrus_h264_start(struct cedrus_ctx *ctx)
 {
 	struct cedrus_dev *dev = ctx->dev;
+	unsigned int pic_info_size;
 	unsigned int field_size;
 	unsigned int mv_col_size;
 	int ret;
 
+	/* Formula for picture buffer size is taken from CedarX source. */
+
+	if (ctx->src_fmt.width > 2048)
+		pic_info_size = CEDRUS_H264_FRAME_NUM * 0x4000;
+	else
+		pic_info_size = CEDRUS_H264_FRAME_NUM * 0x1000;
+
 	/*
-	 * FIXME: It seems that the H6 cedarX code is using a formula
-	 * here based on the size of the frame, while all the older
-	 * code is using a fixed size, so that might need to be
-	 * changed at some point.
+	 * FIXME: If V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is set,
+	 * there is no need to multiply by 2.
 	 */
+	pic_info_size += ctx->src_fmt.height * 2 * 64;
+
+	if (pic_info_size < CEDRUS_MIN_PIC_INFO_BUF_SIZE)
+		pic_info_size = CEDRUS_MIN_PIC_INFO_BUF_SIZE;
+
+	ctx->codec.h264.pic_info_buf_size = pic_info_size;
 	ctx->codec.h264.pic_info_buf =
-		dma_alloc_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+		dma_alloc_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
 				   &ctx->codec.h264.pic_info_buf_dma,
 				   GFP_KERNEL);
 	if (!ctx->codec.h264.pic_info_buf)
@@ -566,15 +592,56 @@ static int cedrus_h264_start(struct cedrus_ctx *ctx)
 		goto err_neighbor_buf;
 	}
 
+	if (ctx->src_fmt.width > 2048) {
+		/*
+		 * Formulas for deblock and intra prediction buffer sizes
+		 * are taken from CedarX source.
+		 */
+
+		ctx->codec.h264.deblk_buf_size =
+			ALIGN(ctx->src_fmt.width, 32) * 12;
+		ctx->codec.h264.deblk_buf =
+			dma_alloc_coherent(dev->dev,
+					   ctx->codec.h264.deblk_buf_size,
+					   &ctx->codec.h264.deblk_buf_dma,
+					   GFP_KERNEL);
+		if (!ctx->codec.h264.deblk_buf) {
+			ret = -ENOMEM;
+			goto err_mv_col_buf;
+		}
+
+		ctx->codec.h264.intra_pred_buf_size =
+			ALIGN(ctx->src_fmt.width, 64) * 5;
+		ctx->codec.h264.intra_pred_buf =
+			dma_alloc_coherent(dev->dev,
+					   ctx->codec.h264.intra_pred_buf_size,
+					   &ctx->codec.h264.intra_pred_buf_dma,
+					   GFP_KERNEL);
+		if (!ctx->codec.h264.intra_pred_buf) {
+			ret = -ENOMEM;
+			goto err_deblk_buf;
+		}
+	}
+
 	return 0;
 
+err_deblk_buf:
+	dma_free_coherent(dev->dev, ctx->codec.h264.deblk_buf_size,
+			  ctx->codec.h264.deblk_buf,
+			  ctx->codec.h264.deblk_buf_dma);
+
+err_mv_col_buf:
+	dma_free_coherent(dev->dev, ctx->codec.h264.mv_col_buf_size,
+			  ctx->codec.h264.mv_col_buf,
+			  ctx->codec.h264.mv_col_buf_dma);
+
 err_neighbor_buf:
 	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
 			  ctx->codec.h264.neighbor_info_buf,
 			  ctx->codec.h264.neighbor_info_buf_dma);
 
 err_pic_buf:
-	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
 			  ctx->codec.h264.pic_info_buf,
 			  ctx->codec.h264.pic_info_buf_dma);
 	return ret;
@@ -590,9 +657,17 @@ static void cedrus_h264_stop(struct cedrus_ctx *ctx)
 	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
 			  ctx->codec.h264.neighbor_info_buf,
 			  ctx->codec.h264.neighbor_info_buf_dma);
-	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
 			  ctx->codec.h264.pic_info_buf,
 			  ctx->codec.h264.pic_info_buf_dma);
+	if (ctx->codec.h264.deblk_buf_size)
+		dma_free_coherent(dev->dev, ctx->codec.h264.deblk_buf_size,
+				  ctx->codec.h264.deblk_buf,
+				  ctx->codec.h264.deblk_buf_dma);
+	if (ctx->codec.h264.intra_pred_buf_size)
+		dma_free_coherent(dev->dev, ctx->codec.h264.intra_pred_buf_size,
+				  ctx->codec.h264.intra_pred_buf,
+				  ctx->codec.h264.intra_pred_buf_dma);
 }
 
 static void cedrus_h264_trigger(struct cedrus_ctx *ctx)
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
index ace3d49fcd82..7beb03d3bb39 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
@@ -46,6 +46,17 @@
 #define VE_MODE_DEC_H264			(0x01 << 0)
 #define VE_MODE_DEC_MPEG			(0x00 << 0)
 
+#define VE_BUF_CTRL				0x50
+
+#define VE_BUF_CTRL_INTRAPRED_EXT_RAM		(0x02 << 2)
+#define VE_BUF_CTRL_INTRAPRED_MIXED_RAM		(0x01 << 2)
+#define VE_BUF_CTRL_INTRAPRED_INT_SRAM		(0x00 << 2)
+#define VE_BUF_CTRL_DBLK_EXT_RAM		(0x02 << 0)
+#define VE_BUF_CTRL_DBLK_MIXED_RAM		(0x01 << 0)
+#define VE_BUF_CTRL_DBLK_INT_SRAM		(0x00 << 0)
+
+#define VE_DBLK_DRAM_BUF_ADDR			0x54
+#define VE_INTRAPRED_DRAM_BUF_ADDR		0x58
 #define VE_PRIMARY_CHROMA_BUF_LEN		0xc4
 #define VE_PRIMARY_FB_LINE_STRIDE		0xc8
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
