Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 786901EFEC3
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jun 2020 19:27:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5D1B87199;
	Fri,  5 Jun 2020 17:27:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sa4h5Nu8bysl; Fri,  5 Jun 2020 17:27:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B67168720A;
	Fri,  5 Jun 2020 17:26:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 696D41BF30B
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 17:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 65B8E8828F
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 17:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L+ayAnZeYXSY for <devel@linuxdriverproject.org>;
 Fri,  5 Jun 2020 17:26:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs4.siol.net [185.57.226.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE73188272
 for <devel@driverdev.osuosl.org>; Fri,  5 Jun 2020 17:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id BCFFB521CD6;
 Fri,  5 Jun 2020 19:26:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id NZgFuvn6mVwb; Fri,  5 Jun 2020 19:26:51 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2610A521CDC;
 Fri,  5 Jun 2020 19:26:51 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id B67AB521CD6;
 Fri,  5 Jun 2020 19:26:50 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com, mripard@kernel.org,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: uapi: h264: update reference lists
Date: Fri, 05 Jun 2020 19:26:50 +0200
Message-ID: <5432050.H6LSVPVxsP@jernej-laptop>
In-Reply-To: <981458bfa639bbb9dbc7577256fde0a4c6259d53.camel@ndufresne.ca>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <21efb826506f23d348fa58ca8b29eaca8c9dae55.camel@ndufresne.ca>
 <981458bfa639bbb9dbc7577256fde0a4c6259d53.camel@ndufresne.ca>
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne petek, 05. junij 2020 ob 19:13:24 CEST je Nicolas Dufresne napisal(a):
> Sorry, missed one thing.
> =

> Le vendredi 05 juin 2020 =E0 13:08 -0400, Nicolas Dufresne a =E9crit :
> > Le jeudi 04 juin 2020 =E0 20:57 +0200, Jernej Skrabec a =E9crit :
> > > When dealing with with interlaced frames, reference lists must tell if
> > > each particular reference is meant for top or bottom field. This info
> > > is currently not provided at all in the H264 related controls.
> > > =

> > > Make reference lists hold a structure which will also hold flags along
> > > index into DPB array. Flags will tell if reference is meant for top or
> > > bottom field.
> > > =

> > > Currently the only user of these lists is Cedrus which is just compile
> > > fixed here. Actual usage of newly introduced flags will come in
> > > following commit.
> > > =

> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > =

> > This looks like the right approach to me and is extensible if anything
> > else is needed for MVC and SVC special referencing (at least will be
> > enough for what H.264 actually supports in this regard).
> > =

> > Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> > =

> > > ---
> > > =

> > >  .../media/v4l/ext-ctrls-codec.rst             | 40 +++++++++++++++++=
+-
> > >  .../staging/media/sunxi/cedrus/cedrus_h264.c  |  6 +--
> > >  include/media/h264-ctrls.h                    | 12 +++++-
> > >  3 files changed, 51 insertions(+), 7 deletions(-)
> > > =

> > > diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> > > b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst index
> > > d0d506a444b1..6c36d298db20 100644
> > > --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> > > +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> > > @@ -1843,10 +1843,10 @@ enum
> > > v4l2_mpeg_video_h264_hierarchical_coding_type -> > =

> > >      * - __u32
> > >      =

> > >        - ``slice_group_change_cycle``
> > >        -
> > > =

> > > -    * - __u8
> > > +    * - struct :c:type:`v4l2_h264_reference`
> > > =

> > >        - ``ref_pic_list0[32]``
> > >        - Reference picture list after applying the per-slice
> > >        modifications
> > > =

> > > -    * - __u8
> > > +    * - struct :c:type:`v4l2_h264_reference`
> > > =

> > >        - ``ref_pic_list1[32]``
> > >        - Reference picture list after applying the per-slice
> > >        modifications
> > >      =

> > >      * - __u32
> > > =

> > > @@ -1926,6 +1926,42 @@ enum
> > > v4l2_mpeg_video_h264_hierarchical_coding_type -
> > > =

> > >        - ``chroma_offset[32][2]``
> > >        -
> > > =

> > > +``Picture Reference``
> > > +
> > > +.. c:type:: v4l2_h264_reference
> > > +
> > > +.. cssclass:: longtable
> > > +
> > > +.. flat-table:: struct v4l2_h264_reference
> > > +    :header-rows:  0
> > > +    :stub-columns: 0
> > > +    :widths:       1 1 2
> > > +
> > > +    * - __u16
> > > +      - ``flags``
> > > +      - See :ref:`Picture Reference Flags <h264_reference_flags>`
> > > +    * - __u8
> > > +      - ``index``
> > > +      -
> > > +
> > > +.. _h264_reference_flags:
> > > +
> > > +``Picture Reference Flags``
> > > +
> > > +.. cssclass:: longtable
> > > +
> > > +.. flat-table::
> > > +    :header-rows:  0
> > > +    :stub-columns: 0
> > > +    :widths:       1 1 2
> > > +
> > > +    * - ``V4L2_H264_REFERENCE_FLAG_TOP_FIELD``
> > > +      - 0x00000001
> > > +      -
> > > +    * - ``V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD``
> > > +      - 0x00000002
> > > +      -
> > > +
> > > =

> > >  ``V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS (struct)``
> > >  =

> > >      Specifies the decode parameters (as extracted from the bitstream)
> > >      for the associated H264 slice data. This includes the necessary
> > > =

> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > > 54ee2aa423e2..cce527bbdf86 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > @@ -166,8 +166,8 @@ static void cedrus_write_frame_list(struct
> > > cedrus_ctx *ctx,> > =

> > >  static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
> > >  =

> > >  				   struct cedrus_run *run,
> > > =

> > > -				   const u8 *ref_list, u8 =

num_ref,
> > > -				   enum cedrus_h264_sram_off =

sram)
> > > +				   const struct =

v4l2_h264_reference *ref_list,
> > > +				   u8 num_ref, enum =

cedrus_h264_sram_off sram)
> > > =

