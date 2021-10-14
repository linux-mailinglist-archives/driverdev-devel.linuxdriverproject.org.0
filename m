Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 824FF42E3B8
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Oct 2021 23:40:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A6CD407BA;
	Thu, 14 Oct 2021 21:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QCJdL0VsOpoR; Thu, 14 Oct 2021 21:40:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 716114031D;
	Thu, 14 Oct 2021 21:40:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9E5F1BF576
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 21:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A52D6404B2
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 21:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9T2ywmK1FtoF for <devel@linuxdriverproject.org>;
 Thu, 14 Oct 2021 21:40:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBDE64031D
 for <devel@driverdev.osuosl.org>; Thu, 14 Oct 2021 21:40:43 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id y26so32913517lfa.11
 for <devel@driverdev.osuosl.org>; Thu, 14 Oct 2021 14:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bc/19Sw3gCuiuNL5yxr53ROwuXXqpzpfHWWhYwbvjUo=;
 b=kJBigErm8oj6naJt86CzR6I4CvyMKAEXIVyQZPIrMf9IoLfG6qoK2Nq9bXwvpuHo2J
 Lg08sgiU6TkZK1UvhW0mdBh5Q6WXOe6Sg2Kim3mdWddM4s0AeL5swVZ9//9wagHv1vru
 dKFtjaT5p68KyiXkhio3E5UpjxsKFkLvwyorZ7jYbL0T4QtRHO+lqnrOGSBYfJQeEmAB
 flP3P3UXqw3OSfk2f7NqFdB1B0cqZ2wiR4JUYJa76vUInbAI10oirsmSkwmdO0WMoSJX
 BqqkLINBbUlLRUwRI8ft2z3Qk5rShAsQGnFJqE6kcQrS+pNAELb8WaTBBINwKDNZzja7
 5aKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bc/19Sw3gCuiuNL5yxr53ROwuXXqpzpfHWWhYwbvjUo=;
 b=eyzFdxgrlofNDN1sJEoqvotGc7W6oq9c6PhRQfziB1ifo65EeBod4Vjp+XkuczZfaX
 PNBfMMy2EdGCNXXatS0T/ah7r8LMgdVUjwCHAZ8/DE3hcz68Tg6/Tqot2uLOEr/COaFQ
 eJ6Z4GO4ufBANRPypHHK6FKtWpw4MyhQN3y375i4J+Jpg5WO9HuertgME4vKeBPNRF3c
 gwUV9+kkJykhzjU64kuh1tXznhIypU4/Ks4HE+8019V378gTm/Y8nZdC1U+swkxSXAxl
 pHg7z33ISJ/zjMYKrAXgTG9N2kafGCp9Gd45x/OY6CHr1cfoOvZNC3YO9ibm/zYVeFaT
 qbLA==
X-Gm-Message-State: AOAM533uxxSxeXPJdeKB+OtZHE3Yqf1Kb8AVsrPtMIrW306LeCtyfyKW
 bks9qRlwvcBerIdCngXFCFDw52wdt3v+lxS6jcPvPw==
X-Google-Smtp-Source: ABdhPJxPLLk8qMtDlWK65ixYe3AxwSYOuLQWzgY8dPGbhyExlDVFcUshw6mboG8LnO3GIAmGuyVWP85em6Bc1cncdkE=
X-Received: by 2002:a05:6512:13a5:: with SMTP id
 p37mr7406070lfa.403.1634247641451; 
 Thu, 14 Oct 2021 14:40:41 -0700 (PDT)
MIME-Version: 1.0
References: <20211012165614.2873369-1-tkjos@google.com>
 <CAHC9VhQ6W=8rX6hryk_d+iTc90MAoZOw=KVDhjXsXE5Laccn_A@mail.gmail.com>
In-Reply-To: <CAHC9VhQ6W=8rX6hryk_d+iTc90MAoZOw=KVDhjXsXE5Laccn_A@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 14 Oct 2021 14:40:27 -0700
Message-ID: <CAHRSSEwjFicpr2=4S37KmVTav+aNQqFwy1eUo8r_z1OPSX1LFw@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] binder: use cred instead of task for security
 context
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
 linux-kernel@vger.kernel.org, arve@android.com,
 Jeffrey Vander Stoep <jeffv@google.com>, joel@joelfernandes.org,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 14, 2021 at 2:34 PM Paul Moore <paul@paul-moore.com> wrote:
>
> On Tue, Oct 12, 2021 at 12:56 PM Todd Kjos <tkjos@google.com> wrote:
> >
> > This series fixes the possible use of an incorrect security context
> > when checking selinux permissions, getting a security ID, or lookup
> > up the euid.
> >
> > The previous behavior was to save the group_leader 'struct task_struct'
> > in binder_open() and using that to obtain security IDs or euids.
> >
> > This has been shown to be unreliable, so this series instead saves the
> > 'struct cred' of the task that called binder_open(). This cred is used
> > for these lookups instead of the task.
>
> Hi Todd,
>
> I just merged all three patches into selinux/next, thanks for your
> help patience on this patchset.  Ultimately I merged these patches
> into selinux/next as opposed to selinux/stable-5.15 because I felt
> that a couple of weeks in -next before going to Linus would be a good
> thing.  I'm also not certain how widespread binder is outside of
> Android so I figured the practical difference between next and
> stable-5.15 is likely very small.  Regardless, all of your Fixes and
> stable tags remain in the patches so as soon as they go up to Linus
> during the next merge window the stable folks will be notified.

Thanks Paul. This all sounds fine.

>
> --
> paul moore
> www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
