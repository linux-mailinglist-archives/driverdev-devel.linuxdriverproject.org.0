Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1EE421A0C
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 00:29:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDB326078C;
	Mon,  4 Oct 2021 22:29:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4lIHXBkNSr5; Mon,  4 Oct 2021 22:29:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D56E46073B;
	Mon,  4 Oct 2021 22:29:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB3861BF3E0
 for <devel@linuxdriverproject.org>; Mon,  4 Oct 2021 22:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3D38404F8
 for <devel@linuxdriverproject.org>; Mon,  4 Oct 2021 22:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R9JpFbQyyN3F for <devel@linuxdriverproject.org>;
 Mon,  4 Oct 2021 22:29:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CC705404EC
 for <devel@driverdev.osuosl.org>; Mon,  4 Oct 2021 22:29:25 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id b20so78468817lfv.3
 for <devel@driverdev.osuosl.org>; Mon, 04 Oct 2021 15:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=um4Fcr2fRzJCbuqb6umRyrAwaJXGfwl9VTVZmIntFmY=;
 b=azmyGfTEmdbEJHm+SlhRjjeQax/I1DRRaIkHgTN4T7Jcza4Q0DN4yXcxnjzsUyiSIO
 wesrHq+r64z1z1P6Ck+CGOVWAIhXFEk/k5e/E2RvXZi+fUhkoeZRV9ifX8bxLC30LI7a
 yey+Enhe6gT/eAg03pHu9jiX6/WexDBqOn0KFD9sNQXxoS8I+Zcd93ndmcs+opzvMtOt
 67065Q6A2selnkErXNaPY46ULEyJevFiohL8dCMnW1syunxS+Q3JyZ7XYBR6yGcxHzO9
 G2tGr+dHvGy4+QQoXusqgtaIGAlPdnfbpq2MR3df2xhvmf2DSSibzNom38jGEHLBKcgt
 UmWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=um4Fcr2fRzJCbuqb6umRyrAwaJXGfwl9VTVZmIntFmY=;
 b=L94VIjyStK5shYAYxYVa54kqGjr28EhZcAAri79BMolAlwJHlZSh/661hHGwoRsovP
 HVDogr1F4RUjxDfR9TrIunqXSk/GsIWX2j94RgFErEiwWjrLwN8AWcFwShdufc8+9wa+
 hGPJ8IA42ek+Vj2yoknpheuwxc4uk/qGLQGhBu25JCXlnITVjx9ZhumBxrhgEz+HZx1m
 aUZZHQTjTs5xfPAKsXn0Gf1BFM8ZXJSYGe+vWguaqK82VgIcRJ46rbg6dijtfcMzETkd
 LhoTNz1yuZAkY3Ryntop4jLSB3uTEJ70XpXBKM0RorpNa00WrD8zvk/fnQUtLKXZj61Q
 8yFA==
X-Gm-Message-State: AOAM530IEKrgakgdNTRJrSICK81Cs7RZ2hpu+Ty6NAXjtrko+j3fGYM4
 pAfs2zLWpXUE3WIgreM8/fs2Q1Fzb+Q9IvOdFrvP0A==
X-Google-Smtp-Source: ABdhPJykxc+U57C0bYOepxwQRGK6sUfG/2fmg1ryrkmQhSafCwiTubKiNfdXkMC9JaMoYBco6qzyBu7W+0Rrjgm8A2U=
X-Received: by 2002:ac2:4f92:: with SMTP id z18mr16805817lfs.354.1633386563407; 
 Mon, 04 Oct 2021 15:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20211001175521.3853257-1-tkjos@google.com>
 <c6a650e4-15e4-2943-f759-0e9577784c7a@schaufler-ca.com>
 <CAG48ez2tejBUXJGf0R9qpEiauL9-ABgkds6mZTQD7sZKLMdAAQ@mail.gmail.com>
 <CAG48ez1SRau1Tnge5HVqxCFsNCizmnQLErqnC=eSeERv8jg-zQ@mail.gmail.com>
 <f59c6e9f-2892-32da-62f8-8bbeec18ee4c@schaufler-ca.com>
 <CAG48ez0yF0u=QBLVL2XrGB8r8ouQj-_aS9SScu4O4f+LhZxCDw@mail.gmail.com>
 <e0c1fab9-cb97-d5af-1f4b-f15b6b2097fd@schaufler-ca.com>
