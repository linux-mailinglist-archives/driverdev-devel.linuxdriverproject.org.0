Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2054914A621
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 15:30:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9DBD861A7;
	Mon, 27 Jan 2020 14:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8zQ7tDm-EwkU; Mon, 27 Jan 2020 14:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91DDB8614D;
	Mon, 27 Jan 2020 14:30:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6892C1BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 651EA20345
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EQfK6Ollg73u for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 14:30:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id C0B2620369
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:30:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4497A293984
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 3/4] media: hantro: Write the quantization tables in proper
 order
Date: Mon, 27 Jan 2020 15:30:08 +0100
Message-Id: <20200127143009.15677-4-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127143009.15677-1-andrzej.p@collabora.com>
References: <20200127143009.15677-1-andrzej.p@collabora.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The quantization tables as defined in the file (luma_q_table,
chroma_q_table) are in fact in linear order. The JPEG file header, which is
not generated by the hardware, but must be programatically created with the
CPU, expects the table in zigzag order. On the other hand, the hardware
doesn't expect neither linear, nor zigzag order. Instead it expects the
quantization tables in vertical groups of four quantization parameters,
and the groups are organized in blocks of two vertically adjacent groups.
On top of that the blocks must be provided to the hardware in this order:
leftmost top block, leftmost bottom block, second leftmost top block,
second leftmost bottom block and so on. So, if this is the quantization
table in linear order:

0x10, 0x0b, 0x0a, 0x10, 0x18, 0x28, 0x33, 0x3d,
0x0c, 0x0c, 0x0e, 0x13, 0x1a, 0x3a, 0x3c, 0x37,
0x0e, 0x0d, 0x10, 0x18, 0x28, 0x39, 0x45, 0x38,
0x0e, 0x11, 0x16, 0x1d, 0x33, 0x57, 0x50, 0x3e,
0x12, 0x16, 0x25, 0x38, 0x44, 0x6d, 0x67, 0x4d,
0x18, 0x23, 0x37, 0x40, 0x51, 0x68, 0x71, 0x5c,
0x31, 0x40, 0x4e, 0x57, 0x67, 0x79, 0x78, 0x65,
0x48, 0x5c, 0x5f, 0x62, 0x70, 0x64, 0x67, 0x63

then the hardware expects this in its consecutive registers:

0x100c0e0e,
0x0b0c0d11,
0x12183148,
0x1623405c,
0x0a0e1016,
0x1013181d,
0x25374e5f,
0x38405762,

and so on.

Consequently, the same area of memory cannot be used both for dumping it
into the JPEG file header and writing its contents to the hardware
registers. Instead, a separate pair of arrays is added for properly
reordered quantization tables, to be read with get_unaligned_be32()
and linearly written to the registers.

The "ctx" parameter is not needed any more for hantro_jpeg_get_qtable().

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |  4 +-
 drivers/staging/media/hantro/hantro_jpeg.c    | 60 +++++++++++++++----
 drivers/staging/media/hantro/hantro_jpeg.h    |  2 +-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |  9 ++-
 4 files changed, 55 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index be787a045c7e..bd05aea1bd71 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -108,8 +108,8 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 	hantro_h1_set_src_img_ctrl(vpu, ctx);
 	hantro_h1_jpeg_enc_set_buffers(vpu, ctx, &src_buf->vb2_buf);
 	hantro_h1_jpeg_enc_set_qtable(vpu,
-				      hantro_jpeg_get_qtable(&jpeg_ctx, 0),
-				      hantro_jpeg_get_qtable(&jpeg_ctx, 1));
+				      hantro_jpeg_get_qtable(0),
+				      hantro_jpeg_get_qtable(1));
 
 	reg = H1_REG_AXI_CTRL_OUTPUT_SWAP16
 		| H1_REG_AXI_CTRL_INPUT_SWAP16
diff --git a/drivers/staging/media/hantro/hantro_jpeg.c b/drivers/staging/media/hantro/hantro_jpeg.c
index d3b381d00b23..36c140fc6a36 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.c
+++ b/drivers/staging/media/hantro/hantro_jpeg.c
@@ -36,6 +36,8 @@ static const unsigned char luma_q_table[] = {
 	0x48, 0x5c, 0x5f, 0x62, 0x70, 0x64, 0x67, 0x63
 };
 
