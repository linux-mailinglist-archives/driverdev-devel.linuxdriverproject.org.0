Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5585433F6F6
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 18:33:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D730F6F97E;
	Wed, 17 Mar 2021 17:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I3015KmpBm4V; Wed, 17 Mar 2021 17:33:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDCBE6F975;
	Wed, 17 Mar 2021 17:33:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FA471BF5DF
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 17:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D37543072
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 17:32:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XxLsLc8w0wKA for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 17:32:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 289354302A
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 17:32:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 3ECB11F45459
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Subject: [PATCH v5 05/13] media: hevc: Add decode params control
Date: Wed, 17 Mar 2021 18:31:54 +0100
Message-Id: <20210317173202.107519-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210317173202.107519-1-benjamin.gaignard@collabora.com>
References: <20210317173202.107519-1-benjamin.gaignard@collabora.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add decode params control and it associated structure to regroup
all the information that are needed to decode a reference frame as
it is describe in ITU-T Rec. H.265 section "8.3.2 Decoding process
for reference picture set".

Adapt Cedrus driver to these changes.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/v4l/ext-ctrls-codec.rst             | 94 +++++++++++++++----
 .../media/v4l/vidioc-queryctrl.rst            |  6 ++
 drivers/media/v4l2-core/v4l2-ctrls.c          | 26 +++--
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  6 ++
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |  2 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  6 +-
 include/media/hevc-ctrls.h                    | 29 ++++--
 8 files changed, 134 insertions(+), 36 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index d62e8e423f3b..8a6d45cb437e 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -3436,9 +3436,6 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     * - __u8
       - ``pic_struct``
       -
-    * - __u8
-      - ``num_active_dpb_entries``
-      - The number of entries in ``dpb``.
     * - __u8
       - ``ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
       - The list of L0 reference elements as indices in the DPB.
@@ -3446,22 +3443,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
       - ``ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
       - The list of L1 reference elements as indices in the DPB.
     * - __u8
-      - ``num_rps_poc_st_curr_before``
-      - The number of reference pictures in the short-term set that come before
-        the current frame.
-    * - __u8
-      - ``num_rps_poc_st_curr_after``
-      - The number of reference pictures in the short-term set that come after
-        the current frame.
-    * - __u8
-      - ``num_rps_poc_lt_curr``
-      - The number of reference pictures in the long-term set.
-    * - __u8
-      - ``padding[7]``
+      - ``padding``
       - Applications and drivers must set this to zero.
-    * - struct :c:type:`v4l2_hevc_dpb_entry`
-      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
-      - The decoded picture buffer, for meta-data about reference frames.
     * - struct :c:type:`v4l2_hevc_pred_weight_table`
       - ``pred_weight_table``
       - The prediction weight coefficients for inter-picture prediction.
@@ -3660,3 +3643,78 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     so this has to come from client.
     This is applicable to H264 and valid Range is from 0 to 63.
     Source Rec. ITU-T H.264 (06/2019); G.7.4.1.1, G.8.8.1.
