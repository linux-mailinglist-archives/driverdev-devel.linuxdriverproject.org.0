Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665189D5E8
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 20:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAD2387E4C;
	Mon, 26 Aug 2019 18:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RJKr8LGuSEmX; Mon, 26 Aug 2019 18:38:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 41E6187E13;
	Mon, 26 Aug 2019 18:38:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BCD9A1BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B88B32264A
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wp2+inMwebKV for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 18:38:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id C87FD20512
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 18:38:34 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 379D328A13A;
 Mon, 26 Aug 2019 19:38:32 +0100 (BST)
Date: Mon, 26 Aug 2019 20:38:29 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 7/8] media: cedrus: Add support for holding capture buffer
Message-ID: <20190826203829.23b7d24b@collabora.com>
In-Reply-To: <20190822194500.2071-8-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-8-jernej.skrabec@siol.net>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, acourbot@chromium.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 22 Aug 2019 21:44:59 +0200
Jernej Skrabec <jernej.skrabec@siol.net> wrote:

> When frame contains multiple slices and driver works in slice mode, it's
> more efficient to hold capture buffer in queue until all slices of a
> same frame are decoded.
> 
> Add support for that to Cedrus driver by exposing and implementing
> V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF capability.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_dec.c   | 9 +++++++++
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 8 +++++---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 1 +
>  3 files changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> index d7b54accfe83..68462b99750e 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> @@ -31,6 +31,14 @@ void cedrus_device_run(void *priv)
>  
>  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
>  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +
> +	if (v4l2_m2m_release_capture_buf(run.src, run.dst)) {
> +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +		v4l2_m2m_buf_done(run.dst, VB2_BUF_STATE_DONE);
> +		run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +	}
> +	run.dst->is_held = run.src->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> +
>  	run.first_slice =
>  		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;
>  
> @@ -46,6 +54,7 @@ void cedrus_device_run(void *priv)
>  			V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
>  		run.mpeg2.quantization = cedrus_find_control_data(ctx,
>  			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
> +		run.dst->is_held = false;
>  		break;
>  
>  	case V4L2_PIX_FMT_H264_SLICE:
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> index a942cd9bed57..99fedec80224 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -122,7 +122,7 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);
>  
>  	src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> -	dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
>  
>  	if (!src_buf || !dst_buf) {
>  		v4l2_err(&dev->v4l2_dev,
> @@ -136,8 +136,10 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  		state = VB2_BUF_STATE_DONE;
>  
>  	v4l2_m2m_buf_done(src_buf, state);
> -	v4l2_m2m_buf_done(dst_buf, state);
> -
> +	if (!dst_buf->is_held) {
> +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +		v4l2_m2m_buf_done(dst_buf, state);
> +	}
>  	v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);
>  
>  	return IRQ_HANDLED;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index eeee3efd247b..5153b2bba21e 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -515,6 +515,7 @@ int cedrus_queue_init(void *priv, struct vb2_queue *src_vq,
>  	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
>  	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
>  	src_vq->drv_priv = ctx;
> +	src_vq->subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
>  	src_vq->buf_struct_size = sizeof(struct cedrus_buffer);
>  	src_vq->min_buffers_needed = 1;
>  	src_vq->ops = &cedrus_qops;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
