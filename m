Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F4B132CAB
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jan 2020 18:10:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A54A87852;
	Tue,  7 Jan 2020 17:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Hys37IH5e7l; Tue,  7 Jan 2020 17:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78A1987804;
	Tue,  7 Jan 2020 17:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31DD71BF471
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 17:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E42C8568D
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 17:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5xlhJaqDOGaF for <devel@linuxdriverproject.org>;
 Tue,  7 Jan 2020 17:10:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs10.siol.net [185.57.226.201])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F47A811EF
 for <devel@driverdev.osuosl.org>; Tue,  7 Jan 2020 17:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id BFDFE5230E8;
 Tue,  7 Jan 2020 18:10:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id c4f-rLiq8ZIz; Tue,  7 Jan 2020 18:10:44 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1CC93522F8A;
 Tue,  7 Jan 2020 18:10:44 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id BE7DE522FC5;
 Tue,  7 Jan 2020 18:10:42 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mchehab@kernel.org, mripard@kernel.org, paul.kocialkowski@bootlin.com,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 2/4] media: cedrus: hevc: Add support for scaling matrix
Date: Tue, 07 Jan 2020 18:10:42 +0100
Message-ID: <2627039.Y6S9NjorxK@jernej-laptop>
In-Reply-To: <4ac91ed5-a220-6a04-b1da-de27a306f8f2@xs4all.nl>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-3-jernej.skrabec@siol.net>
 <4ac91ed5-a220-6a04-b1da-de27a306f8f2@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

