Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E85355ECD1
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 21:36:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62118860C5;
	Wed,  3 Jul 2019 19:36:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-FaGX8ubsBD; Wed,  3 Jul 2019 19:36:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1412B8607A;
	Wed,  3 Jul 2019 19:36:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 140221BF616
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 19:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10A9D87D48
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 19:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uULcwISgrzlU for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 19:36:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 327D487C0D
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 19:36:26 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x4so4080837wrt.6
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 12:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZrIncsFb2XbVt8gYJ6XL/Afg4bsZgxtDJ8pkU7/Fg2o=;
 b=bjpt+nLU+gbgbmbsSfBF3BsVRKeV/L7MxX+noqPRlNeKcKJIKfT+ekgwXRUm+4fnao
 wyQHTb5lqZbfXj7dA1VfgXrhUTnANw1JlIGP4YWxphG0W8/8c80tefkTJsLBqrp/pfkv
 9a0uz/4aeihNuexVWNj4VrGTXAtEiM3yJWMEJa/Qf/tLmuN0Tww9Jr9XYLANqjvj8ss7
 27jzV5Ijzv00Dml/Q3x7J0tc6bVQuZVxwzsw+SSRgsgCjuVFqyy3E8RQHtp0JTOLWZEt
 Tur9F9+E+lisy9wuAC1FjSlki7TsxPJsLG9nZifswG7SOgbC4cxkZnRHIvDkwSIJ2s38
 HtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZrIncsFb2XbVt8gYJ6XL/Afg4bsZgxtDJ8pkU7/Fg2o=;
 b=s6o4ykU4uOViQTTf9ht+d+1HABlzwRCERs8a24OWcx40aH5obNY1ybTWIhYe6Srx1V
 1lfHR0ZkvEK2g7a9Vv8nCP7ZYXbC+rC4+2AHgW1qbMpvXu102C+GhcUEra7jlXQYj0u9
 kRen4xr2LswdkJhcOu3U1EbSKogfODZ1OK/60r5jBUlH/r3R3Cw68pFu7cVNVVyssRQ2
 XTDjVJV5yvsU2OCjRoLM2m+FuAAvgV/yXtxfsdgnvzVSSgUVVB9VoiwuUCXRLuUvUwPz
 YqflpkIJZwrTWI2OjBj3+6bzcqwyB9PMU/bIoxCaYrRhnZxH259xxtTh0kS7sATID9lP
 EICg==
X-Gm-Message-State: APjAAAU4ujeEW4SUxnR7omUq7XLBq/6kaIi4bhn+Ttit1K2eP8Ewb1mo
 1UQ/y+AJ0ZqXJPbpuQcDgXIFLIVLKs4Ax2duohQQnw==
X-Google-Smtp-Source: APXvYqw1q6SHE/IpfbNzvKq9H4+8uNw+R7FjPQlQRrC7n5MY48KnfoJyYmXEkUg6tRzFiFSyBS2w8aU+Bf3uzd7IdmI=
X-Received: by 2002:adf:afe8:: with SMTP id y40mr28449792wrd.328.1562182584497; 
 Wed, 03 Jul 2019 12:36:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
 <CAKMK7uFAaw3sL_A6gGOeot80fvukjZqprLptLER=riA1_p4zWw@mail.gmail.com>
 <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
In-Reply-To: <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 3 Jul 2019 12:36:13 -0700
Message-ID: <CALAqxLVvEjTbp9P=btOhTugFONWT9wS6Bjmync=WubYknvnE6A@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: android: ion: Remove file ion_carveout_heap.c
To: Laura Abbott <labbott@redhat.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, John Reitan <John.Reitan@arm.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Daniel Vetter <daniel@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Brian Starkey <Brian.Starkey@arm.com>,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 3, 2019 at 4:32 AM Laura Abbott <labbott@redhat.com> wrote:
>
> On 7/3/19 5:50 AM, Daniel Vetter wrote:
> > On Wed, Jul 3, 2019 at 10:37 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >>
> >> On Wed, Jul 03, 2019 at 01:48:41PM +0530, Nishka Dasgupta wrote:
> >>> Remove file ion_carveout_heap.c as its functions and definitions are not
> >>> used anywhere.
> >>> Issue found with Coccinelle.
> >>>
> >>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> >>> ---
> >>>   drivers/staging/android/ion/Kconfig           |   9 --
> >>>   drivers/staging/android/ion/Makefile          |   1 -
> >>>   .../staging/android/ion/ion_carveout_heap.c   | 133 ------------------
> >>
> >> I keep trying to do this, but others point out that the ion code is
> >> "going to be fixed up soon" and that people rely on this interface now.
> >> Well, "code outside of the kernel tree" relies on this, which is not ok,
> >> but the "soon" people keep insisting on it...
> >>
> >> Odds are I should just delete all of ION, as there hasn't been any
> >> forward progress on it in a long time.
> >>
> >> Hopefully that wakes some people up...
> >
> > John Stultz has done a steady stream on ion destaging patch series
> > past few months, und the heading of "DMA-BUF Heaps", targeting
> > drivers/dma-buf. I'm not following the details, and it seems a bit a
> > crawl, but there's definitely work going on ... Just probably not
> > in-place in staging I think.
> > -Daniel
> >
>
>
> https://lists.freedesktop.org/archives/dri-devel/2019-June/223705.html
>
> It is making slow and steady progress. Part of this is trying to
> make sure we actually get this right before moving anything
> out of staging.

Hopefully not too much longer. The review feedback has gotten quiet
recently so hopefully everyone is nodding.

Note, I'd also find it useful to *not* eject ION immediately after
dmabuf heaps land, since being able to do A/B validation on the same
kernel is useful if folks run into any new perf regressions. But
hopefully that transition time is fairly small.

> That said, I think we're at the point where nobody wants the
> carveout and chunk heaps so I'd actually be okay with removing
> those files. Just to be explicit:
>
> Acked-by: Laura Abbott <labbott@redhat.com>

Agreed. I think there are some out of tree uses by ARM and others for
the carveout heaps, but I don't know if anyone is using those
unmodified anyway.  So no objection from me, as there is no way to use
them upstream.

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
