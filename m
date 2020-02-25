Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E708016BF74
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 12:19:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F2F4207A4;
	Tue, 25 Feb 2020 11:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 851reX2hMzcQ; Tue, 25 Feb 2020 11:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D46D20357;
	Tue, 25 Feb 2020 11:19:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 592F01BF402
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 11:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 481F12051F
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 11:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 96K64D9ulTmv for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 11:19:03 +0000 (UTC)
X-Greylist: delayed 00:06:08 by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id ACA0320357
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 11:19:02 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a6so2739266wme.2
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 03:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J5uqOcwW0xv+Tvbi0vu1DaInpYJcFdd20nBArNms9Ws=;
 b=N9+d/p5b8g87t7KqBNZTJU39tX5r3BfCV1V56/NKMlhcBIv2WtwVWUEEA4EfTKJkUy
 UE5w0yhvKEtpiGFJM7+qQ5TDp4qwgsrWf0xg0Hrjmnb94cQUo0bWE8WKDUpEn433zFGl
 AiIuwr6HMqyAqV67DnzPt9Ax9gqHsj2Wx6Gtt44ZLu0ERVrE46YnI5eCDnAedvje4QX3
 u7pq+1aAQfJXjC3JSJsu7aVl4znup5vjYROSNn9WK3ry5e2bD+LZjJRhi4A4udPF5Dn2
 LjOOm6UJaaNbtagbatTERIF+M/tFEQZnN+0LZj2Qba8lztesO1k1J/M+5psGn8yyvlzA
 mwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J5uqOcwW0xv+Tvbi0vu1DaInpYJcFdd20nBArNms9Ws=;
 b=Ot+m5q62jGL8IhnzRDTPGtSG17yuk3RuV5cLknNzngzjR/WU2EgOV8DWV8P03xXk4G
 IHWO7fZ71eLLgYPaMyuXj2f6jkMr4sQLCM/rzKhvn+Uu2vmXTmZ6qYh8PBn29PgT2o0h
 MxPRsrEeVt0D5BaUWwIUyU5nSZ63YDVZ1I+BUB5SAxJcFGlCX4+qz2RuB5uA8JQptRVW
 +2aKzCo4tYxaNNSOws2YbNXTgmrXKIYXDHbAXuDEwVxwQlBCjJbL+ovhDJ3mrMefIxBx
 NHi1yEvlswnDSUmToOc3Ju2vt8Kd3POx/3U3KEPZXUCxEo5jFtiTmqoSvTKq15Xe7owE
 E9zQ==
X-Gm-Message-State: APjAAAXfkt60KqQ16qEKpZ2npOnc2U2cgJ7EdxnWLmpfIrbWETaa5E1W
 kuCAUSB48Bth8U2AOqb9U+Z+MQJf+31Amqc4mRzS1Tev5Jk=
X-Google-Smtp-Source: APXvYqw6DtqMxfu0w7fif5B4EFoM8pSfUq9ywhW8x4G4qKXOEFWUAntRxmKz7X9kF7MOR4tIEh6B9qwJIYrdnUsDAOs=
X-Received: by 2002:a1c:9e13:: with SMTP id h19mr4910709wme.21.1582629172197; 
 Tue, 25 Feb 2020 03:12:52 -0800 (PST)
MIME-Version: 1.0
References: <20200224153501.60040-1-glider@google.com>
 <20200224153501.60040-2-glider@google.com>
 <202002242017.0817EEA8@keescook>
 <CAG48ez1rn1QwYnTJiWbiNDjB3iH7CnSeEA+MZMPp+0pmaLw6bA@mail.gmail.com>
In-Reply-To: <CAG48ez1rn1QwYnTJiWbiNDjB3iH7CnSeEA+MZMPp+0pmaLw6bA@mail.gmail.com>
From: Alexander Potapenko <glider@google.com>
Date: Tue, 25 Feb 2020 12:12:41 +0100
Message-ID: <CAG_fn=VELOHDaZhBOPP40Efj3AEFzFbey44ujsaMZ8QcqqM5fw@mail.gmail.com>
Subject: Re: [PATCH 2/3] binder: do not initialize locals passed to
 copy_from_user()
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitry Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 25, 2020 at 9:14 AM Jann Horn <jannh@google.com> wrote:
>
> On Tue, Feb 25, 2020 at 5:18 AM Kees Cook <keescook@chromium.org> wrote:
> > On Mon, Feb 24, 2020 at 04:35:00PM +0100, glider@google.com wrote:
> > > Certain copy_from_user() invocations in binder.c are known to
> > > unconditionally initialize locals before their first use, like e.g. in
> > > the following case:
> > >
> > >       struct binder_transaction_data tr;
> > >       if (copy_from_user(&tr, ptr, sizeof(tr)))
> > >               return -EFAULT;
> > >
> > > In such cases enabling CONFIG_INIT_STACK_ALL leads to insertion of
> > > redundant locals initialization that the compiler fails to remove.
> > > To work around this problem till Clang can deal with it, we apply
> > > __do_not_initialize to local Binder structures.
> >
> > It should be possible to write a Coccinelle script to identify all these
> > cases. (i.e. a single path from struct declaration to copy_from_user())
> > and apply the changes automatically. This script could be checked into
> > scripts/coccinelle/ to help keep these markings in sync...
>
> I wonder whether it would instead be reasonable to define a helper
> macro for "copy object from userspace to the kernel", and then use
> this macro. Something like this:

I really like this idea, but I think hacking something based on the
order of LLVM passes is too fragile and can also lead to suboptimal
code generation with GCC.
Maybe we can pull the variable declaration together with
__attribute__((uninitialized)) inside this macro instead?

> #define copy_object_from_user(objp, src) ({              \
>   __attribute__((uninitialized)) typeof(*(objp)) __buf; \
>   copy_from_user(&__buf, (src), sizeof(*(objp)));        \
>   *(objp) = __buf;                                       \
> })
>
> void blah(unsigned long user_addr) {
>   struct foo stackobj;
>   copy_object_from_user(&stackobj, user_addr);
>   do_stuff(&stackobj);
> }
>
> Unfortunately, clang runs a MemCpy optimization pass before the Dead
> Store Elimination pass, which makes the copy_from_user() go directly
> to `stackobj` instead of __buf before DSE has had a chance to get rid
> of the first memcpy(). Grrr...
>
> But looking at the list of passes that LLVM runs, we can see that
> between the MemCpy optimization and the DSE pass, we have Bit-Tracking
> Dead Store Elimination... okay, fine, so we hack together some code
> such that it contains a fake branch that is only resolved between
> MemCpy and DSE:
>
> unsigned long blub, blab;
> unsigned long get_blub(void) { return blub & 5; }
> #define copy_object_from_user(objp, src) ({              \
>   __attribute__((uninitialized)) typeof(*(objp)) __buf; \
>   *(char*)&__buf = 0;                                   \
>   copy_from_user(&__buf, (src), sizeof(*(objp)));        \
>   int x = get_blub(); int y = blab & 10;\
>   if ((x & y) == 0) { \
>     *(objp) = __buf;                                       \
>   } \
> })
>
> But it still doesn't work, even though the IR looks like DSE ought to work:
>
> *** IR Dump After Value Propagation ***
> ; Function Attrs: nounwind uwtable
> define dso_local void @blah(i64) local_unnamed_addr #1 {
>   %2 = alloca %struct.foo, align 4
>   %3 = alloca %struct.foo, align 4
>   %4 = bitcast %struct.foo* %2 to i8*
>   call void @llvm.lifetime.start.p0i8(i64 1008, i8* nonnull %4) #4
>   call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %4, i8 -86, i64
> 1008, i1 false)
>   %5 = bitcast %struct.foo* %3 to i8*
>   call void @llvm.lifetime.start.p0i8(i64 1008, i8* nonnull %5) #4
>   store i8 0, i8* %5, align 4, !tbaa !6
>   call void @copy_from_user(i8* nonnull %5, i64 %0, i64 1008) #4
>   call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %4, i8*
> nonnull align 4 %5, i64 1008, i1 false), !tbaa.struct !7
>   call void @llvm.lifetime.end.p0i8(i64 1008, i8* nonnull %5) #4
>   call void @do_stuff(%struct.foo* nonnull %2) #4
>   call void @llvm.lifetime.end.p0i8(i64 1008, i8* nonnull %4) #4
>   ret void
> }
> *** IR Dump After Dead Store Elimination ***
> ; Function Attrs: nounwind uwtable
> define dso_local void @blah(i64) local_unnamed_addr #1 {
>   %2 = alloca %struct.foo, align 4
>   %3 = alloca %struct.foo, align 4
>   %4 = bitcast %struct.foo* %2 to i8*
>   call void @llvm.lifetime.start.p0i8(i64 1008, i8* nonnull %4) #4
>   call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %4, i8 -86, i64
> 1008, i1 false)
>   %5 = bitcast %struct.foo* %3 to i8*
>   call void @llvm.lifetime.start.p0i8(i64 1008, i8* nonnull %5) #4
>   store i8 0, i8* %5, align 4, !tbaa !6
>   call void @copy_from_user(i8* nonnull %5, i64 %0, i64 1008) #4
>   call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %4, i8*
> nonnull align 4 %5, i64 1008, i1 false), !tbaa.struct !7
>   call void @llvm.lifetime.end.p0i8(i64 1008, i8* nonnull %5) #4
>   call void @do_stuff(%struct.foo* nonnull %2) #4
>   call void @llvm.lifetime.end.p0i8(i64 1008, i8* nonnull %4) #4
>   ret void
> }
>

> I guess maybe clang can't do DSE past a function call or something?

DSE only works within a basic block, which might actually be a problem
with the real copy_from_user(), which expands to a call to
_copy_from_user() and a branch.


> We also can't trick the DSE pass using an empty "asm volatile" with an
> output-only memory operand, because the DSE pass can't optimize inline
> asm.

This can be handled by something like https://reviews.llvm.org/D74853
(that's a WIP, still breaks the kernel)
Not sure though, how good this is compared to a function attribute.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
