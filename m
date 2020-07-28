Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D254230EB0
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 18:02:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DD438759A;
	Tue, 28 Jul 2020 16:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2RA93611pK6; Tue, 28 Jul 2020 16:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A784086974;
	Tue, 28 Jul 2020 16:02:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCB631BF573
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 16:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8D3986519
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 16:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6mXuZr0b3jeA for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 16:02:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3E3C985FD4
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 16:02:07 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id t6so8777815ljk.9
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 09:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4pYEC9dZ+jd5ZdpQ86R7MRp/YpojCjB5i3kRxOXIqZ4=;
 b=lFPlDrZAPUQGkmZpmSCIMJDbvQtxgVtpwEqHn/z1SvDBcvz/7LeDdZGg4TSxdYSyqk
 1AL+peXtrZTzNnqgR0xs7Y7977CKVPUok7j3yTy3fQYqP10ZqxqIy+9zptz2JJbZcWaM
 1mA94lw8guaLpIHv0MPGhj0YPfLyPVmnef/ODkEwrC00hyOPvUfFWOSFl3+GXoyXNH0M
 t0Vg8hdOAGTu3wxRXFazn8ao0NP1jTcE4K54hUNsuXJb/t0nZB3hCsK7SHo4Zm2aMn1+
 wgBJCGNHD1ozmLFA67jDuE7KQ9jNegJ3U2Z89iqfBH4vcO/T/fCQt9+msff18hc1XoOU
 +gfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4pYEC9dZ+jd5ZdpQ86R7MRp/YpojCjB5i3kRxOXIqZ4=;
 b=SWBol2spcIttrUE0Nyt1M3JyNBkrGC+49u2CAVU0idpPnFKai3EDlZ7djQE1i2NFT6
 Rqco/zuB7OoRcDT/rk3U12s5PXCZGKU1RuFnA1axd5fzb4hNrkB23WAPvAYK+yImTd5h
 edkGgdYnFFZiNf1jPwIPTREFrSQblVaiOeT7lOx1eo5RDBbl9fpQ7sTTph/79EMZnFp9
 uX+NC0Xn7RkiOwt1FR20WrB/J3rZTKB/q4XxIo0aUGFjZy2PXT4hEbGNwF79HxaHy2Du
 djQxM1ALw4mzzBYLAEpBz4TEhhZQ2OxbVlPlNrJv32//Y0U2RY3gQwmRD12OpIPn/3M+
 Om7A==
X-Gm-Message-State: AOAM530ihoH9zhijBjZWeIH/lZ6GSjTczjT5rCp/HrTogKHlXacjOINe
 V9a6Pp/4wBDXxzU3oh19JKzYj69UHrz4oPXGvr/tCg==
X-Google-Smtp-Source: ABdhPJyNDixSOqhlBwh4RtvxiHRwy6t1BD/alks9BCgw7xmmuH8s5mdvp3+TVPFpJ/ycVp044ugkXyxzh7rvfBAZS+Q=
X-Received: by 2002:a2e:6c14:: with SMTP id h20mr11602812ljc.176.1595952125171; 
 Tue, 28 Jul 2020 09:02:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200727120424.1627555-1-jannh@google.com>
 <CAB0TPYHx-SkaWR6i0LwLYRJv13_0V3Ak63H0=parZNvS5XdqgA@mail.gmail.com>
 <CAG48ez23-oOGjeNhFCzrWxJuuJUsdgbpiSiPvM0ov1n+FcLPhw@mail.gmail.com>
In-Reply-To: <CAG48ez23-oOGjeNhFCzrWxJuuJUsdgbpiSiPvM0ov1n+FcLPhw@mail.gmail.com>
From: Martijn Coenen <maco@android.com>
Date: Tue, 28 Jul 2020 18:01:54 +0200
Message-ID: <CAB0TPYEd-UeEeZbn7iDLwXYLRZfS5vSgY4hJTooYdCs3n6FTqA@mail.gmail.com>
Subject: Re: [PATCH v2] binder: Prevent context manager from incrementing ref 0
To: Jann Horn <jannh@google.com>
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
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Mattias Nissler <mnissler@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks a lot for the detailed explanation, I understood now.

Martijn

On Tue, Jul 28, 2020 at 4:50 PM Jann Horn <jannh@google.com> wrote:
>
> On Tue, Jul 28, 2020 at 3:50 PM Martijn Coenen <maco@android.com> wrote:
> > On Mon, Jul 27, 2020 at 2:04 PM Jann Horn <jannh@google.com> wrote:
> > >  - task B opens /dev/binder once, creating binder_proc instance P3
> > >  - P3 calls P2 (via magic handle 0) with (void*)1 as argument (two-way
> > >    transaction)
> > >  - P2 receives the handle and uses it to call P3 (two-way transaction)
> > >  - P3 calls P2 (via magic handle 0) (two-way transaction)
> > >  - P2 calls P2 (via handle 1) (two-way transaction)
> >
> > Why do you need P3 involved at all? Could P2 just straight away make a
> > call on handle 1?
>
> Yes, it could, I think. IIRC these steps are necessary if you want to
> actually get a KASAN splat, instead of just a transaction-to-self with
> no further consequences. It has been a while since I looked at this,
> but I'll try to figure out again what was going on...
>
>
> A UAF occurs in the following code due to the transaction-to-self,
> because the "if (t->to_thread == thread)" is tricked into believing
> that the transaction has already been accepted.
>
> static int binder_thread_release(struct binder_proc *proc,
>                                  struct binder_thread *thread)
> {
>         struct binder_transaction *t;
>         struct binder_transaction *send_reply = NULL;
>         [...]
>         t = thread->transaction_stack;
>         if (t) {
>                 [...]
>                 if (t->to_thread == thread)
>                         send_reply = t;
>         } else {
>                 [...]
>         }
>         [...]
>         //NOTE: transaction is freed here because top-of-stack is
>         //      wrongly treated as already-accepted incoming transaction)
>         if (send_reply)
>                 binder_send_failed_reply(send_reply, BR_DEAD_REPLY);
>         //NOTE pending transaction work is processed here (transaction has not
>         //     yet been accepted)
>         binder_release_work(proc, &thread->todo);
>         [...]
> }
>
> An unaccepted transaction will only have a non-NULL ->to_thread if the
> transaction has a specific target thread; for a non-reply transaction,
> that is only the case if it is a two-way transaction that was sent
> while the binder call stack already contained the target task (iow,
> the transaction looks like a synchronous callback invocation).
>
> With the steps:
>
>  - P3 calls P2 (via magic handle 0) with (void*)1 as argument (two-way
>    transaction)
>  - P2 receives the handle and uses it to call P3 (two-way transaction)
>  - P3 calls P2 (via magic handle 0) (two-way transaction)
>  - P2 calls P2 (via handle 1) (two-way transaction)
>
> the call stack will look like this:
>
>     P3 -> P2 -> P3 -> P2 -> P2
>
> The initial call from P3 to P2 was IIRC just to give P2 a handle to
> P3; IIRC the relevant part of the call stack was:
>
>     P2 -> P3 -> P2 -> P2
>
> Because P2 already occurs down in the call stack, the final
> transaction "P2 -> P2" is considered to be a callback and is
> thread-directed.
>
>
> The reason why P3 has to be created from task B is the "if
> (target_node && target_proc->pid == proc->pid)" check for transactions
> to reference 0.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
