Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 516A3422C46
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 17:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9E0D83BB6;
	Tue,  5 Oct 2021 15:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9FmXrj9MtM9T; Tue,  5 Oct 2021 15:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80D8A83BD9;
	Tue,  5 Oct 2021 15:21:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78F7F1BF315
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 15:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74ED3606CB
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 15:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E8VBFq7Khcm3 for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 15:21:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9550C606BF
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 15:21:41 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id a73so17146532pge.0
 for <devel@driverdev.osuosl.org>; Tue, 05 Oct 2021 08:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+lNka2aLbqjUSUfWF71jQPzjgWNWx5zDCQ6S7guMnrU=;
 b=fT9Y0JiQCXvS33WmhjslShGSQll/aXMFYWGXvTuUxWnsPbaxo1ghr69fyR9A9tegvG
 o19dpiNzHhzjGSftj+vmwZfr2ZaHbk3kFrEYlUqea7YJJ6GkiYti1ki0t/EYtzWaUzMQ
 y88m8n1PTxsV9m3i0N8dZYbqGcrsjT9VgO6TuzhDqZG1ZLGbypjmcHO3NzLSwryiJnB3
 BTSBWEt7ay1AiKF04INyqC9V7YBk3EWCu7JQreSukqQhio4/wOKJ6W89/A4yRLRkUk3b
 H65HEirjFgCeBAgqpBoQNHudx2bXfI2i9gzni3GUb0m0l0P4QRfYZLcaKeZt8bgykrMA
 Zuig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+lNka2aLbqjUSUfWF71jQPzjgWNWx5zDCQ6S7guMnrU=;
 b=eevYXR8jUnNxRD2VshOF1aajzx5ce4S8uIjKUK9UCRvof5+inALDRD/mq1eqaSHua8
 Be1iDUzOu5ZryM0QP1o3ljQ5OqRnrR67j/oQXlM2IHy/GbrbUA2SbwVuCsmQ+2tzibu7
 KRlT8JGQZ/VsVaqYrHwHGDVBjMIxNhzvRRJWitpqOVkE0yxAnYykByY22UGeLxz/SwXp
 7ouwgiVxcQhLEefMzDmpVlJJurBTnwgf8XaSSoVRF/O8OsIx+Ejg6guZQdle7YiWhKFn
 FACsE3f9G2maWstpc1cB8624DDMHTw/CqfnrW+2aRJjYER2dQobxfi6ukrkJE9l3hQkv
 PoMw==
X-Gm-Message-State: AOAM532grrrPi+8mJWAoDxPHfYNDuNkqf9ouu7a0qo/5ETpoplQZKJND
 WtAiaChNnMWXRt3EpTJYoc787M2YIB4zG8AI24U=
X-Google-Smtp-Source: ABdhPJwsKIE52OgsGTGWS8kCA2UP/ttwfK+T59W9iowl0RkVraG9XCYFntiYTE7Wsm4OhJ1UX3kFfEc9SoQWjAIuEx0=
X-Received: by 2002:a63:ec57:: with SMTP id r23mr16016671pgj.17.1633447300874; 
 Tue, 05 Oct 2021 08:21:40 -0700 (PDT)
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
 <CAG48ez0RM6NGZLdEjaqU9KmaOgeFR6cSeNo50XG9oaFxC_ayYw@mail.gmail.com>
In-Reply-To: <CAG48ez0RM6NGZLdEjaqU9KmaOgeFR6cSeNo50XG9oaFxC_ayYw@mail.gmail.com>
From: Stephen Smalley <stephen.smalley.work@gmail.com>
Date: Tue, 5 Oct 2021 11:21:29 -0400
Message-ID: <CAEjxPJ4X4N_zgH4oRbdkZi21mvS--ExDb_1gad09buMHshB_hQ@mail.gmail.com>
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
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
Cc: devel@driverdev.osuosl.org,
 LSM List <linux-security-module@vger.kernel.org>,
 "Cc: Android Kernel" <kernel-team@android.com>, tkjos@android.com,
 Paul Moore <paul@paul-moore.com>, Kees Cook <keescook@chromium.org>,
 SElinux list <selinux@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>, arve@android.com,
 stable@vger.kernel.org, Jeffrey Vander Stoep <jeffv@google.com>,
 Casey Schaufler <casey@schaufler-ca.com>, Eric Paris <eparis@parisplace.org>,
 maco@android.com, christian@brauner.io, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 4, 2021 at 8:27 PM Jann Horn <jannh@google.com> wrote:
