Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F40DFC32
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Oct 2019 05:26:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D64E86DB3;
	Tue, 22 Oct 2019 03:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hjWrv4-eh432; Tue, 22 Oct 2019 03:26:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D13A186501;
	Tue, 22 Oct 2019 03:26:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACB7F1BF5A0
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 03:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8C8E204E6
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 03:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emcBUN9elZeO for <devel@linuxdriverproject.org>;
 Tue, 22 Oct 2019 03:26:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E903920384
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 03:26:39 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id q15so7634470pll.11
 for <devel@driverdev.osuosl.org>; Mon, 21 Oct 2019 20:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=fvFwWB+sk5jwpo1mMTtfbap3EXjSx+Q3gdfsOY1mpXY=;
 b=cVXCDJQ37x34clG4ZtniWn9ggwfCApl9u/dIy3GlU2Us+zDmUhrs1PAEy262gBQq8t
 GOald2kjFxmrgYI2f8bqRARkpZ2/rUiwZ4qm/mXf5TP4uEfahPODJ3D6H7UYaNooW02c
 /zhHr+8dctSOIs6OQT+3rbGyplggE3+MPOYniKrb071y4jD8PlJ8wK/znGPwNvOOlGcO
 C31AVlKgLwojV84TrquHJB7t4rsIc9P57pMc+rvZO90NZW5LHe0joq76IWWIa1kJQH6y
 rrJiHDSPEtD4cb6EZVlYyUEE65Nsq33bXjBWEpGskSriiFC/BGze1ujZSEXm8mDDAM4T
 GdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=fvFwWB+sk5jwpo1mMTtfbap3EXjSx+Q3gdfsOY1mpXY=;
 b=rn6JT6WDFPDkBqXr+wgZbLfds61v19uRZ/laiyrOOXZefq+Bg9D1Cds4y5GkcMs+SK
 sKi/DdrWppdiGa1tvP4v8FLiHKn4GTkALXRmk7l8KvGWGHtKWfq9Mg1nY41gsdMqGiXW
 RQaNr621z1SsowFb1oxm+4gguuz2WaLGcB7f2cZpxG6+OX2bMLXda/n3hprAojy7LN+8
 O8qp5t4jU2xSUcpO3Cg0/LJIyJka5ErmVv1hRlS1oapbR9cIurrjDAuzElUhE3sCsJEl
 +UzzjURD/e2FcEIjDgTOIvsguiRljcu76wJxX/ANwt1YRKyF/ejsEGzRgnqmfFQJe9kv
 I2jg==
X-Gm-Message-State: APjAAAU6fBSkRq1FfuL7Z1hGZyjKSXq7KCRrHsgTVNxbxf+SjQPe4Yu3
 FJG1QcvddsNnO6Kzin41WJk=
X-Google-Smtp-Source: APXvYqyWUzaMry4Gk46Je0uj+nRiMCEYkR2FdeESs8MRjYsBjZBTgWvFhKnSJOTOpsKMZ9YEQzjU7Q==
X-Received: by 2002:a17:902:7786:: with SMTP id
 o6mr838780pll.109.1571714798930; 
 Mon, 21 Oct 2019 20:26:38 -0700 (PDT)
