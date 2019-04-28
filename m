Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB07B659
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Apr 2019 20:53:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20D9D85CF0;
	Sun, 28 Apr 2019 18:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id on9sHQotPv4j; Sun, 28 Apr 2019 18:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B3B285BCE;
	Sun, 28 Apr 2019 18:53:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 998E81BF5A4
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 18:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 943D923026
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 18:53:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZF3dch5yLtI for <devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 18:53:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D5F1122E1C
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 18:53:37 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k19so4106899pgh.0
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 11:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=SlWVRomA6xIR/PzGao/Vc2oQImPpSzfK9D5R2MMSd2o=;
 b=R6Y7nMsDH7e4914TKgH88GlFp+9l0yAT9aa6ce/MnwuRG4QQeD9uaaBOQdK4OC5noH
 77XgWEtkGGXRlKrWeScIB38pnBRfRg6nfMeeobyFr8RIBPVm+JuInguSoRuY8rs9OL1G
 GtcQtg7WaRT4Ce3q3EKfrV7CD5721xtdS/3lH4HGR6S97DU4rKRabpBYdsFcAXl18b1f
 dcrNmZ16ZT6drp6jYp8WpN49Ag8Mc1ueiJJmINx9yG/TCkij2WFDzHkd6v0U5NGipp7u
 NHCvaDXtmMtevNKjfipTEG0Id1JTYpMQbV9Xmt8o61cb2sJ4PuPQxFVK+viQhqJ4nhOP
 trng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=SlWVRomA6xIR/PzGao/Vc2oQImPpSzfK9D5R2MMSd2o=;
 b=XLGV3n57dKgiWFIWiz8naR8e4xc5qjHo3m49N+FV74Br9qgw0Fe2MzgF7sETnByTE9
 9mAxWShUqFSy133HJJPjlANjqn/vracL9dSZsqzONvjiUcLZ/RbWew2SJ8I4IfkPnCyZ
 F7kkcN3mz15XcAACVTTeSmqk9heLTpQz3KZ9iIPrc1yLwrbDMp0663YtLHgiChRXn/f7
 Uow2bOkIhraOqiYZ1J52b8Yej07yaK3nEmywkrl84Dlh4J7WaR3OHhnL9nkuiG1HIAhS
 U3RjyhqTOX76K7l2+9KNNUvbjR4UY1J6bQG03vDOfd+tDJe7TDbFZP3DKMJ79S0zQx3k
 B6uQ==
X-Gm-Message-State: APjAAAUIxX2EhH/ZEDeVhcBv8BzmTkjbfZUS8zA1C2dz1gGRknbog2bC
 5+05zQRazf7Hi51DNhBMQeQ=
X-Google-Smtp-Source: APXvYqwhgN+vbjuLCwYfITQw4hTuDgZiNhSJjcInfdsOpbibm9oLm3GT2BNkPGrLixG/kB3WuR6H3g==
X-Received: by 2002:a62:2848:: with SMTP id o69mr12608107pfo.95.1556477617248; 
 Sun, 28 Apr 2019 11:53:37 -0700 (PDT)
