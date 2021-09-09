Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC833406044
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 01:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2763140653;
	Thu,  9 Sep 2021 23:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZDGqM78QZU7; Thu,  9 Sep 2021 23:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4335C40311;
	Thu,  9 Sep 2021 23:54:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6B4D1BF27E
 for <devel@linuxdriverproject.org>; Thu,  9 Sep 2021 23:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9696060605
 for <devel@linuxdriverproject.org>; Thu,  9 Sep 2021 23:54:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f_rktzsNOgYy for <devel@linuxdriverproject.org>;
 Thu,  9 Sep 2021 23:54:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A80B6059F
 for <devel@driverdev.osuosl.org>; Thu,  9 Sep 2021 23:54:14 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id r3so260768ljc.4
 for <devel@driverdev.osuosl.org>; Thu, 09 Sep 2021 16:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lEXBNIjoCx4wipKmwfyEP+b49yukKCkKDlBK6xvr4hg=;
 b=hMuDFTsBZJrHhGQpWIm4hqqN26UHeqqimLOR3rPj9GbyKZ57gsX21/4nhbRxf0Yq46
 HVspR622wdjNz58z0Zxaajsd0tOkAPMCxr/KWSRgYy/ZlUOjcv2AaNFUeLXtXiboRN9S
 oDjMMi+vpKpb9wDuj0s6BXAhTLh2PX/jdlHf+VQ23sBoaEV+hfb5t1bn3c5JD9y6hz0b
 Z0aYsvtifXm3v4UIEE00A1JqQ27AV6K9RaSF06tDYYt3YiAexUZWcwQmlJhLl8fmopbA
 dzbDUFIF/4GCda/9Wp4xJt4b9DTQsDSpnAnwIr1iEXR+W1KZsa+FkKa2nlwlMoTgf/AZ
 RcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lEXBNIjoCx4wipKmwfyEP+b49yukKCkKDlBK6xvr4hg=;
 b=3Gq/saA9jsEDSt569Ykn1RWhEHNtazDrcvF2/Zqp5LXYQ20Jh5+bRHhZT6pLhldDaR
 0aWA92UK/8Fyw+ktLyeaIeNbg0c2Kw7D5EVZqMaZwW3VNDjipHo/SaBx/r0NVnpnWpUw
 UK58wffqpJRnXWYJ7FH9qU8F91+XY9RCqx6iqUnQOD9Ic94wa9OCj4/tSgUW84eCw/7L
 kzyWp8NTTTRIEqOhHmrHHqmsPL2Siha7FBeLJX/DrqE5j6/XU+pPSwvW9T+nEd/Z7pmq
 ky4ww0PE41tca0GfX+UEpZCnEtXkAt4pDkzfQHck18MWK7fMwUzkLZr7Q5v5A4J0Fl3W
 XAJQ==
X-Gm-Message-State: AOAM531xd3dIEG4fGpX4VkISl4k/L63THraYbEcg2wWtRGxjulvDs8+F
 Jbn2KEQq0Vmzr2gZ6ruttOws7AJ4YwtoRxa+yYOtBA==
X-Google-Smtp-Source: ABdhPJyyRfuILjQGgezjN0NrCikr6etrhvJiJJ3qvt5RCgl38xBgEXiafZyZGOC8hqZ/qoHZ1jNR0cqFszbHQ0KtJj4=
X-Received: by 2002:a2e:b894:: with SMTP id r20mr1967952ljp.238.1631231652319; 
 Thu, 09 Sep 2021 16:54:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210909232141.2489691-1-dualli@chromium.org>
 <20210909232141.2489691-2-dualli@chromium.org>
In-Reply-To: <20210909232141.2489691-2-dualli@chromium.org>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 9 Sep 2021 16:54:00 -0700
Message-ID: <CAHRSSExGF3teN83P4jJJ1_ibzEvxTScm2-KMo5+kLZ7xCaMhSw@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] binder: fix freeze race
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