+static unsigned char luma_q_table_reordered[ARRAY_SIZE(luma_q_table)];
+
 static const unsigned char chroma_q_table[] = {
 	0x11, 0x12, 0x18, 0x2f, 0x63, 0x63, 0x63, 0x63,
 	0x12, 0x15, 0x1a, 0x42, 0x63, 0x63, 0x63, 0x63,
@@ -47,6 +49,30 @@ static const unsigned char chroma_q_table[] = {
 	0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
 };
 
+static unsigned char chroma_q_table_reordered[ARRAY_SIZE(chroma_q_table)];
+
+static const unsigned char zigzag[64] = {
+	 0,  1,  8, 16,  9,  2,  3, 10,
+	17, 24, 32, 25, 18, 11,  4,  5,
+	12, 19, 26, 33, 40, 48, 41, 34,
+	27, 20, 13,  6,  7, 14, 21, 28,
+	35, 42, 49, 56, 57, 50, 43, 36,
+	29, 22, 15, 23, 30, 37, 44, 51,
+	58, 59, 52, 45, 38, 31, 39, 46,
+	53, 60, 61, 54, 47, 55, 62, 63
+};
+
+static const u32 hw_reorder[64] = {
+	 0,  8, 16, 24,  1,  9, 17, 25,
+	32, 40, 48, 56, 33, 41, 49, 57,
+	 2, 10, 18, 26,  3, 11, 19, 27,
+	34, 42, 50, 58, 35, 43, 51, 59,
+	 4, 12, 20, 28,  5, 13, 21, 29,
+	36, 44, 52, 60, 37, 45, 53, 61,
+	 6, 14, 22, 30,  7, 15, 23, 31,
+	38, 46, 54, 62, 39, 47, 55, 63
+};
+
 /* Huffman tables are shared with CODA */
 static const unsigned char luma_dc_table[] = {
 	0x00, 0x01, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01,
@@ -225,20 +251,29 @@ static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
 	0x11, 0x03, 0x11, 0x00, 0x3f, 0x00,
 };
 
+static unsigned char jpeg_scale_qp(const unsigned char qp, int scale)
+{
+	unsigned int temp;
+
+	temp = DIV_ROUND_CLOSEST((unsigned int)qp * scale, 100);
+	if (temp <= 0)
+		temp = 1;
+	if (temp > 255)
+		temp = 255;
+
+	return (unsigned char)temp;
+}
+
 static void
-jpeg_scale_quant_table(unsigned char *q_tab,
+jpeg_scale_quant_table(unsigned char *file_q_tab,
+		       unsigned char *reordered_q_tab,
 		       const unsigned char *tab, int scale)
 {
-	unsigned int temp;
 	int i;
 
 	for (i = 0; i < 64; i++) {
-		temp = DIV_ROUND_CLOSEST((unsigned int)tab[i] * scale, 100);
-		if (temp <= 0)
-			temp = 1;
-		if (temp > 255)
-			temp = 255;
-		q_tab[i] = (unsigned char)temp;
+		file_q_tab[i] = jpeg_scale_qp(tab[zigzag[i]], scale);
+		reordered_q_tab[i] = jpeg_scale_qp(tab[hw_reorder[i]], scale);
 	}
 }
 
@@ -256,17 +291,18 @@ static void jpeg_set_quality(unsigned char *buffer, int quality)
 		scale = 200 - 2 * quality;
 
 	jpeg_scale_quant_table(buffer + LUMA_QUANT_OFF,
+			       luma_q_table_reordered,
 			       luma_q_table, scale);
 	jpeg_scale_quant_table(buffer + CHROMA_QUANT_OFF,
+			       chroma_q_table_reordered,
 			       chroma_q_table, scale);
 }
 
-unsigned char *
-hantro_jpeg_get_qtable(struct hantro_jpeg_ctx *ctx, int index)
+unsigned char *hantro_jpeg_get_qtable(int index)
 {
 	if (index == 0)
-		return ctx->buffer + LUMA_QUANT_OFF;
-	return ctx->buffer + CHROMA_QUANT_OFF;
+		return luma_q_table_reordered;
+	return chroma_q_table_reordered;
 }
 
 void hantro_jpeg_header_assemble(struct hantro_jpeg_ctx *ctx)
diff --git a/drivers/staging/media/hantro/hantro_jpeg.h b/drivers/staging/media/hantro/hantro_jpeg.h
index 9e8397c71388..9474a00277f8 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.h
+++ b/drivers/staging/media/hantro/hantro_jpeg.h
@@ -9,5 +9,5 @@ struct hantro_jpeg_ctx {
 	unsigned char *buffer;
 };
 
-unsigned char *hantro_jpeg_get_qtable(struct hantro_jpeg_ctx *ctx, int index);
+unsigned char *hantro_jpeg_get_qtable(int index);
 void hantro_jpeg_header_assemble(struct hantro_jpeg_ctx *ctx);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
index bdb95652d6a8..a0cf34073235 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
@@ -18,9 +18,8 @@
  *
  * Quantization luma table values are written to registers
  * VEPU_swreg_0-VEPU_swreg_15, and chroma table values to
- * VEPU_swreg_16-VEPU_swreg_31.
- *
- * JPEG zigzag order is expected on the quantization tables.
+ * VEPU_swreg_16-VEPU_swreg_31. A special order is needed, neither
+ * zigzag, nor linear.
  */
 
 #include <asm/unaligned.h>
@@ -139,8 +138,8 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 	rk3399_vpu_set_src_img_ctrl(vpu, ctx);
 	rk3399_vpu_jpeg_enc_set_buffers(vpu, ctx, &src_buf->vb2_buf);
 	rk3399_vpu_jpeg_enc_set_qtable(vpu,
-				       hantro_jpeg_get_qtable(&jpeg_ctx, 0),
-				       hantro_jpeg_get_qtable(&jpeg_ctx, 1));
+				       hantro_jpeg_get_qtable(0),
+				       hantro_jpeg_get_qtable(1));
 
 	reg = VEPU_REG_OUTPUT_SWAP32
 		| VEPU_REG_OUTPUT_SWAP16
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
