Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0904A1CA73E
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 May 2020 11:33:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D278C885D8;
	Fri,  8 May 2020 09:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P2LEHhFdgELu; Fri,  8 May 2020 09:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 846FE885C6;
	Fri,  8 May 2020 09:33:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8FB91BF852
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 09:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B4B35203C8
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 09:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3rFZbyMgHTjw for <devel@linuxdriverproject.org>;
 Fri,  8 May 2020 09:33:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 6BA21203B0
 for <devel@driverdev.osuosl.org>; Fri,  8 May 2020 09:33:25 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id 4so727463qtb.4
 for <devel@driverdev.osuosl.org>; Fri, 08 May 2020 02:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GqXEjDaG+YGx0nXjgZ4W5HNVqJo925K86iqD302veHY=;
 b=GtAP3h/Z3PPH676mNtyFuDUd4QaE5wVZcq8hFWKATjr8OQA3NHM4mBIm5tr/e/Wfle
 tZKpzU4KBXvnm6U0NS6/6xvZh7Fgx0c6DwIGy5767Jz/8WsGfIW5qkCS1hyfJ1ZbadCw
 GersB2jGOkAqejndKmS66DV6IbmaK92JxrTFROGWp2iqaQkag9RKnVcmL59NzCQV92sO
 WAM893lT9sOa5/5sMWDdkHv8gY9ior9kh9wFL1hUBe8Sgn6Oni3wAdkBHHOHBXV5q9aR
 qd8OGJHs/s7fPbDOwxw6lZAh4fSrlSA3Q9+8rK5BMSjvJIX5l55A/Q/+oe8st5oXQFY5
 frBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GqXEjDaG+YGx0nXjgZ4W5HNVqJo925K86iqD302veHY=;
 b=hjrp5uyAmx3J1Coa774TPfaYJfk+A1ELrLMeSlFuyz8fvVxUTxdzJa1LmJMA0c8A+5
 DSTliQaidgZ8WMPvo6Zr9fI6BcLTjktVK2b9uBMLchfICtUVoWLGZm93/pXTiFbQ3s4F
 heCxQQbV0bhEDladSoDteJZthA+icyfFwb36Po4456Frj0ym49zgiB7u80YMvB9iLixl
 WkPjxuvYk34RNwDEdJ69rXoFnorhn1VWwaY3no9HWuA+Pgzv3LHsrQspzVvI7kfgvV68
 VWplXl8xcdYsTtPeNEUOJJ49L7T+FDGU4cvnk+iU4plHJZ8mdOOhvaYu9B5VJwOyB73s
 TL2Q==
X-Gm-Message-State: AGi0Pubz1LaA4fBRw4QwiMUz206bRoClhlTYW4SBUDc3cKCbQDFQYjoL
 Fbk/byUe4AGzb2RAYl06gRdLyPaAfkJcl4ijXIwKog==
X-Google-Smtp-Source: APiQypJBReLlNI1lkKoH4ewz6Q2tA9L1d0ig5UwPjkpDV+PBKuDen+TP7tDZu/7zCfjlmMaE4Q+aq6NmYCbIFlSp4NM=
X-Received: by 2002:aed:3668:: with SMTP id e95mr2108070qtb.50.1588930403993; 
 Fri, 08 May 2020 02:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000039420505a14e4951@google.com>
 <1588755226.13662.17.camel@suse.com>
 <CAAeHK+zOdghTAu647iKBEU+0LqkYYOk0f7gPk_4T6BjNi=2sAQ@mail.gmail.com>
 <CAAeHK+xu_0BrnM5SKo5zNFvwunMDQWa+foD-y7MpnqjkP8tcbg@mail.gmail.com>
In-Reply-To: <CAAeHK+xu_0BrnM5SKo5zNFvwunMDQWa+foD-y7MpnqjkP8tcbg@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 8 May 2020 11:33:12 +0200
Message-ID: <CACT4Y+b3q4C-1+L6Sa3fgOYEa3+XGuzfrfauaH_v9KXS7xH9Yw@mail.gmail.com>
Subject: Re: KASAN: slab-out-of-bounds Read in hfa384x_usbin_callback
To: Andrey Konovalov <andreyknvl@google.com>,
 syzkaller <syzkaller@googlegroups.com>
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
 USB list <linux-usb@vger.kernel.org>,
 syzbot <syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oliver Neukum <oneukum@suse.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, nishkadg.linux@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 7, 2020 at 5:56 PM 'Andrey Konovalov' via syzkaller-bugs
<syzkaller-bugs@googlegroups.com> wrote:
>
> On Wed, May 6, 2020 at 1:50 PM Andrey Konovalov <andreyknvl@google.com> wrote:
> >
> > On Wed, May 6, 2020 at 10:54 AM Oliver Neukum <oneukum@suse.com> wrote:
> > >
> > > Am Freitag, den 20.03.2020, 12:28 -0700 schrieb syzbot:
> > > > Hello,
> > > >
> > > > syzbot found the following crash on:
> > > >
> > > > HEAD commit:    e17994d1 usb: core: kcov: collect coverage from usb comple..
> > > > git tree:       https://github.com/google/kasan.git usb-fuzzer
> > > > console output: https://syzkaller.appspot.com/x/log.txt?x=11d74573e00000
> > > > kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
> > > > dashboard link: https://syzkaller.appspot.com/bug?extid=7d42d68643a35f71ac8a
> > > > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15fa561de00000
> > > > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15d74573e00000
> > > >
> > > > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > > > Reported-by: syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com
> > > >
> > >
> > > Hi,
> > >
> > > is this bug still active and can a test be run on it? I requested one
> > > yesterday. If my analysis is correct this bug has security
> > > implications, so it is kind of important.
> >
> > I see your request in the queue and it's been registered and
> > completed, but for some reason syzbot didn't send an email with a
> > response.
> >
> > Let me try this once again:
> >
> > #syz test: https://github.com/google/kasan.git e17994d1
>
> Still no response. Dmitry, any idea what could be wrong here?

I suspect it has something to do with the fact that the bug is already
fixed (has a fixing commit).

...right, it was broken by:
https://github.com/google/syzkaller/commit/f8368f999a1964df6d39a225cd3f5ab3942dd755
and we lack a test for this scenario. It was supposed to only disable
mailing of bisection jobs.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
