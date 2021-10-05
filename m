Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 568AA421B1D
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 02:27:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98871405CB;
	Tue,  5 Oct 2021 00:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4iqH-4OD5n23; Tue,  5 Oct 2021 00:27:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4894C405B4;
	Tue,  5 Oct 2021 00:27:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BE831BF574
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 00:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A38A83A34
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 00:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rSCQCRwFrZHL for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 00:27:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1057383981
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 00:27:12 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id y23so39458911lfb.0
 for <devel@driverdev.osuosl.org>; Mon, 04 Oct 2021 17:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UVlSFdygO4E81GY8Xs3v4g5uv7710hgeQMd3u1XpX6U=;
 b=RnFMDEtFnx2rglU90YeoKUEBkPfb7GqttQG7utDbNjpQEgt+iZ2GtMlYI7I04UgnZN
 tc+VJOdd4jDJfj9JiABS1G4BlNRXZWIdXpu5l52Yp5rfZxD0/vJ4PW7+oyLPkz61oPW9
 wi3gv41hMVlEHdyCX3X1M3e2LnTcelumQaLk0bcDLYqMvHTzBDAZ7VR10mxBurIPkjK+
 5dg8O6Ismio4BJn1xPQJMyAYYr3X3eHplWXfd5jknUTyL8BKAjZYcLQw7gL5RHEA8oYf
 7WaWbE/t+4rvhyA8tWl2tJ7lKRMzeTIiI9lK715Z9Iup6LqTCfTI0ivwBSJLAxJTWQ4U
 kKLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UVlSFdygO4E81GY8Xs3v4g5uv7710hgeQMd3u1XpX6U=;
 b=C0bvrjC8zhBGdTpwsA0gzwJFAZhohX0ikvIxWF5zcttQ73+SY0yeGPejevhPOHqwmj
 9e1N6mTbreJOv8JzGT8SJytBgO7WeS0Ig4l2xLKyqtad2oTySxLUt9bT4rUXbMoPd5h7
 bT0wk0hiRTLEIZtEfWSrKmg/vM77vgeJGGUolcYtzyN7CxOPYzYqniTW38cz6LnygeLd
 f1du3GNm0kC3WTi6/jA4BxpBiTRe9qEWXyNkVSbavhSx68WNt1N0L/ykwL0VM5W2mcrJ
 OUbld5/Pg4th+vGh41szFPQYpOFH6EbNdJju4KU9mj4HwxzvvpiOvdropmc0qdxkZXog
 bskw==
X-Gm-Message-State: AOAM532H/k7zBebWVpOvwIXE8yVCeBndj8zY95kqalLCeYVfd69Na5d9
 FqWJxRwqF8kQ2m5Ivr2gzV0sXNm+ooB0c68P/BZdvg==
X-Google-Smtp-Source: ABdhPJx0nePGYkjcexz/xyRST348c+6u7s0QeG/8Po9mqHGc6rVX+iqPqNca7KWskyfxE3rCcCNlTPC+ZPz4Ouet7Ck=
X-Received: by 2002:a2e:80ca:: with SMTP id r10mr19582692ljg.347.1633393630344; 
 Mon, 04 Oct 2021 17:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <20211001175521.3853257-1-tkjos@google.com>
 <c6a650e4-15e4-2943-f759-0e9577784c7a@schaufler-ca.com>
 <CAG48ez2tejBUXJGf0R9qpEiauL9-ABgkds6mZTQD7sZKLMdAAQ@mail.gmail.com>
 <CAG48ez1SRau1Tnge5HVqxCFsNCizmnQLErqnC=eSeERv8jg-zQ@mail.gmail.com>
 <f59c6e9f-2892-32da-62f8-8bbeec18ee4c@schaufler-ca.com>
 <CAG48ez0yF0u=QBLVL2XrGB8r8ouQj-_aS9SScu4O4f+LhZxCDw@mail.gmail.com>
 <e0c1fab9-cb97-d5af-1f4b-f15b6b2097fd@schaufler-ca.com>
 <CAG48ez3qc+2sc6xTJQVqLTRcjCiw_Adx13KT3OvPMCjBLjZvgA@mail.gmail.com>
 <6bd2de29-b46a-1d24-4c73-9e4e0f3f6eea@schaufler-ca.com>
