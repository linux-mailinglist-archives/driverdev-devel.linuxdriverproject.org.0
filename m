Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C94F41F2C4
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 19:15:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EC87407EF;
	Fri,  1 Oct 2021 17:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s1SDieevBBv1; Fri,  1 Oct 2021 17:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85F6040145;
	Fri,  1 Oct 2021 17:14:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6AA41BF409
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 17:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D62798449D
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 17:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3PysLGfh93yT for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 17:14:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7BDB8449C
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 17:14:48 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id y26so41634270lfa.11
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 10:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0XGy+GRK48SGGxR1ZCE+Ciu2OxM1nuqOBwlHN8oBD9U=;
 b=dLtBJrwYeEb7m8l51kN8I5xA2EeE3Dsu8p9BDuk1SrsxjeEvG5/uleGiLvQbFFC92g
 RD4vaTnfZQRHi4pqOjTLit9ltpn5kI3c0QumTpCcv1Po4n8Ts2MOt3KILylZ+9P5SdGP
 aoRbyvGQ8QEEBwZKtzcUDx52FRT7TdM+RMYmOog3f6tYJ/sGkgq27zxKKlnAJjW8VstJ
 BH0SN9qrivJjIsjpc6cuiCqQl51RYOosDjTww5eDFx4TnBumDxGBqE6sXLEq75IsZ+We
 udTzoCg21agxIeb5swqZnmgji7bzWuCDy8ALYDlWLfuH8l6mOPJN6tLTpE7xxQZmMZPu
 VGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0XGy+GRK48SGGxR1ZCE+Ciu2OxM1nuqOBwlHN8oBD9U=;
 b=AnoLK1YNCcEMHz7noT/mHfk9PjpRJ98VipquPzcggcu3TQ1G6NDPHGZl912wIpTYEB
 Op000t1I7xQaZB2WJtu+GyaSVtPO3rFMDb4cY7oASm0ubPg5zEnHAIFc+A5+pTuTdKFu
 stfXpswuRvs7UfzDglTXOE6qAvHT8oMNkL+ISCTsfRzfFZTim/ozuQzDOpO9bdKopnUL
 YfS9tdoRJl3T+RtxSAFWThh5ZnuSWK49jglovBLkxOMsU8TBDjCKoTUYKOk9BcpvBHo0
 Gyzwp9vzQ9dMtGPClScaqBBlatWBrtpkKK8G8p0rHs8d+EJOsZfG/VZgI2aDEoXgkYyv
 0MDw==
X-Gm-Message-State: AOAM532ripkVbFduze2jiMQU9hf/fiUONIMlgeWlU2FSLhfE9R+8bFEc
 v2UgQdu0unu22RYqmxaZTYtpg8zIVnQP1vc+U01pOQ==
X-Google-Smtp-Source: ABdhPJzG2fpX+4ES3rah/rrVmMzv/jiF6NJ2zEQzoLdi+59TjyjMidoiQzhXf5vKJHWd+QnCCW46WpFl5hztiSkqOw0=
X-Received: by 2002:a2e:1302:: with SMTP id 2mr13534028ljt.280.1633108486155; 
 Fri, 01 Oct 2021 10:14:46 -0700 (PDT)
MIME-Version: 1.0
References: <20211001024506.3762647-1-tkjos@google.com>
 <CAHC9VhQ-uziaYRYWaah=RMmz7HUVvxGs+4F=g2sizVXR0ZSWVw@mail.gmail.com>
In-Reply-To: <CAHC9VhQ-uziaYRYWaah=RMmz7HUVvxGs+4F=g2sizVXR0ZSWVw@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 1 Oct 2021 10:14:34 -0700
Message-ID: <CAHRSSEyq2yUmznpr9G1kxoC_8RcGXzHo37h471uxygFUbD_nrg@mail.gmail.com>
Subject: Re: [PATCH] binder: use cred instead of task for selinux checks
To: Paul Moore <paul@paul-moore.com>
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

