Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 086562947F
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 11:22:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A85EB318CC;
	Fri, 24 May 2019 09:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oJBRRWlgVi92; Fri, 24 May 2019 09:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F23231900;
	Fri, 24 May 2019 09:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E38C31BF290
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 09:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF48287F79
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 09:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hBLnr69zVY3s for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 09:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF9C387F58
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 09:21:10 +0000 (UTC)
X-Originating-IP: 90.88.147.134
Received: from localhost.localdomain
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 5EA4F1C0009;
 Fri, 24 May 2019 09:21:06 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v11 4/4] media: cedrus: Add H264 decoding support
Date: Fri, 24 May 2019 11:20:31 +0200
Message-Id: <20190524092031.619-5-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190524092031.619-1-paul.kocialkowski@bootlin.com>
References: <20190524092031.619-1-paul.kocialkowski@bootlin.com>
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Maxime Ripard <maxime.ripard@bootlin.com>

Introduce some basic H264 decoding support in cedrus. So far, only the
baseline profile videos have been tested, and some more advanced features
used in higher profiles are not even implemented.

Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 drivers/staging/media/sunxi/cedrus/Makefile   |   3 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  31 +
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  38 +-
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |  13 +
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 576 ++++++++++++++++++
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  91 +++
 .../staging/media/sunxi/cedrus/cedrus_video.c |   9 +
 8 files changed, 763 insertions(+), 2 deletions(-)
 create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h264.c

diff --git a/drivers/staging/media/sunxi/cedrus/Makefile b/drivers/staging/media/sunxi/cedrus/Makefile
index e9dc68b7bcb6..aaf141fc58b6 100644
--- a/drivers/staging/media/sunxi/cedrus/Makefile
+++ b/drivers/staging/media/sunxi/cedrus/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_VIDEO_SUNXI_CEDRUS) += sunxi-cedrus.o
 
-sunxi-cedrus-y = cedrus.o cedrus_video.o cedrus_hw.o cedrus_dec.o cedrus_mpeg2.o
+sunxi-cedrus-y = cedrus.o cedrus_video.o cedrus_hw.o cedrus_dec.o \
+		 cedrus_mpeg2.o cedrus_h264.o
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 9349a082a29c..370937edfc14 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -40,6 +40,36 @@ static const struct cedrus_control cedrus_controls[] = {
 		.codec		= CEDRUS_CODEC_MPEG2,
 		.required	= false,
 	},
+	{
+		.id		= V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS,
+		.elem_size	= sizeof(struct v4l2_ctrl_h264_decode_params),
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= true,
+	},
+	{
+		.id		= V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS,
+		.elem_size	= sizeof(struct v4l2_ctrl_h264_slice_params),
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= true,
+	},
+	{
+		.id		= V4L2_CID_MPEG_VIDEO_H264_SPS,
+		.elem_size	= sizeof(struct v4l2_ctrl_h264_sps),
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= true,
+	},
+	{
+		.id		= V4L2_CID_MPEG_VIDEO_H264_PPS,
+		.elem_size	= sizeof(struct v4l2_ctrl_h264_pps),
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= true,
+	},
+	{
+		.id		= V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX,
+		.elem_size	= sizeof(struct v4l2_ctrl_h264_scaling_matrix),
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= true,
+	},
 };
 
 #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
@@ -278,6 +308,7 @@ static int cedrus_probe(struct platform_device *pdev)
 	}
 
 	dev->dec_ops[CEDRUS_CODEC_MPEG2] = &cedrus_dec_ops_mpeg2;
+	dev->dec_ops[CEDRUS_CODEC_H264] = &cedrus_dec_ops_h264;
 
 	mutex_init(&dev->dev_mutex);
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 25ee1f80f2c7..3f476d0fd981 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -32,7 +32,7 @@
 
 enum cedrus_codec {
 	CEDRUS_CODEC_MPEG2,
-
+	CEDRUS_CODEC_H264,
 	CEDRUS_CODEC_LAST,
 };
 
@@ -42,6 +42,12 @@ enum cedrus_irq_status {
 	CEDRUS_IRQ_OK,
 };
 
