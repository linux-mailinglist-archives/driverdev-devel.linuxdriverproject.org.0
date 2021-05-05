Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64336373B8A
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 14:39:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52D1940215;
	Wed,  5 May 2021 12:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8SAKagPeaRZ3; Wed,  5 May 2021 12:39:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AF9B401FE;
	Wed,  5 May 2021 12:39:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD75E1BF852
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 12:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B805605DB
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 12:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kmk1rSsMjikY for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 12:38:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75A5C607CB
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 12:38:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id AF6D61F42E77
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Subject: [RFCv2 1/3] media: uapi: Add VP9 stateless decoder controls
Date: Wed,  5 May 2021 14:38:34 +0200
Message-Id: <20210505123836.9573-2-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210505123836.9573-1-andrzej.p@collabora.com>
References: <20210505123836.9573-1-andrzej.p@collabora.com>
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
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add the VP9 stateless decoder controls plus the documentation that goes
with it.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 .../userspace-api/media/v4l/biblio.rst        |  10 +
 .../media/v4l/ext-ctrls-codec-stateless.rst   | 547 ++++++++++++++++++
 .../media/v4l/pixfmt-compressed.rst           |  15 +
 .../media/v4l/vidioc-g-ext-ctrls.rst          |   8 +
 .../media/v4l/vidioc-queryctrl.rst            |  12 +
 .../media/videodev2.h.rst.exceptions          |   2 +
 drivers/media/v4l2-core/v4l2-ctrls.c          | 229 ++++++++
 drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
 include/media/v4l2-ctrls.h                    |   4 +
 include/uapi/linux/v4l2-controls.h            | 425 ++++++++++++++
 include/uapi/linux/videodev2.h                |   6 +
 11 files changed, 1259 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/biblio.rst b/Documentation/userspace-api/media/v4l/biblio.rst
index 64d241daf63c..051982896375 100644
--- a/Documentation/userspace-api/media/v4l/biblio.rst
+++ b/Documentation/userspace-api/media/v4l/biblio.rst
@@ -417,3 +417,13 @@ VP8
 :title:     RFC 6386: "VP8 Data Format and Decoding Guide"
 
 :author:    J. Bankoski et al.
+
+.. _vp9:
+
+VP9
+===
+
+
+:title:     VP9 Bitstream & Decoding Process Specification
+
+:author:    Adrian Grange (Google), Peter de Rivaz (Argon Design), Jonathan Hunt (Argon Design)
diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
index 3fc04daa9ffb..2d15d2d419a6 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
@@ -1244,3 +1244,550 @@ FWHT Flags
     * - __u8
       - ``padding[3]``
       - Applications and drivers must set this to zero.
