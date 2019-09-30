Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB4FC2560
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 18:44:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0128A878CD;
	Mon, 30 Sep 2019 16:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksTVUUD6EwG6; Mon, 30 Sep 2019 16:44:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B0E785A2E;
	Mon, 30 Sep 2019 16:44:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A4361BF42D
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 16:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 468D920767
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 16:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9AF87vys4slT for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 16:44:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs53.siol.net [185.57.226.244])
 by silver.osuosl.org (Postfix) with ESMTPS id B0BF920520
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 16:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id B709D522D81;
 Mon, 30 Sep 2019 18:44:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id vqC7iU5JIcxQ; Mon, 30 Sep 2019 18:44:06 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 29769522DC4;
 Mon, 30 Sep 2019 18:44:06 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 4CE41522DBF;
 Mon, 30 Sep 2019 18:44:03 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 6/6] media: cedrus: Add support for holding capture
 buffer
Date: Mon, 30 Sep 2019 18:44:02 +0200
Message-ID: <2089312.Gnm7pnLf18@jernej-laptop>
In-Reply-To: <4fb20c41-7cc1-32c9-b5b9-2e86b5e74201@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <20190929200023.215831-7-jernej.skrabec@siol.net>
 <4fb20c41-7cc1-32c9-b5b9-2e86b5e74201@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne ponedeljek, 30. september 2019 ob 10:14:32 CEST je Hans Verkuil 
napisal(a):
> On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> > When frame contains multiple slices and driver works in slice mode, it's
> > more efficient to hold capture buffer in queue until all slices of a
> > same frame are decoded.
> > 
> > Add support for that to Cedrus driver by exposing and implementing
> > V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF capability.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus_dec.c   |  9 +++++++++
> >  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    |  8 +++++---
> >  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++++++++++
> >  3 files changed, 28 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c index
> > e49c3396ca4d..67f7d4326fc1 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > @@ -31,6 +31,14 @@ void cedrus_device_run(void *priv)
> > 
> >  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> >  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > 
> > +
> > +	if (v4l2_m2m_release_capture_buf(run.src, run.dst)) {
> > +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > +		v4l2_m2m_buf_done(run.dst, VB2_BUF_STATE_DONE);
> > +		run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > +	}
> > +	run.dst->is_held = run.src->flags & 
V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> > +
> > 
> >  	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
> >  	
> >  		run.src->vb2_buf.timestamp != run.dst-
>vb2_buf.timestamp;
> > 
> > @@ -46,6 +54,7 @@ void cedrus_device_run(void *priv)
> > 
> >  			V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
> >  		
> >  		run.mpeg2.quantization = cedrus_find_control_data(ctx,
> >  		
> >  			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
> > 
> > +		run.dst->is_held = false;
> > 
> >  		break;
> >  	
> >  	case V4L2_PIX_FMT_H264_SLICE:
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c index
> > fc8579b90dab..b466041c25db 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > @@ -122,7 +122,7 @@ static irqreturn_t cedrus_irq(int irq, void *data)
> > 
> >  	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);
> >  	
> >  	src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> > 
> > -	dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > +	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > 
> >  	if (!src_buf || !dst_buf) {
> >  	
> >  		v4l2_err(&dev->v4l2_dev,
> > 
> > @@ -136,8 +136,10 @@ static irqreturn_t cedrus_irq(int irq, void *data)
> > 
> >  		state = VB2_BUF_STATE_DONE;
> >  	
> >  	v4l2_m2m_buf_done(src_buf, state);
> > 
> > -	v4l2_m2m_buf_done(dst_buf, state);
> > -
> > +	if (!dst_buf->is_held) {
> > +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > +		v4l2_m2m_buf_done(dst_buf, state);
> > +	}
> > 
> >  	v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);
> >  	
> >  	return IRQ_HANDLED;
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_video.c index
> > 3ec3a2db790c..82198b2bb081 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > @@ -303,6 +303,17 @@ static int cedrus_s_fmt_vid_out(struct file *file,
> > void *priv,> 
> >  	ctx->src_fmt = f->fmt.pix;
> > 
> > +	switch (ctx->src_fmt.pixelformat) {
> > +	case V4L2_PIX_FMT_H264_SLICE:
> > +		vq->subsystem_flags |=
> > +			VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
> > +		break;
> > +	default:
> > +		vq->subsystem_flags &=
> > +			
(u32)~VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
> 
> Why the u32 cast?

To prevent warnings on arm64 such as reported here:
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1620796.html

But I'm not sure if this aplies for this case. I compiled kernel for arm64 but 
there is no warning without this cast with my configuration. I guess I can 
remove it.

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > +		break;
> > +	}
> > +
> > 
> >  	/* Propagate colorspace information to capture. */
> >  	ctx->dst_fmt.colorspace = f->fmt.pix.colorspace;
> >  	ctx->dst_fmt.xfer_func = f->fmt.pix.xfer_func;
> > 
> > @@ -336,6 +347,9 @@ const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
> > 
> >  	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
> >  	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
> > 
> > +	.vidioc_try_decoder_cmd		= 
v4l2_m2m_ioctl_stateless_try_decoder_cmd,
> > +	.vidioc_decoder_cmd		= 
v4l2_m2m_ioctl_stateless_decoder_cmd,
> > +
> > 
> >  	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
> >  	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
> >  
> >  };




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
