Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 338C229479
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 11:21:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60AC687FA5;
	Fri, 24 May 2019 09:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ki72a1wOKKxn; Fri, 24 May 2019 09:21:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A68687A7C;
	Fri, 24 May 2019 09:21:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D7C11BF290
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 09:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0739386ADF
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 09:21:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KjfXIiaSyyLR for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 09:21:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C16986ADD
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 09:21:00 +0000 (UTC)
X-Originating-IP: 90.88.147.134
Received: from localhost.localdomain
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 722691C0010;
 Fri, 24 May 2019 09:20:55 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v11 1/4] media: uapi: Add H264 low-level decoder API compound
 controls.
Date: Fri, 24 May 2019 11:20:28 +0200
Message-Id: <20190524092031.619-2-paul.kocialkowski@bootlin.com>
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
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Chen-Yu Tsai <wens@csie.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Guenter Roeck <groeck@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Pawel Osciak <posciak@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Pawel Osciak <posciak@chromium.org>

Stateless video codecs will require both the H264 metadata and slices in
order to be able to decode frames.

This introduces the definitions for the structures used to pass the
metadata from the userspace to the kernel.

Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Reviewed-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Pawel Osciak <posciak@chromium.org>
Signed-off-by: Guenter Roeck <groeck@chromium.org>
Co-developed-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 Documentation/media/uapi/v4l/biblio.rst       |   9 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        | 569 ++++++++++++++++++
 .../media/uapi/v4l/vidioc-queryctrl.rst       |  30 +
 .../media/videodev2.h.rst.exceptions          |   5 +
 drivers/media/v4l2-core/v4l2-ctrls.c          |  42 ++
 include/media/v4l2-ctrls.h                    |  13 +-
 6 files changed, 667 insertions(+), 1 deletion(-)

