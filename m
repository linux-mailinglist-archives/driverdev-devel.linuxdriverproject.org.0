Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB0D2A3F0
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 13:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E62985644;
	Sat, 25 May 2019 11:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E-vlsei_xGtR; Sat, 25 May 2019 11:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB61A84CA5;
	Sat, 25 May 2019 11:08:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B31EB1BF408
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 11:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA7D284B62
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 11:08:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s2SxOuxL1fw7 for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 11:08:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0762E84AAB
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 11:08:14 +0000 (UTC)
Received: from [IPv6:2001:983:e9a7:1:6081:f7d7:b93c:24af]
 ([IPv6:2001:983:e9a7:1:6081:f7d7:b93c:24af])
 by smtp-cloud9.xs4all.net with ESMTPA
 id UUWxhP65WsDWyUUWyhUD0r; Sat, 25 May 2019 13:08:12 +0200
Subject: Re: [PATCH v5 1/4] media: v4l: Add definitions for the HEVC slice
 controls
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
References: <20190524093635.1832-1-paul.kocialkowski@bootlin.com>
 <20190524093635.1832-2-paul.kocialkowski@bootlin.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0f558edf-0296-8f34-b80b-325350e594bb@xs4all.nl>
Date: Sat, 25 May 2019 13:08:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524093635.1832-2-paul.kocialkowski@bootlin.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfOqFeJ2urR8KYJYtVCnZXDvYFn5bqrIfrBcDV2174BAxWkhkRKA5qXIJCvMtIuLSqtcA2qSHESBVsp8lQXYOwswMQT6GHw16QJZ1foCjYghO9urmYw6o
 qyhjkT4j4X8zul8IJ+ew4GHas1U1Pc0JInIGI8pxqrsc6sduJVSgl9XOSND8v/OewxqBWqIdFBqGuffVDqjl8Jq50s99RY8IqmfpOz0zwxEzPADJb/RFc3kN
 lPDUo3KesrD0rrvCidQxOfGL63NLnY7tgOPHnpOuXlP5+71SHCTH6pWRQ7GiK7tafcpNnu+dC0q/LxJxlp6ejfYWLL25Ys64/guAWhmgUHeCQ0HO2HHwFRT/
 tDOpWiRDc2Ck9MKeBEXZRkzL7dAsjd3AuJwqXSEIQBbEvQUSpPb4YmhFOYqpX9n8T82ackjT5zyo85rWSz5kBEKc8iksj3jytFwGwOiy/q+/fpKVMzrFK9UJ
 +cI/xYFLC11ZI8Kb0YVNoWoYGBszboafwec1/ME/eKDgTv/0g1lWZhJC+0Say47/aRGO7Yca5XCyazjPy8HPP8Gw24IXWqfoCSRby1D4Upj7kqnZRpmjwv4+
 F4vOtJQOgy4bkKFOYLloSNLzL+6KvOc3/gLuFAb4kMB2gLsNluwgLlqUfJCVJ/Q8sKI3i/XTOo/HYZMVuYcGYH2bXeZhGbcMJzmOcBaXoDBzi5MF5us4iOf6
 Eqw2olZ1NK5uUxg7ySH4dmrJstszFF8HTgqz+STEpYuvGlApYbvqiM15VfjhZs2twPR3FeetxYdeivHww+fsQPkGJbfq5kUqMQTKOY3qZq7MATmM7Y9Lf/VR
 SkmXuv+YkPkfATOIlYlolQdUvUe2NTE7ocjL+eqcDMOSTytLjzf9CkEghx/+Jw==
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wens@csie.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Paul,

This patch is missing your Signed-of-by line! Can you reply with your SoB?

Regards,

	Hans

