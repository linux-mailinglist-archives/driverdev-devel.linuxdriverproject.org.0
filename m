Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF10406630
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 05:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 998FB6068F;
	Fri, 10 Sep 2021 03:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2AyJyVkIY-Mi; Fri, 10 Sep 2021 03:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46E4A60665;
	Fri, 10 Sep 2021 03:33:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07DE41BF5E9
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 03:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E824260665
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 03:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_87GpAUdQ40 for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 03:33:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D227F60644
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 03:33:07 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id bt14so1387619ejb.3
 for <devel@driverdev.osuosl.org>; Thu, 09 Sep 2021 20:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iI90zD1qVT/+25eIKw7HUAPf+1bR/UKPrJbiCOOPBx0=;
 b=Z1OUGHZuyluftZ/37sJCQjD5WcRGKKRmwu54rwUrrFWqXvPIGxK0fEuNao2XN240yX
 yZJK+ZSScJE0jt3BDIQGY5iIN1K7k+DYEw2+jrPbAlEzcmd3YwGBmZ+x8A+lIk0gHGyC
 YvZhpUA5eFKUPmOth9SjogCMcnNFbLFsn8RHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iI90zD1qVT/+25eIKw7HUAPf+1bR/UKPrJbiCOOPBx0=;
 b=V8cD6BzZspKQj3UyN0+0mlPqpDPuU2WLXmbTKzZmO5VZwmUfnP455XVzo3T5u7FeXc
 XC/hiJiLY0ZPPmwGeNJJLRrLkTmN/DII6iLfhVs+xJa2arS2Uy6RccgQ4VPiuV/w6qdM
 zKNfwA0nvaHAwDKvLixo+SS4cYXEOQ6FQ0Lu8AsENAqiTPhE7EEcW9naUZ6D9pIke6cT
 c3KSFk8M04WOf6UQXMNcIDIqVki9gDbXZi2++JX3mBTBiwp2p4uV8YF021cC0cJ+JRBR
 3jIV4k33+MAKbi9FQlMUGsWK/bNAlKD7XIN6lKiNmlxod2hXRFQ7SA7flZZnv04bfVYn
 aaHw==
X-Gm-Message-State: AOAM530NqU7+Hk8AMjsnwVElox4AfNZ6wgZpOU1zD4OozYL2zp11uPX/
 MOiEi/E3pPOC5LZiVJiDs7Zt/I2OesSthoYNS0mjJg==
X-Google-Smtp-Source: ABdhPJz7XgWC0WFRlN+779dykVD1yYNQ9vOQRF04tNwZkzSoscJQ4EloSV7QKfU8wfgcWRsmDovBYPHumdL7vy5cEaw=
X-Received: by 2002:a17:907:9854:: with SMTP id
 jj20mr4630906ejc.133.1631244785787; 
 Thu, 09 Sep 2021 20:33:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210909232141.2489691-1-dualli@chromium.org>
 <20210909232141.2489691-2-dualli@chromium.org>
 <CAHRSSExGF3teN83P4jJJ1_ibzEvxTScm2-KMo5+kLZ7xCaMhSw@mail.gmail.com>
In-Reply-To: <CAHRSSExGF3teN83P4jJJ1_ibzEvxTScm2-KMo5+kLZ7xCaMhSw@mail.gmail.com>
From: Li Li <dualli@chromium.org>
Date: Thu, 9 Sep 2021 20:32:55 -0700
Message-ID: <CANBPYPjEDV33CuC=RUVt_KyPuu+3ua+N+BDhSTHwuFtc4pEFjg@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] binder: fix freeze race
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
Cc: Li Li <dualli@google.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Android Kernel Team <kernel-team@android.com>,
 Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Todd,

Thanks for reviewing the patch! Please see my reply below.

And I'll send out v2 soon addressing your concerns.

On Thu, Sep 9, 2021 at 4:54 PM Todd Kjos <tkjos@google.com> wrote:
>
> On Thu, Sep 9, 2021 at 4:21 PM Li Li <dualli@chromium.org> wrote:
> >
> > From: Li Li <dualli@google.com>
> >
> > Currently cgroup freezer is used to freeze the application threads, and
> > BINDER_FREEZE is used to freeze binder interface. There's already a
> > mechanism for BINDER_FREEZE to wait for any existing transactions to
> > drain out before actually freezing the binder interface.
> >
> > But freezing an app requires 2 steps, freezing the binder interface with
> > BINDER_FREEZEwhich and then freezing the application main threads with
> > cgroupfs. This is not an atomic operation. The following race issue
> > might happen.
> >
> > 1) Binder interface is frozen by ioctl(BINDER_FREEZE);
> > 2) Main thread initiates a new sync binder transaction;
> > 3) Main thread is frozen by "echo 1 > cgroup.freeze";
> > 4) The response reaches the frozen thread, which will unexpectedly fail.
> >
> > This patch provides a mechanism for user space freezer manager to check
> > if there's any new pending transaction happening between BINDER_FREEZE
> > and freezing main thread. If there's any, the main thread freezing
> > operation can be rolled back.
> >
> > Furthermore, the response might reach the binder driver before the
> > rollback actually happens. That will also cause failed transaction.
> >
> > As the other process doesn't wait for another response of the response,
> > the failed response transaction can be fixed by treating the response
> > transaction like an oneway/async one, allowing it to reach the frozen
> > thread. And it will be consumed when the thread gets unfrozen later.
> >
> > Bug: 198493121
>
> Please remove "Bug: " tag. Replace it with a "Fixes:" tag that cites
> the patch that introduced the race.
>
Done in v2.