Dne torek, 07. januar 2020 ob 16:01:16 CET je Hans Verkuil napisal(a):
> On 12/13/19 5:04 PM, Jernej Skrabec wrote:
> > HEVC frames may use scaling list feature. Add support for it.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus.c   |  7 ++
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   |  2 +
> >  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 70 ++++++++++++++++++-
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  2 +
> >  5 files changed, 81 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus.c index
> > c6ddd46eff82..bf68bc6b20c8 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> > @@ -116,6 +116,13 @@ static const struct cedrus_control cedrus_controls[]
> > = {> 
> >  		.codec		= CEDRUS_CODEC_H265,
> >  		.required	= true,
> >  	
> >  	},
> > 
> > +	{
> > +		.cfg = {
> > +			.id	= 
V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX,
> > +		},
> > +		.codec		= CEDRUS_CODEC_H265,
> > +		.required	= true,
> 
> Should this be true? This means that existing applications are now
> suddenly required to always pass the scaling matrix for every buffer.
> 
> Especially since the commit log says: 'HEVC frames *may* use scaling list
> feature', indicating that this is an optional feature.

True. Can you fix this when applying if this is the only issue?

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > +	},
> > 
> >  	{
> >  	
> >  		.cfg = {
> >  		
> >  			.id	= 
V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE,
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > 96765555ab8a..d945f4f0ff2d 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > @@ -73,6 +73,7 @@ struct cedrus_h265_run {
> > 
> >  	const struct v4l2_ctrl_hevc_sps			*sps;
> >  	const struct v4l2_ctrl_hevc_pps			*pps;
> >  	const struct v4l2_ctrl_hevc_slice_params	*slice_params;
> > 
> > +	const struct v4l2_ctrl_hevc_scaling_matrix	
*scaling_matrix;
> > 
> >  };
> >  
> >  struct cedrus_run {
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c index
> > 4a2fc33a1d79..327ed6c264dc 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > @@ -66,6 +66,8 @@ void cedrus_device_run(void *priv)
> > 
> >  			V4L2_CID_MPEG_VIDEO_HEVC_PPS);
> >  		
> >  		run.h265.slice_params = cedrus_find_control_data(ctx,
> >  		
> >  			V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS);
> > 
> > +		run.h265.scaling_matrix = cedrus_find_control_data(ctx,
> > +			V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX);
> > 
> >  		break;
> >  	
> >  	default:
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c index
> > 6945dc74e1d7..888bfd5ca224 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > @@ -220,6 +220,69 @@ static void cedrus_h265_pred_weight_write(struct
> > cedrus_dev *dev,> 
> >  	}
> >  
> >  }
> > 
> > +static void cedrus_h265_write_scaling_list(struct cedrus_ctx *ctx,
> > +					   struct cedrus_run 
*run)
> > +{
> > +	const struct v4l2_ctrl_hevc_scaling_matrix *scaling;
> > +	struct cedrus_dev *dev = ctx->dev;
> > +	u32 i, j, k, val;
> > +
> > +	scaling = run->h265.scaling_matrix;
> > +
> > +	cedrus_write(dev, VE_DEC_H265_SCALING_LIST_DC_COEF0,
> > +		     (scaling->scaling_list_dc_coef_32x32[1] << 24) |
> > +		     (scaling->scaling_list_dc_coef_32x32[0] << 16) |
> > +		     (scaling->scaling_list_dc_coef_16x16[1] << 8) |
> > +		     (scaling->scaling_list_dc_coef_16x16[0] << 0));
> > +
> > +	cedrus_write(dev, VE_DEC_H265_SCALING_LIST_DC_COEF1,
> > +		     (scaling->scaling_list_dc_coef_16x16[5] << 24) |
> > +		     (scaling->scaling_list_dc_coef_16x16[4] << 16) |
> > +		     (scaling->scaling_list_dc_coef_16x16[3] << 8) |
> > +		     (scaling->scaling_list_dc_coef_16x16[2] << 0));
> > +
> > +	cedrus_h265_sram_write_offset(dev,
> > VE_DEC_H265_SRAM_OFFSET_SCALING_LISTS); +
> > +	for (i = 0; i < 6; i++)
> > +		for (j = 0; j < 8; j++)
> > +			for (k = 0; k < 8; k += 4) {
> > +				val = ((u32)scaling-
>scaling_list_8x8[i][j + (k + 3) * 8] << 24) |
> > +				      ((u32)scaling-
>scaling_list_8x8[i][j + (k + 2) * 8] << 16) |
> > +				      ((u32)scaling-
>scaling_list_8x8[i][j + (k + 1) * 8] << 8) |
> > +				      scaling-
>scaling_list_8x8[i][j + k * 8];
> > +				cedrus_write(dev, 
VE_DEC_H265_SRAM_DATA, val);
> > +			}
> > +
> > +	for (i = 0; i < 2; i++)
> > +		for (j = 0; j < 8; j++)
> > +			for (k = 0; k < 8; k += 4) {
> > +				val = ((u32)scaling-
>scaling_list_32x32[i][j + (k + 3) * 8] << 24) |
> > +				      ((u32)scaling-
>scaling_list_32x32[i][j + (k + 2) * 8] << 16) |
> > +				      ((u32)scaling-
>scaling_list_32x32[i][j + (k + 1) * 8] << 8) |
> > +				      scaling-
>scaling_list_32x32[i][j + k * 8];
> > +				cedrus_write(dev, 
VE_DEC_H265_SRAM_DATA, val);
> > +			}
> > +
> > +	for (i = 0; i < 6; i++)
> > +		for (j = 0; j < 8; j++)
> > +			for (k = 0; k < 8; k += 4) {
> > +				val = ((u32)scaling-
>scaling_list_16x16[i][j + (k + 3) * 8] << 24) |
> > +				      ((u32)scaling-
>scaling_list_16x16[i][j + (k + 2) * 8] << 16) |
> > +				      ((u32)scaling-
>scaling_list_16x16[i][j + (k + 1) * 8] << 8) |
> > +				      scaling-
>scaling_list_16x16[i][j + k * 8];
> > +				cedrus_write(dev, 
VE_DEC_H265_SRAM_DATA, val);
> > +			}
> > +
> > +	for (i = 0; i < 6; i++)
> > +		for (j = 0; j < 4; j++) {
> > +			val = ((u32)scaling->scaling_list_4x4[i][j + 
12] << 24) |
> > +			      ((u32)scaling->scaling_list_4x4[i][j + 
8] << 16) |
> > +			      ((u32)scaling->scaling_list_4x4[i][j + 
4] << 8) |
> > +			      scaling->scaling_list_4x4[i][j];
> > +			cedrus_write(dev, VE_DEC_H265_SRAM_DATA, 
val);
> > +		}
> > +}
> > +
> > 
> >  static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> >  
> >  			      struct cedrus_run *run)
> >  
> >  {
> > 
> > @@ -499,7 +562,12 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> > 
> >  	/* Scaling list. */
> > 
> > -	reg = VE_DEC_H265_SCALING_LIST_CTRL0_DEFAULT;
> > +	if (sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED) {
> > +		cedrus_h265_write_scaling_list(ctx, run);
> > +		reg = VE_DEC_H265_SCALING_LIST_CTRL0_FLAG_ENABLED;
> > +	} else {
> > +		reg = VE_DEC_H265_SCALING_LIST_CTRL0_DEFAULT;
> > +	}
> > 
> >  	cedrus_write(dev, VE_DEC_H265_SCALING_LIST_CTRL0, reg);
> >  	
> >  	/* Neightbor information address. */
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > 7beb03d3bb39..0d9449fe2b28 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > @@ -492,6 +492,8 @@
> > 
> >  #define VE_DEC_H265_ENTRY_POINT_OFFSET_ADDR	(VE_ENGINE_DEC_H265 + 
0x64)
> >  #define VE_DEC_H265_TILE_START_CTB		(VE_ENGINE_DEC_H265 + 
0x68)
> >  #define VE_DEC_H265_TILE_END_CTB		(VE_ENGINE_DEC_H265 + 
0x6c)
> > 
> > +#define VE_DEC_H265_SCALING_LIST_DC_COEF0	(VE_ENGINE_DEC_H265 + 
0x78)
> > +#define VE_DEC_H265_SCALING_LIST_DC_COEF1	(VE_ENGINE_DEC_H265 + 
0x7c)
> > 
> >  #define VE_DEC_H265_LOW_ADDR			(VE_ENGINE_DEC_H265 + 
0x80)




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
