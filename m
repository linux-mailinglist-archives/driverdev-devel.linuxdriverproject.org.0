Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D24BE0528
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Oct 2019 15:35:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF2C185E9B;
	Tue, 22 Oct 2019 13:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LpNHlyufRtOg; Tue, 22 Oct 2019 13:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF57B858B8;
	Tue, 22 Oct 2019 13:35:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9AF951BF290
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 13:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9726F86DFF
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 13:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4RR4k5K6CL4 for <devel@linuxdriverproject.org>;
 Tue, 22 Oct 2019 13:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3EF4986DA8
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 13:34:59 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id r1so8309558wrs.9
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 06:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=aiABoOHHstmfOjFBUGkomz50qhPWhAOl5QlWYSiz66k=;
 b=OPOvJzXCUg9ACH8KoODUTfZAEP+VgmHlgfRVe9vtKLIH2rd5o9NIaEsuhXykPp1bIG
 2DehfBBu/ZH+BhYWPU9qIrUW32cCRWuHEggwzwE1ijyMwpdN2ViH7KHw7dLCZDKsVf6a
 4t6MLr8Swn6bWcwIPBvWsEY8ke72Ts3LV5kgyWnwooIYIFtVH4YFF8AgsBdIp2pn9X6Y
 fR607vMzf4dXPxJlE9XpsgCmGcPACG7dgvYpbtthWnQ1XW7k0D94KujSY7VaFyeholAQ
 Vq4AGmSNRSSmIVy8e1/E01Z0GrN4WbG3hTjEl9Vv+MrX6QdLJEqIGEPIqb1sONwfMMFL
 diZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=aiABoOHHstmfOjFBUGkomz50qhPWhAOl5QlWYSiz66k=;
 b=HJxbom+71lYh60KdBDLneOl/55N1QGUMbmj4v3xUR2kR9S0hgWS2zd4J2Pz/7gJdsN
 qu2jSuWFwnx0kEa7DHiOglFGzISF2MZYmWqzDtDcGBsVxZs7JQqyFTreQz7LKiUCKXVb
 xFFNxkwOe4eTzjUFRkKwsUiySce4LKbk69/Y66XSYJMGmkC9yE3Gl0Pa4UqBExk0BXTm
 LAOXvkQO6LoiiSef/1yDvckJFpyzKuK26ynyMy5BJCI4DUuNik+FD5BsfIGAP3428Ay+
 4VjI9YUPzCa1vdyAMwtPjdcabbqwGL31n6vFlfSczwdHEHrZulcTvfm79VgR+nnomMN7
 CXgQ==
X-Gm-Message-State: APjAAAXvGLUZ5j8JKSkzGuG7o+a5M5ZnvaTrG+4oh9R7Ytjj45vlomHV
 IohhH6FMsKF6OuWz78fO9jM=
X-Google-Smtp-Source: APXvYqx4WVrbgGyzYMqEwMroroDhSjTZNhJfuadvJ4dhQAE2BriU8Z2o4BWAFzNDDArcCBDAElBOLw==
X-Received: by 2002:a5d:6203:: with SMTP id y3mr3631999wru.142.1571751297347; 
 Tue, 22 Oct 2019 06:34:57 -0700 (PDT)
Received: from arch-late (87-196-72-107.net.novis.pt. [87.196.72.107])
 by smtp.gmail.com with ESMTPSA id o11sm11691214wmh.28.2019.10.22.06.34.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 06:34:56 -0700 (PDT)
References: <20190522010317.23710-1-slongerbeam@gmail.com>
 <20190522010317.23710-6-slongerbeam@gmail.com>
 <20191022014437.GG4947@pendragon.ideasonboard.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v8 5/5] media: imx: Try colorimetry at both sink and
 source pads
