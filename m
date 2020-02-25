Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD4716BBA2
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 09:14:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 876F12036D;
	Tue, 25 Feb 2020 08:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SKTu6JEwEfxV; Tue, 25 Feb 2020 08:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 82ECF203F0;
	Tue, 25 Feb 2020 08:14:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CA9C1BF2CB
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 08:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7965A8624E
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 08:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id adVOf3yMZ-Fy for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 08:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 99FCB84F4C
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 08:14:35 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id d62so11721632oia.11
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 00:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TRIo6rtUAOXJt0Z9CDKj85OWeaGBBrWJnbM3uVvixI4=;
 b=Y4qZ6SZGleUnEsSCvx0owKit6WPEuG5JuBCeEf6QGakYodHvxh4jw76HYDmpw8bU59
 Az1gDO7Mmn4/FDb4NnsVQ1SDNbCB/O8VjiOb4eRcj6mh8emX2i5mRGGVOwm/w/nw3aW4
 BunNqe0y8Btd30CUd6MomvZzbfIlWjCjcKWnVfUtzOBm3sY6gJc9IGnYcYs9rgjga/f7
 8ABIfUlKqd9uyGKwbNCsEvaBJq93h7VM4+WWXNK4JKZ7aBSw+23iQpydE/NUr1OUIGfn
 UfTmMaH+ETA26Y5AmQOfVqGpkwAHo76MNDRkAMfEhXEPSF7NXVe8I6mk93wqwx0fxMfS
 jlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TRIo6rtUAOXJt0Z9CDKj85OWeaGBBrWJnbM3uVvixI4=;
 b=I+GwNM17mKBBOgy1CpcS8FoqNa7FENtf/0EPMjggjJudCFDpfkr6KFwIkHN6i211zD
 bAyz6MTOXAAdAML2MbpCjOltutvIyo7wEyOyrPr3VS88ExoUxe9XqXHNw74Wll8jYCFn
 l9TbNd+n2g+8jYICrMgt0Faw/bNf9u19s1FHLv+X2eJVSLxNHc7z17g+/PJrxCor8dBx
 Rm1Nh5gnrO7kpo3dZiL8F4lrUctI7jlzsSasgsAkNQElispggAT2iERDsZ/FmHaxkyI+
 sYbO+9JeHcpD0g+neZpLTxSSJAv8AaXUy1hCTZMsxdK6gkTQRYJ9l5DtnVPH8VTctunn
 ogUw==
X-Gm-Message-State: APjAAAVE2FStU5ahjEVfqb0TtJqezzzX00cqrQCiq2uKLvSa/FeCf6Kh
 K9K9+q8jfq5I8POo5Ar48wEvb4oC+nS7l8e2PAqkBQ==
X-Google-Smtp-Source: APXvYqxccKwTAlpWEZLKZ6LzJj/iZ4wuURTXwu5nZG0P1hWg8jbDwpYMstsanjm08/sQ6eWP+7IUEjc7COWxQWz0Pzw=
X-Received: by 2002:aca:d954:: with SMTP id q81mr2519987oig.157.1582618474472; 
 Tue, 25 Feb 2020 00:14:34 -0800 (PST)
MIME-Version: 1.0
References: <20200224153501.60040-1-glider@google.com>
 <20200224153501.60040-2-glider@google.com>
 <202002242017.0817EEA8@keescook>
In-Reply-To: <202002242017.0817EEA8@keescook>
From: Jann Horn <jannh@google.com>
Date: Tue, 25 Feb 2020 09:14:08 +0100
Message-ID: <CAG48ez1rn1QwYnTJiWbiNDjB3iH7CnSeEA+MZMPp+0pmaLw6bA@mail.gmail.com>
Subject: Re: [PATCH 2/3] binder: do not initialize locals passed to
 copy_from_user()
