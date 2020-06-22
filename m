Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71926204249
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 22:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A0F889498;
	Mon, 22 Jun 2020 20:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D4LGEUbQvNFu; Mon, 22 Jun 2020 20:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFC6C89361;
	Mon, 22 Jun 2020 20:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E69041BF20D
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 20:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E2ADF89361
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 20:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oax4y++n55q4 for <devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 20:59:19 +0000 (UTC)
X-Greylist: delayed 00:40:17 by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D299C88B81
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 20:59:18 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id p20so19362435ejd.13
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 13:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ue6RX1kZyda1DPpFigD1OeuukeL7pPeF2wvAH0GA2VY=;
 b=dkym1vj9zdd7rMScujOzBH+n5zSUImzcl8fkefcL95zAazkbsX7vGYegoDlXZAiJjp
 1T8TSg4lk64NcB1aHngfYacsQqyz14guMB15lLw7Ymz9vtZszKE8X22zoeQztWLd7X19
 rOUsu2SemPtv4aD7aOOwAMG0WTqRwMRtRyCnDi9XGvKxGjSOuyCJ1jW3yAQVG6dWSwfh
 wU+MRH9J25QBZWT6xzvco/EDTSVwc4daP9mKhdCvL6LZQqmNqGnkfqgzwvsMCZMol9Gb
 z0onUgjDpzbUmHzKcM6dMfrh+Qnp5uLZRJrx0JMxnl7aXPjFgenSPK44bNJaAou2fMFl
 Du1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ue6RX1kZyda1DPpFigD1OeuukeL7pPeF2wvAH0GA2VY=;
 b=pPIFrpKnQafdtKTBAxjMgrHw/Pvpvz9UQyN3LECI+CQwkQYo2pJyfSmQhQtxGjfLRR
 wLfSjXP1G3nIdV8WiMcRNRBYy/o6qW2RU4i1rDqSLNcjDxBABiHf9swoTEsZFf1vipY8
 n/nSnzJGcV6cV8ksFN6XyHGcQehBjxr9/LAuI/oP35/SxFpYOq6o4w9Q7IOPfbFfjpVH
 ZPj0gKmiHe/iRltjz3hVKeLdsFAFR8E/4Hd+hFDLXNCcdBAr0eqCjLLBM9yFHLD8SSTc
 tKm+QYTCKX318O6oeQVg9CWvuCIuokBr2DDEt6JIA+gZa2QcbH6DvAZnxV5fQ9dw1tmm
 rmvA==
X-Gm-Message-State: AOAM530vK1lNHCDNaPaWJqNUgZowIgT+SmI+6HDMdoT8Xt79qQvBRRh2
 6hGH6fAoxB1EhiJABS611/PbSer6yQDBOTy1DoJOCsem
X-Google-Smtp-Source: ABdhPJzse9DfN8Nz5ThbenHOI2v0XiBpuFPUioEgUupH8j5Vk0OR0LZg+RqtEegE5FEvyG1Kaw/D7BMEw+Bb38GkToA=
X-Received: by 2002:a17:906:4155:: with SMTP id
 l21mr10680726ejk.438.1592859556870; 
 Mon, 22 Jun 2020 13:59:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200622200715.114382-1-tkjos@google.com>
 <20200622200955.unq7elx2ry2vrnfe@wittgenstein>
 <CAHRSSExVfUhkXzhuEUvUP-CTwSE7ExWwYCL8K_N+YABW9C1BzQ@mail.gmail.com>