+
+.. _v4l2-codec-stateless-vp9:
+
+``V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS (struct)``
+    Stores VP9 probabilities updates as parsed from the current compressed frame
+    header. A value of zero in an array element means no update of the relevant
+    probability. Motion vector-related updates contain a new value or zero. All
+    other updates contain values translated with inv_map_table[] (see 6.3.5 in
+    :ref:`vp9`).
+
+.. c:type:: v4l2_ctrl_vp9_compressed_hdr_probs
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{5.8cm}|p{4.8cm}|p{6.6cm}|
+
+.. flat-table:: struct v4l2_ctrl_vp9_compressed_hdr_probs
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``tx8[2][1]``
+      - TX 8x8 probabilities delta.
+    * - __u8
+      - ``tx16[2][2]``
+      - TX 16x16 probabilities delta.
+    * - __u8
+      - ``tx32[2][3]``
+      - TX 32x32 probabilities delta.
+    * - __u8
+      - ``coef[4][2][2][6][6][3]``
+      - Coefficient probabilities delta.
+    * - __u8
+      - ``skip[3]``
+      - Skip probabilities delta.
+    * - __u8
+      - ``inter_mode[7][3]``
+      - Inter prediction mode probabilities delta.
+    * - __u8
+      - ``interp_filter[4][2]``
+      - Interpolation filter probabilities delta.
+    * - __u8
+      - ``is_inter[4]``
+      - Is inter-block probabilities delta.
+    * - __u8
+      - ``comp_mode[5]``
+      - Compound prediction mode probabilities delta.
+    * - __u8
+      - ``single_ref[5][2]``
+      - Single reference probabilities delta.
+    * - __u8
+      - ``comp_mode[5]``
+      - Compound reference probabilities delta.
+    * - __u8
+      - ``y_mode[4][9]``
+      - Y prediction mode probabilities delta.
+    * - __u8
+      - ``uv_mode[10][9]``
+      - UV prediction mode probabilities delta.
+    * - __u8
+      - ``partition[16][3]``
+      - Partition probabilities delta.
+    * - __u8
+      - ``partition[16][3]``
+      - Partition probabilities delta.
+    * - __u8
+      - ``mv.joint[3]``
+      - Motion vector joint probabilities delta.
+    * - __u8
+      - ``mv.sign[2]``
+      - Motion vector sign probabilities delta.
+    * - __u8
+      - ``mv.class[2][10]``
+      - Motion vector class probabilities delta.
+    * - __u8
+      - ``mv.class0_bit[2]``
+      - Motion vector class0 bit probabilities delta.
+    * - __u8
+      - ``mv.bits[2][10]``
+      - Motion vector bits probabilities delta.
+    * - __u8
+      - ``mv.class0_fr[2][2][3]``
+      - Motion vector class0 fractional bit probabilities delta.
+    * - __u8
+      - ``mv.fr[2][3]``
+      - Motion vector fractional bit probabilities delta.
+    * - __u8
+      - ``mv.class0_hp[2]``
+      - Motion vector class0 high precision fractional bit probabilities delta.
+    * - __u8
+      - ``mv.hp[2]``
+      - Motion vector high precision fractional bit probabilities delta.
+
+``V4L2_CID_STATELESS_VP9_FRAME (struct)``
+    Specifies the frame parameters for the associated VP9 frame decode request.
+    This includes the necessary parameters for configuring a stateless hardware
+    decoding pipeline for VP9. The bitstream parameters are defined according
+    to :ref:`vp9`.
+
+.. c:type:: v4l2_ctrl_vp9_frame
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_ctrl_vp9_frame
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u32
+      - ``flags``
+      - Combination of V4L2_VP9_FRAME_FLAG_* flags. See
+        :c:type:`v4l2_vp9_frame_flags`.
+    * - __u16
+      - ``compressed_header_size``
+      - Compressed header size in bytes.
+    * - __u16
+      - ``uncompressed_header_size``
+      - Uncompressed header size in bytes.
+    * - __u8
+      - ``profile``
+      - VP9 profile. Can be 0, 1, 2 or 3.
+    * - __u8
+      - ``reset_frame_context``
+      - specifies whether the frame context should be reset to default values. See
+        :c:type:`v4l2_vp9_reset_frame_context` for more details.
+    * - __u8
+      - ``bit_depth``
+      - Component depth in bits. Can be 8, 10 or 12. Note that not all profiles
+        support 10 and/or 12 bits depths.
+    * - __u8
+      - ``interpolation_filter``
+      - Specifies the filter selection used for performing inter prediction. See
+        :c:type:`v4l2_vp9_interpolation_filter` for more details.
+    * - __u8
+      - ``tile_cols_log2``
+      - Specifies the base 2 logarithm of the width of each tile (where the
+        width is measured in units of 8x8 blocks). Shall be less than or equal
+        to 6.
+    * - __u8
+      - ``tile_rows_log2``
+      - Specifies the base 2 logarithm of the height of each tile (where the
+        height is measured in units of 8x8 blocks).
+    * - __u8
+      - ``tx_mode``
+      - Specifies the TX mode. See :c:type:`v4l2_vp9_tx_mode` for more details.
+    * - __u8
+      - ``reference_mode``
+      - Specifies the type of inter prediction to be used. See
+        :c:type:`v4l2_vp9_reference_mode` for more details.
+    * - __u8
+      - ``padding[7]``
+      - Needed to make this struct 64 bit aligned. Shall be filled with zeroes.
+    * - __u16
+      - ``frame_width_minus_1``
+      - Add 1 to get the frame width expressed in pixels. See section 7.2.3 of the spec.
+    * - __u16
+      - ``frame_height_minus_1``
+      - Add 1 to get the frame height expressed in pixels. See section 7.2.3 of the spec.
+    * - __u16
+      - ``render_width_minus_1``
+      - Add 1 to get the expected render width expressed in pixels. This is
+        not used during the decoding process but might be used by HW scalers to
+        prepare a frame that's ready for scanout. See section 7.2.4 of the spec.
+    * - __u16
+      - render_height_minus_1
+      - Add 1 to get the expected render height expressed in pixels. This is
+        not used during the decoding process but might be used by HW scalers to
+        prepare a frame that's ready for scanout. See section 7.2.4 of the spec.
+    * - __u64
+      - ``refs[3]``
+      - Array of reference frame timestamps. See :c:type:`v4l2_vp9_ref_id` for more details.
+    * - __u8
+      - ``ref_frame_sign_bias[4]``
+      - Array of reference frames motion vector sign bias (prediction direction).
+    * - struct :c:type:`v4l2_vp9_loop_filter`
+      - ``lf``
+      - Loop filter parameters. See struct :c:type:`v4l2_vp9_loop_filter` for more details.
+    * - struct :c:type:`v4l2_vp9_quantization`
+      - ``quant``
+      - Quantization parameters. See :c:type:`v4l2_vp9_quantization` for more details.
+    * - struct :c:type:`v4l2_vp9_segmentation`
+      - ``seg``
+      - Segmentation parameters. See :c:type:`v4l2_vp9_segmentation` for more details.
+
+.. c:type:: v4l2_vp9_frame_flags
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_frame_flags
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_FRAME_FLAG_KEY_FRAME``
+      - The frame is a key frame.
+    * - ``V4L2_VP9_FRAME_FLAG_SHOW_FRAME``
+      - The frame should be displayed.
+    * - ``V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT``
+      - The decoding should be error resilient.
+    * - ``V4L2_VP9_FRAME_FLAG_INTRA_ONLY``
+      - The frame does not reference other frames.
+    * - ``V4L2_VP9_FRAME_FLAG_ALLOW_HIGH_PREC_MV``
+      - The frame can use high precision motion vectors.
+    * - ``V4L2_VP9_FRAME_FLAG_REFRESH_FRAME_CTX``
+      - Frame context should be updated after decoding.
+    * - ``V4L2_VP9_FRAME_FLAG_PARALLEL_DEC_MODE``
+      - Parallel decoding is used.
+    * - ``V4L2_VP9_FRAME_FLAG_X_SUBSAMPLING``
+      - Vertical subsampling is enabled.
+    * - ``V4L2_VP9_FRAME_FLAG_Y_SUBSAMPLING``
+      - Horizontal subsampling is enabled.
+    * - ``V4L2_VP9_FRAME_FLAG_COLOR_RANGE_FULL_SWING``
+      - The full UV range is used.
+
+.. c:type:: v4l2_vp9_ref_id
+
+See section '7.4.12 Ref frames semantics' of the VP9 specification for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_ref_id
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_REF_ID_LAST``
+      - Last reference frame.
+    * - ``V4L2_REF_ID_GOLDEN``
+      - Golden reference frame.
+    * - ``V4L2_REF_ID_ALTREF``
+      - Alternative reference frame.
+    * - ``V4L2_REF_ID_CNT``
+      - Number of reference frames.
+
+.. c:type:: v4l2_vp9_tx_mode
+
+See section '7.3.1 Tx mode semantics' of the VP9 specification for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_tx_mode
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_TX_MODE_ONLY_4X4``
+      - Transform size is 4x4.
+    * - ``V4L2_VP9_TX_MODE_ALLOW_8X8``
+      - Transform size can be up to 8x8.
+    * - ``V4L2_VP9_TX_MODE_ALLOW_16X16``
+      - Transform size can be up to 16x16.
+    * - ``V4L2_VP9_TX_MODE_ALLOW_32X32``
+      - transform size can be up to 32x32.
+    * - ``V4L2_VP9_TX_MODE_SELECT``
+      - Bitstream contains the transform size for each block.
+
+.. c:type:: v4l2_vp9_reference_mode
+
+See section '7.4.12 Ref frames semantics' of the VP9 specification for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_reference_mode
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_REF_MODE_SINGLE``
+      - Indicates that all the inter blocks use only a single reference frame
+        to generate motion compensated prediction.
+    * - ``V4L2_VP9_REF_MODE_COMPOUND``
+      - Requires all the inter blocks to use compound mode. Single reference
+        frame prediction is not allowed.
+    * - ``V4L2_VP9_REF_MODE_SELECT``
+      - Allows each individual inter block to select between single and
+        compound prediction modes.
+
+.. c:type:: v4l2_vp9_interpolation_filter
+
+See section '7.2.7 Interpolation filter semantics' of the VP9 specification
+for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_interpolation_filter
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_INTERP_FILTER_8TAP``
+      - Height tap filter.
+    * - ``V4L2_VP9_INTERP_FILTER_8TAP_SMOOTH``
+      - Height tap smooth filter.
+    * - ``V4L2_VP9_INTERP_FILTER_8TAP_SHARP``
+      - Height tap sharp filter.
+    * - ``V4L2_VP9_INTERP_FILTER_BILINEAR``
+      - Bilinear filter.
+    * - ``V4L2_VP9_INTERP_FILTER_SWITCHABLE``
+      - Filter selection is signaled at the block level.
+
+.. c:type:: v4l2_vp9_reset_frame_context
+
+See section '7.2 Uncompressed header semantics' of the VP9 specification
+for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_reset_frame_context
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE``
+      - Do not reset any frame context.
+    * - ``V4L2_VP9_RESET_FRAME_CTX_SPEC``
+      - Reset the frame context pointed to by
+        :c:type:`v4l2_ctrl_vp9_frame`.frame_context_idx.
+    * - ``V4L2_VP9_RESET_FRAME_CTX_ALL``
+      - Reset all frame contexts.
+
+.. c:type:: v4l2_vp9_intra_prediction_mode
+
+See section '7.4.5 Intra frame mode info semantics' for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_intra_prediction_mode
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_INTRA_PRED_DC``
+      - DC intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_V``
+      - Vertical intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_H``
+      - Horizontal intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_D45``
+      - D45 intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_D135``
+      - D135 intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_D117``
+      - D117 intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_D153``
+      - D153 intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_D207``
+      - D207 intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_D63``
+      - D63 intra prediction.
+    * - ``V4L2_VP9_INTRA_PRED_MODE_TM``
+      - True motion intra prediction.
+
+.. c:type:: v4l2_vp9_segmentation
+
+Encodes the quantization parameters. See section '7.2.10 Segmentation
+params syntax' of the VP9 specification for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_vp9_segmentation
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``flags``
+      - Combination of V4L2_VP9_SEGMENTATION_FLAG_* flags. See
+        :c:type:`v4l2_vp9_segmentation_flags`.
+    * - __u8
+      - ``tree_probs[7]``
+      - Specifies the probability values to be used when decoding a Segment-ID.
+        See '5.15. Segmentation map' section of :ref:`vp9` for more details.
+    * - __u8
+      - ``pred_prob[3]``
+      - Specifies the probability values to be used when decoding a
+        Predicted-Segment-ID. See '6.4.14. Get segment id syntax'
+        section of :ref:`vp9` for more details.
+    * - __u8
+      - ``padding[5]``
+      - Used to align this struct on 64 bit. Shall be filled with zeroes.
+    * - __u8
+      - ``feature_enabled[8]``
+      - Bitmask defining which features are enabled in each segment.
+    * - __u8
+      - ``feature_data[8][4]``
+      - Data attached to each feature. Data entry is only valid if the feature
+        is enabled.
+
+.. c:type:: v4l2_vp9_segment_feature
+
+Segment feature IDs. See section '7.2.10 Segmentation params syntax' of the
+VP9 specification for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_segment_feature
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_SEGMENT_FEATURE_QP_DELTA``
+      - QP delta segment feature.
+    * - ``V4L2_VP9_SEGMENT_FEATURE_LF``
+      - Loop filter segment feature.
+    * - ``V4L2_VP9_SEGMENT_FEATURE_REF_FRAME``
+      - Reference frame segment feature.
+    * - ``V4L2_VP9_SEGMENT_FEATURE_SKIP``
+      - Skip segment feature.
+    * - ``V4L2_VP9_SEGMENT_FEATURE_CNT``
+      - Number of segment features.
+
+.. c:type:: v4l2_vp9_segmentation_flags
+
+Those are the flags you should pass to &v4l2_vp9_segmentation.flags. See
+section '7.2.10 Segmentation params syntax' of the VP9 specification for
+more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_segmentation_flags
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_SEGMENTATION_FLAG_ENABLED``
+      - Indicates that this frame makes use of the segmentation tool.
+    * - ``V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP``
+      - Indicates that the segmentation map should be updated during the
+        decoding of this frame.
+    * - ``V4L2_VP9_SEGMENTATION_FLAG_TEMPORAL_UPDATE``
+      - Indicates that the updates to the segmentation map are coded
+        relative to the existing segmentation map.
+    * - ``V4L2_VP9_SEGMENTATION_FLAG_UPDATE_DATA``
+      - Indicates that new parameters are about to be specified for each
+        segment.
+    * - ``V4L2_VP9_SEGMENTATION_FLAG_ABS_OR_DELTA_UPDATE``
+      - Indicates that the segmentation parameters represent the actual values
+        to be used.
+
+.. c:type:: v4l2_vp9_quantization
+
+Encodes the quantization parameters. See section '7.2.9 Quantization params
+syntax' of the VP9 specification for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_vp9_quantization
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``base_q_idx``
+      - Indicates the base frame qindex.
+    * - __s8
+      - ``delta_q_y_dc``
+      - Indicates the Y DC quantizer relative to base_q_idx.
+    * - __s8
+      - ``delta_q_uv_dc``
+      - Indicates the UV DC quantizer relative to base_q_idx.
+    * - __s8
+      - ``delta_q_uv_ac``
+      - Indicates the UV AC quantizer relative to base_q_idx.
+    * - __u8
+      - ``padding[4]``
+      - Padding bytes used to align this struct on 64 bit. Must be set to 0.
+
+.. c:type:: v4l2_vp9_loop_filter
+
+This structure contains all loop filter related parameters. See sections
+'7.2.8 Loop filter semantics' and '8.8.1 Loop filter frame init process'
+of the VP9 specification for more details.
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_vp9_loop_filter
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``flags``
+      - Combination of V4L2_VP9_LOOP_FILTER_FLAG_* flags.
+        See :c:type:`v4l2_vp9_loop_filter_flags`.
+    * - __u8
+      - ``level``
+      - Indicates the loop filter strength.
+    * - __u8
+      - ``sharpness``
+      - Indicates the sharpness level.
+    * - __s8
+      - ``ref_deltas[4]``
+      - Contains the adjustment needed for the filter level based on the chosen
+        reference frame.
+    * - __s8
+      - ``mode_deltas[2]``
+      - Contains the adjustment needed for the filter level based on the chosen
+        mode.
+    * - __u8
+      - ``level_lookup[8][4][2]``
+      - Level lookup table.
+
+
+.. c:type:: v4l2_vp9_loop_filter_flags
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: enum v4l2_vp9_loop_filter_flags
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 2
+
+    * - ``V4L2_VP9_LOOP_FILTER_FLAG_DELTA_ENABLED``
+      - When set, the filter level depends on the mode and reference frame used
+        to predict a block.
+    * - ``V4L2_VP9_LOOP_FILTER_FLAG_DELTA_UPDATE``
+      - When set, the bitstream contains additional syntax elements that
+        specify which mode and reference frame deltas are to be updated.
diff --git a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
index 6dba70da822b..c2aa543c0ed4 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
@@ -171,6 +171,21 @@ Compressed Formats
       - VP9 compressed video frame. The encoder generates one
 	compressed frame per buffer, and the decoder requires one
 	compressed frame per buffer.
