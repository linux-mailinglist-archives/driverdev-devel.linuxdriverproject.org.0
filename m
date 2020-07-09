Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99BC21AAFC
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 00:54:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4B918989B;
	Thu,  9 Jul 2020 22:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfhSIT-0F-QC; Thu,  9 Jul 2020 22:54:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9CC48986A;
	Thu,  9 Jul 2020 22:54:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7564C1BF310
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 22:54:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7206686DB2
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 22:54:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4RN9xwJl4mF8 for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 22:54:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 103FF86BA1
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 22:54:52 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id by13so3086051edb.11
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 15:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h3E9CmP5pzqqITk3EJ5pCRFF7120Umpn5DkCt3PZmyI=;
 b=oiAxobyVHtmcT1uDdRMJ5KCPYgiJcvwg0bT1wajNVARoK+DbSmJJH5GxohbU2nIXcM
 Md7jqXoAgG2YNCHynS+jYIxySL/eeY/W5eQ2bBGiSkR9ZLPebSPskM/5ojc9HlENFh7m
 ZY28rYsR19yHA+3606f8FYuhvf0kWd9VKB2VQI5iRidasRanhGt9foQatc3RxeUF2q5n
 1aVv2B23MxyAfxPBr/YN1YDItdj/K45hkyB9lWfpYiZfBSjubtYSnVMNfCi6gSk9ju0P
 r6QBZRTmNEEhhPCz5z7twQtfxrWiWI3qT7jG4ZixRQXIgjBAxm4HLaiX+LX9dutby4d0
 jFcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h3E9CmP5pzqqITk3EJ5pCRFF7120Umpn5DkCt3PZmyI=;
 b=mknTgs1gW/oP2n+EbOwhBSDaElvMT9mdamHLGRry0DkbzF5LVxBayzW6IRj0V89HGP
 FOtDF6OPcllk+9Gy1Ecp87btyRojDj0EC7mEwn8RNsnJQrLwMW0aVQ7BxNfbUDchNjRv
 xfCt33MeTB9MRJxuFRDQT0KSGZcRZ4pyyrgQm9AoEm5QF+u0lliS4p+hMJbYOY2xf2Bi
 WtXqwFfEc8tlfgYOlM3e80PgCPrwodvRJk+X0yphE4wWDNgS+rEq5WoI5vcbkelaPEyA
 AKVdOz96RQaOctseLMhMuyc3gn5SWtW79Y5B0BeBmjjF/r7b2Oxuqccf8DWzR4XWEG4V
 JeUw==
X-Gm-Message-State: AOAM532fSOgdDYLiLaxHUYyDQp4SZg0ovLjAQc9vf22R5DzVE2alCfua
 eRPuaaG2u4QKvES0LS0Gq1dna9PEvAaYTw1pAwTRnQ==
X-Google-Smtp-Source: ABdhPJz9uaSIXcnqe4UJG/4qyWvxlwUPgsKdudNjp8UAkBRNtmqP10AQmMtpHxhnQTomWWTQ1SKnxvYiDJCH0O5UzlM=
X-Received: by 2002:a50:c355:: with SMTP id q21mr71840462edb.121.1594335290245; 
 Thu, 09 Jul 2020 15:54:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200709223948.1051613-1-jannh@google.com>
In-Reply-To: <20200709223948.1051613-1-jannh@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 9 Jul 2020 15:54:38 -0700
Message-ID: <CAHRSSEwAZEgLKCYa-+uOB7xuNKs1z9gkr5PWCHLcKc1mZpcgoQ@mail.gmail.com>
Subject: Re: [PATCH resend] binder: Prevent context manager from incrementing
 ref 0
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
 Mattias Nissler <mnissler@google.com>, Joel Fernandes <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 9, 2020 at 3:40 PM Jann Horn <jannh@google.com> wrote:
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
> sending again because I forgot to CC LKML the first time... sorry about
> the spam.
>
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