In-reply-to: <20191022014437.GG4947@pendragon.ideasonboard.com>
Date: Tue, 22 Oct 2019 14:34:53 +0100
Message-ID: <m3ftjkoqde.fsf@gmail.com>
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
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Laurent,
On Tue 22 Oct 2019 at 02:44, Laurent Pinchart wrote:
> Hi Steve,
>
> On Tue, May 21, 2019 at 06:03:17PM -0700, Steve Longerbeam wrote:
>> Retask imx_media_fill_default_mbus_fields() to try colorimetry parameters,
>> renaming it to to imx_media_try_colorimetry(), and call it at both sink and
>> source pad try_fmt's. The unrelated check for uninitialized field value is
>> moved out to appropriate places in each subdev try_fmt.
>>
>> The IC now supports Rec.709 and BT.601 Y'CbCr encoding, and both limited
>> and full range quantization for both YUV and RGB space, so allow those
>> for pipelines that route through the IC.
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>> ---
>> Changes in v7:
>> - squashed with "media: imx: Allow Rec.709 encoding for IC routes".
>> - remove the RGB full-range quantization restriction for IC routes.
>> ---
>>  drivers/staging/media/imx/imx-ic-prp.c      |  6 +-
>>  drivers/staging/media/imx/imx-ic-prpencvf.c |  8 +--
>>  drivers/staging/media/imx/imx-media-csi.c   | 19 +++---
>>  drivers/staging/media/imx/imx-media-utils.c | 73 ++++++++++-----------
>>  drivers/staging/media/imx/imx-media-vdic.c  |  5 +-
>>  drivers/staging/media/imx/imx-media.h       |  5 +-
>>  drivers/staging/media/imx/imx7-media-csi.c  |  8 +--
>>  7 files changed, 62 insertions(+), 62 deletions(-)
>>
>> diff --git a/drivers/staging/media/imx/imx-ic-prp.c b/drivers/staging/media/imx/imx-ic-prp.c
>> index 10ffe00f1a54..f87fe0203720 100644
>> --- a/drivers/staging/media/imx/imx-ic-prp.c
>> +++ b/drivers/staging/media/imx/imx-ic-prp.c
>> @@ -193,8 +193,8 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>  			sdformat->format.code = cc->codes[0];
>>  		}
>>
>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>> -						   true);
>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>  		break;
>>  	case PRP_SRC_PAD_PRPENC:
>>  	case PRP_SRC_PAD_PRPVF:
>> @@ -203,6 +203,8 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>  		break;
>>  	}
>>
>> +	imx_media_try_colorimetry(&sdformat->format, true);
>> +
>>  	fmt = __prp_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
>>  	*fmt = sdformat->format;
>>  out:
>> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> index e8b36a181ccc..f2fe3c11c70e 100644
>> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
>> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> @@ -907,8 +907,6 @@ static void prp_try_fmt(struct prp_priv *priv,
>>  		/* propagate colorimetry from sink */
>>  		sdformat->format.colorspace = infmt->colorspace;
>>  		sdformat->format.xfer_func = infmt->xfer_func;
>> -		sdformat->format.quantization = infmt->quantization;
>> -		sdformat->format.ycbcr_enc = infmt->ycbcr_enc;
>>  	} else {
>>  		v4l_bound_align_image(&sdformat->format.width,
>>  				      MIN_W_SINK, MAX_W_SINK, W_ALIGN_SINK,
>> @@ -916,9 +914,11 @@ static void prp_try_fmt(struct prp_priv *priv,
>>  				      MIN_H_SINK, MAX_H_SINK, H_ALIGN_SINK,
>>  				      S_ALIGN);
>>
>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>> -						   true);
>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>  	}
>> +
>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>  }
>>
>>  static int prp_set_fmt(struct v4l2_subdev *sd,
>> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
>> index 1d248aca40a9..dce4addadff4 100644
>> --- a/drivers/staging/media/imx/imx-media-csi.c
>> +++ b/drivers/staging/media/imx/imx-media-csi.c
>> @@ -1375,9 +1375,15 @@ static void csi_try_field(struct csi_priv *priv,
>>  	struct v4l2_mbus_framefmt *infmt =
>>  		__csi_get_fmt(priv, cfg, CSI_SINK_PAD, sdformat->which);
>>
>> -	/* no restrictions on sink pad field type */
>> -	if (sdformat->pad == CSI_SINK_PAD)
>> +	/*
>> +	 * no restrictions on sink pad field type except must
>> +	 * be initialized.
>> +	 */
>> +	if (sdformat->pad == CSI_SINK_PAD) {
>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>  		return;
>> +	}
>>
>>  	switch (infmt->field) {
>>  	case V4L2_FIELD_SEQ_TB:
>> @@ -1455,8 +1461,6 @@ static void csi_try_fmt(struct csi_priv *priv,
>>  		/* propagate colorimetry from sink */
>>  		sdformat->format.colorspace = infmt->colorspace;
>>  		sdformat->format.xfer_func = infmt->xfer_func;
>> -		sdformat->format.quantization = infmt->quantization;
>> -		sdformat->format.ycbcr_enc = infmt->ycbcr_enc;
>>
>>  		break;
>>  	case CSI_SINK_PAD:
>> @@ -1476,10 +1480,6 @@ static void csi_try_fmt(struct csi_priv *priv,
>>
>>  		csi_try_field(priv, cfg, sdformat);
>>
>> -		imx_media_fill_default_mbus_fields(
>> -			&sdformat->format, infmt,
>> -			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
>> -
>>  		/* Reset crop and compose rectangles */
>>  		crop->left = 0;
>>  		crop->top = 0;
>> @@ -1495,6 +1495,9 @@ static void csi_try_fmt(struct csi_priv *priv,
>>
>>  		break;
>>  	}
>> +
>> +	imx_media_try_colorimetry(&sdformat->format,
>> +			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
>>  }
>>
>>  static int csi_set_fmt(struct v4l2_subdev *sd,
>> diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
>> index b41842dba5ec..05b63395084e 100644
>> --- a/drivers/staging/media/imx/imx-media-utils.c
>> +++ b/drivers/staging/media/imx/imx-media-utils.c
>> @@ -511,21 +511,18 @@ int imx_media_init_cfg(struct v4l2_subdev *sd,
>>  EXPORT_SYMBOL_GPL(imx_media_init_cfg);
>>
>>  /*
>> - * Check whether the field and colorimetry parameters in tryfmt are
>> - * uninitialized, and if so fill them with the values from fmt,
>> - * or if tryfmt->colorspace has been initialized, all the default
>> - * colorimetry params can be derived from tryfmt->colorspace.
>> + * Default the colorspace in tryfmt to SRGB if set to an unsupported
>> + * colorspace or not initialized. Then set the remaining colorimetry
>> + * parameters based on the colorspace if they are uninitialized.
>>   *
>>   * tryfmt->code must be set on entry.
>>   *
>>   * If this format is destined to be routed through the Image Converter,
>> - * quantization and Y`CbCr encoding must be fixed. The IC expects and
>> - * produces fixed quantization and Y`CbCr encoding at its input and output
>> - * (full range for RGB, limited range for YUV, and V4L2_YCBCR_ENC_601).
>> + * Y`CbCr encoding must be fixed. The IC supports only BT.601 Y`CbCr
>> + * or Rec.709 Y`CbCr encoding.
>>   */
>> -void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>> -					struct v4l2_mbus_framefmt *fmt,
>> -					bool ic_route)
>> +void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
>> +			       bool ic_route)
>>  {
>>  	const struct imx_media_pixfmt *cc;
>>  	bool is_rgb = false;
>> @@ -533,44 +530,46 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>  	cc = imx_media_find_mbus_format(tryfmt->code, CS_SEL_ANY, true);
>>  	if (!cc)
>>  		cc = imx_media_find_ipu_format(tryfmt->code, CS_SEL_ANY);
>> -	if (cc && cc->cs != IPUV3_COLORSPACE_YUV)
>> +	if (cc && cc->cs == IPUV3_COLORSPACE_RGB)
>>  		is_rgb = true;
>>
>> -	/* fill field if necessary */
>> -	if (tryfmt->field == V4L2_FIELD_ANY)
>> -		tryfmt->field = fmt->field;
>
> Have you tested this patch on i.MX7 ? It breaks pipeline validation as
> the field field isn't handled anymore in imx7_csi_try_fmt(), due to the
> removal if this code.
>
> I have a written a fix, I'll prepare a patch.
>

Somehow I missed completely this series. I do not recall it at all.
Thanks in advance for your patch Laurent.

---
Cheers,
	Rui

>
>> +	switch (tryfmt->colorspace) {
>> +	case V4L2_COLORSPACE_SMPTE170M:
>> +	case V4L2_COLORSPACE_REC709:
>> +	case V4L2_COLORSPACE_JPEG:
>> +	case V4L2_COLORSPACE_SRGB:
>> +	case V4L2_COLORSPACE_BT2020:
>> +	case V4L2_COLORSPACE_OPRGB:
>> +	case V4L2_COLORSPACE_DCI_P3:
>> +	case V4L2_COLORSPACE_RAW:
>> +		break;
>> +	default:
>> +		tryfmt->colorspace = V4L2_COLORSPACE_SRGB;
>> +		break;
>> +	}
>> +
>> +	if (tryfmt->xfer_func == V4L2_XFER_FUNC_DEFAULT)
>> +		tryfmt->xfer_func =
>> +			V4L2_MAP_XFER_FUNC_DEFAULT(tryfmt->colorspace);
>>
>> -	/* fill colorimetry if necessary */
>> -	if (tryfmt->colorspace == V4L2_COLORSPACE_DEFAULT) {
>> -		tryfmt->colorspace = fmt->colorspace;
>> -		tryfmt->xfer_func = fmt->xfer_func;
>> -		tryfmt->ycbcr_enc = fmt->ycbcr_enc;
>> -		tryfmt->quantization = fmt->quantization;
>> +	if (ic_route) {
>> +		if (tryfmt->ycbcr_enc != V4L2_YCBCR_ENC_601 &&
>> +		    tryfmt->ycbcr_enc != V4L2_YCBCR_ENC_709)
>> +			tryfmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>>  	} else {
>> -		if (tryfmt->xfer_func == V4L2_XFER_FUNC_DEFAULT) {
>> -			tryfmt->xfer_func =
>> -				V4L2_MAP_XFER_FUNC_DEFAULT(tryfmt->colorspace);
>> -		}
>>  		if (tryfmt->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT) {
>>  			tryfmt->ycbcr_enc =
>>  				V4L2_MAP_YCBCR_ENC_DEFAULT(tryfmt->colorspace);
>>  		}
>> -		if (tryfmt->quantization == V4L2_QUANTIZATION_DEFAULT) {
>> -			tryfmt->quantization =
>> -				V4L2_MAP_QUANTIZATION_DEFAULT(
>> -					is_rgb, tryfmt->colorspace,
>> -					tryfmt->ycbcr_enc);
>> -		}
>>  	}
>>
>> -	if (ic_route) {
>> -		tryfmt->quantization = is_rgb ?
>> -			V4L2_QUANTIZATION_FULL_RANGE :
>> -			V4L2_QUANTIZATION_LIM_RANGE;
>> -		tryfmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>> -	}
>> +	if (tryfmt->quantization == V4L2_QUANTIZATION_DEFAULT)
>> +		tryfmt->quantization =
>> +			V4L2_MAP_QUANTIZATION_DEFAULT(is_rgb,
>> +						      tryfmt->colorspace,
>> +						      tryfmt->ycbcr_enc);
>>  }
>> -EXPORT_SYMBOL_GPL(imx_media_fill_default_mbus_fields);
>> +EXPORT_SYMBOL_GPL(imx_media_try_colorimetry);
>>
>>  int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>  				  struct v4l2_rect *compose,
>> diff --git a/drivers/staging/media/imx/imx-media-vdic.c b/drivers/staging/media/imx/imx-media-vdic.c
>> index 4487374c9435..fbafd7fb7aeb 100644
>> --- a/drivers/staging/media/imx/imx-media-vdic.c
>> +++ b/drivers/staging/media/imx/imx-media-vdic.c
>> @@ -617,14 +617,13 @@ static void vdic_try_fmt(struct vdic_priv *priv,
>>  				      &sdformat->format.height,
>>  				      MIN_H, MAX_H_VDIC, H_ALIGN, S_ALIGN);
>>
>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>> -						   true);
>> -
>>  		/* input must be interlaced! Choose SEQ_TB if not */
>>  		if (!V4L2_FIELD_HAS_BOTH(sdformat->format.field))
>>  			sdformat->format.field = V4L2_FIELD_SEQ_TB;
>>  		break;
>>  	}
>> +
>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>  }
>>
>>  static int vdic_set_fmt(struct v4l2_subdev *sd,
>> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
>> index 6587aa49e005..23024c9bc887 100644
>> --- a/drivers/staging/media/imx/imx-media.h
>> +++ b/drivers/staging/media/imx/imx-media.h
>> @@ -172,9 +172,8 @@ int imx_media_init_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
>>  			    const struct imx_media_pixfmt **cc);
>>  int imx_media_init_cfg(struct v4l2_subdev *sd,
>>  		       struct v4l2_subdev_pad_config *cfg);
>> -void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>> -					struct v4l2_mbus_framefmt *fmt,
>> -					bool ic_route);
>> +void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
>> +			       bool ic_route);
>>  int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>  				  struct v4l2_rect *compose,
>>  				  const struct v4l2_mbus_framefmt *mbus,
>> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
>> index a708a0340eb1..6e2f4c3eb24f 100644
>> --- a/drivers/staging/media/imx/imx7-media-csi.c
>> +++ b/drivers/staging/media/imx/imx7-media-csi.c
>> @@ -1003,8 +1003,6 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>>
>>  		sdformat->format.colorspace = in_fmt->colorspace;
>>  		sdformat->format.xfer_func = in_fmt->xfer_func;
>> -		sdformat->format.quantization = in_fmt->quantization;
>> -		sdformat->format.ycbcr_enc = in_fmt->ycbcr_enc;
>>  		break;
>>  	case IMX7_CSI_PAD_SINK:
>>  		*cc = imx_media_find_mbus_format(sdformat->format.code,
>> @@ -1015,14 +1013,14 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>>  							 false);
>>  			sdformat->format.code = (*cc)->codes[0];
>>  		}
>> -
>> -		imx_media_fill_default_mbus_fields(&sdformat->format, in_fmt,
>> -						   false);
>>  		break;
>>  	default:
>>  		return -EINVAL;
>>  		break;
>>  	}
>> +
>> +	imx_media_try_colorimetry(&sdformat->format, false);
>> +
>>  	return 0;
>>  }
>>
>> --
>> 2.17.1
>>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
