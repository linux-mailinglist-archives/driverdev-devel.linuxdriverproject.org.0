Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACB8230CBC
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 16:50:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35B7822CC7;
	Tue, 28 Jul 2020 14:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EbvCXc7FaHEy; Tue, 28 Jul 2020 14:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B28D122855;
	Tue, 28 Jul 2020 14:50:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F5641BF9AF
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 14:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE7D386CDB
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 14:50:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRpmsmEa0uiV for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 14:50:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3E04D8740E
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 14:50:27 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id v15so6628733lfg.6
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 07:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uz2mVijTdc9hWEqHj4Oi6aqXh1WA5+MI9lYrpxVpIkY=;
 b=TqSLWEU5EvLtNxbQEQ3Gu27y/A9HJjH8OJhyzazll6sKSxnWk+Vo+16/N4a9JCJ0EU
 aooWwgS3xZYVAy3rNzb7KF8+GLCoeTo0VntwT4lo2DyGE4bEfAGar0X/wHGOLWuhIVMg
 lmJobZcOdQr+98w5nG/XMS4EZnqTpj59l+WoR5Ud9gQ5D19jAMFWFOL2yvexmIlOJFl+
 ybMSEgJZT1fhWWprT2m8h+tX0scfW6SLYibBycci08t2Z6hHrpk65b2iPTRk0BX3srQp
 jyRZoqnnfXlZrEk0XwhRxg2RlICbYYlAzGEwaTJmG+iQysg5C0Jnmm7tpum0Emfbp34N
 ORRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uz2mVijTdc9hWEqHj4Oi6aqXh1WA5+MI9lYrpxVpIkY=;
 b=SQgudxc1hot8rar3xB2KPYKT/hDPgzts6gS5zm8rcg6PLkANkZ8XAM5AkwsVbJnNax
 k7YqWFULn1QgV22mccw9yezMu6TYDuV0059EJMw9EXC1nimIrEMxyV4Eb4w//CxyHpu9
 T2t+7ZGyU0syaF/pwFixrkMd00neIvZ9LHn3Mcvj5F40OgjUgvMqDBivsV0g92LseiaP
 tA+b+90Bzvqca13zw5WX99RjHDt7NZAT5rKT+s6OCi8Tfdmhgz9geHsb2aCEfiivklmI
 aKBkGWGEGjYTmgh4qLRbj7lngcweeKSyMhUI2xndu4nhMutArz3ohDX5Iz7ydP5VB04i
 h2Aw==
X-Gm-Message-State: AOAM5326JT/lzwPB9ykeZ4H47qC404wvuBefwOnvR7Zz7YisbQyJ6Rnb
 CHwqv7Bt4VpG73tZvI54sY9/NAYWwrgVzxQxwC6Rwg==
X-Google-Smtp-Source: ABdhPJwCqKrTeHtvdsqwVeOMyiD1xS/7jIZTgktpD+HlGEQMNe53y3cm+ryPXlNjn2ulN7GgFDYZJDqvkBrczXp0/NA=
X-Received: by 2002:a19:ac03:: with SMTP id g3mr14429055lfc.164.1595947825106; 
 Tue, 28 Jul 2020 07:50:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200727120424.1627555-1-jannh@google.com>
 <CAB0TPYHx-SkaWR6i0LwLYRJv13_0V3Ak63H0=parZNvS5XdqgA@mail.gmail.com>
In-Reply-To: <CAB0TPYHx-SkaWR6i0LwLYRJv13_0V3Ak63H0=parZNvS5XdqgA@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 28 Jul 2020 16:49:58 +0200
Message-ID: <CAG48ez23-oOGjeNhFCzrWxJuuJUsdgbpiSiPvM0ov1n+FcLPhw@mail.gmail.com>
Subject: Re: [PATCH v2] binder: Prevent context manager from incrementing ref 0
To: Martijn Coenen <maco@android.com>
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

On Tue, Jul 28, 2020 at 3:50 PM Martijn Coenen <maco@android.com> wrote:
> On Mon, Jul 27, 2020 at 2:04 PM Jann Horn <jannh@google.com> wrote:
> >  - task B opens /dev/binder once, creating binder_proc instance P3
> >  - P3 calls P2 (via magic handle 0) with (void*)1 as argument (two-way
> >    transaction)
> >  - P2 receives the handle and uses it to call P3 (two-way transaction)
> >  - P3 calls P2 (via magic handle 0) (two-way transaction)
> >  - P2 calls P2 (via handle 1) (two-way transaction)
>
> Why do you need P3 involved at all? Could P2 just straight away make a
> call on handle 1?

Yes, it could, I think. IIRC these steps are necessary if you want to
actually get a KASAN splat, instead of just a transaction-to-self with
no further consequences. It has been a while since I looked at this,
but I'll try to figure out again what was going on...


A UAF occurs in the following code due to the transaction-to-self,
because the "if (t->to_thread == thread)" is tricked into believing
that the transaction has already been accepted.

static int binder_thread_release(struct binder_proc *proc,
                                 struct binder_thread *thread)
{
        struct binder_transaction *t;
        struct binder_transaction *send_reply = NULL;
        [...]
        t = thread->transaction_stack;
        if (t) {
                [...]
                if (t->to_thread == thread)
                        send_reply = t;
        } else {
                [...]
        }
        [...]
        //NOTE: transaction is freed here because top-of-stack is
        //      wrongly treated as already-accepted incoming transaction)
        if (send_reply)
                binder_send_failed_reply(send_reply, BR_DEAD_REPLY);
        //NOTE pending transaction work is processed here (transaction has not
        //     yet been accepted)
        binder_release_work(proc, &thread->todo);
        [...]
}

An unaccepted transaction will only have a non-NULL ->to_thread if the
transaction has a specific target thread; for a non-reply transaction,
that is only the case if it is a two-way transaction that was sent
while the binder call stack already contained the target task (iow,
the transaction looks like a synchronous callback invocation).

With the steps:

 - P3 calls P2 (via magic handle 0) with (void*)1 as argument (two-way
   transaction)
 - P2 receives the handle and uses it to call P3 (two-way transaction)
 - P3 calls P2 (via magic handle 0) (two-way transaction)
 - P2 calls P2 (via handle 1) (two-way transaction)

the call stack will look like this:

    P3 -> P2 -> P3 -> P2 -> P2

The initial call from P3 to P2 was IIRC just to give P2 a handle to
P3; IIRC the relevant part of the call stack was:

    P2 -> P3 -> P2 -> P2

Because P2 already occurs down in the call stack, the final
transaction "P2 -> P2" is considered to be a callback and is
thread-directed.


The reason why P3 has to be created from task B is the "if
(target_node && target_proc->pid == proc->pid)" check for transactions
to reference 0.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
