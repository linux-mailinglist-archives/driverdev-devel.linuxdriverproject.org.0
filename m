Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BC0116D0
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 May 2019 12:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 453C788026;
	Thu,  2 May 2019 10:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUj1NBwPm6Ep; Thu,  2 May 2019 10:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 446F388035;
	Thu,  2 May 2019 10:01:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C62D1BF23F
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 10:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3926488020
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 10:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YfMVJu7TPXnd for <devel@linuxdriverproject.org>;
 Thu,  2 May 2019 10:01:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5439387FCC
 for <devel@driverdev.osuosl.org>; Thu,  2 May 2019 10:01:44 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id b10so1934601wmj.4
 for <devel@driverdev.osuosl.org>; Thu, 02 May 2019 03:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=hFHdNN1/YEjXdeQmsbYBo++9cGNZ+Uicd3DB8o/CVVg=;
 b=phAoDDPbKaKQ1bh3tnJP/1NIrzdMZWY62fugBQTe6D9PtXcpQs5GFuuAqHrRXjWfUA
 ws+ZV/H2MWd+hUS56iS+SRP0UZ8Eu2pvg+dk6lcOxtlGC7sAO1b8A4yyUuZU/4p7taDX
 EJXOFUmrlde++J3Z1iHShe8FqLefcdmJ4T5ezH+jnsneUnQ5mgZu/Os+PRia5VP7A2oP
 nfQs7ZyQTi1P0tY6LpE/TU89aGKN1ALlQ2a2Y29IsnF9O+veOz8Ob05L/0uW30lgiDKa
 9RdHNghtkfrfUUqxfoGDzUzoFyuIfq/JVuWYsHHHzPbnTJqVvvQlu5OX3ETqFgQj9JUk
 987g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=hFHdNN1/YEjXdeQmsbYBo++9cGNZ+Uicd3DB8o/CVVg=;
 b=XVFLXhz6WWgiUvUDYPwRymxrE2oVkQqFsz2DrBIBbMJRr9jKCQ7I0tLYCKx6XxkSDY
 O2DJShK/SxFAKSNtHl1LKO/Q2mRZzSUBBFYF/xdLX+nQJwcKyXSQmvtHadS5lw7pxetK
 thyOZHAqAPqM1lcH7MR181uhIfofCSuf42TORQXkp19O/aUkVeZ179YinjcADSV3Ir0H
 NXsC/xj0Z3pdnc5uVd3sC1i+XTc25bVAc3DC32I4/if2cF9eMVrvLeKrwqtjrf4/4DaV
 wWT8xVlPxe/udPtDG/idx2DooIITSu6jndiF6g8j88QiaGmvbYIrEYh9hPtgDDq8ck4j
 uT7Q==
X-Gm-Message-State: APjAAAU+XU4JQ+hxnpP+f5AoX5fJbI5q1Cs8YJ3VWgbUNRiqCnqnRSPP
 aHQ7LDq526tzQAb945l0xI4=
X-Google-Smtp-Source: APXvYqyRJGwi+C9739pX/VMDV7tPHD5g2TMMt8G3jIpQ1UZbxxt/nndAx+p5wFg/tW86yqmDLkpeOA==
X-Received: by 2002:a7b:c0d4:: with SMTP id s20mr1760391wmh.52.1556791302654; 
 Thu, 02 May 2019 03:01:42 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id q2sm19230130wrd.48.2019.05.02.03.01.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 03:01:41 -0700 (PDT)
References: <20190430225018.30252-1-slongerbeam@gmail.com>
 <20190430225018.30252-6-slongerbeam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH v3 5/8] media: staging/imx: Remove
 capture_device_set_format
In-reply-to: <20190430225018.30252-6-slongerbeam@gmail.com>
Date: Thu, 02 May 2019 11:01:39 +0100
Message-ID: <m3lfzp5g58.fsf@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Steve,
Thanks for v3 with bisect fixed.

