Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B80366892
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Apr 2021 11:56:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04AA783DFA;
	Wed, 21 Apr 2021 09:56:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9b7PhRb9TQY7; Wed, 21 Apr 2021 09:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28E8083D1F;
	Wed, 21 Apr 2021 09:56:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC85A1BF57B
 for <devel@linuxdriverproject.org>; Wed, 21 Apr 2021 09:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF34183D1F
 for <devel@linuxdriverproject.org>; Wed, 21 Apr 2021 09:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e64-A-EE9rhr for <devel@linuxdriverproject.org>;
 Wed, 21 Apr 2021 09:55:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAA4E83C39
 for <devel@driverdev.osuosl.org>; Wed, 21 Apr 2021 09:55:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4D4431F42D32
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Subject: [RFC 3/3] media: rkvdec: Add the VP9 backend
Date: Wed, 21 Apr 2021 11:55:25 +0200
Message-Id: <20210421095525.12934-3-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210421095525.12934-1-andrzej.p@collabora.com>
References: <20210421095525.12934-1-andrzej.p@collabora.com>
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Adrian Ratiu <adrian.ratiu@collabora.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Boris Brezillon <boris.brezillon@collabora.com>

The Rockchip VDEC supports VP9 profile 0 up to 4096x2304@30fps. Add
a backend for this new format.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/rkvdec/Makefile     |    2 +-
 drivers/staging/media/rkvdec/rkvdec-vp9.c | 2846 +++++++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.c     |   52 +-
 drivers/staging/media/rkvdec/rkvdec.h     |    6 +
 4 files changed, 2901 insertions(+), 5 deletions(-)
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c

diff --git a/drivers/staging/media/rkvdec/Makefile b/drivers/staging/media/rkvdec/Makefile
index c08fed0a39f9..cb86b429cfaa 100644
--- a/drivers/staging/media/rkvdec/Makefile
+++ b/drivers/staging/media/rkvdec/Makefile
@@ -1,3 +1,3 @@
 obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC) += rockchip-vdec.o
 