On Thu, Sep 9, 2021 at 4:21 PM Li Li <dualli@chromium.org> wrote:
>
> From: Li Li <dualli@google.com>
>
> Currently cgroup freezer is used to freeze the application threads, and
> BINDER_FREEZE is used to freeze binder interface. There's already a
> mechanism for BINDER_FREEZE to wait for any existing transactions to
> drain out before actually freezing the binder interface.
>
> But freezing an app requires 2 steps, freezing the binder interface with
> BINDER_FREEZEwhich and then freezing the application main threads with
> cgroupfs. This is not an atomic operation. The following race issue
> might happen.
>
> 1) Binder interface is frozen by ioctl(BINDER_FREEZE);
> 2) Main thread initiates a new sync binder transaction;
> 3) Main thread is frozen by "echo 1 > cgroup.freeze";
> 4) The response reaches the frozen thread, which will unexpectedly fail.
>
> This patch provides a mechanism for user space freezer manager to check
> if there's any new pending transaction happening between BINDER_FREEZE
> and freezing main thread. If there's any, the main thread freezing
> operation can be rolled back.
>
> Furthermore, the response might reach the binder driver before the
> rollback actually happens. That will also cause failed transaction.
>
> As the other process doesn't wait for another response of the response,
> the failed response transaction can be fixed by treating the response
> transaction like an oneway/async one, allowing it to reach the frozen
> thread. And it will be consumed when the thread gets unfrozen later.
>
> Bug: 198493121

Please remove "Bug: " tag. Replace it with a "Fixes:" tag that cites
the patch that introduced the race.

> Signed-off-by: Li Li <dualli@google.com>
> ---
>  drivers/android/binder.c          | 32 +++++++++++++++++++++++++++----
>  drivers/android/binder_internal.h |  2 ++
>  2 files changed, 30 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index d9030cb6b1e4..f9713a97578c 100644
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
> +static int binder_txns_pending(struct binder_proc *proc)
> +{
> +       struct rb_node *n;
> +       struct binder_thread *thread;
> +
> +       if (proc->outstanding_txns > 0)
> +               return 1;
> +
> +       for (n = rb_first(&proc->threads); n; n = rb_next(n)) {
> +               thread = rb_entry(n, struct binder_thread, rb_node);
> +               if (thread->transaction_stack)
> +                       return 1;
> +       }
> +       return 0;
> +}
> +
>  static int binder_ioctl_freeze(struct binder_freeze_info *info,
>                                struct binder_proc *target_proc)
>  {
> @@ -4682,6 +4697,14 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
>         if (!ret && target_proc->outstanding_txns)
>                 ret = -EAGAIN;
>
> +       /* Also check pending transactions that wait for reply */
> +       if (ret >= 0) {
> +               binder_inner_proc_lock(target_proc);
> +               if (binder_txns_pending(target_proc))

The convention in the binder driver is to append "_ilocked" to the
function name if the function expects the inner proc lock to be held
(so "binder_txns_pending_ilocked(target_proc) in this case)".

> +                       ret = -EAGAIN;
> +               binder_inner_proc_unlock(target_proc);
> +       }
> +
>         if (ret < 0) {
>                 binder_inner_proc_lock(target_proc);
>                 target_proc->is_frozen = false;
> @@ -4705,7 +4728,8 @@ static int binder_ioctl_get_freezer_info(
>                 if (target_proc->pid == info->pid) {
>                         found = true;
>                         binder_inner_proc_lock(target_proc);
> -                       info->sync_recv |= target_proc->sync_recv;
> +                       info->sync_recv |= target_proc->sync_recv |
> +                                       (binder_txns_pending(target_proc) << 1);
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

Should these bit assignments be documented in binder.h since these bit
assignments end up being relevant in struct binder_frozen_status_info?


>   *                        (protected by @inner_lock)
>   * @async_recv:           process received async transactions since last frozen
>   *                        (protected by @inner_lock)
> --
> 2.33.0.309.g3052b89438-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
