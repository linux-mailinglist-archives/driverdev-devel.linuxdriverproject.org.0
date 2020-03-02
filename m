Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CC51761CE
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 19:03:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA302204B1;
	Mon,  2 Mar 2020 18:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D2EaL+dg3bs4; Mon,  2 Mar 2020 18:03:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6B4F520243;
	Mon,  2 Mar 2020 18:03:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 719A71BF396
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68F7485951
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDToWULxOJbm for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 18:03:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C3C3858D2
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 18:03:33 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n7so854502wrt.11
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 10:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0h74RVykrNA7k579On8OcnwZEZe5yNvwYKOREsVWIY8=;
 b=I/s+axMNmv+VyTdOjBSJkHBAbIlNVDQVD77Qp/vb6Rm4EPPoXaoz+v99Pb7XLqFiZa
 7GTxzsdtgy9pA/7v1RyHIlKkKyg7D+JXninSpdNuIud5mHzaXUj17St6NUU58oibeB5o
 JgN4vx3JSSKvkutMx8qdrUW9M/mpLXnervq/Tg6OE63ON1FJ+cqtx3db39BzyNQt3Ea0
 O2/Cc9xh2zKcELCw28Y+pH+Mq11AsIAFEgh21MGyu0+ta1SNdF99bV1p2CgAf2v2QwSk
 g5MAW05CkwwN/trw5jqgZCZTbekS2zvpzvE0b+FQOKo7KsHAxQGn7AS+9eQ7GOS8MGaT
 tchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0h74RVykrNA7k579On8OcnwZEZe5yNvwYKOREsVWIY8=;
 b=Ex2GFYLvGH3ac8HwWjSlVKMu2YCHOxMnk+/X52y9/RCkRS8PT9bnFEy41eK/lRc1cm
 6MAMQLPmZphxupiAGhKrqCJblFkSviDHIGhb04AurzY2TEjq+moSkOup537eQ+Nq26FJ
 Vdf86de/QCRVcGUMQRpZrPu6/7dpVMHu4WOgkrbhJoOwxYlFhAOlhfwVRLcxlNWzghwF
 cDjgDsBiD7kLOPnTnTbg8vCvA21SOgDdfNGAsSNgM66CwgDfMXbSciBVyh4ovvvj91qZ
 e6SuJD4do+vdvrkZcaEwLHCK6s8IXQZ13Cc7QTYuW2ZcmnI8WGrh2S7TsCm8hLhZJIzj
 yw3w==
X-Gm-Message-State: ANhLgQ1TPsJkyAjRVkxR1Z9an7Ca95VCSmaEsKf1kDVFLuJVqcQN8mt/
 ocfyubKCuNHipjqVDGSOySXpmUVYTi8UsJAH4pL0DA==
X-Google-Smtp-Source: ADFU+vurl8/N8tgOctMPEVIHiN7p0GODtIIU/MvsE8dsg2UnMEHHF6bTxs0viI0YFRimkhtPJy+xVScizd4Gj7CxKdg=
X-Received: by 2002:adf:ef4f:: with SMTP id c15mr764573wrp.200.1583172211274; 
 Mon, 02 Mar 2020 10:03:31 -0800 (PST)
MIME-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-3-glider@google.com>
 <CAHRSSEwe=jZAEVhGw4ACBU0m-76TzZfJFv1Rzw=_UVm6HbTvAw@mail.gmail.com>
In-Reply-To: <CAHRSSEwe=jZAEVhGw4ACBU0m-76TzZfJFv1Rzw=_UVm6HbTvAw@mail.gmail.com>
From: Alexander Potapenko <glider@google.com>
Date: Mon, 2 Mar 2020 19:03:19 +0100
Message-ID: <CAG_fn=W96H3kMcoTxfqVq9Ec=1HZsJjnTjuX74dhZJe0QNuMrw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] sched/wait: avoid double initialization in
 ___wait_event()
To: Todd Kjos <tkjos@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 2, 2020 at 5:57 PM Todd Kjos <tkjos@google.com> wrote:
>
> On Mon, Mar 2, 2020 at 5:04 AM <glider@google.com> wrote:
> >
> > With CONFIG_INIT_STACK_ALL enabled, the local __wq_entry is initialized
> > twice. Because Clang is currently unable to optimize the automatic
> > initialization away (init_wait_entry() is defined in another translation
> > unit), remove it with the __no_initialize annotation.
> >
> > Cc: Kees Cook <keescook@chromium.org>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Alexander Potapenko <glider@google.com>
> >
> > ---
> >  v2:
> >   - changed __do_not_initialize to __no_initialize as requested by Kees
> >     Cook
> > ---
> >  drivers/android/binder.c | 4 ++--
> >  include/linux/wait.h     | 3 ++-
> >  2 files changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index a59871532ff6b..66984e7c33094 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -4827,7 +4827,7 @@ static int binder_ioctl_write_read(struct file *filp,
> >         struct binder_proc *proc = filp->private_data;
> >         unsigned int size = _IOC_SIZE(cmd);
> >         void __user *ubuf = (void __user *)arg;
> > -       struct binder_write_read bwr __no_initialize;
> > +       struct binder_write_read bwr;
>
> How did __no_initialize get set so that it can be removed here? Should
> the addition of __no_initilize be removed earlier in the series (tip
> doesn't have the __no_initialize).

Sorry, I messed up this patch. It should not be touching binder.c at
all. All binder changes should go into patch 2/3.


> >         case BINDER_SET_MAX_THREADS: {
> > -               int max_threads;
> > +               int max_threads __no_initialize;
>
> Is this really needed? A single integer in a rarely called ioctl()
> being initialized twice doesn't warrant this optimization.

It really does not, and I didn't have this bit in v1.
But if we don't want this diff to bit rot, we'd better have a
Coccinelle script generating it.
The script I added to the description of patch 2/3 introduced this
annotation, and I thought keeping it is better than trying to teach
the script about the size of the arguments.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
