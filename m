Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEA91EFEB8
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jun 2020 19:26:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 636518831C;
	Fri,  5 Jun 2020 17:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gIRhahYraxsj; Fri,  5 Jun 2020 17:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C864488295;
	Fri,  5 Jun 2020 17:26:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06BAC1BF30B
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 17:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 035C487196
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 17:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdRle1tJGdUw for <devel@linuxdriverproject.org>;
 Fri,  5 Jun 2020 17:26:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs43.siol.net [185.57.226.234])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 104498714F
 for <devel@driverdev.osuosl.org>; Fri,  5 Jun 2020 17:26:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 33D78521D26;
 Fri,  5 Jun 2020 19:26:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Hkdlf3xJ94FU; Fri,  5 Jun 2020 19:26:21 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C0F03521D2D;
 Fri,  5 Jun 2020 19:26:21 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id C2B65521CA7;
 Fri,  5 Jun 2020 19:26:20 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com, mripard@kernel.org,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH 2/3] media: cedrus: h264: Properly configure reference
 field
Date: Fri, 05 Jun 2020 19:26:20 +0200
Message-ID: <2479507.UA2pHCgT9S@jernej-laptop>
In-Reply-To: <7e74e15b7b3f9fc765182f1a43cfcf1e0e9602fc.camel@ndufresne.ca>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <20200604185745.23568-3-jernej.skrabec@siol.net>
 <7e74e15b7b3f9fc765182f1a43cfcf1e0e9602fc.camel@ndufresne.ca>
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne petek, 05. junij 2020 ob 19:16:35 CEST je Nicolas Dufresne napisal(a):
> Le jeudi 04 juin 2020 =E0 20:57 +0200, Jernej Skrabec a =E9crit :
> > When interlaced H264 content is being decoded, references must indicate
> > which field is being referenced. Currently this was done by checking
> > capture buffer flags. However, that is not correct because capture
> > buffer may hold both fields.
> > =

> > Fix this by checking newly introduced flags in reference lists.
> > =

> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> Perhaps an additional patch could cleanup the miss-leading comment in
> v4l2_h264_dpb_entry definition.

I missed that. I think this change actually belongs to patch 1. I'll fix it=
 in =

v2.

Best regards,
Jernej

> =

> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> =

> > ---
> > =

> >  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > cce527bbdf86..c87717d17ec5 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > @@ -183,7 +183,6 @@ static void _cedrus_write_ref_list(struct cedrus_ctx
> > *ctx,> =

> >  	for (i =3D 0; i < num_ref; i++) {
> >  	=

> >  		const struct v4l2_h264_dpb_entry *dpb;
> >  		const struct cedrus_buffer *cedrus_buf;
> > =

> > -		const struct vb2_v4l2_buffer *ref_buf;
> > =

> >  		unsigned int position;
> >  		int buf_idx;
> >  		u8 dpb_idx;
> > =

> > @@ -198,12 +197,11 @@ static void _cedrus_write_ref_list(struct cedrus_=
ctx
> > *ctx,> =

> >  		if (buf_idx < 0)
> >  		=

> >  			continue;
> > =

> > -		ref_buf =3D to_vb2_v4l2_buffer(cap_q->bufs[buf_idx]);
> > -		cedrus_buf =3D vb2_v4l2_to_cedrus_buffer(ref_buf);
> > +		cedrus_buf =3D vb2_to_cedrus_buffer(cap_q->bufs[buf_idx]);
> > =

> >  		position =3D cedrus_buf->codec.h264.position;
> >  		=

> >  		sram_array[i] |=3D position << 1;
> > =

> > -		if (ref_buf->field =3D=3D V4L2_FIELD_BOTTOM)
> > +		if (ref_list[i].flags & =

V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD)
> > =

> >  			sram_array[i] |=3D BIT(0);
> >  	=

> >  	}




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