-rockchip-vdec-y += rkvdec.o rkvdec-h264.o
+rockchip-vdec-y += rkvdec.o rkvdec-h264.o rkvdec-vp9.o
diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
new file mode 100644
index 000000000000..82e5dcfe5ef0
--- /dev/null
+++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
@@ -0,0 +1,2846 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Rockchip Video Decoder VP9 backend
+ *
+ * Copyright (C) 2019 Collabora, Ltd.
+ *	Boris Brezillon <boris.brezillon@collabora.com>
+ * Copyright (C) 2021 Collabora, Ltd.
+ *	Andrzej Pietrasiewicz <andrzej.p@collabora.com>
+ *
+ * Copyright (C) 2016 Rockchip Electronics Co., Ltd.
+ *	Alpha Lin <Alpha.Lin@rock-chips.com>
+ */
+
+/*
+ * For following the vp9 spec please start reading this driver
+ * code from rkvdec_vp9_run() followed by rkvdec_vp9_done().
+ */
+
+#include <linux/kernel.h>
+#include <linux/vmalloc.h>
+#include <media/v4l2-mem2mem.h>
+
+#include "rkvdec.h"
+#include "rkvdec-regs.h"
+
+#define RKVDEC_VP9_PROBE_SIZE		4864
+#define RKVDEC_VP9_COUNT_SIZE		13232
+#define RKVDEC_VP9_MAX_SEGMAP_SIZE	73728
+
+struct rkvdec_vp9_intra_mode_probs {
+	u8 y_mode[105];
+	u8 uv_mode[23];
+};
+
+struct rkvdec_vp9_intra_only_frame_probs {
+	u8 coef_intra[4][2][128];
+	struct rkvdec_vp9_intra_mode_probs intra_mode[10];
+};
+
+struct rkvdec_vp9_inter_frame_probs {
+	u8 y_mode[4][9];
+	u8 comp_mode[5];
+	u8 comp_ref[5];
+	u8 single_ref[5][2];
+	u8 inter_mode[7][3];
+	u8 interp_filter[4][2];
+	u8 padding0[11];
+	u8 coef[2][4][2][128];
+	u8 uv_mode_0_2[3][9];
+	u8 padding1[5];
+	u8 uv_mode_3_5[3][9];
+	u8 padding2[5];
+	u8 uv_mode_6_8[3][9];
+	u8 padding3[5];
+	u8 uv_mode_9[9];
+	u8 padding4[7];
+	u8 padding5[16];
+	struct {
+		u8 joint[3];
+		u8 sign[2];
+		u8 class[2][10];
+		u8 class0_bit[2];
+		u8 bits[2][10];
+		u8 class0_fr[2][2][3];
+		u8 fr[2][3];
+		u8 class0_hp[2];
+		u8 hp[2];
+	} mv;
+};
+
+struct rkvdec_vp9_probs {
+	u8 partition[16][3];
+	u8 pred[3];
+	u8 tree[7];
+	u8 skip[3];
+	u8 tx32[2][3];
+	u8 tx16[2][2];
+	u8 tx8[2][1];
+	u8 is_inter[4];
+	/* 128 bit alignment */
+	u8 padding0[3];
+	union {
+		struct rkvdec_vp9_inter_frame_probs inter;
+		struct rkvdec_vp9_intra_only_frame_probs intra_only;
+	};
+};
+
+/* Data structure describing auxiliary buffer format. */
+struct rkvdec_vp9_priv_tbl {
+	struct rkvdec_vp9_probs probs;
+	u8 segmap[2][RKVDEC_VP9_MAX_SEGMAP_SIZE];
+};
+
+struct rkvdec_vp9_refs_counts {
+	u32 eob[2];
+	u32 coeff[3];
+};
+
+struct rkvdec_vp9_inter_frame_symbol_counts {
+	u32 partition[16][4];
+	u32 skip[3][2];
+	u32 inter[4][2];
+	u32 tx32p[2][4];
+	u32 tx16p[2][4];
+	u32 tx8p[2][2];
+	u32 y_mode[4][10];
+	u32 uv_mode[10][10];
+	u32 comp[5][2];
+	u32 comp_ref[5][2];
+	u32 single_ref[5][2][2];
+	u32 mv_mode[7][4];
+	u32 filter[4][3];
+	u32 mv_joint[4];
+	u32 sign[2][2];
+	/* add 1 element for align */
+	u32 classes[2][11 + 1];
+	u32 class0[2][2];
+	u32 bits[2][10][2];
+	u32 class0_fp[2][2][4];
+	u32 fp[2][4];
+	u32 class0_hp[2][2];
+	u32 hp[2][2];
+	struct rkvdec_vp9_refs_counts ref_cnt[2][4][2][6][6];
+};
+
+struct rkvdec_vp9_intra_frame_symbol_counts {
+	u32 partition[4][4][4];
+	u32 skip[3][2];
+	u32 intra[4][2];
+	u32 tx32p[2][4];
+	u32 tx16p[2][4];
+	u32 tx8p[2][2];
+	struct rkvdec_vp9_refs_counts ref_cnt[2][4][2][6][6];
+};
+
+struct rkvdec_vp9_run {
+	struct rkvdec_run base;
+	const struct v4l2_ctrl_vp9_frame_decode_params *decode_params;
+};
+
+struct rkvdec_vp9_frame_info {
+	u32 valid : 1;
+	u32 segmapid : 1;
+	u32 frame_context_idx : 2;
+	u32 reference_mode : 2;
+	u32 tx_mode : 3;
+	u32 interpolation_filter : 3;
+	u32 flags;
+	u64 timestamp;
+	struct v4l2_vp9_segmentation seg;
+	struct v4l2_vp9_loop_filter lf;
+};
+
+struct rkvdec_vp9_frame_mv_context {
+	u8 joint[3];
+	u8 sign[2];
+	u8 class[2][10];
+	u8 class0_bit[2];
+	u8 bits[2][10];
+	u8 class0_fr[2][2][3];
+	u8 fr[2][3];
+	u8 class0_hp[2];
+	u8 hp[2];
+};
+
+struct rkvdec_vp9_frame_context {
+	u8 tx8[2][1];
+	u8 tx16[2][2];
+	u8 tx32[2][3];
+	u8 coef[4][2][2][6][6][3];
+	u8 skip[3];
+	u8 inter_mode[7][3];
+	u8 interp_filter[4][2];
+	u8 is_inter[4];
+	u8 comp_mode[5];
+	u8 single_ref[5][2];
+	u8 comp_ref[5];
+	u8 y_mode[4][9];
+	u8 uv_mode[10][9];
+	u8 partition[16][3];
+
+	struct rkvdec_vp9_frame_mv_context mv;
+};
+
+struct rkvdec_vp9_ctx {
+	struct rkvdec_aux_buf priv_tbl;
+	struct rkvdec_aux_buf count_tbl;
+	struct rkvdec_vp9_frame_context probability_tables;
+	struct rkvdec_vp9_frame_context frame_context[4];
+	struct rkvdec_vp9_frame_info cur;
+	struct rkvdec_vp9_frame_info last;
+};
+
+static u32 rkvdec_fastdiv(u32 dividend, u16 divisor)
+{
+#define DIV_INV(d)	((u32)(((1ULL << 32) + ((d) - 1)) / (d)))
+#define DIVS_INV(d0, d1, d2, d3, d4, d5, d6, d7, d8, d9)	\
+	DIV_INV(d0), DIV_INV(d1), DIV_INV(d2), DIV_INV(d3),	\
+	DIV_INV(d4), DIV_INV(d5), DIV_INV(d6), DIV_INV(d7),	\
+	DIV_INV(d8), DIV_INV(d9)
+
+	static const u32 inv[] = {
+		DIV_INV(2), DIV_INV(3), DIV_INV(4), DIV_INV(5),
+		DIV_INV(6), DIV_INV(7), DIV_INV(8), DIV_INV(9),
+		DIVS_INV(10, 11, 12, 13, 14, 15, 16, 17, 18, 19),
+		DIVS_INV(20, 21, 22, 23, 24, 25, 26, 27, 28, 29),
+		DIVS_INV(30, 31, 32, 33, 34, 35, 36, 37, 38, 39),
+		DIVS_INV(40, 41, 42, 43, 44, 45, 46, 47, 48, 49),
+		DIVS_INV(50, 51, 52, 53, 54, 55, 56, 57, 58, 59),
+		DIVS_INV(60, 61, 62, 63, 64, 65, 66, 67, 68, 69),
+		DIVS_INV(70, 71, 72, 73, 74, 75, 76, 77, 78, 79),
+		DIVS_INV(80, 81, 82, 83, 84, 85, 86, 87, 88, 89),
+		DIVS_INV(90, 91, 92, 93, 94, 95, 96, 97, 98, 99),
+		DIVS_INV(100, 101, 102, 103, 104, 105, 106, 107, 108, 109),
+		DIVS_INV(110, 111, 112, 113, 114, 115, 116, 117, 118, 119),
+		DIVS_INV(120, 121, 122, 123, 124, 125, 126, 127, 128, 129),
+		DIVS_INV(130, 131, 132, 133, 134, 135, 136, 137, 138, 139),
+		DIVS_INV(140, 141, 142, 143, 144, 145, 146, 147, 148, 149),
+		DIVS_INV(150, 151, 152, 153, 154, 155, 156, 157, 158, 159),
+		DIVS_INV(160, 161, 162, 163, 164, 165, 166, 167, 168, 169),
+		DIVS_INV(170, 171, 172, 173, 174, 175, 176, 177, 178, 179),
+		DIVS_INV(180, 181, 182, 183, 184, 185, 186, 187, 188, 189),
+		DIVS_INV(190, 191, 192, 193, 194, 195, 196, 197, 198, 199),
+		DIVS_INV(200, 201, 202, 203, 204, 205, 206, 207, 208, 209),
+		DIVS_INV(210, 211, 212, 213, 214, 215, 216, 217, 218, 219),
+		DIVS_INV(220, 221, 222, 223, 224, 225, 226, 227, 228, 229),
+		DIVS_INV(230, 231, 232, 233, 234, 235, 236, 237, 238, 239),
+		DIVS_INV(240, 241, 242, 243, 244, 245, 246, 247, 248, 249),
+		DIV_INV(250), DIV_INV(251), DIV_INV(252), DIV_INV(253),
+		DIV_INV(254), DIV_INV(255), DIV_INV(256),
+	};
+
+	if (divisor == 0)
+		return 0;
+	else if (divisor == 1)
+		return dividend;
+
+	if (WARN_ON(divisor - 2 >= ARRAY_SIZE(inv)))
+		return dividend;
+
+	return ((u64)dividend * inv[divisor - 2]) >> 32;
+}
+
+static const u8 vp9_kf_y_mode_prob[10][10][9] = {
+	{
+		/* above = dc */
+		{ 137,  30,  42, 148, 151, 207,  70,  52,  91 },/*left = dc  */
+		{  92,  45, 102, 136, 116, 180,  74,  90, 100 },/*left = v   */
+		{  73,  32,  19, 187, 222, 215,  46,  34, 100 },/*left = h   */
+		{  91,  30,  32, 116, 121, 186,  93,  86,  94 },/*left = d45 */
+		{  72,  35,  36, 149,  68, 206,  68,  63, 105 },/*left = d135*/
+		{  73,  31,  28, 138,  57, 124,  55, 122, 151 },/*left = d117*/
+		{  67,  23,  21, 140, 126, 197,  40,  37, 171 },/*left = d153*/
+		{  86,  27,  28, 128, 154, 212,  45,  43,  53 },/*left = d207*/
+		{  74,  32,  27, 107,  86, 160,  63, 134, 102 },/*left = d63 */
+		{  59,  67,  44, 140, 161, 202,  78,  67, 119 } /*left = tm  */
+	}, {  /* above = v */
+		{  63,  36, 126, 146, 123, 158,  60,  90,  96 },/*left = dc  */
+		{  43,  46, 168, 134, 107, 128,  69, 142,  92 },/*left = v   */
+		{  44,  29,  68, 159, 201, 177,  50,  57,  77 },/*left = h   */
+		{  58,  38,  76, 114,  97, 172,  78, 133,  92 },/*left = d45 */
+		{  46,  41,  76, 140,  63, 184,  69, 112,  57 },/*left = d135*/
+		{  38,  32,  85, 140,  46, 112,  54, 151, 133 },/*left = d117*/
+		{  39,  27,  61, 131, 110, 175,  44,  75, 136 },/*left = d153*/
+		{  52,  30,  74, 113, 130, 175,  51,  64,  58 },/*left = d207*/
+		{  47,  35,  80, 100,  74, 143,  64, 163,  74 },/*left = d63 */
+		{  36,  61, 116, 114, 128, 162,  80, 125,  82 } /*left = tm  */
+	}, {  /* above = h */
+		{  82,  26,  26, 171, 208, 204,  44,  32, 105 },/*left = dc  */
+		{  55,  44,  68, 166, 179, 192,  57,  57, 108 },/*left = v   */
+		{  42,  26,  11, 199, 241, 228,  23,  15,  85 },/*left = h   */
+		{  68,  42,  19, 131, 160, 199,  55,  52,  83 },/*left = d45 */
+		{  58,  50,  25, 139, 115, 232,  39,  52, 118 },/*left = d135*/
+		{  50,  35,  33, 153, 104, 162,  64,  59, 131 },/*left = d117*/
+		{  44,  24,  16, 150, 177, 202,  33,  19, 156 },/*left = d153*/
+		{  55,  27,  12, 153, 203, 218,  26,  27,  49 },/*left = d207*/
+		{  53,  49,  21, 110, 116, 168,  59,  80,  76 },/*left = d63 */
+		{  38,  72,  19, 168, 203, 212,  50,  50, 107 } /*left = tm  */
+	}, {  /* above = d45 */
+		{ 103,  26,  36, 129, 132, 201,  83,  80,  93 },/*left = dc  */
+		{  59,  38,  83, 112, 103, 162,  98, 136,  90 },/*left = v   */
+		{  62,  30,  23, 158, 200, 207,  59,  57,  50 },/*left = h   */
+		{  67,  30,  29,  84,  86, 191, 102,  91,  59 },/*left = d45 */
+		{  60,  32,  33, 112,  71, 220,  64,  89, 104 },/*left = d135*/
+		{  53,  26,  34, 130,  56, 149,  84, 120, 103 },/*left = d117*/
+		{  53,  21,  23, 133, 109, 210,  56,  77, 172 },/*left = d153*/
+		{  77,  19,  29, 112, 142, 228,  55,  66,  36 },/*left = d207*/
+		{  61,  29,  29,  93,  97, 165,  83, 175, 162 },/*left = d63 */
+		{  47,  47,  43, 114, 137, 181, 100,  99,  95 } /*left = tm  */
+	}, {  /* above = d135 */
+		{  69,  23,  29, 128,  83, 199,  46,  44, 101 },/*left = dc  */
+		{  53,  40,  55, 139,  69, 183,  61,  80, 110 },/*left = v   */
+		{  40,  29,  19, 161, 180, 207,  43,  24,  91 },/*left = h   */
+		{  60,  34,  19, 105,  61, 198,  53,  64,  89 },/*left = d45 */
+		{  52,  31,  22, 158,  40, 209,  58,  62,  89 },/*left = d135*/
+		{  44,  31,  29, 147,  46, 158,  56, 102, 198 },/*left = d117*/
+		{  35,  19,  12, 135,  87, 209,  41,  45, 167 },/*left = d153*/
+		{  55,  25,  21, 118,  95, 215,  38,  39,  66 },/*left = d207*/
+		{  51,  38,  25, 113,  58, 164,  70,  93,  97 },/*left = d63 */
+		{  47,  54,  34, 146, 108, 203,  72, 103, 151 } /*left = tm  */
+	}, {  /* above = d117 */
+		{  64,  19,  37, 156,  66, 138,  49,  95, 133 },/*left = dc  */
+		{  46,  27,  80, 150,  55, 124,  55, 121, 135 },/*left = v   */
+		{  36,  23,  27, 165, 149, 166,  54,  64, 118 },/*left = h   */
+		{  53,  21,  36, 131,  63, 163,  60, 109,  81 },/*left = d45 */
+		{  40,  26,  35, 154,  40, 185,  51,  97, 123 },/*left = d135*/
+		{  35,  19,  34, 179,  19,  97,  48, 129, 124 },/*left = d117*/
+		{  36,  20,  26, 136,  62, 164,  33,  77, 154 },/*left = d153*/
+		{  45,  18,  32, 130,  90, 157,  40,  79,  91 },/*left = d207*/
+		{  45,  26,  28, 129,  45, 129,  49, 147, 123 },/*left = d63 */
+		{  38,  44,  51, 136,  74, 162,  57,  97, 121 } /*left = tm  */
+	}, {  /* above = d153 */
+		{  75,  17,  22, 136, 138, 185,  32,  34, 166 },/*left = dc  */
+		{  56,  39,  58, 133, 117, 173,  48,  53, 187 },/*left = v   */
+		{  35,  21,  12, 161, 212, 207,  20,  23, 145 },/*left = h   */
+		{  56,  29,  19, 117, 109, 181,  55,  68, 112 },/*left = d45 */
+		{  47,  29,  17, 153,  64, 220,  59,  51, 114 },/*left = d135*/
+		{  46,  16,  24, 136,  76, 147,  41,  64, 172 },/*left = d117*/
+		{  34,  17,  11, 108, 152, 187,  13,  15, 209 },/*left = d153*/
+		{  51,  24,  14, 115, 133, 209,  32,  26, 104 },/*left = d207*/
+		{  55,  30,  18, 122,  79, 179,  44,  88, 116 },/*left = d63 */
+		{  37,  49,  25, 129, 168, 164,  41,  54, 148 } /*left = tm  */
+	}, {  /* above = d207 */
+		{  82,  22,  32, 127, 143, 213,  39,  41,  70 },/*left = dc  */
+		{  62,  44,  61, 123, 105, 189,  48,  57,  64 },/*left = v   */
+		{  47,  25,  17, 175, 222, 220,  24,  30,  86 },/*left = h   */
+		{  68,  36,  17, 106, 102, 206,  59,  74,  74 },/*left = d45 */
+		{  57,  39,  23, 151,  68, 216,  55,  63,  58 },/*left = d135*/
+		{  49,  30,  35, 141,  70, 168,  82,  40, 115 },/*left = d117*/
+		{  51,  25,  15, 136, 129, 202,  38,  35, 139 },/*left = d153*/
+		{  68,  26,  16, 111, 141, 215,  29,  28,  28 },/*left = d207*/
+		{  59,  39,  19, 114,  75, 180,  77, 104,  42 },/*left = d63 */
+		{  40,  61,  26, 126, 152, 206,  61,  59,  93 } /*left = tm  */
+	}, {  /* above = d63 */
+		{  78,  23,  39, 111, 117, 170,  74, 124,  94 },/*left = dc  */
+		{  48,  34,  86, 101,  92, 146,  78, 179, 134 },/*left = v   */
+		{  47,  22,  24, 138, 187, 178,  68,  69,  59 },/*left = h   */
+		{  56,  25,  33, 105, 112, 187,  95, 177, 129 },/*left = d45 */
+		{  48,  31,  27, 114,  63, 183,  82, 116,  56 },/*left = d135*/
+		{  43,  28,  37, 121,  63, 123,  61, 192, 169 },/*left = d117*/
+		{  42,  17,  24, 109,  97, 177,  56,  76, 122 },/*left = d153*/
+		{  58,  18,  28, 105, 139, 182,  70,  92,  63 },/*left = d207*/
+		{  46,  23,  32,  74,  86, 150,  67, 183,  88 },/*left = d63 */
+		{  36,  38,  48,  92, 122, 165,  88, 137,  91 } /*left = tm  */
+	}, {  /* above = tm */
+		{  65,  70,  60, 155, 159, 199,  61,  60,  81 },/*left = dc  */
+		{  44,  78, 115, 132, 119, 173,  71, 112,  93 },/*left = v   */
+		{  39,  38,  21, 184, 227, 206,  42,  32,  64 },/*left = h   */
+		{  58,  47,  36, 124, 137, 193,  80,  82,  78 },/*left = d45 */
+		{  49,  50,  35, 144,  95, 205,  63,  78,  59 },/*left = d135*/
+		{  41,  53,  52, 148,  71, 142,  65, 128,  51 },/*left = d117*/
+		{  40,  36,  28, 143, 143, 202,  40,  55, 137 },/*left = d153*/
+		{  52,  34,  29, 129, 183, 227,  42,  35,  43 },/*left = d207*/
+		{  42,  44,  44, 104, 105, 164,  64, 130,  80 },/*left = d63 */
+		{  43,  81,  53, 140, 169, 204,  68,  84,  72 } /*left = tm  */
+	}
+};
+
+static const u8 kf_partition_probs[16][3] = {
+	/* 8x8 -> 4x4 */
+	{ 158,  97,  94 },	/* a/l both not split   */
+	{  93,  24,  99 },	/* a split, l not split */
+	{  85, 119,  44 },	/* l split, a not split */
+	{  62,  59,  67 },	/* a/l both split       */
+	/* 16x16 -> 8x8 */
+	{ 149,  53,  53 },	/* a/l both not split   */
+	{  94,  20,  48 },	/* a split, l not split */
+	{  83,  53,  24 },	/* l split, a not split */
+	{  52,  18,  18 },	/* a/l both split       */
+	/* 32x32 -> 16x16 */
+	{ 150,  40,  39 },	/* a/l both not split   */
+	{  78,  12,  26 },	/* a split, l not split */
+	{  67,  33,  11 },	/* l split, a not split */
+	{  24,   7,   5 },	/* a/l both split       */
+	/* 64x64 -> 32x32 */
+	{ 174,  35,  49 },	/* a/l both not split   */
+	{  68,  11,  27 },	/* a split, l not split */
+	{  57,  15,   9 },	/* l split, a not split */
+	{  12,   3,   3 },	/* a/l both split       */
+};
+
+static const u8 kf_uv_mode_prob[10][9] = {
+	{ 144,  11,  54, 157, 195, 130,  46,  58, 108 },  /* y = dc   */
+	{ 118,  15, 123, 148, 131, 101,  44,  93, 131 },  /* y = v    */
+	{ 113,  12,  23, 188, 226, 142,  26,  32, 125 },  /* y = h    */
+	{ 120,  11,  50, 123, 163, 135,  64,  77, 103 },  /* y = d45  */
+	{ 113,   9,  36, 155, 111, 157,  32,  44, 161 },  /* y = d135 */
+	{ 116,   9,  55, 176,  76,  96,  37,  61, 149 },  /* y = d117 */
+	{ 115,   9,  28, 141, 161, 167,  21,  25, 193 },  /* y = d153 */
+	{ 120,  12,  32, 145, 195, 142,  32,  38,  86 },  /* y = d207 */
+	{ 116,  12,  64, 120, 140, 125,  49, 115, 121 },  /* y = d63  */
+	{ 102,  19,  66, 162, 182, 122,  35,  59, 128 }   /* y = tm   */
+};
+
+static const struct rkvdec_vp9_frame_context vp9_default_probs = {
+	.tx8 = {
+		{ 100 },
+		{  66 },
+	},
+	.tx16 = {
+		{ 20, 152 },
+		{ 15, 101 },
+	},
+	.tx32 = {
+		{ 3, 136, 37 },
+		{ 5,  52, 13 },
+	},
+	.coef = {
+		{ /* tx = 4x4 */
+			{ /* block Type 0 */
+				{ /* Intra */
+					{ /* Coeff Band 0 */
+						{ 195,  29, 183 },
+						{  84,  49, 136 },
+						{   8,  42,  71 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  31, 107, 169 },
+						{  35,  99, 159 },
+						{  17,  82, 140 },
+						{   8,  66, 114 },
+						{   2,  44,  76 },
+						{   1,  19,  32 },
+					},
+					{ /* Coeff Band 2 */
+						{  40, 132, 201 },
+						{  29, 114, 187 },
+						{  13,  91, 157 },
+						{   7,  75, 127 },
+						{   3,  58,  95 },
+						{   1,  28,  47 },
+					},
+					{ /* Coeff Band 3 */
+						{  69, 142, 221 },
+						{  42, 122, 201 },
+						{  15,  91, 159 },
+						{   6,  67, 121 },
+						{   1,  42,  77 },
+						{   1,  17,  31 },
+					},
+					{ /* Coeff Band 4 */
+						{ 102, 148, 228 },
+						{  67, 117, 204 },
+						{  17,  82, 154 },
+						{   6,  59, 114 },
+						{   2,  39,  75 },
+						{   1,  15,  29 },
+					},
+					{ /* Coeff Band 5 */
+						{ 156,  57, 233 },
+						{ 119,  57, 212 },
+						{  58,  48, 163 },
+						{  29,  40, 124 },
+						{  12,  30,  81 },
+						{   3,  12,  31 }
+					},
+				},
+				{ /* Inter */
+					{ /* Coeff Band 0 */
+						{ 191, 107, 226 },
+						{ 124, 117, 204 },
+						{  25,  99, 155 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  29, 148, 210 },
+						{  37, 126, 194 },
+						{   8,  93, 157 },
+						{   2,  68, 118 },
+						{   1,  39,  69 },
+						{   1,  17,  33 },
+					},
+					{ /* Coeff Band 2 */
+						{  41, 151, 213 },
+						{  27, 123, 193 },
+						{   3,  82, 144 },
+						{   1,  58, 105 },
+						{   1,  32,  60 },
+						{   1,  13,  26 },
+					},
+					{ /* Coeff Band 3 */
+						{  59, 159, 220 },
+						{  23, 126, 198 },
+						{   4,  88, 151 },
+						{   1,  66, 114 },
+						{   1,  38,  71 },
+						{   1,  18,  34 },
+					},
+					{ /* Coeff Band 4 */
+						{ 114, 136, 232 },
+						{  51, 114, 207 },
+						{  11,  83, 155 },
+						{   3,  56, 105 },
+						{   1,  33,  65 },
+						{   1,  17,  34 },
+					},
+					{ /* Coeff Band 5 */
+						{ 149,  65, 234 },
+						{ 121,  57, 215 },
+						{  61,  49, 166 },
+						{  28,  36, 114 },
+						{  12,  25,  76 },
+						{   3,  16,  42 },
+					},
+				},
+			},
+			{ /* block Type 1 */
+				{ /* Intra */
+					{ /* Coeff Band 0 */
+						{ 214,  49, 220 },
+						{ 132,  63, 188 },
+						{  42,  65, 137 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  85, 137, 221 },
+						{ 104, 131, 216 },
+						{  49, 111, 192 },
+						{  21,  87, 155 },
+						{   2,  49,  87 },
+						{   1,  16,  28 },
+					},
+					{ /* Coeff Band 2 */
+						{  89, 163, 230 },
+						{  90, 137, 220 },
+						{  29, 100, 183 },
+						{  10,  70, 135 },
+						{   2,  42,  81 },
+						{   1,  17,  33 },
+					},
+					{ /* Coeff Band 3 */
+						{ 108, 167, 237 },
+						{  55, 133, 222 },
+						{  15,  97, 179 },
+						{   4,  72, 135 },
+						{   1,  45,  85 },
+						{   1,  19,  38 },
+					},
+					{ /* Coeff Band 4 */
+						{ 124, 146, 240 },
+						{  66, 124, 224 },
+						{  17,  88, 175 },
+						{   4,  58, 122 },
+						{   1,  36,  75 },
+						{   1,  18,  37 },
+					},
+					{ /* Coeff Band 5 */
+						{ 141,  79, 241 },
+						{ 126,  70, 227 },
+						{  66,  58, 182 },
+						{  30,  44, 136 },
+						{  12,  34,  96 },
+						{   2,  20,  47 },
+					},
+				},
+				{ /* Inter */
+					{ /* Coeff Band 0 */
+						{ 229,  99, 249 },
+						{ 143, 111, 235 },
+						{  46, 109, 192 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  82, 158, 236 },
+						{  94, 146, 224 },
+						{  25, 117, 191 },
+						{   9,  87, 149 },
+						{   3,  56,  99 },
+						{   1,  33,  57 },
+					},
+					{ /* Coeff Band 2 */
+						{  83, 167, 237 },
+						{  68, 145, 222 },
+						{  10, 103, 177 },
+						{   2,  72, 131 },
+						{   1,  41,  79 },
+						{   1,  20,  39 },
+					},
+					{ /* Coeff Band 3 */
+						{  99, 167, 239 },
+						{  47, 141, 224 },
+						{  10, 104, 178 },
+						{   2,  73, 133 },
+						{   1,  44,  85 },
+						{   1,  22,  47 },
+					},
+					{ /* Coeff Band 4 */
+						{ 127, 145, 243 },
+						{  71, 129, 228 },
+						{  17,  93, 177 },
+						{   3,  61, 124 },
+						{   1,  41,  84 },
+						{   1,  21,  52 },
+					},
+					{ /* Coeff Band 5 */
+						{ 157,  78, 244 },
+						{ 140,  72, 231 },
+						{  69,  58, 184 },
+						{  31,  44, 137 },
+						{  14,  38, 105 },
+						{   8,  23,  61 },
+					},
+				},
+			},
+		},
+		{ /* tx = 8x8 */
+			{ /* block Type 0 */
+				{ /* Intra */
+					{ /* Coeff Band 0 */
+						{ 125,  34, 187 },
+						{  52,  41, 133 },
+						{   6,  31,  56 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  37, 109, 153 },
+						{  51, 102, 147 },
+						{  23,  87, 128 },
+						{   8,  67, 101 },
+						{   1,  41,  63 },
+						{   1,  19,  29 },
+					},
+					{ /* Coeff Band 2 */
+						{  31, 154, 185 },
+						{  17, 127, 175 },
+						{   6,  96, 145 },
+						{   2,  73, 114 },
+						{   1,  51,  82 },
+						{   1,  28,  45 },
+					},
+					{ /* Coeff Band 3 */
+						{  23, 163, 200 },
+						{  10, 131, 185 },
+						{   2,  93, 148 },
+						{   1,  67, 111 },
+						{   1,  41,  69 },
+						{   1,  14,  24 },
+					},
+					{ /* Coeff Band 4 */
+						{  29, 176, 217 },
+						{  12, 145, 201 },
+						{   3, 101, 156 },
+						{   1,  69, 111 },
+						{   1,  39,  63 },
+						{   1,  14,  23 },
+					},
+					{ /* Coeff Band 5 */
+						{  57, 192, 233 },
+						{  25, 154, 215 },
+						{   6, 109, 167 },
+						{   3,  78, 118 },
+						{   1,  48,  69 },
+						{   1,  21,  29 },
+					},
+				},
+				{ /* Inter */
+					{ /* Coeff Band 0 */
+						{ 202, 105, 245 },
+						{ 108, 106, 216 },
+						{  18,  90, 144 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  33, 172, 219 },
+						{  64, 149, 206 },
+						{  14, 117, 177 },
+						{   5,  90, 141 },
+						{   2,  61,  95 },
+						{   1,  37,  57 },
+					},
+					{ /* Coeff Band 2 */
+						{  33, 179, 220 },
+						{  11, 140, 198 },
+						{   1,  89, 148 },
+						{   1,  60, 104 },
+						{   1,  33,  57 },
+						{   1,  12,  21 },
+					},
+					{ /* Coeff Band 3 */
+						{  30, 181, 221 },
+						{   8, 141, 198 },
+						{   1,  87, 145 },
+						{   1,  58, 100 },
+						{   1,  31,  55 },
+						{   1,  12,  20 },
+					},
+					{ /* Coeff Band 4 */
+						{  32, 186, 224 },
+						{   7, 142, 198 },
+						{   1,  86, 143 },
+						{   1,  58, 100 },
+						{   1,  31,  55 },
+						{   1,  12,  22 },
+					},
+					{ /* Coeff Band 5 */
+						{  57, 192, 227 },
+						{  20, 143, 204 },
+						{   3,  96, 154 },
+						{   1,  68, 112 },
+						{   1,  42,  69 },
+						{   1,  19,  32 },
+					},
+				},
+			},
+			{ /* block Type 1 */
+				{ /* Intra */
+					{ /* Coeff Band 0 */
+						{ 212,  35, 215 },
+						{ 113,  47, 169 },
+						{  29,  48, 105 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  74, 129, 203 },
+						{ 106, 120, 203 },
+						{  49, 107, 178 },
+						{  19,  84, 144 },
+						{   4,  50,  84 },
+						{   1,  15,  25 },
+					},
+					{ /* Coeff Band 2 */
+						{  71, 172, 217 },
+						{  44, 141, 209 },
+						{  15, 102, 173 },
+						{   6,  76, 133 },
+						{   2,  51,  89 },
+						{   1,  24,  42 },
+					},
+					{ /* Coeff Band 3 */
+						{  64, 185, 231 },
+						{  31, 148, 216 },
+						{   8, 103, 175 },
+						{   3,  74, 131 },
+						{   1,  46,  81 },
+						{   1,  18,  30 },
+					},
+					{ /* Coeff Band 4 */
+						{  65, 196, 235 },
+						{  25, 157, 221 },
+						{   5, 105, 174 },
+						{   1,  67, 120 },
+						{   1,  38,  69 },
+						{   1,  15,  30 },
+					},
+					{ /* Coeff Band 5 */
+						{  65, 204, 238 },
+						{  30, 156, 224 },
+						{   7, 107, 177 },
+						{   2,  70, 124 },
+						{   1,  42,  73 },
+						{   1,  18,  34 },
+					},
+				},
+				{ /* Inter */
+					{ /* Coeff Band 0 */
+						{ 225,  86, 251 },
+						{ 144, 104, 235 },
+						{  42,  99, 181 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  85, 175, 239 },
+						{ 112, 165, 229 },
+						{  29, 136, 200 },
+						{  12, 103, 162 },
+						{   6,  77, 123 },
+						{   2,  53,  84 },
+					},
+					{ /* Coeff Band 2 */
+						{  75, 183, 239 },
+						{  30, 155, 221 },
+						{   3, 106, 171 },
+						{   1,  74, 128 },
+						{   1,  44,  76 },
+						{   1,  17,  28 },
+					},
+					{ /* Coeff Band 3 */
+						{  73, 185, 240 },
+						{  27, 159, 222 },
+						{   2, 107, 172 },
+						{   1,  75, 127 },
+						{   1,  42,  73 },
+						{   1,  17,  29 },
+					},
+					{ /* Coeff Band 4 */
+						{  62, 190, 238 },
+						{  21, 159, 222 },
+						{   2, 107, 172 },
+						{   1,  72, 122 },
+						{   1,  40,  71 },
+						{   1,  18,  32 },
+					},
+					{ /* Coeff Band 5 */
+						{  61, 199, 240 },
+						{  27, 161, 226 },
+						{   4, 113, 180 },
+						{   1,  76, 129 },
+						{   1,  46,  80 },
+						{   1,  23,  41 },
+					},
+				},
+			},
+		},
+		{ /* tx = 16x16 */
+			{ /* block Type 0 */
+				{ /* Intra */
+					{ /* Coeff Band 0 */
+						{   7,  27, 153 },
+						{   5,  30,  95 },
+						{   1,  16,  30 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  50,  75, 127 },
+						{  57,  75, 124 },
+						{  27,  67, 108 },
+						{  10,  54,  86 },
+						{   1,  33,  52 },
+						{   1,  12,  18 },
+					},
+					{ /* Coeff Band 2 */
+						{  43, 125, 151 },
+						{  26, 108, 148 },
+						{   7,  83, 122 },
+						{   2,  59,  89 },
+						{   1,  38,  60 },
+						{   1,  17,  27 },
+					},
+					{ /* Coeff Band 3 */
+						{  23, 144, 163 },
+						{  13, 112, 154 },
+						{   2,  75, 117 },
+						{   1,  50,  81 },
+						{   1,  31,  51 },
+						{   1,  14,  23 },
+					},
+					{ /* Coeff Band 4 */
+						{  18, 162, 185 },
+						{   6, 123, 171 },
+						{   1,  78, 125 },
+						{   1,  51,  86 },
+						{   1,  31,  54 },
+						{   1,  14,  23 },
+					},
+					{ /* Coeff Band 5 */
+						{  15, 199, 227 },
+						{   3, 150, 204 },
+						{   1,  91, 146 },
+						{   1,  55,  95 },
+						{   1,  30,  53 },
+						{   1,  11,  20 },
+					}
+				},
+				{ /* Inter */
+					{ /* Coeff Band 0 */
+						{  19,  55, 240 },
+						{  19,  59, 196 },
+						{   3,  52, 105 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  41, 166, 207 },
+						{ 104, 153, 199 },
+						{  31, 123, 181 },
+						{  14, 101, 152 },
+						{   5,  72, 106 },
+						{   1,  36,  52 },
+					},
+					{ /* Coeff Band 2 */
+						{  35, 176, 211 },
+						{  12, 131, 190 },
+						{   2,  88, 144 },
+						{   1,  60, 101 },
+						{   1,  36,  60 },
+						{   1,  16,  28 },
+					},
+					{ /* Coeff Band 3 */
+						{  28, 183, 213 },
+						{   8, 134, 191 },
+						{   1,  86, 142 },
+						{   1,  56,  96 },
+						{   1,  30,  53 },
+						{   1,  12,  20 },
+					},
+					{ /* Coeff Band 4 */
+						{  20, 190, 215 },
+						{   4, 135, 192 },
+						{   1,  84, 139 },
+						{   1,  53,  91 },
+						{   1,  28,  49 },
+						{   1,  11,  20 },
+					},
+					{ /* Coeff Band 5 */
+						{  13, 196, 216 },
+						{   2, 137, 192 },
+						{   1,  86, 143 },
+						{   1,  57,  99 },
+						{   1,  32,  56 },
+						{   1,  13,  24 },
+					},
+				},
+			},
+			{ /* block Type 1 */
+				{ /* Intra */
+					{ /* Coeff Band 0 */
+						{ 211,  29, 217 },
+						{  96,  47, 156 },
+						{  22,  43,  87 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  78, 120, 193 },
+						{ 111, 116, 186 },
+						{  46, 102, 164 },
+						{  15,  80, 128 },
+						{   2,  49,  76 },
+						{   1,  18,  28 },
+					},
+					{ /* Coeff Band 2 */
+						{  71, 161, 203 },
+						{  42, 132, 192 },
+						{  10,  98, 150 },
+						{   3,  69, 109 },
+						{   1,  44,  70 },
+						{   1,  18,  29 },
+					},
+					{ /* Coeff Band 3 */
+						{  57, 186, 211 },
+						{  30, 140, 196 },
+						{   4,  93, 146 },
+						{   1,  62, 102 },
+						{   1,  38,  65 },
+						{   1,  16,  27 },
+					},
+					{ /* Coeff Band 4 */
+						{  47, 199, 217 },
+						{  14, 145, 196 },
+						{   1,  88, 142 },
+						{   1,  57,  98 },
+						{   1,  36,  62 },
+						{   1,  15,  26 },
+					},
+					{ /* Coeff Band 5 */
+						{  26, 219, 229 },
+						{   5, 155, 207 },
+						{   1,  94, 151 },
+						{   1,  60, 104 },
+						{   1,  36,  62 },
+						{   1,  16,  28 },
+					}
+				},
+				{ /* Inter */
+					{ /* Coeff Band 0 */
+						{ 233,  29, 248 },
+						{ 146,  47, 220 },
+						{  43,  52, 140 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{ 100, 163, 232 },
+						{ 179, 161, 222 },
+						{  63, 142, 204 },
+						{  37, 113, 174 },
+						{  26,  89, 137 },
+						{  18,  68,  97 },
+					},
+					{ /* Coeff Band 2 */
+						{  85, 181, 230 },
+						{  32, 146, 209 },
+						{   7, 100, 164 },
+						{   3,  71, 121 },
+						{   1,  45,  77 },
+						{   1,  18,  30 },
+					},
+					{ /* Coeff Band 3 */
+						{  65, 187, 230 },
+						{  20, 148, 207 },
+						{   2,  97, 159 },
+						{   1,  68, 116 },
+						{   1,  40,  70 },
+						{   1,  14,  29 },
+					},
+					{ /* Coeff Band 4 */
+						{  40, 194, 227 },
+						{   8, 147, 204 },
+						{   1,  94, 155 },
+						{   1,  65, 112 },
+						{   1,  39,  66 },
+						{   1,  14,  26 },
+					},
+					{ /* Coeff Band 5 */
+						{  16, 208, 228 },
+						{   3, 151, 207 },
+						{   1,  98, 160 },
+						{   1,  67, 117 },
+						{   1,  41,  74 },
+						{   1,  17,  31 },
+					},
+				},
+			},
+		},
+		{ /* tx = 32x32 */
+			{ /* block Type 0 */
+				{ /* Intra */
+					{ /* Coeff Band 0 */
+						{  17,  38, 140 },
+						{   7,  34,  80 },
+						{   1,  17,  29 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  37,  75, 128 },
+						{  41,  76, 128 },
+						{  26,  66, 116 },
+						{  12,  52,  94 },
+						{   2,  32,  55 },
+						{   1,  10,  16 },
+					},
+					{ /* Coeff Band 2 */
+						{  50, 127, 154 },
+						{  37, 109, 152 },
+						{  16,  82, 121 },
+						{   5,  59,  85 },
+						{   1,  35,  54 },
+						{   1,  13,  20 },
+					},
+					{ /* Coeff Band 3 */
+						{  40, 142, 167 },
+						{  17, 110, 157 },
+						{   2,  71, 112 },
+						{   1,  44,  72 },
+						{   1,  27,  45 },
+						{   1,  11,  17 },
+					},
+					{ /* Coeff Band 4 */
+						{  30, 175, 188 },
+						{   9, 124, 169 },
+						{   1,  74, 116 },
+						{   1,  48,  78 },
+						{   1,  30,  49 },
+						{   1,  11,  18 },
+					},
+					{ /* Coeff Band 5 */
+						{  10, 222, 223 },
+						{   2, 150, 194 },
+						{   1,  83, 128 },
+						{   1,  48,  79 },
+						{   1,  27,  45 },
+						{   1,  11,  17 },
+					},
+				},
+				{ /* Inter */
+					{ /* Coeff Band 0 */
+						{  36,  41, 235 },
+						{  29,  36, 193 },
+						{  10,  27, 111 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  85, 165, 222 },
+						{ 177, 162, 215 },
+						{ 110, 135, 195 },
+						{  57, 113, 168 },
+						{  23,  83, 120 },
+						{  10,  49,  61 },
+					},
+					{ /* Coeff Band 2 */
+						{  85, 190, 223 },
+						{  36, 139, 200 },
+						{   5,  90, 146 },
+						{   1,  60, 103 },
+						{   1,  38,  65 },
+						{   1,  18,  30 },
+					},
+					{ /* Coeff Band 3 */
+						{  72, 202, 223 },
+						{  23, 141, 199 },
+						{   2,  86, 140 },
+						{   1,  56,  97 },
+						{   1,  36,  61 },
+						{   1,  16,  27 },
+					},
+					{ /* Coeff Band 4 */
+						{  55, 218, 225 },
+						{  13, 145, 200 },
+						{   1,  86, 141 },
+						{   1,  57,  99 },
+						{   1,  35,  61 },
+						{   1,  13,  22 },
+					},
+					{ /* Coeff Band 5 */
+						{  15, 235, 212 },
+						{   1, 132, 184 },
+						{   1,  84, 139 },
+						{   1,  57,  97 },
+						{   1,  34,  56 },
+						{   1,  14,  23 },
+					},
+				},
+			},
+			{ /* block Type 1 */
+				{ /* Intra */
+					{ /* Coeff Band 0 */
+						{ 181,  21, 201 },
+						{  61,  37, 123 },
+						{  10,  38,  71 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{  47, 106, 172 },
+						{  95, 104, 173 },
+						{  42,  93, 159 },
+						{  18,  77, 131 },
+						{   4,  50,  81 },
+						{   1,  17,  23 },
+					},
+					{ /* Coeff Band 2 */
+						{  62, 147, 199 },
+						{  44, 130, 189 },
+						{  28, 102, 154 },
+						{  18,  75, 115 },
+						{   2,  44,  65 },
+						{   1,  12,  19 },
+					},
+					{ /* Coeff Band 3 */
+						{  55, 153, 210 },
+						{  24, 130, 194 },
+						{   3,  93, 146 },
+						{   1,  61,  97 },
+						{   1,  31,  50 },
+						{   1,  10,  16 },
+					},
+					{ /* Coeff Band 4 */
+						{  49, 186, 223 },
+						{  17, 148, 204 },
+						{   1,  96, 142 },
+						{   1,  53,  83 },
+						{   1,  26,  44 },
+						{   1,  11,  17 },
+					},
+					{ /* Coeff Band 5 */
+						{  13, 217, 212 },
+						{   2, 136, 180 },
+						{   1,  78, 124 },
+						{   1,  50,  83 },
+						{   1,  29,  49 },
+						{   1,  14,  23 },
+					},
+				},
+				{ /* Inter */
+					{ /* Coeff Band 0 */
+						{ 197,  13, 247 },
+						{  82,  17, 222 },
+						{  25,  17, 162 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+						{   0,   0,   0 },
+					},
+					{ /* Coeff Band 1 */
+						{ 126, 186, 247 },
+						{ 234, 191, 243 },
+						{ 176, 177, 234 },
+						{ 104, 158, 220 },
+						{  66, 128, 186 },
+						{  55,  90, 137 },
+					},
+					{ /* Coeff Band 2 */
+						{ 111, 197, 242 },
+						{  46, 158, 219 },
+						{   9, 104, 171 },
+						{   2,  65, 125 },
+						{   1,  44,  80 },
+						{   1,  17,  91 },
+					},
+					{ /* Coeff Band 3 */
+						{ 104, 208, 245 },
+						{  39, 168, 224 },
+						{   3, 109, 162 },
+						{   1,  79, 124 },
+						{   1,  50, 102 },
+						{   1,  43, 102 },
+					},
+					{ /* Coeff Band 4 */
+						{  84, 220, 246 },
+						{  31, 177, 231 },
+						{   2, 115, 180 },
+						{   1,  79, 134 },
+						{   1,  55,  77 },
+						{   1,  60,  79 },
+					},
+					{ /* Coeff Band 5 */
+						{  43, 243, 240 },
+						{   8, 180, 217 },
+						{   1, 115, 166 },
+						{   1,  84, 121 },
+						{   1,  51,  67 },
+						{   1,  16,   6 },
+					},
+				},
+			},
+		},
+	},
+
+	.skip = { 192, 128, 64 },
+	.inter_mode = {
+		{  2, 173, 34 },
+		{  7, 145, 85 },
+		{  7, 166, 63 },
+		{  7,  94, 66 },
+		{  8,  64, 46 },
+		{ 17,  81, 31 },
+		{ 25,  29, 30 },
+	},
+	.interp_filter = {
+		{ 235, 162 },
+		{  36, 255 },
+		{  34,   3 },
+		{ 149, 144 },
+	},
+	.is_inter = { 9, 102, 187, 225 },
+	.comp_mode = { 239, 183, 119, 96, 41 },
+	.single_ref = {
+		{  33,  16 },
+		{  77,  74 },
+		{ 142, 142 },
+		{ 172, 170 },
+		{ 238, 247 },
+	},
+	.comp_ref = { 50, 126, 123, 221, 226 },
+	.y_mode = {
+		{  65,  32, 18, 144, 162, 194, 41, 51, 98 },
+		{ 132,  68, 18, 165, 217, 196, 45, 40, 78 },
+		{ 173,  80, 19, 176, 240, 193, 64, 35, 46 },
+		{ 221, 135, 38, 194, 248, 121, 96, 85, 29 },
+	},
+	.uv_mode = {
+		{ 120,   7,  76, 176, 208, 126,  28,  54, 103 } /* y = dc */,
+		{  48,  12, 154, 155, 139,  90,  34, 117, 119 } /* y = v */,
+		{  67,   6,  25, 204, 243, 158,  13,  21,  96 } /* y = h */,
+		{  97,   5,  44, 131, 176, 139,  48,  68,  97 } /* y = d45 */,
+		{  83,   5,  42, 156, 111, 152,  26,  49, 152 } /* y = d135 */,
+		{  80,   5,  58, 178,  74,  83,  33,  62, 145 } /* y = d117 */,
+		{  86,   5,  32, 154, 192, 168,  14,  22, 163 } /* y = d153 */,
+		{  85,   5,  32, 156, 216, 148,  19,  29,  73 } /* y = d207 */,
+		{  77,   7,  64, 116, 132, 122,  37, 126, 120 } /* y = d63 */,
+		{ 101,  21, 107, 181, 192, 103,  19,  67, 125 } /* y = tm */
+	},
+	.partition = {
+		/* 8x8 -> 4x4 */
+		{ 199, 122, 141 } /* a/l both not split */,
+		{ 147,  63, 159 } /* a split, l not split */,
+		{ 148, 133, 118 } /* l split, a not split */,
+		{ 121, 104, 114 } /* a/l both split */,
+		/* 16x16 -> 8x8 */
+		{ 174,  73,  87 } /* a/l both not split */,
+		{  92,  41,  83 } /* a split, l not split */,
+		{  82,  99,  50 } /* l split, a not split */,
+		{  53,  39,  39 } /* a/l both split */,
+		/* 32x32 -> 16x16 */
+		{ 177,  58,  59 } /* a/l both not split */,
+		{  68,  26,  63 } /* a split, l not split */,
+		{  52,  79,  25 } /* l split, a not split */,
+		{  17,  14,  12 } /* a/l both split */,
+		/* 64x64 -> 32x32 */
+		{ 222,  34,  30 } /* a/l both not split */,
+		{  72,  16,  44 } /* a split, l not split */,
+		{  58,  32,  12 } /* l split, a not split */,
+		{  10,   7,   6 } /* a/l both split */,
+	},
+
+	.mv = {
+		.joint = { 32, 64, 96 },
+		.sign = { 128, 128 },
+		.class = {
+			{ 224, 144, 192, 168, 192, 176, 192, 198, 198, 245 },
+			{ 216, 128, 176, 160, 176, 176, 192, 198, 198, 208 },
+		},
+		.class0_bit = { 216, 208 },
+		.bits = {
+			{ 136, 140, 148, 160, 176, 192, 224, 234, 234, 240},
+			{ 136, 140, 148, 160, 176, 192, 224, 234, 234, 240},
+		},
+		.class0_fr = {
+			{
+				{ 128, 128, 64 },
+				{  96, 112, 64 },
+			},
+			{
+				{ 128, 128, 64 },
+				{  96, 112, 64 },
+			},
+		},
+		.fr = {
+			{ 64, 96, 64 },
+			{ 64, 96, 64 },
+		},
+		.class0_hp = { 160, 160 },
+		.hp = { 128, 128 },
+	},
+};
+
+static void write_coeff_plane(const u8 coef[6][6][3], u8 *coeff_plane)
+{
+	unsigned int idx = 0;
+	u8 byte_count = 0, p;
+	s32 k, m, n;
+
+	for (k = 0; k < 6; k++) {
+		for (m = 0; m < 6; m++) {
+			for (n = 0; n < 3; n++) {
+				p = coef[k][m][n];
+				coeff_plane[idx++] = p;
+				byte_count++;
+				if (byte_count == 27) {
+					idx += 5;
+					byte_count = 0;
+				}
+			}
+		}
+	}
+}
+
+static void init_intra_only_probs(struct rkvdec_ctx *ctx,
+				  const struct rkvdec_vp9_run *run)
+{
+	const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	struct rkvdec_vp9_priv_tbl *tbl = vp9_ctx->priv_tbl.cpu;
+	struct rkvdec_vp9_intra_only_frame_probs *rkprobs;
+	const struct rkvdec_vp9_frame_context *probs;
+	unsigned int i, j, k, m;
+
+	rkprobs = &tbl->probs.intra_only;
+	dec_params = run->decode_params;
+	probs = &vp9_ctx->probability_tables;
+
+	/*
+	 * intra only 149 x 128 bits ,aligned to 152 x 128 bits coeff related
+	 * prob 64 x 128 bits
+	 */
+	for (i = 0; i < ARRAY_SIZE(probs->coef); i++) {
+		for (j = 0; j < ARRAY_SIZE(probs->coef[0]); j++)
+			write_coeff_plane(probs->coef[i][j][0],
+					  rkprobs->coef_intra[i][j]);
+	}
+
+	/* intra mode prob  80 x 128 bits */
+	for (i = 0; i < ARRAY_SIZE(vp9_kf_y_mode_prob); i++) {
+		u32 byte_count = 0;
+		int idx = 0;
+
+		/* vp9_kf_y_mode_prob */
+		for (j = 0; j < ARRAY_SIZE(vp9_kf_y_mode_prob[0]); j++) {
+			for (k = 0; k < ARRAY_SIZE(vp9_kf_y_mode_prob[0][0]);
+			     k++) {
+				u8 val = vp9_kf_y_mode_prob[i][j][k];
+
+				rkprobs->intra_mode[i].y_mode[idx++] = val;
+				byte_count++;
+				if (byte_count == 27) {
+					byte_count = 0;
+					idx += 5;
+				}
+			}
+		}
+
+		idx = 0;
+		if (i < 4) {
+			for (m = 0; m < (i < 3 ? 23 : 21); m++) {
+				const u8 *ptr = (const u8 *)kf_uv_mode_prob;
+
+				rkprobs->intra_mode[i].uv_mode[idx++] = ptr[i * 23 + m];
+			}
+		}
+	}
+}
+
+static void init_inter_probs(struct rkvdec_ctx *ctx,
+			     const struct rkvdec_vp9_run *run)
+{
+	const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	struct rkvdec_vp9_priv_tbl *tbl = vp9_ctx->priv_tbl.cpu;
+	struct rkvdec_vp9_inter_frame_probs *rkprobs;
+	const struct rkvdec_vp9_frame_context *probs;
+	unsigned int i, j, k;
+
+	rkprobs = &tbl->probs.inter;
+	dec_params = run->decode_params;
+	probs = &vp9_ctx->probability_tables;
+
+	/*
+	 * inter probs
+	 * 151 x 128 bits, aligned to 152 x 128 bits
+	 * inter only
+	 * intra_y_mode & inter_block info 6 x 128 bits
+	 */
+
+	memcpy(rkprobs->y_mode, probs->y_mode, sizeof(rkprobs->y_mode));
+	memcpy(rkprobs->comp_mode, probs->comp_mode,
+	       sizeof(rkprobs->comp_mode));
+	memcpy(rkprobs->comp_ref, probs->comp_ref,
+	       sizeof(rkprobs->comp_ref));
+	memcpy(rkprobs->single_ref, probs->single_ref,
+	       sizeof(rkprobs->single_ref));
+	memcpy(rkprobs->inter_mode, probs->inter_mode,
+	       sizeof(rkprobs->inter_mode));
+	memcpy(rkprobs->interp_filter, probs->interp_filter,
+	       sizeof(rkprobs->interp_filter));
+
+	/* 128 x 128 bits coeff related */
+	for (i = 0; i < ARRAY_SIZE(probs->coef); i++) {
+		for (j = 0; j < ARRAY_SIZE(probs->coef[0]); j++) {
+			for (k = 0; k < ARRAY_SIZE(probs->coef[0][0]); k++)
+				write_coeff_plane(probs->coef[i][j][k],
+						  rkprobs->coef[k][i][j]);
+		}
+	}
+
+	/* intra uv mode 6 x 128 */
+	memcpy(rkprobs->uv_mode_0_2, &probs->uv_mode[0],
+	       sizeof(rkprobs->uv_mode_0_2));
+	memcpy(rkprobs->uv_mode_3_5, &probs->uv_mode[3],
+	       sizeof(rkprobs->uv_mode_3_5));
+	memcpy(rkprobs->uv_mode_6_8, &probs->uv_mode[6],
+	       sizeof(rkprobs->uv_mode_6_8));
+	memcpy(rkprobs->uv_mode_9, &probs->uv_mode[9],
+	       sizeof(rkprobs->uv_mode_9));
+
+	/* mv related 6 x 128 */
+	memcpy(rkprobs->mv.joint, probs->mv.joint,
+	       sizeof(rkprobs->mv.joint));
+	memcpy(rkprobs->mv.sign, probs->mv.sign,
+	       sizeof(rkprobs->mv.sign));
+	memcpy(rkprobs->mv.class, probs->mv.class,
+	       sizeof(rkprobs->mv.class));
+	memcpy(rkprobs->mv.class0_bit, probs->mv.class0_bit,
+	       sizeof(rkprobs->mv.class0_bit));
+	memcpy(rkprobs->mv.bits, probs->mv.bits,
+	       sizeof(rkprobs->mv.bits));
+	memcpy(rkprobs->mv.class0_fr, probs->mv.class0_fr,
+	       sizeof(rkprobs->mv.class0_fr));
+	memcpy(rkprobs->mv.fr, probs->mv.fr,
+	       sizeof(rkprobs->mv.fr));
+	memcpy(rkprobs->mv.class0_hp, probs->mv.class0_hp,
+	       sizeof(rkprobs->mv.class0_hp));
+	memcpy(rkprobs->mv.hp, probs->mv.hp,
+	       sizeof(rkprobs->mv.hp));
+}
+
+static void init_probs(struct rkvdec_ctx *ctx,
+		       const struct rkvdec_vp9_run *run)
+{
+	const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	struct rkvdec_vp9_priv_tbl *tbl = vp9_ctx->priv_tbl.cpu;
+	struct rkvdec_vp9_probs *rkprobs = &tbl->probs;
+	const struct v4l2_vp9_segmentation *seg;
+	const struct rkvdec_vp9_frame_context *probs;
+	bool intra_only;
+
+	dec_params = run->decode_params;
+	probs = &vp9_ctx->probability_tables;
+	seg = &dec_params->seg;
+
+	memset(rkprobs, 0, sizeof(*rkprobs));
+
+	intra_only = !!(dec_params->flags &
+			(V4L2_VP9_FRAME_FLAG_KEY_FRAME |
+			 V4L2_VP9_FRAME_FLAG_INTRA_ONLY));
+
+	/* sb info  5 x 128 bit */
+	memcpy(rkprobs->partition,
+	       intra_only ? kf_partition_probs : probs->partition,
+	       sizeof(rkprobs->partition));
+
+	memcpy(rkprobs->pred, seg->pred_probs, sizeof(rkprobs->pred));
+	memcpy(rkprobs->tree, seg->tree_probs, sizeof(rkprobs->tree));
+	memcpy(rkprobs->skip, probs->skip, sizeof(rkprobs->skip));
+	memcpy(rkprobs->tx32, probs->tx32, sizeof(rkprobs->tx32));
+	memcpy(rkprobs->tx16, probs->tx16, sizeof(rkprobs->tx16));
+	memcpy(rkprobs->tx8, probs->tx8, sizeof(rkprobs->tx8));
+	memcpy(rkprobs->is_inter, probs->is_inter, sizeof(rkprobs->is_inter));
+
+	if (intra_only)
+		init_intra_only_probs(ctx, run);
+	else
+		init_inter_probs(ctx, run);
+}
+
+struct vp9d_ref_config {
+	u32 reg_frm_size;
+	u32 reg_hor_stride;
+	u32 reg_y_stride;
+	u32 reg_yuv_stride;
+	u32 reg_ref_base;
+};
+
+static struct vp9d_ref_config ref_config[3] = {
+	{
+		.reg_frm_size = RKVDEC_REG_VP9_FRAME_SIZE(0),
+		.reg_hor_stride = RKVDEC_VP9_HOR_VIRSTRIDE(0),
+		.reg_y_stride = RKVDEC_VP9_LAST_FRAME_YSTRIDE,
+		.reg_yuv_stride = RKVDEC_VP9_LAST_FRAME_YUVSTRIDE,
+		.reg_ref_base = RKVDEC_REG_VP9_LAST_FRAME_BASE,
+	},
+	{
+		.reg_frm_size = RKVDEC_REG_VP9_FRAME_SIZE(1),
+		.reg_hor_stride = RKVDEC_VP9_HOR_VIRSTRIDE(1),
+		.reg_y_stride = RKVDEC_VP9_GOLDEN_FRAME_YSTRIDE,
+		.reg_yuv_stride = 0,
+		.reg_ref_base = RKVDEC_REG_VP9_GOLDEN_FRAME_BASE,
+	},
+	{
+		.reg_frm_size = RKVDEC_REG_VP9_FRAME_SIZE(2),
+		.reg_hor_stride = RKVDEC_VP9_HOR_VIRSTRIDE(2),
+		.reg_y_stride = RKVDEC_VP9_ALTREF_FRAME_YSTRIDE,
+		.reg_yuv_stride = 0,
+		.reg_ref_base = RKVDEC_REG_VP9_ALTREF_FRAME_BASE,
+	}
+};
+
+static struct rkvdec_decoded_buffer *
+get_ref_buf(struct rkvdec_ctx *ctx, struct vb2_v4l2_buffer *dst, u64 timestamp)
+{
+	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
+	struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
+	int buf_idx;
+
+	/*
+	 * If a ref is unused or invalid, address of current destination
+	 * buffer is returned.
+	 */
+	buf_idx = vb2_find_timestamp(cap_q, timestamp, 0);
+	if (buf_idx < 0)
+		return vb2_to_rkvdec_decoded_buf(&dst->vb2_buf);
+
+	return vb2_to_rkvdec_decoded_buf(vb2_get_buffer(cap_q, buf_idx));
+}
+
+static dma_addr_t get_mv_base_addr(struct rkvdec_decoded_buffer *buf)
+{
+	u32 aligned_pitch, aligned_height, yuv_len;
+
+	aligned_height = round_up(buf->vp9.height, 64);
+	aligned_pitch = round_up(buf->vp9.width * buf->vp9.bit_depth, 512) / 8;
+	yuv_len = (aligned_height * aligned_pitch * 3) / 2;
+
+	return vb2_dma_contig_plane_dma_addr(&buf->base.vb.vb2_buf, 0) +
+	       yuv_len;
+}
+
+static void config_ref_registers(struct rkvdec_ctx *ctx,
+				 const struct rkvdec_vp9_run *run,
+				 struct rkvdec_decoded_buffer **ref_bufs,
+				 enum v4l2_vp9_ref_id id)
+{
+	u32 aligned_pitch, aligned_height, y_len, yuv_len;
+	struct rkvdec_decoded_buffer *buf = ref_bufs[id];
+	struct rkvdec_dev *rkvdec = ctx->dev;
+
+	aligned_height = round_up(buf->vp9.height, 64);
+	writel_relaxed(RKVDEC_VP9_FRAMEWIDTH(buf->vp9.width) |
+		       RKVDEC_VP9_FRAMEHEIGHT(buf->vp9.height),
+		       rkvdec->regs + ref_config[id].reg_frm_size);
+
+	writel_relaxed(vb2_dma_contig_plane_dma_addr(&buf->base.vb.vb2_buf, 0),
+		       rkvdec->regs + ref_config[id].reg_ref_base);
+
+	if (&buf->base.vb == run->base.bufs.dst)
+		return;
+
+	aligned_pitch = round_up(buf->vp9.width * buf->vp9.bit_depth, 512) / 8;
+	y_len = aligned_height * aligned_pitch;
+	yuv_len = (y_len * 3) / 2;
+
+	writel_relaxed(RKVDEC_HOR_Y_VIRSTRIDE(aligned_pitch / 16) |
+		       RKVDEC_HOR_UV_VIRSTRIDE(aligned_pitch / 16),
+		       rkvdec->regs + ref_config[id].reg_hor_stride);
+	writel_relaxed(RKVDEC_VP9_REF_YSTRIDE(y_len / 16),
+		       rkvdec->regs + ref_config[id].reg_y_stride);
+
+	if (!ref_config[id].reg_yuv_stride)
+		return;
+
+	writel_relaxed(RKVDEC_VP9_REF_YUVSTRIDE(yuv_len / 16),
+		       rkvdec->regs + ref_config[id].reg_yuv_stride);
+}
+
+static bool seg_featured_enabled(const struct v4l2_vp9_segmentation *seg,
+				 enum v4l2_vp9_segment_feature feature,
+				 unsigned int segid)
+{
+	u8 mask = V4L2_VP9_SEGMENT_FEATURE_ENABLED(feature);
+
+	return !!(seg->feature_enabled[segid] & mask);
+}
+
+static void config_seg_registers(struct rkvdec_ctx *ctx, unsigned int segid)
+{
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	const struct v4l2_vp9_segmentation *seg;
+	struct rkvdec_dev *rkvdec = ctx->dev;
+	s16 feature_val;
+	u8 feature_id;
+	u32 val = 0;
+
+	seg = vp9_ctx->last.valid ? &vp9_ctx->last.seg : &vp9_ctx->cur.seg;
+	feature_id = V4L2_VP9_SEGMENT_FEATURE_QP_DELTA;
+	if (seg_featured_enabled(seg, feature_id, segid)) {
+		feature_val = seg->feature_data[segid][feature_id];
+		val |= RKVDEC_SEGID_FRAME_QP_DELTA_EN(1) |
+		       RKVDEC_SEGID_FRAME_QP_DELTA(feature_val);
+	}
+
+	feature_id = V4L2_VP9_SEGMENT_FEATURE_LF;
+	if (seg_featured_enabled(seg, feature_id, segid)) {
+		feature_val = seg->feature_data[segid][feature_id];
+		val |= RKVDEC_SEGID_FRAME_LOOPFILTER_VALUE_EN(1) |
+		       RKVDEC_SEGID_FRAME_LOOPFILTER_VALUE(feature_val);
+	}
+
+	feature_id = V4L2_VP9_SEGMENT_FEATURE_REF_FRAME;
+	if (seg_featured_enabled(seg, feature_id, segid)) {
+		feature_val = seg->feature_data[segid][feature_id];
+		val |= RKVDEC_SEGID_REFERINFO_EN(1) |
+		       RKVDEC_SEGID_REFERINFO(feature_val);
+	}
+
+	feature_id = V4L2_VP9_SEGMENT_FEATURE_SKIP;
+	if (seg_featured_enabled(seg, feature_id, segid))
+		val |= RKVDEC_SEGID_FRAME_SKIP_EN(1);
+
+	if (!segid &&
+	    (seg->flags & V4L2_VP9_SEGMENTATION_FLAG_ABS_OR_DELTA_UPDATE))
+		val |= RKVDEC_SEGID_ABS_DELTA(1);
+
+	writel_relaxed(val, rkvdec->regs + RKVDEC_VP9_SEGID_GRP(segid));
+}
+
+static void update_dec_buf_info(struct rkvdec_decoded_buffer *buf,
+				const struct v4l2_ctrl_vp9_frame_decode_params *dec_params)
+{
+	buf->vp9.width = dec_params->frame_width_minus_1 + 1;
+	buf->vp9.height = dec_params->frame_height_minus_1 + 1;
+	buf->vp9.bit_depth = dec_params->bit_depth;
+}
+
+static void update_ctx_cur_info(struct rkvdec_vp9_ctx *vp9_ctx,
+				struct rkvdec_decoded_buffer *buf,
+				const struct v4l2_ctrl_vp9_frame_decode_params *dec_params)
+{
+	vp9_ctx->cur.valid = true;
+	vp9_ctx->cur.reference_mode = dec_params->reference_mode;
+	vp9_ctx->cur.tx_mode = dec_params->tx_mode;
+	vp9_ctx->cur.interpolation_filter = dec_params->interpolation_filter;
+	vp9_ctx->cur.flags = dec_params->flags;
+	vp9_ctx->cur.timestamp = buf->base.vb.vb2_buf.timestamp;
+	vp9_ctx->cur.seg = dec_params->seg;
+	vp9_ctx->cur.lf = dec_params->lf;
+}
+
+static void update_ctx_last_info(struct rkvdec_vp9_ctx *vp9_ctx)
+{
+	vp9_ctx->last = vp9_ctx->cur;
+}
+
+static void config_registers(struct rkvdec_ctx *ctx,
+			     const struct rkvdec_vp9_run *run)
+{
+	u32 y_len, uv_len, yuv_len, bit_depth, aligned_height, aligned_pitch;
+	const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
+	struct rkvdec_decoded_buffer *ref_bufs[V4L2_REF_ID_CNT];
+	struct rkvdec_decoded_buffer *dst, *last, *mv_ref;
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	u32 val, stream_len, last_frame_info = 0;
+	const struct v4l2_vp9_segmentation *seg;
+	struct rkvdec_dev *rkvdec = ctx->dev;
+	dma_addr_t addr;
+	bool intra_only;
+	unsigned int i;
+
+	dec_params = run->decode_params;
+	dst = vb2_to_rkvdec_decoded_buf(&run->base.bufs.dst->vb2_buf);
+	for (i = 0; i < ARRAY_SIZE(ref_bufs); i++)
+		ref_bufs[i] = get_ref_buf(ctx, &dst->base.vb,
+					  dec_params->refs[i]);
+
+	if (vp9_ctx->last.valid)
+		last = get_ref_buf(ctx, &dst->base.vb, vp9_ctx->last.timestamp);
+	else
+		last = dst;
+
+	update_dec_buf_info(dst, dec_params);
+	update_ctx_cur_info(vp9_ctx, dst, dec_params);
+	seg = &dec_params->seg;
+
+	intra_only = !!(dec_params->flags &
+			(V4L2_VP9_FRAME_FLAG_KEY_FRAME |
+			 V4L2_VP9_FRAME_FLAG_INTRA_ONLY));
+
+	writel_relaxed(RKVDEC_MODE(RKVDEC_MODE_VP9),
+		       rkvdec->regs + RKVDEC_REG_SYSCTRL);
+
+	bit_depth = dec_params->bit_depth;
+	aligned_height = round_up(ctx->decoded_fmt.fmt.pix_mp.height, 64);
+
+	aligned_pitch = round_up(ctx->decoded_fmt.fmt.pix_mp.width *
+				 bit_depth,
+				 512) / 8;
+	y_len = aligned_height * aligned_pitch;
+	uv_len = y_len / 2;
+	yuv_len = y_len + uv_len;
+
+	writel_relaxed(RKVDEC_Y_HOR_VIRSTRIDE(aligned_pitch / 16) |
+		       RKVDEC_UV_HOR_VIRSTRIDE(aligned_pitch / 16),
+		       rkvdec->regs + RKVDEC_REG_PICPAR);
+	writel_relaxed(RKVDEC_Y_VIRSTRIDE(y_len / 16),
+		       rkvdec->regs + RKVDEC_REG_Y_VIRSTRIDE);
+	writel_relaxed(RKVDEC_YUV_VIRSTRIDE(yuv_len / 16),
+		       rkvdec->regs + RKVDEC_REG_YUV_VIRSTRIDE);
+
+	stream_len = vb2_get_plane_payload(&run->base.bufs.src->vb2_buf, 0);
+	writel_relaxed(RKVDEC_STRM_LEN(stream_len),
+		       rkvdec->regs + RKVDEC_REG_STRM_LEN);
+
+	/*
+	 * Reset count buffer, because decoder only output intra related syntax
+	 * counts when decoding intra frame, but update entropy need to update
+	 * all the probabilities.
+	 */
+	if (intra_only)
+		memset(vp9_ctx->count_tbl.cpu, 0, vp9_ctx->count_tbl.size);
+
+	vp9_ctx->cur.segmapid = vp9_ctx->last.segmapid;
+	if (!intra_only &&
+	    !(dec_params->flags & V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT) &&
+	    (!(seg->flags & V4L2_VP9_SEGMENTATION_FLAG_ENABLED) ||
+	     (seg->flags & V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP)))
+		vp9_ctx->cur.segmapid++;
+
+	for (i = 0; i < ARRAY_SIZE(ref_bufs); i++)
+		config_ref_registers(ctx, run, ref_bufs, i);
+
+	for (i = 0; i < 8; i++)
+		config_seg_registers(ctx, i);
+
+	writel_relaxed(RKVDEC_VP9_TX_MODE(dec_params->tx_mode) |
+		       RKVDEC_VP9_FRAME_REF_MODE(dec_params->reference_mode),
+		       rkvdec->regs + RKVDEC_VP9_CPRHEADER_CONFIG);
+
+	if (!intra_only) {
+		const struct v4l2_vp9_loop_filter *lf;
+		s8 delta;
+
+		if (vp9_ctx->last.valid)
+			lf = &vp9_ctx->last.lf;
+		else
+			lf = &vp9_ctx->cur.lf;
+
+		val = 0;
+		for (i = 0; i < ARRAY_SIZE(lf->ref_deltas); i++) {
+			delta = lf->ref_deltas[i];
+			val |= RKVDEC_REF_DELTAS_LASTFRAME(i, delta);
+		}
+
+		writel_relaxed(val,
+			       rkvdec->regs + RKVDEC_VP9_REF_DELTAS_LASTFRAME);
+
+		for (i = 0; i < ARRAY_SIZE(lf->mode_deltas); i++) {
+			delta = lf->mode_deltas[i];
+			last_frame_info |= RKVDEC_MODE_DELTAS_LASTFRAME(i,
+									delta);
+		}
+	}
+
+	if (vp9_ctx->last.valid && !intra_only &&
+	    vp9_ctx->last.seg.flags & V4L2_VP9_SEGMENTATION_FLAG_ENABLED)
+		last_frame_info |= RKVDEC_SEG_EN_LASTFRAME;
+
+	if (vp9_ctx->last.valid &&
+	    vp9_ctx->last.flags & V4L2_VP9_FRAME_FLAG_SHOW_FRAME)
+		last_frame_info |= RKVDEC_LAST_SHOW_FRAME;
+
+	if (vp9_ctx->last.valid &&
+	    vp9_ctx->last.flags &
+	    (V4L2_VP9_FRAME_FLAG_KEY_FRAME | V4L2_VP9_FRAME_FLAG_INTRA_ONLY))
+		last_frame_info |= RKVDEC_LAST_INTRA_ONLY;
+
+	if (vp9_ctx->last.valid &&
+	    last->vp9.width == dst->vp9.width &&
+	    last->vp9.height == dst->vp9.height)
+		last_frame_info |= RKVDEC_LAST_WIDHHEIGHT_EQCUR;
+
+	writel_relaxed(last_frame_info,
+		       rkvdec->regs + RKVDEC_VP9_INFO_LASTFRAME);
+
+	writel_relaxed(stream_len - dec_params->compressed_header_size -
+		       dec_params->uncompressed_header_size,
+		       rkvdec->regs + RKVDEC_VP9_LASTTILE_SIZE);
+
+	for (i = 0; !intra_only && i < ARRAY_SIZE(ref_bufs); i++) {
+		u32 refw = ref_bufs[i]->vp9.width;
+		u32 refh = ref_bufs[i]->vp9.height;
+		u32 hscale, vscale;
+
+		hscale = (refw << 14) /	dst->vp9.width;
+		vscale = (refh << 14) / dst->vp9.height;
+		writel_relaxed(RKVDEC_VP9_REF_HOR_SCALE(hscale) |
+			       RKVDEC_VP9_REF_VER_SCALE(vscale),
+			       rkvdec->regs + RKVDEC_VP9_REF_SCALE(i));
+	}
+
+	addr = vb2_dma_contig_plane_dma_addr(&dst->base.vb.vb2_buf, 0);
+	writel_relaxed(addr, rkvdec->regs + RKVDEC_REG_DECOUT_BASE);
+	addr = vb2_dma_contig_plane_dma_addr(&run->base.bufs.src->vb2_buf, 0);
+	writel_relaxed(addr, rkvdec->regs + RKVDEC_REG_STRM_RLC_BASE);
+	writel_relaxed(vp9_ctx->priv_tbl.dma +
+		       offsetof(struct rkvdec_vp9_priv_tbl, probs),
+		       rkvdec->regs + RKVDEC_REG_CABACTBL_PROB_BASE);
+	writel_relaxed(vp9_ctx->count_tbl.dma,
+		       rkvdec->regs + RKVDEC_REG_VP9COUNT_BASE);
+
+	writel_relaxed(vp9_ctx->priv_tbl.dma +
+		       offsetof(struct rkvdec_vp9_priv_tbl, segmap) +
+		       (RKVDEC_VP9_MAX_SEGMAP_SIZE * vp9_ctx->cur.segmapid),
+		       rkvdec->regs + RKVDEC_REG_VP9_SEGIDCUR_BASE);
+	writel_relaxed(vp9_ctx->priv_tbl.dma +
+		       offsetof(struct rkvdec_vp9_priv_tbl, segmap) +
+		       (RKVDEC_VP9_MAX_SEGMAP_SIZE * (!vp9_ctx->cur.segmapid)),
+		       rkvdec->regs + RKVDEC_REG_VP9_SEGIDLAST_BASE);
+
+	if (!intra_only &&
+	    !(dec_params->flags & V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT) &&
+	    vp9_ctx->last.valid)
+		mv_ref = last;
+	else
+		mv_ref = dst;
+
+	writel_relaxed(get_mv_base_addr(mv_ref),
+		       rkvdec->regs + RKVDEC_VP9_REF_COLMV_BASE);
+
+	writel_relaxed(ctx->decoded_fmt.fmt.pix_mp.width |
+		       (ctx->decoded_fmt.fmt.pix_mp.height << 16),
+		       rkvdec->regs + RKVDEC_REG_PERFORMANCE_CYCLE);
+}
+
+static int validate_dec_params(struct rkvdec_ctx *ctx,
+			       const struct v4l2_ctrl_vp9_frame_decode_params *dec_params)
+{
+	unsigned int aligned_width, aligned_height;
+
+	/* We only support profile 0. */
+	if (dec_params->profile != 0) {
+		dev_err(ctx->dev->dev, "unsupported profile %d\n",
+			dec_params->profile);
+		return -EINVAL;
+	}
+
+	aligned_width = round_up(dec_params->frame_width_minus_1 + 1, 64);
+	aligned_height = round_up(dec_params->frame_height_minus_1 + 1, 64);
+
+	/*
+	 * Userspace should update the capture/decoded format when the
+	 * resolution changes.
+	 */
+	if (aligned_width != ctx->decoded_fmt.fmt.pix_mp.width ||
+	    aligned_height != ctx->decoded_fmt.fmt.pix_mp.height) {
+		dev_err(ctx->dev->dev,
+			"unexpected bitstream resolution %dx%d\n",
+			dec_params->frame_width_minus_1 + 1,
+			dec_params->frame_height_minus_1 + 1);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/* 6.3.6 inv_recenter_nonneg(v, m) */
+static int inv_recenter_nonneg(int v, int m)
+{
+	if (v > 2 * m)
+		return v;
+
+	if (v & 1)
+		return m - ((v + 1) >> 1);
+
+	return m + (v >> 1);
+}
+
+/*
+ * part of 6.3.5 inv_remap_prob(deltaProb, prob)
+ * delta = inv_map_table[deltaProb] done by userspace
+ */
+static int update_prob(int delta, int prob)
+{
+	if (!delta)
+		return prob;
+
+	return prob <= 128 ?
+		1 + inv_recenter_nonneg(delta, prob - 1) :
+		255 - inv_recenter_nonneg(delta, 255 - prob);
+}
+
+/* Counterpart to 6.3.2 tx_mode_probs() */
+static void update_tx_probs(struct rkvdec_vp9_frame_context *probs,
+			    const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(probs->tx8); i++) {
+		u8 *p8x8 = probs->tx8[i];
+		u8 *p16x16 = probs->tx16[i];
+		u8 *p32x32 = probs->tx32[i];
+		const u8 *d8x8 = deltas->tx8[i];
+		const u8 *d16x16 = deltas->tx16[i];
+		const u8 *d32x32 = deltas->tx32[i];
+
+		p8x8[0] = update_prob(d8x8[0], p8x8[0]);
+		p16x16[0] = update_prob(d16x16[0], p16x16[0]);
+		p16x16[1] = update_prob(d16x16[1], p16x16[1]);
+		p32x32[0] = update_prob(d32x32[0], p32x32[0]);
+		p32x32[1] = update_prob(d32x32[1], p32x32[1]);
+		p32x32[2] = update_prob(d32x32[2], p32x32[2]);
+	}
+}
+
+#define BAND_6(band) ((band) == 0 ? 3 : 6)
+
+static void update_coeff(const u8 deltas[6][6][3], u8 probs[6][6][3])
+{
+	int l, m, n;
+
+	for (l = 0; l < 6; l++)
+		for (m = 0; m < BAND_6(l); m++) {
+			u8 *p = probs[l][m];
+			const u8 *d = deltas[l][m];
+
+			for (n = 0; n < 3; n++)
+				p[n] = update_prob(d[n], p[n]);
+		}
+}
+
+/* Counterpart to 6.3.7 read_coef_probs() */
+static void update_coef_probs(struct rkvdec_vp9_frame_context *probs,
+			      const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas,
+			      const struct v4l2_ctrl_vp9_frame_decode_params *dec_params)
+{
+	int i, j, k;
+
+	for (i = 0; i < ARRAY_SIZE(probs->coef); i++) {
+		for (j = 0; j < ARRAY_SIZE(probs->coef[0]); j++)
+			for (k = 0; k < ARRAY_SIZE(probs->coef[0][0]); k++)
+				update_coeff(deltas->coef[i][j][k], probs->coef[i][j][k]);
+
+		if (dec_params->tx_mode == i)
+			break;
+	}
+}
+
+/* Counterpart to 6.3.8 read_skip_prob() */
+static void update_skip_probs(struct rkvdec_vp9_frame_context *probs,
+			      const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(probs->skip); i++)
+		probs->skip[i] = update_prob(deltas->skip[i], probs->skip[i]);
+}
+
+/* Counterpart to 6.3.9 read_inter_mode_probs() */
+static void update_inter_mode_probs(struct rkvdec_vp9_frame_context *probs,
+				    const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(probs->inter_mode); i++) {
+		u8 *p = probs->inter_mode[i];
+		const u8 *d = deltas->inter_mode[i];
+
+		p[0] = update_prob(d[0], p[0]);
+		p[1] = update_prob(d[1], p[1]);
+		p[2] = update_prob(d[2], p[2]);
+	}
+}
+
+/* Counterpart to 6.3.10 read_interp_filter_probs() */
+static void update_interp_filter_probs(struct rkvdec_vp9_frame_context *probs,
+				       const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(probs->interp_filter); i++) {
+		u8 *p = probs->interp_filter[i];
+		const u8 *d = deltas->interp_filter[i];
+
+		p[0] = update_prob(d[0], p[0]);
+		p[1] = update_prob(d[1], p[1]);
+	}
+}
+
+/* Counterpart to 6.3.11 read_is_inter_probs() */
+static void update_is_inter_probs(struct rkvdec_vp9_frame_context *probs,
+				  const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(probs->is_inter); i++)
+		probs->is_inter[i] = update_prob(deltas->is_inter[i], probs->is_inter[i]);
+}
+
+/* 6.3.12 frame_reference_mode() done entirely in userspace */
+
+/* Counterpart to 6.3.13 frame_reference_mode_probs() */
+static void
+update_frame_reference_mode_probs(enum v4l2_vp9_reference_mode reference_mode,
+				  struct rkvdec_vp9_frame_context *probs,
+				  const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas)
+{
+	int i;
+
+	if (reference_mode == V4L2_VP9_REF_MODE_SELECT)
+		for (i = 0; i < ARRAY_SIZE(probs->comp_mode); i++)
+			probs->comp_mode[i] = update_prob(deltas->comp_mode[i],
+							  probs->comp_mode[i]);
+
+	if (reference_mode != V4L2_VP9_REF_MODE_COMPOUND)
+		for (i = 0; i < ARRAY_SIZE(probs->single_ref); i++) {
+			u8 *p = probs->single_ref[i];
+			const u8 *d = deltas->single_ref[i];
+
+			p[0] = update_prob(d[0], p[0]);
+			p[1] = update_prob(d[1], p[1]);
+		}
+
+	if (reference_mode != V4L2_VP9_REF_MODE_SINGLE)
+		for (i = 0; i < ARRAY_SIZE(probs->comp_ref); i++)
+			probs->comp_ref[i] = update_prob(deltas->comp_ref[i], probs->comp_ref[i]);
+}
+
+/* Counterpart to 6.3.14 read_y_mode_probs() */
+static void update_y_mode_probs(struct rkvdec_vp9_frame_context *probs,
+				const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas)
+{
+	int i, j;
+
+	for (i = 0; i < ARRAY_SIZE(probs->y_mode); i++)
+		for (j = 0; j < ARRAY_SIZE(probs->y_mode[0]); ++j)
+			probs->y_mode[i][j] =
+				update_prob(deltas->y_mode[i][j], probs->y_mode[i][j]);
+}
+
+/* Counterpart to 6.3.15 read_partition_probs() */
+static void update_partition_probs(struct rkvdec_vp9_frame_context *probs,
+				   const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas)
+{
+	int i, j;
+
+	for (i = 0; i < 4; i++)
+		for (j = 0; j < 4; j++) {
+			u8 *p = probs->partition[i * 4 + j];
+			const u8 *d = deltas->partition[i * 4 + j];
+
+			p[0] = update_prob(d[0], p[0]);
+			p[1] = update_prob(d[1], p[1]);
+			p[2] = update_prob(d[2], p[2]);
+		}
+}
+
+static inline int update_mv_prob(int delta, int prob)
+{
+	if (!delta)
+		return prob;
+
+	return delta;
+}
+
+/* Counterpart to 6.3.16 mv_probs() */
+static void update_mv_probs(struct rkvdec_vp9_frame_context *probs,
+			    const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas,
+			    const struct v4l2_ctrl_vp9_frame_decode_params *dec_params)
+{
+	u8 *p = probs->mv.joint;
+	const u8 *d = deltas->mv.joint;
+	unsigned int i, j;
+
+	p[0] = update_mv_prob(d[0], p[0]);
+	p[1] = update_mv_prob(d[1], p[1]);
+	p[2] = update_mv_prob(d[2], p[2]);
+
+	for (i = 0; i < ARRAY_SIZE(probs->mv.sign); i++) {
+		p = probs->mv.sign;
+		d = deltas->mv.sign;
+		p[i] = update_mv_prob(d[i], p[i]);
+
+		p = probs->mv.class[i];
+		d = deltas->mv.class[i];
+		for (j = 0; j < ARRAY_SIZE(probs->mv.class[0]); j++)
+			p[j] = update_mv_prob(d[j], p[j]);
+
+		p = probs->mv.class0_bit;
+		d = deltas->mv.class0_bit;
+		p[i] = update_mv_prob(d[i], p[i]);
+
+		p = probs->mv.bits[i];
+		d = deltas->mv.bits[i];
+		for (j = 0; j < ARRAY_SIZE(probs->mv.bits[0]); j++)
+			p[j] = update_mv_prob(d[j], p[j]);
+
+		for (j = 0; j < ARRAY_SIZE(probs->mv.class0_fr[0]); j++) {
+			p = probs->mv.class0_fr[i][j];
+			d = deltas->mv.class0_fr[i][j];
+
+			p[0] = update_mv_prob(d[0], p[0]);
+			p[1] = update_mv_prob(d[1], p[1]);
+			p[2] = update_mv_prob(d[2], p[2]);
+		}
+
+		p = probs->mv.fr[i];
+		d = deltas->mv.fr[i];
+		for (j = 0; j < ARRAY_SIZE(probs->mv.fr[i]); j++)
+			p[j] = update_mv_prob(d[j], p[j]);
+
+		if (dec_params->flags & V4L2_VP9_FRAME_FLAG_ALLOW_HIGH_PREC_MV) {
+			p = probs->mv.class0_hp;
+			d = deltas->mv.class0_hp;
+			p[i] = update_mv_prob(d[i], p[i]);
+
+			p = probs->mv.hp;
+			d = deltas->mv.hp;
+			p[i] = update_mv_prob(d[i], p[i]);
+		}
+	}
+}
+
+/* Counterpart to 6.3 compressed_header(), but parsing has been done in userspace. */
+static void fw_update_probs(struct rkvdec_vp9_frame_context *probs,
+			    const struct v4l2_ctrl_vp9_compressed_hdr_probs *deltas,
+			    const struct v4l2_ctrl_vp9_frame_decode_params *dec_params)
+{
+	if (dec_params->tx_mode == V4L2_VP9_TX_MODE_SELECT)
+		update_tx_probs(probs, deltas);
+
+	update_coef_probs(probs, deltas, dec_params);
+
+	update_skip_probs(probs, deltas);
+
+	if (dec_params->flags & V4L2_VP9_FRAME_FLAG_KEY_FRAME ||
+	    dec_params->flags & V4L2_VP9_FRAME_FLAG_INTRA_ONLY)
+		return;
+
+	update_inter_mode_probs(probs, deltas);
+
+	if (dec_params->interpolation_filter == V4L2_VP9_INTERP_FILTER_SWITCHABLE)
+		update_interp_filter_probs(probs, deltas);
+
+	update_is_inter_probs(probs, deltas);
+
+	update_frame_reference_mode_probs(dec_params->reference_mode, probs, deltas);
+
+	update_y_mode_probs(probs, deltas);
+
+	update_partition_probs(probs, deltas);
+
+	update_mv_probs(probs, deltas, dec_params);
+}
+
+static int rkvdec_vp9_run_preamble(struct rkvdec_ctx *ctx,
+				   struct rkvdec_vp9_run *run)
+{
+	const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
+	const struct v4l2_ctrl_vp9_compressed_hdr_probs *prob_updates;
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	struct v4l2_ctrl *ctrl;
+	u8 fctx_idx;
+	int ret, i;
+
+	/* v4l2-specific stuff */
+	rkvdec_run_preamble(ctx, &run->base);
+
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
+			      V4L2_CID_STATELESS_VP9_FRAME_DECODE_PARAMS);
+	WARN_ON(!ctrl);
+
+	dec_params = ctrl ? ctrl->p_cur.p : NULL;
+	if (WARN_ON(!dec_params))
+		return -EINVAL;
+
+	ret = validate_dec_params(ctx, dec_params);
+	if (ret)
+		return ret;
+
+	run->decode_params = dec_params;
+
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl, V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS);
+	WARN_ON(!ctrl);
+
+	prob_updates = ctrl->p_cur.p;
+	if (WARN_ON(!prob_updates))
+		return -EINVAL;
+
+	/*
+	 * vp9 stuff
+	 *
+	 * by this point the userspace has done all parts of 6.2 uncompressed_header()
+	 * except this fragment:
+	 * if ( FrameIsIntra || error_resilient_mode ) {
+	 *	setup_past_independence ( )
+	 *	if ( frame_type == KEY_FRAME || error_resilient_mode == 1 ||
+	 *	     reset_frame_context == 3 ) {
+	 *		for ( i = 0; i < 4; i ++ ) {
+	 *			save_probs( i )
+	 *		}
+	 *	} else if ( reset_frame_context == 2 ) {
+	 *		save_probs( frame_context_idx )
+	 *	}
+	 *	frame_context_idx = 0
+	 * }
+	 */
+	fctx_idx = run->decode_params->frame_context_idx;
+	vp9_ctx->cur.frame_context_idx = run->decode_params->frame_context_idx;
+
+	if (dec_params->flags & V4L2_VP9_FRAME_FLAG_KEY_FRAME ||
+	    dec_params->flags & V4L2_VP9_FRAME_FLAG_INTRA_ONLY ||
+	    dec_params->flags & V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT) {
+		/*
+		 * setup_past_independence()
+		 * We do nothing here. Instead of storing default probs in some intermediate
+		 * location and then copying from that location to appropriate contexts
+		 * in save_probs() below, we skip that step and save default probs directly
+		 * to appropriate contexts.
+		 */
+		if (dec_params->flags & V4L2_VP9_FRAME_FLAG_KEY_FRAME ||
+		    dec_params->flags & V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT ||
+		    dec_params->reset_frame_context == V4L2_VP9_RESET_FRAME_CTX_ALL)
+			for (i = 0; i < ARRAY_SIZE(vp9_ctx->frame_context); ++i)
+				/* save_probs(i) */
+				memcpy(&vp9_ctx->frame_context[i],
+				       &vp9_default_probs, sizeof(vp9_default_probs));
+		else if (dec_params->reset_frame_context == V4L2_VP9_RESET_FRAME_CTX_SPEC)
+			/* save_probs(fctx_idx) */
+			memcpy(&vp9_ctx->frame_context[fctx_idx],
+			       &vp9_default_probs, sizeof(vp9_default_probs));
+		fctx_idx = 0;
+		vp9_ctx->cur.frame_context_idx = 0;
+	}
+
+	/* 6.1 frame(sz): load_probs() and load_probs2() */
+	vp9_ctx->probability_tables = vp9_ctx->frame_context[fctx_idx];
+
+	/*
+	 * The userspace has also performed 6.3 compressed_header(), but handling the
+	 * probs in a special way. All probs which need updating, except MV-related,
+	 * have been read from the bitstream and translated through inv_map_table[],
+	 * but no 6.3.6 inv_recenter_nonneg(v, m) has been performed. The values passed
+	 * by userspace are either translated values (there are no 0 values in
+	 * inv_map_table[]), or zero to indicate no update. All MV-related probs which need
+	 * updating have been read from the bitstream and (mv_prob << 1) | 1 has been
+	 * performed. The values passed by userspace are either new values
+	 * to replace old ones (the above mentioned shift and bitwise or never result in
+	 * a zero) or zero to indicate no update.
+	 * fw_update_probs() performs actual probs updates or leaves probs as-is
+	 * for values for which a zero was passed from userspace.
+	 */
+	fw_update_probs(&vp9_ctx->probability_tables, prob_updates, dec_params);
+
+	return 0;
+}
+
+static int rkvdec_vp9_run(struct rkvdec_ctx *ctx)
+{
+	struct rkvdec_dev *rkvdec = ctx->dev;
+	struct rkvdec_vp9_run run = { };
+	int ret;
+
+	ret = rkvdec_vp9_run_preamble(ctx, &run);
+	if (ret) {
+		rkvdec_run_postamble(ctx, &run.base);
+		return ret;
+	}
+
+	/* Prepare probs. */
+	init_probs(ctx, &run);
+
+	/* Configure hardware registers. */
+	config_registers(ctx, &run);
+
+	rkvdec_run_postamble(ctx, &run.base);
+
+	schedule_delayed_work(&rkvdec->watchdog_work, msecs_to_jiffies(2000));
+
+	writel(1, rkvdec->regs + RKVDEC_REG_PREF_LUMA_CACHE_COMMAND);
+	writel(1, rkvdec->regs + RKVDEC_REG_PREF_CHR_CACHE_COMMAND);
+
+	writel(0xe, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
+	/* Start decoding! */
+	writel(RKVDEC_INTERRUPT_DEC_E | RKVDEC_CONFIG_DEC_CLK_GATE_E |
+	       RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E,
+	       rkvdec->regs + RKVDEC_REG_INTERRUPT);
+
+	return 0;
+}
+
+/* 8.4.1 Merge prob process */
+static u8 merge_prob(u8 pre_prob, u32 ct0, u32 ct1, u16 count_sat, u32 max_update_factor)
+{
+	u32 den, prob, count, factor;
+
+	den = ct0 + ct1;
+	if (!den) {
+		/*
+		 * prob = 128, count = 0, update_factor = 0
+		 * Round2's argument: pre_prob * 256
+		 * (pre_prob * 256 + 128) >> 8 == pre_prob
+		 */
+		return pre_prob;
+	}
+
+	prob = clamp(((ct0 << 8) + (den >> 1)) / den, (u32)1, (u32)255);
+	count = min_t(u32, den, count_sat);
+	factor = rkvdec_fastdiv(max_update_factor * count, count_sat);
+
+	/*
+	 * Round2(pre_prob * (256 - factor) + prob * factor, 8)
+	 * Round2(pre_prob * 256 + (prob - pre_prob) * factor, 8)
+	 * (pre_prob * 256 >> 8) + (((prob - pre_prob) * factor + 128) >> 8)
+	 */
+	return pre_prob + (((prob - pre_prob) * factor + 128) >> 8);
+}
+
+static inline u8 noncoef_merge_prob(u8 pre_prob, u32 ct0, u32 ct1)
+{
+	return merge_prob(pre_prob, ct0, ct1, 20, 128);
+}
+
+/* 8.4.2 Merge probs process */
+/*
+ * merge_probs() is a recursive function in the spec. We avoid recursion in the kernel.
+ * That said, the "tree" parameter of merge_probs() controls how deep the recursion goes.
+ * It turns out that in all cases the recursive calls boil down to a short-ish series
+ * of merge_prob() invocations (note no "s").
+ *
+ * Variant A
+ * ---------
+ * merge_probs(small_token_tree, 2):
+ *	merge_prob(p[1], c[0], c[1] + c[2])
+ *	merge_prob(p[2], c[1], c[2])
+ *
+ * Variant B
+ * ---------
+ * merge_probs(binary_tree, 0) or
+ * merge_probs(tx_size_8_tree, 0):
+ *	merge_prob(p[0], c[0], c[1])
+ *
+ * Variant C
+ * ---------
+ * merge_probs(inter_mode_tree, 0):
+ *	merge_prob(p[0], c[2], c[1] + c[0] + c[3])
+ *	merge_prob(p[1], c[0], c[1] + c[3])
+ *	merge_prob(p[2], c[1], c[3])
+ *
+ * Variant D
+ * ---------
+ * merge_probs(intra_mode_tree, 0):
+ *	merge_prob(p[0], c[0], c[1] + ... + c[9])
+ *	merge_prob(p[1], c[9], c[1] + ... + c[8])
+ *	merge_prob(p[2], c[1], c[2] + ... + c[8])
+ *	merge_prob(p[3], c[2] + c[4] + c[5], c[3] + c[8] + c[6] + c[7])
+ *	merge_prob(p[4], c[2], c[4] + c[5])
+ *	merge_prob(p[5], c[4], c[5])
+ *	merge_prob(p[6], c[3], c[8] + c[6] + c[7])
+ *	merge_prob(p[7], c[8], c[6] + c[7])
+ *	merge_prob(p[8], c[6], c[7])
+ *
+ * Variant E
+ * ---------
+ * merge_probs(partition_tree, 0) or
+ * merge_probs(tx_size_32_tree, 0) or
+ * merge_probs(mv_joint_tree, 0) or
+ * merge_probs(mv_fr_tree, 0):
+ *	merge_prob(p[0], c[0], c[1] + c[2] + c[3])
+ *	merge_prob(p[1], c[1], c[2] + c[3])
+ *	merge_prob(p[2], c[2], c[3])
+ *
+ * Variant F
+ * ---------
+ * merge_probs(interp_filter_tree, 0) or
+ * merge_probs(tx_size_16_tree, 0):
+ *	merge_prob(p[0], c[0], c[1] + c[2])
+ *	merge_prob(p[1], c[1], c[2])
+ *
+ * Variant G
+ * ---------
+ * merge_probs(mv_class_tree, 0):
+ *	merge_prob(p[0], c[0], c[1] + ... + c[10])
+ *	merge_prob(p[1], c[1], c[2] + ... + c[10])
+ *	merge_prob(p[2], c[2] + c[3], c[4] + ... + c[10])
+ *	merge_prob(p[3], c[2], c[3])
+ *	merge_prob(p[4], c[4] + c[5], c[6] + ... + c[10])
+ *	merge_prob(p[5], c[4], c[5])
+ *	merge_prob(p[6], c[6], c[7] + ... + c[10])
+ *	merge_prob(p[7], c[7] + c[8], c[9] + c[10])
+ *	merge_prob(p[8], c[7], c[8])
+ *	merge_prob(p[9], c[9], [10])
+ */
+
+static inline void merge_probs_variant_a(u8 *p, const u32 *c, u16 count_sat, u32 update_factor)
+{
+	p[1] = merge_prob(p[1], c[0], c[1] + c[2], count_sat, update_factor);
+	p[2] = merge_prob(p[2], c[1], c[2], count_sat, update_factor);
+}
+
+static inline void merge_probs_variant_b(u8 *p, const u32 *c, u16 count_sat, u32 update_factor)
+{
+	p[0] = merge_prob(p[0], c[0], c[1], count_sat, update_factor);
+}
+
+static inline void merge_probs_variant_c(u8 *p, const u32 *c)
+{
+	p[0] = noncoef_merge_prob(p[0], c[2], c[1] + c[0] + c[3]);
+	p[1] = noncoef_merge_prob(p[1], c[0], c[1] + c[3]);
+	p[2] = noncoef_merge_prob(p[2], c[1], c[3]);
+}
+
+static void merge_probs_variant_d(u8 *p, const u32 *c)
+{
+	u32 sum = 0, s2;
+
+	sum = c[1] + c[2] + c[3] + c[4] + c[5] + c[6] + c[7] + c[8] + c[9];
+
+	p[0] = noncoef_merge_prob(p[0], c[0], sum);
+	sum -= c[9];
+	p[1] = noncoef_merge_prob(p[1], c[9], sum);
+	sum -= c[1];
+	p[2] = noncoef_merge_prob(p[2], c[1], sum);
+	s2 = c[2] + c[4] + c[5];
+	sum -= s2;
+	p[3] = noncoef_merge_prob(p[3], s2, sum);
+	s2 -= c[2];
+	p[4] = noncoef_merge_prob(p[4], c[2], s2);
+	p[5] = noncoef_merge_prob(p[5], c[4], c[5]);
+	sum -= c[3];
+	p[6] = noncoef_merge_prob(p[6], c[3], sum);
+	sum -= c[8];
+	p[7] = noncoef_merge_prob(p[7], c[8], sum);
+	p[8] = noncoef_merge_prob(p[8], c[6], c[7]);
+}
+
+static inline void merge_probs_variant_e(u8 *p, const u32 *c)
+{
+	p[0] = noncoef_merge_prob(p[0], c[0], c[1] + c[2] + c[3]);
+	p[1] = noncoef_merge_prob(p[1], c[1], c[2] + c[3]);
+	p[2] = noncoef_merge_prob(p[2], c[2], c[3]);
+}
+
+static inline void merge_probs_variant_f(u8 *p, const u32 *c)
+{
+	p[0] = noncoef_merge_prob(p[0], c[0], c[1] + c[2]);
+	p[1] = noncoef_merge_prob(p[1], c[1], c[2]);
+}
+
+static void merge_probs_variant_g(u8 *p, const u32 *c)
+{
+	u32 sum;
+
+	sum = c[1] + c[2] + c[3] + c[4] + c[5] + c[6] + c[7] + c[8] + c[9] + c[10];
+	p[0] = noncoef_merge_prob(p[0], c[0], sum);
+	sum -= c[1];
+	p[1] = noncoef_merge_prob(p[1], c[1], sum);
+	sum -= c[2] + c[3];
+	p[2] = noncoef_merge_prob(p[2], c[2] + c[3], sum);
+	p[3] = noncoef_merge_prob(p[3], c[2], c[3]);
+	sum -= c[4] + c[5];
+	p[4] = noncoef_merge_prob(p[4], c[4] + c[5], sum);
+	p[5] = noncoef_merge_prob(p[5], c[4], c[5]);
+	sum -= c[6];
+	p[6] = noncoef_merge_prob(p[6], c[6], sum);
+	p[7] = noncoef_merge_prob(p[7], c[7] + c[8], c[9] + c[10]);
+	p[8] = noncoef_merge_prob(p[8], c[7], c[8]);
+	p[9] = noncoef_merge_prob(p[9], c[9], c[10]);
+}
+
+/* 8.4.3 Coefficient probability adaptation process */
+static inline void adapt_probs_variant_a_coef(u8 *p, const u32 *c, u32 update_factor)
+{
+	merge_probs_variant_a(p, c, 24, update_factor);
+}
+
+static inline void adapt_probs_variant_b_coef(u8 *p, const u32 *c, u32 update_factor)
+{
+	merge_probs_variant_b(p, c, 24, update_factor);
+}
+
+static void _adapt_coeff(u8 coef[6][6][3],
+			 const struct rkvdec_vp9_refs_counts ref_cnt[6][6],
+			 u32 uf)
+{
+	s32 l, m;
+
+	for (l = 0; l < 6; l++) {
+		for (m = 0; m < BAND_6(l); m++) {
+			u8 *p = coef[l][m];
+			const u32 counts_more_coefs[2] = {
+				ref_cnt[l][m].eob[1],
+				ref_cnt[l][m].eob[0] - ref_cnt[l][m].eob[1],
+			};
+
+			adapt_probs_variant_a_coef(p, ref_cnt[l][m].coeff, uf);
+			adapt_probs_variant_b_coef(p, counts_more_coefs, uf);
+		}
+	}
+}
+
+static void _adapt_coef_probs(struct rkvdec_vp9_frame_context *probs,
+			      const struct rkvdec_vp9_refs_counts ref_cnt[2][4][2][6][6],
+			      unsigned int uf)
+{
+	unsigned int i, j, k;
+
+	for (i = 0; i < ARRAY_SIZE(probs->coef); i++)
+		for (j = 0; j < ARRAY_SIZE(probs->coef[0]); j++)
+			for (k = 0; k < ARRAY_SIZE(probs->coef[0][0]); k++)
+				_adapt_coeff(probs->coef[i][j][k], ref_cnt[k][i][j], uf);
+}
+
+static void adapt_coef_probs(struct rkvdec_vp9_frame_context *probs,
+			     struct rkvdec_aux_buf *count_tbl,
+			     struct rkvdec_vp9_frame_info *last,
+			     bool frame_is_intra)
+{
+	if (frame_is_intra) {
+		const struct rkvdec_vp9_intra_frame_symbol_counts *sym_cnts;
+
+		sym_cnts = count_tbl->cpu;
+		_adapt_coef_probs(probs, sym_cnts->ref_cnt, 112);
+	} else {
+		const struct rkvdec_vp9_inter_frame_symbol_counts *sym_cnts;
+
+		sym_cnts = count_tbl->cpu;
+		if (last->valid &&
+		    !(last->flags & V4L2_VP9_FRAME_FLAG_KEY_FRAME))
+			_adapt_coef_probs(probs, sym_cnts->ref_cnt, 112);
+		else
+			_adapt_coef_probs(probs, sym_cnts->ref_cnt, 128);
+	}
+}
+
+/* 8.4.4 Non coefficient probability adaptation process, adapt_probs() */
+static inline void adapt_probs_variant_b(u8 *p, const u32 *c)
+{
+	merge_probs_variant_b(p, c, 20, 128);
+}
+
+static inline void adapt_probs_variant_c(u8 *p, const u32 *c)
+{
+	merge_probs_variant_c(p, c);
+}
+
+static inline void adapt_probs_variant_d(u8 *p, const u32 *c)
+{
+	merge_probs_variant_d(p, c);
+}
+
+static inline void adapt_probs_variant_e(u8 *p, const u32 *c)
+{
+	merge_probs_variant_e(p, c);
+}
+
+static inline void adapt_probs_variant_f(u8 *p, const u32 *c)
+{
+	merge_probs_variant_f(p, c);
+}
+
+static inline void adapt_probs_variant_g(u8 *p, const u32 *c)
+{
+	merge_probs_variant_g(p, c);
+}
+
+/* 8.4.4 Non coefficient probability adaptation process, adapt_prob() */
+static inline u8 adapt_prob(u8 prob, const u32 counts[2])
+{
+	return noncoef_merge_prob(prob, counts[0], counts[1]);
+}
+
+/* 8.4.4 Non coefficient probability adaptation process */
+static void adapt_noncoef_probs(struct rkvdec_ctx *ctx)
+{
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	struct rkvdec_vp9_frame_context *probs = &vp9_ctx->probability_tables;
+	const struct rkvdec_vp9_inter_frame_symbol_counts *sym_cnts;
+	unsigned int i, j;
+
+	sym_cnts = vp9_ctx->count_tbl.cpu;
+
+	for (i = 0; i < ARRAY_SIZE(probs->is_inter); i++)
+		probs->is_inter[i] = adapt_prob(probs->is_inter[i], sym_cnts->inter[i]);
+
+	for (i = 0; i < ARRAY_SIZE(probs->comp_mode); i++)
+		probs->comp_mode[i] = adapt_prob(probs->comp_mode[i], sym_cnts->comp[i]);
+
+	for (i = 0; i < ARRAY_SIZE(probs->comp_ref); i++)
+		probs->comp_ref[i] = adapt_prob(probs->comp_ref[i], sym_cnts->comp_ref[i]);
+
+	if (vp9_ctx->cur.reference_mode != V4L2_VP9_REF_MODE_COMPOUND)
+		for (i = 0; i < ARRAY_SIZE(probs->single_ref); i++)
+			for (j = 0; j < ARRAY_SIZE(probs->single_ref[0]); j++)
+				probs->single_ref[i][j] = adapt_prob(probs->single_ref[i][j],
+								     sym_cnts->single_ref[i][j]);
+
+	for (i = 0; i < ARRAY_SIZE(probs->inter_mode); i++)
+		adapt_probs_variant_c(probs->inter_mode[i], sym_cnts->mv_mode[i]);
+
+	for (i = 0; i < ARRAY_SIZE(probs->y_mode); i++)
+		adapt_probs_variant_d(probs->y_mode[i], sym_cnts->y_mode[i]);
+
+	for (i = 0; i < ARRAY_SIZE(probs->uv_mode); i++)
+		adapt_probs_variant_d(probs->uv_mode[i], sym_cnts->uv_mode[i]);
+
+	for (i = 0; i < ARRAY_SIZE(probs->partition); i++)
+		adapt_probs_variant_e(probs->partition[i], sym_cnts->partition[i]);
+
+	for (i = 0; i < ARRAY_SIZE(probs->skip); i++)
+		probs->skip[i] = adapt_prob(probs->skip[i], sym_cnts->skip[i]);
+
+	if (vp9_ctx->cur.interpolation_filter == V4L2_VP9_INTERP_FILTER_SWITCHABLE)
+		for (i = 0; i < ARRAY_SIZE(probs->interp_filter); i++)
+			adapt_probs_variant_f(probs->interp_filter[i], sym_cnts->filter[i]);
+
+	if (vp9_ctx->cur.tx_mode == V4L2_VP9_TX_MODE_SELECT)
+		for (i = 0; i < ARRAY_SIZE(probs->tx8); i++) {
+			adapt_probs_variant_b(probs->tx8[i], sym_cnts->tx8p[i]);
+			adapt_probs_variant_f(probs->tx16[i], sym_cnts->tx16p[i]);
+			adapt_probs_variant_e(probs->tx32[i], sym_cnts->tx32p[i]);
+		}
+
+	adapt_probs_variant_e(probs->mv.joint, sym_cnts->mv_joint);
+
+	for (i = 0; i < ARRAY_SIZE(probs->mv.sign); i++) {
+		probs->mv.sign[i] = adapt_prob(probs->mv.sign[i], sym_cnts->sign[i]);
+
+		adapt_probs_variant_g(probs->mv.class[i], sym_cnts->classes[i]);
+
+		probs->mv.class0_bit[i] = adapt_prob(probs->mv.class0_bit[i], sym_cnts->class0[i]);
+
+		for (j = 0; j < ARRAY_SIZE(probs->mv.bits[0]); j++)
+			probs->mv.bits[i][j] = adapt_prob(probs->mv.bits[i][j],
+							  sym_cnts->bits[i][j]);
+
+		for (j = 0; j < ARRAY_SIZE(probs->mv.class0_fr[0]); j++)
+			adapt_probs_variant_e(probs->mv.class0_fr[i][j],
+					      sym_cnts->class0_fp[i][j]);
+
+		adapt_probs_variant_e(probs->mv.fr[i], sym_cnts->fp[i]);
+
+		if (!(vp9_ctx->cur.flags & V4L2_VP9_FRAME_FLAG_ALLOW_HIGH_PREC_MV))
+			continue;
+
+		probs->mv.class0_hp[i] = adapt_prob(probs->mv.class0_hp[i],
+						    sym_cnts->class0_hp[i]);
+
+		probs->mv.hp[i] = adapt_prob(probs->mv.hp[i], sym_cnts->hp[i]);
+	}
+}
+
+#define copy_tx_and_skip(p1, p2)				\
+do {								\
+	memcpy((p1)->tx8, (p2)->tx8, sizeof((p1)->tx8));	\
+	memcpy((p1)->tx16, (p2)->tx16, sizeof((p1)->tx16));	\
+	memcpy((p1)->tx32, (p2)->tx32, sizeof((p1)->tx32));	\
+	memcpy((p1)->skip, (p2)->skip, sizeof((p1)->skip));	\
+} while (0)
+
+static void rkvdec_vp9_done(struct rkvdec_ctx *ctx,
+			    struct vb2_v4l2_buffer *src_buf,
+			    struct vb2_v4l2_buffer *dst_buf,
+			    enum vb2_buffer_state result)
+{
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	unsigned int fctx_idx;
+
+	/* v4l2-specific stuff */
+	if (result == VB2_BUF_STATE_ERROR)
+		goto out_update_last;
+
+	/*
+	 * vp9 stuff
+	 *
+	 * 6.1.2 refresh_probs()
+	 *
+	 * In the spec a complementary condition goes last in 6.1.2 refresh_probs(),
+	 * but it makes no sense to perform all the activities from the first "if"
+	 * there if we actually are not refreshing the frame context. On top of that,
+	 * because of 6.2 uncompressed_header() whenever error_resilient_mode == 1,
+	 * refresh_frame_context == 0. Consequently, if we don't jump to out_update_last
+	 * it means error_resilient_mode must be 0.
+	 */
+	if (!(vp9_ctx->cur.flags & V4L2_VP9_FRAME_FLAG_REFRESH_FRAME_CTX))
+		goto out_update_last;
+
+	fctx_idx = vp9_ctx->cur.frame_context_idx;
+
+	if (!(vp9_ctx->cur.flags & V4L2_VP9_FRAME_FLAG_PARALLEL_DEC_MODE)) {
+		/* error_resilient_mode == 0 && frame_parallel_decoding_mode == 0 */
+		struct rkvdec_vp9_frame_context *probs = &vp9_ctx->probability_tables;
+		bool frame_is_intra = vp9_ctx->cur.flags &
+		    (V4L2_VP9_FRAME_FLAG_KEY_FRAME | V4L2_VP9_FRAME_FLAG_INTRA_ONLY);
+		struct tx_and_skip {
+			u8 tx8[2][1];
+			u8 tx16[2][2];
+			u8 tx32[2][3];
+			u8 skip[3];
+		} _tx_skip, *tx_skip = &_tx_skip;
+
+		/* buffer the forward-updated TX and skip probs */
+		if (frame_is_intra)
+			copy_tx_and_skip(tx_skip, probs);
+
+		/* 6.1.2 refresh_probs(): load_probs() and load_probs2() */
+		*probs = vp9_ctx->frame_context[fctx_idx];
+
+		/* if FrameIsIntra then undo the effect of load_probs2() */
+		if (frame_is_intra)
+			copy_tx_and_skip(probs, tx_skip);
+
+		adapt_coef_probs(probs, &vp9_ctx->count_tbl, &vp9_ctx->last, frame_is_intra);
+		if (!frame_is_intra) {
+			/* load_probs2() already done */
+			adapt_noncoef_probs(ctx);
+		}
+	}
+
+	/* 6.1.2 refresh_probs(): save_probs(fctx_idx) */
+	vp9_ctx->frame_context[fctx_idx] = vp9_ctx->probability_tables;
+
+out_update_last:
+	update_ctx_last_info(vp9_ctx);
+}
+
+static int rkvdec_vp9_start(struct rkvdec_ctx *ctx)
+{
+	struct rkvdec_dev *rkvdec = ctx->dev;
+	struct rkvdec_vp9_priv_tbl *priv_tbl;
+	struct rkvdec_vp9_ctx *vp9_ctx;
+	u8 *count_tbl;
+	int ret;
+
+	vp9_ctx = kzalloc(sizeof(*vp9_ctx), GFP_KERNEL);
+	if (!vp9_ctx)
+		return -ENOMEM;
+
+	ctx->priv = vp9_ctx;
+
+	priv_tbl = dma_alloc_coherent(rkvdec->dev, sizeof(*priv_tbl),
+				      &vp9_ctx->priv_tbl.dma, GFP_KERNEL);
+	if (!priv_tbl) {
+		ret = -ENOMEM;
+		goto err_free_ctx;
+	}
+
+	vp9_ctx->priv_tbl.size = sizeof(*priv_tbl);
+	vp9_ctx->priv_tbl.cpu = priv_tbl;
+	memset(priv_tbl, 0, sizeof(*priv_tbl));
+
+	count_tbl = dma_alloc_coherent(rkvdec->dev, RKVDEC_VP9_COUNT_SIZE,
+				       &vp9_ctx->count_tbl.dma, GFP_KERNEL);
+	if (!count_tbl) {
+		ret = -ENOMEM;
+		goto err_free_priv_tbl;
+	}
+
+	vp9_ctx->count_tbl.size = RKVDEC_VP9_COUNT_SIZE;
+	vp9_ctx->count_tbl.cpu = count_tbl;
+	memset(count_tbl, 0, sizeof(*count_tbl));
+
+	return 0;
+
+err_free_priv_tbl:
+	dma_free_coherent(rkvdec->dev, vp9_ctx->priv_tbl.size,
+			  vp9_ctx->priv_tbl.cpu, vp9_ctx->priv_tbl.dma);
+
+err_free_ctx:
+	kfree(vp9_ctx);
+	return ret;
+}
+
+static void rkvdec_vp9_stop(struct rkvdec_ctx *ctx)
+{
+	struct rkvdec_vp9_ctx *vp9_ctx = ctx->priv;
+	struct rkvdec_dev *rkvdec = ctx->dev;
+
+	dma_free_coherent(rkvdec->dev, vp9_ctx->count_tbl.size,
+			  vp9_ctx->count_tbl.cpu, vp9_ctx->count_tbl.dma);
+	dma_free_coherent(rkvdec->dev, vp9_ctx->priv_tbl.size,
+			  vp9_ctx->priv_tbl.cpu, vp9_ctx->priv_tbl.dma);
+	kfree(vp9_ctx);
+}
+
+static int rkvdec_vp9_adjust_fmt(struct rkvdec_ctx *ctx,
+				 struct v4l2_format *f)
+{
+	struct v4l2_pix_format_mplane *fmt = &f->fmt.pix_mp;
+
+	fmt->num_planes = 1;
+	if (!fmt->plane_fmt[0].sizeimage)
+		fmt->plane_fmt[0].sizeimage = fmt->width * fmt->height * 2;
+	return 0;
+}
+
+const struct rkvdec_coded_fmt_ops rkvdec_vp9_fmt_ops = {
+	.adjust_fmt = rkvdec_vp9_adjust_fmt,
+	.start = rkvdec_vp9_start,
+	.stop = rkvdec_vp9_stop,
+	.run = rkvdec_vp9_run,
+	.done = rkvdec_vp9_done,
+};
diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index ef2166043127..7a931affa8fd 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -99,10 +99,30 @@ static const struct rkvdec_ctrls rkvdec_h264_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_h264_ctrl_descs),
 };
 