Received: from [192.168.1.59] (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.gmail.com with ESMTPSA id p9sm16910551pfn.115.2019.10.21.20.26.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 20:26:38 -0700 (PDT)
Subject: Re: [PATCH v8 5/5] media: imx: Try colorimetry at both sink and
 source pads
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20190522010317.23710-1-slongerbeam@gmail.com>
 <20190522010317.23710-6-slongerbeam@gmail.com>
 <20191022014437.GG4947@pendragon.ideasonboard.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <253ac81f-af8e-2bc0-da31-35ac32f88684@gmail.com>
Date: Mon, 21 Oct 2019 20:26:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022014437.GG4947@pendragon.ideasonboard.com>
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

Hi Laurent,

On 10/21/19 6:44 PM, Laurent Pinchart wrote:
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
>>   drivers/staging/media/imx/imx-ic-prp.c      |  6 +-
>>   drivers/staging/media/imx/imx-ic-prpencvf.c |  8 +--
>>   drivers/staging/media/imx/imx-media-csi.c   | 19 +++---
>>   drivers/staging/media/imx/imx-media-utils.c | 73 ++++++++++-----------
>>   drivers/staging/media/imx/imx-media-vdic.c  |  5 +-
>>   drivers/staging/media/imx/imx-media.h       |  5 +-
>>   drivers/staging/media/imx/imx7-media-csi.c  |  8 +--
>>   7 files changed, 62 insertions(+), 62 deletions(-)
>>
>> diff --git a/drivers/staging/media/imx/imx-ic-prp.c b/drivers/staging/media/imx/imx-ic-prp.c
>> index 10ffe00f1a54..f87fe0203720 100644
>> --- a/drivers/staging/media/imx/imx-ic-prp.c
>> +++ b/drivers/staging/media/imx/imx-ic-prp.c
>> @@ -193,8 +193,8 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>   			sdformat->format.code = cc->codes[0];
>>   		}
>>   
>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>> -						   true);
>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>   		break;
>>   	case PRP_SRC_PAD_PRPENC:
>>   	case PRP_SRC_PAD_PRPVF:
>> @@ -203,6 +203,8 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>   		break;
>>   	}
>>   
>> +	imx_media_try_colorimetry(&sdformat->format, true);
>> +
>>   	fmt = __prp_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
>>   	*fmt = sdformat->format;
>>   out:
>> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> index e8b36a181ccc..f2fe3c11c70e 100644
>> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
>> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> @@ -907,8 +907,6 @@ static void prp_try_fmt(struct prp_priv *priv,
>>   		/* propagate colorimetry from sink */
>>   		sdformat->format.colorspace = infmt->colorspace;
>>   		sdformat->format.xfer_func = infmt->xfer_func;
>> -		sdformat->format.quantization = infmt->quantization;
>> -		sdformat->format.ycbcr_enc = infmt->ycbcr_enc;
>>   	} else {
>>   		v4l_bound_align_image(&sdformat->format.width,
>>   				      MIN_W_SINK, MAX_W_SINK, W_ALIGN_SINK,
>> @@ -916,9 +914,11 @@ static void prp_try_fmt(struct prp_priv *priv,
>>   				      MIN_H_SINK, MAX_H_SINK, H_ALIGN_SINK,
>>   				      S_ALIGN);
>>   
>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>> -						   true);
>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>   	}
>> +
>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>   }
>>   
>>   static int prp_set_fmt(struct v4l2_subdev *sd,
>> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
>> index 1d248aca40a9..dce4addadff4 100644
>> --- a/drivers/staging/media/imx/imx-media-csi.c
>> +++ b/drivers/staging/media/imx/imx-media-csi.c
>> @@ -1375,9 +1375,15 @@ static void csi_try_field(struct csi_priv *priv,
>>   	struct v4l2_mbus_framefmt *infmt =
>>   		__csi_get_fmt(priv, cfg, CSI_SINK_PAD, sdformat->which);
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
>>   		return;
>> +	}
>>   
>>   	switch (infmt->field) {
>>   	case V4L2_FIELD_SEQ_TB:
>> @@ -1455,8 +1461,6 @@ static void csi_try_fmt(struct csi_priv *priv,
>>   		/* propagate colorimetry from sink */
>>   		sdformat->format.colorspace = infmt->colorspace;
>>   		sdformat->format.xfer_func = infmt->xfer_func;
>> -		sdformat->format.quantization = infmt->quantization;
>> -		sdformat->format.ycbcr_enc = infmt->ycbcr_enc;
>>   
>>   		break;
>>   	case CSI_SINK_PAD:
>> @@ -1476,10 +1480,6 @@ static void csi_try_fmt(struct csi_priv *priv,
>>   
>>   		csi_try_field(priv, cfg, sdformat);
>>   
>> -		imx_media_fill_default_mbus_fields(
>> -			&sdformat->format, infmt,
>> -			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
>> -
>>   		/* Reset crop and compose rectangles */
>>   		crop->left = 0;
>>   		crop->top = 0;
>> @@ -1495,6 +1495,9 @@ static void csi_try_fmt(struct csi_priv *priv,
>>   
>>   		break;
>>   	}
>> +
>> +	imx_media_try_colorimetry(&sdformat->format,
>> +			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
>>   }
>>   
>>   static int csi_set_fmt(struct v4l2_subdev *sd,
>> diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
>> index b41842dba5ec..05b63395084e 100644
>> --- a/drivers/staging/media/imx/imx-media-utils.c
>> +++ b/drivers/staging/media/imx/imx-media-utils.c
>> @@ -511,21 +511,18 @@ int imx_media_init_cfg(struct v4l2_subdev *sd,
>>   EXPORT_SYMBOL_GPL(imx_media_init_cfg);
>>   
>>   /*
>> - * Check whether the field and colorimetry parameters in tryfmt are
>> - * uninitialized, and if so fill them with the values from fmt,
>> - * or if tryfmt->colorspace has been initialized, all the default
>> - * colorimetry params can be derived from tryfmt->colorspace.
>> + * Default the colorspace in tryfmt to SRGB if set to an unsupported
>> + * colorspace or not initialized. Then set the remaining colorimetry
>> + * parameters based on the colorspace if they are uninitialized.
>>    *
>>    * tryfmt->code must be set on entry.
>>    *
>>    * If this format is destined to be routed through the Image Converter,
>> - * quantization and Y`CbCr encoding must be fixed. The IC expects and
>> - * produces fixed quantization and Y`CbCr encoding at its input and output
>> - * (full range for RGB, limited range for YUV, and V4L2_YCBCR_ENC_601).
>> + * Y`CbCr encoding must be fixed. The IC supports only BT.601 Y`CbCr
>> + * or Rec.709 Y`CbCr encoding.
>>    */
>> -void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>> -					struct v4l2_mbus_framefmt *fmt,
>> -					bool ic_route)
>> +void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
>> +			       bool ic_route)
>>   {
>>   	const struct imx_media_pixfmt *cc;
>>   	bool is_rgb = false;
>> @@ -533,44 +530,46 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>   	cc = imx_media_find_mbus_format(tryfmt->code, CS_SEL_ANY, true);
>>   	if (!cc)
>>   		cc = imx_media_find_ipu_format(tryfmt->code, CS_SEL_ANY);
>> -	if (cc && cc->cs != IPUV3_COLORSPACE_YUV)
>> +	if (cc && cc->cs == IPUV3_COLORSPACE_RGB)
>>   		is_rgb = true;
>>   
>> -	/* fill field if necessary */
>> -	if (tryfmt->field == V4L2_FIELD_ANY)
>> -		tryfmt->field = fmt->field;
> Have you tested this patch on i.MX7 ?

Nope.

>   It breaks pipeline validation as
> the field field isn't handled anymore in imx7_csi_try_fmt(), due to the
> removal if this code.

Yep, patches crossed paths.
>
> I have a written a fix, I'll prepare a patch.

Please do, thanks.

Steve


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
>>   	} else {
>> -		if (tryfmt->xfer_func == V4L2_XFER_FUNC_DEFAULT) {
>> -			tryfmt->xfer_func =
>> -				V4L2_MAP_XFER_FUNC_DEFAULT(tryfmt->colorspace);
>> -		}
>>   		if (tryfmt->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT) {
>>   			tryfmt->ycbcr_enc =
>>   				V4L2_MAP_YCBCR_ENC_DEFAULT(tryfmt->colorspace);
>>   		}
>> -		if (tryfmt->quantization == V4L2_QUANTIZATION_DEFAULT) {
>> -			tryfmt->quantization =
>> -				V4L2_MAP_QUANTIZATION_DEFAULT(
>> -					is_rgb, tryfmt->colorspace,
>> -					tryfmt->ycbcr_enc);
>> -		}
>>   	}
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
>>   }
>> -EXPORT_SYMBOL_GPL(imx_media_fill_default_mbus_fields);
>> +EXPORT_SYMBOL_GPL(imx_media_try_colorimetry);
>>   
>>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>   				  struct v4l2_rect *compose,
>> diff --git a/drivers/staging/media/imx/imx-media-vdic.c b/drivers/staging/media/imx/imx-media-vdic.c
>> index 4487374c9435..fbafd7fb7aeb 100644
>> --- a/drivers/staging/media/imx/imx-media-vdic.c
>> +++ b/drivers/staging/media/imx/imx-media-vdic.c
>> @@ -617,14 +617,13 @@ static void vdic_try_fmt(struct vdic_priv *priv,
>>   				      &sdformat->format.height,
>>   				      MIN_H, MAX_H_VDIC, H_ALIGN, S_ALIGN);
>>   
>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>> -						   true);
>> -
>>   		/* input must be interlaced! Choose SEQ_TB if not */
>>   		if (!V4L2_FIELD_HAS_BOTH(sdformat->format.field))
>>   			sdformat->format.field = V4L2_FIELD_SEQ_TB;
>>   		break;
>>   	}
>> +
>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>   }
>>   
>>   static int vdic_set_fmt(struct v4l2_subdev *sd,
>> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
>> index 6587aa49e005..23024c9bc887 100644
>> --- a/drivers/staging/media/imx/imx-media.h
>> +++ b/drivers/staging/media/imx/imx-media.h
>> @@ -172,9 +172,8 @@ int imx_media_init_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
>>   			    const struct imx_media_pixfmt **cc);
>>   int imx_media_init_cfg(struct v4l2_subdev *sd,
>>   		       struct v4l2_subdev_pad_config *cfg);
>> -void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>> -					struct v4l2_mbus_framefmt *fmt,
>> -					bool ic_route);
>> +void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
>> +			       bool ic_route);
>>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>   				  struct v4l2_rect *compose,
>>   				  const struct v4l2_mbus_framefmt *mbus,
>> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
>> index a708a0340eb1..6e2f4c3eb24f 100644
>> --- a/drivers/staging/media/imx/imx7-media-csi.c
>> +++ b/drivers/staging/media/imx/imx7-media-csi.c
>> @@ -1003,8 +1003,6 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>>   
>>   		sdformat->format.colorspace = in_fmt->colorspace;
>>   		sdformat->format.xfer_func = in_fmt->xfer_func;
>> -		sdformat->format.quantization = in_fmt->quantization;
>> -		sdformat->format.ycbcr_enc = in_fmt->ycbcr_enc;
>>   		break;
>>   	case IMX7_CSI_PAD_SINK:
>>   		*cc = imx_media_find_mbus_format(sdformat->format.code,
>> @@ -1015,14 +1013,14 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>>   							 false);
>>   			sdformat->format.code = (*cc)->codes[0];
>>   		}
>> -
>> -		imx_media_fill_default_mbus_fields(&sdformat->format, in_fmt,
>> -						   false);
>>   		break;
>>   	default:
>>   		return -EINVAL;
>>   		break;
>>   	}
>> +
>> +	imx_media_try_colorimetry(&sdformat->format, false);
>> +
>>   	return 0;
>>   }
>>   
>> -- 
>> 2.17.1
>>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
