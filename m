Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0521177220
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 10:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 95150873DC;
	Tue,  3 Mar 2020 09:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQR0Z4CR0Ysr; Tue,  3 Mar 2020 09:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA2CC87020;
	Tue,  3 Mar 2020 09:14:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00E551BF2B9
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 09:14:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F173A8620F
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 09:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pIGhK0oqeaM4 for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 09:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7A81F86044
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 09:14:31 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id j7so3266061wrp.13
 for <devel@driverdev.osuosl.org>; Tue, 03 Mar 2020 01:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RZ/tuB8qgRACZZ2pio9zWrvoh8e8w7qHr+14A9Ldgeg=;
 b=NTON33Jifl+R6NAyY2Scr0HzJ73gC6UjKe7pb9fRUiOuUCNfpGVcqaZ4Nz3m9sn4R+
 BfhXriuuW3scO9sn8U37bzh39fb2kN54HjDR/oZgJc13WiTqBKD7YpJxzKkuRXLqEOqQ
 Z4Zsh1x9xW+bPeCoG2oNSE6W8Ykso+j9FFkFWrQXIbAHIqljoYmDK/lMXVTUL1YSczDy
 rWVZqmtf1i/Z5Ke0Loc+4ZTsAykJ4kTmnplOd1tVS4ppVf2GE2+OSo2FtlDLZtfOigmB
 o6rXrMk/8iSuTCCXyeMhNgnnSkRVKgGUDo5tn84axApQvKU7HPD77LYxqDynM9jjOfiR
 CbmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RZ/tuB8qgRACZZ2pio9zWrvoh8e8w7qHr+14A9Ldgeg=;
 b=H1rovTAwg8EyGWswkLe5AAVvfQV0Jw6cWtFYzEqg4XI31gqO2bAyC4YGq6lcCE3xui
 kFhPPko2pLsOdb4PW6FfS6hq05pOrAVEwa5fOshO8CQvHl6eUoTTICgGEZuOE18wYxm+
 r5B/2dLbWa4IqBHsujH8DTJxcD95Ytnfp3069HnJgwIncKiJE2stECvcWjBQlVjWNmga
 LSItj0xA5MLs+XlRsSFR5CPgYeY9FlZ0lsC+b2vrPtZDVvSLEHTDavsusBbukE+EcPBM
 DK5ScFKh6WoFAlnA/rkdMvUrCtN8b84K9y9kf28Ed9tkXLjb/MC2ThuGk9HMwLXPR5ae
 lgKg==
X-Gm-Message-State: ANhLgQ35NusYjQhC6Ktaaak+/hvXhRBKNxjRe+sPuZifcgiThYQ6xx5g
 D5HYyVF/PTHH2V63AVCNWlwkALcZjkOcjdHUCyVV0g==
X-Google-Smtp-Source: ADFU+vuTYVcZD5+Vjn2bW93fBu9dCOBHeqiEkje9CEeHzEU8OeCP41MxKYVeFdUUR9XGd+uhTKDLq6ynerMLwMyvZgw=
X-Received: by 2002:adf:b60f:: with SMTP id f15mr4744555wre.372.1583226869357; 
 Tue, 03 Mar 2020 01:14:29 -0800 (PST)
MIME-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
In-Reply-To: <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
From: Alexander Potapenko <glider@google.com>
Date: Tue, 3 Mar 2020 10:14:18 +0100
Message-ID: <CAG_fn=U2T--j_uhyppqzFvMO3w3yUA529pQrCpbhYvqcfh9Z1w@mail.gmail.com>
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

On Mon, Mar 2, 2020 at 7:51 PM Joe Perches <joe@perches.com> wrote:
>
> On Mon, 2020-03-02 at 19:17 +0100, Alexander Potapenko wrote:
> > On Mon, Mar 2, 2020 at 3:00 PM Joe Perches <joe@perches.com> wrote:
> > > On Mon, 2020-03-02 at 14:25 +0100, Alexander Potapenko wrote:
> > > > On Mon, Mar 2, 2020 at 2:11 PM Joe Perches <joe@perches.com> wrote:
> > > > > On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> > > > > > Certain copy_from_user() invocations in binder.c are known to
> > > > > > unconditionally initialize locals before their first use, like e.g. in
> > > > > > the following case:
> > > > > []
> > > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > > []
> > > > > > @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
> > > > > >
> > > > > >               case BC_TRANSACTION_SG:
> > > > > >               case BC_REPLY_SG: {
> > > > > > -                     struct binder_transaction_data_sg tr;
> > > > > > +                     struct binder_transaction_data_sg tr __no_initialize;
> > > > > >
> > > > > >                       if (copy_from_user(&tr, ptr, sizeof(tr)))
> > > > >
> > > > > I fail to see any value in marking tr with __no_initialize
> > > > > when it's immediately written to by copy_from_user.
> > > >
> > > > This is being done exactly because it's immediately written to by copy_to_user()
> > > > Clang is currently unable to figure out that copy_to_user() initializes memory.
> > > > So building the kernel with CONFIG_INIT_STACK_ALL=y basically leads to
> > > > the following code:
> > > >
> > > >   struct binder_transaction_data_sg tr;
> > > >   memset(&tr, 0xAA, sizeof(tr));
> > > >   if (copy_from_user(&tr, ptr, sizeof(tr))) {...}
> > > >
> > > > This unnecessarily slows the code down, so we add __no_initialize to
> > > > prevent the compiler from emitting the redundant initialization.
> > >
> > > So?  CONFIG_INIT_STACK_ALL by design slows down code.
> > Correct.
> >
> > > This marking would likely need to be done for nearly all
> > > 3000+ copy_from_user entries.
> > Unfortunately, yes. I was just hoping to do so for a handful of hot
> > cases that we encounter, but in the long-term a compiler solution must
> > supersede them.
> >
> > > Why not try to get something done on the compiler side
> > > to mark the function itself rather than the uses?
> > This is being worked on in the meantime as well (see
> > http://lists.llvm.org/pipermail/cfe-dev/2020-February/064633.html)
> > Do you have any particular requisitions about how this should look on
> > the source level?
>
> I presume something like the below when appropriate for
> automatic variables when not already initialized or modified.
> ---
>  include/linux/uaccess.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
> index 8a215c..3e034b5 100644
> --- a/include/linux/uaccess.h
> +++ b/include/linux/uaccess.h
> @@ -138,7 +138,8 @@ _copy_to_user(void __user *, const void *, unsigned long);
>  #endif
>
>  static __always_inline unsigned long __must_check
> -copy_from_user(void *to, const void __user *from, unsigned long n)
> +copy_from_user(void __no_initialize *to, const void __user *from,
> +              unsigned long n)

Shall this __no_initialize attribute denote that the whole object
passed to it is initialized?
Or do we need to encode the length as well, as Jann suggests?
It's also interesting what should happen if *to is pointing _inside_ a
local object - presumably it's unsafe to disable initialization for
the whole object.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
