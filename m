Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0C5289C80
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 01:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6031787969;
	Fri,  9 Oct 2020 23:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBczHeSfdbcG; Fri,  9 Oct 2020 23:56:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EF858794B;
	Fri,  9 Oct 2020 23:56:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56CE31BF36D
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 23:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 530E28789C
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 23:56:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OmIUeB1D4I5X for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 23:56:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 56D478789B
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 23:56:06 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id qp15so15491105ejb.3
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 16:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IPdxDQlENWSfpPb8m9w3VUBFTBbLxzL+QHT5Q7alVxQ=;
 b=fQdIh4djnuSGMfj9MCXUJcK54rVHbGql/S9bIo7zmGk9Re0VAHTGytb0ofHe8mw6Ax
 xRgaVCL7B7U4Zt6fw9jgw660MQP2zNBp+7O9/qYsD6usesAohUkrI/kueIKcNUKfH9vz
 Ka1y4WgPbRZjyp5O86H9w09HZZXp53fDg6UOzktbTln2uzRsx0T9lDud9lxkiiOtG7Nw
 Qe9F8VwfMB4e/E+eE5/z+Wsy9to7HVVe796FQqczGtKybt4WYf8Wirpi7YmfmWumsy/0
 xeYi7voQwgnBTRbSVBfcmvd4/JIAVha3hk3waHsIl/aDmXZ1om3ycqWnnvQc4Y7ov8ks
 NYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IPdxDQlENWSfpPb8m9w3VUBFTBbLxzL+QHT5Q7alVxQ=;
 b=FqaQMP4ywfKMe9M6fGh0bB1iSpC/fzejFZg6wZtNbNscOYebWb2vkHAu2WB9ZRJO47
 d3wzPiMHy7nP/9y3yLgG0XrlChnDX3Q8eNWn9mcQ7S4c3OWLzZe2NqBuZm2HG1PM7gyn
 qfoIqqn2RqkwrxRx1HeqlQvoG2FcipP/tq+YpJSkm9kCG2N3GqmoBpjqFg8xEQKOakhc
 LmI53zZbzjTvNTEtOmyuqKP+G49nwHBBKhTmX3MiWxeqkhYY2958l/I2w+Gwnf2fWXg9
 OUP668uPHiPI9Il/EmmqACqmc3TMbVLqt86deplgfGeiavWXzgsS9Hnq2cs5o8aoQntK
 a1sw==
X-Gm-Message-State: AOAM5325X1wzxzBRqXWIol1dm1sPbnOvDsvu9gwDjO+MTpooATUUQlG5
 jXEJHbpFGm9uTge1NDglbROu310wpInak54ABk56+Q==
X-Google-Smtp-Source: ABdhPJwqk+RVMoDkKaaEGsG8HZa5eoeMNPMDOI2JXZqb17BCRC3S4AOUoW9xsq+Qq2lMMjnQhm2GKqi+W4Z2+M/alLE=
X-Received: by 2002:a17:906:c007:: with SMTP id
 e7mr16875732ejz.55.1602287764312; 
 Fri, 09 Oct 2020 16:56:04 -0700 (PDT)