On Fri, Oct 1, 2021 at 7:38 AM Paul Moore <paul@paul-moore.com> wrote:
>
> On Thu, Sep 30, 2021 at 10:45 PM Todd Kjos <tkjos@google.com> wrote:
> >
> > Save the struct cred associated with a binder process
> > at initial open to avoid potential race conditions
> > when converting to a security ID.
> >
> > Since binder was integrated with selinux, it has passed
> > 'struct task_struct' associated with the binder_proc
> > to represent the source and target of transactions.
> > The conversion of task to SID was then done in the hook
> > implementations. It turns out that there are race conditions
> > which can result in an incorrect security context being used.
> >
> > Fix by saving the 'struct cred' during binder_open and pass
> > it to the selinux subsystem.
> >
> > Fixes: 79af73079d75 ("Add security hooks to binder and implement the
> > hooks for SELinux.")
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Cc: stable@vger.kernel.org # 5.14 (need backport for earlier stables)
> > ---
> >  drivers/android/binder.c          | 14 +++++----
> >  drivers/android/binder_internal.h |  3 ++
> >  include/linux/lsm_hook_defs.h     | 14 ++++-----
> >  include/linux/security.h          | 28 +++++++++---------
> >  security/security.c               | 14 ++++-----
> >  security/selinux/hooks.c          | 48 +++++++++----------------------
> >  6 files changed, 52 insertions(+), 69 deletions(-)
>
> Thanks Todd, I'm happy to see someone with a better understanding of
> binder than me pitch in to clean this up :)  A couple of quick
> comments/questions below ...
>
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index 9edacc8b9768..ca599ebdea4a 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -5055,6 +5056,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
> >         spin_lock_init(&proc->outer_lock);
> >         get_task_struct(current->group_leader);
> >         proc->tsk = current->group_leader;
> > +       proc->cred = get_cred(filp->f_cred);
>
> Is it *always* true that filp->f_cred is going to be the same as
> current->group_leader->cred?

Not necessarily -- it is current->cred of the task in binder_open()
(not group_leader). This is fine. We used to set proc->tsk to current,
but switched to group_leader a few years ago to make it easier to
detect the same process with multiple opens during mmap (to solve some
unrelated issues). We still use group_leader for that purpose, but for
the cred, the current cred in binder_open() is sufficient.

> Or rather does this help resolve the
> issue of wanting the subjective creds but not being able to access
> them mentioned in the task_sid_binder() comment?  If the latter, it
> might be nice to add something to the related comment in struct
> binder_ref (below).

Yes, we want the subjective cred so that is part of the point. I
started with "proc->cred = get_task_cred(current->group_leader)" and
got feedback that the "subjective" cred is preferred to avoid some
subtle races that could be introduced, for example, if /dev/binder is
opened through io_uring.

>
> >         INIT_LIST_HEAD(&proc->todo);
> >         init_waitqueue_head(&proc->freeze_wait);
> >         proc->default_priority = task_nice(current);
> > diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> > index 402c4d4362a8..886fc327a534 100644
> > --- a/drivers/android/binder_internal.h
> > +++ b/drivers/android/binder_internal.h
> > @@ -364,6 +364,8 @@ struct binder_ref {
> >   *                        (invariant after initialized)
> >   * @tsk                   task_struct for group_leader of process
> >   *                        (invariant after initialized)
> > + * @cred                  struct cred for group_leader of process
> > + *                        (invariant after initialized)
>
> Related to the question above.  At the very least the comment should
> probably be changed to indicate to make it clear the creds are coming
> directly from the binder file/device and not always the group_leader.

Good catch. Will update the comment (it's actually struct binder_proc).

>
> > diff --git a/security/selinux/hooks.c b/security/selinux/hooks.c
> > index e7ebd45ca345..c8bf3db90c8b 100644
> > --- a/security/selinux/hooks.c
> > +++ b/security/selinux/hooks.c
> > @@ -255,29 +255,6 @@ static inline u32 task_sid_obj(const struct task_struct *task)
> >         return sid;
> >  }
> >
> > -/*
> > - * get the security ID of a task for use with binder
> > - */
> > -static inline u32 task_sid_binder(const struct task_struct *task)
> > -{
> > -       /*
> > -        * In many case where this function is used we should be using the
> > -        * task's subjective SID, but we can't reliably access the subjective
> > -        * creds of a task other than our own so we must use the objective
> > -        * creds/SID, which are safe to access.  The downside is that if a task
> > -        * is temporarily overriding it's creds it will not be reflected here;
> > -        * however, it isn't clear that binder would handle that case well
> > -        * anyway.
> > -        *
> > -        * If this ever changes and we can safely reference the subjective
> > -        * creds/SID of another task, this function will make it easier to
> > -        * identify the various places where we make use of the task SIDs in
> > -        * the binder code.  It is also likely that we will need to adjust
> > -        * the main drivers/android binder code as well.
> > -        */
> > -       return task_sid_obj(task);
> > -}
>
> --
> paul moore
> www.paul-moore.com

and from your next response:

> Ooops, I was a little over zealous when trimming my response and I
> accidentally cut off my comment that the associated comment blocks in
> include/linux/lsm_hooks.h should also be updated to reflect the binder
> LSM hook changes.

Thanks for pointing this out! I didn't notice these comment blocks.

-Todd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