> > >  {
> > >  =

> > >  	const struct v4l2_ctrl_h264_decode_params *decode =3D
> > >  	run->h264.decode_params; struct vb2_queue *cap_q;
> > > =

> > > @@ -188,7 +188,7 @@ static void _cedrus_write_ref_list(struct cedrus_=
ctx
> > > *ctx,> > =

> > >  		int buf_idx;
> > >  		u8 dpb_idx;
> > > =

> > > -		dpb_idx =3D ref_list[i];
> > > +		dpb_idx =3D ref_list[i].index;
> > > =

> > >  		dpb =3D &decode->dpb[dpb_idx];
> > >  		=

> > >  		if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
> > > =

> > > diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> > > index 080fd1293c42..9b1cbc9bc38e 100644
> > > --- a/include/media/h264-ctrls.h
> > > +++ b/include/media/h264-ctrls.h
> > > @@ -140,6 +140,14 @@ struct v4l2_h264_pred_weight_table {
> > > =

> > >  #define V4L2_H264_SLICE_FLAG_DIRECT_SPATIAL_MV_PRED	0x04
> > >  #define V4L2_H264_SLICE_FLAG_SP_FOR_SWITCH		0x08
> > > =

> > > +#define V4L2_H264_REFERENCE_FLAG_TOP_FIELD		0x01
> > > +#define V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD		0x02
> > > +
> > > +struct v4l2_h264_reference {
> > > +	__u8 flags;
> > > +	__u8 index;
> > > +};
> > > +
> > > =

> > >  struct v4l2_ctrl_h264_slice_params {
> > >  =

> > >  	/* Size in bytes, including header */
> > >  	__u32 size;
> > > =

> > > @@ -182,8 +190,8 @@ struct v4l2_ctrl_h264_slice_params {
> > > =

> > >  	 * Entries on each list are indices into
> > >  	 * v4l2_ctrl_h264_decode_params.dpb[].
> > >  	 */
> =

> This comment needs to be updated or moved inside the structure.

I'll move it in v2.

Best regards,
Jernej

> =

> > > -	__u8 ref_pic_list0[32];
> > > -	__u8 ref_pic_list1[32];
> > > +	struct v4l2_h264_reference ref_pic_list0[32];
> > > +	struct v4l2_h264_reference ref_pic_list1[32];
> > > =

> > >  	__u32 flags;
> > >  =

> > >  };




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