In-Reply-To: <e0c1fab9-cb97-d5af-1f4b-f15b6b2097fd@schaufler-ca.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 5 Oct 2021 00:28:57 +0200
Message-ID: <CAG48ez3qc+2sc6xTJQVqLTRcjCiw_Adx13KT3OvPMCjBLjZvgA@mail.gmail.com>
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
To: Casey Schaufler <casey@schaufler-ca.com>
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
 kernel-team@android.com, tkjos@android.com, paul@paul-moore.com,
 keescook@chromium.org, selinux@vger.kernel.org, gregkh@linuxfoundation.org,
 stephen.smalley.work@gmail.com, jmorris@namei.org, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 jeffv@google.com, joel@joelfernandes.org, eparis@parisplace.org,
 maco@android.com, christian@brauner.io, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 4, 2021 at 6:19 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> On 10/1/2021 3:58 PM, Jann Horn wrote:
> > On Fri, Oct 1, 2021 at 10:10 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >> On 10/1/2021 12:50 PM, Jann Horn wrote:
> >>> On Fri, Oct 1, 2021 at 9:36 PM Jann Horn <jannh@google.com> wrote:
> >>>> On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >>>>> On 10/1/2021 10:55 AM, Todd Kjos wrote:
> >>>>>> Save the struct cred associated with a binder process
> >>>>>> at initial open to avoid potential race conditions
> >>>>>> when converting to a security ID.
> >>>>>>
> >>>>>> Since binder was integrated with selinux, it has passed
> >>>>>> 'struct task_struct' associated with the binder_proc
> >>>>>> to represent the source and target of transactions.
> >>>>>> The conversion of task to SID was then done in the hook
> >>>>>> implementations. It turns out that there are race conditions
> >>>>>> which can result in an incorrect security context being used.
> >>>>> In the LSM stacking patch set I've been posting for a while
> >>>>> (on version 29 now) I use information from the task structure
> >>>>> to ensure that the security information passed via the binder
> >>>>> interface is agreeable to both sides. Passing the cred will
> >>>>> make it impossible to do this check. The task information
> >>>>> required is not appropriate to have in the cred.
> >>>> Why not? Why can't you put the security identity of the task into the creds?
> >>> Ah, I get it now, you're concerned about different processes wanting
> >>> to see security contexts formatted differently (e.g. printing the
> >>> SELinux label vs printing the AppArmor label), right?
> >> That is correct.
> >>
> >>> But still, I don't think you can pull that information from the
> >>> receiving task. Maybe the easiest solution would be to also store that
> >>> in the creds? Or you'd have to manually grab that information when
> >>> /dev/binder is opened.
> >> I'm storing the information in the task security blob because that's
> >> the appropriate scope. Today the LSM hook is given both task_struct's.
> > Which is wrong, because you have no idea who the semantic "recipient
> > task" is - any task that has a mapping of the binder fd can
> > effectively receive transactions from it.
> >
> > (And the current "sender task" is also wrong, because binder looks at
> > the task that opened the binder device, not the task currently
> > performing the action.)
>
> I'm confused. Are you saying that the existing binder code is
> completely broken? Are you saying that neither "task" is correct?

Yeah, basically - but luckily the actual impact this has is limited by
the transitions that SELinux permits. If domain1 has no way to
transition to domain2, then it can't abuse this bug to pretend to be
domain2. I do have a reproducer that lets Android's "shell" domain
send a binder transaction that appears to come from "runas", but
luckily "runas" has no interesting privileges with regards to binder,
so that's not exploitable.

> How does passing the creds from the wrong tasks "fix" the problem?

This patch is not passing the creds from the "wrong" tasks at all. It
relies on the basic idea that when a security context opens a
resource, and then hands that resource to another context for
read/write operations, then you can effectively treat this as a
delegation of privileges from the original opener, and perform access
checks against the credentials using which the resource was opened.

In particular, we already have those semantics in the core kernel for
->read() and ->write() VFS operations - they are *not allowed* to look
at the credentials of the caller, and if they want to make security
checks, they have to instead check against file->f_cred, which are the
credentials using which the file was originally opened. (Yes, some
places still get that wrong.) Passing a file descriptor to another
task is a delegation of access, and the other task can then call
syscalls like read() / write() / mmap() on the file descriptor without
needing to have any access to the underlying file.

You can't really attribute binder transactions to specific tasks that
are actually involved in the specific transaction, neither on the
sending side nor on the receiving side, because binder is built around
passing data through memory mappings. Memory mappings can be accessed
by multiple tasks, and even a task that does not currently have it
mapped could e.g. map it at a later time. And on top of that you have
the problem that the receiving task might also go through privileged
execve() transitions.

> >> It's easy to compare to make sure the tasks are compatible.
> > It would be, if you actually had a pair of tasks that accurately
> > represent the sender and the recipient.
> >
> >> Adding the
> >> information to the cred would be yet another case where the scope of
> >> security information is wrong.
> > Can you elaborate on why you think that?
>
> The information identifies how the task is going to display
> the security "context". It isn't used in access checks.

But it is data that AFAICS needs to be preserved in the same places
where the creds need to be preserved, and it is also related to
security labels, so isn't "struct cred" a logical place to stuff it
anyway?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
