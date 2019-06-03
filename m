Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C05333DC
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 17:48:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26C8E87937;
	Mon,  3 Jun 2019 15:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7ROHxzpuB+e; Mon,  3 Jun 2019 15:48:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 003DB8790F;
	Mon,  3 Jun 2019 15:48:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56DA91BF967
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 15:48:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 523B422264
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 15:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vx13qncyH+DF for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 15:48:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs30.siol.net [185.57.226.221])
 by silver.osuosl.org (Postfix) with ESMTPS id 7AAF122219
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 15:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 54562521077;
 Mon,  3 Jun 2019 17:48:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id iTDkvQqWG0oc; Mon,  3 Jun 2019 17:48:27 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E4C9152089C;
 Mon,  3 Jun 2019 17:48:26 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 800E75210B0;
 Mon,  3 Jun 2019 17:48:25 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected
 to capture buffers
Date: Mon, 03 Jun 2019 17:48:25 +0200
Message-ID: <3029072.frl2UAsRGt@jernej-laptop>
In-Reply-To: <20190603121859.sbphcjy75kmed6oc@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-7-jernej.skrabec@siol.net>
 <20190603121859.sbphcjy75kmed6oc@flea>
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
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne ponedeljek, 03. junij 2019 ob 14:18:59 CEST je Maxime Ripard napisal(a):
> Hi,
> 
> On Thu, May 30, 2019 at 11:15:15PM +0200, Jernej Skrabec wrote:
> > H264 and HEVC engines need additional buffers for each capture buffer.
> > H264 engine has this currently solved by allocating fixed size pool,
> > which is not ideal. Most of the time pool size is much bigger than it
> > needs to be.
> > 
> > Ideally, extra buffer should be allocated at buffer initialization, but
> > that's not efficient. It's size in H264 depends on flags set in SPS, but
> > that information is not available in buffer init callback.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 ++++
> >  .../staging/media/sunxi/cedrus/cedrus_video.c | 19 +++++++++++++++++++
> >  2 files changed, 23 insertions(+)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > d8e6777e5e27..16c1bdfd243a 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > @@ -81,6 +81,10 @@ struct cedrus_run {
> > 
> >  struct cedrus_buffer {
> >  
> >  	struct v4l2_m2m_buffer          m2m_buf;
> > 
> > +	void		*extra_buf;
> > +	dma_addr_t	extra_buf_dma;
> > +	ssize_t		extra_buf_size;
> > +
> > 
> >  	union {
> >  	
> >  		struct {
> >  		
> >  			unsigned int			position;
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_video.c index
> > 681dfe3367a6..d756e0e69634 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > @@ -411,6 +411,24 @@ static void cedrus_queue_cleanup(struct vb2_queue
> > *vq, u32 state)> 
> >  	}
> >  
> >  }
> > 
> > +static void cedrus_buf_cleanup(struct vb2_buffer *vb)
> > +{
> > +	struct vb2_queue *vq = vb->vb2_queue;
> > +
> > +	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
> > +		struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
> > +		struct cedrus_buffer *cedrus_buf;
> > +
> > +		cedrus_buf = vb2_to_cedrus_buffer(vq->bufs[vb->index]);
> > +
> > +		if (cedrus_buf->extra_buf_size)
> > +			dma_free_coherent(ctx->dev->dev,
> > +					  cedrus_buf-
>extra_buf_size,
> > +					  cedrus_buf-
>extra_buf,
> > +					  cedrus_buf-
>extra_buf_dma);
> > +	}
> > +}
> > +
> 
> I'm really not a fan of allocating something somewhere, and freeing it
> somewhere else. Making sure you don't leak something is hard enough to
> not have some non-trivial allocation scheme.

Ok, what about introducing two new optional methods in engine callbacks, 
buffer_init and buffer_destroy, which would be called from cedrus_buf_init() and 
cedrus_buf_cleanup(), respectively. That way all (de)allocation logic stays 
within the same engine.

Best regards,
Jernej



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
