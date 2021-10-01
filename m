Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEA141F7ED
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Oct 2021 00:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73603845CF;
	Fri,  1 Oct 2021 22:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1hLSnq8Pbqq; Fri,  1 Oct 2021 22:58:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A840F845BA;
	Fri,  1 Oct 2021 22:58:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CD711BF8A8
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 22:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07747845BA
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 22:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8yhKS1Ad9F3 for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 22:58:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3EE79845B9
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 22:58:33 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id m3so43806058lfu.2
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 15:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZQM3XM8xdLXddRKZW1XX+RPtGmZTJVt7CAVEe+7hVj0=;
 b=HrPYP0UEVwuiTywHkbK3uNSlC5jNJRCt7l8EaoQMi0GpVMSFINwhrAt0s6xN2VsWnd
 Myc5mNipqTNZcxOhUQEgTc+wNrFHHij90mG+lt2XElY+2NHha97StErPB8G12+Q/FdL7
 kv/yBjF0tdcFFbh62Zzs85vTUFMkD27saQD001r+EBb1yzThD0/29HuX9TwewcOvoPID
 6NmUoW0KSr6AgRtw5foBD1kqg7x7DEk0pD9byZrdGV8vM4cRAhBOa6eltRHMuoC79vmd
 2qSPM4v3FgGl7AoaJFBY9KUW1L0pWlhtgS3WiXRLGRjfXTBWphGxNH6YWjpddXQ9JqG2
 uaRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZQM3XM8xdLXddRKZW1XX+RPtGmZTJVt7CAVEe+7hVj0=;
 b=Gw2psIoSm5m+kATLSUouRhkLuynqkLTfWZHtg8xWRWajIqF4SCnFur68OYj3SnYM1s
 qnF8mjUNkxVhDU9wdbi5NSocyffO00USChu2oXaCO8s23D9sxcBbyWMOaFSDlwgH165m
 3Eopjv097XU+61PYqiMj76/gEpxpWOfZlrP/2vg4uJfLlIvZtf7RD+xNw/uuXTbJnwQ7
 O6R98CiOIR5NqtOA0+ZMKEzLEN1grAD6jsZQCZigc90Bgeu+ePNIGhpFSAxzOnvowA9h
 Qo5jx0csYYLUOdrbbzDKsFZRncLyQIfR5VvxUDUDBWV82Q2Ykyu7+5gGbcB0/iH+w0/I
 zyhg==
X-Gm-Message-State: AOAM53347/B0iPwszouldeciKiDk+rQfP8kJCWMHbbA1z1DzlRNbbhR1
 I5sRbMedcBsW1hfzZZMVlF6lNc5lWqiuFZcjJBhu8A==
X-Google-Smtp-Source: ABdhPJxDRqKz8OAWDsnkLn4xH3d0hvk5cFN9OA2tx3QD1FlVd+hZKPEVe8R6GTnDW2zwiLwPxa2Ij4nuoD+ZhZ0oE9A=
X-Received: by 2002:a05:6512:20cb:: with SMTP id
 u11mr633226lfr.237.1633129110528; 
 Fri, 01 Oct 2021 15:58:30 -0700 (PDT)
MIME-Version: 1.0
References: <20211001175521.3853257-1-tkjos@google.com>
 <c6a650e4-15e4-2943-f759-0e9577784c7a@schaufler-ca.com>
 <CAG48ez2tejBUXJGf0R9qpEiauL9-ABgkds6mZTQD7sZKLMdAAQ@mail.gmail.com>
 <CAG48ez1SRau1Tnge5HVqxCFsNCizmnQLErqnC=eSeERv8jg-zQ@mail.gmail.com>
 <f59c6e9f-2892-32da-62f8-8bbeec18ee4c@schaufler-ca.com>
In-Reply-To: <f59c6e9f-2892-32da-62f8-8bbeec18ee4c@schaufler-ca.com>
From: Jann Horn <jannh@google.com>
Date: Sat, 2 Oct 2021 00:58:04 +0200
Message-ID: <CAG48ez0yF0u=QBLVL2XrGB8r8ouQj-_aS9SScu4O4f+LhZxCDw@mail.gmail.com>
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

On Fri, Oct 1, 2021 at 10:10 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> On 10/1/2021 12:50 PM, Jann Horn wrote:
> > On Fri, Oct 1, 2021 at 9:36 PM Jann Horn <jannh@google.com> wrote:
> >> On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >>> On 10/1/2021 10:55 AM, Todd Kjos wrote:
> >>>> Save the struct cred associated with a binder process
> >>>> at initial open to avoid potential race conditions
> >>>> when converting to a security ID.
> >>>>
> >>>> Since binder was integrated with selinux, it has passed
> >>>> 'struct task_struct' associated with the binder_proc
> >>>> to represent the source and target of transactions.
> >>>> The conversion of task to SID was then done in the hook
> >>>> implementations. It turns out that there are race conditions
> >>>> which can result in an incorrect security context being used.
> >>> In the LSM stacking patch set I've been posting for a while
> >>> (on version 29 now) I use information from the task structure
> >>> to ensure that the security information passed via the binder
> >>> interface is agreeable to both sides. Passing the cred will
> >>> make it impossible to do this check. The task information
> >>> required is not appropriate to have in the cred.
> >> Why not? Why can't you put the security identity of the task into the creds?
> > Ah, I get it now, you're concerned about different processes wanting
> > to see security contexts formatted differently (e.g. printing the
> > SELinux label vs printing the AppArmor label), right?
>
> That is correct.
>
> > But still, I don't think you can pull that information from the
> > receiving task. Maybe the easiest solution would be to also store that
> > in the creds? Or you'd have to manually grab that information when
> > /dev/binder is opened.
>
> I'm storing the information in the task security blob because that's
> the appropriate scope. Today the LSM hook is given both task_struct's.

Which is wrong, because you have no idea who the semantic "recipient
task" is - any task that has a mapping of the binder fd can
effectively receive transactions from it.

(And the current "sender task" is also wrong, because binder looks at
the task that opened the binder device, not the task currently
performing the action.)

> It's easy to compare to make sure the tasks are compatible.

It would be, if you actually had a pair of tasks that accurately
represent the sender and the recipient.

> Adding the
> information to the cred would be yet another case where the scope of
> security information is wrong.

Can you elaborate on why you think that?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
