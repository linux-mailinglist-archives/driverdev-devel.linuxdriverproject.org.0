Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE612D23ED
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 07:53:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BAD687CC7;
	Tue,  8 Dec 2020 06:53:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MurDoBj0SwRZ; Tue,  8 Dec 2020 06:53:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 766C187AD0;
	Tue,  8 Dec 2020 06:53:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 41AC71BF84C
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 06:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 33CCD87763
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 06:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJIq3PR2KBYQ for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 06:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5010787268
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 06:53:17 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id s75so15329730oih.1
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 22:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w8Ytad3VuLBGnRL8FnISbJTqrw/aOetIiRAo11y3tYk=;
 b=k6fhVB1PRaoqPDAK0H73+nQgv4+gbvxI/9TjZyGX78xL6M7SXRwcCrOYSHwkZpYtAe
 qtoo5/NdWZS+LWDQGShMbypYGI6bEQ64vfnkvZpVekpjHVu2cdWCnfjX4xoxQ7N7e9Hn
 ePdagRrW+RNjCBb1t5vOkzMObGcP6aiUEm41qwrfxtcx9ga1UqJb7LMjrWyfFzQCVDFq
 2SMolyaZdJkNU2ZPseVSj6pgGTL+YbXmHezgGLxdNZ/TKUEO0pS3j7zbUbykhzlSSWa8
 GDduV+4M4BFWG+RrFvT/mrnRsyyPT4FwM8PfUHTeqm1MZ0Hfm/UXNzVJs/Vl2QQiyctn
 vgiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w8Ytad3VuLBGnRL8FnISbJTqrw/aOetIiRAo11y3tYk=;
 b=A4KY+v9iJNhtqOCrRwP4a8OwJdPCYjlAKW4zhfdv97pk7WHufV6olT1/leYHL9VOSZ
 uApC5GOrZaGJUvj3nJIe8PXGH3iwnOtdZlYs4iPLzP75uddUKf5yUWGdMMkZLb9z+N1D
 uU/Q+/5NbCQf88ql7/avQCQAsNpNndfB/LNFVd759po2fefiOw7NSy7dY3lXKC1refYV
 9vTvc4HdRAlJeI6wB+Hqq0rCz5PHegdZgzishSCkuWgo/DdGwOmCTmVCb9j7G22KXi0F
 QKQyNxmC8Hc1RK9lv2CvJV1wirOeS+IvsQULQS0avMqxI89Q7A4wnMeWNseHe+2cpbBw
 hmNA==
X-Gm-Message-State: AOAM5322b/XRt4/xm9F3Yrcnl1+da3KHEZ/U7Omm+mwMYMf/zUCmfqez
 EN4amqQ4MFpnDTqeWsY1h4cqZAFOBMcOq/fY5kY=
X-Google-Smtp-Source: ABdhPJyUFcAD7BvLYxlbEegaPyHTpi4N5EZAJwwAncq+TWlN8EWXzX4C1AAZQvVI+HL+kOzBgiGF2tGubr+gzGPtIa8=
X-Received: by 2002:aca:5a86:: with SMTP id o128mr1679369oib.23.1607410396528; 
 Mon, 07 Dec 2020 22:53:16 -0800 (PST)
MIME-Version: 1.0
References: <20201207192104.6046-1-sergio.paracuellos@gmail.com>
 <20201207192104.6046-3-sergio.paracuellos@gmail.com>
 <CACRpkdagTdkMbg=nw-N9KQhsWXqLxofzpD_9YLgpKPBxo0vyhQ@mail.gmail.com>
In-Reply-To: <CACRpkdagTdkMbg=nw-N9KQhsWXqLxofzpD_9YLgpKPBxo0vyhQ@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 8 Dec 2020 07:53:05 +0100
Message-ID: <CAMhs-H_LWSU1dGTHqKCtyfvaaRh3CYnEXeAWW4R=gZrU61y0+g@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: ralink: add a pinctrl driver for the rt2880
 family
To: Linus Walleij <linus.walleij@linaro.org>
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Yan <yanaijie@huawei.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Linus,

On Tue, Dec 8, 2020 at 12:00 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Hi Serigio,
>
> I dug around some to try to understand the patch I think I get
> it now :)
>
> Squash this with the third patch so it becomes a
> "move" of this file, preserving history. With that:
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Ok, will squash those two if you prefer that way with your 'Acked-by'.

>
> I have ideas, but it is better to move the driver out
> of staging and improve it in pinctrl.
>
> Since there might be many sub-SoCs for this pin
> controller, what about creating
> drivers/pinctrl/ralink/* for this at the same time?

Ok, I will put this inside a ralink subdirectory in pinctrl.

>
> On Mon, Dec 7, 2020 at 8:21 PM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > These Socs have 1-3 banks of 8-32 gpios. Rather then setting the muxing of each
> > pin individually, these socs have mux groups that when set will effect 1-N pins.
> > Pin groups have a 2, 4 or 8 different muxes.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> (...)
> > +#include <asm/mach-ralink/ralink_regs.h>
> > +#include <asm/mach-ralink/pinmux.h>
> > +#include <asm/mach-ralink/mt7620.h>
>
> I think in the next step we should move the contents of
> rt2880_pinmux_data into this driver, then we can drop these
> mach-headers and show the way for the rest of the ralink
> chips to push their data down into this driver (or subdrivers)
> and depopulate mach-ralink a bit.

Agree. Doing that no arch dependencies are included and we can cleanly
enable the driver also for COMPILE_TEST without adding special flags
in pinctrl Makefile.

>
> > +       p->groups = rt2880_pinmux_data;
>
> So this is where the driver actually gets a pointer to all
> groups and functions, and these groups and functions all
> come from arch/mips/ralink/mt7621.c right?

Yes, all of that is defined there.

>
> I think after this first step we should move mt7621.c
> to pinctrl and become a subdriver for this pin controller
> and then we can hopefully move the rest as well once
> you set the pattern for how we do this.

I see. Thanks for advices.

>
> Yours,
> Linus Walleij

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