To: Kees Cook <keescook@chromium.org>
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
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Alexander Potapenko <glider@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 25, 2020 at 5:18 AM Kees Cook <keescook@chromium.org> wrote:
> On Mon, Feb 24, 2020 at 04:35:00PM +0100, glider@google.com wrote:
> > Certain copy_from_user() invocations in binder.c are known to
> > unconditionally initialize locals before their first use, like e.g. in
> > the following case:
> >
> >       struct binder_transaction_data tr;
> >       if (copy_from_user(&tr, ptr, sizeof(tr)))
> >               return -EFAULT;
> >
> > In such cases enabling CONFIG_INIT_STACK_ALL leads to insertion of
> > redundant locals initialization that the compiler fails to remove.
> > To work around this problem till Clang can deal with it, we apply
> > __do_not_initialize to local Binder structures.
>
> It should be possible to write a Coccinelle script to identify all these
> cases. (i.e. a single path from struct declaration to copy_from_user())
> and apply the changes automatically. This script could be checked into
> scripts/coccinelle/ to help keep these markings in sync...

I wonder whether it would instead be reasonable to define a helper
macro for "copy object from userspace to the kernel", and then use
this macro. Something like this:

#define copy_object_from_user(objp, src) ({              \
  __attribute__((uninitialized)) typeof(*(objp)) __buf; \
  copy_from_user(&__buf, (src), sizeof(*(objp)));        \
  *(objp) = __buf;                                       \
})

void blah(unsigned long user_addr) {
  struct foo stackobj;
  copy_object_from_user(&stackobj, user_addr);
  do_stuff(&stackobj);
}

Unfortunately, clang runs a MemCpy optimization pass before the Dead
Store Elimination pass, which makes the copy_from_user() go directly
to `stackobj` instead of __buf before DSE has had a chance to get rid
of the first memcpy(). Grrr...

But looking at the list of passes that LLVM runs, we can see that
between the MemCpy optimization and the DSE pass, we have Bit-Tracking
Dead Store Elimination... okay, fine, so we hack together some code
such that it contains a fake branch that is only resolved between
MemCpy and DSE:

unsigned long blub, blab;
unsigned long get_blub(void) { return blub & 5; }
#define copy_object_from_user(objp, src) ({              \
  __attribute__((uninitialized)) typeof(*(objp)) __buf; \
  *(char*)&__buf = 0;                                   \
  copy_from_user(&__buf, (src), sizeof(*(objp)));        \
  int x = get_blub(); int y = blab & 10;\
  if ((x & y) == 0) { \
    *(objp) = __buf;                                       \
  } \
})

But it still doesn't work, even though the IR looks like DSE ought to work:

*** IR Dump After Value Propagation ***
; Function Attrs: nounwind uwtable
define dso_local void @blah(i64) local_unnamed_addr #1 {
  %2 = alloca %struct.foo, align 4
  %3 = alloca %struct.foo, align 4
  %4 = bitcast %struct.foo* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1008, i8* nonnull %4) #4
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %4, i8 -86, i64
1008, i1 false)
  %5 = bitcast %struct.foo* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1008, i8* nonnull %5) #4
  store i8 0, i8* %5, align 4, !tbaa !6
  call void @copy_from_user(i8* nonnull %5, i64 %0, i64 1008) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %4, i8*
nonnull align 4 %5, i64 1008, i1 false), !tbaa.struct !7
  call void @llvm.lifetime.end.p0i8(i64 1008, i8* nonnull %5) #4
  call void @do_stuff(%struct.foo* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 1008, i8* nonnull %4) #4
  ret void
}
*** IR Dump After Dead Store Elimination ***
; Function Attrs: nounwind uwtable
define dso_local void @blah(i64) local_unnamed_addr #1 {
  %2 = alloca %struct.foo, align 4
  %3 = alloca %struct.foo, align 4
  %4 = bitcast %struct.foo* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1008, i8* nonnull %4) #4
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %4, i8 -86, i64
1008, i1 false)
  %5 = bitcast %struct.foo* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1008, i8* nonnull %5) #4
  store i8 0, i8* %5, align 4, !tbaa !6
  call void @copy_from_user(i8* nonnull %5, i64 %0, i64 1008) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %4, i8*
nonnull align 4 %5, i64 1008, i1 false), !tbaa.struct !7
  call void @llvm.lifetime.end.p0i8(i64 1008, i8* nonnull %5) #4
  call void @do_stuff(%struct.foo* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 1008, i8* nonnull %4) #4
  ret void
}

I guess maybe clang can't do DSE past a function call or something?

We also can't trick the DSE pass using an empty "asm volatile" with an
output-only memory operand, because the DSE pass can't optimize inline
asm.

Is there really no way to somehow hack this together inside a macro? :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
