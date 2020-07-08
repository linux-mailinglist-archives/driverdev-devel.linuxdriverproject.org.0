Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AAA218945
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jul 2020 15:37:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3C51825175;
	Wed,  8 Jul 2020 13:37:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hfCUxmS9dQLy; Wed,  8 Jul 2020 13:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 64D1E26320;
	Wed,  8 Jul 2020 13:37:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0A681BF847
 for <devel@linuxdriverproject.org>; Wed,  8 Jul 2020 13:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9CA1A884E1
 for <devel@linuxdriverproject.org>; Wed,  8 Jul 2020 13:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TtGTkU++QoPG for <devel@linuxdriverproject.org>;
 Wed,  8 Jul 2020 13:36:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 74D54884DB
 for <devel@driverdev.osuosl.org>; Wed,  8 Jul 2020 13:36:59 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id k6so39052108ili.6
 for <devel@driverdev.osuosl.org>; Wed, 08 Jul 2020 06:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wN3EWgk/x5NoifjZbV2/MdXn6UXBSWUU/L+JDx5urmA=;
 b=Ck5EclqdTPhVTMFgg6o2aa4zQ3r7sKrPXh6IA93ELVlTG2AZl7EFcBYb+N/gLwYjHX
 Bm0/kaPLgwbKxHy5njCl9vz03Naus7hVgS6d89ulhKVVyrIbjuu4UmeQlr43Vdi59hv/
 fbO2EB06AGjRn4djiqh0weKEcBqT8NJXz8iElkjVljjKwahe/RbJp2XalZh8664e6oh5
 +IgBhD1OlDYIg5cA47MdzJIoZtCWNFgzddNttpZ5j7LqyB0e4f11g3jyvruslhrh1xzP
 M2RvCiYOAkYJ4Wlb0hJ6AaKqE0Ou9tm844RGkwG3AHBkvriw4SCU4sCTHLdgAFBgG6Iq
 dmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wN3EWgk/x5NoifjZbV2/MdXn6UXBSWUU/L+JDx5urmA=;
 b=TLCK59W1CIRqVK3FCLWpkKBJqg8sT8rQsqFr1nuCFIkO3aglb99mKQ8ygL9uhnkYqT
 RKq2V8N+5Svuvk2/8POKHIEPRWVzis0LvRh1B4MlBEagtXYUrrzcADfpNv05++n8KctD
 tKqpgljM/tJIs4UyAElOBhOqQx1LN/Z6ASr1NMROFRI9fXM5YaF0wb48nsjI7KRlDW/O
 k8F8tDU0cTUJ1EI4eqCToFrxSVRh5+iT4j6XTkWqMzzjrj+RQn7dfH8dtzC7r2+qnytz
 J4LgBn4nx8OXKQ571yPQd/+mmH/6Se/6C1AV5u07jhKFFzS4rbTHUsuFEMQGJ1w+W6v+
 NeKg==
X-Gm-Message-State: AOAM530htvVNHwPgbd9ZAw/zYiC3OizKPPMnDlF/0x4tzpdVI5N3DxRI
 JwCuaX0QFLZykbd208aJPxC9QItGBwn85Nd8rqOjVRHFqgQ=
X-Google-Smtp-Source: ABdhPJy6eI1/TSJpreDxCQpqeyG6XeOm5xpbcgLAF1WPOQZyO2y0sMxOp79n/z1Tey4/S/Cd6hAidyyvLZgG66GhGlo=
X-Received: by 2002:a63:8c18:: with SMTP id m24mr51276927pgd.289.1594214943466; 
 Wed, 08 Jul 2020 06:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <20200604185745.23568-2-jernej.skrabec@siol.net>
In-Reply-To: <20200604185745.23568-2-jernej.skrabec@siol.net>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 8 Jul 2020 10:28:52 -0300
Message-ID: <CAAEAJfAx4=RGJBVPccVFNYxNUqom7tkQD=J9oMfqajGxn6k+Zg@mail.gmail.com>
Subject: Re: [PATCH 1/3] media: uapi: h264: update reference lists
To: Jernej Skrabec <jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Jernej,

I'd like to post a new H264 uAPI cleanup series soon,
would you mind resending this, or otherwise do you
mind if I include this patch in the series?

See below for a tiny comment.

