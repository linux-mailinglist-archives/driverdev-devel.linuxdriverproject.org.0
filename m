Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5967175B87
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 14:26:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA63D86096;
	Mon,  2 Mar 2020 13:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PjRwOznZEVW6; Mon,  2 Mar 2020 13:26:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9685E8602E;
	Mon,  2 Mar 2020 13:26:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B63301BF29E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF9BA20486
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KbqY0uac-VtN for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 13:26:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 5464520480
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 13:26:04 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id j7so12487964wrp.13
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 05:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2ksuLQhQaVfn70PglWjMPhyebhvTDpJOHYR+Eolo3CI=;
 b=kg/Ix5ng9Mz+UXqDYAMU89aLZdgeaLpX4W30gQT8rcTasW1GpdIE8NKWxAtUZyRzTG
 ALq6z0sTmxSMYl6IPPgzZPA8iar3y6hmHb/eZ0uffkyfINUKungQFokafBTWdikN5RBR
 dI35lgDn6AnQsX1VziRKtNj/mzkywL7xshBxa62FvMo2cbFZ8Dc1skpvOnG6RE3XitM2
 xI/BXIomb0qKYEWrQQ69B6m7ehaiVzDwt6QHXwfXdtyRn0luJY5dXeDlsSDtFBYDP2yF
 dyCd8vO5HwgOYRwEzyqINWoi9hKBGFcpC4mjibqy+WM2gqk8DvJaXdsojuzVUBX3vtRJ
 hTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2ksuLQhQaVfn70PglWjMPhyebhvTDpJOHYR+Eolo3CI=;
 b=ZF411uuyatB2gdd3PfndG1wXFC52TuxAsqWmPtKZwIkJ5p1wieJaZRzsw4jp0Fm7Tc
 nR7iMKXcFEQCylY50wlTbkzmAGCnHUDUlG4CUhAGgg1c8upLn3fPEji6403B8dTUAZZ6
 MENlAKTnKuDYYIdFePuTqJP5naV/b71HEzKp0mnF7WdkhCUUQpi07KGKqzsJAErCG176
 /+nkfqgH0A7TItDlg3SKX9+DArtK1reInr+WfVe2XJRwEImJB0jOP7MI/v5aIcURJ4qJ
 PIuDb5OHwPpiGNdfpGYWPzLRQKD/P2hTJheNdPV/FpogrdFfNQ1I5hNFlJFXL3vS1Z4x
 ztxg==
X-Gm-Message-State: APjAAAWLjf/fA/SIddNUavuXWW1I/Jx51uHFyvCuphnA37J0wubxKfQZ
 W55rwcqXgjfozkeH/CTenfle0O6UCKiQngb+cMLskg==
X-Google-Smtp-Source: APXvYqxD5EpTi7d4N+T4r3tOiFmCqFlQ0Fdz+H/VD/mUoHhAtlYzTInQmsWXuPJY1uT7rZdF7WXI4Zib325auuyMoro=
X-Received: by 2002:adf:ef4f:: with SMTP id c15mr22486054wrp.200.1583155562342; 
 Mon, 02 Mar 2020 05:26:02 -0800 (PST)
MIME-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
In-Reply-To: <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
From: Alexander Potapenko <glider@google.com>
Date: Mon, 2 Mar 2020 14:25:51 +0100
Message-ID: <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
To: Joe Perches <joe@perches.com>
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
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 2, 2020 at 2:11 PM Joe Perches <joe@perches.com> wrote:
>
> On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> > Certain copy_from_user() invocations in binder.c are known to
> > unconditionally initialize locals before their first use, like e.g. in
> > the following case:
> []
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> []
> > @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
> >
> >               case BC_TRANSACTION_SG:
> >               case BC_REPLY_SG: {
> > -                     struct binder_transaction_data_sg tr;
> > +                     struct binder_transaction_data_sg tr __no_initialize;
> >
> >                       if (copy_from_user(&tr, ptr, sizeof(tr)))
>
> I fail to see any value in marking tr with __no_initialize
> when it's immediately written to by copy_from_user.

This is being done exactly because it's immediately written to by copy_to_user()
Clang is currently unable to figure out that copy_to_user() initializes memory.
So building the kernel with CONFIG_INIT_STACK_ALL=y basically leads to
the following code:

  struct binder_transaction_data_sg tr;
  memset(&tr, 0xAA, sizeof(tr));
  if (copy_from_user(&tr, ptr, sizeof(tr))) {...}

This unnecessarily slows the code down, so we add __no_initialize to
prevent the compiler from emitting the redundant initialization.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