On 5/24/19 11:36 AM, Paul Kocialkowski wrote:
> This introduces the required definitions for HEVC decoding support with
> stateless VPUs. The controls associated to the HEVC slice format provide
> the required meta-data for decoding slices extracted from the bitstream.
> 
> They are not exported to the public V4L2 API since reworking this API
> will be needed for covering various use-cases and new hardware.
> 
> The interface comes with the following limitations:
> * No custom quantization matrices (scaling lists);
> * Support for a single temporal layer only;
> * No slice entry point offsets support;
> * No conformance window support;
> * No VUI parameters support;
> * No support for SPS extensions: range, multilayer, 3d, scc, 4 bits;
> * No support for PPS extensions: range, multilayer, 3d, scc, 4 bits.
> ---
>  Documentation/media/uapi/v4l/biblio.rst       |   9 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 429 +++++++++++++++++-
>  .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
>  .../media/videodev2.h.rst.exceptions          |   3 +
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  26 ++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
>  include/media/hevc-ctrls.h                    | 182 ++++++++
>  include/media/v4l2-ctrls.h                    |   7 +
>  8 files changed, 672 insertions(+), 3 deletions(-)
>  create mode 100644 include/media/hevc-ctrls.h
> 
> diff --git a/Documentation/media/uapi/v4l/biblio.rst b/Documentation/media/uapi/v4l/biblio.rst
> index 8f4eb8823d82..e38ef5ee4209 100644
> --- a/Documentation/media/uapi/v4l/biblio.rst
> +++ b/Documentation/media/uapi/v4l/biblio.rst
> @@ -131,6 +131,15 @@ ITU-T Rec. H.264 Specification (04/2017 Edition)
>  
>  :author:    International Telecommunication Union (http://www.itu.ch)
>  
> +.. _hevc:
> +
> +ITU H.265/HEVC
> +==============
> +
> +:title:     ITU-T Rec. H.265 | ISO/IEC 23008-2 "High Efficiency Video Coding"
> +
> +:author:    International Telecommunication Union (http://www.itu.ch), International Organisation for Standardisation (http://www.iso.ch)
> +
>  .. _jfif:
>  
>  JFIF
> diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> index b0c178f0ff9b..19e5bfba888b 100644
> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> @@ -1981,9 +1981,9 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>        - ``reference_ts``
>        - Timestamp of the V4L2 capture buffer to use as reference, used
>          with B-coded and P-coded frames. The timestamp refers to the
> -	``timestamp`` field in struct :c:type:`v4l2_buffer`. Use the
> -	:c:func:`v4l2_timeval_to_ns()` function to convert the struct
> -	:c:type:`timeval` in struct :c:type:`v4l2_buffer` to a __u64.
> +        ``timestamp`` field in struct :c:type:`v4l2_buffer`. Use the
> +        :c:func:`v4l2_timeval_to_ns()` function to convert the struct
> +        :c:type:`timeval` in struct :c:type:`v4l2_buffer` to a __u64.
>      * - __u16
>        - ``frame_num``
>        -
> @@ -3291,3 +3291,426 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      Indicates whether to generate SPS and PPS at every IDR. Setting it to 0
>      disables generating SPS and PPS at every IDR. Setting it to one enables
>      generating SPS and PPS at every IDR.
> +
> +.. _v4l2-mpeg-hevc:
> +
> +``V4L2_CID_MPEG_VIDEO_HEVC_SPS (struct)``
> +    Specifies the Sequence Parameter Set fields (as extracted from the
> +    bitstream) for the associated HEVC slice data.
> +    These bitstream parameters are defined according to :ref:`hevc`.
> +    They are described in section 7.4.3.2 "Sequence parameter set RBSP
> +    semantics" of the specification.
> +
> +.. c:type:: v4l2_ctrl_hevc_sps
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_ctrl_hevc_sps
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u8
> +      - ``chroma_format_idc``
> +      -
> +    * - __u8
> +      - ``separate_colour_plane_flag``
> +      -
> +    * - __u16
> +      - ``pic_width_in_luma_samples``
> +      -
> +    * - __u16
> +      - ``pic_height_in_luma_samples``
> +      -
> +    * - __u8
> +      - ``bit_depth_luma_minus8``
> +      -
> +    * - __u8
> +      - ``bit_depth_chroma_minus8``
> +      -
> +    * - __u8
> +      - ``log2_max_pic_order_cnt_lsb_minus4``
> +      -
> +    * - __u8
> +      - ``sps_max_dec_pic_buffering_minus1``
> +      -
> +    * - __u8
> +      - ``sps_max_num_reorder_pics``
> +      -
> +    * - __u8
> +      - ``sps_max_latency_increase_plus1``
> +      -
> +    * - __u8
> +      - ``log2_min_luma_coding_block_size_minus3``
> +      -
> +    * - __u8
> +      - ``log2_diff_max_min_luma_coding_block_size``
> +      -
> +    * - __u8
> +      - ``log2_min_luma_transform_block_size_minus2``
> +      -
> +    * - __u8
> +      - ``log2_diff_max_min_luma_transform_block_size``
> +      -
> +    * - __u8
> +      - ``max_transform_hierarchy_depth_inter``
> +      -
> +    * - __u8
> +      - ``max_transform_hierarchy_depth_intra``
> +      -
> +    * - __u8
> +      - ``scaling_list_enabled_flag``
> +      -
> +    * - __u8
> +      - ``amp_enabled_flag``
> +      -
> +    * - __u8
> +      - ``sample_adaptive_offset_enabled_flag``
> +      -
> +    * - __u8
> +      - ``pcm_enabled_flag``
> +      -
> +    * - __u8
> +      - ``pcm_sample_bit_depth_luma_minus1``
> +      -
> +    * - __u8
> +      - ``pcm_sample_bit_depth_chroma_minus1``
> +      -
> +    * - __u8
> +      - ``log2_min_pcm_luma_coding_block_size_minus3``
> +      -
> +    * - __u8
> +      - ``log2_diff_max_min_pcm_luma_coding_block_size``
> +      -
> +    * - __u8
> +      - ``pcm_loop_filter_disabled_flag``
> +      -
> +    * - __u8
> +      - ``num_short_term_ref_pic_sets``
> +      -
> +    * - __u8
> +      - ``long_term_ref_pics_present_flag``
> +      -
> +    * - __u8
> +      - ``num_long_term_ref_pics_sps``
> +      -
> +    * - __u8
> +      - ``sps_temporal_mvp_enabled_flag``
> +      -
> +    * - __u8
> +      - ``strong_intra_smoothing_enabled_flag``
> +      -
> +
> +``V4L2_CID_MPEG_VIDEO_HEVC_PPS (struct)``
> +    Specifies the Picture Parameter Set fields (as extracted from the
> +    bitstream) for the associated HEVC slice data.
> +    These bitstream parameters are defined according to :ref:`hevc`.
> +    They are described in section 7.4.3.3 "Picture parameter set RBSP
> +    semantics" of the specification.
> +
> +.. c:type:: v4l2_ctrl_hevc_pps
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_ctrl_hevc_pps
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u8
> +      - ``dependent_slice_segment_flag``
> +      -
> +    * - __u8
> +      - ``output_flag_present_flag``
> +      -
> +    * - __u8
> +      - ``num_extra_slice_header_bits``
> +      -
> +    * - __u8
> +      - ``sign_data_hiding_enabled_flag``
> +      -
> +    * - __u8
> +      - ``cabac_init_present_flag``
> +      -
> +    * - __s8
> +      - ``init_qp_minus26``
> +      -
> +    * - __u8
> +      - ``constrained_intra_pred_flag``
> +      -
> +    * - __u8
> +      - ``transform_skip_enabled_flag``
> +      -
> +    * - __u8
> +      - ``cu_qp_delta_enabled_flag``
> +      -
> +    * - __u8
> +      - ``diff_cu_qp_delta_depth``
> +      -
> +    * - __s8
> +      - ``pps_cb_qp_offset``
> +      -
> +    * - __s8
> +      - ``pps_cr_qp_offset``
> +      -
> +    * - __u8
> +      - ``pps_slice_chroma_qp_offsets_present_flag``
> +      -
> +    * - __u8
> +      - ``weighted_pred_flag``
> +      -
> +    * - __u8
> +      - ``weighted_bipred_flag``
> +      -
> +    * - __u8
> +      - ``transquant_bypass_enabled_flag``
> +      -
> +    * - __u8
> +      - ``tiles_enabled_flag``
> +      -
> +    * - __u8
> +      - ``entropy_coding_sync_enabled_flag``
> +      -
> +    * - __u8
> +      - ``num_tile_columns_minus1``
> +      -
> +    * - __u8
> +      - ``num_tile_rows_minus1``
> +      -
> +    * - __u8
> +      - ``column_width_minus1[20]``
> +      -
> +    * - __u8
> +      - ``row_height_minus1[22]``
> +      -
> +    * - __u8
> +      - ``loop_filter_across_tiles_enabled_flag``
> +      -
> +    * - __u8
> +      - ``pps_loop_filter_across_slices_enabled_flag``
> +      -
> +    * - __u8
> +      - ``deblocking_filter_override_enabled_flag``
> +      -
> +    * - __u8
> +      - ``pps_disable_deblocking_filter_flag``
> +      -
> +    * - __s8
> +      - ``pps_beta_offset_div2``
> +      -
> +    * - __s8
> +      - ``pps_tc_offset_div2``
> +      -
> +    * - __u8
> +      - ``lists_modification_present_flag``
> +      -
> +    * - __u8
> +      - ``log2_parallel_merge_level_minus2``
> +      -
> +    * - __u8
> +      - ``slice_segment_header_extension_present_flag``
> +      -
> +
> +``V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS (struct)``
> +    Specifies various slice-specific parameters, especially from the NAL unit
> +    header, general slice segment header and weighted prediction parameter
> +    parts of the bitstream.
> +    These bitstream parameters are defined according to :ref:`hevc`.
> +    They are described in section 7.4.7 "General slice segment header
> +    semantics" of the specification.
> +
> +.. c:type:: v4l2_ctrl_hevc_slice_params
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_ctrl_hevc_slice_params
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u32
> +      - ``bit_size``
> +      - Size (in bits) of the current slice data.
> +    * - __u32
> +      - ``data_bit_offset``
> +      - Offset (in bits) to the video data in the current slice data.
> +    * - __u8
> +      - ``nal_unit_type``
> +      -
> +    * - __u8
> +      - ``nuh_temporal_id_plus1``
> +      -
> +    * - __u8
> +      - ``slice_type``
> +      -
> +	(V4L2_HEVC_SLICE_TYPE_I, V4L2_HEVC_SLICE_TYPE_P or
> +	V4L2_HEVC_SLICE_TYPE_B).
> +    * - __u8
> +      - ``colour_plane_id``
> +      -
> +    * - __u16
> +      - ``slice_pic_order_cnt``
> +      -
> +    * - __u8
> +      - ``slice_sao_luma_flag``
> +      -
> +    * - __u8
> +      - ``slice_sao_chroma_flag``
> +      -
> +    * - __u8
> +      - ``slice_temporal_mvp_enabled_flag``
> +      -
> +    * - __u8
> +      - ``num_ref_idx_l0_active_minus1``
> +      -
> +    * - __u8
> +      - ``num_ref_idx_l1_active_minus1``
> +      -
> +    * - __u8
> +      - ``mvd_l1_zero_flag``
> +      -
> +    * - __u8
> +      - ``cabac_init_flag``
> +      -
> +    * - __u8
> +      - ``collocated_from_l0_flag``
> +      -
> +    * - __u8
> +      - ``collocated_ref_idx``
> +      -
> +    * - __u8
> +      - ``five_minus_max_num_merge_cand``
> +      -
> +    * - __u8
> +      - ``use_integer_mv_flag``
> +      -
> +    * - __s8
> +      - ``slice_qp_delta``
> +      -
> +    * - __s8
> +      - ``slice_cb_qp_offset``
> +      -
> +    * - __s8
> +      - ``slice_cr_qp_offset``
> +      -
> +    * - __s8
> +      - ``slice_act_y_qp_offset``
> +      -
> +    * - __s8
> +      - ``slice_act_cb_qp_offset``
> +      -
> +    * - __s8
> +      - ``slice_act_cr_qp_offset``
> +      -
> +    * - __u8
> +      - ``slice_deblocking_filter_disabled_flag``
> +      -
> +    * - __s8
> +      - ``slice_beta_offset_div2``
> +      -
> +    * - __s8
> +      - ``slice_tc_offset_div2``
> +      -
> +    * - __u8
> +      - ``slice_loop_filter_across_slices_enabled_flag``
> +      -
> +    * - __u8
> +      - ``pic_struct``
> +      -
> +    * - struct :c:type:`v4l2_hevc_dpb_entry`
> +      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> +      - The decoded picture buffer, for meta-data about reference frames.
> +    * - __u8
> +      - ``num_active_dpb_entries``
> +      - The number of entries in ``dpb``.
> +    * - __u8
> +      - ``ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> +      - The list of L0 reference elements as indices in the DPB.
> +    * - __u8
> +      - ``ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> +      - The list of L1 reference elements as indices in the DPB.
> +    * - __u8
> +      - ``num_rps_poc_st_curr_before``
> +      - The number of reference pictures in the short-term set that come before
> +        the current frame.
> +    * - __u8
> +      - ``num_rps_poc_st_curr_after``
> +      - The number of reference pictures in the short-term set that come after
> +        the current frame.
> +    * - __u8
> +      - ``num_rps_poc_lt_curr``
> +      - The number of reference pictures in the long-term set.
> +    * - struct :c:type:`v4l2_hevc_pred_weight_table`
> +      - ``pred_weight_table``
> +      - The prediction weight coefficients for inter-picture prediction.
> +
> +.. c:type:: v4l2_hevc_dpb_entry
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_hevc_dpb_entry
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u64
> +      - ``timestamp``
> +      - Timestamp of the V4L2 capture buffer to use as reference, used
> +        with B-coded and P-coded frames. The timestamp refers to the
> +	``timestamp`` field in struct :c:type:`v4l2_buffer`. Use the
> +	:c:func:`v4l2_timeval_to_ns()` function to convert the struct
> +	:c:type:`timeval` in struct :c:type:`v4l2_buffer` to a __u64.
> +    * - __u8
> +      - ``rps``
> +      - The reference set for the reference frame
> +        (V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_BEFORE,
> +        V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_AFTER or
> +        V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR)
> +    * - __u8
> +      - ``field_pic``
> +      - Whether the reference is a field picture or a frame.
> +    * - __u16
> +      - ``pic_order_cnt[2]``
> +      - The picture order count of the reference. Only the first element of the
> +        array is used for frame pictures, while the first element identifies the
> +        top field and the second the bottom field in field-coded pictures.
> +
> +.. c:type:: v4l2_hevc_pred_weight_table
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_hevc_pred_weight_table
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u8
> +      - ``luma_log2_weight_denom``
> +      -
> +    * - __s8
> +      - ``delta_chroma_log2_weight_denom``
> +      -
> +    * - __s8
> +      - ``delta_luma_weight_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> +      -
> +    * - __s8
> +      - ``luma_offset_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> +      -
> +    * - __s8
> +      - ``delta_chroma_weight_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2]``
> +      -
> +    * - __s8
> +      - ``chroma_offset_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2]``
> +      -
> +    * - __s8
> +      - ``delta_luma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> +      -
> +    * - __s8
> +      - ``luma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> +      -
> +    * - __s8
> +      - ``delta_chroma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2]``
> +      -
> +    * - __s8
> +      - ``chroma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2]``
> +      -
> diff --git a/Documentation/media/uapi/v4l/vidioc-queryctrl.rst b/Documentation/media/uapi/v4l/vidioc-queryctrl.rst
> index dc500632095d..e090ef33231c 100644
> --- a/Documentation/media/uapi/v4l/vidioc-queryctrl.rst
> +++ b/Documentation/media/uapi/v4l/vidioc-queryctrl.rst
> @@ -473,6 +473,24 @@ See also the examples in :ref:`control`.
>        - n/a
>        - A struct :c:type:`v4l2_ctrl_h264_decode_params`, containing H264
>  	decode parameters for stateless video decoders.
> +    * - ``V4L2_CTRL_TYPE_HEVC_SPS``
> +      - n/a
> +      - n/a
> +      - n/a
> +      - A struct :c:type:`v4l2_ctrl_hevc_sps`, containing HEVC Sequence
> +	Parameter Set for stateless video decoders.
> +    * - ``V4L2_CTRL_TYPE_HEVC_PPS``
> +      - n/a
> +      - n/a
> +      - n/a
> +      - A struct :c:type:`v4l2_ctrl_hevc_pps`, containing HEVC Picture
> +	Parameter Set for stateless video decoders.
> +    * - ``V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS``
> +      - n/a
> +      - n/a
> +      - n/a
> +      - A struct :c:type:`v4l2_ctrl_hevc_slice_params`, containing HEVC
> +	slice parameters for stateless video decoders.
>  
>  .. tabularcolumns:: |p{6.6cm}|p{2.2cm}|p{8.7cm}|
>  
> diff --git a/Documentation/media/videodev2.h.rst.exceptions b/Documentation/media/videodev2.h.rst.exceptions
> index 55cbe324b9fc..afba7d71971a 100644
> --- a/Documentation/media/videodev2.h.rst.exceptions
> +++ b/Documentation/media/videodev2.h.rst.exceptions
> @@ -141,6 +141,9 @@ replace symbol V4L2_CTRL_TYPE_H264_PPS :c:type:`v4l2_ctrl_type`
>  replace symbol V4L2_CTRL_TYPE_H264_SCALING_MATRIX :c:type:`v4l2_ctrl_type`
>  replace symbol V4L2_CTRL_TYPE_H264_SLICE_PARAMS :c:type:`v4l2_ctrl_type`
>  replace symbol V4L2_CTRL_TYPE_H264_DECODE_PARAMS :c:type:`v4l2_ctrl_type`
> +replace symbol V4L2_CTRL_TYPE_HEVC_SPS :c:type:`v4l2_ctrl_type`
> +replace symbol V4L2_CTRL_TYPE_HEVC_PPS :c:type:`v4l2_ctrl_type`
> +replace symbol V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS :c:type:`v4l2_ctrl_type`
>  
>  # V4L2 capability defines
>  replace define V4L2_CAP_VIDEO_CAPTURE device-capabilities
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
> index b72dc54ba638..d93717697402 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls.c
> @@ -944,6 +944,9 @@ const char *v4l2_ctrl_get_name(u32 id)
>  	case V4L2_CID_MPEG_VIDEO_HEVC_SIZE_OF_LENGTH_FIELD:	return "HEVC Size of Length Field";
>  	case V4L2_CID_MPEG_VIDEO_REF_NUMBER_FOR_PFRAMES:	return "Reference Frames for a P-Frame";
>  	case V4L2_CID_MPEG_VIDEO_PREPEND_SPSPPS_TO_IDR:		return "Prepend SPS and PPS to IDR";
> +	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:			return "HEVC Sequence Parameter Set";
> +	case V4L2_CID_MPEG_VIDEO_HEVC_PPS:			return "HEVC Picture Parameter Set";
> +	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:		return "HEVC Slice Parameters";
>  
>  	/* CAMERA controls */
>  	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
> @@ -1357,6 +1360,15 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
>  	case V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS:
>  		*type = V4L2_CTRL_TYPE_H264_DECODE_PARAMS;
>  		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:
> +		*type = V4L2_CTRL_TYPE_HEVC_SPS;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_PPS:
> +		*type = V4L2_CTRL_TYPE_HEVC_PPS;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:
> +		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
> +		break;
>  	default:
>  		*type = V4L2_CTRL_TYPE_INTEGER;
>  		break;
> @@ -1733,6 +1745,11 @@ static int std_validate(const struct v4l2_ctrl *ctrl, u32 idx,
>  	case V4L2_CTRL_TYPE_H264_DECODE_PARAMS:
>  		return 0;
>  
> +	case V4L2_CTRL_TYPE_HEVC_SPS:
> +	case V4L2_CTRL_TYPE_HEVC_PPS:
> +	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
> +		return 0;
> +
>  	default:
>  		return -EINVAL;
>  	}
> @@ -2331,6 +2348,15 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
>  	case V4L2_CTRL_TYPE_H264_DECODE_PARAMS:
>  		elem_size = sizeof(struct v4l2_ctrl_h264_decode_params);
>  		break;
> +	case V4L2_CTRL_TYPE_HEVC_SPS:
> +		elem_size = sizeof(struct v4l2_ctrl_hevc_sps);
> +		break;
> +	case V4L2_CTRL_TYPE_HEVC_PPS:
> +		elem_size = sizeof(struct v4l2_ctrl_hevc_pps);
> +		break;
> +	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
> +		elem_size = sizeof(struct v4l2_ctrl_hevc_slice_params);
> +		break;
>  	default:
>  		if (type < V4L2_CTRL_COMPOUND_TYPES)
>  			elem_size = sizeof(s32);
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index f6e1254064d2..0960f719da5d 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1337,6 +1337,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
>  		case V4L2_PIX_FMT_VP8:		descr = "VP8"; break;
>  		case V4L2_PIX_FMT_VP9:		descr = "VP9"; break;
>  		case V4L2_PIX_FMT_HEVC:		descr = "HEVC"; break; /* aka H.265 */
> +		case V4L2_PIX_FMT_HEVC_SLICE:	descr = "HEVC Parsed Slice Data"; break;
>  		case V4L2_PIX_FMT_FWHT:		descr = "FWHT"; break; /* used in vicodec */
>  		case V4L2_PIX_FMT_FWHT_STATELESS:	descr = "FWHT Stateless"; break; /* used in vicodec */
>  		case V4L2_PIX_FMT_CPIA1:	descr = "GSPCA CPiA YUV"; break;
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> new file mode 100644
> index 000000000000..9ea013c88afc
> --- /dev/null
> +++ b/include/media/hevc-ctrls.h
> @@ -0,0 +1,182 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * These are the HEVC state controls for use with stateless HEVC
> + * codec drivers.
> + *
> + * It turns out that these structs are not stable yet and will undergo
> + * more changes. So keep them private until they are stable and ready to
> + * become part of the official public API.
> + */
> +
> +#ifndef _HEVC_CTRLS_H_
> +#define _HEVC_CTRLS_H_
> +
> +#define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_MPEG_BASE + 1008)
> +#define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_MPEG_BASE + 1009)
> +#define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_MPEG_BASE + 1010)
> +
> +/* enum v4l2_ctrl_type type values */
> +#define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
> +#define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
> +#define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
> +
> +#define V4L2_HEVC_SLICE_TYPE_B	0
> +#define V4L2_HEVC_SLICE_TYPE_P	1
> +#define V4L2_HEVC_SLICE_TYPE_I	2
> +
> +/* The controls are not stable at the moment and will likely be reworked. */
> +struct v4l2_ctrl_hevc_sps {
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Sequence parameter set */
> +	__u8	chroma_format_idc;
> +	__u8	separate_colour_plane_flag;
> +	__u16	pic_width_in_luma_samples;
> +	__u16	pic_height_in_luma_samples;
> +	__u8	bit_depth_luma_minus8;
> +	__u8	bit_depth_chroma_minus8;
> +	__u8	log2_max_pic_order_cnt_lsb_minus4;
> +	__u8	sps_max_dec_pic_buffering_minus1;
> +	__u8	sps_max_num_reorder_pics;
> +	__u8	sps_max_latency_increase_plus1;
> +	__u8	log2_min_luma_coding_block_size_minus3;
> +	__u8	log2_diff_max_min_luma_coding_block_size;
> +	__u8	log2_min_luma_transform_block_size_minus2;
> +	__u8	log2_diff_max_min_luma_transform_block_size;
> +	__u8	max_transform_hierarchy_depth_inter;
> +	__u8	max_transform_hierarchy_depth_intra;
> +	__u8	scaling_list_enabled_flag;
> +	__u8	amp_enabled_flag;
> +	__u8	sample_adaptive_offset_enabled_flag;
> +	__u8	pcm_enabled_flag;
> +	__u8	pcm_sample_bit_depth_luma_minus1;
> +	__u8	pcm_sample_bit_depth_chroma_minus1;
> +	__u8	log2_min_pcm_luma_coding_block_size_minus3;
> +	__u8	log2_diff_max_min_pcm_luma_coding_block_size;
> +	__u8	pcm_loop_filter_disabled_flag;
> +	__u8	num_short_term_ref_pic_sets;
> +	__u8	long_term_ref_pics_present_flag;
> +	__u8	num_long_term_ref_pics_sps;
> +	__u8	sps_temporal_mvp_enabled_flag;
> +	__u8	strong_intra_smoothing_enabled_flag;
> +};
> +
> +struct v4l2_ctrl_hevc_pps {
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture parameter set */
> +	__u8	dependent_slice_segment_flag;
> +	__u8	output_flag_present_flag;
> +	__u8	num_extra_slice_header_bits;
> +	__u8	sign_data_hiding_enabled_flag;
> +	__u8	cabac_init_present_flag;
> +	__s8	init_qp_minus26;
> +	__u8	constrained_intra_pred_flag;
> +	__u8	transform_skip_enabled_flag;
> +	__u8	cu_qp_delta_enabled_flag;
> +	__u8	diff_cu_qp_delta_depth;
> +	__s8	pps_cb_qp_offset;
> +	__s8	pps_cr_qp_offset;
> +	__u8	pps_slice_chroma_qp_offsets_present_flag;
> +	__u8	weighted_pred_flag;
> +	__u8	weighted_bipred_flag;
> +	__u8	transquant_bypass_enabled_flag;
> +	__u8	tiles_enabled_flag;
> +	__u8	entropy_coding_sync_enabled_flag;
> +	__u8	num_tile_columns_minus1;
> +	__u8	num_tile_rows_minus1;
> +	__u8	column_width_minus1[20];
> +	__u8	row_height_minus1[22];
> +	__u8	loop_filter_across_tiles_enabled_flag;
> +	__u8	pps_loop_filter_across_slices_enabled_flag;
> +	__u8	deblocking_filter_override_enabled_flag;
> +	__u8	pps_disable_deblocking_filter_flag;
> +	__s8	pps_beta_offset_div2;
> +	__s8	pps_tc_offset_div2;
> +	__u8	lists_modification_present_flag;
> +	__u8	log2_parallel_merge_level_minus2;
> +	__u8	slice_segment_header_extension_present_flag;
> +	__u8	padding;
> +};
> +
> +#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_BEFORE	0x01
> +#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_AFTER	0x02
> +#define V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR		0x03
> +
> +#define V4L2_HEVC_DPB_ENTRIES_NUM_MAX		16
> +
> +struct v4l2_hevc_dpb_entry {
> +	__u64	timestamp;
> +	__u8	rps;
> +	__u8	field_pic;
> +	__u16	pic_order_cnt[2];
> +	__u8	padding[2];
> +};
> +
> +struct v4l2_hevc_pred_weight_table {
> +	__u8	luma_log2_weight_denom;
> +	__s8	delta_chroma_log2_weight_denom;
> +
> +	__s8	delta_luma_weight_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> +	__s8	luma_offset_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> +	__s8	delta_chroma_weight_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> +	__s8	chroma_offset_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> +
> +	__s8	delta_luma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> +	__s8	luma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> +	__s8	delta_chroma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> +	__s8	chroma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> +
> +	__u8	padding[2];
> +};
> +
> +struct v4l2_ctrl_hevc_slice_params {
> +	__u32	bit_size;
> +	__u32	data_bit_offset;
> +
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
> +	__u8	nal_unit_type;
> +	__u8	nuh_temporal_id_plus1;
> +
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
> +	__u8	slice_type;
> +	__u8	colour_plane_id;
> +	__u16	slice_pic_order_cnt;
> +	__u8	slice_sao_luma_flag;
> +	__u8	slice_sao_chroma_flag;
> +	__u8	slice_temporal_mvp_enabled_flag;
> +	__u8	num_ref_idx_l0_active_minus1;
> +	__u8	num_ref_idx_l1_active_minus1;
> +	__u8	mvd_l1_zero_flag;
> +	__u8	cabac_init_flag;
> +	__u8	collocated_from_l0_flag;
> +	__u8	collocated_ref_idx;
> +	__u8	five_minus_max_num_merge_cand;
> +	__u8	use_integer_mv_flag;
> +	__s8	slice_qp_delta;
> +	__s8	slice_cb_qp_offset;
> +	__s8	slice_cr_qp_offset;
> +	__s8	slice_act_y_qp_offset;
> +	__s8	slice_act_cb_qp_offset;
> +	__s8	slice_act_cr_qp_offset;
> +	__u8	slice_deblocking_filter_disabled_flag;
> +	__s8	slice_beta_offset_div2;
> +	__s8	slice_tc_offset_div2;
> +	__u8	slice_loop_filter_across_slices_enabled_flag;
> +
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture timing SEI message */
> +	__u8	pic_struct;
> +
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
> +	struct v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> +	__u8	num_active_dpb_entries;
> +	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> +	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> +
> +	__u8	num_rps_poc_st_curr_before;
> +	__u8	num_rps_poc_st_curr_after;
> +	__u8	num_rps_poc_lt_curr;
> +
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
> +	struct v4l2_hevc_pred_weight_table pred_weight_table;
> +
> +	__u8	padding[2];
> +};
> +
> +#endif
> diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
> index a8aede26491e..630083e1936d 100644
> --- a/include/media/v4l2-ctrls.h
> +++ b/include/media/v4l2-ctrls.h
> @@ -29,6 +29,7 @@
>  #include <media/mpeg2-ctrls.h>
>  #include <media/fwht-ctrls.h>
>  #include <media/h264-ctrls.h>
> +#include <media/hevc-ctrls.h>
>  
>  /* forward references */
>  struct file;
> @@ -57,6 +58,9 @@ struct poll_table_struct;
>   * @p_h264_scaling_matrix:	Pointer to a struct v4l2_ctrl_h264_scaling_matrix.
>   * @p_h264_slice_params:	Pointer to a struct v4l2_ctrl_h264_slice_params.
>   * @p_h264_decode_params:	Pointer to a struct v4l2_ctrl_h264_decode_params.
> + * @p_hevc_sps:			Pointer to an HEVC sequence parameter set structure.
> + * @p_hevc_pps:			Pointer to an HEVC picture parameter set structure.
> + * @p_hevc_slice_params		Pointer to an HEVC slice parameters structure.
>   * @p:				Pointer to a compound value.
>   */
>  union v4l2_ctrl_ptr {
> @@ -74,6 +78,9 @@ union v4l2_ctrl_ptr {
>  	struct v4l2_ctrl_h264_scaling_matrix *p_h264_scaling_matrix;
>  	struct v4l2_ctrl_h264_slice_params *p_h264_slice_params;
>  	struct v4l2_ctrl_h264_decode_params *p_h264_decode_params;
> +	struct v4l2_ctrl_hevc_sps *p_hevc_sps;
> +	struct v4l2_ctrl_hevc_pps *p_hevc_pps;
> +	struct v4l2_ctrl_hevc_slice_params *p_hevc_slice_params;
>  	void *p;
>  };
>  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
