Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B757421AAA3
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 00:36:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C7DF2DD8E;
	Thu,  9 Jul 2020 22:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SqWnB7me4db9; Thu,  9 Jul 2020 22:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5B04A2757D;
	Thu,  9 Jul 2020 22:36:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 386531BF310
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 22:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27D5A2DAE6
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 22:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90CGVLkgTp39 for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 22:36:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E6E5C2757D
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 22:36:13 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id rk21so3964307ejb.2
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 15:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ae9hGzjwzHzN/mWz2E1fVZwFjStArxExMTLWriuAgus=;
 b=i1c0tR9i8dvfmGrh/AzRaoenE4n9jPAZ+1KZDWJfkHo71qsfJLCRNHHnNT+oYGJySR
 wtVbiGZepxPdyVq00/Szj6UTFLMxDaYx4rczh50w8ghHidvSjovN9F7o2XQsCM3/KUuL
 xxzm1gbUBYNSOhwFLEAbdY3ooChhA5y2Fu+8qUCZO/9rRqLkzCu5o1a5672gO0tnOpYt
 hzLZ04VP4L/1ZV73+DbaYSXna8Lcuzq11+95xfdMeyqGrz0eWGuhu/fah4q8C7PhtKFY
 MrTjLv042zYZHjyC9Y0mgAnwmKIaz5B4gKuAys/9T43Wrj4d2pQOlJovCLw5PCqD0YZ6
 jD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ae9hGzjwzHzN/mWz2E1fVZwFjStArxExMTLWriuAgus=;
 b=VZgoEuASyq+C+XsnHOXF1MPeHOhdAVQ2egta9U8RZLz9RxHeoJeZdGxLLWhCfTm67i
 xfLjGg0oM3+xadR0geHhkMHhbg/ryU5RBqqdNpxIG9QZnLi24BggXpwWomHOrbBBLARX
 dIf24lraL0C2aYOaM/5xq/m3Yk/GbWxVKNR91misXgVhM4jV6Q0k0UJ0rUZqJnndMUKk
 2AdcoUvBaoiak4a5gwvfef3sRMdyIzfEkpmmtqSTHmafqUzU4o3G54guNHB3OPWOW4tu
 0SVOkNAFIrQ/YTEdbJmrKmpyklSnSuFxhzYhorUfYR6t55slBiCo3KIMnq8rxmr9cyUB
 samQ==
X-Gm-Message-State: AOAM532j52suYbe+5NtKaEskBJASUZQYtd7QlHdeIDNV+CGN2QyupHT7
 am15TcE1fBfll9mZL8nIwmiGr6KFxQAchZ3VkLiLTg==
X-Google-Smtp-Source: ABdhPJz1hhGGKsnzLfmCcAzTyJ77rX9gLROXUL+A/TVtF67XUUZSRBCEBusvR5R8bi1qagS0euyMjf7X9S6MJkAt+oc=
X-Received: by 2002:a17:907:376:: with SMTP id
 rs22mr34401108ejb.47.1594334172042; 
 Thu, 09 Jul 2020 15:36:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200709222743.1047973-1-jannh@google.com>
In-Reply-To: <20200709222743.1047973-1-jannh@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 9 Jul 2020 15:35:59 -0700
Message-ID: <CAHRSSExQPLEEfY78EU28RjQCUCcK77Lfw-j8shJjT9kJVQViSw@mail.gmail.com>
Subject: Re: [PATCH] binder: Prevent context manager from incrementing ref 0
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
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Mattias Nissler <mnissler@google.com>, Joel Fernandes <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 9, 2020 at 3:27 PM Jann Horn <jannh@google.com> wrote:
>
> Binder is designed such that a binder_proc never has references to
> itself. If this rule is violated, memory corruption can occur when a
> process sends a transaction to itself; see e.g.
> <https://syzkaller.appspot.com/bug?extid=09e05aba06723a94d43d>.
>
> There is a remaining edgecase through which such a transaction-to-self
> can still occur from the context of a task with BINDER_SET_CONTEXT_MGR
> access:
>
>  - task A opens /dev/binder twice, creating binder_proc instances P1
>    and P2
>  - P1 becomes context manager
>  - P2 calls ACQUIRE on the magic handle 0, allocating index 0 in its
>    handle table
>  - P1 dies (by closing the /dev/binder fd and waiting a bit)
>  - P2 becomes context manager
>  - P2 calls ACQUIRE on the magic handle 0, allocating index 1 in its
>    handle table
>    [this triggers a warning: "binder: 1974:1974 tried to acquire
>    reference to desc 0, got 1 instead"]
>  - task B opens /dev/binder once, creating binder_proc instance P3
>  - P3 calls P2 (via magic handle 0) with (void*)1 as argument (two-way
>    transaction)
>  - P2 receives the handle and uses it to call P3 (two-way transaction)
>  - P3 calls P2 (via magic handle 0) (two-way transaction)
>  - P2 calls P2 (via handle 1) (two-way transaction)
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
> Signed-off-by: Jann Horn <jannh@google.com>

Nice catch.

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/android/binder.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index f50c5f182bb5..cac65ff3a257 100644
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
> @@ -3635,10 +3641,16 @@ static int binder_thread_write(struct binder_proc *proc,
>                                 struct binder_node *ctx_mgr_node;
>                                 mutex_lock(&context->context_mgr_node_lock);
>                                 ctx_mgr_node = context->binder_context_mgr_node;
> -                               if (ctx_mgr_node)
> +                               if (ctx_mgr_node) {
> +                                       if (ctx_mgr_node->proc == proc) {
> +                                               binder_user_error("%d:%d context manager tried to acquire desc 0\n");
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
> 2.27.0.389.gc38d7665816-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
