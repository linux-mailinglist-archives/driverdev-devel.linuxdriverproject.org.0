Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7894391BCF
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 06:24:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 750DC84422;
	Mon, 19 Aug 2019 04:24:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YfnmPZdIoFbr; Mon, 19 Aug 2019 04:24:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0420483636;
	Mon, 19 Aug 2019 04:24:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E32681BF3BB
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 04:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DFF3E835EF
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 04:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yq6p2dNJb3tg for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 04:24:46 +0000 (UTC)
X-Greylist: delayed 00:07:26 by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17551835AF
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 04:24:46 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id z51so369877edz.13
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 21:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fbyYLzisYNN1lRqh22A2VNalz6OnIhJsVCaofVl30Uk=;
 b=oTEwwP8bcyoAr7TAwnNcsjRWloPJDG5n5a1SrS1Dpa+L2D0Z7bIuW3Jd6HdaCxwwrb
 0+1yFPtCH70cPViosaWFtE2QDWI57k+pzDwmSyAEQHUiiTvB6FJaQBmFuJePHt0pLH8s
 vUkWcmr/j5oLTVY+LULR6SVUJVsBcHVJw3b/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fbyYLzisYNN1lRqh22A2VNalz6OnIhJsVCaofVl30Uk=;
 b=mTFD8xYTlifiVFaUoX1q4DB246qswznrqjFdfMHAu4OcqCtgw9kAXy5Zp7xSDdeXsT
 JnW9B56oggX77mSCMN4ZBoffQ/9x/RjGJqma0y/KQceZI+XcktlCNfoPDJiT0Jbc1bcd
 QRlWaLKq9YbhsY4T29/IRq9RNjU/34RzJlv6MsN9e4XI4uukSBXIjjK8cIsOoia75hm+
 FAcl/lnNOmIwb70gnpGU18lp/nj7iKJapKzc4w1muTN91+gpHki0DMG5O9vLcCfPvkga
 dcLjKoRbmtszQZ0vtQp4kluvEGx+ERQfJJe21zqrld6tCKBUq0KJBDfrLzmDp7t76wjC
 knwA==
X-Gm-Message-State: APjAAAX79GK2+6ZN889uye2Bb1hSt/FaSOW4gLR1mcKWxdDNh+N10UzM
 05bH6p8OfaqEWU66riiHDrF9j9Pzr2ivBA==
X-Google-Smtp-Source: APXvYqxPpnvsJeZObUnEWWVeptoz4cnKvQFWNsd9VYUjLA3WXUBCodgwPjn3KiXpZzSTZmdyd0i1yA==
X-Received: by 2002:aa7:c508:: with SMTP id o8mr23064654edq.123.1566188357762; 
 Sun, 18 Aug 2019 21:19:17 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id z61sm2547949ede.1.2019.08.18.21.19.16
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Aug 2019 21:19:17 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id e8so1737403wme.1
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 21:19:16 -0700 (PDT)
X-Received: by 2002:a1c:cf88:: with SMTP id f130mr8561253wmg.10.1566188356079; 
 Sun, 18 Aug 2019 21:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190725030602.GA13200@hari-Inspiron-1545>
 <20190725135007.33dc2cd3@collabora.com>
 <CAAFQd5AOCCoN1F=_WqQaMrttjotpNo7pc8irhkLQNy9C=WjC1A@mail.gmail.com>
In-Reply-To: <CAAFQd5AOCCoN1F=_WqQaMrttjotpNo7pc8irhkLQNy9C=WjC1A@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 19 Aug 2019 13:19:04 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D=5=2B_y1=z-+6O9R0ibijtmr4iff+xUGzNc8S1vEveQ@mail.gmail.com>
Message-ID: <CAAFQd5D=5=2B_y1=z-+6O9R0ibijtmr4iff+xUGzNc8S1vEveQ@mail.gmail.com>
Subject: Re: [PATCH] staging: media: hantro: Remove call to memset after
 dma_alloc_coherent
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 ZhiChao Yu <zhichao.yu@rock-chips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 19, 2019 at 1:17 PM Tomasz Figa <tfiga@chromium.org> wrote:
>
> Hi Hans,
>
> On Thu, Jul 25, 2019 at 8:50 PM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
> >
> > On Thu, 25 Jul 2019 08:36:02 +0530
> > Hariprasad Kelam <hariprasad.kelam@gmail.com> wrote:
> >
> > > fix below issue reported by coccicheck
> > > /drivers/staging/media/hantro/hantro_vp8.c:149:16-34: WARNING:
> > > dma_alloc_coherent use in aux_buf -> cpu already zeroes out memory,  so
> > > memset is not needed
> > >
> > > Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> >
> > Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> >
> > > ---
> > >  drivers/staging/media/hantro/hantro_vp8.c | 2 --
> > >  1 file changed, 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/hantro/hantro_vp8.c b/drivers/staging/media/hantro/hantro_vp8.c
> > > index 66c4533..363ddda 100644
> > > --- a/drivers/staging/media/hantro/hantro_vp8.c
> > > +++ b/drivers/staging/media/hantro/hantro_vp8.c
> > > @@ -151,8 +151,6 @@ int hantro_vp8_dec_init(struct hantro_ctx *ctx)
> > >       if (!aux_buf->cpu)
> > >               return -ENOMEM;
> > >
> > > -     memset(aux_buf->cpu, 0, aux_buf->size);
> > > -
> > >       /*
> > >        * Allocate probability table buffer,
> > >        * total 1208 bytes, 4K page is far enough.
> >
>
> Is this something you will pick to your tree?

Ah, sorry, this is already applied. Not sure why searching for it the
first time didn't show anything. I guess I need to start repeating my
searches by default. Sorry for the noise.

Best regards,
Tomasz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
