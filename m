Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9908F41EFB2
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 16:38:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B499614EA;
	Fri,  1 Oct 2021 14:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FP-eXbXCA_uc; Fri,  1 Oct 2021 14:38:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2F02614DC;
	Fri,  1 Oct 2021 14:38:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17FF51BF424
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 14:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1237240130
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 14:38:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=paul-moore-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWpXLbn9hkin for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 14:38:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 822A0400C1
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 14:38:26 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id r18so35494610edv.12
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 07:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zmf5bHycEslzhJrqEtvPO4rl26bvdDHLmu6FXit3K00=;
 b=xSdLcHEHstBCW0XwCmCZHKI0LmErqmy4xzApHOoeQsw9Ey/RmGbMEUcvrYLBJmxIqr
 +sX+IWQ5cOZkLVs+KNItg5upOeDdti488Vl/k1xkmttk1DRFva0zM0lC5Hh+xh/yczpJ
 jUy7qYVjme9Ox+2jkewzjKZJkU1jAelUPfvslZt9E1wqDJNt0UCXDJs1pNHt6vFyOy+S
 tQNe7nB3aq67/gq6wluF6im3q/0Bt6lbl/IXfVa4Dke5YyrDcJoD9Ocz0vsNevuYs6qW
 mMAHBqaACuTXEdXWpErZAxa3THQTzgyuqbq1KbD5Os1u6da1oh2zQy2SYrJ2trQ7x1Oo
 YaxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zmf5bHycEslzhJrqEtvPO4rl26bvdDHLmu6FXit3K00=;
 b=u8jy786k4acyX14P9UEoF/aj6QSsOt28MGBeNMpruWYVTdz7MDEhRb90TFjVMj1KDB
 AT2JfSvCrOcPzr2aQS/Sb4T4+O7UeqwJLNgml1YRL38w8mhIRCbZ5xTwVpHY4b4occYR
 SCdyX7Gy2Itd+VSQQ9GJy/eiSOqWBu2BbwXF64Z0CdhYQr/F7iUNAIu6d2fBglo48S7y
 EjZLIDgRgXAmN0oKaxYfAg86A6WWCYKOORZOwMcDPOI8GmPDxfgOTkzzB7WczpzyjARw
 /fWYs3VOTMG7NfwM8e8VuC6UU3W51JQbofmYih6EkoUAFzV5aXgymD6cPpBHcic2CZHD
 3pbA==
X-Gm-Message-State: AOAM5314gKseFtlafLRFTv0JdzStglGxVo6r/S1Ilbj6n6SQ9EG/wCD5
 TyGLI04mmBtCipAvVCjkt2/JdFbwSmk57yuuT6m4
X-Google-Smtp-Source: ABdhPJzEvVvODu1yaZFSdK5tpYcIveXlY8zeFTPk2iUCD75467RBT4GINnz2yu22lrjdtA9Z7q7ifInwZsLH6/h5uac=
X-Received: by 2002:a05:6402:142e:: with SMTP id
 c14mr14718759edx.209.1633099103840; 
 Fri, 01 Oct 2021 07:38:23 -0700 (PDT)
MIME-Version: 1.0
References: <20211001024506.3762647-1-tkjos@google.com>
In-Reply-To: <20211001024506.3762647-1-tkjos@google.com>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 1 Oct 2021 10:38:12 -0400
Message-ID: <CAHC9VhQ-uziaYRYWaah=RMmz7HUVvxGs+4F=g2sizVXR0ZSWVw@mail.gmail.com>
Subject: Re: [PATCH] binder: use cred instead of task for selinux checks
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
Cc: devel@driverdev.osuosl.org, linux-security-module@vger.kernel.org,
 kernel-team@android.com, tkjos@android.com, keescook@chromium.org,
 jannh@google.com, selinux@vger.kernel.org, gregkh@linuxfoundation.org,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 Jeffrey Vander Stoep <jeffv@google.com>, joel@joelfernandes.org,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 30, 2021 at 10:45 PM Todd Kjos <tkjos@google.com> wrote:
>
> Save the struct cred associated with a binder process
> at initial open to avoid potential race conditions
> when converting to a security ID.
>
> Since binder was integrated with selinux, it has passed
> 'struct task_struct' associated with the binder_proc
> to represent the source and target of transactions.
> The conversion of task to SID was then done in the hook
> implementations. It turns out that there are race conditions
> which can result in an incorrect security context being used.
>
> Fix by saving the 'struct cred' during binder_open and pass
> it to the selinux subsystem.
>
> Fixes: 79af73079d75 ("Add security hooks to binder and implement the
> hooks for SELinux.")
> Signed-off-by: Todd Kjos <tkjos@google.com>
> Cc: stable@vger.kernel.org # 5.14 (need backport for earlier stables)
> ---
>  drivers/android/binder.c          | 14 +++++----
>  drivers/android/binder_internal.h |  3 ++
>  include/linux/lsm_hook_defs.h     | 14 ++++-----
>  include/linux/security.h          | 28 +++++++++---------
>  security/security.c               | 14 ++++-----
>  security/selinux/hooks.c          | 48 +++++++++----------------------
>  6 files changed, 52 insertions(+), 69 deletions(-)

Thanks Todd, I'm happy to see someone with a better understanding of
binder than me pitch in to clean this up :)  A couple of quick
comments/questions below ...

> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 9edacc8b9768..ca599ebdea4a 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -5055,6 +5056,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
>         spin_lock_init(&proc->outer_lock);
>         get_task_struct(current->group_leader);
>         proc->tsk = current->group_leader;
> +       proc->cred = get_cred(filp->f_cred);

Is it *always* true that filp->f_cred is going to be the same as
current->group_leader->cred?  Or rather does this help resolve the
issue of wanting the subjective creds but not being able to access
them mentioned in the task_sid_binder() comment?  If the latter, it
might be nice to add something to the related comment in struct
binder_ref (below).

>         INIT_LIST_HEAD(&proc->todo);
>         init_waitqueue_head(&proc->freeze_wait);
>         proc->default_priority = task_nice(current);
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index 402c4d4362a8..886fc327a534 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -364,6 +364,8 @@ struct binder_ref {
>   *                        (invariant after initialized)
>   * @tsk                   task_struct for group_leader of process
>   *                        (invariant after initialized)
> + * @cred                  struct cred for group_leader of process
> + *                        (invariant after initialized)

Related to the question above.  At the very least the comment should
probably be changed to indicate to make it clear the creds are coming
directly from the binder file/device and not always the group_leader.

> diff --git a/security/selinux/hooks.c b/security/selinux/hooks.c
> index e7ebd45ca345..c8bf3db90c8b 100644
> --- a/security/selinux/hooks.c
> +++ b/security/selinux/hooks.c
> @@ -255,29 +255,6 @@ static inline u32 task_sid_obj(const struct task_struct *task)
>         return sid;
>  }
>
> -/*
> - * get the security ID of a task for use with binder
> - */
> -static inline u32 task_sid_binder(const struct task_struct *task)
> -{
> -       /*
> -        * In many case where this function is used we should be using the
> -        * task's subjective SID, but we can't reliably access the subjective
> -        * creds of a task other than our own so we must use the objective
> -        * creds/SID, which are safe to access.  The downside is that if a task
> -        * is temporarily overriding it's creds it will not be reflected here;
> -        * however, it isn't clear that binder would handle that case well
> -        * anyway.
> -        *
> -        * If this ever changes and we can safely reference the subjective
> -        * creds/SID of another task, this function will make it easier to
> -        * identify the various places where we make use of the task SIDs in
> -        * the binder code.  It is also likely that we will need to adjust
> -        * the main drivers/android binder code as well.
> -        */
> -       return task_sid_obj(task);
> -}

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