> > Signed-off-by: Li Li <dualli@google.com>
> > ---
> >  drivers/android/binder.c          | 32 +++++++++++++++++++++++++++----
> >  drivers/android/binder_internal.h |  2 ++
> >  2 files changed, 30 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index d9030cb6b1e4..f9713a97578c 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -3038,9 +3038,8 @@ static void binder_transaction(struct binder_proc *proc,
> >         if (reply) {
> >                 binder_enqueue_thread_work(thread, tcomplete);
> >                 binder_inner_proc_lock(target_proc);
> > -               if (target_thread->is_dead || target_proc->is_frozen) {
> > -                       return_error = target_thread->is_dead ?
> > -                               BR_DEAD_REPLY : BR_FROZEN_REPLY;
> > +               if (target_thread->is_dead) {
> > +                       return_error = BR_DEAD_REPLY;
> >                         binder_inner_proc_unlock(target_proc);
> >                         goto err_dead_proc_or_thread;
> >                 }
> > @@ -4648,6 +4647,22 @@ static int binder_ioctl_get_node_debug_info(struct binder_proc *proc,
> >         return 0;
> >  }
> >
> > +static int binder_txns_pending(struct binder_proc *proc)
> > +{
> > +       struct rb_node *n;
> > +       struct binder_thread *thread;
> > +
> > +       if (proc->outstanding_txns > 0)
> > +               return 1;
> > +
> > +       for (n = rb_first(&proc->threads); n; n = rb_next(n)) {
> > +               thread = rb_entry(n, struct binder_thread, rb_node);
> > +               if (thread->transaction_stack)
> > +                       return 1;
> > +       }
> > +       return 0;
> > +}
> > +
> >  static int binder_ioctl_freeze(struct binder_freeze_info *info,
> >                                struct binder_proc *target_proc)
> >  {
> > @@ -4682,6 +4697,14 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
> >         if (!ret && target_proc->outstanding_txns)
> >                 ret = -EAGAIN;
> >
> > +       /* Also check pending transactions that wait for reply */
> > +       if (ret >= 0) {
> > +               binder_inner_proc_lock(target_proc);
> > +               if (binder_txns_pending(target_proc))
>
> The convention in the binder driver is to append "_ilocked" to the
> function name if the function expects the inner proc lock to be held
> (so "binder_txns_pending_ilocked(target_proc) in this case)".
>
Done in v2.

> > +                       ret = -EAGAIN;
> > +               binder_inner_proc_unlock(target_proc);
> > +       }
> > +
> >         if (ret < 0) {
> >                 binder_inner_proc_lock(target_proc);
> >                 target_proc->is_frozen = false;
> > @@ -4705,7 +4728,8 @@ static int binder_ioctl_get_freezer_info(
> >                 if (target_proc->pid == info->pid) {
> >                         found = true;
> >                         binder_inner_proc_lock(target_proc);
> > -                       info->sync_recv |= target_proc->sync_recv;
> > +                       info->sync_recv |= target_proc->sync_recv |
> > +                                       (binder_txns_pending(target_proc) << 1);
> >                         info->async_recv |= target_proc->async_recv;
> >                         binder_inner_proc_unlock(target_proc);
> >                 }
> > diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> > index 810c0b84d3f8..402c4d4362a8 100644
> > --- a/drivers/android/binder_internal.h
> > +++ b/drivers/android/binder_internal.h
> > @@ -378,6 +378,8 @@ struct binder_ref {
> >   *                        binder transactions
> >   *                        (protected by @inner_lock)
> >   * @sync_recv:            process received sync transactions since last frozen
> > + *                        bit 0: received sync transaction after being frozen
> > + *                        bit 1: new pending sync transaction during freezing
>
> Should these bit assignments be documented in binder.h since these bit
> assignments end up being relevant in struct binder_frozen_status_info?
>
Done in v2.

>
> >   *                        (protected by @inner_lock)
> >   * @async_recv:           process received async transactions since last frozen
> >   *                        (protected by @inner_lock)
> > --
> > 2.33.0.309.g3052b89438-goog
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
