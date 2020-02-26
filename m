Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C6D1701B4
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Feb 2020 15:59:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61B0F22B6D;
	Wed, 26 Feb 2020 14:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AUobIDBWwYiI; Wed, 26 Feb 2020 14:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 823482156F;
	Wed, 26 Feb 2020 14:59:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 747F01BF426
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 14:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 714A485BC4
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 14:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YHaUNSrR28XA for <devel@linuxdriverproject.org>;
 Wed, 26 Feb 2020 14:58:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E8E5B85BA1
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 14:58:54 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y17so3409356wrn.6
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 06:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PJ9QyaO5tLNLnoNyGEokGRVxa0wdfvZ1BWodpzt/kpg=;
 b=IIpcC+4f0/sY9qbBM7erD9DiKXb5RbGGmYDhshbVOd9CUjHzkmrehaFeNKP5Hn9sIA
 fAU/gzDZ+sL5VNvMTE0QYgFuLOvBANLolEECgyL6M0lZKetBc+cw52naeh8VeePUDgqP
 sEZVtovG30isBz0EQdALdoDLQRqA7sG/9LnulNeRsxNkQb+fRcn2kYrT1zyNhj92iPwL
 UPrOsFpZDXC2wmUjFtKmCvHwJ/XKnQiHpVY3XB12tgLvAEhXqyCrp2nolESyp6w3Cccs
 8BG6iYqCSAwjK/7GPx3hYw05wqe2Y1jGxbMwARUnzEaRazOhty0KMKnvI0BcT7JtI0sB
 xCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PJ9QyaO5tLNLnoNyGEokGRVxa0wdfvZ1BWodpzt/kpg=;
 b=swaT+vqD3KOJiBxvq1JYi3lZOEE23ueysVLMvGdkwSejPEKg19r/fLXGOl5d1Kw5jS
 fkPSEbKNIccIV4IE2pLpNKe54pwQc/8yZBE7xilMvn31moZsg6u2KLUwto86fK+mk8Y3
 3HBsxo8qOX8n6B1Lo1jQivSjb/xEYYfggOCpS+IYtlfKb60o9s8o8jxxzIelb3qkiCd9
 2HqAKEBxiX+hV18HdOYlrY9/KFewmgObJ2X8mhcgeG87heOuBpTPHS5USiFnHHw1IUJU
 osER0PTrX0EOMbyFZCXjxaiO7AhSRAIhZwRGNm8fK52fwkpE4VxrZk1eeQnvA1JtFuDm
 A19w==
X-Gm-Message-State: APjAAAWf9mESG/1Pn5fgQhRrHcw/ElL6g5wWbgYIwEFAZzJJs2+Z8Qms
 iTDdIjp27MXBoxQ3ASpAM+yqxiSWjUu3vaNja0wJiw==
X-Google-Smtp-Source: APXvYqyatPEzuulqlQgg9gHWf0C+5qGECB8GUsA6GOgab1rl4zSwU+GQhMSEcLf2upJZEwhD6l/qr5oOl+qFiTjrfB8=
X-Received: by 2002:adf:ed42:: with SMTP id u2mr6094138wro.345.1582729133019; 
 Wed, 26 Feb 2020 06:58:53 -0800 (PST)
MIME-Version: 1.0
References: <20200224153501.60040-1-glider@google.com>
 <20200224153501.60040-2-glider@google.com>
 <202002242017.0817EEA8@keescook>
 <CAG_fn=WoBZL4_Zzg_EL45MWyccXt9JVBdXyxfEdkaoMVKOhhaQ@mail.gmail.com>
In-Reply-To: <CAG_fn=WoBZL4_Zzg_EL45MWyccXt9JVBdXyxfEdkaoMVKOhhaQ@mail.gmail.com>
From: Alexander Potapenko <glider@google.com>
Date: Wed, 26 Feb 2020 15:58:41 +0100
Message-ID: <CAG_fn=XXWLrt2f=6ha+9F3geSwG=4uqr8P4Qq5UJxyqK+-7qaw@mail.gmail.com>
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
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 25, 2020 at 4:24 PM Alexander Potapenko <glider@google.com> wrote:
>
> On Tue, Feb 25, 2020 at 5:18 AM Kees Cook <keescook@chromium.org> wrote:
> >
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
> The following script:
>
> =================================
> @local_inited_by_cfu@
> attribute name __no_initialize;
> identifier var;
> type T;
> statement stmt;
> @@
> T var
> +__no_initialize
> ;
> if (copy_from_user(&var,..., sizeof(var))) stmt
> =================================
>
> seems to do the job, but this transformation isn't idempotent: it
> inserts __no_initialize every time Coccinelle is invoked.
> It's hard to work around this problem, as attributes may only be parts
> of +-lines (i.e. I cannot write a rule that matches "T var
> __no_initialize")

This one:

============================
@match@
type T;
identifier var;
statement stmt;
fresh identifier var_noinit = var##" __no_initialize";
@@
-T var;
+T var_noinit;
...
if (copy_from_user(&var,..., sizeof(var))) stmt
============================
is better, because it:
 - uses a "fresh identifier" hack instead of dealing with attributes
(which aren't supported by spatch 1.0.4)
 - seems to be idempotent because of that hack.

I'll regenerate the binder patch using that script and will look into
enhancing it and committing it to scripts/coccinelle.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