+
+``V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS (struct)``
+    Specifies various decode parameters, especially the references picture order
+    count (POC) for all the lists (short, long, before, current, after) and the
+    number of entries for each of them.
+    These parameters are defined according to :ref:`hevc`.
+    They are described in section 8.3 "Slice decoding process" of the
+    specification.
+
+.. c:type:: v4l2_ctrl_hevc_decode_params
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_hevc_decode_params
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __s32
+      - ``pic_order_cnt_val``
+      - PicOrderCntVal as described in section 8.3.1 "Decoding process
+        for picture order count" of the specification.
+    * - __u8
+      - ``num_active_dpb_entries``
+      - The number of entries in ``dpb``.
+    * - struct :c:type:`v4l2_hevc_dpb_entry`
+      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
+      - The decoded picture buffer, for meta-data about reference frames.
+    * - __u8
+      - ``num_poc_st_curr_before``
+      - The number of reference pictures in the short-term set that come before
+        the current frame.
+    * - __u8
+      - ``num_poc_st_curr_after``
+      - The number of reference pictures in the short-term set that come after
+        the current frame.
+    * - __u8
+      - ``num_poc_lt_curr``
+      - The number of reference pictures in the long-term set.
+    * - __u8
+      - ``poc_st_curr_before[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
+      - PocStCurrBefore as described in section 8.3.2 "Decoding process for reference
+        picture set.
+    * - __u8
+      - ``poc_st_curr_after[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
+      - PocStCurrAfter as described in section 8.3.2 "Decoding process for reference
+        picture set.
+    * - __u8
+      - ``poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
+      - PocLtCurr as described in section 8.3.2 "Decoding process for reference
+        picture set.
+    * - __u64
+      - ``flags``
+      - See :ref:`Decode Parameters Flags <hevc_decode_params_flags>`
+
+.. _hevc_decode_params_flags:
+
+``Decode Parameters Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_HEVC_DECODE_PARAM_FLAG_IRAP_PIC``
+      - 0x00000001
+      -
+    * - ``V4L2_HEVC_DECODE_PARAM_FLAG_IDR_PIC``
+      - 0x00000002
+      -
+    * - ``V4L2_HEVC_DECODE_PARAM_FLAG_NO_OUTPUT_OF_PRIOR``
+      - 0x00000004
+      -
diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
index 82f61f1e2fb8..d84ae255bc79 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
@@ -486,6 +486,12 @@ See also the examples in :ref:`control`.
       - n/a
       - A struct :c:type:`v4l2_ctrl_hevc_slice_params`, containing HEVC
 	slice parameters for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_hevc_decode_params`, containing HEVC
+	decoding parameters for stateless video decoders.
 
 .. tabularcolumns:: |p{6.6cm}|p{2.2cm}|p{8.7cm}|
 
diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 016cf6204cbb..4060b5bcc3c0 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1028,6 +1028,7 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:			return "HEVC Sequence Parameter Set";
 	case V4L2_CID_MPEG_VIDEO_HEVC_PPS:			return "HEVC Picture Parameter Set";
 	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:		return "HEVC Slice Parameters";
+	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:		return "HEVC Decode Parameters";
 	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE:		return "HEVC Decode Mode";
 	case V4L2_CID_MPEG_VIDEO_HEVC_START_CODE:		return "HEVC Start Code";
 
@@ -1482,6 +1483,9 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:
 		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
 		break;
+	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:
+		*type = V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS;
+		break;
 	case V4L2_CID_UNIT_CELL_SIZE:
 		*type = V4L2_CTRL_TYPE_AREA;
 		*flags |= V4L2_CTRL_FLAG_READ_ONLY;
@@ -1833,6 +1837,7 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 	struct v4l2_ctrl_hevc_sps *p_hevc_sps;
 	struct v4l2_ctrl_hevc_pps *p_hevc_pps;
 	struct v4l2_ctrl_hevc_slice_params *p_hevc_slice_params;
+	struct v4l2_ctrl_hevc_decode_params *p_hevc_decode_params;
 	struct v4l2_area *area;
 	void *p = ptr.p + idx * ctrl->elem_size;
 	unsigned int i;
@@ -2108,23 +2113,27 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 		zero_padding(*p_hevc_pps);
 		break;
 
-	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
-		p_hevc_slice_params = p;
+	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
+		p_hevc_decode_params = p;
 
-		if (p_hevc_slice_params->num_active_dpb_entries >
+		if (p_hevc_decode_params->num_active_dpb_entries >
 		    V4L2_HEVC_DPB_ENTRIES_NUM_MAX)
 			return -EINVAL;
 
-		zero_padding(p_hevc_slice_params->pred_weight_table);
-
-		for (i = 0; i < p_hevc_slice_params->num_active_dpb_entries;
+		for (i = 0; i < p_hevc_decode_params->num_active_dpb_entries;
 		     i++) {
 			struct v4l2_hevc_dpb_entry *dpb_entry =
-				&p_hevc_slice_params->dpb[i];
+				&p_hevc_decode_params->dpb[i];
 
 			zero_padding(*dpb_entry);
 		}
 
+		break;
+
+	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
+		p_hevc_slice_params = p;
+
+		zero_padding(p_hevc_slice_params->pred_weight_table);
 		zero_padding(*p_hevc_slice_params);
 		break;
 
@@ -2821,6 +2830,9 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
 	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
 		elem_size = sizeof(struct v4l2_ctrl_hevc_slice_params);
 		break;
+	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
+		elem_size = sizeof(struct v4l2_ctrl_hevc_decode_params);
+		break;
 	case V4L2_CTRL_TYPE_AREA:
 		elem_size = sizeof(struct v4l2_area);
 		break;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 7bd9291c8d5f..4cd3cab1a257 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -151,6 +151,12 @@ static const struct cedrus_control cedrus_controls[] = {
 		},
 		.codec		= CEDRUS_CODEC_VP8,
 	},
+	{
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS,
+		},
+		.codec		= CEDRUS_CODEC_H265,
+	},
 };
 
 #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 251a6a660351..2ca33ac38b9a 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -76,6 +76,7 @@ struct cedrus_h265_run {
 	const struct v4l2_ctrl_hevc_sps			*sps;
 	const struct v4l2_ctrl_hevc_pps			*pps;
 	const struct v4l2_ctrl_hevc_slice_params	*slice_params;
+	const struct v4l2_ctrl_hevc_decode_params	*decode_params;
 };
 
 struct cedrus_vp8_run {
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index a9090daf626a..cd821f417a14 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
@@ -68,6 +68,8 @@ void cedrus_device_run(void *priv)
 			V4L2_CID_MPEG_VIDEO_HEVC_PPS);
 		run.h265.slice_params = cedrus_find_control_data(ctx,
 			V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS);
+		run.h265.decode_params = cedrus_find_control_data(ctx,
+			V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS);
 		break;
 
 	case V4L2_PIX_FMT_VP8_FRAME:
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
index ce497d0197df..dce5db6be13a 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -245,6 +245,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	const struct v4l2_ctrl_hevc_sps *sps;
 	const struct v4l2_ctrl_hevc_pps *pps;
 	const struct v4l2_ctrl_hevc_slice_params *slice_params;
+	const struct v4l2_ctrl_hevc_decode_params *decode_params;
 	const struct v4l2_hevc_pred_weight_table *pred_weight_table;
 	dma_addr_t src_buf_addr;
 	dma_addr_t src_buf_end_addr;
@@ -256,6 +257,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	sps = run->h265.sps;
 	pps = run->h265.pps;
 	slice_params = run->h265.slice_params;
+	decode_params = run->h265.decode_params;
 	pred_weight_table = &slice_params->pred_weight_table;
 
 	/* MV column buffer size and allocation. */
@@ -487,7 +489,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 
 	reg = VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_TC_OFFSET_DIV2(slice_params->slice_tc_offset_div2) |
 	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_BETA_OFFSET_DIV2(slice_params->slice_beta_offset_div2) |
-	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_POC_BIGEST_IN_RPS_ST(slice_params->num_rps_poc_st_curr_after == 0) |
+	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_POC_BIGEST_IN_RPS_ST(decode_params->num_rps_poc_st_curr_after == 0) |
 	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_CR_QP_OFFSET(slice_params->slice_cr_qp_offset) |
 	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_CB_QP_OFFSET(slice_params->slice_cb_qp_offset) |
 	      VE_DEC_H265_DEC_SLICE_HDR_INFO1_SLICE_QP_DELTA(slice_params->slice_qp_delta);
@@ -528,7 +530,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 
 	/* Write decoded picture buffer in pic list. */
 	cedrus_h265_frame_info_write_dpb(ctx, slice_params->dpb,
-					 slice_params->num_active_dpb_entries);
+					 decode_params->num_active_dpb_entries);
 
 	/* Output frame. */
 
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 003f819ecb26..8e0109eea454 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -19,6 +19,7 @@
 #define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_CODEC_BASE + 1008)
 #define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_CODEC_BASE + 1009)
 #define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_CODEC_BASE + 1010)
+#define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS	(V4L2_CID_CODEC_BASE + 1012)
 #define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE + 1015)
 #define V4L2_CID_MPEG_VIDEO_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
 
@@ -26,6 +27,7 @@
 #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
 #define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
 #define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
+#define V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS 0x0124
 
 enum v4l2_mpeg_video_hevc_decode_mode {
 	V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_SLICE_BASED,
@@ -194,18 +196,10 @@ struct v4l2_ctrl_hevc_slice_params {
 	__u8	pic_struct;
 
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
-	__u8	num_active_dpb_entries;
 	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 
-	__u8	num_rps_poc_st_curr_before;
-	__u8	num_rps_poc_st_curr_after;
-	__u8	num_rps_poc_lt_curr;
-
-	__u8	padding;
-
-	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
-	struct v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
+	__u8	padding[5];
 
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
 	struct v4l2_hevc_pred_weight_table pred_weight_table;
@@ -213,4 +207,21 @@ struct v4l2_ctrl_hevc_slice_params {
 	__u64	flags;
 };
 
+#define V4L2_HEVC_DECODE_PARAM_FLAG_IRAP_PIC		0x1
+#define V4L2_HEVC_DECODE_PARAM_FLAG_IDR_PIC		0x2
+#define V4L2_HEVC_DECODE_PARAM_FLAG_NO_OUTPUT_OF_PRIOR  0x4
+
+struct v4l2_ctrl_hevc_decode_params {
+	__s32	pic_order_cnt_val;
+	__u8	num_active_dpb_entries;
+	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
+	__u8	num_poc_st_curr_before;
+	__u8	num_poc_st_curr_after;
+	__u8	num_poc_lt_curr;
+	__u8	poc_st_curr_before[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
+	__u8	poc_st_curr_after[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
+	__u8	poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
+	__u64	flags;
+};
+
 #endif
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