On Thu, 4 Jun 2020 at 15:55, Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> When dealing with with interlaced frames, reference lists must tell if
> each particular reference is meant for top or bottom field. This info
> is currently not provided at all in the H264 related controls.
>
> Make reference lists hold a structure which will also hold flags along
> index into DPB array. Flags will tell if reference is meant for top or
> bottom field.
>
> Currently the only user of these lists is Cedrus which is just compile
> fixed here. Actual usage of newly introduced flags will come in
> following commit.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../media/v4l/ext-ctrls-codec.rst             | 40 ++++++++++++++++++-
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  |  6 +--
>  include/media/h264-ctrls.h                    | 12 +++++-
>  3 files changed, 51 insertions(+), 7 deletions(-)
>
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index d0d506a444b1..6c36d298db20 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -1843,10 +1843,10 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>      * - __u32
>        - ``slice_group_change_cycle``
>        -
> -    * - __u8
> +    * - struct :c:type:`v4l2_h264_reference`
>        - ``ref_pic_list0[32]``
>        - Reference picture list after applying the per-slice modifications
> -    * - __u8
> +    * - struct :c:type:`v4l2_h264_reference`
>        - ``ref_pic_list1[32]``
>        - Reference picture list after applying the per-slice modifications
>      * - __u32
> @@ -1926,6 +1926,42 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>        - ``chroma_offset[32][2]``
>        -
>
> +``Picture Reference``
> +
> +.. c:type:: v4l2_h264_reference
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_h264_reference
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u16
> +      - ``flags``
> +      - See :ref:`Picture Reference Flags <h264_reference_flags>`
> +    * - __u8
> +      - ``index``
> +      -
> +
> +.. _h264_reference_flags:
> +
> +``Picture Reference Flags``
> +
> +.. cssclass:: longtable
> +
> +.. flat-table::
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - ``V4L2_H264_REFERENCE_FLAG_TOP_FIELD``
> +      - 0x00000001
> +      -
> +    * - ``V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD``
> +      - 0x00000002
> +      -
> +
>  ``V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS (struct)``
>      Specifies the decode parameters (as extracted from the bitstream)
>      for the associated H264 slice data. This includes the necessary
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> index 54ee2aa423e2..cce527bbdf86 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -166,8 +166,8 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
>
>  static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
>                                    struct cedrus_run *run,
> -                                  const u8 *ref_list, u8 num_ref,
> -                                  enum cedrus_h264_sram_off sram)
> +                                  const struct v4l2_h264_reference *ref_list,
> +                                  u8 num_ref, enum cedrus_h264_sram_off sram)
>  {
>         const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
>         struct vb2_queue *cap_q;
> @@ -188,7 +188,7 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
>                 int buf_idx;
>                 u8 dpb_idx;
>
> -               dpb_idx = ref_list[i];
> +               dpb_idx = ref_list[i].index;
>                 dpb = &decode->dpb[dpb_idx];
>
>                 if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
> diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> index 080fd1293c42..9b1cbc9bc38e 100644
> --- a/include/media/h264-ctrls.h
> +++ b/include/media/h264-ctrls.h
> @@ -140,6 +140,14 @@ struct v4l2_h264_pred_weight_table {
>  #define V4L2_H264_SLICE_FLAG_DIRECT_SPATIAL_MV_PRED    0x04
>  #define V4L2_H264_SLICE_FLAG_SP_FOR_SWITCH             0x08
>
> +#define V4L2_H264_REFERENCE_FLAG_TOP_FIELD             0x01
> +#define V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD          0x02
> +
> +struct v4l2_h264_reference {
> +       __u8 flags;
> +       __u8 index;
> +};
> +
>  struct v4l2_ctrl_h264_slice_params {
>         /* Size in bytes, including header */
>         __u32 size;
> @@ -182,8 +190,8 @@ struct v4l2_ctrl_h264_slice_params {
>          * Entries on each list are indices into
>          * v4l2_ctrl_h264_decode_params.dpb[].
>          */
> -       __u8 ref_pic_list0[32];
> -       __u8 ref_pic_list1[32];
> +       struct v4l2_h264_reference ref_pic_list0[32];
> +       struct v4l2_h264_reference ref_pic_list1[32];
>

Could we use a macro for "32" here? Something like:

#define V4L2_H264_REF_PIC_LIST_LEN (V4L2_H264_NUM_DPB_ENTRIES * 2).

Does it make sense to add a comment as well?

I was thinking something along these lines:

"""
Pictures in the DPB can be a frame, a complementary field pair or a
single field.
Therefore, reference pictures lists need twice as much entries, so it
can reference
either field of a field pair.
"""

While it doesn't replace proper H264 specification reading,
it would add some clarity.

Thanks,
Ezequiel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
