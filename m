Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 331C8EE4B4
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 17:34:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21C70895F1;
	Mon,  4 Nov 2019 16:34:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C1bP_JLCKvDD; Mon,  4 Nov 2019 16:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D75F895FB;
	Mon,  4 Nov 2019 16:34:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15AF81BF4D6
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0ACC68A7DB
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sBDka8MQhFUM for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 16:33:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs35.siol.net [185.57.226.226])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 463A18A794
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 16:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 94E61525106;
 Mon,  4 Nov 2019 17:33:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id cL8U28b3yVhv; Mon,  4 Nov 2019 17:33:51 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E8F185250EB;
 Mon,  4 Nov 2019 17:33:50 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id EA0315251A3;
 Mon,  4 Nov 2019 17:33:46 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 1/3] media: cedrus: Properly signal size in mode register
Date: Mon, 04 Nov 2019 17:33:46 +0100
Message-ID: <7309638.L6IRxaGt1L@jernej-laptop>
In-Reply-To: <20191104100228.GD502900@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-2-jernej.skrabec@siol.net>
 <20191104100228.GD502900@aptenodytes>
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne ponedeljek, 04. november 2019 ob 11:02:28 CET je Paul Kocialkowski 
napisal(a):
> Hi Jernej,
> 
> On Sat 26 Oct 19, 09:49, Jernej Skrabec wrote:
> > Mode register also holds information if video width is bigger than 2048
> > and if it is equal to 4096.
> > 
> > Rework cedrus_engine_enable() to properly signal this properties.
> 
> Thanks for the patch, looks good to me!
> 
> Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> 
> One minor thing: maybe we should have a way to set the maximum dimensions
> depending on the generation of the engine in use and the actual maximum
> supported by the hardware.
> 
> Maybe either as dedicated new fields in struct cedrus_variant or as
> capability flags.

I was thinking about first solution, but after going trough manuals, it was 
unclear what are real limitations. For example, H3 manual states that it is 
capable of decoding H264 1080p@60Hz. However, I know for a fact that it is 
also capable of decoding 4k videos, but probably not at 60 Hz. I don't own 
anything older that A83T, so I don't know what are capabilities of those SoCs. 
Anyway, being slow is still ok for some tasks, like transcoding, so we can't 
limit decoding to 1080p just because it's slow. It is probably still faster 
than doing it in SW. Not to mention that it's still ok for some videos, a lot 
of them uses 24 fps.

Best regards,
Jernej

> 
> Anyway that can be done later since we were already hardcoding this.
> 
> Cheers,
> 
> Paul
> 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus_h264.c  | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus_h265.c  | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 9 +++++++--
> >  drivers/staging/media/sunxi/cedrus/cedrus_hw.h    | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus_regs.h  | 2 ++
> >  6 files changed, 13 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > 7487f6ab7576..d2c854ecdf15 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > @@ -485,7 +485,7 @@ static void cedrus_h264_setup(struct cedrus_ctx *ctx,
> > 
> >  {
> >  
> >  	struct cedrus_dev *dev = ctx->dev;
> > 
> > -	cedrus_engine_enable(dev, CEDRUS_CODEC_H264);
> > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_H264);
> > 
> >  	cedrus_write(dev, VE_H264_SDROT_CTRL, 0);
> >  	cedrus_write(dev, VE_H264_EXTRA_BUFFER1,
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c index
> > 9bc921866f70..6945dc74e1d7 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > @@ -276,7 +276,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> > 
> >  	}
> >  	
> >  	/* Activate H265 engine. */
> > 
> > -	cedrus_engine_enable(dev, CEDRUS_CODEC_H265);
> > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_H265);
> > 
> >  	/* Source offset and length in bits. */
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c index
> > 570a9165dd5d..3acfa21bc124 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > @@ -30,7 +30,7 @@
> > 
> >  #include "cedrus_hw.h"
> >  #include "cedrus_regs.h"
> > 
> > -int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
> > +int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec codec)
> > 
> >  {
> >  
> >  	u32 reg = 0;
> > 
> > @@ -58,7 +58,12 @@ int cedrus_engine_enable(struct cedrus_dev *dev, enum
> > cedrus_codec codec)> 
> >  		return -EINVAL;
> >  	
> >  	}
> > 
> > -	cedrus_write(dev, VE_MODE, reg);
> > +	if (ctx->src_fmt.width == 4096)
> > +		reg |= VE_MODE_PIC_WIDTH_IS_4096;
> > +	if (ctx->src_fmt.width > 2048)
> > +		reg |= VE_MODE_PIC_WIDTH_MORE_2048;
> > +
> > +	cedrus_write(ctx->dev, VE_MODE, reg);
> > 
> >  	return 0;
> >  
> >  }
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h index
> > 27d0882397aa..604ff932fbf5 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > @@ -16,7 +16,7 @@
> > 
> >  #ifndef _CEDRUS_HW_H_
> >  #define _CEDRUS_HW_H_
> > 
> > -int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec
> > codec);
> > +int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec
> > codec);
> > 
> >  void cedrus_engine_disable(struct cedrus_dev *dev);
> >  
> >  void cedrus_dst_format_set(struct cedrus_dev *dev,
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c index
> > 13c34927bad5..8bcd6b8f9e2d 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > @@ -96,7 +96,7 @@ static void cedrus_mpeg2_setup(struct cedrus_ctx *ctx,
> > struct cedrus_run *run)> 
> >  	quantization = run->mpeg2.quantization;
> >  	
> >  	/* Activate MPEG engine. */
> > 
> > -	cedrus_engine_enable(dev, CEDRUS_CODEC_MPEG2);
> > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_MPEG2);
> > 
> >  	/* Set intra quantization matrix. */
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > 4275a307d282..ace3d49fcd82 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > @@ -35,6 +35,8 @@
> > 
> >  #define VE_MODE					0x00
> > 
> > +#define VE_MODE_PIC_WIDTH_IS_4096		BIT(22)
> > +#define VE_MODE_PIC_WIDTH_MORE_2048		BIT(21)
> > 
> >  #define VE_MODE_REC_WR_MODE_2MB			(0x01 << 20)
> >  #define VE_MODE_REC_WR_MODE_1MB			(0x00 << 20)
> >  #define VE_MODE_DDR_MODE_BW_128			(0x03 << 16)




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