Received: from [192.168.1.59] (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.gmail.com with ESMTPSA id s85sm55541041pfa.23.2019.04.28.11.53.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 11:53:36 -0700 (PDT)
Subject: Re: [PATCH] media: staging/imx: add media device to capture register
To: Rui Miguel Silva <rui.silva@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20190412164400.1270-1-rui.silva@linaro.org>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <a375ed17-72e3-21d7-59c1-60b1fbe4b166@gmail.com>
Date: Sun, 28 Apr 2019 11:53:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190412164400.1270-1-rui.silva@linaro.org>
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rui,

On second thought, there is no reason to pass the media device to 
imx_media_capture_device_register(), because it is already available via 
v4l2_dev->mdev. I will be posting a patch in v2 of the "Switch to sync 
registration for IPU subdevs" series that fixes this.

Steve


On 4/12/19 9:44 AM, Rui Miguel Silva wrote:
> When register the capture media device it is assumed that the device
> data is the media device. In the imx6 case is but in the imx7 is not
> case. The device data is the csi structure.
>
> Add the explicit argument of the media device that we want to
> associate with the capture device.
>
> Reported-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>   drivers/staging/media/imx/imx-ic-prpencvf.c   | 2 +-
>   drivers/staging/media/imx/imx-media-capture.c | 6 +++---
>   drivers/staging/media/imx/imx-media-csi.c     | 2 +-
>   drivers/staging/media/imx/imx-media.h         | 3 ++-
>   drivers/staging/media/imx/imx7-media-csi.c    | 2 +-
>   5 files changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
> index 5c8e6ad8c025..3ca1422f6154 100644
> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
> @@ -1270,7 +1270,7 @@ static int prp_registered(struct v4l2_subdev *sd)
>   	if (ret)
>   		return ret;
>   
> -	ret = imx_media_capture_device_register(priv->vdev);
> +	ret = imx_media_capture_device_register(priv->md, priv->vdev);
>   	if (ret)
>   		return ret;
>   
> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
> index 9703c85b19c4..7688238a3396 100644
> --- a/drivers/staging/media/imx/imx-media-capture.c
> +++ b/drivers/staging/media/imx/imx-media-capture.c
> @@ -706,7 +706,8 @@ void imx_media_capture_device_error(struct imx_media_video_dev *vdev)
>   }
>   EXPORT_SYMBOL_GPL(imx_media_capture_device_error);
>   
> -int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
> +int imx_media_capture_device_register(struct imx_media_dev *md,
> +				      struct imx_media_video_dev *vdev)
>   {
>   	struct capture_priv *priv = to_capture_priv(vdev);
>   	struct v4l2_subdev *sd = priv->src_sd;
> @@ -715,8 +716,7 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
>   	struct v4l2_subdev_format fmt_src;
>   	int ret;
>   
> -	/* get media device */
> -	priv->md = dev_get_drvdata(sd->v4l2_dev->dev);
> +	priv->md = md;
>   
>   	vfd->v4l2_dev = sd->v4l2_dev;
>   
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 3b7517348666..3408ec023d29 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1806,7 +1806,7 @@ static int csi_registered(struct v4l2_subdev *sd)
>   	if (ret)
>   		goto free_fim;
>   
> -	ret = imx_media_capture_device_register(priv->vdev);
> +	ret = imx_media_capture_device_register(priv->md, priv->vdev);
>   	if (ret)
>   		goto free_fim;
>   
> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
> index ae964c8d5be1..c3a8512bd10f 100644
> --- a/drivers/staging/media/imx/imx-media.h
> +++ b/drivers/staging/media/imx/imx-media.h
> @@ -271,7 +271,8 @@ int imx_media_of_add_csi(struct imx_media_dev *imxmd,
>   struct imx_media_video_dev *
>   imx_media_capture_device_init(struct v4l2_subdev *src_sd, int pad);
>   void imx_media_capture_device_remove(struct imx_media_video_dev *vdev);
> -int imx_media_capture_device_register(struct imx_media_video_dev *vdev);
> +int imx_media_capture_device_register(struct imx_media_dev *md,
> +				       struct imx_media_video_dev *vdev);
>   void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev);
>   struct imx_media_buffer *
>   imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev);
> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
> index 3fba7c27c0ec..a907c5feb3eb 100644
> --- a/drivers/staging/media/imx/imx7-media-csi.c
> +++ b/drivers/staging/media/imx/imx7-media-csi.c
> @@ -1124,7 +1124,7 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
>   	if (ret < 0)
>   		return ret;
>   
> -	ret = imx_media_capture_device_register(csi->vdev);
> +	ret = imx_media_capture_device_register(csi->imxmd, csi->vdev);
>   	if (ret < 0)
>   		return ret;
>   

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
