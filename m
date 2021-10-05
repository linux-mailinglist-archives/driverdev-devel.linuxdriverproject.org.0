Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60403422E60
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 18:49:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93EB260C12;
	Tue,  5 Oct 2021 16:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7v8gLThFjLTT; Tue,  5 Oct 2021 16:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 581E860BD2;
	Tue,  5 Oct 2021 16:49:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04AE11BF2F2
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 16:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E65F140839
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 16:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KAR67vYYMfb for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 16:49:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C515240829
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 16:49:19 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id y26so89474439lfa.11
 for <devel@driverdev.osuosl.org>; Tue, 05 Oct 2021 09:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qjakKZPtbZWA5oTWQgTBXy+CXYr6mwaPBB/ZlgtkOp0=;
 b=cO+svndxQ62I/bJgFPgZstCjGW3FddPDTeMaWLwXyTcw92L2tHgA1Zg/os0PWmWTxT
 LHPwAES1BxasUSzhwFICCkAx6hJwBuPVMjL+Iu3LgvUutigQfC4EkppgKmCRUBRYPnN9
 dg7e1bUuq8Syj2ftQuQlk2Ym045RRJSJTh+g6eVbj+bvDGwz4pl4xyMru2bUyef2RUCh
 s291lAgPlI6gQ/JP1Va1JMWQoa0N25G+GydSJmEzA8xCSEYPKoX67fK4o6dy31hBUJfF
 q5AuAofDODmeqwouv//YEFoPwfed75wGKUSLecs/eY7fciE3EA7WlkT3F/io0dF+I6ij
 EDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qjakKZPtbZWA5oTWQgTBXy+CXYr6mwaPBB/ZlgtkOp0=;
 b=o9Liao2ew+8UOuLUmO8QN/mWVz4a/tdaZUo9CbQqvqn20KmKdq18NjdBekxCasFvCM
 RLbDaIpI9VL3LJn4vho2oguN7UvQwa1mnVM3O2KUQE7SJcQu58gssPmqol3RY+EZsHEf
 oWtvgw0k29qI4rlKmTCX73Ny7nL4TZKWlPjJ/US60lHwxw5WhYLNCyI6iYyazerHWd2G
 tvEtZWgbiSsqAZPd6gutTY0F8KehBeqbHVv80RkmdfSgWLVFA2YjJqlhvozY9nn+Myo3
 p3mo2FTRYHsjg9sP9U4B40sKehdveT05+3Of9AiEUKpx3ML7uz0rCGx2LPq7AcB35zK2
 Tcuw==
X-Gm-Message-State: AOAM533Z+pzml0Iz8DGzFh+VgskfLlr7MfR8pFACOtkyiG4grT0IUGkC
 IjDPedWvjI6sM/P+aDTecbhK2hX7JN1V6CsaUY2nOg==
X-Google-Smtp-Source: ABdhPJzJh6E2l223ByILrDAxOHtlif4f3xZxwyK5yYQRQyj891znVGUW/Hgk2IL2IXSDrYQZbirrc/mECq55wSDiTKc=
X-Received: by 2002:a05:6512:2290:: with SMTP id
 f16mr4526054lfu.668.1633452557160; 
 Tue, 05 Oct 2021 09:49:17 -0700 (PDT)
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
 <CAEjxPJ4X4N_zgH4oRbdkZi21mvS--ExDb_1gad09buMHshB_hQ@mail.gmail.com>
In-Reply-To: <CAEjxPJ4X4N_zgH4oRbdkZi21mvS--ExDb_1gad09buMHshB_hQ@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Tue, 5 Oct 2021 09:49:05 -0700
Message-ID: <CAHRSSEwVONsmf8JHo0PsDmexOqamKTsLF2BkpXZfAvsJvDw0ew@mail.gmail.com>
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
To: Stephen Smalley <stephen.smalley.work@gmail.com>
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
 Jann Horn <jannh@google.com>, SElinux list <selinux@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>, arve@android.com,
 stable@vger.kernel.org, Jeffrey Vander Stoep <jeffv@google.com>,
 Casey Schaufler <casey@schaufler-ca.com>, Eric Paris <eparis@parisplace.org>,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 5, 2021 at 8:21 AM Stephen Smalley
