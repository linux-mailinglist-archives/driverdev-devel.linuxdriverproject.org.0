Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3980433CA84
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 02:02:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DC146059F;
	Tue, 16 Mar 2021 01:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o0HbCq0i9ZmN; Tue, 16 Mar 2021 01:02:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C835605F5;
	Tue, 16 Mar 2021 01:02:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9ED471BF983
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 01:02:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B1CF42FEE
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 01:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3cJqUtDIMK14 for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 01:02:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8705440175
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 01:02:11 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id ox4so53781661ejb.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 18:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8yzr8vIvnkGPdWtqahnRhHLXhKDFt9/e1H9/6UhCd2s=;
 b=m5KUP40BIDzFPAx9O3jXmgeTnRsy8WP37c4C0YSFea+9K7OUPsBpKyGveWLSJvlYDH
 TOwlw1yo6XIYJ2h2W2DlOQ3/krj8pNmW1H0bXoffKCuEtuOmmE6klQZAaOpT2UsIsAVp
 tZF0mXGAedp3bNoNnSMSc+cWjcvh8YXxIOROw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8yzr8vIvnkGPdWtqahnRhHLXhKDFt9/e1H9/6UhCd2s=;
 b=LvKoTgAHuPcLQvAtKM4g1ZNl96+QxfBmLT8pfVY5T31WDmau4qHuqw9Zl+lOF8Nmm2
 oV/CsSuZhVl3Eic3kC0wOQlLgbR0qEBuG0aOFNAJrdXKLZWsQoljiTwhA1XrFmqQ9u9l
 HFfd6biuE7riGcVrLkzMTFW+kUjoXQBsJaES/dEuvdUfz6wxTMnLlfB8meB/9PV8jlbX
 Kgnx6HriIIvo/Bol5diir6d2+ef1isTDdF6nK9jZ8zUGsCnz9dqQPfPSYWbfnNTaOI9A
 qMbFYHjF2wOoSQJChq3BAnCKM8qCXLOh9WnXBni1mV1PTSNYBZyhzC57HDj8Qv+LWIw3
 Kt4w==
X-Gm-Message-State: AOAM532JS96nD8IHrS+f8UdTP1prrS4MRk/I74uqX6ANKWk64CzOq5iA
 569S6gXdncyI/jQK7FE391zLlY1Ps5tTpVryIX00hA==
X-Google-Smtp-Source: ABdhPJwkP7HjJ4H3+1aMXFsOU2Uk0Qx8Pi/qm4ORMMdnCUHxUTDpfOMERAOm/HHvRCyMswk0hNc3cF0omqgwCaaSrFM=
X-Received: by 2002:a17:906:2e45:: with SMTP id
 r5mr25995504eji.380.1615856529588; 
 Mon, 15 Mar 2021 18:02:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210311184629.589725-1-dualli@chromium.org>
 <20210311184629.589725-2-dualli@chromium.org>
 <CAHRSSEwqjJZwjWC0_6SzTkgNPKd6gNjuHVk7k5UccjFWRrsmCg@mail.gmail.com>