In-Reply-To: <6bd2de29-b46a-1d24-4c73-9e4e0f3f6eea@schaufler-ca.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 5 Oct 2021 02:26:44 +0200
Message-ID: <CAG48ez0RM6NGZLdEjaqU9KmaOgeFR6cSeNo50XG9oaFxC_ayYw@mail.gmail.com>
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

On Tue, Oct 5, 2021 at 1:38 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> On 10/4/2021 3:28 PM, Jann Horn wrote:
> > On Mon, Oct 4, 2021 at 6:19 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >> On 10/1/2021 3:58 PM, Jann Horn wrote:
> >>> On Fri, Oct 1, 2021 at 10:10 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >>>> On 10/1/2021 12:50 PM, Jann Horn wrote:
> >>>>> On Fri, Oct 1, 2021 at 9:36 PM Jann Horn <jannh@google.com> wrote:
> >>>>>> On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >>>>>>> On 10/1/2021 10:55 AM, Todd Kjos wrote:
> >>>>>>>> Save the struct cred associated with a binder process
> >>>>>>>> at initial open to avoid potential race conditions
> >>>>>>>> when converting to a security ID.
> >>>>>>>>
> >>>>>>>> Since binder was integrated with selinux, it has passed
> >>>>>>>> 'struct task_struct' associated with the binder_proc
> >>>>>>>> to represent the source and target of transactions.
> >>>>>>>> The conversion of task to SID was then done in the hook
> >>>>>>>> implementations. It turns out that there are race conditions
> >>>>>>>> which can result in an incorrect security context being used.
> >>>>>>> In the LSM stacking patch set I've been posting for a while
> >>>>>>> (on version 29 now) I use information from the task structure
> >>>>>>> to ensure that the security information passed via the binder
> >>>>>>> interface is agreeable to both sides. Passing the cred will
> >>>>>>> make it impossible to do this check. The task information
> >>>>>>> required is not appropriate to have in the cred.
> >>>>>> Why not? Why can't you put the security identity of the task into the creds?
> >>>>> Ah, I get it now, you're concerned about different processes wanting
> >>>>> to see security contexts formatted differently (e.g. printing the
> >>>>> SELinux label vs printing the AppArmor label), right?
> >>>> That is correct.
> >>>>
> >>>>> But still, I don't think you can pull that information from the
> >>>>> receiving task. Maybe the easiest solution would be to also store that
> >>>>> in the creds? Or you'd have to manually grab that information when
> >>>>> /dev/binder is opened.
> >>>> I'm storing the information in the task security blob because that's
> >>>> the appropriate scope. Today the LSM hook is given both task_struct's.
> >>> Which is wrong, because you have no idea who the semantic "recipient
> >>> task" is - any task that has a mapping of the binder fd can
> >>> effectively receive transactions from it.
> >>>
> >>> (And the current "sender task" is also wrong, because binder looks at
> >>> the task that opened the binder device, not the task currently
> >>> performing the action.)
> >> I'm confused. Are you saying that the existing binder code is
> >> completely broken? Are you saying that neither "task" is correct?
> > Yeah, basically
>
> Well, hot biscuits and gravy!
>
> >  - but luckily the actual impact this has is limited by
> > the transitions that SELinux permits. If domain1 has no way to
> > transition to domain2, then it can't abuse this bug to pretend to be
> > domain2. I do have a reproducer that lets Android's "shell" domain
> > send a binder transaction that appears to come from "runas", but
> > luckily "runas" has no interesting privileges with regards to binder,
> > so that's not exploitable.
>
> You're counting on the peculiarities of the SELinux policy you're
> assuming is used to mask the fact that the hook isn't really doing
> what it is supposed to?  Ouch.

I'm not saying I like the current situation - I do think that this
needs to change. I'm just saying it probably isn't *exploitable*, and
exploitability often hinges on these little circumstantial details.