+    * .. _V4L2-PIX-FMT-VP9_FRAME:
+
+      - ``V4L2_PIX_FMT_VP9_FRAME``
+      - 'VP9F'
+      - VP9 parsed frame, including the frame header, as extracted from the container.
+	This format is adapted for stateless video decoders that implement a
+	VP9 pipeline with the :ref:`stateless_decoder`.
+	Metadata associated with the frame to decode is required to be passed
+	through the ``V4L2_CID_STATELESS_VP9_FRAME`` and
+	the ``V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS`` controls.
+	See the :ref:`associated Codec Control IDs <v4l2-codec-stateless-vp9>`.
+	Exactly one output and one capture buffer must be provided for use with
+	this pixel format. The output buffer must contain the appropriate number
+	of macroblocks to decode a full corresponding frame to the matching
+	capture buffer.
     * .. _V4L2-PIX-FMT-HEVC:
 
       - ``V4L2_PIX_FMT_HEVC``
diff --git a/Documentation/userspace-api/media/v4l/vidioc-g-ext-ctrls.rst b/Documentation/userspace-api/media/v4l/vidioc-g-ext-ctrls.rst
index 3ba22983d21f..7ee7d4f9e078 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-g-ext-ctrls.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-g-ext-ctrls.rst
@@ -221,6 +221,14 @@ still cause this situation.
       - ``p_vp8_frame``
       - A pointer to a struct :c:type:`v4l2_ctrl_vp8_frame`. Valid if this control is
         of type ``V4L2_CTRL_TYPE_VP8_FRAME``.
+    * - struct :c:type:`v4l2_ctrl_vp9_compressed_hdr_probs` *
+      - ``p_vp9_compressed_hdr_probs``
+      - A pointer to a struct :c:type:`v4l2_ctrl_vp9_compressed_hdr_probs'. Valid if this
+        control is of type ``V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS``.
+    * - struct :c:type:`v4l2_ctrl_vp9_frame` *
+      - ``p_vp9_frame``
+      - A pointer to a struct :c:type:`v4l2_ctrl_vp9_frame'. Valid if this
+        control is of type ``V4L2_CTRL_TYPE_VP9_FRAME``.
     * - struct :c:type:`v4l2_ctrl_hdr10_cll_info` *
       - ``p_hdr10_cll``
       - A pointer to a struct :c:type:`v4l2_ctrl_hdr10_cll_info`. Valid if this control is
diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
index 8a285daedc6a..27663225d3c1 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
@@ -495,6 +495,18 @@ See also the examples in :ref:`control`.
       - n/a
       - A struct :c:type:`v4l2_ctrl_vp8_frame`, containing VP8
 	frame parameters for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_vp9_compressed_hdr_probs`, containing VP9
+	probabilities updates for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_VP9_FRAME``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_vp9_frame`, containing VP9
+	frame decode parameters for stateless video decoders.
 
 .. raw:: latex
 
diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
index f59940352faa..ba01ffc46cee 100644
--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
@@ -148,6 +148,8 @@ replace symbol V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_AREA :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_FWHT_PARAMS :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_VP8_FRAME :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_VP9_FRAME :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_HDR10_CLL_INFO :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_HDR10_MASTERING_DISPLAY :c:type:`v4l2_ctrl_type`
 
diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 0d7fe1bd975a..33e707147a28 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1215,6 +1215,8 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_STATELESS_H264_DECODE_PARAMS:		return "H264 Decode Parameters";
 	case V4L2_CID_STATELESS_FWHT_PARAMS:			return "FWHT Stateless Parameters";
 	case V4L2_CID_STATELESS_VP8_FRAME:			return "VP8 Frame Parameters";
