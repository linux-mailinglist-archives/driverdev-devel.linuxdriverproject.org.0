Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7E02053FC
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 15:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 649AF2DEBA;
	Tue, 23 Jun 2020 13:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9D8Aqfw42jVQ; Tue, 23 Jun 2020 13:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9256A2DD08;
	Tue, 23 Jun 2020 13:54:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C54881BF2C9
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 13:54:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD4322DD08
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 13:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MUEhljeLJ5JV for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 13:54:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B6D326282
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 13:54:41 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id l6so15178905qkc.6
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 06:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O+8tjxg/XAgFHHjPbGONl8+4MlNkySWi6n8PM8+S96E=;
 b=ma7PaJpr9bD/R9bhlQN3uOTonu3w49h3OtLdL8xV5cfvFquFqsmzxpG6Ej5FJlh7GC
 NawMQbsGI8RDDPWyUozgGAcVxMaOoDNq35DZaImK62kEdoD2pTuupBm/7jJVWx8lpp05
 Gqt5EoJi8klLM+eeS3vo/hlektTBikugHYSdeefT3gy7bo7UW6ozVk0QBoM7L8/DCnv5
 IrMsa19HT6g9iLFNlJuY98a5dVzJmI+OAJGcEF1lK4mpM0FHOkrquTuBrt3PNLkZq6+z
 WbIGHXjmk4+zCuZpMPA6EYHwsOduQGz/sSroRTuFRwcCfW8bmRIT97CEgfM2vQIfUGvx
 5G6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O+8tjxg/XAgFHHjPbGONl8+4MlNkySWi6n8PM8+S96E=;
 b=Egy4gE4lTy/A9E5Q4cTlpF44DfQhL7lu48zVzuxr7Y1v8Pmdl8I6FL+5K5rMsE1E0m
 tbkr01tlGNXBjAoOylUqYnUCmRGChiI/SOffMPjYmke3Le2aVohkWMzzpDbUZnTzp03o
 Hs672gA2DSlXwNt9yBNNk+L8zGA+Ge6UPHeheVSD8bH1Jowt8CIy4421IF4sIuUJaSMu
 5P/tjjaRWLwlx2gcr307C0ymkO/iQb06XWnY7IxPTIn1OKn32s8od8vZepZOEFShTqAB
 gEqR98uh+wGgepCdgBVAn2NawM51sqIDUROJbso37f+r1g7kZR83hmhIgQRHAj0lQ/b4
 ADtQ==
X-Gm-Message-State: AOAM531qi9z1jzlNXPw7ELJf0fgA8H0vdTKlgK7wm5bIf6RIi9L0Mzic
 LNbwLNyF3i50pv71Fk5EDzqrpDXxk3fpYwJATdIncg==
X-Google-Smtp-Source: ABdhPJz+Q5So6wi+cyHnF+6gysPTIqV+FME7GlRwzYgNSrvjjNNYJcsZz4ljnJaBwhK7szb6BmDGXbDioduaNm+sXLI=
X-Received: by 2002:a05:620a:958:: with SMTP id
 w24mr6760648qkw.20.1592920479763; 
 Tue, 23 Jun 2020 06:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200622200715.114382-1-tkjos@google.com>
In-Reply-To: <20200622200715.114382-1-tkjos@google.com>
From: Joel Fernandes <joelaf@google.com>
Date: Tue, 23 Jun 2020 09:54:27 -0400
Message-ID: <CAJWu+op-5EjRiaL7b-TcXCruqheET9aB_ZJK8CGsfmuxSNQWqA@mail.gmail.com>
Subject: Re: [PATCH] binder: fix null deref of proc->context
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Arve Hjonnevag <arve@android.com>,
 Martijn Coenen <maco@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 "Cc: Android Kernel" <kernel-team@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 22, 2020 at 4:07 PM 'Todd Kjos' via kernel-team
<kernel-team@android.com> wrote:
>
> The binder driver makes the assumption proc->context pointer is invariant after
> initialization (as documented in the kerneldoc header for struct proc).
> However, in commit f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
> proc->context is set to NULL during binder_deferred_release().
>
> Another proc was in the middle of setting up a transaction to the dying
> process and crashed on a NULL pointer deref on "context" which is a local
> set to &proc->context:
>
>     new_ref->data.desc = (node == context->binder_context_mgr_node) ? 0 : 1;
>
> Here's the stack:
>
> [ 5237.855435] Call trace:
> [ 5237.855441] binder_get_ref_for_node_olocked+0x100/0x2ec
> [ 5237.855446] binder_inc_ref_for_node+0x140/0x280
> [ 5237.855451] binder_translate_binder+0x1d0/0x388
> [ 5237.855456] binder_transaction+0x2228/0x3730
> [ 5237.855461] binder_thread_write+0x640/0x25bc
> [ 5237.855466] binder_ioctl_write_read+0xb0/0x464
> [ 5237.855471] binder_ioctl+0x30c/0x96c
> [ 5237.855477] do_vfs_ioctl+0x3e0/0x700
> [ 5237.855482] __arm64_sys_ioctl+0x78/0xa4
> [ 5237.855488] el0_svc_common+0xb4/0x194
> [ 5237.855493] el0_svc_handler+0x74/0x98
> [ 5237.855497] el0_svc+0x8/0xc
>
> The fix is to move the kfree of the binder_device to binder_free_proc()
> so the binder_device is freed when we know there are no references
> remaining on the binder_proc.
>
> Fixes: f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
> Signed-off-by: Todd Kjos <tkjos@google.com>

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

Thanks,

 - Joel



> ---
>  drivers/android/binder.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index e47c8a4c83db..f50c5f182bb5 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -4686,8 +4686,15 @@ static struct binder_thread *binder_get_thread(struct binder_proc *proc)
>
>  static void binder_free_proc(struct binder_proc *proc)
>  {
> +       struct binder_device *device;
> +
>         BUG_ON(!list_empty(&proc->todo));
>         BUG_ON(!list_empty(&proc->delivered_death));
> +       device = container_of(proc->context, struct binder_device, context);
> +       if (refcount_dec_and_test(&device->ref)) {
> +               kfree(proc->context->name);
> +               kfree(device);
> +       }
>         binder_alloc_deferred_release(&proc->alloc);
>         put_task_struct(proc->tsk);
>         binder_stats_deleted(BINDER_STAT_PROC);
> @@ -5406,7 +5413,6 @@ static int binder_node_release(struct binder_node *node, int refs)
>  static void binder_deferred_release(struct binder_proc *proc)
>  {
>         struct binder_context *context = proc->context;
> -       struct binder_device *device;
>         struct rb_node *n;
>         int threads, nodes, incoming_refs, outgoing_refs, active_transactions;
>
> @@ -5423,12 +5429,6 @@ static void binder_deferred_release(struct binder_proc *proc)
>                 context->binder_context_mgr_node = NULL;
>         }
>         mutex_unlock(&context->context_mgr_node_lock);
> -       device = container_of(proc->context, struct binder_device, context);
> -       if (refcount_dec_and_test(&device->ref)) {
> -               kfree(context->name);
> -               kfree(device);
> -       }
> -       proc->context = NULL;
>         binder_inner_proc_lock(proc);
>         /*
>          * Make sure proc stays alive after we
> --
> 2.27.0.111.gc72c7da667-goog
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
