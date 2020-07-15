Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978F3220C89
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 13:58:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 275D48AD4A;
	Wed, 15 Jul 2020 11:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id moFtAEOSX2CU; Wed, 15 Jul 2020 11:58:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37D348AD3B;
	Wed, 15 Jul 2020 11:58:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78B111BF868
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FB6F2048A
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vhb8I8aebmkY for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 11:58:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id 651792047C
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 11:58:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 206512A06C6
Message-ID: <3c8a235ebb0bf76bcffeb8c6b983cd4c95d77459.camel@collabora.com>
Subject: Re: [PATCH] media: cedrus: Propagate OUTPUT resolution to CAPTURE
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Hans Verkuil
 <hverkuil@xs4all.nl>
Date: Wed, 15 Jul 2020 08:57:50 -0300
In-Reply-To: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
References: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.3-1 
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, stable@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It seems this one felt thru the cracks. Sorry for the delay.

On Thu, 2020-05-14 at 11:39 -0400, Nicolas Dufresne wrote:
> As per spec, the CAPTURE resolution should be automatically set based on
> the OTUPUT resolution. This patch properly propagate width/height to the
> capture when the OUTPUT format is set and override the user provided
> width/height with configured OUTPUT resolution when the CAPTURE fmt is
> updated.
> 
> This also prevents userspace from selecting a CAPTURE resolution that is
> too small, avoiding unwanted page faults.
> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

This looks correct.

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 16d82309e7b6..a6d6b15adc2e 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -247,6 +247,8 @@ static int cedrus_try_fmt_vid_cap(struct file *file, void *priv,
>  		return -EINVAL;
>  
>  	pix_fmt->pixelformat = fmt->pixelformat;
> +	pix_fmt->width = ctx->src_fmt.width;
> +	pix_fmt->height = ctx->src_fmt.height;
>  	cedrus_prepare_format(pix_fmt);
>  
>  	return 0;
> @@ -319,11 +321,14 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
>  		break;
>  	}
>  
> -	/* Propagate colorspace information to capture. */
> +	/* Propagate format information to capture. */
>  	ctx->dst_fmt.colorspace = f->fmt.pix.colorspace;
>  	ctx->dst_fmt.xfer_func = f->fmt.pix.xfer_func;
>  	ctx->dst_fmt.ycbcr_enc = f->fmt.pix.ycbcr_enc;
>  	ctx->dst_fmt.quantization = f->fmt.pix.quantization;
> +	ctx->dst_fmt.width = ctx->src_fmt.width;
> +	ctx->dst_fmt.height = ctx->src_fmt.height;
> +	cedrus_prepare_format(&ctx->dst_fmt);
>  
>  	return 0;
>  }
> -- 
> 2.26.2
> 
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