<stephen.smalley.work@gmail.com> wrote:
>
> On Mon, Oct 4, 2021 at 8:27 PM Jann Horn <jannh@google.com> wrote:
> >
> > On Tue, Oct 5, 2021 at 1:38 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > > On 10/4/2021 3:28 PM, Jann Horn wrote:
> > > > On Mon, Oct 4, 2021 at 6:19 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > > >> On 10/1/2021 3:58 PM, Jann Horn wrote:
> > > >>> On Fri, Oct 1, 2021 at 10:10 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > > >>>> On 10/1/2021 12:50 PM, Jann Horn wrote:
> > > >>>>> On Fri, Oct 1, 2021 at 9:36 PM Jann Horn <jannh@google.com> wrote:
> > > >>>>>> On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > > >>>>>>> On 10/1/2021 10:55 AM, Todd Kjos wrote:
> > > >>>>>>>> Save the struct cred associated with a binder process
> > > >>>>>>>> at initial open to avoid potential race conditions
> > > >>>>>>>> when converting to a security ID.
> > > >>>>>>>>
> > > >>>>>>>> Since binder was integrated with selinux, it has passed
> > > >>>>>>>> 'struct task_struct' associated with the binder_proc
> > > >>>>>>>> to represent the source and target of transactions.
> > > >>>>>>>> The conversion of task to SID was then done in the hook
> > > >>>>>>>> implementations. It turns out that there are race conditions
> > > >>>>>>>> which can result in an incorrect security context being used.
> > > >>>>>>> In the LSM stacking patch set I've been posting for a while
> > > >>>>>>> (on version 29 now) I use information from the task structure
> > > >>>>>>> to ensure that the security information passed via the binder
> > > >>>>>>> interface is agreeable to both sides. Passing the cred will
> > > >>>>>>> make it impossible to do this check. The task information
> > > >>>>>>> required is not appropriate to have in the cred.
> > > >>>>>> Why not? Why can't you put the security identity of the task into the creds?
> > > >>>>> Ah, I get it now, you're concerned about different processes wanting
> > > >>>>> to see security contexts formatted differently (e.g. printing the
> > > >>>>> SELinux label vs printing the AppArmor label), right?
> > > >>>> That is correct.
> > > >>>>
> > > >>>>> But still, I don't think you can pull that information from the
> > > >>>>> receiving task. Maybe the easiest solution would be to also store that
> > > >>>>> in the creds? Or you'd have to manually grab that information when
> > > >>>>> /dev/binder is opened.
> > > >>>> I'm storing the information in the task security blob because that's
> > > >>>> the appropriate scope. Today the LSM hook is given both task_struct's.
> > > >>> Which is wrong, because you have no idea who the semantic "recipient
> > > >>> task" is - any task that has a mapping of the binder fd can
> > > >>> effectively receive transactions from it.
> > > >>>
> > > >>> (And the current "sender task" is also wrong, because binder looks at
> > > >>> the task that opened the binder device, not the task currently
> > > >>> performing the action.)
> > > >> I'm confused. Are you saying that the existing binder code is
> > > >> completely broken? Are you saying that neither "task" is correct?
> > > > Yeah, basically
> > >
> > > Well, hot biscuits and gravy!
> > >
> > > >  - but luckily the actual impact this has is limited by
> > > > the transitions that SELinux permits. If domain1 has no way to
> > > > transition to domain2, then it can't abuse this bug to pretend to be
> > > > domain2. I do have a reproducer that lets Android's "shell" domain
> > > > send a binder transaction that appears to come from "runas", but
> > > > luckily "runas" has no interesting privileges with regards to binder,
> > > > so that's not exploitable.
> > >
> > > You're counting on the peculiarities of the SELinux policy you're
> > > assuming is used to mask the fact that the hook isn't really doing
> > > what it is supposed to?  Ouch.
> >
> > I'm not saying I like the current situation - I do think that this
> > needs to change. I'm just saying it probably isn't *exploitable*, and
> > exploitability often hinges on these little circumstantial details.
> >
> > > >> How does passing the creds from the wrong tasks "fix" the problem?
> > > > This patch is not passing the creds from the "wrong" tasks at all. It
> > > > relies on the basic idea that when a security context opens a
> > > > resource, and then hands that resource to another context for
> > > > read/write operations, then you can effectively treat this as a
> > > > delegation of privileges from the original opener, and perform access
> > > > checks against the credentials using which the resource was opened.
> > >
> > > OK. I can understand that without endorsing it.
> > >
> > > > In particular, we already have those semantics in the core kernel for
> > > > ->read() and ->write() VFS operations - they are *not allowed* to look
> > > > at the credentials of the caller, and if they want to make security
> > > > checks, they have to instead check against file->f_cred, which are the
> > > > credentials using which the file was originally opened. (Yes, some
> > > > places still get that wrong.) Passing a file descriptor to another
> > > > task is a delegation of access, and the other task can then call
> > > > syscalls like read() / write() / mmap() on the file descriptor without
> > > > needing to have any access to the underlying file.
> > >
> > > A mechanism sufficiently entrenched.
> >
> > It's not just "entrenched", it is a fundamental requirement for being
> > able to use file descriptor passing with syscalls like write(). If
> > task A gives a file descriptor to task B, then task B must be able to
> > write() to that FD without having to worry that the FD actually refers
> > to some sort of special file that interprets the written data as some
> > type of command, or something like that, and that this leads to task B
> > unknowingly passing through access checks.
> >
> > > > You can't really attribute binder transactions to specific tasks that
> > > > are actually involved in the specific transaction, neither on the
> > > > sending side nor on the receiving side, because binder is built around
> > > > passing data through memory mappings. Memory mappings can be accessed
> > > > by multiple tasks, and even a task that does not currently have it
> > > > mapped could e.g. map it at a later time. And on top of that you have
> > > > the problem that the receiving task might also go through privileged
> > > > execve() transitions.
> > >
> > > OK. I'm curious now as to why the task_struct was being passed to the
> > > hook in the first place.
> >
> > Probably because that's what most other LSM hooks looked like and the
> > authors/reviewers of the patch didn't realize that this model doesn't
> > really work for binder? FWIW, these hooks were added in commit
> > 79af73079d75 ("Add security hooks to binder and implement the hooks
> > for SELinux."). The commit message also just talks about "processes".
>
> Note that in the same code path (binder_transaction), sender_euid is
> set from proc->tsk and security_ctx is based on proc->tsk. If we are
> changing the hooks to operate on the opener cred, then presumably we
> should be doing that for sender_euid and replace the
> security_task_getsecid_obj() call with security_cred_getsecid()?

Stephan, do you want that to be included in this patch? Or should I
follow this up with another patch for the sender_euid case?

>
> NB Mandatory Access Control doesn't allow uncontrolled delegation,
> hence typically checks against the subject credential either at
> delegation/transfer or use or both. That's true in other places too,
> e.g. file_permission, socket_sendmsg.
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