diff --git a/Documentation/media/uapi/v4l/biblio.rst b/Documentation/media/uapi/v4l/biblio.rst
index ec33768c055e..8f4eb8823d82 100644
--- a/Documentation/media/uapi/v4l/biblio.rst
+++ b/Documentation/media/uapi/v4l/biblio.rst
@@ -122,6 +122,15 @@ ITU BT.1119
 
 :author:    International Telecommunication Union (http://www.itu.ch)
 
+.. _h264:
+
+ITU-T Rec. H.264 Specification (04/2017 Edition)
+================================================
+
+:title:     ITU-T Recommendation H.264 "Advanced Video Coding for Generic Audiovisual Services"
+
+:author:    International Telecommunication Union (http://www.itu.ch)
+
 .. _jfif:
 
 JFIF
diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
index 843c93e8e7bc..b0c178f0ff9b 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
@@ -1451,6 +1451,575 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
       - Layer number
 
 
+.. _v4l2-mpeg-h264:
+
+``V4L2_CID_MPEG_VIDEO_H264_SPS (struct)``
+    Specifies the sequence parameter set (as extracted from the
+    bitstream) for the associated H264 slice data. This includes the
+    necessary parameters for configuring a stateless hardware decoding
+    pipeline for H264. The bitstream parameters are defined according
+    to :ref:`h264`, section 7.4.2.1.1 "Sequence Parameter Set Data
+    Semantics". For further documentation, refer to the above
+    specification, unless there is an explicit comment stating
+    otherwise.
+
+    .. note::
+
+       This compound control is not yet part of the public kernel API and
+       it is expected to change.
+
+.. c:type:: v4l2_ctrl_h264_sps
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_h264_sps
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``profile_idc``
+      -
+    * - __u8
+      - ``constraint_set_flags``
+      - See :ref:`Sequence Parameter Set Constraints Set Flags <h264_sps_constraints_set_flags>`
+    * - __u8
+      - ``level_idc``
+      -
+    * - __u8
+      - ``seq_parameter_set_id``
+      -
+    * - __u8
+      - ``chroma_format_idc``
+      -
+    * - __u8
+      - ``bit_depth_luma_minus8``
+      -
+    * - __u8
+      - ``bit_depth_chroma_minus8``
+      -
+    * - __u8
+      - ``log2_max_frame_num_minus4``
+      -
+    * - __u8
+      - ``pic_order_cnt_type``
+      -
+    * - __u8
+      - ``log2_max_pic_order_cnt_lsb_minus4``
+      -
+    * - __u8
+      - ``max_num_ref_frames``
+      -
+    * - __u8
+      - ``num_ref_frames_in_pic_order_cnt_cycle``
+      -
+    * - __s32
+      - ``offset_for_ref_frame[255]``
+      -
+    * - __s32
+      - ``offset_for_non_ref_pic``
+      -
+    * - __s32
+      - ``offset_for_top_to_bottom_field``
+      -
+    * - __u16
+      - ``pic_width_in_mbs_minus1``
+      -
+    * - __u16
+      - ``pic_height_in_map_units_minus1``
+      -
+    * - __u32
+      - ``flags``
+      - See :ref:`Sequence Parameter Set Flags <h264_sps_flags>`
+
+.. _h264_sps_constraints_set_flags:
+
+``Sequence Parameter Set Constraints Set Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_H264_SPS_CONSTRAINT_SET0_FLAG``
+      - 0x00000001
+      -
+    * - ``V4L2_H264_SPS_CONSTRAINT_SET1_FLAG``
+      - 0x00000002
+      -
+    * - ``V4L2_H264_SPS_CONSTRAINT_SET2_FLAG``
+      - 0x00000004
+      -
+    * - ``V4L2_H264_SPS_CONSTRAINT_SET3_FLAG``
+      - 0x00000008
+      -
+    * - ``V4L2_H264_SPS_CONSTRAINT_SET4_FLAG``
+      - 0x00000010
+      -
+    * - ``V4L2_H264_SPS_CONSTRAINT_SET5_FLAG``
+      - 0x00000020
+      -
+
+.. _h264_sps_flags:
+
+``Sequence Parameter Set Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_H264_SPS_FLAG_SEPARATE_COLOUR_PLANE``
+      - 0x00000001
+      -
+    * - ``V4L2_H264_SPS_FLAG_QPPRIME_Y_ZERO_TRANSFORM_BYPASS``
+      - 0x00000002
+      -
+    * - ``V4L2_H264_SPS_FLAG_DELTA_PIC_ORDER_ALWAYS_ZERO``
+      - 0x00000004
+      -
+    * - ``V4L2_H264_SPS_FLAG_GAPS_IN_FRAME_NUM_VALUE_ALLOWED``
+      - 0x00000008
+      -
+    * - ``V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY``
+      - 0x00000010
+      -
+    * - ``V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD``
+      - 0x00000020
+      -
+    * - ``V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE``
+      - 0x00000040
+      -
+
+``V4L2_CID_MPEG_VIDEO_H264_PPS (struct)``
+    Specifies the picture parameter set (as extracted from the
+    bitstream) for the associated H264 slice data. This includes the
+    necessary parameters for configuring a stateless hardware decoding
+    pipeline for H264.  The bitstream parameters are defined according
+    to :ref:`h264`, section 7.4.2.2 "Picture Parameter Set RBSP
+    Semantics". For further documentation, refer to the above
+    specification, unless there is an explicit comment stating
+    otherwise.
+
+    .. note::
+
+       This compound control is not yet part of the public kernel API and
+       it is expected to change.
+
+.. c:type:: v4l2_ctrl_h264_pps
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_h264_pps
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``pic_parameter_set_id``
+      -
+    * - __u8
+      - ``seq_parameter_set_id``
+      -
+    * - __u8
+      - ``num_slice_groups_minus1``
+      -
+    * - __u8
+      - ``num_ref_idx_l0_default_active_minus1``
+      -
+    * - __u8
+      - ``num_ref_idx_l1_default_active_minus1``
+      -
+    * - __u8
+      - ``weighted_bipred_idc``
+      -
+    * - __s8
+      - ``pic_init_qp_minus26``
+      -
+    * - __s8
+      - ``pic_init_qs_minus26``
+      -
+    * - __s8
+      - ``chroma_qp_index_offset``
+      -
+    * - __s8
+      - ``second_chroma_qp_index_offset``
+      -
+    * - __u16
+      - ``flags``
+      - See :ref:`Picture Parameter Set Flags <h264_pps_flags>`
+
+.. _h264_pps_flags:
+
+``Picture Parameter Set Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE``
+      - 0x00000001
+      -
+    * - ``V4L2_H264_PPS_FLAG_BOTTOM_FIELD_PIC_ORDER_IN_FRAME_PRESENT``
+      - 0x00000002
+      -
+    * - ``V4L2_H264_PPS_FLAG_WEIGHTED_PRED``
+      - 0x00000004
+      -
+    * - ``V4L2_H264_PPS_FLAG_DEBLOCKING_FILTER_CONTROL_PRESENT``
+      - 0x00000008
+      -
+    * - ``V4L2_H264_PPS_FLAG_CONSTRAINED_INTRA_PRED``
+      - 0x00000010
+      -
+    * - ``V4L2_H264_PPS_FLAG_REDUNDANT_PIC_CNT_PRESENT``
+      - 0x00000020
+      -
+    * - ``V4L2_H264_PPS_FLAG_TRANSFORM_8X8_MODE``
+      - 0x00000040
+      -
+    * - ``V4L2_H264_PPS_FLAG_PIC_SCALING_MATRIX_PRESENT``
+      - 0x00000080
+      -
+
+``V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX (struct)``
+    Specifies the scaling matrix (as extracted from the bitstream) for
+    the associated H264 slice data. The bitstream parameters are
+    defined according to :ref:`h264`, section 7.4.2.1.1.1 "Scaling
+    List Semantics".For further documentation, refer to the above
+    specification, unless there is an explicit comment stating
+    otherwise.
+
+    .. note::
+
+       This compound control is not yet part of the public kernel API and
+       it is expected to change.
+
+.. c:type:: v4l2_ctrl_h264_scaling_matrix
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_h264_scaling_matrix
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``scaling_list_4x4[6][16]``
+      -
+    * - __u8
+      - ``scaling_list_8x8[6][64]``
+      -
+
+``V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS (struct)``
+    Specifies the slice parameters (as extracted from the bitstream)
+    for the associated H264 slice data. This includes the necessary
+    parameters for configuring a stateless hardware decoding pipeline
+    for H264.  The bitstream parameters are defined according to
+    :ref:`h264`, section 7.4.3 "Slice Header Semantics". For further
+    documentation, refer to the above specification, unless there is
+    an explicit comment stating otherwise.
+
+    .. note::
+
+       This compound control is not yet part of the public kernel API
+       and it is expected to change.
+
+       This structure is expected to be passed as an array, with one
+       entry for each slice included in the bitstream buffer.
+
+.. c:type:: v4l2_ctrl_h264_slice_params
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_h264_slice_params
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u32
+      - ``size``
+      -
+    * - __u32
+      - ``header_bit_size``
+      -
+    * - __u16
+      - ``first_mb_in_slice``
+      -
+    * - __u8
+      - ``slice_type``
+      -
+    * - __u8
+      - ``pic_parameter_set_id``
+      -
+    * - __u8
+      - ``colour_plane_id``
+      -
+    * - __u8
+      - ``redundant_pic_cnt``
+      -
+    * - __u16
+      - ``frame_num``
+      -
+    * - __u16
+      - ``idr_pic_id``
+      -
+    * - __u16
+      - ``pic_order_cnt_lsb``
+      -
+    * - __s32
+      - ``delta_pic_order_cnt_bottom``
+      -
+    * - __s32
+      - ``delta_pic_order_cnt0``
+      -
+    * - __s32
+      - ``delta_pic_order_cnt1``
+      -
+    * - struct :c:type:`v4l2_h264_pred_weight_table`
+      - ``pred_weight_table``
+      -
+    * - __u32
+      - ``dec_ref_pic_marking_bit_size``
+      -
+    * - __u32
+      - ``pic_order_cnt_bit_size``
+      -
+    * - __u8
+      - ``cabac_init_idc``
+      -
+    * - __s8
+      - ``slice_qp_delta``
+      -
+    * - __s8
+      - ``slice_qs_delta``
+      -
+    * - __u8
+      - ``disable_deblocking_filter_idc``
+      -
+    * - __s8
+      - ``slice_alpha_c0_offset_div2``
+      -
+    * - __s8
+      - ``slice_beta_offset_div2``
+      -
+    * - __u8
+      - ``num_ref_idx_l0_active_minus1``
+      -
+    * - __u8
+      - ``num_ref_idx_l1_active_minus1``
+      -
+    * - __u32
+      - ``slice_group_change_cycle``
+      -
+    * - __u8
+      - ``ref_pic_list0[32]``
+      - Reference picture list after applying the per-slice modifications
+    * - __u8
+      - ``ref_pic_list1[32]``
+      - Reference picture list after applying the per-slice modifications
+    * - __u32
+      - ``flags``
+      - See :ref:`Slice Parameter Flags <h264_slice_flags>`
+
+.. _h264_slice_flags:
+
+``Slice Parameter Set Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_H264_SLICE_FLAG_FIELD_PIC``
+      - 0x00000001
+      -
+    * - ``V4L2_H264_SLICE_FLAG_BOTTOM_FIELD``
+      - 0x00000002
+      -
+    * - ``V4L2_H264_SLICE_FLAG_DIRECT_SPATIAL_MV_PRED``
+      - 0x00000004
+      -
+    * - ``V4L2_H264_SLICE_FLAG_SP_FOR_SWITCH``
+      - 0x00000008
+      -
+
+``Prediction Weight Table``
+
+    The bitstream parameters are defined according to :ref:`h264`,
+    section 7.4.3.2 "Prediction Weight Table Semantics". For further
+    documentation, refer to the above specification, unless there is
+    an explicit comment stating otherwise.
+
+.. c:type:: v4l2_h264_pred_weight_table
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_h264_pred_weight_table
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u16
+      - ``luma_log2_weight_denom``
+      -
+    * - __u16
+      - ``chroma_log2_weight_denom``
+      -
+    * - struct :c:type:`v4l2_h264_weight_factors`
+      - ``weight_factors[2]``
+      - The weight factors at index 0 are the weight factors for the reference
+        list 0, the one at index 1 for the reference list 1.
+
+.. c:type:: v4l2_h264_weight_factors
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_h264_weight_factors
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __s16
+      - ``luma_weight[32]``
+      -
+    * - __s16
+      - ``luma_offset[32]``
+      -
+    * - __s16
+      - ``chroma_weight[32][2]``
+      -
+    * - __s16
+      - ``chroma_offset[32][2]``
+      -
+
+``V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS (struct)``
+    Specifies the decode parameters (as extracted from the bitstream)
+    for the associated H264 slice data. This includes the necessary
+    parameters for configuring a stateless hardware decoding pipeline
+    for H264. The bitstream parameters are defined according to
+    :ref:`h264`. For further documentation, refer to the above
+    specification, unless there is an explicit comment stating
+    otherwise.
+
+    .. note::
+
+       This compound control is not yet part of the public kernel API and
+       it is expected to change.
+
+.. c:type:: v4l2_ctrl_h264_decode_params
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_h264_decode_params
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u32
+      - ``num_slices``
+      - Number of slices needed to decode the current frame
+    * - __u32
+      - ``nal_ref_idc``
+      - NAL reference ID value coming from the NAL Unit header
+    * - __u8
+      - ``ref_pic_list_p0[32]``
+      - Backward reference list used by P-frames in the original bitstream order
+    * - __u8
+      - ``ref_pic_list_b0[32]``
+      - Backward reference list used by B-frames in the original bitstream order
+    * - __u8
+      - ``ref_pic_list_b1[32]``
+      - Forward reference list used by B-frames in the original bitstream order
+    * - __s32
+      - ``top_field_order_cnt``
+      - Picture Order Count for the coded top field
+    * - __s32
+      - ``bottom_field_order_cnt``
+      - Picture Order Count for the coded bottom field
+    * - __u32
+      - ``flags``
+      - See :ref:`Decode Parameters Flags <h264_decode_params_flags>`
+    * - struct :c:type:`v4l2_h264_dpb_entry`
+      - ``dpb[16]``
+      -
+
+.. _h264_decode_params_flags:
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
+    * - ``V4L2_H264_DECODE_PARAM_FLAG_IDR_PIC``
+      - 0x00000001
+      - That picture is an IDR picture
+
+.. c:type:: v4l2_h264_dpb_entry
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_h264_dpb_entry
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u64
+      - ``reference_ts``
+      - Timestamp of the V4L2 capture buffer to use as reference, used
+        with B-coded and P-coded frames. The timestamp refers to the
+	``timestamp`` field in struct :c:type:`v4l2_buffer`. Use the
+	:c:func:`v4l2_timeval_to_ns()` function to convert the struct
+	:c:type:`timeval` in struct :c:type:`v4l2_buffer` to a __u64.
+    * - __u16
+      - ``frame_num``
+      -
+    * - __u16
+      - ``pic_num``
+      -
+    * - __s32
+      - ``top_field_order_cnt``
+      -
+    * - __s32
+      - ``bottom_field_order_cnt``
+      -
+    * - __u32
+      - ``flags``
+      - See :ref:`DPB Entry Flags <h264_dpb_flags>`
+
+.. _h264_dpb_flags:
+
+``DPB Entries Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_VALID``
+      - 0x00000001
+      - The DPB entry is valid and should be considered
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_ACTIVE``
+      - 0x00000002
+      - The DPB entry is currently being used as a reference frame
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM``
+      - 0x00000004
+      - The DPB entry is a long term reference frame
 
 .. _v4l2-mpeg-mpeg2:
 
diff --git a/Documentation/media/uapi/v4l/vidioc-queryctrl.rst b/Documentation/media/uapi/v4l/vidioc-queryctrl.rst
index f824162d0ea9..dc500632095d 100644
--- a/Documentation/media/uapi/v4l/vidioc-queryctrl.rst
+++ b/Documentation/media/uapi/v4l/vidioc-queryctrl.rst
@@ -443,6 +443,36 @@ See also the examples in :ref:`control`.
       - n/a
       - A struct :c:type:`v4l2_ctrl_mpeg2_quantization`, containing MPEG-2
 	quantization matrices for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_H264_SPS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_h264_sps`, containing H264
+	sequence parameters for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_H264_PPS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_h264_pps`, containing H264
+	picture parameters for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_H264_SCALING_MATRIX``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_h264_scaling_matrix`, containing H264
+	scaling matrices for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_H264_SLICE_PARAMS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_h264_slice_params`, containing H264
+	slice parameters for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_H264_DECODE_PARAMS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_h264_decode_params`, containing H264
+	decode parameters for stateless video decoders.
 
 .. tabularcolumns:: |p{6.6cm}|p{2.2cm}|p{8.7cm}|
 
diff --git a/Documentation/media/videodev2.h.rst.exceptions b/Documentation/media/videodev2.h.rst.exceptions
index 64d348e67df9..55cbe324b9fc 100644
--- a/Documentation/media/videodev2.h.rst.exceptions
+++ b/Documentation/media/videodev2.h.rst.exceptions
@@ -136,6 +136,11 @@ replace symbol V4L2_CTRL_TYPE_U32 :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_U8 :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_MPEG2_QUANTIZATION :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_H264_SPS :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_H264_PPS :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_H264_SCALING_MATRIX :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_H264_SLICE_PARAMS :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_H264_DECODE_PARAMS :c:type:`v4l2_ctrl_type`
 
 # V4L2 capability defines
 replace define V4L2_CAP_VIDEO_CAPTURE device-capabilities
diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 3380accc24ed..b72dc54ba638 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -851,6 +851,11 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_MPEG_VIDEO_H264_I_FRAME_MAX_QP:		return "H264 I-Frame Maximum QP Value";
 	case V4L2_CID_MPEG_VIDEO_H264_P_FRAME_MIN_QP:		return "H264 P-Frame Minimum QP Value";
 	case V4L2_CID_MPEG_VIDEO_H264_P_FRAME_MAX_QP:		return "H264 P-Frame Maximum QP Value";
+	case V4L2_CID_MPEG_VIDEO_H264_SPS:			return "H264 Sequence Parameter Set";
+	case V4L2_CID_MPEG_VIDEO_H264_PPS:			return "H264 Picture Parameter Set";
+	case V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX:		return "H264 Scaling Matrix";
+	case V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS:		return "H264 Slice Parameters";
+	case V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS:		return "H264 Decode Parameters";
 	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:			return "MPEG2 Level";
 	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:			return "MPEG2 Profile";
 	case V4L2_CID_MPEG_VIDEO_MPEG4_I_FRAME_QP:		return "MPEG4 I-Frame QP Value";
@@ -1337,6 +1342,21 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_MPEG_VIDEO_FWHT_PARAMS:
 		*type = V4L2_CTRL_TYPE_FWHT_PARAMS;
 		break;
+	case V4L2_CID_MPEG_VIDEO_H264_SPS:
+		*type = V4L2_CTRL_TYPE_H264_SPS;
+		break;
+	case V4L2_CID_MPEG_VIDEO_H264_PPS:
+		*type = V4L2_CTRL_TYPE_H264_PPS;
+		break;
+	case V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX:
+		*type = V4L2_CTRL_TYPE_H264_SCALING_MATRIX;
+		break;
+	case V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS:
+		*type = V4L2_CTRL_TYPE_H264_SLICE_PARAMS;
+		break;
+	case V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS:
+		*type = V4L2_CTRL_TYPE_H264_DECODE_PARAMS;
+		break;
 	default:
 		*type = V4L2_CTRL_TYPE_INTEGER;
 		break;
@@ -1706,6 +1726,13 @@ static int std_validate(const struct v4l2_ctrl *ctrl, u32 idx,
 	case V4L2_CTRL_TYPE_FWHT_PARAMS:
 		return 0;
 
+	case V4L2_CTRL_TYPE_H264_SPS:
+	case V4L2_CTRL_TYPE_H264_PPS:
+	case V4L2_CTRL_TYPE_H264_SCALING_MATRIX:
+	case V4L2_CTRL_TYPE_H264_SLICE_PARAMS:
+	case V4L2_CTRL_TYPE_H264_DECODE_PARAMS:
+		return 0;
+
 	default:
 		return -EINVAL;
 	}
@@ -2289,6 +2316,21 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
 	case V4L2_CTRL_TYPE_FWHT_PARAMS:
 		elem_size = sizeof(struct v4l2_ctrl_fwht_params);
 		break;
+	case V4L2_CTRL_TYPE_H264_SPS:
+		elem_size = sizeof(struct v4l2_ctrl_h264_sps);
+		break;
+	case V4L2_CTRL_TYPE_H264_PPS:
+		elem_size = sizeof(struct v4l2_ctrl_h264_pps);
+		break;
+	case V4L2_CTRL_TYPE_H264_SCALING_MATRIX:
+		elem_size = sizeof(struct v4l2_ctrl_h264_scaling_matrix);
+		break;
+	case V4L2_CTRL_TYPE_H264_SLICE_PARAMS:
+		elem_size = sizeof(struct v4l2_ctrl_h264_slice_params);
+		break;
+	case V4L2_CTRL_TYPE_H264_DECODE_PARAMS:
+		elem_size = sizeof(struct v4l2_ctrl_h264_decode_params);
+		break;
 	default:
 		if (type < V4L2_CTRL_COMPOUND_TYPES)
 			elem_size = sizeof(s32);
diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
index ee026387f513..a8aede26491e 100644
--- a/include/media/v4l2-ctrls.h
+++ b/include/media/v4l2-ctrls.h
@@ -23,11 +23,12 @@
 #include <media/media-request.h>
 
 /*
- * Include the mpeg2 and fwht stateless codec compound control definitions.
+ * Include the stateless codec compound control definitions.
  * This will move to the public headers once this API is fully stable.
  */
 #include <media/mpeg2-ctrls.h>
 #include <media/fwht-ctrls.h>
+#include <media/h264-ctrls.h>
 
 /* forward references */
 struct file;
@@ -51,6 +52,11 @@ struct poll_table_struct;
  * @p_mpeg2_slice_params:	Pointer to a MPEG2 slice parameters structure.
  * @p_mpeg2_quantization:	Pointer to a MPEG2 quantization data structure.
  * @p_fwht_params:		Pointer to a FWHT stateless parameters structure.
+ * @p_h264_sps:			Pointer to a struct v4l2_ctrl_h264_sps.
+ * @p_h264_pps:			Pointer to a struct v4l2_ctrl_h264_pps.
+ * @p_h264_scaling_matrix:	Pointer to a struct v4l2_ctrl_h264_scaling_matrix.
+ * @p_h264_slice_params:	Pointer to a struct v4l2_ctrl_h264_slice_params.
+ * @p_h264_decode_params:	Pointer to a struct v4l2_ctrl_h264_decode_params.
  * @p:				Pointer to a compound value.
  */
 union v4l2_ctrl_ptr {
@@ -63,6 +69,11 @@ union v4l2_ctrl_ptr {
 	struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
 	struct v4l2_ctrl_mpeg2_quantization *p_mpeg2_quantization;
 	struct v4l2_ctrl_fwht_params *p_fwht_params;
+	struct v4l2_ctrl_h264_sps *p_h264_sps;
+	struct v4l2_ctrl_h264_pps *p_h264_pps;
+	struct v4l2_ctrl_h264_scaling_matrix *p_h264_scaling_matrix;
+	struct v4l2_ctrl_h264_slice_params *p_h264_slice_params;
+	struct v4l2_ctrl_h264_decode_params *p_h264_decode_params;
 	void *p;
 };
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