+enum cedrus_h264_pic_type {
+	CEDRUS_H264_PIC_TYPE_FRAME	= 0,
+	CEDRUS_H264_PIC_TYPE_FIELD,
+	CEDRUS_H264_PIC_TYPE_MBAFF,
+};
+
 struct cedrus_control {
 	u32			id;
 	u32			elem_size;
@@ -49,6 +55,14 @@ struct cedrus_control {
 	unsigned char		required:1;
 };
 
+struct cedrus_h264_run {
+	const struct v4l2_ctrl_h264_decode_params	*decode_params;
+	const struct v4l2_ctrl_h264_pps			*pps;
+	const struct v4l2_ctrl_h264_scaling_matrix	*scaling_matrix;
+	const struct v4l2_ctrl_h264_slice_params	*slice_params;
+	const struct v4l2_ctrl_h264_sps			*sps;
+};
+
 struct cedrus_mpeg2_run {
 	const struct v4l2_ctrl_mpeg2_slice_params	*slice_params;
 	const struct v4l2_ctrl_mpeg2_quantization	*quantization;
@@ -59,12 +73,20 @@ struct cedrus_run {
 	struct vb2_v4l2_buffer	*dst;
 
 	union {
+		struct cedrus_h264_run	h264;
 		struct cedrus_mpeg2_run	mpeg2;
 	};
 };
 
 struct cedrus_buffer {
 	struct v4l2_m2m_buffer          m2m_buf;
+
+	union {
+		struct {
+			unsigned int			position;
+			enum cedrus_h264_pic_type	pic_type;
+		} h264;
+	} codec;
 };
 
 struct cedrus_ctx {
@@ -79,6 +101,19 @@ struct cedrus_ctx {
 	struct v4l2_ctrl		**ctrls;
 
 	struct vb2_buffer		*dst_bufs[VIDEO_MAX_FRAME];
+
+	union {
+		struct {
+			void		*mv_col_buf;
+			dma_addr_t	mv_col_buf_dma;
+			ssize_t		mv_col_buf_field_size;
+			ssize_t		mv_col_buf_size;
+			void		*pic_info_buf;
+			dma_addr_t	pic_info_buf_dma;
+			void		*neighbor_info_buf;
+			dma_addr_t	neighbor_info_buf_dma;
+		} h264;
+	} codec;
 };
 
 struct cedrus_dec_ops {
@@ -122,6 +157,7 @@ struct cedrus_dev {
 };
 
 extern struct cedrus_dec_ops cedrus_dec_ops_mpeg2;
+extern struct cedrus_dec_ops cedrus_dec_ops_h264;
 
 static inline void cedrus_write(struct cedrus_dev *dev, u32 reg, u32 val)
 {
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index 4d6d602cdde6..bdad87eb9d79 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
@@ -46,6 +46,19 @@ void cedrus_device_run(void *priv)
 			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
 		break;
 
+	case V4L2_PIX_FMT_H264_SLICE_RAW:
+		run.h264.decode_params = cedrus_find_control_data(ctx,
+			V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS);
+		run.h264.pps = cedrus_find_control_data(ctx,
+			V4L2_CID_MPEG_VIDEO_H264_PPS);
+		run.h264.scaling_matrix = cedrus_find_control_data(ctx,
+			V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX);
+		run.h264.slice_params = cedrus_find_control_data(ctx,
+			V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS);
+		run.h264.sps = cedrus_find_control_data(ctx,
+			V4L2_CID_MPEG_VIDEO_H264_SPS);
+		break;
+
 	default:
 		break;
 	}
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
new file mode 100644
index 000000000000..a30bb283f69f
--- /dev/null
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -0,0 +1,576 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Cedrus VPU driver
+ *
+ * Copyright (c) 2013 Jens Kuske <jenskuske@gmail.com>
+ * Copyright (c) 2018 Bootlin
+ */
+
+#include <linux/types.h>
+
+#include <media/videobuf2-dma-contig.h>
+
+#include "cedrus.h"
+#include "cedrus_hw.h"
+#include "cedrus_regs.h"
+
+enum cedrus_h264_sram_off {
+	CEDRUS_SRAM_H264_PRED_WEIGHT_TABLE	= 0x000,
+	CEDRUS_SRAM_H264_FRAMEBUFFER_LIST	= 0x100,
+	CEDRUS_SRAM_H264_REF_LIST_0		= 0x190,
+	CEDRUS_SRAM_H264_REF_LIST_1		= 0x199,
+	CEDRUS_SRAM_H264_SCALING_LIST_8x8_0	= 0x200,
+	CEDRUS_SRAM_H264_SCALING_LIST_8x8_1	= 0x210,
+	CEDRUS_SRAM_H264_SCALING_LIST_4x4	= 0x220,
+};
+
+struct cedrus_h264_sram_ref_pic {
+	__le32	top_field_order_cnt;
+	__le32	bottom_field_order_cnt;
+	__le32	frame_info;
+	__le32	luma_ptr;
+	__le32	chroma_ptr;
+	__le32	mv_col_top_ptr;
+	__le32	mv_col_bot_ptr;
+	__le32	reserved;
+} __packed;
+
+#define CEDRUS_H264_FRAME_NUM		18
+
+#define CEDRUS_NEIGHBOR_INFO_BUF_SIZE	(16 * SZ_1K)
+#define CEDRUS_PIC_INFO_BUF_SIZE	(128 * SZ_1K)
+
+static void cedrus_h264_write_sram(struct cedrus_dev *dev,
+				   enum cedrus_h264_sram_off off,
+				   const void *data, size_t len)
+{
+	const u32 *buffer = data;
+	size_t count = DIV_ROUND_UP(len, 4);
+
+	cedrus_write(dev, VE_AVC_SRAM_PORT_OFFSET, off << 2);
+
+	while (count--)
+		cedrus_write(dev, VE_AVC_SRAM_PORT_DATA, *buffer++);
+}
+
+static dma_addr_t cedrus_h264_mv_col_buf_addr(struct cedrus_ctx *ctx,
+					      unsigned int position,
+					      unsigned int field)
+{
+	dma_addr_t addr = ctx->codec.h264.mv_col_buf_dma;
+
+	/* Adjust for the position */
+	addr += position * ctx->codec.h264.mv_col_buf_field_size * 2;
+
+	/* Adjust for the field */
+	addr += field * ctx->codec.h264.mv_col_buf_field_size;
+
+	return addr;
+}
+
+static void cedrus_fill_ref_pic(struct cedrus_ctx *ctx,
+				struct cedrus_buffer *buf,
+				unsigned int top_field_order_cnt,
+				unsigned int bottom_field_order_cnt,
+				struct cedrus_h264_sram_ref_pic *pic)
+{
+	struct vb2_buffer *vbuf = &buf->m2m_buf.vb.vb2_buf;
+	unsigned int position = buf->codec.h264.position;
+
+	pic->top_field_order_cnt = cpu_to_le32(top_field_order_cnt);
+	pic->bottom_field_order_cnt = cpu_to_le32(bottom_field_order_cnt);
+	pic->frame_info = cpu_to_le32(buf->codec.h264.pic_type << 8);
+
+	pic->luma_ptr = cpu_to_le32(cedrus_buf_addr(vbuf, &ctx->dst_fmt, 0));
+	pic->chroma_ptr = cpu_to_le32(cedrus_buf_addr(vbuf, &ctx->dst_fmt, 1));
+	pic->mv_col_top_ptr =
+		cpu_to_le32(cedrus_h264_mv_col_buf_addr(ctx, position, 0));
+	pic->mv_col_bot_ptr =
+		cpu_to_le32(cedrus_h264_mv_col_buf_addr(ctx, position, 1));
+}
+
+static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
+				    struct cedrus_run *run)
+{
+	struct cedrus_h264_sram_ref_pic pic_list[CEDRUS_H264_FRAME_NUM];
+	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
+	const struct v4l2_ctrl_h264_slice_params *slice = run->h264.slice_params;
+	const struct v4l2_ctrl_h264_sps *sps = run->h264.sps;
+	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
+	struct cedrus_buffer *output_buf;
+	struct cedrus_dev *dev = ctx->dev;
+	unsigned long used_dpbs = 0;
+	unsigned int position;
+	unsigned int output = 0;
+	unsigned int i;
+
+	memset(pic_list, 0, sizeof(pic_list));
+
+	for (i = 0; i < ARRAY_SIZE(decode->dpb); i++) {
+		const struct v4l2_h264_dpb_entry *dpb = &decode->dpb[i];
+		struct cedrus_buffer *cedrus_buf;
+		int buf_idx;
+
+		if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_VALID))
+			continue;
+
+		buf_idx = vb2_find_timestamp(cap_q, dpb->reference_ts, 0);
+		if (buf_idx < 0)
+			continue;
+
+		cedrus_buf = vb2_to_cedrus_buffer(ctx->dst_bufs[buf_idx]);
+		position = cedrus_buf->codec.h264.position;
+		used_dpbs |= BIT(position);
+
+		if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
+			continue;
+
+		cedrus_fill_ref_pic(ctx, cedrus_buf,
+				    dpb->top_field_order_cnt,
+				    dpb->bottom_field_order_cnt,
+				    &pic_list[position]);
+
+		output = max(position, output);
+	}
+
+	position = find_next_zero_bit(&used_dpbs, CEDRUS_H264_FRAME_NUM,
+				      output);
+	if (position >= CEDRUS_H264_FRAME_NUM)
+		position = find_first_zero_bit(&used_dpbs, CEDRUS_H264_FRAME_NUM);
+
+	output_buf = vb2_to_cedrus_buffer(&run->dst->vb2_buf);
+	output_buf->codec.h264.position = position;
+
+	if (slice->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC)
+		output_buf->codec.h264.pic_type = CEDRUS_H264_PIC_TYPE_FIELD;
+	else if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
+		output_buf->codec.h264.pic_type = CEDRUS_H264_PIC_TYPE_MBAFF;
+	else
+		output_buf->codec.h264.pic_type = CEDRUS_H264_PIC_TYPE_FRAME;
+
+	cedrus_fill_ref_pic(ctx, output_buf,
+			    decode->top_field_order_cnt,
+			    decode->bottom_field_order_cnt,
+			    &pic_list[position]);
+
+	cedrus_h264_write_sram(dev, CEDRUS_SRAM_H264_FRAMEBUFFER_LIST,
+			       pic_list, sizeof(pic_list));
+
+	cedrus_write(dev, VE_H264_OUTPUT_FRAME_IDX, position);
+}
+
+#define CEDRUS_MAX_REF_IDX	32
+
+static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
+				   struct cedrus_run *run,
+				   const u8 *ref_list, u8 num_ref,
+				   enum cedrus_h264_sram_off sram)
+{
+	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
+	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
+	struct cedrus_dev *dev = ctx->dev;
+	u8 sram_array[CEDRUS_MAX_REF_IDX];
+	unsigned int i;
+	size_t size;
+
+	memset(sram_array, 0, sizeof(sram_array));
+
+	for (i = 0; i < num_ref; i++) {
+		const struct v4l2_h264_dpb_entry *dpb;
+		const struct cedrus_buffer *cedrus_buf;
+		const struct vb2_v4l2_buffer *ref_buf;
+		unsigned int position;
+		int buf_idx;
+		u8 dpb_idx;
+
+		dpb_idx = ref_list[i];
+		dpb = &decode->dpb[dpb_idx];
+
+		if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
+			continue;
+
+		buf_idx = vb2_find_timestamp(cap_q, dpb->reference_ts, 0);
+		if (buf_idx < 0)
+			continue;
+
+		ref_buf = to_vb2_v4l2_buffer(ctx->dst_bufs[buf_idx]);
+		cedrus_buf = vb2_v4l2_to_cedrus_buffer(ref_buf);
+		position = cedrus_buf->codec.h264.position;
+
+		sram_array[i] |= position << 1;
+		if (ref_buf->field == V4L2_FIELD_BOTTOM)
+			sram_array[i] |= BIT(0);
+	}
+
+	size = min_t(size_t, ALIGN(num_ref, 4), sizeof(sram_array));
+	cedrus_h264_write_sram(dev, sram, &sram_array, size);
+}
+
+static void cedrus_write_ref_list0(struct cedrus_ctx *ctx,
+				   struct cedrus_run *run)
+{
+	const struct v4l2_ctrl_h264_slice_params *slice = run->h264.slice_params;
+
+	_cedrus_write_ref_list(ctx, run,
+			       slice->ref_pic_list0,
+			       slice->num_ref_idx_l0_active_minus1 + 1,
+			       CEDRUS_SRAM_H264_REF_LIST_0);
+}
+
+static void cedrus_write_ref_list1(struct cedrus_ctx *ctx,
+				   struct cedrus_run *run)
+{
+	const struct v4l2_ctrl_h264_slice_params *slice = run->h264.slice_params;
+
+	_cedrus_write_ref_list(ctx, run,
+			       slice->ref_pic_list1,
+			       slice->num_ref_idx_l1_active_minus1 + 1,
+			       CEDRUS_SRAM_H264_REF_LIST_1);
+}
+
+static void cedrus_write_scaling_lists(struct cedrus_ctx *ctx,
+				       struct cedrus_run *run)
+{
+	const struct v4l2_ctrl_h264_scaling_matrix *scaling =
+		run->h264.scaling_matrix;
+	struct cedrus_dev *dev = ctx->dev;
+
+	cedrus_h264_write_sram(dev, CEDRUS_SRAM_H264_SCALING_LIST_8x8_0,
+			       scaling->scaling_list_8x8[0],
+			       sizeof(scaling->scaling_list_8x8[0]));
+
+	cedrus_h264_write_sram(dev, CEDRUS_SRAM_H264_SCALING_LIST_8x8_1,
+			       scaling->scaling_list_8x8[3],
+			       sizeof(scaling->scaling_list_8x8[3]));
+
+	cedrus_h264_write_sram(dev, CEDRUS_SRAM_H264_SCALING_LIST_4x4,
+			       scaling->scaling_list_4x4,
+			       sizeof(scaling->scaling_list_4x4));
+}
+
+static void cedrus_write_pred_weight_table(struct cedrus_ctx *ctx,
+					   struct cedrus_run *run)
+{
+	const struct v4l2_ctrl_h264_slice_params *slice =
+		run->h264.slice_params;
+	const struct v4l2_h264_pred_weight_table *pred_weight =
+		&slice->pred_weight_table;
+	struct cedrus_dev *dev = ctx->dev;
+	int i, j, k;
+
+	cedrus_write(dev, VE_H264_SHS_WP,
+		     ((pred_weight->chroma_log2_weight_denom & 0x7) << 4) |
+		     ((pred_weight->luma_log2_weight_denom & 0x7) << 0));
+
+	cedrus_write(dev, VE_AVC_SRAM_PORT_OFFSET,
+		     CEDRUS_SRAM_H264_PRED_WEIGHT_TABLE << 2);
+
+	for (i = 0; i < ARRAY_SIZE(pred_weight->weight_factors); i++) {
+		const struct v4l2_h264_weight_factors *factors =
+			&pred_weight->weight_factors[i];
+
+		for (j = 0; j < ARRAY_SIZE(factors->luma_weight); j++) {
+			u32 val;
+
+			val = (((u32)factors->luma_offset[j] & 0x1ff) << 16) |
+				(factors->luma_weight[j] & 0x1ff);
+			cedrus_write(dev, VE_AVC_SRAM_PORT_DATA, val);
+		}
+
+		for (j = 0; j < ARRAY_SIZE(factors->chroma_weight); j++) {
+			for (k = 0; k < ARRAY_SIZE(factors->chroma_weight[0]); k++) {
+				u32 val;
+
+				val = (((u32)factors->chroma_offset[j][k] & 0x1ff) << 16) |
+					(factors->chroma_weight[j][k] & 0x1ff);
+				cedrus_write(dev, VE_AVC_SRAM_PORT_DATA, val);
+			}
+		}
+	}
+}
+
+static void cedrus_set_params(struct cedrus_ctx *ctx,
+			      struct cedrus_run *run)
+{
+	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
+	const struct v4l2_ctrl_h264_slice_params *slice = run->h264.slice_params;
+	const struct v4l2_ctrl_h264_pps *pps = run->h264.pps;
+	const struct v4l2_ctrl_h264_sps *sps = run->h264.sps;
+	struct vb2_buffer *src_buf = &run->src->vb2_buf;
+	struct cedrus_dev *dev = ctx->dev;
+	dma_addr_t src_buf_addr;
+	u32 offset = slice->header_bit_size;
+	u32 len = (slice->size * 8) - offset;
+	u32 reg;
+
+	cedrus_write(dev, VE_H264_VLD_LEN, len);
+	cedrus_write(dev, VE_H264_VLD_OFFSET, offset);
+
+	src_buf_addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
+	cedrus_write(dev, VE_H264_VLD_END,
+		     src_buf_addr + vb2_get_plane_payload(src_buf, 0));
+	cedrus_write(dev, VE_H264_VLD_ADDR,
+		     VE_H264_VLD_ADDR_VAL(src_buf_addr) |
+		     VE_H264_VLD_ADDR_FIRST | VE_H264_VLD_ADDR_VALID |
+		     VE_H264_VLD_ADDR_LAST);
+
+	/*
+	 * FIXME: Since the bitstream parsing is done in software, and
+	 * in userspace, this shouldn't be needed anymore. But it
+	 * turns out that removing it breaks the decoding process,
+	 * without any clear indication why.
+	 */
+	cedrus_write(dev, VE_H264_TRIGGER_TYPE,
+		     VE_H264_TRIGGER_TYPE_INIT_SWDEC);
+
+	if (((pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED) &&
+	     (slice->slice_type == V4L2_H264_SLICE_TYPE_P ||
+	      slice->slice_type == V4L2_H264_SLICE_TYPE_SP)) ||
+	    (pps->weighted_bipred_idc == 1 &&
+	     slice->slice_type == V4L2_H264_SLICE_TYPE_B))
+		cedrus_write_pred_weight_table(ctx, run);
+
+	if ((slice->slice_type == V4L2_H264_SLICE_TYPE_P) ||
+	    (slice->slice_type == V4L2_H264_SLICE_TYPE_SP) ||
+	    (slice->slice_type == V4L2_H264_SLICE_TYPE_B))
+		cedrus_write_ref_list0(ctx, run);
+
+	if (slice->slice_type == V4L2_H264_SLICE_TYPE_B)
+		cedrus_write_ref_list1(ctx, run);
+
+	// picture parameters
+	reg = 0;
+	/*
+	 * FIXME: the kernel headers are allowing the default value to
+	 * be passed, but the libva doesn't give us that.
+	 */
+	reg |= (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 10;
+	reg |= (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 5;
+	reg |= (pps->weighted_bipred_idc & 0x3) << 2;
+	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
+		reg |= VE_H264_PPS_ENTROPY_CODING_MODE;
+	if (pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED)
+		reg |= VE_H264_PPS_WEIGHTED_PRED;
+	if (pps->flags & V4L2_H264_PPS_FLAG_CONSTRAINED_INTRA_PRED)
+		reg |= VE_H264_PPS_CONSTRAINED_INTRA_PRED;
+	if (pps->flags & V4L2_H264_PPS_FLAG_TRANSFORM_8X8_MODE)
+		reg |= VE_H264_PPS_TRANSFORM_8X8_MODE;
+	cedrus_write(dev, VE_H264_PPS, reg);
+
+	// sequence parameters
+	reg = 0;
+	reg |= (sps->chroma_format_idc & 0x7) << 19;
+	reg |= (sps->pic_width_in_mbs_minus1 & 0xff) << 8;
+	reg |= sps->pic_height_in_map_units_minus1 & 0xff;
+	if (sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY)
+		reg |= VE_H264_SPS_MBS_ONLY;
+	if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
+		reg |= VE_H264_SPS_MB_ADAPTIVE_FRAME_FIELD;
+	if (sps->flags & V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE)
+		reg |= VE_H264_SPS_DIRECT_8X8_INFERENCE;
+	cedrus_write(dev, VE_H264_SPS, reg);
+
+	// slice parameters
+	reg = 0;
+	reg |= decode->nal_ref_idc ? BIT(12) : 0;
+	reg |= (slice->slice_type & 0xf) << 8;
+	reg |= slice->cabac_init_idc & 0x3;
+	reg |= VE_H264_SHS_FIRST_SLICE_IN_PIC;
+	if (slice->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC)
+		reg |= VE_H264_SHS_FIELD_PIC;
+	if (slice->flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
+		reg |= VE_H264_SHS_BOTTOM_FIELD;
+	if (slice->flags & V4L2_H264_SLICE_FLAG_DIRECT_SPATIAL_MV_PRED)
+		reg |= VE_H264_SHS_DIRECT_SPATIAL_MV_PRED;
+	cedrus_write(dev, VE_H264_SHS, reg);
+
+	reg = 0;
+	reg |= VE_H264_SHS2_NUM_REF_IDX_ACTIVE_OVRD;
+	reg |= (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 24;
+	reg |= (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 16;
+	reg |= (slice->disable_deblocking_filter_idc & 0x3) << 8;
+	reg |= (slice->slice_alpha_c0_offset_div2 & 0xf) << 4;
+	reg |= slice->slice_beta_offset_div2 & 0xf;
+	cedrus_write(dev, VE_H264_SHS2, reg);
+
+	reg = 0;
+	reg |= (pps->second_chroma_qp_index_offset & 0x3f) << 16;
+	reg |= (pps->chroma_qp_index_offset & 0x3f) << 8;
+	reg |= (pps->pic_init_qp_minus26 + 26 + slice->slice_qp_delta) & 0x3f;
+	cedrus_write(dev, VE_H264_SHS_QP, reg);
+
+	// clear status flags
+	cedrus_write(dev, VE_H264_STATUS, cedrus_read(dev, VE_H264_STATUS));
+
+	// enable int
+	cedrus_write(dev, VE_H264_CTRL,
+		     VE_H264_CTRL_SLICE_DECODE_INT |
+		     VE_H264_CTRL_DECODE_ERR_INT |
+		     VE_H264_CTRL_VLD_DATA_REQ_INT);
+}
+
+static enum cedrus_irq_status
+cedrus_h264_irq_status(struct cedrus_ctx *ctx)
+{
+	struct cedrus_dev *dev = ctx->dev;
+	u32 reg = cedrus_read(dev, VE_H264_STATUS);
+
+	if (reg & (VE_H264_STATUS_DECODE_ERR_INT |
+		   VE_H264_STATUS_VLD_DATA_REQ_INT))
+		return CEDRUS_IRQ_ERROR;
+
+	if (reg & VE_H264_CTRL_SLICE_DECODE_INT)
+		return CEDRUS_IRQ_OK;
+
+	return CEDRUS_IRQ_NONE;
+}
+
+static void cedrus_h264_irq_clear(struct cedrus_ctx *ctx)
+{
+	struct cedrus_dev *dev = ctx->dev;
+
+	cedrus_write(dev, VE_H264_STATUS,
+		     VE_H264_STATUS_INT_MASK);
+}
+
+static void cedrus_h264_irq_disable(struct cedrus_ctx *ctx)
+{
+	struct cedrus_dev *dev = ctx->dev;
+	u32 reg = cedrus_read(dev, VE_H264_CTRL);
+
+	cedrus_write(dev, VE_H264_CTRL,
+		     reg & ~VE_H264_CTRL_INT_MASK);
+}
+
+static void cedrus_h264_setup(struct cedrus_ctx *ctx,
+			      struct cedrus_run *run)
+{
+	struct cedrus_dev *dev = ctx->dev;
+
+	cedrus_engine_enable(dev, CEDRUS_CODEC_H264);
+
+	cedrus_write(dev, VE_H264_SDROT_CTRL, 0);
+	cedrus_write(dev, VE_H264_EXTRA_BUFFER1,
+		     ctx->codec.h264.pic_info_buf_dma);
+	cedrus_write(dev, VE_H264_EXTRA_BUFFER2,
+		     ctx->codec.h264.neighbor_info_buf_dma);
+
+	cedrus_write_scaling_lists(ctx, run);
+	cedrus_write_frame_list(ctx, run);
+
+	cedrus_set_params(ctx, run);
+}
+
+static int cedrus_h264_start(struct cedrus_ctx *ctx)
+{
+	struct cedrus_dev *dev = ctx->dev;
+	unsigned int field_size;
+	unsigned int mv_col_size;
+	int ret;
+
+	/*
+	 * FIXME: It seems that the H6 cedarX code is using a formula
+	 * here based on the size of the frame, while all the older
+	 * code is using a fixed size, so that might need to be
+	 * changed at some point.
+	 */
+	ctx->codec.h264.pic_info_buf =
+		dma_alloc_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+				   &ctx->codec.h264.pic_info_buf_dma,
+				   GFP_KERNEL);
+	if (!ctx->codec.h264.pic_info_buf)
+		return -ENOMEM;
+
+	/*
+	 * That buffer is supposed to be 16kiB in size, and be aligned
+	 * on 16kiB as well. However, dma_alloc_coherent provides the
+	 * guarantee that we'll have a CPU and DMA address aligned on
+	 * the smallest page order that is greater to the requested
+	 * size, so we don't have to overallocate.
+	 */
+	ctx->codec.h264.neighbor_info_buf =
+		dma_alloc_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
+				   &ctx->codec.h264.neighbor_info_buf_dma,
+				   GFP_KERNEL);
+	if (!ctx->codec.h264.neighbor_info_buf) {
+		ret = -ENOMEM;
+		goto err_pic_buf;
+	}
+
+	field_size = DIV_ROUND_UP(ctx->src_fmt.width, 16) *
+		DIV_ROUND_UP(ctx->src_fmt.height, 16) * 16;
+
+	/*
+	 * FIXME: This is actually conditional to
+	 * V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE not being set, we
+	 * might have to rework this if memory efficiency ever is
+	 * something we need to work on.
+	 */
+	field_size = field_size * 2;
+
+	/*
+	 * FIXME: This is actually conditional to
+	 * V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY not being set, we might
+	 * have to rework this if memory efficiency ever is something
+	 * we need to work on.
+	 */
+	field_size = field_size * 2;
+	ctx->codec.h264.mv_col_buf_field_size = field_size;
+
+	mv_col_size = field_size * 2 * CEDRUS_H264_FRAME_NUM;
+	ctx->codec.h264.mv_col_buf_size = mv_col_size;
+	ctx->codec.h264.mv_col_buf = dma_alloc_coherent(dev->dev,
+							ctx->codec.h264.mv_col_buf_size,
+							&ctx->codec.h264.mv_col_buf_dma,
+							GFP_KERNEL);
+	if (!ctx->codec.h264.mv_col_buf) {
+		ret = -ENOMEM;
+		goto err_neighbor_buf;
+	}
+
+	return 0;
+
+err_neighbor_buf:
+	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
+			  ctx->codec.h264.neighbor_info_buf,
+			  ctx->codec.h264.neighbor_info_buf_dma);
+
+err_pic_buf:
+	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+			  ctx->codec.h264.pic_info_buf,
+			  ctx->codec.h264.pic_info_buf_dma);
+	return ret;
+}
+
+static void cedrus_h264_stop(struct cedrus_ctx *ctx)
+{
+	struct cedrus_dev *dev = ctx->dev;
+
+	dma_free_coherent(dev->dev, ctx->codec.h264.mv_col_buf_size,
+			  ctx->codec.h264.mv_col_buf,
+			  ctx->codec.h264.mv_col_buf_dma);
+	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
+			  ctx->codec.h264.neighbor_info_buf,
+			  ctx->codec.h264.neighbor_info_buf_dma);
+	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+			  ctx->codec.h264.pic_info_buf,
+			  ctx->codec.h264.pic_info_buf_dma);
+}
+
+static void cedrus_h264_trigger(struct cedrus_ctx *ctx)
+{
+	struct cedrus_dev *dev = ctx->dev;
+
+	cedrus_write(dev, VE_H264_TRIGGER_TYPE,
+		     VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE);
+}
+
+struct cedrus_dec_ops cedrus_dec_ops_h264 = {
+	.irq_clear	= cedrus_h264_irq_clear,
+	.irq_disable	= cedrus_h264_irq_disable,
+	.irq_status	= cedrus_h264_irq_status,
+	.setup		= cedrus_h264_setup,
+	.start		= cedrus_h264_start,
+	.stop		= cedrus_h264_stop,
+	.trigger	= cedrus_h264_trigger,
+};
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index 60406b2d4595..c34aec7c6e40 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -46,6 +46,10 @@ int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
 		reg |= VE_MODE_DEC_MPEG;
 		break;
 
