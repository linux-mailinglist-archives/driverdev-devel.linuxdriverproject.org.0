Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2F3230BE3
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 15:58:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF31C87E72;
	Tue, 28 Jul 2020 13:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qi7q96oP-3rk; Tue, 28 Jul 2020 13:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44CC3885BA;
	Tue, 28 Jul 2020 13:58:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DC7C1BF25F
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 13:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49C5987FCC
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 13:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cios7gXRawED for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 13:58:32 +0000 (UTC)
X-Greylist: delayed 00:07:48 by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B321987FC2
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 13:58:31 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id q7so21249108ljm.1
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 06:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0kirB/gqqBAJLG2HuIH/MRYs/QM8IzhLjrn4QtyOzkA=;
 b=rOaMkTxvxz7MU41mGM5X9WGJVCNgPj2eqdTPrl1MZOfNig0RktAmv+bs4zVG/65Iq+
 1YmQX3Xbewo8DBvAY7j6aVthCb8EVXvzxA7o+FX/q2e9E7icNGXJyXinkD0zE9ohWTTO
 R7LBv2k1TGhWEYbSsMF0mHBdWXq8Tx8kGgeVlx1tmngzf31+3pT34V1YsfoOGqXOKLqj
 4RWc/TCEax0zTO/x4KpKzAjOEqSLOyfvqq89aWtebyfV56oQlP6/7sCYserCpqPF7W0h
 m4UZdFwqNr/fctLo/5YbJ3LipQa64SsN4BF1vq8rpqDL0nydlb5O4TDUUAtNftLU5bNv
 wiRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0kirB/gqqBAJLG2HuIH/MRYs/QM8IzhLjrn4QtyOzkA=;
 b=oDj8bAXKhU9WDciVw9rUOyYF8HhXVxl27bKHqjjm/Ym9XPI0HA4nQORPlZEHubOY2g
 cRiM0gYnFrmveSIBJ8YNGZQUJm+j/jcDsuTR298k2ANYSTLlj8C21IIeRIqPqn6gcSxd
 ZoKW6TADaIqFf7J1oY8kgFEANz0hqQq6S9RjNQnBKs6GqM/3umpDDLcEsKt/TfXwdlu7
 lKuW/7QNwty8RjlA9oRoQWoGAds+cOTNHK/P/hDCYF6wRisnKspEIHlARbp7KT6rqZVR
 vRA1Z0p/tqfR+ySNkiwLq6uFczkPtNzeCaSmoq3KMalXSXZwcqc/BzwueIrMefwe76VF
 pYXQ==
X-Gm-Message-State: AOAM530SFL+Xq/oCyWiHJFUEPjtqKX7ry+LafwAwRLyvlP1Ob+/6n3Lv
 LLysjZIXU1xMn8gG9wUj5epV7v95tN3d9D4E5skINgiI
X-Google-Smtp-Source: ABdhPJwrFjXlEfBJpCKWZNs/cvbKzMTZ8lKV+f0jPRgfBJozfChhw0t2qpuL3xTuhCNPxTza18YEqTecz6lLEY2gnVk=
X-Received: by 2002:a2e:6c14:: with SMTP id h20mr11380570ljc.176.1595944241508; 
 Tue, 28 Jul 2020 06:50:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200727120424.1627555-1-jannh@google.com>
In-Reply-To: <20200727120424.1627555-1-jannh@google.com>
From: Martijn Coenen <maco@android.com>
Date: Tue, 28 Jul 2020 15:50:30 +0200
Message-ID: <CAB0TPYHx-SkaWR6i0LwLYRJv13_0V3Ak63H0=parZNvS5XdqgA@mail.gmail.com>
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

Thanks Jann, the change LGTM, one question on the repro scenario that
wasn't immediately obvious to me:

On Mon, Jul 27, 2020 at 2:04 PM Jann Horn <jannh@google.com> wrote:
>  - task B opens /dev/binder once, creating binder_proc instance P3
>  - P3 calls P2 (via magic handle 0) with (void*)1 as argument (two-way
>    transaction)
>  - P2 receives the handle and uses it to call P3 (two-way transaction)
>  - P3 calls P2 (via magic handle 0) (two-way transaction)
>  - P2 calls P2 (via handle 1) (two-way transaction)

Why do you need P3 involved at all? Could P2 just straight away make a
call on handle 1?

>
> And then, if P2 does *NOT* accept the incoming transaction work, but
> instead closes the binder fd, we get a crash.
>
> Solve it by preventing the context manager from using ACQUIRE on ref 0.
> There shouldn't be any legitimate reason for the context manager to do
> that.
>
> Additionally, print a warning if someone manages to find another way to
> trigger a transaction-to-self bug in the future.
>
> Cc: stable@vger.kernel.org
> Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> Acked-by: Todd Kjos <tkjos@google.com>
Reviewed-by: Martijn Coenen <maco@android.com>

> Signed-off-by: Jann Horn <jannh@google.com>
> ---
> fixed that broken binder_user_error() from the first version...
> I sent v1 while I had a dirty tree containing the missing fix. whoops.
>
>  drivers/android/binder.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index f50c5f182bb5..5b310eea9e52 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2982,6 +2982,12 @@ static void binder_transaction(struct binder_proc *proc,
>                         goto err_dead_binder;
>                 }
>                 e->to_node = target_node->debug_id;
> +               if (WARN_ON(proc == target_proc)) {
> +                       return_error = BR_FAILED_REPLY;
> +                       return_error_param = -EINVAL;
> +                       return_error_line = __LINE__;
> +                       goto err_invalid_target_handle;
> +               }
>                 if (security_binder_transaction(proc->tsk,
>                                                 target_proc->tsk) < 0) {
>                         return_error = BR_FAILED_REPLY;
> @@ -3635,10 +3641,17 @@ static int binder_thread_write(struct binder_proc *proc,
>                                 struct binder_node *ctx_mgr_node;
>                                 mutex_lock(&context->context_mgr_node_lock);
>                                 ctx_mgr_node = context->binder_context_mgr_node;
> -                               if (ctx_mgr_node)
> +                               if (ctx_mgr_node) {
> +                                       if (ctx_mgr_node->proc == proc) {
> +                                               binder_user_error("%d:%d context manager tried to acquire desc 0\n",
> +                                                                 proc->pid, thread->pid);
> +                                               mutex_unlock(&context->context_mgr_node_lock);
> +                                               return -EINVAL;
> +                                       }
>                                         ret = binder_inc_ref_for_node(
>                                                         proc, ctx_mgr_node,
>                                                         strong, NULL, &rdata);
> +                               }
>                                 mutex_unlock(&context->context_mgr_node_lock);
>                         }
>                         if (ret)
>
> base-commit: 2a89b99f580371b86ae9bafd6cbeccd3bfab524a
> --
> 2.28.0.rc0.142.g3c755180ce-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