+	case V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS:	return "VP9 Probabilities Updates";
+	case V4L2_CID_STATELESS_VP9_FRAME:			return "VP9 Frame Decode Parameters";
 
 	/* Colorimetry controls */
 	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
@@ -1517,6 +1519,12 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_STATELESS_VP8_FRAME:
 		*type = V4L2_CTRL_TYPE_VP8_FRAME;
 		break;
+	case V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS:
+		*type = V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS;
+		break;
+	case V4L2_CID_STATELESS_VP9_FRAME:
+		*type = V4L2_CTRL_TYPE_VP9_FRAME;
+		break;
 	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:
 		*type = V4L2_CTRL_TYPE_HEVC_SPS;
 		break;
@@ -1836,6 +1844,12 @@ static void std_log(const struct v4l2_ctrl *ctrl)
 	case V4L2_CTRL_TYPE_VP8_FRAME:
 		pr_cont("VP8_FRAME");
 		break;
+	case V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS:
+		pr_cont("VP9_COMPRESSED_HDR_PROBS");
+		break;
+	case V4L2_CTRL_TYPE_VP9_FRAME:
+		pr_cont("VP9_FRAME");
+		break;
 	case V4L2_CTRL_TYPE_HDR10_CLL_INFO:
 		pr_cont("HDR10_CLL_INFO");
 		break;
@@ -1876,6 +1890,209 @@ static void std_log(const struct v4l2_ctrl *ctrl)
 #define zero_reserved(s) \
 	memset(&(s).reserved, 0, sizeof((s).reserved))
 
+static int
+validate_vp9_lf_params(struct v4l2_vp9_loop_filter *lf)
+{
+	unsigned int i, j, k;
+
+	if (lf->flags & ~(V4L2_VP9_LOOP_FILTER_FLAG_DELTA_ENABLED |
+			  V4L2_VP9_LOOP_FILTER_FLAG_DELTA_UPDATE))
+		return -EINVAL;
+
+	/*
+	 * V4L2_VP9_LOOP_FILTER_FLAG_DELTA_ENABLED implies
+	 * V4L2_VP9_LOOP_FILTER_FLAG_DELTA_UPDATE.
+	 */
+	if (lf->flags & V4L2_VP9_LOOP_FILTER_FLAG_DELTA_UPDATE &&
+	    !(lf->flags & V4L2_VP9_LOOP_FILTER_FLAG_DELTA_ENABLED))
+		return -EINVAL;
+
+	/* That all values are in the accepted range. */
+	if (lf->level > GENMASK(5, 0))
+		return -EINVAL;
+
+	if (lf->sharpness > GENMASK(2, 0))
+		return -EINVAL;
+
+	for (i = 0; i < ARRAY_SIZE(lf->ref_deltas); i++)
+		if (lf->ref_deltas[i] < -63 || lf->ref_deltas[i] > 63)
+			return -EINVAL;
+
+	for (i = 0; i < ARRAY_SIZE(lf->mode_deltas); i++)
+		if (lf->mode_deltas[i] < -63 || lf->mode_deltas[i] > 63)
+			return -EINVAL;
+
+	for (i = 0; i < ARRAY_SIZE(lf->level_lookup); i++)
+		for (j = 0; j < ARRAY_SIZE(lf->level_lookup[0]); j++)
+			for (k = 0; k < ARRAY_SIZE(lf->level_lookup[0][0]); k++)
+				if (lf->level_lookup[i][j][k] > 63)
+					return -EINVAL;
+
+	return 0;
+}
+
+static int
+validate_vp9_quant_params(struct v4l2_vp9_quantization *quant)
+{
+	if (quant->delta_q_y_dc < -15 || quant->delta_q_y_dc > 15 ||
+	    quant->delta_q_uv_dc < -15 || quant->delta_q_uv_dc > 15 ||
+	    quant->delta_q_uv_ac < -15 || quant->delta_q_uv_ac > 15)
+		return -EINVAL;
+
+	zero_padding(*quant);
+	return 0;
+}
+
+static int
+validate_vp9_seg_params(struct v4l2_vp9_segmentation *seg)
+{
+	unsigned int i, j;
+
+	if (seg->flags & ~(V4L2_VP9_SEGMENTATION_FLAG_ENABLED |
+			   V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP |
+			   V4L2_VP9_SEGMENTATION_FLAG_TEMPORAL_UPDATE |
+			   V4L2_VP9_SEGMENTATION_FLAG_UPDATE_DATA |
+			   V4L2_VP9_SEGMENTATION_FLAG_ABS_OR_DELTA_UPDATE))
+		return -EINVAL;
+
+	/*
+	 * V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP and
+	 * V4L2_VP9_SEGMENTATION_FLAG_UPDATE_DATA imply
+	 * V4L2_VP9_SEGMENTATION_FLAG_ENABLED.
+	 */
+	if ((seg->flags & (V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP |
+			   V4L2_VP9_SEGMENTATION_FLAG_UPDATE_DATA)) &&
+	    !(seg->flags & V4L2_VP9_SEGMENTATION_FLAG_ENABLED))
+		return -EINVAL;
+
+	/*
+	 * V4L2_VP9_SEGMENTATION_FLAG_TEMPORAL_UPDATE implies
+	 * V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP.
+	 */
+	if (seg->flags & V4L2_VP9_SEGMENTATION_FLAG_TEMPORAL_UPDATE &&
+	    !(seg->flags & V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP))
+		return -EINVAL;
+
+	/*
+	 * V4L2_VP9_SEGMENTATION_FLAG_ABS_OR_DELTA_UPDATE implies
+	 * V4L2_VP9_SEGMENTATION_FLAG_UPDATE_DATA.
+	 */
+	if (seg->flags & V4L2_VP9_SEGMENTATION_FLAG_ABS_OR_DELTA_UPDATE &&
+	    !(seg->flags & V4L2_VP9_SEGMENTATION_FLAG_UPDATE_DATA))
+		return -EINVAL;
+
+	for (i = 0; i < ARRAY_SIZE(seg->feature_enabled); i++) {
+		if (seg->feature_enabled[i] &
+		    ~(V4L2_VP9_SEGMENT_FEATURE_QP_DELTA |
+		      V4L2_VP9_SEGMENT_FEATURE_LF |
+		      V4L2_VP9_SEGMENT_FEATURE_REF_FRAME |
+		      V4L2_VP9_SEGMENT_FEATURE_SKIP))
+			return -EINVAL;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(seg->feature_data); i++) {
+		const int range[] = { 255, 63, 3, 0 };
+
+		for (j = 0; j < ARRAY_SIZE(seg->feature_data[j]); j++) {
+			if (seg->feature_data[i][j] < -range[j] ||
+			    seg->feature_data[i][j] > range[j])
+				return -EINVAL;
+		}
+	}
+
+        zero_padding(*seg);
+	return 0;
+}
+
+static int
+validate_vp9_frame(struct v4l2_ctrl_vp9_frame *dec_params)
+{
+	int ret, i;
+
+	/* Make sure we're not passed invalid flags. */
+	if (dec_params->flags & ~(V4L2_VP9_FRAME_FLAG_KEY_FRAME |
+				  V4L2_VP9_FRAME_FLAG_SHOW_FRAME |
+				  V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT |
+				  V4L2_VP9_FRAME_FLAG_INTRA_ONLY |
+				  V4L2_VP9_FRAME_FLAG_ALLOW_HIGH_PREC_MV |
+				  V4L2_VP9_FRAME_FLAG_REFRESH_FRAME_CTX |
+				  V4L2_VP9_FRAME_FLAG_PARALLEL_DEC_MODE |
+				  V4L2_VP9_FRAME_FLAG_X_SUBSAMPLING |
+				  V4L2_VP9_FRAME_FLAG_Y_SUBSAMPLING |
+				  V4L2_VP9_FRAME_FLAG_COLOR_RANGE_FULL_SWING))
+		return -EINVAL;
+
+	if (dec_params->flags & V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT &&
+	    dec_params->flags & V4L2_VP9_FRAME_FLAG_REFRESH_FRAME_CTX)
+		return -EINVAL;
+
+	if (dec_params->profile > V4L2_VP9_PROFILE_MAX)
+		return -EINVAL;
+
+	if (dec_params->reset_frame_context > V4L2_VP9_RESET_FRAME_CTX_ALL)
+		return -EINVAL;
+
+	if (dec_params->frame_context_idx >= V4L2_VP9_NUM_FRAME_CTX)
+		return -EINVAL;
+
+	/*
+	 * Profiles 0 and 1 only support 8-bit depth, profiles 2 and 3 only 10
+	 * and 12 bit depths.
+	 */
+	if ((dec_params->profile < 2 && dec_params->bit_depth != 8) ||
+	    (dec_params->profile >= 2 &&
+	     (dec_params->bit_depth != 10 && dec_params->bit_depth != 12)))
+		return -EINVAL;
+
+	/* Profile 0 and 2 only accept YUV 4:2:0. */
+	if ((dec_params->profile == 0 || dec_params->profile == 2) &&
+	    (!(dec_params->flags & V4L2_VP9_FRAME_FLAG_X_SUBSAMPLING) ||
+	     !(dec_params->flags & V4L2_VP9_FRAME_FLAG_Y_SUBSAMPLING)))
+		return -EINVAL;
+
+	/* Profile 1 and 3 only accept YUV 4:2:2, 4:4:0 and 4:4:4. */
+	if ((dec_params->profile == 1 || dec_params->profile == 3) &&
+	    ((dec_params->flags & V4L2_VP9_FRAME_FLAG_X_SUBSAMPLING) &&
+	     (dec_params->flags & V4L2_VP9_FRAME_FLAG_Y_SUBSAMPLING)))
+		return -EINVAL;
+
+	if (dec_params->interpolation_filter > V4L2_VP9_INTERP_FILTER_SWITCHABLE)
+		return -EINVAL;
+
+	/*
+	 * According to the spec, tile_cols_log2 shall be less than or equal
+	 * to 6.
+	 */
+	if (dec_params->tile_cols_log2 > 6)
+		return -EINVAL;
+
+	if (dec_params->tx_mode > V4L2_VP9_TX_MODE_SELECT)
+		return -EINVAL;
+
+	if (dec_params->reference_mode > V4L2_VP9_REF_MODE_SELECT)
+		return -EINVAL;
+
+	for (i = 0; i < V4L2_REF_ID_CNT + 1; ++i)
+		if (dec_params->ref_frame_sign_bias[i] != 0 &&
+		    dec_params->ref_frame_sign_bias[i] != 1)
+			return -EINVAL;
+
+	ret = validate_vp9_lf_params(&dec_params->lf);
+	if (ret)
+		return ret;
+
+	ret = validate_vp9_quant_params(&dec_params->quant);
+	if (ret)
+		return ret;
+
+	ret = validate_vp9_seg_params(&dec_params->seg);
+	if (ret)
+		return ret;
+
+	zero_padding(*dec_params);
+	return 0;
+}
+
 /*
  * Compound controls validation requires setting unused fields/flags to zero
  * in order to properly detect unchanged controls with std_equal's memcmp.
@@ -2127,6 +2344,12 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 		zero_padding(p_vp8_frame->coder_state);
 		break;
 
+	case V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS:
+		break;
+
+	case V4L2_CTRL_TYPE_VP9_FRAME:
+		return validate_vp9_frame(p);
+
 	case V4L2_CTRL_TYPE_HEVC_SPS:
 		p_hevc_sps = p;
 
@@ -2938,6 +3161,12 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
 	case V4L2_CTRL_TYPE_VP8_FRAME:
 		elem_size = sizeof(struct v4l2_ctrl_vp8_frame);
 		break;
+	case V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS:
+		elem_size = sizeof(struct v4l2_ctrl_vp9_compressed_hdr_probs);
+		break;
+	case V4L2_CTRL_TYPE_VP9_FRAME:
+		elem_size = sizeof(struct v4l2_ctrl_vp9_frame);
+		break;
 	case V4L2_CTRL_TYPE_HEVC_SPS:
 		elem_size = sizeof(struct v4l2_ctrl_hevc_sps);
 		break;
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 6a5d1c6d11d6..dbdafa5ea127 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1431,6 +1431,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 		case V4L2_PIX_FMT_VP8:		descr = "VP8"; break;
 		case V4L2_PIX_FMT_VP8_FRAME:    descr = "VP8 Frame"; break;
 		case V4L2_PIX_FMT_VP9:		descr = "VP9"; break;
+		case V4L2_PIX_FMT_VP9_FRAME:    descr = "VP9 Frame"; break;
 		case V4L2_PIX_FMT_HEVC:		descr = "HEVC"; break; /* aka H.265 */
 		case V4L2_PIX_FMT_HEVC_SLICE:	descr = "HEVC Parsed Slice Data"; break;
 		case V4L2_PIX_FMT_FWHT:		descr = "FWHT"; break; /* used in vicodec */
diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
index a5953b812878..12864c795ebc 100644
--- a/include/media/v4l2-ctrls.h
+++ b/include/media/v4l2-ctrls.h
@@ -50,6 +50,8 @@ struct video_device;
  * @p_h264_decode_params:	Pointer to a struct v4l2_ctrl_h264_decode_params.
  * @p_h264_pred_weights:	Pointer to a struct v4l2_ctrl_h264_pred_weights.
  * @p_vp8_frame:		Pointer to a VP8 frame params structure.
+ * @p_vp9_compressed_hdr_probs:	Pointer to a VP9 frame compressed header probs structure.
+ * @p_vp9_frame:		Pointer to a VP9 frame params structure.
  * @p_hevc_sps:			Pointer to an HEVC sequence parameter set structure.
  * @p_hevc_pps:			Pointer to an HEVC picture parameter set structure.
  * @p_hevc_slice_params:	Pointer to an HEVC slice parameters structure.
@@ -79,6 +81,8 @@ union v4l2_ctrl_ptr {
 	struct v4l2_ctrl_hevc_sps *p_hevc_sps;
 	struct v4l2_ctrl_hevc_pps *p_hevc_pps;
 	struct v4l2_ctrl_hevc_slice_params *p_hevc_slice_params;
+	struct v4l2_ctrl_vp9_compressed_hdr_probs *p_vp9_compressed_hdr_probs;
+	struct v4l2_ctrl_vp9_frame *p_vp9_frame;
 	struct v4l2_ctrl_hdr10_cll_info *p_hdr10_cll;
 	struct v4l2_ctrl_hdr10_mastering_display *p_hdr10_mastering;
 	struct v4l2_area *p_area;
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index d43bec5f1afd..afdb924dcec7 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -1896,6 +1896,431 @@ struct v4l2_ctrl_hdr10_mastering_display {
 	__u32 min_display_mastering_luminance;
 };
 
+/* Stateless VP9 controls */
+
+/**
+ * enum v4l2_vp9_loop_filter_flags - VP9 loop filter flags
+ *
+ * @V4L2_VP9_LOOP_FILTER_FLAG_DELTA_ENABLED: the filter level depends on
+ *	the mode and reference frame used to predict a block
+ * @V4L2_VP9_LOOP_FILTER_FLAG_DELTA_UPDATE: the bitstream contains additional
+ *	syntax elements that specify which mode and reference frame deltas are to be updated
+ *
+ * Those are the flags you should pass to &v4l2_vp9_loop_filter.flags. See
+ * section '7.2.8 Loop filter semantics' of the VP9 specification for more
+ * details.
+ */
+enum v4l2_vp9_loop_filter_flags {
+	V4L2_VP9_LOOP_FILTER_FLAG_DELTA_ENABLED = 1 << 0,
+	V4L2_VP9_LOOP_FILTER_FLAG_DELTA_UPDATE = 1 << 1,
+};
+
+/**
+ * struct v4l2_vp9_loop_filter - VP9 loop filter parameters
+ *
+ * @flags: combination of V4L2_VP9_LOOP_FILTER_FLAG_* flags
+ * @level: indicates the loop filter strength
+ * @sharpness: indicates the sharpness level
+ * @ref_deltas: contains the adjustment needed for the filter level based on the chosen
+ *	reference frame
+ * @mode_deltas: contains the adjustment needed for the filter level based on the chosen mode
+ * @level_lookup: level lookup table
+ *
+ * This structure contains all loop filter related parameters. See sections
+ * '7.2.8 Loop filter semantics' and '8.8.1 Loop filter frame init process'
+ * of the VP9 specification for more details.
+ */
+struct v4l2_vp9_loop_filter {
+	__u8 flags;
+	__u8 level;
+	__u8 sharpness;
+	__s8 ref_deltas[4];
+	__s8 mode_deltas[2];
+	__u8 level_lookup[8][4][2];
+	__u8 padding;
+};
+
+/**
+ * struct v4l2_vp9_quantization - VP9 quantization parameters
+ *
+ * @base_q_idx: indicates the base frame qindex
+ * @delta_q_y_dc: indicates the Y DC quantizer relative to base_q_idx
+ * @delta_q_uv_dc: indicates the UV DC quantizer relative to base_q_idx
+ * @delta_q_uv_ac indicates the UV AC quantizer relative to base_q_idx
+ * @padding: padding bytes to align things on 64 bits. Must be set to 0
+ *
+ * Encodes the quantization parameters. See section '7.2.9 Quantization params
+ * syntax' of the VP9 specification for more details.
+ */
+struct v4l2_vp9_quantization {
+	__u8 base_q_idx;
+	__s8 delta_q_y_dc;
+	__s8 delta_q_uv_dc;
+	__s8 delta_q_uv_ac;
+	__u8 padding[4];
+};
+
+/**
+ * enum v4l2_vp9_segmentation_flags - VP9 segmentation flags
+ *
+ * @V4L2_VP9_SEGMENTATION_FLAG_ENABLED: indicates that this frame makes use of
+ *	the segmentation tool
+ * @V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP: indicates that the segmentation map
+ *	should be updated during the decoding of this frame
+ * @V4L2_VP9_SEGMENTATION_FLAG_TEMPORAL_UPDATE: indicates that the updates to
+ *	the segmentation map are coded relative to the existing segmentation map
+ * @V4L2_VP9_SEGMENTATION_FLAG_UPDATE_DATA: indicates that new parameters are
+ *	about to be specified for each segment
+ * @V4L2_VP9_SEGMENTATION_FLAG_ABS_OR_DELTA_UPDATE: indicates that the
+ *	segmentation parameters represent the actual values to be used
+ *
+ * Those are the flags you should pass to &v4l2_vp9_segmentation.flags. See
+ * section '7.2.10 Segmentation params syntax' of the VP9 specification for
+ * more details.
+ */
+enum v4l2_vp9_segmentation_flags {
+	V4L2_VP9_SEGMENTATION_FLAG_ENABLED = 1 << 0,
+	V4L2_VP9_SEGMENTATION_FLAG_UPDATE_MAP = 1 << 1,
+	V4L2_VP9_SEGMENTATION_FLAG_TEMPORAL_UPDATE = 1 << 2,
+	V4L2_VP9_SEGMENTATION_FLAG_UPDATE_DATA = 1 << 3,
+	V4L2_VP9_SEGMENTATION_FLAG_ABS_OR_DELTA_UPDATE = 1 << 4,
+};
+
+#define V4L2_VP9_SEGMENT_FEATURE_ENABLED(id)	(1 << (id))
+#define V4L2_VP9_SEGMENT_FEATURE_ENABLED_MASK	0xf
+
+/**
+ * enum v4l2_vp9_segment_feature - VP9 segment feature IDs
+ *
+ * @V4L2_VP9_SEGMENT_FEATURE_QP_DELTA: QP delta segment feature
+ * @V4L2_VP9_SEGMENT_FEATURE_LF: loop filter segment feature
+ * @V4L2_VP9_SEGMENT_FEATURE_REF_FRAME: reference frame segment feature
+ * @V4L2_VP9_SEGMENT_FEATURE_SKIP: skip segment feature
+ * @V4L2_VP9_SEGMENT_FEATURE_CNT: number of segment features
+ *
+ * Segment feature IDs. See section '7.2.10 Segmentation params syntax' of the
+ * VP9 specification for more details.
+ */
+enum v4l2_vp9_segment_feature {
+	V4L2_VP9_SEGMENT_FEATURE_QP_DELTA,
+	V4L2_VP9_SEGMENT_FEATURE_LF,
+	V4L2_VP9_SEGMENT_FEATURE_REF_FRAME,
+	V4L2_VP9_SEGMENT_FEATURE_SKIP,
+	V4L2_VP9_SEGMENT_FEATURE_CNT,
+};
+
+/**
+ * struct v4l2_vp9_segmentation - VP9 segmentation parameters
+ *
+ * @flags: combination of V4L2_VP9_SEGMENTATION_FLAG_* flags
+ * @tree_probs: specifies the probability values to be used when
+ *	decoding a Segment-ID. See '5.15. Segmentation map' section of the VP9 specification
+ *	for more details.
+ * @pred_prob: specifies the probability values to be used when decoding a
+ *	Predicted-Segment-ID. See '6.4.14. Get segment id syntax' section of :ref:`vp9`
+ *	for more details.
+ * @padding: padding used to make things aligned on 64 bits. Shall be zero filled
+ * @feature_enabled: bitmask defining which features are enabled in each segment
+ * @feature_data: data attached to each feature. Data entry is only valid if the feature is enabled
+ *
+ * Encodes the quantization parameters. See section '7.2.10 Segmentation params syntax' of
+ * the VP9 specification for more details.
+ */
+struct v4l2_vp9_segmentation {
+	__u8 flags;
+	__u8 tree_probs[7];
+	__u8 pred_probs[3];
+	__u8 padding[5];
+	__u8 feature_enabled[8];
+	__s16 feature_data[8][4];
+};
+
+/**
+ * enum v4l2_vp9_intra_prediction_mode - VP9 Intra prediction modes
+ *
+ * @V4L2_VP9_INTRA_PRED_DC: DC intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_V: vertical intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_H: horizontal intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_D45: D45 intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_D135: D135 intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_D117: D117 intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_D153: D153 intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_D207: D207 intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_D63: D63 intra prediction
+ * @V4L2_VP9_INTRA_PRED_MODE_TM: True Motion intra prediction
+ *
+ * See section '7.4.5 Intra frame mode info semantics' for more details.
+ */
+enum v4l2_vp9_intra_prediction_mode {
+	V4L2_VP9_INTRA_PRED_MODE_DC,
+	V4L2_VP9_INTRA_PRED_MODE_V,
+	V4L2_VP9_INTRA_PRED_MODE_H,
+	V4L2_VP9_INTRA_PRED_MODE_D45,
+	V4L2_VP9_INTRA_PRED_MODE_D135,
+	V4L2_VP9_INTRA_PRED_MODE_D117,
+	V4L2_VP9_INTRA_PRED_MODE_D153,
+	V4L2_VP9_INTRA_PRED_MODE_D207,
+	V4L2_VP9_INTRA_PRED_MODE_D63,
+	V4L2_VP9_INTRA_PRED_MODE_TM,
+};
+
+/**
+ * enum v4l2_vp9_reset_frame_context - Valid values for
+ *			&v4l2_ctrl_vp9_frame->reset_frame_context
+ *
+ * @V4L2_VP9_RESET_FRAME_CTX_NONE: don't reset any frame context
+ * @V4L2_VP9_RESET_FRAME_CTX_SPEC: reset the frame context pointed by
+ *	&v4l2_ctrl_vp9_frame.frame_context_idx
+ * @V4L2_VP9_RESET_FRAME_CTX_ALL: reset all frame contexts
+ *
+ * See section '7.2 Uncompressed header semantics' of the VP9 specification for more details.
+ */
+enum v4l2_vp9_reset_frame_context {
+	V4L2_VP9_RESET_FRAME_CTX_NONE,
+	V4L2_VP9_RESET_FRAME_CTX_SPEC,
+	V4L2_VP9_RESET_FRAME_CTX_ALL,
+};
+
+/**
+ * enum v4l2_vp9_interpolation_filter - VP9 interpolation filter types
+ *
+ * @V4L2_VP9_INTERP_FILTER_8TAP: height tap filter
+ * @V4L2_VP9_INTERP_FILTER_8TAP_SMOOTH: height tap smooth filter
+ * @V4L2_VP9_INTERP_FILTER_8TAP_SHARP: height tap sharp filter
+ * @V4L2_VP9_INTERP_FILTER_BILINEAR: bilinear filter
+ * @V4L2_VP9_INTERP_FILTER_SWITCHABLE: filter selection is signaled at the block level
+ *
+ * See section '7.2.7 Interpolation filter semantics' of the VP9 specification
+ * for more details.
+ */
+enum v4l2_vp9_interpolation_filter {
+	V4L2_VP9_INTERP_FILTER_8TAP,
+	V4L2_VP9_INTERP_FILTER_8TAP_SMOOTH,
+	V4L2_VP9_INTERP_FILTER_8TAP_SHARP,
+	V4L2_VP9_INTERP_FILTER_BILINEAR,
+	V4L2_VP9_INTERP_FILTER_SWITCHABLE,
+};
+
+/**
+ * enum v4l2_vp9_reference_mode - VP9 reference modes
+ *
+ * @V4L2_VP9_REF_MODE_SINGLE: indicates that all the inter blocks use only a
+ *	single reference frame to generate motion compensated prediction
+ * @V4L2_VP9_REF_MODE_COMPOUND: requires all the inter blocks to use compound mode.
+ *	Single reference frame prediction is not allowed
+ * @V4L2_VP9_REF_MODE_SELECT: allows each individual inter block to select between single
+ *	and compound prediction modes
+ *
+ * See section '7.3.6 Frame reference mode semantics' of the VP9 specification
+ * for more details.
+ */
+enum v4l2_vp9_reference_mode {
+	V4L2_VP9_REF_MODE_SINGLE,
+	V4L2_VP9_REF_MODE_COMPOUND,
+	V4L2_VP9_REF_MODE_SELECT,
+};
+
+/**
+ * enum v4l2_vp9_tx_mode - VP9 TX modes
+ *
+ * @V4L2_VP9_TX_MODE_ONLY_4X4: transform size is 4x4
+ * @V4L2_VP9_TX_MODE_ALLOW_8X8: transform size can be up to 8x8
+ * @V4L2_VP9_TX_MODE_ALLOW_16X16: transform size can be up to 16x16
+ * @V4L2_VP9_TX_MODE_ALLOW_32X32: transform size can be up to 32x32
+ * @V4L2_VP9_TX_MODE_SELECT: bitstream contains the transform size for each block
+ *
+ * See section '7.3.1 Tx mode semantics' of the VP9 specification for more details.
+ */
+enum v4l2_vp9_tx_mode {
+	V4L2_VP9_TX_MODE_ONLY_4X4,
+	V4L2_VP9_TX_MODE_ALLOW_8X8,
+	V4L2_VP9_TX_MODE_ALLOW_16X16,
+	V4L2_VP9_TX_MODE_ALLOW_32X32,
+	V4L2_VP9_TX_MODE_SELECT,
+};
+
+/**
+ * enum v4l2_vp9_ref_id - VP9 Reference frame IDs
+ *
+ * @V4L2_REF_ID_LAST: last reference frame
+ * @V4L2_REF_ID_GOLDEN: golden reference frame
+ * @V4L2_REF_ID_ALTREF: alternative reference frame
+ * @V4L2_REF_ID_CNT: number of reference frames
+ *
+ * See section '7.4.12 Ref frames semantics' of the VP9 specification for more details.
+ */
+enum v4l2_vp9_ref_id {
+	V4L2_REF_ID_LAST,
+	V4L2_REF_ID_GOLDEN,
+	V4L2_REF_ID_ALTREF,
+	V4L2_REF_ID_CNT,
+};
+
+/**
+ * enum v4l2_vp9_frame_flags - VP9 frame flags
+ * @V4L2_VP9_FRAME_FLAG_KEY_FRAME: the frame is a key frame
+ * @V4L2_VP9_FRAME_FLAG_SHOW_FRAME: the frame should be displayed
+ * @V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT: the decoding should be error resilient
+ * @V4L2_VP9_FRAME_FLAG_INTRA_ONLY: the frame does not reference other frames
+ * @V4L2_VP9_FRAME_FLAG_ALLOW_HIGH_PREC_MV: the frame can use high precision motion vectors
+ * @V4L2_VP9_FRAME_FLAG_REFRESH_FRAME_CTX: frame context should be updated after decoding
+ * @V4L2_VP9_FRAME_FLAG_PARALLEL_DEC_MODE: parallel decoding is used
+ * @V4L2_VP9_FRAME_FLAG_X_SUBSAMPLING: vertical subsampling is enabled
+ * @V4L2_VP9_FRAME_FLAG_Y_SUBSAMPLING: horizontal subsampling is enabled
+ * @V4L2_VP9_FRAME_FLAG_COLOR_RANGE_FULL_SWING: full UV range is used
+ *
+ * Check the VP9 specification for more details.
+ */
+enum v4l2_vp9_frame_flags {
+	V4L2_VP9_FRAME_FLAG_KEY_FRAME = 1 << 0,
+	V4L2_VP9_FRAME_FLAG_SHOW_FRAME = 1 << 1,
+	V4L2_VP9_FRAME_FLAG_ERROR_RESILIENT = 1 << 2,
+	V4L2_VP9_FRAME_FLAG_INTRA_ONLY = 1 << 3,
+	V4L2_VP9_FRAME_FLAG_ALLOW_HIGH_PREC_MV = 1 << 4,
+	V4L2_VP9_FRAME_FLAG_REFRESH_FRAME_CTX = 1 << 5,
+	V4L2_VP9_FRAME_FLAG_PARALLEL_DEC_MODE = 1 << 6,
+	V4L2_VP9_FRAME_FLAG_X_SUBSAMPLING = 1 << 7,
+	V4L2_VP9_FRAME_FLAG_Y_SUBSAMPLING = 1 << 8,
+	V4L2_VP9_FRAME_FLAG_COLOR_RANGE_FULL_SWING = 1 << 9,
+};
+
+#define V4L2_VP9_PROFILE_MAX		3
+
+#define V4L2_CID_STATELESS_VP9_FRAME	(V4L2_CID_CODEC_STATELESS_BASE + 300)
+/**
+ * struct v4l2_ctrl_vp9_frame - VP9 frame decoding control
+ *
+ * @flags: combination of V4L2_VP9_FRAME_FLAG_* flags
+ * @compressed_header_size: compressed header size in bytes
+ * @uncompressed_header_size: uncompressed header size in bytes
+ * @profile: VP9 profile. Can be 0, 1, 2 or 3
+ * @reset_frame_context: specifies whether the frame context should be reset to default values.
+ *	See &v4l2_vp9_reset_frame_context for more details
+ * @frame_context_idx: frame context that should be used/updated
+ * @bit_depth: bits per components. Can be 8, 10 or 12. Note that not all profiles support
+ *	10 and/or 12 bits depths
+ * @interpolation_filter: specifies the filter selection used for performing inter prediction.
+ *	See &v4l2_vp9_interpolation_filter for more details
+ * @tile_cols_log2: specifies the base 2 logarithm of the width of each tile (where the width
+ *	is measured in units of 8x8 blocks). Shall be less than or equal to 6
+ * @tile_rows_log2: specifies the base 2 logarithm of the height of each tile (where the height
+ *	is measured in units of 8x8 blocks)
+ * @tx_mode: specifies the TX mode. See &v4l2_vp9_tx_mode for more details
+ * @reference_mode: specifies the type of inter prediction to be used. See
+ *	&v4l2_vp9_reference_mode for more details
+ * @padding: needed to make this struct 64 bit aligned. Shall be filled with zeros
+ * @frame_width_minus_1: add 1 to it and you'll get the frame width expressed in pixels
+ * @frame_height_minus_1: add 1 to it and you'll get the frame height expressed in pixels
+ * @render_width_minus_1: add 1 to it and you'll get the expected render width expressed in
+ *	pixels. This is not used during the decoding process but might be used by HW scalers
+ *	to prepare a frame that's ready for scanout
+ * @render_height_minus_1: add 1 to it and you'll get the expected render height expressed in
+ *	pixels. This is not used during the decoding process but might be used by HW scalers
+ *	to prepare a frame that's ready for scanout
+ * @refs: array of ref frames timestamps. See &v4l2_vp9_ref_id for more details
+ * @ref_frame_sign_bias: array of reference frames motion vector sign bias (prediction direction)
+ * @lf: loop filter parameters. See &v4l2_vp9_loop_filter for more details
+ * @quant: quantization parameters. See &v4l2_vp9_quantization for more details
+ * @seg: segmentation parameters. See &v4l2_vp9_segmentation for more details
+ */
+struct v4l2_ctrl_vp9_frame {
+	__u32 flags;
+	__u16 compressed_header_size;
+	__u16 uncompressed_header_size;
+	__u8 profile;
+	__u8 reset_frame_context;
+	__u8 frame_context_idx;
+	__u8 bit_depth;
+	__u8 interpolation_filter;
+	__u8 tile_cols_log2;
+	__u8 tile_rows_log2;
+	__u8 tx_mode;
+	__u8 reference_mode;
+	__u8 padding[7];
+	__u16 frame_width_minus_1;
+	__u16 frame_height_minus_1;
+	__u16 render_width_minus_1;
+	__u16 render_height_minus_1;
+	__u64 refs[V4L2_REF_ID_CNT];
+	__u8 ref_frame_sign_bias[V4L2_REF_ID_CNT + 1];
+	struct v4l2_vp9_loop_filter lf;
+	struct v4l2_vp9_quantization quant;
+	struct v4l2_vp9_segmentation seg;
+};
+
+#define V4L2_VP9_NUM_FRAME_CTX	4
+
+/**
+ * struct v4l2_vp9_mv_compressed_hdr_probs - VP9 Motion vector probability updates
+ * @joint: motion vector joint probability updates
+ * @sign: motion vector sign probability updates
+ * @class: motion vector class probability updates
+ * @class0_bit: motion vector class0 bit probability updates
+ * @bits: motion vector bits probability updates
+ * @class0_fr: motion vector class0 fractional bit probability updates
+ * @fr: motion vector fractional bit probability updates
+ * @class0_hp: motion vector class0 high precision fractional bit probability updates
+ * @hp: motion vector high precision fractional bit probability updates
+ *
+ * This structure contains new values of motion vector probabilities.
+ * A value of zero in an array element means there is no update of the relevant probability.
+ * See `struct v4l2_vp9_prob_updates` for details.
+ */
+struct v4l2_vp9_mv_compressed_hdr_probs {
+	__u8 joint[3];
+	__u8 sign[2];
+	__u8 class[2][10];
+	__u8 class0_bit[2];
+	__u8 bits[2][10];
+	__u8 class0_fr[2][2][3];
+	__u8 fr[2][3];
+	__u8 class0_hp[2];
+	__u8 hp[2];
+};
+
+#define V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS	(V4L2_CID_CODEC_STATELESS_BASE + 301)
+/**
+ * struct v4l2_ctrl_vp9_compressed_hdr_probs - VP9 probability updates control
+ * @tx8: TX 8x8 probability updates
+ * @tx16: TX 16x16 probability updates
+ * @tx32: TX 32x32 probability updates
+ * @coef: coefficient probability updates
+ * @skip: skip probability updates
+ * @inter_mode: inter mode probability updates
+ * @interp_filter: interpolation filter probability updates
+ * @is_inter: is inter-block probability updates
+ * @comp_mode: compound prediction mode probability updates
+ * @single_ref: single ref probability updates
+ * @comp_ref: compound ref probability updates
+ * @y_mode: Y prediction mode probability updates
+ * @uv_mode: UV prediction mode probability updates
+ * @partition: partition probability updates
+ * @mv: motion vector probability updates
+ *
+ * This structure holds the probabilities update as parsed in the compressed
+ * header (Spec 6.3). These values represent the value of probability update after
+ * being translated with inv_map_table[] (see 6.3.5). A value of zero in an array element
+ * means that there is no update of the relevant probability.
+ */
+struct v4l2_ctrl_vp9_compressed_hdr_probs {
+	__u8 tx8[2][1];
+	__u8 tx16[2][2];
+	__u8 tx32[2][3];
+	__u8 coef[4][2][2][6][6][3];
+	__u8 skip[3];
+	__u8 inter_mode[7][3];
+	__u8 interp_filter[4][2];
+	__u8 is_inter[4];
+	__u8 comp_mode[5];
+	__u8 single_ref[5][2];
+	__u8 comp_ref[5];
+	__u8 y_mode[4][9];
+	__u8 uv_mode[10][9];
+	__u8 partition[16][3];
+
+	struct v4l2_vp9_mv_compressed_hdr_probs mv;
+};
+
 /* MPEG-compression definitions kept for backwards compatibility */
 #ifndef __KERNEL__
 #define V4L2_CTRL_CLASS_MPEG            V4L2_CTRL_CLASS_CODEC
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 311a01cc5775..cebdae888cf7 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -697,6 +697,7 @@ struct v4l2_pix_format {
 #define V4L2_PIX_FMT_VP8      v4l2_fourcc('V', 'P', '8', '0') /* VP8 */
 #define V4L2_PIX_FMT_VP8_FRAME v4l2_fourcc('V', 'P', '8', 'F') /* VP8 parsed frame */
 #define V4L2_PIX_FMT_VP9      v4l2_fourcc('V', 'P', '9', '0') /* VP9 */
+#define V4L2_PIX_FMT_VP9_FRAME v4l2_fourcc('V', 'P', '9', 'F') /* VP9 parsed frame */
 #define V4L2_PIX_FMT_HEVC     v4l2_fourcc('H', 'E', 'V', 'C') /* HEVC aka H.265 */
 #define V4L2_PIX_FMT_FWHT     v4l2_fourcc('F', 'W', 'H', 'T') /* Fast Walsh Hadamard Transform (vicodec) */
 #define V4L2_PIX_FMT_FWHT_STATELESS     v4l2_fourcc('S', 'F', 'W', 'H') /* Stateless FWHT (vicodec) */
@@ -1747,6 +1748,8 @@ struct v4l2_ext_control {
 		struct v4l2_ctrl_h264_decode_params __user *p_h264_decode_params;
 		struct v4l2_ctrl_fwht_params __user *p_fwht_params;
 		struct v4l2_ctrl_vp8_frame __user *p_vp8_frame;
+		struct v4l2_ctrl_vp9_compressed_hdr_probs __user *p_vp9_compressed_hdr_probs;
+		struct v4l2_ctrl_vp9_frame __user *p_vp9_frame;
 		void __user *ptr;
 	};
 } __attribute__ ((packed));
@@ -1807,6 +1810,9 @@ enum v4l2_ctrl_type {
 	V4L2_CTRL_TYPE_FWHT_PARAMS	    = 0x0220,
 
 	V4L2_CTRL_TYPE_VP8_FRAME            = 0x0240,
+
+	V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS	= 0x0260,
+	V4L2_CTRL_TYPE_VP9_FRAME		= 0x0261,
 };
 
 /*  Used in the VIDIOC_QUERYCTRL ioctl for querying controls */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