+	case CEDRUS_CODEC_H264:
+		reg |= VE_MODE_DEC_H264;
+		break;
+
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
index de2d6b6f64bf..3e9931416e45 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
@@ -232,4 +232,95 @@
 #define VE_DEC_MPEG_ROT_LUMA			(VE_ENGINE_DEC_MPEG + 0xcc)
 #define VE_DEC_MPEG_ROT_CHROMA			(VE_ENGINE_DEC_MPEG + 0xd0)
 
+#define VE_H264_SPS			0x200
+#define VE_H264_SPS_MBS_ONLY			BIT(18)
+#define VE_H264_SPS_MB_ADAPTIVE_FRAME_FIELD	BIT(17)
+#define VE_H264_SPS_DIRECT_8X8_INFERENCE	BIT(16)
+
+#define VE_H264_PPS			0x204
+#define VE_H264_PPS_ENTROPY_CODING_MODE		BIT(15)
+#define VE_H264_PPS_WEIGHTED_PRED		BIT(4)
+#define VE_H264_PPS_CONSTRAINED_INTRA_PRED	BIT(1)
+#define VE_H264_PPS_TRANSFORM_8X8_MODE		BIT(0)
+
+#define VE_H264_SHS			0x208
+#define VE_H264_SHS_FIRST_SLICE_IN_PIC		BIT(5)
+#define VE_H264_SHS_FIELD_PIC			BIT(4)
+#define VE_H264_SHS_BOTTOM_FIELD		BIT(3)
+#define VE_H264_SHS_DIRECT_SPATIAL_MV_PRED	BIT(2)
+
+#define VE_H264_SHS2			0x20c
+#define VE_H264_SHS2_NUM_REF_IDX_ACTIVE_OVRD	BIT(12)
+
+#define VE_H264_SHS_WP			0x210
+
+#define VE_H264_SHS_QP			0x21c
+#define VE_H264_SHS_QP_SCALING_MATRIX_DEFAULT	BIT(24)
+
+#define VE_H264_CTRL			0x220
+#define VE_H264_CTRL_VLD_DATA_REQ_INT		BIT(2)
+#define VE_H264_CTRL_DECODE_ERR_INT		BIT(1)
+#define VE_H264_CTRL_SLICE_DECODE_INT		BIT(0)
+
+#define VE_H264_CTRL_INT_MASK		(VE_H264_CTRL_VLD_DATA_REQ_INT | \
+					 VE_H264_CTRL_DECODE_ERR_INT | \
+					 VE_H264_CTRL_SLICE_DECODE_INT)
+
+#define VE_H264_TRIGGER_TYPE		0x224
+#define VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE	(8 << 0)
+#define VE_H264_TRIGGER_TYPE_INIT_SWDEC		(7 << 0)
+
+#define VE_H264_STATUS			0x228
+#define VE_H264_STATUS_VLD_DATA_REQ_INT		VE_H264_CTRL_VLD_DATA_REQ_INT
+#define VE_H264_STATUS_DECODE_ERR_INT		VE_H264_CTRL_DECODE_ERR_INT
+#define VE_H264_STATUS_SLICE_DECODE_INT		VE_H264_CTRL_SLICE_DECODE_INT
+
+#define VE_H264_STATUS_INT_MASK			VE_H264_CTRL_INT_MASK
+
+#define VE_H264_CUR_MB_NUM		0x22c
+
+#define VE_H264_VLD_ADDR		0x230
+#define VE_H264_VLD_ADDR_FIRST			BIT(30)
+#define VE_H264_VLD_ADDR_LAST			BIT(29)
+#define VE_H264_VLD_ADDR_VALID			BIT(28)
+#define VE_H264_VLD_ADDR_VAL(x)			(((x) & 0x0ffffff0) | ((x) >> 28))
+
+#define VE_H264_VLD_OFFSET		0x234
+#define VE_H264_VLD_LEN			0x238
+#define VE_H264_VLD_END			0x23c
+#define VE_H264_SDROT_CTRL		0x240
+#define VE_H264_OUTPUT_FRAME_IDX	0x24c
+#define VE_H264_EXTRA_BUFFER1		0x250
+#define VE_H264_EXTRA_BUFFER2		0x254
+#define VE_H264_BASIC_BITS		0x2dc
+#define VE_AVC_SRAM_PORT_OFFSET		0x2e0
+#define VE_AVC_SRAM_PORT_DATA		0x2e4
+
+#define VE_ISP_INPUT_SIZE		0xa00
+#define VE_ISP_INPUT_STRIDE		0xa04
+#define VE_ISP_CTRL			0xa08
+#define VE_ISP_INPUT_LUMA		0xa78
+#define VE_ISP_INPUT_CHROMA		0xa7c
+
+#define VE_AVC_PARAM			0xb04
+#define VE_AVC_QP			0xb08
+#define VE_AVC_MOTION_EST		0xb10
+#define VE_AVC_CTRL			0xb14
+#define VE_AVC_TRIGGER			0xb18
+#define VE_AVC_STATUS			0xb1c
+#define VE_AVC_BASIC_BITS		0xb20
+#define VE_AVC_UNK_BUF			0xb60
+#define VE_AVC_VLE_ADDR			0xb80
+#define VE_AVC_VLE_END			0xb84
+#define VE_AVC_VLE_OFFSET		0xb88
+#define VE_AVC_VLE_MAX			0xb8c
+#define VE_AVC_VLE_LENGTH		0xb90
+#define VE_AVC_REF_LUMA			0xba0
+#define VE_AVC_REF_CHROMA		0xba4
+#define VE_AVC_REC_LUMA			0xbb0
+#define VE_AVC_REC_CHROMA		0xbb4
+#define VE_AVC_REF_SLUMA		0xbb8
+#define VE_AVC_REC_SLUMA		0xbbc
+#define VE_AVC_MB_INFO			0xbc0
+
 #endif
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 9673874ece10..e2b530b1a956 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -37,6 +37,10 @@ static struct cedrus_format cedrus_formats[] = {
 		.pixelformat	= V4L2_PIX_FMT_MPEG2_SLICE,
 		.directions	= CEDRUS_DECODE_SRC,
 	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_H264_SLICE_RAW,
+		.directions	= CEDRUS_DECODE_SRC,
+	},
 	{
 		.pixelformat	= V4L2_PIX_FMT_SUNXI_TILED_NV12,
 		.directions	= CEDRUS_DECODE_DST,
@@ -100,6 +104,7 @@ static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
 
 	switch (pix_fmt->pixelformat) {
 	case V4L2_PIX_FMT_MPEG2_SLICE:
+	case V4L2_PIX_FMT_H264_SLICE_RAW:
 		/* Zero bytes per line for encoded source. */
 		bytesperline = 0;
 
@@ -464,6 +469,10 @@ static int cedrus_start_streaming(struct vb2_queue *vq, unsigned int count)
 		ctx->current_codec = CEDRUS_CODEC_MPEG2;
 		break;
 
+	case V4L2_PIX_FMT_H264_SLICE_RAW:
+		ctx->current_codec = CEDRUS_CODEC_H264;
+		break;
+
 	default:
 		return -EINVAL;
 	}
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
