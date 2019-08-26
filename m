Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C64A9D610
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 20:56:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 652A42268C;
	Mon, 26 Aug 2019 18:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulYKPtKub4l6; Mon, 26 Aug 2019 18:55:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 81FAD2264C;
	Mon, 26 Aug 2019 18:55:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 535C41BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 50EE22048C
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBbb4RvqqNdT for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 18:55:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id F231A20006
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 18:55:52 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7F21228A165;
 Mon, 26 Aug 2019 19:55:50 +0100 (BST)
Date: Mon, 26 Aug 2019 20:55:47 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 8/8] media: cedrus: Add support for V4L2_DEC_CMD_FLUSH
Message-ID: <20190826205547.3ecbf2a1@collabora.com>
In-Reply-To: <20190822194500.2071-9-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-9-jernej.skrabec@siol.net>
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

On Thu, 22 Aug 2019 21:45:00 +0200
Jernej Skrabec <jernej.skrabec@siol.net> wrote:

> This command is useful for explicitly flushing last decoded frame.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  .../staging/media/sunxi/cedrus/cedrus_video.c | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 5153b2bba21e..9eae69d5741c 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -331,6 +331,37 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
>  	return 0;
>  }
>  
> +static int cedrus_try_decoder_cmd(struct file *file, void *fh,
> +				  struct v4l2_decoder_cmd *dc)
> +{
> +	if (dc->cmd != V4L2_DEC_CMD_FLUSH)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int cedrus_decoder_cmd(struct file *file, void *fh,
> +			      struct v4l2_decoder_cmd *dc)
> +{
> +	struct cedrus_ctx *ctx = cedrus_file2ctx(file);
> +	struct vb2_v4l2_buffer *out_vb, *cap_vb;
> +	int ret;
> +
> +	ret = cedrus_try_decoder_cmd(file, fh, dc);
> +	if (ret < 0)
> +		return ret;

Not directly related to this patch, but it seems most drivers
implementing ->vdioc_decoder_cmd() call ->vidioc_try_decoder_cmd()
internally to make sure the cmd is supported. Maybe something
we could automate at the v4l2-ioctl.c level.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
