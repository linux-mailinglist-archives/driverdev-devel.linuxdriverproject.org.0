Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643A9409EFA
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 23:15:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B153402BD;
	Mon, 13 Sep 2021 21:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-zl67G1zUMB; Mon, 13 Sep 2021 21:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7164A40195;
	Mon, 13 Sep 2021 21:15:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4592C1BF318
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 21:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33BDD40195
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 21:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c3pU1jhyxOtE for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 21:15:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABBAD40134
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 21:15:30 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id j12so19684858ljg.10
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 14:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P16xsLWbwQxe220Z4rwJsq23660+15ni17aSZ3/vc3I=;
 b=kyTzBOI0lUWx8RjQq9y9GMf2JLuY2hRCg+W5fd2ShqNbBwuz/PYtR8N94fxSnpqp4n
 xtuW4cAd0CWOJRrLzwtl+l+nSPxI16dUkkB4jWRe7eSg3Ngi/VSkzP7CHbxh1mPzMTQ+
 AW0uzKsRjAd5qHQCEbjnnC+W5ERketPeDuNJ/HF2vdJsGIzccDUgWv9lTiCs/EhghWep
 j0osFUdFHvnVv+0IfXdFh1oS0ZBJylVuyKdNBS7bs2XpTlKosQQ/Uap8lDFGLZt+L+1r
 UgvG/0+kyxpiyhGdj1ffnEjwMIDsIhXdknY25DXC7OiUmV9vT5ZKz2TSgl0jWSRXIDip
 EGaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P16xsLWbwQxe220Z4rwJsq23660+15ni17aSZ3/vc3I=;
 b=dubnbaWjuJGvREbCgpSrm5+nQ+iOJu6y1CYYPYp+MqToHxSXVJrybr2RPzYJMe7c/6
 YmFJ58zmo1n9UBrRzhsF13uv8gs+EEba4AwvXtN4wT/RRaGuHXu++3yDM9PiQDvvCCQp
 31toV1Fto3Znwhu+I5w3Z2O5FMij5YbuU8FqasO5GVsOtuA8LBmb/9xz9O+zo8JwX6I7
 wK1CEl2TchAg2tviW2NPAkrKwMeAY4hB5YDSnGcEdFomB+MpNLNp5RNJqDN1dfM+eeRL
 AsKAvy5nj10I/J5ZPtC/iRiKDC4d3NjeA36IwhOYoLuE5vRdD6Gk0MW8RUp6oDDDKyjH
 XDAw==
X-Gm-Message-State: AOAM533k1QzO8KqY+O1dvcvxS8qOoXlu97uEAR00xl/rC+9iF4CMYo7W
 hL5/iHSdUq+wEX5Sqxn08BWpshH2vrS7afnCKLJdOQ==
X-Google-Smtp-Source: ABdhPJxBeim+Aq+3aYz0czeNi0g88QjAclIlwCC5o8oHubQk4ytYhAxHHEgYLQcvVDhJZ5Cetgxol/W3k3xO8b6EqVU=
X-Received: by 2002:a2e:b894:: with SMTP id r20mr12841263ljp.238.1631567728231; 
 Mon, 13 Sep 2021 14:15:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210910164210.2282716-1-dualli@chromium.org>
 <20210910164210.2282716-2-dualli@chromium.org>
In-Reply-To: <20210910164210.2282716-2-dualli@chromium.org>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 13 Sep 2021 14:15:16 -0700
Message-ID: <CAHRSSEwB8vhNTyY+4z+29B97=FfEo=TSS0C-j-ZUFnOrZTcb0Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] binder: fix freeze race
To: Li Li <dualli@chromium.org>
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, kernel-team@android.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 joel@joelfernandes.org, arve@android.com, maco@google.com, hridya@google.com,
 surenb@google.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 10, 2021 at 9:42 AM Li Li <dualli@chromium.org> wrote:
