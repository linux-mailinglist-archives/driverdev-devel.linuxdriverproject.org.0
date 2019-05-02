Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED23120BE
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 May 2019 19:02:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 23D9830E6B;
	Thu,  2 May 2019 17:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHW5eGIAovgp; Thu,  2 May 2019 17:02:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 31EE030E18;
	Thu,  2 May 2019 17:02:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C88731BF471
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 17:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3E8130DDF
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 17:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bzumow-cND9a for <devel@linuxdriverproject.org>;
 Thu,  2 May 2019 17:02:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id B732D207A6
 for <devel@driverdev.osuosl.org>; Thu,  2 May 2019 17:02:27 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id a9so4386313wrp.6
 for <devel@driverdev.osuosl.org>; Thu, 02 May 2019 10:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=kx4DgfAQpc1SkOs3S3ljaCHijCCDKn9O/YxhA6nUVhk=;
 b=qmfT+QWJzHxk05z3zEnxOg/KbVk+/3ngefd0O1NEe56b/sjVBx1qQIoG1obC8lO5HC
 MylzmtZIgn6TqMPi0gggqnYk5BfAVimTqSpG/VbMSmLwNelw1IVB/C9mQkyxMhiy4nRj
 PVVlH5DHO3Gxr4FZLP1srSTM1b73EPytEOCJKfCu8pv81a3CdpKxRVQSnOttb+3tE44k
 VGrEdfP6vkeJ+v/dPYxq3HfcqbUEaY+DPCT8SMLaH1vEQeZKp7y7yhB04CNIRwuWvHbC
 n4MwSWlmLaDL9Hg5CyaTsT0bQWp7hGI1Mw76S85maMVLxhdjxld5HPflMGciaMbSvokX
 8KXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=kx4DgfAQpc1SkOs3S3ljaCHijCCDKn9O/YxhA6nUVhk=;
 b=P7/ZwB0TmEbL3hlPT4z5NIcx2M+e/wdLOImz0H5orjb8e/P2fZLVUTdDJ6Aufrhqao
 +nLm/ul8+h2goO0TD1g9N+ElxYzlZkKt2ySnnCs8/IkbR2FoNt2fgUBi+GwxAQkaXB9w
 wzoymzTyOoDcofAgdni+Yv6jntmldzD+MftQ4XtndGdbMjd1nhxqr9VhVvNoS8j5cuRN
 YLdTZoN2aTJQ7xk68tI3rCnYbKewyd3pJpgKbgMx1FJUqnbkQ5vTATnuS4gxLnND6+tb
 IAIbJWpli/qJeAxgeIMg1JAxTN8UhgF/5n/4odoi5RTvs7XFf6nfkolF3RRwjRlQKbG/
 c6vg==
X-Gm-Message-State: APjAAAXaZObAQCZtLQwBRlGkFtpD8yQPdPJq5/G7dhMZCgLZYgGeCs19
 8sdZLHG9rUJIsYcXA6QlJBM=
X-Google-Smtp-Source: APXvYqzPtVchwo3LhZgz8kSZesp2hkpUql+aoNTA48IvDgMiN2rFCnB96ag25aOZb8t9N4KyxD2DxQ==
X-Received: by 2002:a5d:6a04:: with SMTP id m4mr2662262wru.84.1556816546075;
 Thu, 02 May 2019 10:02:26 -0700 (PDT)
Received: from [172.30.88.227] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id z7sm12869468wme.26.2019.05.02.10.02.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 10:02:25 -0700 (PDT)
Subject: Re: [PATCH v3 5/8] media: staging/imx: Remove
 capture_device_set_format
To: Rui Miguel Silva <rmfrfs@gmail.com>
References: <20190430225018.30252-1-slongerbeam@gmail.com>
 <20190430225018.30252-6-slongerbeam@gmail.com> <m3lfzp5g58.fsf@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <edcf9f4f-d798-ce03-a59b-6bdcd77557a3@gmail.com>