-static const u32 rkvdec_h264_decoded_fmts[] = {
+static const u32 rkvdec_h264_vp9_decoded_fmts[] = {
 	V4L2_PIX_FMT_NV12,
 };
 
+static const struct rkvdec_ctrl_desc rkvdec_vp9_ctrl_descs[] = {
+	{
+		.cfg.id = V4L2_CID_STATELESS_VP9_FRAME_DECODE_PARAMS,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS,
+	},
+	{
+		.cfg.id = V4L2_CID_MPEG_VIDEO_VP9_PROFILE,
+		.cfg.min = V4L2_MPEG_VIDEO_VP9_PROFILE_0,
+		.cfg.max = V4L2_MPEG_VIDEO_VP9_PROFILE_0,
+		.cfg.def = V4L2_MPEG_VIDEO_VP9_PROFILE_0,
+	},
+};
+
+static const struct rkvdec_ctrls rkvdec_vp9_ctrls = {
+	.ctrls = rkvdec_vp9_ctrl_descs,
+	.num_ctrls = ARRAY_SIZE(rkvdec_vp9_ctrl_descs),
+};
+
 static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_H264_SLICE,
@@ -116,8 +136,23 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 		},
 		.ctrls = &rkvdec_h264_ctrls,
 		.ops = &rkvdec_h264_fmt_ops,
