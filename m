Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF2BAE502
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 10:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3958385D3F;
	Tue, 10 Sep 2019 08:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IAHKClf2-aVH; Tue, 10 Sep 2019 08:00:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE69085C4F;
	Tue, 10 Sep 2019 08:00:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F220A1BF309
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 08:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E57BA204A0
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 08:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dMDiGRO3MhMO for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 08:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 9BA0020468
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 08:00:02 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 67so17060714oto.3
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 01:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7L737Jm0wUHbnu/Pe3llxROQ1ln1ETh1uPMKDGHXXWU=;
 b=CEXjeC8FV4Jt2NVCow0T+UIJxCTZQaEiVdNzspOwPl2a8SsjZMWkv/1W4E7C2vU3DG
 eygx//c5lMjX1SlqGU9OHUhY/YBWHfkzFKdSPDtkSOlkoJrJGB7lPsbkxezlcxiNp9EQ
 Y8KjLcw1GzzsOBjN4iS76YYK4pizCaMO5BZ/ZKJzK5pk9qSu7sRpk4tA6csfKnKCyd3i
 P5pf3TobyULr1yTD9+NcuQwa0sN+wytlhRPC0NrpkLxekSVb1kXDGGQYq+lQiCgaH1iQ
 QOI0wdpPavkwasV/+t/xLDhLHYHJ0R8z0qwKGM09sHUmqMCvSioKMncCtNwZdl1khKFG
 CQuw==
X-Gm-Message-State: APjAAAWtN/4ntu6w0lA35StOSPGvLea3Q/T5OCf4E1sl5SV6nWdkyZMq
 kM0vuWlhkcDlXrjK3cQb23P0EQWGLEgOAja1ghg=
X-Google-Smtp-Source: APXvYqx+ZYhRUi69F2qvCMAq3GzxxBTk+IErSzk0oKplNMkzm1lwOtKf9GkZhd5n8JtQlhUnVL2qrnsx8/SENkFM0f0=
X-Received: by 2002:a9d:32a1:: with SMTP id u30mr19940081otb.107.1568102401646; 
 Tue, 10 Sep 2019 01:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190909012605.15051-1-srrmvlt@gmail.com>
 <20190909095625.GB17624@kroah.com>
 <20190909115006.GB3437@sreeram-MS-7B98>
In-Reply-To: <20190909115006.GB3437@sreeram-MS-7B98>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Sep 2019 09:59:50 +0200
Message-ID: <CAMuHMdXz568p=GFJmz6MfuxDxA_QkLMrGcK2hG3C99ReL1fH5A@mail.gmail.com>
Subject: Re: [PATCH] FBTFT: fb_agm1264k: usleep_range is preferred over udelay
To: Sreeram Veluthakkal <srrmvlt@gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 nishadkamdar@gmail.com, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 payal.s.kshirsagar.98@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sreeram,

On Tue, Sep 10, 2019 at 2:25 AM Sreeram Veluthakkal <srrmvlt@gmail.com> wrote:
> On Mon, Sep 09, 2019 at 10:56:25AM +0100, Greg KH wrote:
> > On Sun, Sep 08, 2019 at 08:26:05PM -0500, Sreeram Veluthakkal wrote:
> > > This patch fixes the issue:
> > > FILE: drivers/staging/fbtft/fb_agm1264k-fl.c:88:
> > > CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
> > > +       udelay(20);
> > >
> > > Signed-off-by: Sreeram Veluthakkal <srrmvlt@gmail.com>

Thanks for your patch!

> > > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> > >     dev_dbg(par->info->device, "%s()\n", __func__);
> > >
> > >     gpiod_set_value(par->gpio.reset, 0);
> > > -   udelay(20);
> > > +   usleep_range(20, 40);
> >
> > Is it "safe" to wait 40?  This kind of change you can only do if you
> > know this is correct.  Have you tested this with hardware?
> >
> > thanks,
> >
> > greg k-h
>
> Hi Greg, No I haven't tested it, I don't have the hw. I dug depeer in to the usleep_range
>
> https://github.com/torvalds/linux/blob/master/kernel/time/timer.c#L1993
>         u64 delta = (u64)(max - min) * NSEC_PER_USEC;
>
>  * The @delta argument gives the kernel the freedom to schedule the
>  * actual wakeup to a time that is both power and performance friendly.
>  * The kernel give the normal best effort behavior for "@expires+@delta",
>  * but may decide to fire the timer earlier, but no earlier than @expires.
>
> My understanding is that keeping delta 0 (min=max=20) would be equivalent.
> I can revise the patch to usleep_range(20, 20) or usleep_range(20, 21) for a 1 usec delta.
> What do you suggest?

Please read the comment above the line you're referring to:

 * In non-atomic context where the exact wakeup time is flexible, use
 * usleep_range() instead of udelay().  The sleep improves responsiveness
 * by avoiding the CPU-hogging busy-wait of udelay(), and the range reduces
 * power usage by allowing hrtimers to take advantage of an already-
 * scheduled interrupt instead of scheduling a new one just for this sleep.

Is this function always called in non-atomic context?
If it  may be called in atomic context, replacing the udelay() call by a
usleep*() call will break the driver.

See also "the first and most important question" in
Documentation/timers/timers-howto.rst, as referred to by the checkpatch.pl
message.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
