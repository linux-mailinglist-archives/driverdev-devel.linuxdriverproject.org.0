Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 281431762BE
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 19:31:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A621C85A1E;
	Mon,  2 Mar 2020 18:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTI2i2xTAfru; Mon,  2 Mar 2020 18:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3635C857E2;
	Mon,  2 Mar 2020 18:31:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34CF01BF392
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2BECE204A4
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gQROe6IbQZIQ for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 18:31:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 313641FFFF
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 18:31:28 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id r16so219171oie.6
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 10:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l5zc76Fdz+bJVXzSQGbzBzVXZNM5xUhVIZ7ZJyJk0S0=;
 b=Uga3wDMUkWwXE5tHNv2a97Zp6mCHgCe+1C1PTkbrKQrGI8tfVoqqyE26+m+VkLoJ01
 KXxSiHthuMwAeAk+rDcUV62fNAU+IvOj4Xfmiq5/+Wtu5IIxSxXAsrHquQOWyR4MflVx
 yZiYJ3zW8/CLEvontWYfzsmNfghJXgqEm2gHbnjPysUxalCops1zC/DNXUNs3d2AEBxH
 ZjYWh2TlFhsBLJKyFNo95Fu6ItoYeZyPLhBTKNHPUedndktiLNvn7ThHegA30BQDePW0
 eaQmnX1IITDRRwkEAiVzvCjRjOWSf0eBTrLez0iLFV/3biPe9ckSAUOQj/KfDzvmSZnY
 bnnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l5zc76Fdz+bJVXzSQGbzBzVXZNM5xUhVIZ7ZJyJk0S0=;
 b=to8oawHL3X4GpwRAzoVJQbL+lkANVUikE2Mno0/m4zHSwTT+SKYlJoh08TsDBdmewF
 ae1Ih5bGQRhEp5u1DOv4YcIJk+sj2+9SyMPATlCmzTQk4A0T5AHSwGvM/WzXjG9VBeb0
 yKt4Pdkk94QNY7ifZa86MwoKRoJKGls65iAbrerFrlQKE5TqOxbxWMV29QEIPldRT9gW
 30tV7j+qvtTbXw8JrwZcnWmXUoBxDGYbT0nSDHeLV+PPJwR4ffuZ+TbRaRUvJcxWD3Hn
 xg4NXqpqMI69I8B04qLTD9iHH3OI2ojyiObQRBaacjPDGQQE1Iv+sjQ1t2sqnv63zSDL
 2h1g==
X-Gm-Message-State: ANhLgQ0BOoH6/ENGpL0iXGTDPI0O3VMPjp2UJkp4gpCFd7I6sIQe6MuN
 etTlrC+FDDuKaQ/MAe/EFd8pJg25/YfjYwK0sPxg9Q==
X-Google-Smtp-Source: ADFU+vvXaqJBInvF+5ETBIuxxC3EfWkUVVfy8dqWP0DZZSHrfPicWDuaN9bpcELzGK3h4ad0Mnn8rtSnbDnHdPuUITg=
X-Received: by 2002:aca:b187:: with SMTP id a129mr290744oif.175.1583173887129; 
 Mon, 02 Mar 2020 10:31:27 -0800 (PST)
MIME-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
In-Reply-To: <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Mon, 2 Mar 2020 19:31:01 +0100
Message-ID: <CAG48ez3sPSFQjB7K64YiNYfemZ_W9cCcKQW34XAcLP_MkXUjCw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
To: Alexander Potapenko <glider@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Joe Perches <joe@perches.com>,
 Dmitriy Vyukov <dvyukov@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 2, 2020 at 7:17 PM Alexander Potapenko <glider@google.com> wrote:
> On Mon, Mar 2, 2020 at 3:00 PM Joe Perches <joe@perches.com> wrote:
> > On Mon, 2020-03-02 at 14:25 +0100, Alexander Potapenko wrote:
> > > On Mon, Mar 2, 2020 at 2:11 PM Joe Perches <joe@perches.com> wrote:
> > > > On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> > > > > Certain copy_from_user() invocations in binder.c are known to
> > > > > unconditionally initialize locals before their first use, like e.g. in
> > > > > the following case:
> > > > []
> > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > []
> > > > > @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
> > > > >
> > > > >               case BC_TRANSACTION_SG:
> > > > >               case BC_REPLY_SG: {
> > > > > -                     struct binder_transaction_data_sg tr;
> > > > > +                     struct binder_transaction_data_sg tr __no_initialize;
> > > > >
> > > > >                       if (copy_from_user(&tr, ptr, sizeof(tr)))
> > > >
> > > > I fail to see any value in marking tr with __no_initialize
> > > > when it's immediately written to by copy_from_user.
> > >
> > > This is being done exactly because it's immediately written to by copy_to_user()
> > > Clang is currently unable to figure out that copy_to_user() initializes memory.
> > > So building the kernel with CONFIG_INIT_STACK_ALL=y basically leads to
> > > the following code:
> > >
> > >   struct binder_transaction_data_sg tr;
> > >   memset(&tr, 0xAA, sizeof(tr));
> > >   if (copy_from_user(&tr, ptr, sizeof(tr))) {...}
> > >
> > > This unnecessarily slows the code down, so we add __no_initialize to
> > > prevent the compiler from emitting the redundant initialization.
> >
> > So?  CONFIG_INIT_STACK_ALL by design slows down code.
> Correct.
>
> > This marking would likely need to be done for nearly all
> > 3000+ copy_from_user entries.
> Unfortunately, yes. I was just hoping to do so for a handful of hot
> cases that we encounter, but in the long-term a compiler solution must
> supersede them.
>
> > Why not try to get something done on the compiler side
> > to mark the function itself rather than the uses?
> This is being worked on in the meantime as well (see
> http://lists.llvm.org/pipermail/cfe-dev/2020-February/064633.html)
> Do you have any particular requisitions about how this should look on
> the source level?

Just thinking out loud: Should this be a function attribute, or should
it be a builtin - something like __builtin_assume_initialized(ptr,
len)? That would make it also work for macros, and it might simplify
the handling of inlining in the compiler. And you wouldn't need such a
complicated attribute that refers to function arguments by index and
such. The downside would be that it wouldn't work for non-inlined
functions without creating inline wrappers around them...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