On Tue 30 Apr 2019 at 23:50, Steve Longerbeam wrote:
> Don't propagate the source pad format to the connected capture device.
> It's now the responsibility of userspace to call VIDIOC_S_FMT on the
> capture device to ensure the capture format and compose rectangle
> are compatible with the connected source. To check this, validate
> the capture format with the source before streaming starts.
>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  drivers/staging/media/imx/imx-ic-prpencvf.c   | 16 +----
>  drivers/staging/media/imx/imx-media-capture.c | 64 +++++++++++++------
>  drivers/staging/media/imx/imx-media-csi.c     | 16 +----
>  drivers/staging/media/imx/imx-media.h         |  2 -
>  drivers/staging/media/imx/imx7-media-csi.c    | 17 +----
>  5 files changed, 50 insertions(+), 65 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
> index afaa3a8b15e9..63334fd61492 100644
> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
> @@ -906,9 +906,7 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>  		       struct v4l2_subdev_format *sdformat)
>  {
>  	struct prp_priv *priv = sd_to_priv(sd);
> -	struct imx_media_video_dev *vdev = priv->vdev;
>  	const struct imx_media_pixfmt *cc;
> -	struct v4l2_pix_format vdev_fmt;
>  	struct v4l2_mbus_framefmt *fmt;
>  	int ret = 0;
>  
> @@ -945,19 +943,9 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>  			priv->cc[PRPENCVF_SRC_PAD] = outcc;
>  	}
>  
> -	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
> -		goto out;
> -
> -	priv->cc[sdformat->pad] = cc;
> +	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
> +		priv->cc[sdformat->pad] = cc;
>  
> -	/* propagate output pad format to capture device */
> -	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
> -				      &priv->format_mbus[PRPENCVF_SRC_PAD],
> -				      priv->cc[PRPENCVF_SRC_PAD]);
> -	mutex_unlock(&priv->lock);
> -	imx_media_capture_device_set_format(vdev, &vdev_fmt);
> -
> -	return 0;
>  out:
>  	mutex_unlock(&priv->lock);
>  	return ret;
> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
> index 555f6204660b..b77a67bda47c 100644
> --- a/drivers/staging/media/imx/imx-media-capture.c
> +++ b/drivers/staging/media/imx/imx-media-capture.c
> @@ -205,7 +205,8 @@ static int capture_g_fmt_vid_cap(struct file *file, void *fh,
>  
>  static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
>  				     struct v4l2_subdev_format *fmt_src,
> -				     struct v4l2_format *f)
> +				     struct v4l2_format *f,
> +				     struct v4l2_rect *compose)
>  {
>  	const struct imx_media_pixfmt *cc, *cc_src;
>  
> @@ -247,6 +248,13 @@ static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
>  
>  	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, &fmt_src->format, cc);
>  
> +	if (compose) {
> +		compose->left = 0;
> +		compose->top = 0;
> +		compose->width = fmt_src->format.width;
> +		compose->height = fmt_src->format.height;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -263,7 +271,7 @@ static int capture_try_fmt_vid_cap(struct file *file, void *fh,
>  	if (ret)
>  		return ret;
>  
> -	return __capture_try_fmt_vid_cap(priv, &fmt_src, f);
> +	return __capture_try_fmt_vid_cap(priv, &fmt_src, f, NULL);
>  }
>  
>  static int capture_s_fmt_vid_cap(struct file *file, void *fh,
> @@ -271,6 +279,7 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>  {
>  	struct capture_priv *priv = video_drvdata(file);
>  	struct v4l2_subdev_format fmt_src;
> +	struct v4l2_rect compose;
>  	int ret;
>  
>  	if (vb2_is_busy(&priv->q)) {
> @@ -284,17 +293,14 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>  	if (ret)
>  		return ret;
>  
> -	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f);
> +	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f, &compose);
>  	if (ret)
>  		return ret;
>  
>  	priv->vdev.fmt.fmt.pix = f->fmt.pix;
>  	priv->vdev.cc = imx_media_find_format(f->fmt.pix.pixelformat,
>  					      CS_SEL_ANY, true);
> -	priv->vdev.compose.left = 0;
> -	priv->vdev.compose.top = 0;
> -	priv->vdev.compose.width = fmt_src.format.width;
> -	priv->vdev.compose.height = fmt_src.format.height;
> +	priv->vdev.compose = compose;
>  
>  	return 0;
>  }
> @@ -524,6 +530,33 @@ static void capture_buf_queue(struct vb2_buffer *vb)
>  	spin_unlock_irqrestore(&priv->q_lock, flags);
>  }
>  
> +static int capture_validate_fmt(struct capture_priv *priv)
> +{
> +	struct v4l2_subdev_format fmt_src;
> +	struct v4l2_rect compose;
> +	struct v4l2_format f;
> +	int ret;
> +
> +	fmt_src.pad = priv->src_sd_pad;
> +	fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
> +	ret = v4l2_subdev_call(priv->src_sd, pad, get_fmt, NULL, &fmt_src);
> +	if (ret)
> +		return ret;
> +
> +	v4l2_fill_pix_format(&f.fmt.pix, &fmt_src.format);
> +
> +	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, &f, &compose);
> +	if (ret)
> +		return ret;
> +
> +	return (priv->vdev.fmt.fmt.pix.width != f.fmt.pix.width ||
> +		priv->vdev.fmt.fmt.pix.height != f.fmt.pix.height ||
> +		priv->vdev.cc->cs !=
> +		ipu_pixelformat_to_colorspace(f.fmt.pix.pixelformat) ||

This fails on imx7, no ipu, it returns unknown colorspace.
Removing this check everything works ok on my setup with this
series.
Do not know the best way to fix this but you may have? :)

> +		priv->vdev.compose.width != compose.width ||
> +		priv->vdev.compose.height != compose.height) ? -EINVAL : 0;
> +}
> +
>  static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
>  {
>  	struct capture_priv *priv = vb2_get_drv_priv(vq);
> @@ -531,6 +564,10 @@ static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
>  	unsigned long flags;
>  	int ret;
>  
> +	ret = capture_validate_fmt(priv);
> +	if (ret)

Maybe some verbose output here to let know userland what failed.

> +		goto return_bufs;
> +
>  	ret = imx_media_pipeline_set_stream(priv->md, &priv->src_sd->entity,
>  					    true);
>  	if (ret) {
> @@ -654,19 +691,6 @@ static struct video_device capture_videodev = {
>  	.device_caps	= V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING,
>  };

---
Cheers,
	Rui

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
