Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE759D5D2
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 20:28:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8232F8757D;
	Mon, 26 Aug 2019 18:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ItbRpgV5o+6L; Mon, 26 Aug 2019 18:28:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33E3286FB1;
	Mon, 26 Aug 2019 18:28:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C32ED1BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C02C6868D9
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rs_OQT0isOzZ for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 18:28:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00557868C8
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 18:28:37 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F28C92804E7;
 Mon, 26 Aug 2019 19:28:34 +0100 (BST)
Date: Mon, 26 Aug 2019 20:28:31 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/8] media: cedrus: Detect first slice of a frame
Message-ID: <20190826202831.311c7c20@collabora.com>
In-Reply-To: <20190822194500.2071-6-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-6-jernej.skrabec@siol.net>
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

Hi Jernej,

On Thu, 22 Aug 2019 21:44:57 +0200
Jernej Skrabec <jernej.skrabec@siol.net> wrote:

> When codec supports multiple slices in one frame, VPU has to know when
> first slice of each frame is being processed, presumably to correctly
> clear/set data in auxiliary buffers.
> 
> Add first_slice field to cedrus_run structure and set it according to
> timestamps of capture and output buffers. If timestamps are different,
> it's first slice and viceversa.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h     | 1 +
>  drivers/staging/media/sunxi/cedrus/cedrus_dec.c | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
> index 2f017a651848..32cb38e541c6 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -70,6 +70,7 @@ struct cedrus_mpeg2_run {
>  struct cedrus_run {
>  	struct vb2_v4l2_buffer	*src;
>  	struct vb2_v4l2_buffer	*dst;
> +	bool first_slice;
>  
>  	union {
>  		struct cedrus_h264_run	h264;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> index 56ca4c9ad01c..d7b54accfe83 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> @@ -31,6 +31,8 @@ void cedrus_device_run(void *priv)
>  
>  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
>  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +	run.first_slice =
> +		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;

Can't we use slice->first_mb_in_slice to determine if a slice is the
first? I'd expect ->first_mb_in_slice to be 0 (unless we decide to
support ASO).

>  
>  	/* Apply request(s) controls if needed. */
>  	src_req = run.src->vb2_buf.req_obj.req;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