In-Reply-To: <CAHRSSEwqjJZwjWC0_6SzTkgNPKd6gNjuHVk7k5UccjFWRrsmCg@mail.gmail.com>
From: Li Li <dualli@chromium.org>
Date: Mon, 15 Mar 2021 18:01:58 -0700
Message-ID: <CANBPYPjHTwUK2bXHLAGU7snnKpBqteE+pytx_F1puWA=FJ6MYg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] binder: BINDER_FREEZE ioctl
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 12, 2021 at 4:00 PM Todd Kjos <tkjos@google.com> wrote:
>
> On Thu, Mar 11, 2021 at 10:46 AM Li Li <dualli@chromium.org> wrote:
> >
> > From: Marco Ballesio <balejs@google.com>
> >
> > Frozen tasks can't process binder transactions, so a way is required to
> > inform transmitting ends of communication failures due to the frozen
> > state of their receiving counterparts. Additionally, races are possible
> > between transitions to frozen state and binder transactions enqueued to
> > a specific process.
> >
> > Implement BINDER_FREEZE ioctl for user space to inform the binder driver
> > about the intention to freeze or unfreeze a process. When the ioctl is
> > called, block the caller until any pending binder transactions toward
> > the target process are flushed. Return an error to transactions to
> > processes marked as frozen.
> >
> > Signed-off-by: Marco Ballesio <balejs@google.com>
> > Co-developed-by: Todd Kjos <tkjos@google.com>
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Signed-off-by: Li Li <dualli@google.com>
> > ---
> >  drivers/android/binder.c            | 141 ++++++++++++++++++++++++++--
> >  drivers/android/binder_internal.h   |  12 +++
> >  include/uapi/linux/android/binder.h |  13 +++
> >  3 files changed, 156 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index c119736ca56a..76ea558df03e 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -1506,6 +1506,12 @@ static void binder_free_transaction(struct binder_transaction *t)
> >
> >         if (target_proc) {
> >                 binder_inner_proc_lock(target_proc);
> > +               target_proc->outstanding_txns--;
> > +               if (target_proc->outstanding_txns < 0)
> > +                       pr_warn("%s: Unexpected outstanding_txns %d\n",
> > +                               __func__, target_proc->outstanding_txns);
>
> Shouldn't this be something like "outstanding_txns is negative"? If we
> ever see one of these, is this enough information to be useful? Should
> we at least print the target proc's pid so someone can figure out what
> process had the messed up count?
>
The negative case should never happen. But if it really happens, that
means we found a
fundamental logic error within the binder driver. In such a case, more
DEBUG enums are
required to debug the issue, especially BINDER_DEBUG_TRANSACTION. So it's not
necessary to print the pid again.

>
> > +               if (!target_proc->outstanding_txns && target_proc->is_frozen)
> > +                       wake_up_interruptible_all(&target_proc->freeze_wait);
> >                 if (t->buffer)
> >                         t->buffer->transaction = NULL;
> >                 binder_inner_proc_unlock(target_proc);
> > @@ -2331,10 +2337,11 @@ static int binder_fixup_parent(struct binder_transaction *t,
> >   * If the @thread parameter is not NULL, the transaction is always queued
> >   * to the waitlist of that specific thread.
> >   *
> > - * Return:     true if the transactions was successfully queued
> > - *             false if the target process or thread is dead
> > + * Return:     0 if the transaction was successfully queued
> > + *             BR_DEAD_REPLY if the target process or thread is dead
> > + *             BR_FROZEN_REPLY if the target process or thread is frozen
> >   */
> > -static bool binder_proc_transaction(struct binder_transaction *t,
> > +static int binder_proc_transaction(struct binder_transaction *t,
> >                                     struct binder_proc *proc,
> >                                     struct binder_thread *thread)
> >  {
> > @@ -2354,10 +2361,13 @@ static bool binder_proc_transaction(struct binder_transaction *t,
> >
> >         binder_inner_proc_lock(proc);
> >
> > -       if (proc->is_dead || (thread && thread->is_dead)) {
> > +       if ((proc->is_frozen && !oneway) || proc->is_dead ||
> > +                       (thread && thread->is_dead)) {
> > +               bool proc_is_dead = proc->is_dead
> > +                       || (thread && thread->is_dead);
> >                 binder_inner_proc_unlock(proc);
> >                 binder_node_unlock(node);
> > -               return false;
> > +               return proc_is_dead ? BR_DEAD_REPLY : BR_FROZEN_REPLY;
>
> Do we need the proc_is_dead local? This could be:
>     return proc->is_frozen ? BR_FROZEN_REPLY : BR_DEAD_REPLY
You're right. The improved code is already in v3, which will be sent
in a couple minutes. Thanks!

>
> >         }
> >
> >         if (!thread && !pending_async)
> > @@ -2373,10 +2383,11 @@ static bool binder_proc_transaction(struct binder_transaction *t,
> >         if (!pending_async)
> >                 binder_wakeup_thread_ilocked(proc, thread, !oneway /* sync */);
> >
> > +       proc->outstanding_txns++;
> >         binder_inner_proc_unlock(proc);
> >         binder_node_unlock(node);
> >
> > -       return true;
> > +       return 0;
> >  }
> >
> >  /**
> > @@ -3013,13 +3024,16 @@ static void binder_transaction(struct binder_proc *proc,
> >         if (reply) {
> >                 binder_enqueue_thread_work(thread, tcomplete);
> >                 binder_inner_proc_lock(target_proc);
> > -               if (target_thread->is_dead) {
> > +               if (target_thread->is_dead || target_proc->is_frozen) {
> > +                       return_error = target_thread->is_dead ?
> > +                               BR_DEAD_REPLY : BR_FROZEN_REPLY;
> >                         binder_inner_proc_unlock(target_proc);
> >                         goto err_dead_proc_or_thread;
> >                 }
> >                 BUG_ON(t->buffer->async_transaction != 0);
> >                 binder_pop_transaction_ilocked(target_thread, in_reply_to);
> >                 binder_enqueue_thread_work_ilocked(target_thread, &t->work);
> > +               target_proc->outstanding_txns++;
> >                 binder_inner_proc_unlock(target_proc);
> >                 wake_up_interruptible_sync(&target_thread->wait);
> >                 binder_free_transaction(in_reply_to);
> > @@ -3038,7 +3052,9 @@ static void binder_transaction(struct binder_proc *proc,
> >                 t->from_parent = thread->transaction_stack;
> >                 thread->transaction_stack = t;
> >                 binder_inner_proc_unlock(proc);
> > -               if (!binder_proc_transaction(t, target_proc, target_thread)) {
> > +               return_error = binder_proc_transaction(t,
> > +                               target_proc, target_thread);
> > +               if (return_error) {
> >                         binder_inner_proc_lock(proc);
> >                         binder_pop_transaction_ilocked(thread, t);
> >                         binder_inner_proc_unlock(proc);
> > @@ -3048,7 +3064,8 @@ static void binder_transaction(struct binder_proc *proc,
> >                 BUG_ON(target_node == NULL);
> >                 BUG_ON(t->buffer->async_transaction != 1);
> >                 binder_enqueue_thread_work(thread, tcomplete);
> > -               if (!binder_proc_transaction(t, target_proc, NULL))
> > +               return_error = binder_proc_transaction(t, target_proc, NULL);
> > +               if (return_error)
> >                         goto err_dead_proc_or_thread;
> >         }
> >         if (target_thread)
> > @@ -3065,7 +3082,6 @@ static void binder_transaction(struct binder_proc *proc,
> >         return;
> >
> >  err_dead_proc_or_thread:
> > -       return_error = BR_DEAD_REPLY;
> >         return_error_line = __LINE__;
> >         binder_dequeue_work(proc, tcomplete);
> >  err_translate_failed:
> > @@ -4298,6 +4314,9 @@ static void binder_free_proc(struct binder_proc *proc)
> >
> >         BUG_ON(!list_empty(&proc->todo));
> >         BUG_ON(!list_empty(&proc->delivered_death));
> > +       if (proc->outstanding_txns)
> > +               pr_warn("%s: Unexpected outstanding_txns %d\n",
> > +                       __func__, proc->outstanding_txns);
> >         device = container_of(proc->context, struct binder_device, context);
> >         if (refcount_dec_and_test(&device->ref)) {
> >                 kfree(proc->context->name);
> > @@ -4359,6 +4378,7 @@ static int binder_thread_release(struct binder_proc *proc,
> >                              (t->to_thread == thread) ? "in" : "out");
> >
> >                 if (t->to_thread == thread) {
> > +                       thread->proc->outstanding_txns--;
> >                         t->to_proc = NULL;
> >                         t->to_thread = NULL;
> >                         if (t->buffer) {
> > @@ -4609,6 +4629,45 @@ static int binder_ioctl_get_node_debug_info(struct binder_proc *proc,
> >         return 0;
> >  }
> >
> > +static int binder_ioctl_freeze(struct binder_freeze_info *info,
> > +                              struct binder_proc *target_proc)
> > +{
> > +       int ret = 0;
> > +
> > +       if (!info->enable) {
> > +               binder_inner_proc_lock(target_proc);
> > +               target_proc->is_frozen = false;
> > +               binder_inner_proc_unlock(target_proc);
> > +               return 0;
> > +       }
> > +
> > +       /*
> > +        * Freezing the target. Prevent new transactions by
> > +        * setting frozen state. If timeout specified, wait
> > +        * for transactions to drain.
> > +        */
> > +       binder_inner_proc_lock(target_proc);
> > +       target_proc->is_frozen = true;
> > +       binder_inner_proc_unlock(target_proc);
> > +
> > +       if (info->timeout_ms > 0)
> > +               ret = wait_event_interruptible_timeout(
> > +                       target_proc->freeze_wait,
> > +                       (!target_proc->outstanding_txns),
> > +                       msecs_to_jiffies(info->timeout_ms));
> > +
> > +       if (!ret && target_proc->outstanding_txns)
> > +               ret = -EAGAIN;
> > +
> > +       if (ret < 0) {
> > +               binder_inner_proc_lock(target_proc);
> > +               target_proc->is_frozen = false;
> > +               binder_inner_proc_unlock(target_proc);
> > +       }
> > +
> > +       return ret;
> > +}
> > +
> >  static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
> >  {
> >         int ret;
> > @@ -4727,6 +4786,66 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
> >                 }
> >                 break;
> >         }
> > +       case BINDER_FREEZE: {
> > +               struct binder_freeze_info info;
> > +               struct binder_proc **target_procs = NULL, *target_proc;
> > +               int target_procs_count = 0, i = 0;
> > +
> > +               ret = 0;
> > +
> > +               if (copy_from_user(&info, ubuf, sizeof(info))) {
> > +                       ret = -EFAULT;
> > +                       goto err;
> > +               }
> > +
> > +               mutex_lock(&binder_procs_lock);
> > +               hlist_for_each_entry(target_proc, &binder_procs, proc_node) {
> > +                       if (target_proc->pid == info.pid)
> > +                               target_procs_count++;
> > +               }
> > +
> > +               if (target_procs_count == 0) {
> > +                       mutex_unlock(&binder_procs_lock);
> > +                       ret = -EINVAL;
> > +                       goto err;
> > +               }
> > +
> > +               target_procs = kcalloc(target_procs_count,
> > +                                      sizeof(struct binder_proc *),
> > +                                      GFP_KERNEL);
> > +
> > +               if (!target_procs) {
> > +                       mutex_unlock(&binder_procs_lock);
> > +                       ret = -ENOMEM;
> > +                       goto err;
> > +               }
> > +
> > +               hlist_for_each_entry(target_proc, &binder_procs, proc_node) {
> > +                       if (target_proc->pid != info.pid)
> > +                               continue;
> > +
> > +                       binder_inner_proc_lock(target_proc);
> > +                       target_proc->tmp_ref++;
> > +                       binder_inner_proc_unlock(target_proc);
> > +
> > +                       target_procs[i++] = target_proc;
> > +               }
> > +               mutex_unlock(&binder_procs_lock);
> > +
> > +               for (i = 0; i < target_procs_count; i++) {
> > +                       if (ret >= 0)
> > +                               ret = binder_ioctl_freeze(&info,
> > +                                                         target_procs[i]);
> > +
> > +                       binder_proc_dec_tmpref(target_procs[i]);
> > +               }
> > +
> > +               kfree(target_procs);
> > +
> > +               if (ret < 0)
> > +                       goto err;
> > +               break;
> > +       }
> >         default:
> >                 ret = -EINVAL;
> >                 goto err;
> > @@ -4823,6 +4942,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
> >         get_task_struct(current->group_leader);
> >         proc->tsk = current->group_leader;
> >         INIT_LIST_HEAD(&proc->todo);
> > +       init_waitqueue_head(&proc->freeze_wait);
> >         proc->default_priority = task_nice(current);
> >         /* binderfs stashes devices in i_private */
> >         if (is_binderfs_device(nodp)) {
> > @@ -5035,6 +5155,7 @@ static void binder_deferred_release(struct binder_proc *proc)
> >         proc->tmp_ref++;
> >
> >         proc->is_dead = true;
> > +       proc->is_frozen = false;
> >         threads = 0;
> >         active_transactions = 0;
> >         while ((n = rb_first(&proc->threads))) {
> > diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> > index 6cd79011e35d..e6a53e98c6da 100644
> > --- a/drivers/android/binder_internal.h
> > +++ b/drivers/android/binder_internal.h
> > @@ -367,9 +367,18 @@ struct binder_ref {
> >   *                        (protected by binder_deferred_lock)
> >   * @deferred_work:        bitmap of deferred work to perform
> >   *                        (protected by binder_deferred_lock)
> > + * @outstanding_txns:     number of transactions to be transmitted before
> > + *                        processes in freeze_wait are woken up
> > + *                        (protected by @inner_lock)
> >   * @is_dead:              process is dead and awaiting free
> >   *                        when outstanding transactions are cleaned up
> >   *                        (protected by @inner_lock)
> > + * @is_frozen:            process is frozen and unable to service
> > + *                        binder transactions
> > + *                        (protected by @inner_lock)
> > + * @freeze_wait:          waitqueue of processes waiting for all outstanding
> > + *                        transactions to be processed
> > + *                        (protected by @inner_lock)
> >   * @todo:                 list of work for this process
> >   *                        (protected by @inner_lock)
> >   * @stats:                per-process binder statistics
> > @@ -410,7 +419,10 @@ struct binder_proc {
> >         struct task_struct *tsk;
> >         struct hlist_node deferred_work_node;
> >         int deferred_work;
> > +       int outstanding_txns;
> >         bool is_dead;
> > +       bool is_frozen;
> > +       wait_queue_head_t freeze_wait;
> >
> >         struct list_head todo;
> >         struct binder_stats stats;
> > diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
> > index ec84ad106568..7eb5b818b3c1 100644
> > --- a/include/uapi/linux/android/binder.h
> > +++ b/include/uapi/linux/android/binder.h
> > @@ -217,6 +217,12 @@ struct binder_node_info_for_ref {
> >         __u32            reserved3;
> >  };
> >
> > +struct binder_freeze_info {
> > +       __u32            pid;
> > +       __u32            enable;
> > +       __u32            timeout_ms;
> > +};
> > +
> >  #define BINDER_WRITE_READ              _IOWR('b', 1, struct binder_write_read)
> >  #define BINDER_SET_IDLE_TIMEOUT                _IOW('b', 3, __s64)
> >  #define BINDER_SET_MAX_THREADS         _IOW('b', 5, __u32)
> > @@ -227,6 +233,7 @@ struct binder_node_info_for_ref {
> >  #define BINDER_GET_NODE_DEBUG_INFO     _IOWR('b', 11, struct binder_node_debug_info)
> >  #define BINDER_GET_NODE_INFO_FOR_REF   _IOWR('b', 12, struct binder_node_info_for_ref)
> >  #define BINDER_SET_CONTEXT_MGR_EXT     _IOW('b', 13, struct flat_binder_object)
> > +#define BINDER_FREEZE                  _IOW('b', 14, struct binder_freeze_info)
> >
> >  /*
> >   * NOTE: Two special error codes you should check for when calling
> > @@ -408,6 +415,12 @@ enum binder_driver_return_protocol {
> >          * The last transaction (either a bcTRANSACTION or
> >          * a bcATTEMPT_ACQUIRE) failed (e.g. out of memory).  No parameters.
> >          */
> > +
> > +       BR_FROZEN_REPLY = _IO('r', 18),
> > +       /*
> > +        * The target of the last transaction (either a bcTRANSACTION or
> > +        * a bcATTEMPT_ACQUIRE) is frozen.  No parameters.
> > +        */
> >  };
> >
> >  enum binder_driver_command_protocol {
> > --
> > 2.31.0.rc2.261.g7f71774620-goog
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
