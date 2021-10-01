Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7D541F5D0
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 21:36:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58708845D7;
	Fri,  1 Oct 2021 19:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VSjGzOU1xurH; Fri,  1 Oct 2021 19:36:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3EBD845CB;
	Fri,  1 Oct 2021 19:36:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33E071BF41E
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 19:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 304AC845C9
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 19:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i8_oJENMuOGo for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 19:36:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com
 [IPv6:2607:f8b0:4864:20::e31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6543B8449D
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 19:36:31 +0000 (UTC)
Received: by mail-vs1-xe31.google.com with SMTP id l19so12619373vst.7
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 12:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ncpD09HrWdsLy8bDLfJfKviG+ORhH5WPZobcjdnhN2Y=;
 b=h4JxF1Gz8/rZtQryZ58tzfrjmFQJHy8pXdA+XVyH9Fqdb0qfc5YRuk9Br2pZkYfA3Z
 u+c7gvbgOjnZcggR3qC0TZrm5H/4U2VSlQEe+vCWlSCzpMyavpFYZJyFPdE/V2V6TOp5
 8+ZC21PGqakdfItweP6Uf7vaivNHbYZiE+bHh2HCAVXycpRxEq6lJdFrrfnw8wz11MJH
 ID2HwbFskMK01GXRjdgbr+ucQVwTYaXOaZsez8o+ID1uQvTOR3zCr6meo6NqUxecvdyh
 u6QNLNgGQiLmEP2JwJXgPeBk6HY+I0+GGQAhztNT3MG5wdZw5hy3sxsKPb0GLFY00pSA
 +TOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ncpD09HrWdsLy8bDLfJfKviG+ORhH5WPZobcjdnhN2Y=;
 b=cKsJcc3bBKyckNNO5HH4RvungwnBv/MVeU1FT9YVVNRGSgBKcTx9X8n+4FHaoXGZNE
 ekzHA7fBUkLHGD8n112puAnFCnq5IK/kv4UbpfNJ8vHtlI5pWVwymBlTD949s2OaPryc
 I5LVUxHWxSdmmsSfq011yxmLzvzzOdO7Y4ZYb297loUHshpdVwVpLSX+Pn8ktNZDtIqH
 yZmmq1ZyYtquanXIPA78Gh/51K9761FTEabWYX7JVUrFSxdLnjvxWgn9nfBIKV1lAZC2
 Bbb9zBi/ZOj+YfPicu6Vj+UShWt6bx/JxptUIi+P/IwqaCTHjpcvVCJub29VQwwY283V
 t6GQ==
X-Gm-Message-State: AOAM530jYKq/YRyrk3fKBnKPrUu76kIvKLBEPmSnVMv0RxV4n90sQqJD
 yrXbu1y43Gibz+Kb8MLZrLIaN/dAkRiR5y3veiuN/A==
X-Google-Smtp-Source: ABdhPJwsGl7nxAallIVBRgklsPwI+PeKHMlEt+Axurp07KyiWVIGR4YqquAuQY5TQelPRo437fBIf/q1Hw1HKn43oKM=
X-Received: by 2002:a67:eb95:: with SMTP id e21mr6360791vso.53.1633116990129; 
 Fri, 01 Oct 2021 12:36:30 -0700 (PDT)
MIME-Version: 1.0
References: <20211001175521.3853257-1-tkjos@google.com>
 <c6a650e4-15e4-2943-f759-0e9577784c7a@schaufler-ca.com>
In-Reply-To: <c6a650e4-15e4-2943-f759-0e9577784c7a@schaufler-ca.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 1 Oct 2021 21:36:03 +0200
Message-ID: <CAG48ez2tejBUXJGf0R9qpEiauL9-ABgkds6mZTQD7sZKLMdAAQ@mail.gmail.com>
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

On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> On 10/1/2021 10:55 AM, Todd Kjos wrote:
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
>
> In the LSM stacking patch set I've been posting for a while
> (on version 29 now) I use information from the task structure
> to ensure that the security information passed via the binder
> interface is agreeable to both sides. Passing the cred will
> make it impossible to do this check. The task information
> required is not appropriate to have in the cred.

Why not? Why can't you put the security identity of the task into the creds?

SELinux already identifies tasks through their creds (see e.g.
task_sid_obj()), and doesn't use the task security blob at all.
Apparmor also identifies tasks through their creds (see
aa_current_raw_label() and __aa_task_raw_label()), and just uses the
task blob to store information about other labels that the process may
transition from or to.

From what I can tell, the only LSM that actually identifies the
caller's security context through the task security blob is Tomoyo. As
far as I know, that means Tomoyo is kinda broken. (But does anyone
even use Tomoyo?)

> I understand that there are no users of the binder driver
> other than SELinux in Android upstream today. That's not
> the issue. Two processes on a system with SELinux and AppArmor
> together may be required to provide incompatible results
> from security_secid_to_secctx()/security_secctx_to_secid().
> If it's impossible to detect this incompatibility it's
> impossible to prevent serious confusion.
>
> The LSM stacking isn't upstream yet. But I hope to have it
> there Real Soon Now. If there's another way to fix this that
> doesn't remove the task_struct it would avoid my having to
> put it back.

You fundamentally can't identify the recipient of a binder transaction
through its task_struct, because the recipient might have given the
binder FD to a child process and executed a setuid binary since it
opened /dev/binder. If you look at the credentials of the task on the
other side, you'll just see the setuid binary that doesn't even know
it has an open binder FD, and won't see the child process that is
actually going to receive the transaction.

You can't even usefully identify the opener of a file through its
task_struct - especially with io_uring, any userspace process can
cause kernel threads to open files and perform I/O on them *on behalf
of userspace* - and this "on behalf of" relationship is only visible
in the overridden credentials. (And yes, I do think that means Tomoyo
doesn't work properly on systems with io_uring.)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
