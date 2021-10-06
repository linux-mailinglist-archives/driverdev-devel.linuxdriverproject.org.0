Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A5B4235D1
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 04:28:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8F84403DA;
	Wed,  6 Oct 2021 02:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wElZbnHX6efp; Wed,  6 Oct 2021 02:28:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6218140129;
	Wed,  6 Oct 2021 02:28:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 682301BF33D
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 02:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5765E83AF3
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 02:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7d6meaPbogSu for <devel@linuxdriverproject.org>;
 Wed,  6 Oct 2021 02:27:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com
 [IPv6:2607:f8b0:4864:20::e33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 260C283842
 for <devel@driverdev.osuosl.org>; Wed,  6 Oct 2021 02:27:51 +0000 (UTC)
Received: by mail-vs1-xe33.google.com with SMTP id y14so1296312vsm.9
 for <devel@driverdev.osuosl.org>; Tue, 05 Oct 2021 19:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4OYSce36HFIDKSweIZsHOeEUQcMTMlRZW+u2FdUpafE=;
 b=gHppIZL0NNL41Ah+TizK4cJGOSQt6n8ckgXCCWKJaVG6WuNu6D39wA8hcCUdEJ2ZBF
 qP4uE8XmPBjyiFvPVso2jkrCUkzwGiwtyJdgYFh1W5jA3tUXXB194CJSf1C7SEgMRs4W
 P6IDsUGsVQQvAQ7Amh1603Oup30JJYY0v3AZShcjcLS2cXmQ+BJ6vQoFS+wc7BMdd6bh
 3EMeA44QQpjNXBGt2u4IpozI3Xy6CHpvFOfLvcPRLEmIVi6pIMRUrkMqgtyU0i2mHuuj
 Q0k1kaP8hRW26c/ju0oSzrupcbkC9MJyflrfUTGXotsjd/k5vs3AS5biUUCmwpkqPkfE
 RsZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4OYSce36HFIDKSweIZsHOeEUQcMTMlRZW+u2FdUpafE=;
 b=43Hp/iFTuP3+FZ/0gW54WaTm1DJ8K3oUkoh4r4AtxqH/QyxF9gxKxUNmCkFB8YraMH
 LpO4apGZpF3wh5Jz3dCPPbXGhowkRqunL6Yz7AYxyHmrzO45IyzTFM5nnJi6Xpg5AS5j
 OBfpm9CGviSIZbgFUjBhQGGCKkWYJLYCSO+a2gM8E40jXe8wVEOvBX0DZJ147pCrkWo9
 /rKllA7A1HyRB5yO+6n8esbRu9CxcrLLfnGSuHhYi3JSSvy82vRv6CHDNts0QQzM1x7G
 yJ7Bi3v1mNZ+e5EOU1NoJxuu0nNXBLCLOzCp3WgvmJqfUQY8sDheF48ZJOkewVrh21GL
 2TMg==
X-Gm-Message-State: AOAM530Dzq178sOj841YlxaWoM7s0D8PoeS4gt7ohqpJzIDKMuqPI7ch
 Lp27EGKZentLEOy5CSjxPxVgp5NvRlc7O4+rsxjYjw==
X-Google-Smtp-Source: ABdhPJyTH29CQo/Jwiml4RScXu5onK6nUS1xqUF5+/gSLGjq9q1MVF4srzfle3qW/NbIcsfW6Jj+di+yUzIVAAeTe7Y=
X-Received: by 2002:a67:fd67:: with SMTP id h7mr382372vsa.52.1633487269836;
 Tue, 05 Oct 2021 19:27:49 -0700 (PDT)
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
 <7ec1090d-5bd7-bd05-4f38-07b1cc993721@schaufler-ca.com>
In-Reply-To: <7ec1090d-5bd7-bd05-4f38-07b1cc993721@schaufler-ca.com>
From: Jann Horn <jannh@google.com>
Date: Wed, 6 Oct 2021 04:27:22 +0200
Message-ID: <CAG48ez3ZxzO3fa0T3pE0a4wQYQDvBNY=i+Nj4MtZq-QHtJdFdA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 LSM List <linux-security-module@vger.kernel.org>,
 "Cc: Android Kernel" <kernel-team@android.com>, tkjos@android.com,
 Paul Moore <paul@paul-moore.com>, Kees Cook <keescook@chromium.org>,
 SElinux list <selinux@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, arve@android.com,
 stable@vger.kernel.org, Jeffrey Vander Stoep <jeffv@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 5, 2021 at 6:59 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> On 10/5/2021 8:21 AM, Stephen Smalley wrote:
> > On Mon, Oct 4, 2021 at 8:27 PM Jann Horn <jannh@google.com> wrote:
> >> On Tue, Oct 5, 2021 at 1:38 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >>> On 10/4/2021 3:28 PM, Jann Horn wrote:
> >>>> You can't really attribute binder transactions to specific tasks that
> >>>> are actually involved in the specific transaction, neither on the
> >>>> sending side nor on the receiving side, because binder is built around
> >>>> passing data through memory mappings. Memory mappings can be accessed
> >>>> by multiple tasks, and even a task that does not currently have it
> >>>> mapped could e.g. map it at a later time. And on top of that you have
> >>>> the problem that the receiving task might also go through privileged
> >>>> execve() transitions.
> >>> OK. I'm curious now as to why the task_struct was being passed to the
> >>> hook in the first place.
> >> Probably because that's what most other LSM hooks looked like and the
> >> authors/reviewers of the patch didn't realize that this model doesn't
> >> really work for binder? FWIW, these hooks were added in commit
> >> 79af73079d75 ("Add security hooks to binder and implement the hooks
> >> for SELinux."). The commit message also just talks about "processes".
> > Note that in the same code path (binder_transaction), sender_euid is
> > set from proc->tsk and security_ctx is based on proc->tsk. If we are
> > changing the hooks to operate on the opener cred, then presumably we
> > should be doing that for sender_euid and replace the
> > security_task_getsecid_obj() call with security_cred_getsecid()?
> >
> > NB Mandatory Access Control doesn't allow uncontrolled delegation,
> > hence typically checks against the subject credential either at
> > delegation/transfer or use or both. That's true in other places too,
> > e.g. file_permission, socket_sendmsg.
>
> Terrific. Now I'm even less convinced that either the proposed change
> or the existing code make sense. It's also disturbing that the change
> log claims that the reason for the change is fix a race condition when
> in fact it changes the data being sent to the hook completely.

The race it's referring to is the one between
security_binder_transaction() (which checks for permission to send a
transaction and checks for delegation) and
security_task_getsecid_obj() (which tells the recipient what the
sender's security context is). (It's a good thing Paul noticed that
the v1 patch didn't actually change the security_task_getsecid_obj()
call... somehow I missed that.)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