> >> How does passing the creds from the wrong tasks "fix" the problem?
> > This patch is not passing the creds from the "wrong" tasks at all. It
> > relies on the basic idea that when a security context opens a
> > resource, and then hands that resource to another context for
> > read/write operations, then you can effectively treat this as a
> > delegation of privileges from the original opener, and perform access
> > checks against the credentials using which the resource was opened.
>
> OK. I can understand that without endorsing it.
>
> > In particular, we already have those semantics in the core kernel for
> > ->read() and ->write() VFS operations - they are *not allowed* to look
> > at the credentials of the caller, and if they want to make security
> > checks, they have to instead check against file->f_cred, which are the
> > credentials using which the file was originally opened. (Yes, some
> > places still get that wrong.) Passing a file descriptor to another
> > task is a delegation of access, and the other task can then call
> > syscalls like read() / write() / mmap() on the file descriptor without
> > needing to have any access to the underlying file.
>
> A mechanism sufficiently entrenched.

It's not just "entrenched", it is a fundamental requirement for being
able to use file descriptor passing with syscalls like write(). If
task A gives a file descriptor to task B, then task B must be able to
write() to that FD without having to worry that the FD actually refers
to some sort of special file that interprets the written data as some
type of command, or something like that, and that this leads to task B
unknowingly passing through access checks.

> > You can't really attribute binder transactions to specific tasks that
> > are actually involved in the specific transaction, neither on the
> > sending side nor on the receiving side, because binder is built around
> > passing data through memory mappings. Memory mappings can be accessed
> > by multiple tasks, and even a task that does not currently have it
> > mapped could e.g. map it at a later time. And on top of that you have
> > the problem that the receiving task might also go through privileged
> > execve() transitions.
>
> OK. I'm curious now as to why the task_struct was being passed to the
> hook in the first place.

Probably because that's what most other LSM hooks looked like and the
authors/reviewers of the patch didn't realize that this model doesn't
really work for binder? FWIW, these hooks were added in commit
79af73079d75 ("Add security hooks to binder and implement the hooks
for SELinux."). The commit message also just talks about "processes".

> And about where you are getting the cred from
> if not a task.

This patch still ultimately gets the creds from a task. But it's not
looking at the *current* credentials of any task, but instead looks at
the credentials that the task that opened /dev/binder had at that
point.

> >>>> It's easy to compare to make sure the tasks are compatible.
> >>> It would be, if you actually had a pair of tasks that accurately
> >>> represent the sender and the recipient.
> >>>
> >>>> Adding the
> >>>> information to the cred would be yet another case where the scope of
> >>>> security information is wrong.
> >>> Can you elaborate on why you think that?
> >> The information identifies how the task is going to display
> >> the security "context". It isn't used in access checks.
> > But it is data that AFAICS needs to be preserved in the same places
> > where the creds need to be preserved, and it is also related to
> > security labels, so isn't "struct cred" a logical place to stuff it
> > anyway?
>
> I am probably the only person on the planet who dislikes shared creds.
> One of the things that made me happiest when I switched from UNIX
> development to Linux was that it didn't have shared creds and all the
> associated management. Oh well. Yes, it could go in the cred.
>
> But that raises another question. Where are the creds coming from?

They are the creds that the task that opened /dev/binder had.

> Is it even rational to make access decisions based on them?

Yes, if you assume that handing file descriptors or memory mappings to
other security contexts constitutes delegation of privilege.

> You've
> explained how SELinux ends up with an Uncle Bob, but that's doesn't
> leave me confident that another security module would be able to
> come up with something sensible.

Just like SELinux, they can stuff information about a task's identity
into the cred security blob. See e.g. AppArmor, which AFAICS also does
that.

> At this point I'm really looking for something that I can put in
> the change log explaining why creds work and task_structs don't.

creds work because they can snapshot the privileges a task had at some
point in time for future security checks. task_structs don't work
because you can't use them to figure out which privileges a task had
in the past (or will have in the future).
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