Date: Thu, 2 May 2019 10:02:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <m3lfzp5g58.fsf@gmail.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 5/2/19 3:01 AM, Rui Miguel Silva wrote:
> Hi Steve,
> Thanks for v3 with bisect fixed.
>
> On Tue 30 Apr 2019 at 23:50, Steve Longerbeam wrote:
>> Don't propagate the source pad format to the connected capture device.
>> It's now the responsibility of userspace to call VIDIOC_S_FMT on the
>> capture device to ensure the capture format and compose rectangle
>> are compatible with the connected source. To check this, validate
>> the capture format with the source before streaming starts.
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>> ---
>>   drivers/staging/media/imx/imx-ic-prpencvf.c   | 16 +----
>>   drivers/staging/media/imx/imx-media-capture.c | 64 +++++++++++++------
>>   drivers/staging/media/imx/imx-media-csi.c     | 16 +----
>>   drivers/staging/media/imx/imx-media.h         |  2 -
>>   drivers/staging/media/imx/imx7-media-csi.c    | 17 +----
>>   5 files changed, 50 insertions(+), 65 deletions(-)
>>
>> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> index afaa3a8b15e9..63334fd61492 100644
>> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
>> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> @@ -906,9 +906,7 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>   		       struct v4l2_subdev_format *sdformat)
>>   {
>>   	struct prp_priv *priv = sd_to_priv(sd);
>> -	struct imx_media_video_dev *vdev = priv->vdev;
>>   	const struct imx_media_pixfmt *cc;
>> -	struct v4l2_pix_format vdev_fmt;
>>   	struct v4l2_mbus_framefmt *fmt;
>>   	int ret = 0;
>>   
>> @@ -945,19 +943,9 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>   			priv->cc[PRPENCVF_SRC_PAD] = outcc;
>>   	}
>>   
>> -	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
>> -		goto out;
>> -
>> -	priv->cc[sdformat->pad] = cc;
>> +	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
>> +		priv->cc[sdformat->pad] = cc;
>>   
>> -	/* propagate output pad format to capture device */
>> -	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
>> -				      &priv->format_mbus[PRPENCVF_SRC_PAD],
>> -				      priv->cc[PRPENCVF_SRC_PAD]);
>> -	mutex_unlock(&priv->lock);
>> -	imx_media_capture_device_set_format(vdev, &vdev_fmt);
>> -
>> -	return 0;
>>   out:
>>   	mutex_unlock(&priv->lock);
>>   	return ret;
>> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
>> index 555f6204660b..b77a67bda47c 100644
>> --- a/drivers/staging/media/imx/imx-media-capture.c
>> +++ b/drivers/staging/media/imx/imx-media-capture.c
>> @@ -205,7 +205,8 @@ static int capture_g_fmt_vid_cap(struct file *file, void *fh,
>>   
>>   static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
>>   				     struct v4l2_subdev_format *fmt_src,
>> -				     struct v4l2_format *f)
>> +				     struct v4l2_format *f,
>> +				     struct v4l2_rect *compose)
>>   {
>>   	const struct imx_media_pixfmt *cc, *cc_src;
>>   
>> @@ -247,6 +248,13 @@ static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
>>   
>>   	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, &fmt_src->format, cc);
>>   
>> +	if (compose) {
>> +		compose->left = 0;
>> +		compose->top = 0;
>> +		compose->width = fmt_src->format.width;
>> +		compose->height = fmt_src->format.height;
>> +	}
>> +
>>   	return 0;
>>   }
>>   
>> @@ -263,7 +271,7 @@ static int capture_try_fmt_vid_cap(struct file *file, void *fh,
>>   	if (ret)
>>   		return ret;
>>   
>> -	return __capture_try_fmt_vid_cap(priv, &fmt_src, f);
>> +	return __capture_try_fmt_vid_cap(priv, &fmt_src, f, NULL);
>>   }
>>   
>>   static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>> @@ -271,6 +279,7 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>>   {
>>   	struct capture_priv *priv = video_drvdata(file);
>>   	struct v4l2_subdev_format fmt_src;
>> +	struct v4l2_rect compose;
>>   	int ret;
>>   
>>   	if (vb2_is_busy(&priv->q)) {
>> @@ -284,17 +293,14 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f);
>> +	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f, &compose);
>>   	if (ret)
>>   		return ret;
>>   
>>   	priv->vdev.fmt.fmt.pix = f->fmt.pix;
>>   	priv->vdev.cc = imx_media_find_format(f->fmt.pix.pixelformat,
>>   					      CS_SEL_ANY, true);
>> -	priv->vdev.compose.left = 0;
>> -	priv->vdev.compose.top = 0;
>> -	priv->vdev.compose.width = fmt_src.format.width;
>> -	priv->vdev.compose.height = fmt_src.format.height;
>> +	priv->vdev.compose = compose;
>>   
>>   	return 0;
>>   }
>> @@ -524,6 +530,33 @@ static void capture_buf_queue(struct vb2_buffer *vb)
>>   	spin_unlock_irqrestore(&priv->q_lock, flags);
>>   }
>>   
>> +static int capture_validate_fmt(struct capture_priv *priv)
>> +{
>> +	struct v4l2_subdev_format fmt_src;
>> +	struct v4l2_rect compose;
>> +	struct v4l2_format f;
>> +	int ret;
>> +
>> +	fmt_src.pad = priv->src_sd_pad;
>> +	fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
>> +	ret = v4l2_subdev_call(priv->src_sd, pad, get_fmt, NULL, &fmt_src);
>> +	if (ret)
>> +		return ret;
>> +
>> +	v4l2_fill_pix_format(&f.fmt.pix, &fmt_src.format);
>> +
>> +	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, &f, &compose);
>> +	if (ret)
>> +		return ret;
>> +
>> +	return (priv->vdev.fmt.fmt.pix.width != f.fmt.pix.width ||
>> +		priv->vdev.fmt.fmt.pix.height != f.fmt.pix.height ||
>> +		priv->vdev.cc->cs !=
>> +		ipu_pixelformat_to_colorspace(f.fmt.pix.pixelformat) ||
> This fails on imx7, no ipu, it returns unknown colorspace.

Oops, thanks for catching.

> Removing this check everything works ok on my setup with this
> series.
> Do not know the best way to fix this but you may have? :)

Maybe the best fix is simply to remove the check for same colorspace, 
verifying the rectangles is probably good enough.


>
>> +		priv->vdev.compose.width != compose.width ||
>> +		priv->vdev.compose.height != compose.height) ? -EINVAL : 0;
>> +}
>> +
>>   static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
>>   {
>>   	struct capture_priv *priv = vb2_get_drv_priv(vq);
>> @@ -531,6 +564,10 @@ static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
>>   	unsigned long flags;
>>   	int ret;
>>   
>> +	ret = capture_validate_fmt(priv);
>> +	if (ret)
> Maybe some verbose output here to let know userland what failed.

Ok.

Steve

>> +		goto return_bufs;
>> +
>>   	ret = imx_media_pipeline_set_stream(priv->md, &priv->src_sd->entity,
>>   					    true);
>>   	if (ret) {
>> @@ -654,19 +691,6 @@ static struct video_device capture_videodev = {
>>   	.device_caps	= V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING,
>>   };
> ---
> Cheers,
> 	Rui
>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