MIME-Version: 1.0
References: <20201009232455.4054810-1-tkjos@google.com>
In-Reply-To: <20201009232455.4054810-1-tkjos@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 9 Oct 2020 16:55:52 -0700
Message-ID: <CAHRSSEwtW7xKAA=qAmZpHvkdaVvz=cAPwF+8NUUE51+p4tgNBg@mail.gmail.com>
Subject: Re: [PATCH] binder: fix UAF when releasing todo list
To: Todd Kjos <tkjos@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Christian Brauner <christian@brauner.io>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, 
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, Martijn Coenen <maco@google.com>
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
Cc: "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Android Kernel Team <kernel-team@android.com>, stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 9, 2020 at 4:24 PM Todd Kjos <tkjos@google.com> wrote:
>
> When releasing a thread todo list when tearing down
> a binder_proc, the following race was possible which
> could result in a use-after-free:
>
> 1.  Thread 1: enter binder_release_work from binder_thread_release
> 2.  Thread 2: binder_update_ref_for_handle() -> binder_dec_node_ilocked()
> 3.  Thread 2: dec nodeA --> 0 (will free node)
> 4.  Thread 1: ACQ inner_proc_lock
> 5.  Thread 2: block on inner_proc_lock
> 6.  Thread 1: dequeue work (BINDER_WORK_NODE, part of nodeA)
> 7.  Thread 1: REL inner_proc_lock
> 8.  Thread 2: ACQ inner_proc_lock
> 9.  Thread 2: todo list cleanup, but work was already dequeued
> 10. Thread 2: free node
> 11. Thread 2: REL inner_proc_lock
> 12. Thread 1: deref w->type (UAF)
>
> The problem was that for a BINDER_WORK_NODE, the binder_work element
> must not be accessed after releasing the inner_proc_lock while
> processing the todo list elements since another thread might be
> handling a deref on the node containing the binder_work element
> leading to the node being freed.
>
> Signed-off-by: Todd Kjos <tkjos@google.com>

Cc: <stable@vger.kernel.org> # 4.14, 4.19, 5.4, 5.8

> ---
>  drivers/android/binder.c | 35 ++++++++++-------------------------
>  1 file changed, 10 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index f936530a19b0..e8a1db4a86ed 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -223,7 +223,7 @@ static struct binder_transaction_log_entry *binder_transaction_log_add(
>  struct binder_work {
>         struct list_head entry;
>
> -       enum {
> +       enum binder_work_type {
>                 BINDER_WORK_TRANSACTION = 1,
>                 BINDER_WORK_TRANSACTION_COMPLETE,
>                 BINDER_WORK_RETURN_ERROR,
> @@ -885,27 +885,6 @@ static struct binder_work *binder_dequeue_work_head_ilocked(
>         return w;
>  }
>
> -/**
> - * binder_dequeue_work_head() - Dequeues the item at head of list
> - * @proc:         binder_proc associated with list
> - * @list:         list to dequeue head
> - *
> - * Removes the head of the list if there are items on the list
> - *
> - * Return: pointer dequeued binder_work, NULL if list was empty
> - */
> -static struct binder_work *binder_dequeue_work_head(
> -                                       struct binder_proc *proc,
> -                                       struct list_head *list)
> -{
> -       struct binder_work *w;
> -
> -       binder_inner_proc_lock(proc);
> -       w = binder_dequeue_work_head_ilocked(list);
> -       binder_inner_proc_unlock(proc);
> -       return w;
> -}
> -
>  static void
>  binder_defer_work(struct binder_proc *proc, enum binder_deferred_state defer);
>  static void binder_free_thread(struct binder_thread *thread);
> @@ -4587,13 +4566,17 @@ static void binder_release_work(struct binder_proc *proc,
>                                 struct list_head *list)
>  {
>         struct binder_work *w;
> +       enum binder_work_type wtype;
>
>         while (1) {
> -               w = binder_dequeue_work_head(proc, list);
> +               binder_inner_proc_lock(proc);
> +               w = binder_dequeue_work_head_ilocked(list);
> +               wtype = w ? w->type : 0;
> +               binder_inner_proc_unlock(proc);
>                 if (!w)
>                         return;
>
> -               switch (w->type) {
> +               switch (wtype) {
>                 case BINDER_WORK_TRANSACTION: {
>                         struct binder_transaction *t;
>
> @@ -4627,9 +4610,11 @@ static void binder_release_work(struct binder_proc *proc,
>                         kfree(death);
>                         binder_stats_deleted(BINDER_STAT_DEATH);
>                 } break;
> +               case BINDER_WORK_NODE:
> +                       break;
>                 default:
>                         pr_err("unexpected work type, %d, not freed\n",
> -                              w->type);
> +                              wtype);
>                         break;
>                 }
>         }
> --
> 2.28.0.1011.ga647a8990f-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
