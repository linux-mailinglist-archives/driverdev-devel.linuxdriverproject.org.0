Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 711922041F1
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 22:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0250D874D2;
	Mon, 22 Jun 2020 20:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VxZCQSjoP33b; Mon, 22 Jun 2020 20:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E9DE874A6;
	Mon, 22 Jun 2020 20:26:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A77F01BF3CE
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 20:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B0542042C
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 20:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id arhKcnba6b1I for <devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 20:26:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id AED9E2041E
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 20:26:50 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id z9so20844374ljh.13
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 13:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KPToc3YBMAKu4Sqe1+lHQgmg7EgNUpmHiaB33zpdCKg=;
 b=RFzR7n+EukCyGRIl5ZH607BxuvZz9EIxV/PcrSwnjOoXGP7LL4QjI+qNPkJcvM6I1F
 +N9N+qCcBwoQNl/C9n6P59foBIW2m/iHabsK/YdRHmyRAbktBgfMbk/GAO6jxlz0anhX
 um+KG8Bm50oo/3iGTiIre1OvTa16PfHFj+eCQlOdYYCLzI+UnfBhDhp4k2CU30F9WHb2
 5VJ4h/fGIJ9K9mZsyBl0YkMq+y1jv2UdbluBX5Q7HmcGWEakEMTQP1joQnclIULu4Wtv
 yToNGVe7DLTrGkXJ2U36D0o60FtxUTV112jghkGLbXONZ3rTxiipA8ScRsezBt4oQbRM
 2Ktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KPToc3YBMAKu4Sqe1+lHQgmg7EgNUpmHiaB33zpdCKg=;
 b=Ib96WWxVrLpIUF+9U+zNLaGwkRHJBO1x4fzkcQOPXmXbBsEuwuD861Xsa60RLJMYXE
 L0wyc/Xgx2y94P09OlhVCplKEBIWQPFP1/js+Tf21OA3rENr83CUooP0tQkOrckMyimB
 K6k3wf87RbqR6rv8TY0GReKhDV2YRpjZ0tV9RSITugNiBYy5eqxhVWNgiMkDvKgA1KeZ
 BovY7UXIh8quueB8uhjmsYsk6AIdFkds+ykiq9lvj6RW1KbsuFdbVDB6kGsunbgE1Sxc
 0DNMVYtrivzgoDVUYLcWT1Lz5tVAh4WR5a1wVBx4OxRrmrstNNk2i/Ywo4b74yQZwOdG
 exuA==
X-Gm-Message-State: AOAM530ye8fg9F7qJfwqPrkZKAlhLE/vhxQFQ45d+vyghqiT7FsodSYO
 fb1ib4jvgHg0T9TX8KZuU7Pz4PX38/4WB4Ql3375TKCM
X-Google-Smtp-Source: ABdhPJyEjZBpXe2Z+1r2XCfvhXjpGrnv0VLgfmHd97Bn40DjEQCJ+RtVxug+FXeaJbVKVXFde4ulV23N9aUH9P4ABRI=
X-Received: by 2002:a17:906:69c3:: with SMTP id
 g3mr18232972ejs.47.1592857139968; 
 Mon, 22 Jun 2020 13:18:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200622200715.114382-1-tkjos@google.com>
 <20200622200955.unq7elx2ry2vrnfe@wittgenstein>
In-Reply-To: <20200622200955.unq7elx2ry2vrnfe@wittgenstein>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 22 Jun 2020 13:18:47 -0700
Message-ID: <CAHRSSExVfUhkXzhuEUvUP-CTwSE7ExWwYCL8K_N+YABW9C1BzQ@mail.gmail.com>
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

On Mon, Jun 22, 2020 at 1:09 PM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Mon, Jun 22, 2020 at 01:07:15PM -0700, Todd Kjos wrote:
> > The binder driver makes the assumption proc->context pointer is invariant after
> > initialization (as documented in the kerneldoc header for struct proc).
> > However, in commit f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
> > proc->context is set to NULL during binder_deferred_release().
> >
> > Another proc was in the middle of setting up a transaction to the dying
> > process and crashed on a NULL pointer deref on "context" which is a local
> > set to &proc->context:
> >
> >     new_ref->data.desc = (node == context->binder_context_mgr_node) ? 0 : 1;
> >
> > Here's the stack:
> >
> > [ 5237.855435] Call trace:
> > [ 5237.855441] binder_get_ref_for_node_olocked+0x100/0x2ec
> > [ 5237.855446] binder_inc_ref_for_node+0x140/0x280
> > [ 5237.855451] binder_translate_binder+0x1d0/0x388
> > [ 5237.855456] binder_transaction+0x2228/0x3730
> > [ 5237.855461] binder_thread_write+0x640/0x25bc
> > [ 5237.855466] binder_ioctl_write_read+0xb0/0x464
> > [ 5237.855471] binder_ioctl+0x30c/0x96c
> > [ 5237.855477] do_vfs_ioctl+0x3e0/0x700
> > [ 5237.855482] __arm64_sys_ioctl+0x78/0xa4
> > [ 5237.855488] el0_svc_common+0xb4/0x194
> > [ 5237.855493] el0_svc_handler+0x74/0x98
> > [ 5237.855497] el0_svc+0x8/0xc
> >
> > The fix is to move the kfree of the binder_device to binder_free_proc()
> > so the binder_device is freed when we know there are no references
> > remaining on the binder_proc.
> >
> > Fixes: f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
> > Signed-off-by: Todd Kjos <tkjos@google.com>

Forgot to include stable. The issue was introduced in 5.6, so fix needed in 5.7.
Cc: stable@vger.kernel.org # 5.7


>
>
> Thanks, looks good to me!
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
>
> Christian
>
> > ---
> >  drivers/android/binder.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index e47c8a4c83db..f50c5f182bb5 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -4686,8 +4686,15 @@ static struct binder_thread *binder_get_thread(struct binder_proc *proc)
> >
> >  static void binder_free_proc(struct binder_proc *proc)
> >  {
> > +     struct binder_device *device;
> > +
> >       BUG_ON(!list_empty(&proc->todo));
> >       BUG_ON(!list_empty(&proc->delivered_death));
> > +     device = container_of(proc->context, struct binder_device, context);
> > +     if (refcount_dec_and_test(&device->ref)) {
> > +             kfree(proc->context->name);
> > +             kfree(device);
> > +     }
> >       binder_alloc_deferred_release(&proc->alloc);
> >       put_task_struct(proc->tsk);
> >       binder_stats_deleted(BINDER_STAT_PROC);
> > @@ -5406,7 +5413,6 @@ static int binder_node_release(struct binder_node *node, int refs)
> >  static void binder_deferred_release(struct binder_proc *proc)
> >  {
> >       struct binder_context *context = proc->context;
> > -     struct binder_device *device;
> >       struct rb_node *n;
> >       int threads, nodes, incoming_refs, outgoing_refs, active_transactions;
> >
> > @@ -5423,12 +5429,6 @@ static void binder_deferred_release(struct binder_proc *proc)
> >               context->binder_context_mgr_node = NULL;
> >       }
> >       mutex_unlock(&context->context_mgr_node_lock);
> > -     device = container_of(proc->context, struct binder_device, context);
> > -     if (refcount_dec_and_test(&device->ref)) {
> > -             kfree(context->name);
> > -             kfree(device);
> > -     }
> > -     proc->context = NULL;
> >       binder_inner_proc_lock(proc);
> >       /*
> >        * Make sure proc stays alive after we
> > --
> > 2.27.0.111.gc72c7da667-goog
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