-		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_decoded_fmts),
-		.decoded_fmts = rkvdec_h264_decoded_fmts,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_vp9_decoded_fmts),
+		.decoded_fmts = rkvdec_h264_vp9_decoded_fmts,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_VP9_FRAME,
+		.frmsize = {
+			.min_width = 64,
+			.max_width = 4096,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height = 2304,
+			.step_height = 64,
+		},
+		.ctrls = &rkvdec_vp9_ctrls,
+		.ops = &rkvdec_vp9_fmt_ops,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_vp9_decoded_fmts),
+		.decoded_fmts = rkvdec_h264_vp9_decoded_fmts,
 	}
 };
 
@@ -319,7 +354,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	const struct rkvdec_coded_fmt_desc *desc;
 	struct v4l2_format *cap_fmt;
-	struct vb2_queue *peer_vq;
+	struct vb2_queue *peer_vq, *vq;
 	int ret;
 
 	/*
@@ -331,6 +366,15 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	if (vb2_is_busy(peer_vq))
 		return -EBUSY;
 
+	/*
+	 * Some codecs like VP9 can contain dynamic resolution changes which
+	 * are currently not supported by the V4L2 API or driver, so return
+	 * an error if userspace tries to reconfigure the output format.
+	 */
+	vq = v4l2_m2m_get_vq(m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	if (vb2_is_busy(vq))
+		return -EINVAL;
+
 	ret = rkvdec_s_fmt(file, priv, f, rkvdec_try_output_fmt);
 	if (ret)
 		return ret;
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 52ac3874c5e5..8f534743eaf1 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -50,6 +50,10 @@ struct rkvdec_vp9_decoded_buffer_info {
 struct rkvdec_decoded_buffer {
 	/* Must be the first field in this struct. */
 	struct v4l2_m2m_buffer base;
+
+	union {
+		struct rkvdec_vp9_decoded_buffer_info vp9;
+	};
 };
 
 static inline struct rkvdec_decoded_buffer *
@@ -116,4 +120,6 @@ void rkvdec_run_preamble(struct rkvdec_ctx *ctx, struct rkvdec_run *run);
 void rkvdec_run_postamble(struct rkvdec_ctx *ctx, struct rkvdec_run *run);
 
 extern const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops;
+extern const struct rkvdec_coded_fmt_ops rkvdec_vp9_fmt_ops;
+
 #endif /* RKVDEC_H_ */
-- 
2.17.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

