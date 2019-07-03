Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 699EB5E182
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 11:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C2D485F6F;
	Wed,  3 Jul 2019 09:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9HpXjP6zK9W; Wed,  3 Jul 2019 09:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94028858F7;
	Wed,  3 Jul 2019 09:56:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 09A461BF372
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 09:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0637E84977
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 09:56:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0p6MMY2xO+JZ for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 09:56:27 +0000 (UTC)
X-Greylist: delayed 00:05:26 by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 213CD83885
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 09:56:27 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id x21so1682684otq.12
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 02:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H/ehYv/2ak3jZJnHyYTFa/b/nUib6ujuNN4I7eaf8Lw=;
 b=Mspe3R7ndQayw/OzAHGs/yhWSgavQvgdkmhe15W+QpZAxWl/g99R0+s+bqgIIj6dhx
 S9abrXSCiAA0nPYg2YDcdyfoUMTu8dve/YVN+4Eoa/gOptBpf7dRqiJP0/4RUfmcxy/f
 Ws00+12FUG2EJmbJ/kPjfazOq1vpIMlCveVJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H/ehYv/2ak3jZJnHyYTFa/b/nUib6ujuNN4I7eaf8Lw=;
 b=OwHqBgYHkY15g+6QjNiBV4IdhHOi558M0NVkZ5jKX7rDgOcBTPJqa0rRuZlok1MKhL
 qUSd/2JQKjkVI8lUvJMJCNsJETI/26O1DN5/kpaGpPtSXL9QtPIbgQHBG608fC8gBYgv
 TeSjOLpZy7T+/xaZvBSIgkDxnJrncFNLYZwRvqQaDU/CtPeVpLD8+m3ORTvKmopFd90G
 UeZ9BQUIiqDA8wD9vhKkqk3lXxiu/gdETkVi/RYl3fshgZbxPN2Ytae1GNnF4fpZm8Pe
 LvMX1mdmzJh/xoS1jcs3Njz/jCrP03BReGQ4T5wSX33P96bz24RU8e2rlQVvaqTNWMhC
 J/dA==
X-Gm-Message-State: APjAAAUcCYEZjA10ujVbznG6JudbJKPCjHShsoNCqkyv4Dd6qUHDyRph
 bok/RKx3YiF83TQp+tNO5l/7qHf66A32sOdNte3/6g==
X-Google-Smtp-Source: APXvYqx/azz/6Vc4WD1pKgY9UXBiehUSQbpKmzO3HsJXJ5Ws2WYqFWnzzr3U7FZPfAcAkjcQu+T8npPeRaqHBsN5fAs=
X-Received: by 2002:a05:6830:4b:: with SMTP id
 d11mr647832otp.106.1562147460149; 
 Wed, 03 Jul 2019 02:51:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
In-Reply-To: <20190703083745.GB8996@kroah.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 3 Jul 2019 11:50:47 +0200
Message-ID: <CAKMK7uFAaw3sL_A6gGOeot80fvukjZqprLptLER=riA1_p4zWw@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: android: ion: Remove file ion_carveout_heap.c
To: Greg KH <gregkh@linuxfoundation.org>, John Stultz <john.stultz@linaro.org>
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, joel@joelfernandes.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 3, 2019 at 10:37 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jul 03, 2019 at 01:48:41PM +0530, Nishka Dasgupta wrote:
> > Remove file ion_carveout_heap.c as its functions and definitions are not
> > used anywhere.
> > Issue found with Coccinelle.
> >
> > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > ---
> >  drivers/staging/android/ion/Kconfig           |   9 --
> >  drivers/staging/android/ion/Makefile          |   1 -
> >  .../staging/android/ion/ion_carveout_heap.c   | 133 ------------------
>
> I keep trying to do this, but others point out that the ion code is
> "going to be fixed up soon" and that people rely on this interface now.
> Well, "code outside of the kernel tree" relies on this, which is not ok,
> but the "soon" people keep insisting on it...
>
> Odds are I should just delete all of ION, as there hasn't been any
> forward progress on it in a long time.
>
> Hopefully that wakes some people up...

John Stultz has done a steady stream on ion destaging patch series
past few months, und the heading of "DMA-BUF Heaps", targeting
drivers/dma-buf. I'm not following the details, and it seems a bit a
crawl, but there's definitely work going on ... Just probably not
in-place in staging I think.
-Daniel

>
> thanks,
>
> greg k-h
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



--
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