>
> From: Li Li <dualli@google.com>
>
> Currently cgroup freezer is used to freeze the application threads, and
> BINDER_FREEZE is used to freeze the corresponding binder interface.
> There's already a mechanism in ioctl(BINDER_FREEZE) to wait for any
> existing transactions to drain out before actually freezing the binder
> interface.
>
> But freezing an app requires 2 steps, freezing the binder interface with
> ioctl(BINDER_FREEZE) and then freezing the application main threads with
> cgroupfs. This is not an atomic operation. The following race issue
> might happen.
>
> 1) Binder interface is frozen by ioctl(BINDER_FREEZE);
> 2) Main thread A initiates a new sync binder transaction to process B;
> 3) Main thread A is frozen by "echo 1 > cgroup.freeze";
> 4) The response from process B reaches the frozen thread, which will
> unexpectedly fail.
>
> This patch provides a mechanism to check if there's any new pending
> transaction happening between ioctl(BINDER_FREEZE) and freezing the
> main thread. If there's any, the main thread freezing operation can
> be rolled back to finish the pending transaction.
>
> Furthermore, the response might reach the binder driver before the
> rollback actually happens. That will still cause failed transaction.
>
> As the other process doesn't wait for another response of the response,
> the response transaction failure can be fixed by treating the response
> transaction like an oneway/async one, allowing it to reach the frozen
> thread. And it will be consumed when the thread gets unfrozen later.
>
> NOTE: This patch reuses the existing definition of struct
> binder_frozen_status_info but expands the bit assignments of __u32
> member sync_recv.
>
> To ensure backward compatibility, bit 0 of sync_recv still indicates
> there's an outstanding sync binder transaction. This patch adds new
> information to bit 1 of sync_recv, indicating the binder transaction
> happens exactly when there's a race.
>
> If an existing userspace app runs on a new kernel, a sync binder call
> will set bit 0 of sync_recv so ioctl(BINDER_GET_FROZEN_INFO) still
> return the expected value (true). The app just doesn't check bit 1
> intentionally so it doesn't have the ability to tell if there's a race.
> This behavior is aligned with what happens on an old kernel which
> doesn't set bit 1 at all.
>
> A new userspace app can 1) check bit 0 to know if there's a sync binder
> transaction happened when being frozen - same as before; and 2) check
> bit 1 to know if that sync binder transaction happened exactly when
> there's a race - a new information for rollback decision.
>
> Fixes: 432ff1e91694 ("binder: BINDER_FREEZE ioctl")
> Test: stress test with apps being frozen and initiating binder calls at
> the same time, confirmed the pending transactions succeeded.
> Signed-off-by: Li Li <dualli@google.com>

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/android/binder.c            | 35 ++++++++++++++++++++++++-----
>  drivers/android/binder_internal.h   |  2 ++
>  include/uapi/linux/android/binder.h |  7 ++++++
>  3 files changed, 38 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index d9030cb6b1e4..1a68c2f590cf 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -3038,9 +3038,8 @@ static void binder_transaction(struct binder_proc *proc,
>         if (reply) {
>                 binder_enqueue_thread_work(thread, tcomplete);
>                 binder_inner_proc_lock(target_proc);
> -               if (target_thread->is_dead || target_proc->is_frozen) {
> -                       return_error = target_thread->is_dead ?
> -                               BR_DEAD_REPLY : BR_FROZEN_REPLY;
> +               if (target_thread->is_dead) {
> +                       return_error = BR_DEAD_REPLY;
>                         binder_inner_proc_unlock(target_proc);
>                         goto err_dead_proc_or_thread;
>                 }
> @@ -4648,6 +4647,22 @@ static int binder_ioctl_get_node_debug_info(struct binder_proc *proc,
>         return 0;
>  }
>
> +static bool binder_txns_pending_ilocked(struct binder_proc *proc)
> +{
> +       struct rb_node *n;
> +       struct binder_thread *thread;
> +
> +       if (proc->outstanding_txns > 0)
> +               return true;
> +
> +       for (n = rb_first(&proc->threads); n; n = rb_next(n)) {
> +               thread = rb_entry(n, struct binder_thread, rb_node);
> +               if (thread->transaction_stack)
> +                       return true;
> +       }
> +       return false;
> +}
> +
>  static int binder_ioctl_freeze(struct binder_freeze_info *info,
>                                struct binder_proc *target_proc)
>  {
> @@ -4679,8 +4694,13 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
>                         (!target_proc->outstanding_txns),
>                         msecs_to_jiffies(info->timeout_ms));
>
> -       if (!ret && target_proc->outstanding_txns)
> -               ret = -EAGAIN;
> +       /* Check pending transactions that wait for reply */
> +       if (ret >= 0) {
> +               binder_inner_proc_lock(target_proc);
> +               if (binder_txns_pending_ilocked(target_proc))
> +                       ret = -EAGAIN;
> +               binder_inner_proc_unlock(target_proc);
> +       }
>
>         if (ret < 0) {
>                 binder_inner_proc_lock(target_proc);
> @@ -4696,6 +4716,7 @@ static int binder_ioctl_get_freezer_info(
>  {
>         struct binder_proc *target_proc;
>         bool found = false;
> +       __u32 txns_pending;
>
>         info->sync_recv = 0;
>         info->async_recv = 0;
> @@ -4705,7 +4726,9 @@ static int binder_ioctl_get_freezer_info(
>                 if (target_proc->pid == info->pid) {
>                         found = true;
>                         binder_inner_proc_lock(target_proc);
> -                       info->sync_recv |= target_proc->sync_recv;
> +                       txns_pending = binder_txns_pending_ilocked(target_proc);
> +                       info->sync_recv |= target_proc->sync_recv |
> +                                       (txns_pending << 1);
>                         info->async_recv |= target_proc->async_recv;
>                         binder_inner_proc_unlock(target_proc);
>                 }
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index 810c0b84d3f8..402c4d4362a8 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -378,6 +378,8 @@ struct binder_ref {
>   *                        binder transactions
>   *                        (protected by @inner_lock)
>   * @sync_recv:            process received sync transactions since last frozen
> + *                        bit 0: received sync transaction after being frozen
> + *                        bit 1: new pending sync transaction during freezing
>   *                        (protected by @inner_lock)
>   * @async_recv:           process received async transactions since last frozen
>   *                        (protected by @inner_lock)
> diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
> index 20e435fe657a..3246f2c74696 100644
> --- a/include/uapi/linux/android/binder.h
> +++ b/include/uapi/linux/android/binder.h
> @@ -225,7 +225,14 @@ struct binder_freeze_info {
>
>  struct binder_frozen_status_info {
>         __u32            pid;
> +
> +       /* process received sync transactions since last frozen
> +        * bit 0: received sync transaction after being frozen
> +        * bit 1: new pending sync transaction during freezing
> +        */
>         __u32            sync_recv;
> +
> +       /* process received async transactions since last frozen */
>         __u32            async_recv;
>  };
>
> --
> 2.33.0.309.g3052b89438-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
