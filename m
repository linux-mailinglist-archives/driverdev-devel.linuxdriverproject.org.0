Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 954629D600
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 20:48:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 70D702269B;
	Mon, 26 Aug 2019 18:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IzvH258yEVUc; Mon, 26 Aug 2019 18:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAAD42268C;
	Mon, 26 Aug 2019 18:48:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 933941BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C72C87E81
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fMj8kH2ImeNy for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 18:48:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs32.siol.net [185.57.226.223])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A43F987E4C
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 18:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A3AF252502C;
 Mon, 26 Aug 2019 20:48:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id XAiW7Ff-hBd0; Mon, 26 Aug 2019 20:48:02 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 08F0E522D89;
 Mon, 26 Aug 2019 20:48:02 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 54683524F76;
 Mon, 26 Aug 2019 20:47:58 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 5/8] media: cedrus: Detect first slice of a frame
Date: Mon, 26 Aug 2019 20:47:57 +0200
Message-ID: <3859967.Y0CYr1sFaX@jernej-laptop>
In-Reply-To: <20190826202831.311c7c20@collabora.com>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-6-jernej.skrabec@siol.net>
 <20190826202831.311c7c20@collabora.com>
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

Dne ponedeljek, 26. avgust 2019 ob 20:28:31 CEST je Boris Brezillon 
napisal(a):
> Hi Jernej,
> 
> On Thu, 22 Aug 2019 21:44:57 +0200
> 
> Jernej Skrabec <jernej.skrabec@siol.net> wrote:
> > When codec supports multiple slices in one frame, VPU has to know when
> > first slice of each frame is being processed, presumably to correctly
> > clear/set data in auxiliary buffers.
> > 
> > Add first_slice field to cedrus_run structure and set it according to
> > timestamps of capture and output buffers. If timestamps are different,
> > it's first slice and viceversa.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus.h     | 1 +
> >  drivers/staging/media/sunxi/cedrus/cedrus_dec.c | 2 ++
> >  2 files changed, 3 insertions(+)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > 2f017a651848..32cb38e541c6 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > @@ -70,6 +70,7 @@ struct cedrus_mpeg2_run {
> > 
> >  struct cedrus_run {
> >  
> >  	struct vb2_v4l2_buffer	*src;
> >  	struct vb2_v4l2_buffer	*dst;
> > 
> > +	bool first_slice;
> > 
> >  	union {
> >  	
> >  		struct cedrus_h264_run	h264;
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c index
> > 56ca4c9ad01c..d7b54accfe83 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > @@ -31,6 +31,8 @@ void cedrus_device_run(void *priv)
> > 
> >  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> >  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > 
> > +	run.first_slice =
> > +		run.src->vb2_buf.timestamp != run.dst-
>vb2_buf.timestamp;
> 
> Can't we use slice->first_mb_in_slice to determine if a slice is the
> first? I'd expect ->first_mb_in_slice to be 0 (unless we decide to
> support ASO).

I'm not sure if that is always the case, I would have to check the standard. 
Anyway, this method of comparing timestamps was suggested to me a while ago 
when we were discussing details on a way forward for multi-slice decoding. I 
highly doubt someone would decode slices in mixed order (from different frames) 
in same instance.

I can change that in next version if ->first_mb_in_slice == 0 is always true 
for the first slice.

Best regards,
Jernej

> 
> >  	/* Apply request(s) controls if needed. */
> >  	src_req = run.src->vb2_buf.req_obj.req;




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
