Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E957333639
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 08:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52E2A4EC4D;
	Wed, 10 Mar 2021 07:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 244yRkEG4XNE; Wed, 10 Mar 2021 07:17:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 672C74EC1A;
	Wed, 10 Mar 2021 07:17:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F258C1BF47E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 07:17:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1A0A6F48C
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 07:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TyW6QodZfVmc for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 07:17:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com
 [IPv6:2607:f8b0:4864:20::e2e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E9E86F48A
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 07:17:04 +0000 (UTC)
Received: by mail-vs1-xe2e.google.com with SMTP id s8so8203554vsc.8
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 23:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5O4bWXBCQeQuk0BdQom2dNS7Jmj8ph1wsbHk08MJAMo=;
 b=h1lBv7HHj122ZOQj79sUyMEcd0w5tZ5oV+JyqbEAP6IjncbQiGVy8O14kGSopZ/RBx
 9v2gMNrpI9dt04NG+QIN/gmmZWg3fVjIn1tcv81o1Zn57C+4gpo/i+K6DDJGIjAYDD1d
 KZbwTuKJwz1WrxDTxcAVijM/GojWEq9d8mJct7JWW7QAaNeF1syI/sRvDtbi+HPObcfq
 5uHQyTctmvjfVGPbz5aASZ00uqwQaJVO9XeaiinwzqpdY68XcFk8CFpmzqPAMAbdjUeH
 vuZGlGdUJgO/m0f2Ul4b4DUBi6I43LHxDjtkfkGsgWwGw6cEOKY5wfKkRuGxJLBAuKXt
 OI4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5O4bWXBCQeQuk0BdQom2dNS7Jmj8ph1wsbHk08MJAMo=;
 b=aFfcYCKTjLj0zJKtL5jxxqRicN0l/rBwDiRzoVXYEfn42W/WFp1EybxYu4VO2sQ+e/
 8tnnXohp/M3Qs9xbQKHAqa4QeNTlzfUdQIcgZOZUTA/x5bSu5Z5pfDUjebnNZRFZG47t
 0Cbz7hMuY9VdwLkCmrVzDDWb4D5Lx5vvyfkaAK3ug2K9nFvuTrnhFrT5kdF2nWDE/H0g
 aNpijPGHM6iiZx+Wak8mflZhpc/YXiOjvN/1t0tx+0rWLE6T/hBlJ/h+aUss6qP00KmO
 Iq0fzi9cwViGCKKrdmxYudhXnjPJOJQ6SQPgCxTQF8Wugq39BVYGVR0HzEy9KJHt9RG+
 FAlQ==
X-Gm-Message-State: AOAM5319wOBevK+pqoachnL+ORijIrFwQKy8dhCB8HX5hubDcL8FZTuO
 yL0D1soONNQoMmVePMeBl6ia5J2BL+OadCWYuvj4oA==
X-Google-Smtp-Source: ABdhPJytTW7QIOLB8UPImbCUal1chmTmNyv6Z6uRJmeRfc+N68L2N1shNta5YcuAAXSn3Da5NzDEfquDQar0GSWxbDA=
X-Received: by 2002:a67:31d1:: with SMTP id x200mr972514vsx.16.1615360622918; 
 Tue, 09 Mar 2021 23:17:02 -0800 (PST)
MIME-Version: 1.0
References: <20210308145502.1075689-1-aardelean@deviqon.com>
 <20210308145502.1075689-2-aardelean@deviqon.com>
 <8a6ec9a1-71f8-ce1d-600a-66eba9244a54@metafoo.de>
In-Reply-To: <8a6ec9a1-71f8-ce1d-600a-66eba9244a54@metafoo.de>
From: Alexandru Ardelean <aardelean@deviqon.com>
Date: Wed, 10 Mar 2021 09:16:51 +0200
Message-ID: <CAASAkoZ+3T27KK0HN6YikKczUFS15xSpOssaOmx4NtDQKiKvHQ@mail.gmail.com>
Subject: Re: [PATCH 01/10] spi: spi-axi-spi-engine: remove usage of delay_usecs
To: Lars-Peter Clausen <lars@metafoo.de>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 ldewangan@nvidia.com, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 linux-spi@vger.kernel.org, greybus-dev@lists.linaro.org, broonie@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, vireshk@kernel.org,
 linux-tegra@vger.kernel.org, f.fainelli@gmail.com, johan@kernel.org,
 thierry.reding@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 8 Mar 2021 at 18:42, Lars-Peter Clausen <lars@metafoo.de> wrote:
>
> On 3/8/21 3:54 PM, Alexandru Ardelean wrote:
> > The 'delay_usecs' field was handled for backwards compatibility in case
> > there were some users that still configured SPI delay transfers with
> > this field.
> >
> > They should all be removed by now.
> >
> > Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
> > ---
> >   drivers/spi/spi-axi-spi-engine.c | 12 ++++--------
> >   1 file changed, 4 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
> > index af86e6d6e16b..80c3e38f5c1b 100644
> > --- a/drivers/spi/spi-axi-spi-engine.c
> > +++ b/drivers/spi/spi-axi-spi-engine.c
> > @@ -170,14 +170,10 @@ static void spi_engine_gen_sleep(struct spi_engine_program *p, bool dry,
> >       unsigned int t;
> >       int delay;
> >
> > -     if (xfer->delay_usecs) {
> > -             delay = xfer->delay_usecs;
> > -     } else {
> > -             delay = spi_delay_to_ns(&xfer->delay, xfer);
> > -             if (delay < 0)
> > -                     return;
> > -             delay /= 1000;
> > -     }
> > +     delay = spi_delay_to_ns(&xfer->delay, xfer);
> > +     if (delay < 0)
> > +             return;
>
> Bit of a nit, but this could be `delay <= 0` and then drop the check for
> `delay == 0` below.

hmm, that's a bit debatable, because the `delay == 0` check comes
after `delay /= 1000` ;
to do what you're suggesting, it would probably need a
DIV_ROUND_UP(delay, 1000) to make sure that even sub-microsecond
delays don't become zero;

if you're acking this suggestion i'll implement it;
i'll wait a few more days to see if there are any other acks or
complaints on the set before sending a V2;

btw: this new spi_delay struct supports delays in microseconds,
nanoseconds and clock cycles;
at some point it may be interesting to use a
`spi_delay_to_clk_cycles()` for this driver and other similar;

>
> > +     delay /= 1000;
> >
> >       if (delay == 0)
> >               return;
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
