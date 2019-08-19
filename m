Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E34B91C08
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 06:25:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07C5F853C5;
	Mon, 19 Aug 2019 04:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ihCTJxH90ccL; Mon, 19 Aug 2019 04:25:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06E1C85168;
	Mon, 19 Aug 2019 04:25:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A32B21BF3BB
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 04:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A03E5203E5
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 04:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JWsORqGt8ZlO for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 04:25:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2C8F9203D1
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 04:25:36 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id w20so391200edd.2
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 21:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IbCA3+sRi1vwFgWGzHijf0NDsTwyWj0F82bl8GeQoNU=;
 b=USNDYhJe3CqyU1LZcyU12zH7sxmglhu2BEaKMXiAvIZQrefa5w3O3Q8q2Fsn4+C2IH
 ghZBxj5+7IGK50lx1569Ey/8qPFUTixmpa2ANwy5fzScNl9aIhN8UPzwaaEcf7McCB3D
 Les7iJtnWTo9FeitxqnGT/OM+twm5a++OaRag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IbCA3+sRi1vwFgWGzHijf0NDsTwyWj0F82bl8GeQoNU=;
 b=BBMeeKDCmtgdNNcBVvQUBI1gXhHX7lYC3kxaKqycYCJh5T7TTRsPM4+lf2G0pofFJq
 nCZZo8sdbYxqJOkXJ+FQeBkffZBbPU7rqKSU9kViHlui1H4myi7ZWTViWsyvSKKNkepa
 67+LJQ1dHJ20Z7xP1KW7Tm9Ru0aesXsuwCGN6j0NDbCSj8ukiA3cvX6JfqlAnjP3cQn/
 T+Mj4hxh5eVs1X3gjcL7EMgT4Ql9vjAfA1vDlFeTD4rdRxzNEGexzYCj8xSLlSV7j45w
 7i3jUk2tYOnJRYVa97Z8mVnl2q0h6lwU/h78qMn6/Dr6lO6POXpXucr8P7AS1fAYySXD
 KDFA==
X-Gm-Message-State: APjAAAXgIXTsDbAOqjtS9OtqaTSc0lvCWW9Jb4r2HGuNrtdLm4Sfyg6c
 BMQQTkgDeea7Q4q21MH071rPG9t3HxqGsg==
X-Google-Smtp-Source: APXvYqy2ZBaLmkm3Q++wDnTXpzJ4PU/h2EmHYRqyRAN9W3EH2FKiPTdJpzpckQaR/W3upCGKHtIndQ==
X-Received: by 2002:a17:906:393:: with SMTP id
 b19mr19502508eja.140.1566188238587; 
 Sun, 18 Aug 2019 21:17:18 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id a16sm1871396ejr.10.2019.08.18.21.17.16
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Aug 2019 21:17:16 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id i63so332925wmg.4
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 21:17:16 -0700 (PDT)
X-Received: by 2002:a1c:cf88:: with SMTP id f130mr8553542wmg.10.1566188235646; 
 Sun, 18 Aug 2019 21:17:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190725030602.GA13200@hari-Inspiron-1545>
 <20190725135007.33dc2cd3@collabora.com>
In-Reply-To: <20190725135007.33dc2cd3@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 19 Aug 2019 13:17:04 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AOCCoN1F=_WqQaMrttjotpNo7pc8irhkLQNy9C=WjC1A@mail.gmail.com>
Message-ID: <CAAFQd5AOCCoN1F=_WqQaMrttjotpNo7pc8irhkLQNy9C=WjC1A@mail.gmail.com>
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

Hi Hans,

On Thu, Jul 25, 2019 at 8:50 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Thu, 25 Jul 2019 08:36:02 +0530
> Hariprasad Kelam <hariprasad.kelam@gmail.com> wrote:
>
> > fix below issue reported by coccicheck
> > /drivers/staging/media/hantro/hantro_vp8.c:149:16-34: WARNING:
> > dma_alloc_coherent use in aux_buf -> cpu already zeroes out memory,  so
> > memset is not needed
> >
> > Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
>
> > ---
> >  drivers/staging/media/hantro/hantro_vp8.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_vp8.c b/drivers/staging/media/hantro/hantro_vp8.c
> > index 66c4533..363ddda 100644
> > --- a/drivers/staging/media/hantro/hantro_vp8.c
> > +++ b/drivers/staging/media/hantro/hantro_vp8.c
> > @@ -151,8 +151,6 @@ int hantro_vp8_dec_init(struct hantro_ctx *ctx)
> >       if (!aux_buf->cpu)
> >               return -ENOMEM;
> >
> > -     memset(aux_buf->cpu, 0, aux_buf->size);
> > -
> >       /*
> >        * Allocate probability table buffer,
> >        * total 1208 bytes, 4K page is far enough.
>

Is this something you will pick to your tree?

Best regards,
Tomasz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