In-Reply-To: <CAHRSSExVfUhkXzhuEUvUP-CTwSE7ExWwYCL8K_N+YABW9C1BzQ@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 22 Jun 2020 13:59:04 -0700
Message-ID: <CAHRSSEzms6-4zvTXDG6PTcgHx1vev343DRWXxV2kZDqpop1=GQ@mail.gmail.com>
Subject: Re: [PATCH] binder: fix null deref of proc->context
To: Christian Brauner <christian.brauner@ubuntu.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Android Kernel Team <kernel-team@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 22, 2020 at 1:18 PM Todd Kjos <tkjos@google.com> wrote:
>
> On Mon, Jun 22, 2020 at 1:09 PM Christian Brauner
> <christian.brauner@ubuntu.com> wrote:
> >
> > On Mon, Jun 22, 2020 at 01:07:15PM -0700, Todd Kjos wrote:
> > > The binder driver makes the assumption proc->context pointer is invariant after
> > > initialization (as documented in the kerneldoc header for struct proc).
> > > However, in commit f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
> > > proc->context is set to NULL during binder_deferred_release().
> > >
> > > Another proc was in the middle of setting up a transaction to the dying
> > > process and crashed on a NULL pointer deref on "context" which is a local
> > > set to &proc->context:
> > >
> > >     new_ref->data.desc = (node == context->binder_context_mgr_node) ? 0 : 1;
> > >
> > > Here's the stack:
> > >
> > > [ 5237.855435] Call trace:
> > > [ 5237.855441] binder_get_ref_for_node_olocked+0x100/0x2ec
> > > [ 5237.855446] binder_inc_ref_for_node+0x140/0x280
> > > [ 5237.855451] binder_translate_binder+0x1d0/0x388
> > > [ 5237.855456] binder_transaction+0x2228/0x3730
> > > [ 5237.855461] binder_thread_write+0x640/0x25bc
> > > [ 5237.855466] binder_ioctl_write_read+0xb0/0x464
> > > [ 5237.855471] binder_ioctl+0x30c/0x96c
> > > [ 5237.855477] do_vfs_ioctl+0x3e0/0x700
> > > [ 5237.855482] __arm64_sys_ioctl+0x78/0xa4
> > > [ 5237.855488] el0_svc_common+0xb4/0x194
> > > [ 5237.855493] el0_svc_handler+0x74/0x98
> > > [ 5237.855497] el0_svc+0x8/0xc
> > >
> > > The fix is to move the kfree of the binder_device to binder_free_proc()
> > > so the binder_device is freed when we know there are no references
> > > remaining on the binder_proc.
> > >
> > > Fixes: f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
> > > Signed-off-by: Todd Kjos <tkjos@google.com>
>
> Forgot to include stable. The issue was introduced in 5.6, so fix needed in 5.7.
> Cc: stable@vger.kernel.org # 5.7

Turns out the patch with the issue was also backported to 5.4.y, so
the fix is needed there too.

>
>
> >
> >
> > Thanks, looks good to me!
> > Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> >
> > Christian
> >
> > > ---
> > >  drivers/android/binder.c | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > index e47c8a4c83db..f50c5f182bb5 100644
> > > --- a/drivers/android/binder.c
> > > +++ b/drivers/android/binder.c
> > > @@ -4686,8 +4686,15 @@ static struct binder_thread *binder_get_thread(struct binder_proc *proc)
> > >
> > >  static void binder_free_proc(struct binder_proc *proc)
> > >  {
> > > +     struct binder_device *device;
> > > +
> > >       BUG_ON(!list_empty(&proc->todo));
> > >       BUG_ON(!list_empty(&proc->delivered_death));
> > > +     device = container_of(proc->context, struct binder_device, context);
> > > +     if (refcount_dec_and_test(&device->ref)) {
> > > +             kfree(proc->context->name);
> > > +             kfree(device);
> > > +     }
> > >       binder_alloc_deferred_release(&proc->alloc);
> > >       put_task_struct(proc->tsk);
> > >       binder_stats_deleted(BINDER_STAT_PROC);
> > > @@ -5406,7 +5413,6 @@ static int binder_node_release(struct binder_node *node, int refs)
> > >  static void binder_deferred_release(struct binder_proc *proc)
> > >  {
> > >       struct binder_context *context = proc->context;
> > > -     struct binder_device *device;
> > >       struct rb_node *n;
> > >       int threads, nodes, incoming_refs, outgoing_refs, active_transactions;
> > >
> > > @@ -5423,12 +5429,6 @@ static void binder_deferred_release(struct binder_proc *proc)
> > >               context->binder_context_mgr_node = NULL;
> > >       }
> > >       mutex_unlock(&context->context_mgr_node_lock);
> > > -     device = container_of(proc->context, struct binder_device, context);
> > > -     if (refcount_dec_and_test(&device->ref)) {
> > > -             kfree(context->name);
> > > -             kfree(device);
> > > -     }
> > > -     proc->context = NULL;
> > >       binder_inner_proc_lock(proc);
> > >       /*
> > >        * Make sure proc stays alive after we
> > > --
> > > 2.27.0.111.gc72c7da667-goog
> > >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
