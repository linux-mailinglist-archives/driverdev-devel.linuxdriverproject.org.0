Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 624F5176243
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 19:17:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5AF3785149;
	Mon,  2 Mar 2020 18:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1tnyDfzNgfRm; Mon,  2 Mar 2020 18:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A2BF841E3;
	Mon,  2 Mar 2020 18:17:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A5AA1BF392
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 67520841E3
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GmRpUeVVzrn4 for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 18:17:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 713B084081
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 18:17:17 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p9so80830wmc.2
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 10:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dkIKEunspbm7vvq6Vi7LSmhvIa5CNrgbE4fc3Br8gcw=;
 b=h9/BYT0VV2933Zm22oDgQkHPwM72o7HYQz9S7NzgkkgRrea96GrmK83XN6Dos7mqKs
 z4GsyLPp8KOMpPr6Qp7h0GIQUDd/oE7wFSAu3cZTEY1S/wneOyE1xhZZBGFe0IGKk0Ts
 qtwVg0tg/yQp8T9kt88RWKiynfu8Fmp9+rAZnaRihMEzD/ult8LcDzHiVjvkYYaTjTC3
 ZveMnddiHf7gGU9/jMOSKKManlXqEBYg1zO4ylD2sjOSUYsnkjiL6U79qox495/8jEvB
 aWAR/SBOK2sWQCLb8/6GdrKTuP7OUdoQUkbh6enUFhDMXtSbaiaVZozLzSlJlqFUFFUr
 wPAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dkIKEunspbm7vvq6Vi7LSmhvIa5CNrgbE4fc3Br8gcw=;
 b=i7gjMXp0HOsFPfJ8SrVLyHQ7dIccwuBedsntYwKQe/hVj+6N3/+vCBJgjq843qrru9
 VXBU5sHGu7NspcHpfQi1zwMeKl9G7lY7XjMAbaNljrWbwXO7zLDrnXUoCK6xOZqoxbUO
 +iYrFlGr6lefSnB0dplHlbE69L9VHgN5Sc99UEBnyjvYZLXE18I7RK+W0a9jdCzgnZI/
 7wEgXLH6Yo1PUNTDOdlwkud8uWLRzMMQc8dm1RNnngHz2uNlwSVtLawQXGf5qUXG/MPu
 AkQNgNuup/AM06TnuL2AsGovZ4H+d+AZFoVwh8DGiD//0TFGTaAu9n8g9pkDNeRhQy8V
 5cLQ==
X-Gm-Message-State: ANhLgQ2IcBb9w+ZC7mNJFYT6K6QCcAzH+F4HMh6kM/3C0m4pqVnbHBlE
 +39XfDfLVX7CJcHo/WKWcbK3cIhcOGrVBb0YChogzw==
X-Google-Smtp-Source: ADFU+vvJUfmM/0m2Kl1r0i8TEF6siBJ+sIaFFcE7R5SjUcp7lrhaI05WmNC97vrwgYF1aGK1og4oSP3PEBQrrbmvIW4=
X-Received: by 2002:a1c:e0d6:: with SMTP id x205mr122589wmg.29.1583173035221; 
 Mon, 02 Mar 2020 10:17:15 -0800 (PST)
MIME-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
In-Reply-To: <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
From: Alexander Potapenko <glider@google.com>
Date: Mon, 2 Mar 2020 19:17:02 +0100
Message-ID: <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
To: Joe Perches <joe@perches.com>
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
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 2, 2020 at 3:00 PM Joe Perches <joe@perches.com> wrote:
>
> On Mon, 2020-03-02 at 14:25 +0100, Alexander Potapenko wrote:
> > On Mon, Mar 2, 2020 at 2:11 PM Joe Perches <joe@perches.com> wrote:
> > > On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> > > > Certain copy_from_user() invocations in binder.c are known to
> > > > unconditionally initialize locals before their first use, like e.g. in
> > > > the following case:
> > > []
> > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > []
> > > > @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
> > > >
> > > >               case BC_TRANSACTION_SG:
> > > >               case BC_REPLY_SG: {
> > > > -                     struct binder_transaction_data_sg tr;
> > > > +                     struct binder_transaction_data_sg tr __no_initialize;
> > > >
> > > >                       if (copy_from_user(&tr, ptr, sizeof(tr)))
> > >
> > > I fail to see any value in marking tr with __no_initialize
> > > when it's immediately written to by copy_from_user.
> >
> > This is being done exactly because it's immediately written to by copy_to_user()
> > Clang is currently unable to figure out that copy_to_user() initializes memory.
> > So building the kernel with CONFIG_INIT_STACK_ALL=y basically leads to
> > the following code:
> >
> >   struct binder_transaction_data_sg tr;
> >   memset(&tr, 0xAA, sizeof(tr));
> >   if (copy_from_user(&tr, ptr, sizeof(tr))) {...}
> >
> > This unnecessarily slows the code down, so we add __no_initialize to
> > prevent the compiler from emitting the redundant initialization.
>
> So?  CONFIG_INIT_STACK_ALL by design slows down code.
Correct.

> This marking would likely need to be done for nearly all
> 3000+ copy_from_user entries.
Unfortunately, yes. I was just hoping to do so for a handful of hot
cases that we encounter, but in the long-term a compiler solution must
supersede them.

> Why not try to get something done on the compiler side
> to mark the function itself rather than the uses?
This is being worked on in the meantime as well (see
http://lists.llvm.org/pipermail/cfe-dev/2020-February/064633.html)
Do you have any particular requisitions about how this should look on
the source level?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