>
> On Tue, Oct 5, 2021 at 1:38 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > On 10/4/2021 3:28 PM, Jann Horn wrote:
> > > On Mon, Oct 4, 2021 at 6:19 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > >> On 10/1/2021 3:58 PM, Jann Horn wrote:
> > >>> On Fri, Oct 1, 2021 at 10:10 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > >>>> On 10/1/2021 12:50 PM, Jann Horn wrote:
> > >>>>> On Fri, Oct 1, 2021 at 9:36 PM Jann Horn <jannh@google.com> wrote:
> > >>>>>> On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > >>>>>>> On 10/1/2021 10:55 AM, Todd Kjos wrote:
> > >>>>>>>> Save the struct cred associated with a binder process
> > >>>>>>>> at initial open to avoid potential race conditions
> > >>>>>>>> when converting to a security ID.
> > >>>>>>>>
> > >>>>>>>> Since binder was integrated with selinux, it has passed
> > >>>>>>>> 'struct task_struct' associated with the binder_proc
> > >>>>>>>> to represent the source and target of transactions.
> > >>>>>>>> The conversion of task to SID was then done in the hook
> > >>>>>>>> implementations. It turns out that there are race conditions
> > >>>>>>>> which can result in an incorrect security context being used.
> > >>>>>>> In the LSM stacking patch set I've been posting for a while
> > >>>>>>> (on version 29 now) I use information from the task structure
> > >>>>>>> to ensure that the security information passed via the binder
> > >>>>>>> interface is agreeable to both sides. Passing the cred will
> > >>>>>>> make it impossible to do this check. The task information
> > >>>>>>> required is not appropriate to have in the cred.
> > >>>>>> Why not? Why can't you put the security identity of the task into the creds?
> > >>>>> Ah, I get it now, you're concerned about different processes wanting
> > >>>>> to see security contexts formatted differently (e.g. printing the
> > >>>>> SELinux label vs printing the AppArmor label), right?
> > >>>> That is correct.
> > >>>>
> > >>>>> But still, I don't think you can pull that information from the
> > >>>>> receiving task. Maybe the easiest solution would be to also store that
> > >>>>> in the creds? Or you'd have to manually grab that information when
> > >>>>> /dev/binder is opened.
> > >>>> I'm storing the information in the task security blob because that's
> > >>>> the appropriate scope. Today the LSM hook is given both task_struct's.
> > >>> Which is wrong, because you have no idea who the semantic "recipient
> > >>> task" is - any task that has a mapping of the binder fd can
> > >>> effectively receive transactions from it.
> > >>>
> > >>> (And the current "sender task" is also wrong, because binder looks at
> > >>> the task that opened the binder device, not the task currently
> > >>> performing the action.)
> > >> I'm confused. Are you saying that the existing binder code is
> > >> completely broken? Are you saying that neither "task" is correct?
> > > Yeah, basically
> >
> > Well, hot biscuits and gravy!
> >
> > >  - but luckily the actual impact this has is limited by
> > > the transitions that SELinux permits. If domain1 has no way to
> > > transition to domain2, then it can't abuse this bug to pretend to be
> > > domain2. I do have a reproducer that lets Android's "shell" domain
> > > send a binder transaction that appears to come from "runas", but
> > > luckily "runas" has no interesting privileges with regards to binder,
> > > so that's not exploitable.
> >
> > You're counting on the peculiarities of the SELinux policy you're
> > assuming is used to mask the fact that the hook isn't really doing
> > what it is supposed to?  Ouch.
>
> I'm not saying I like the current situation - I do think that this
> needs to change. I'm just saying it probably isn't *exploitable*, and
> exploitability often hinges on these little circumstantial details.
>
> > >> How does passing the creds from the wrong tasks "fix" the problem?
> > > This patch is not passing the creds from the "wrong" tasks at all. It
> > > relies on the basic idea that when a security context opens a
> > > resource, and then hands that resource to another context for
> > > read/write operations, then you can effectively treat this as a
> > > delegation of privileges from the original opener, and perform access
> > > checks against the credentials using which the resource was opened.
> >
> > OK. I can understand that without endorsing it.
> >
> > > In particular, we already have those semantics in the core kernel for
> > > ->read() and ->write() VFS operations - they are *not allowed* to look
> > > at the credentials of the caller, and if they want to make security
> > > checks, they have to instead check against file->f_cred, which are the
> > > credentials using which the file was originally opened. (Yes, some
> > > places still get that wrong.) Passing a file descriptor to another
> > > task is a delegation of access, and the other task can then call
> > > syscalls like read() / write() / mmap() on the file descriptor without
> > > needing to have any access to the underlying file.
> >
> > A mechanism sufficiently entrenched.
>
> It's not just "entrenched", it is a fundamental requirement for being
> able to use file descriptor passing with syscalls like write(). If
> task A gives a file descriptor to task B, then task B must be able to
> write() to that FD without having to worry that the FD actually refers
> to some sort of special file that interprets the written data as some
> type of command, or something like that, and that this leads to task B
> unknowingly passing through access checks.
>
> > > You can't really attribute binder transactions to specific tasks that
> > > are actually involved in the specific transaction, neither on the
> > > sending side nor on the receiving side, because binder is built around
> > > passing data through memory mappings. Memory mappings can be accessed
> > > by multiple tasks, and even a task that does not currently have it
> > > mapped could e.g. map it at a later time. And on top of that you have
> > > the problem that the receiving task might also go through privileged
> > > execve() transitions.
> >
> > OK. I'm curious now as to why the task_struct was being passed to the
> > hook in the first place.
>
> Probably because that's what most other LSM hooks looked like and the
> authors/reviewers of the patch didn't realize that this model doesn't
> really work for binder? FWIW, these hooks were added in commit
> 79af73079d75 ("Add security hooks to binder and implement the hooks
> for SELinux."). The commit message also just talks about "processes".

Note that in the same code path (binder_transaction), sender_euid is
set from proc->tsk and security_ctx is based on proc->tsk. If we are
changing the hooks to operate on the opener cred, then presumably we
should be doing that for sender_euid and replace the
security_task_getsecid_obj() call with security_cred_getsecid()?

NB Mandatory Access Control doesn't allow uncontrolled delegation,
hence typically checks against the subject credential either at
delegation/transfer or use or both. That's true in other places too,
e.g. file_permission, socket_sendmsg.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
