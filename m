Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC151CB0F8
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 May 2020 15:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A919203E1;
	Fri,  8 May 2020 13:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rAL49-apkXbP; Fri,  8 May 2020 13:51:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 30E36221B5;
	Fri,  8 May 2020 13:51:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A533A1BF473
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 13:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A1BD288C7B
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 13:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LT8f9mXi9brs for <devel@linuxdriverproject.org>;
 Fri,  8 May 2020 13:51:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD2F489285
 for <devel@driverdev.osuosl.org>; Fri,  8 May 2020 13:51:15 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id h6so728277qvz.8
 for <devel@driverdev.osuosl.org>; Fri, 08 May 2020 06:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GusIZDLyGKObXLaDX4j+AFjvmp6VctXRvo86A2qqRTY=;
 b=ANvNB+ItxhX0LukDFkSlO2iamrJWhTqBNZPAgLOI6TGvXVQPER9P9dHO9R8MaBHuIy
 oLGFZJUoXZFa8iwl6dq3NdzLCUqzOffrEczbkWDBaEULHTE8DyRA4gzeIW/0KyUdfoZk
 0EN1fAzWX46X7xZc/n6FSXWTN4OqzOka0t/R7AiwOx5u8vrIHWJaEu7/TFd5ArWCSdJE
 qGBIGF213IBiQEfaVnzFK/7fjksPzih2dpuhG4lUf4DrsHZllxQS9ILc6ZbXo7NHQrpB
 eZDqHBg2Rl0sOb1Nid4ANC6bx+zqlI94M1gYZQnYiQjzXnOAFoOvuJUj2DRS8/nLUX/x
 qoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GusIZDLyGKObXLaDX4j+AFjvmp6VctXRvo86A2qqRTY=;
 b=C1xzJNaGgV0yr9aJfdKpRsmLJKnkUcg4GTBvwJeDbKIHU0D+8OxICetjLzy/HnyOqx
 IhxXH2dgbc7M6xrJgwLGaWeRWiggWVAn36+XyteU6jAR9N/56iOYiGmVisg+s+scyti9
 FEhO/d3HRC3T0JQkzBhvWSNs6KLMn6FQ/yEH2G934T7LChjV3vC90fyiaSQAeDn50zHN
 +37ZML0wEZ3jaEIEufkAyEmgyvs4GZlwYmXqzq6jOBNws6PWPf+NOzhszRX9VfaRdeA6
 bmbfp6pfTqwGC4ufoVAOMJ4kUxB2PcEN6eLWefwCYpIIApta3+I5bdcu7O4hQxijoLJL
 UACQ==
X-Gm-Message-State: AGi0PuaR+96hDyIIlnGvGh/FmNVA2FGm+/qipQXqgYXho82cRCE713ya
 ccZdH8nrJDgr6QDI+DABhqfw+8Vd3f1wtUz3raKEag==
X-Google-Smtp-Source: APiQypJg4Ssy15CyoMVkq6xudLjz21kzjN5o45bwMN5wiI7VqSjH9DFdZGHTskHEuLGotdcf0EmU0mry1fYPeJ1gU6c=
X-Received: by 2002:ad4:53a2:: with SMTP id j2mr2924644qvv.159.1588945874489; 
 Fri, 08 May 2020 06:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000039420505a14e4951@google.com>
 <1588755226.13662.17.camel@suse.com>
 <CAAeHK+zOdghTAu647iKBEU+0LqkYYOk0f7gPk_4T6BjNi=2sAQ@mail.gmail.com>
 <CAAeHK+xu_0BrnM5SKo5zNFvwunMDQWa+foD-y7MpnqjkP8tcbg@mail.gmail.com>
 <CACT4Y+b3q4C-1+L6Sa3fgOYEa3+XGuzfrfauaH_v9KXS7xH9Yw@mail.gmail.com>
 <CACT4Y+YBz0uAqYw0_-1eRsuUgHvPgpwrf2RGyHJwsyAUGbBd5g@mail.gmail.com>
In-Reply-To: <CACT4Y+YBz0uAqYw0_-1eRsuUgHvPgpwrf2RGyHJwsyAUGbBd5g@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 8 May 2020 15:51:02 +0200
Message-ID: <CACT4Y+bFYVk_6L7pKY7YvzFjNuqRFmSQU5YoCxWMM4is5ofjBA@mail.gmail.com>
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

On Fri, May 8, 2020 at 12:31 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> > On Thu, May 7, 2020 at 5:56 PM 'Andrey Konovalov' via syzkaller-bugs
> > <syzkaller-bugs@googlegroups.com> wrote:
> > >
> > > On Wed, May 6, 2020 at 1:50 PM Andrey Konovalov <andreyknvl@google.com> wrote:
> > > >
> > > > On Wed, May 6, 2020 at 10:54 AM Oliver Neukum <oneukum@suse.com> wrote:
> > > > >
> > > > > Am Freitag, den 20.03.2020, 12:28 -0700 schrieb syzbot:
> > > > > > Hello,
> > > > > >
> > > > > > syzbot found the following crash on:
> > > > > >
> > > > > > HEAD commit:    e17994d1 usb: core: kcov: collect coverage from usb comple..
> > > > > > git tree:       https://github.com/google/kasan.git usb-fuzzer
> > > > > > console output: https://syzkaller.appspot.com/x/log.txt?x=11d74573e00000
> > > > > > kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
> > > > > > dashboard link: https://syzkaller.appspot.com/bug?extid=7d42d68643a35f71ac8a
> > > > > > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > > > > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15fa561de00000
> > > > > > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15d74573e00000
> > > > > >
> > > > > > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > > > > > Reported-by: syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com
> > > > > >
> > > > >
> > > > > Hi,
> > > > >
> > > > > is this bug still active and can a test be run on it? I requested one
> > > > > yesterday. If my analysis is correct this bug has security
> > > > > implications, so it is kind of important.
> > > >
> > > > I see your request in the queue and it's been registered and
> > > > completed, but for some reason syzbot didn't send an email with a
> > > > response.
> > > >
> > > > Let me try this once again:
> > > >
> > > > #syz test: https://github.com/google/kasan.git e17994d1
> > >
> > > Still no response. Dmitry, any idea what could be wrong here?
> >
> > I suspect it has something to do with the fact that the bug is already
> > fixed (has a fixing commit).
> >
> > ...right, it was broken by:
> > https://github.com/google/syzkaller/commit/f8368f999a1964df6d39a225cd3f5ab3942dd755
> > and we lack a test for this scenario. It was supposed to only disable
> > mailing of bisection jobs.
>
> Fixed in https://github.com/google/syzkaller/commit/2b98fdbcbcac6e99d12c88857406ef446bcac872
> and added a test to fix this behavior for future.
> Thanks for the report.

syzbot dashboard will now also show patch testing requests on the bug
page for better transparency, see e.g. for this bug:
https://syzkaller.appspot.com/bug?id=093ce698cf84160a66868dcac5394e105342f8c5#jobs

FTR, implemented in:
https://github.com/google/syzkaller/commit/e97b06d3cef9296e9d0e827c42bccdd36b555986
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
