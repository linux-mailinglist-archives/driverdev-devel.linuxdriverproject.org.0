Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A22E91C95A1
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 May 2020 17:56:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 60B8920511;
	Thu,  7 May 2020 15:56:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XbfXVif5fbo1; Thu,  7 May 2020 15:56:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6BB4820BF9;
	Thu,  7 May 2020 15:56:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CCE81BF470
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 15:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9976887322
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 15:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q2PvUQULgzXH for <devel@linuxdriverproject.org>;
 Thu,  7 May 2020 15:56:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8016385B25
 for <devel@driverdev.osuosl.org>; Thu,  7 May 2020 15:56:48 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id q124so2672215pgq.13
 for <devel@driverdev.osuosl.org>; Thu, 07 May 2020 08:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U4KdTZSSvGXdLyAkfFlYS4xTwZLtxpXNVHHZanbHyrY=;
 b=VXiRhE0ZcVgChEV9YLMBI5LqSPSuLL1x2VWIR2XrBzhuIXs92GT6nF89oGnDidQr2k
 ZZuX1iQoEvkyz8/0EwEHoFC6huy7liXpn8lH6FVcwOJH+X3FaMgkBxnagukyHQk/Jrhm
 tC5XSiiOJkEfRZj8S4Yl0Jei0QJD9BdJi4MLs+glW54pKxJcXmGm/v6iIZqCZlgcg3jZ
 eRsbXx0FTK3WbXtdM1CRzjFIhuZRh/FvWcHOFrOcc53X2yNkgBhymOCEch9hqjv0ilB8
 xs654zg70AZwXpe/Soo05ZZpRejd2WtXcs4DT9KbyFVKHpOyLUJaS6I13roBZAKLaWYm
 Y57g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U4KdTZSSvGXdLyAkfFlYS4xTwZLtxpXNVHHZanbHyrY=;
 b=gyGSVkdv7jjr4OzIAccByS2xPu0lQLpaJ1RnWNS9MIOlRfp0sFoOArJH1MdUC/FEgw
 oYAv3nrarnDWlQkpZyep+/aD9jDDzwynjjQG6+N1TmOxBMlTjvqCckfo/Tqa+DfUpp1i
 OAQzq7KsM9CihLbsvWUvtICXY8Q3H2BfCon3XGqTWSVpCOD4KE+SfJlTDviGzieDvhfU
 J8CBMkp8ONmen+V1qi+8Vm8Jswwpuh4HeD10nQ7mb6nKknXW07UGVF9FKZzNfo5vG1N3
 eO/Vmx0mi/fRSh+1I/PymexRt/PMM+QL65BqganWNg+cpt32visv3yWnhrqO5PiHscRk
 Zf2w==
X-Gm-Message-State: AGi0PubCuoXteAH/eghOqYmiUsH4DAza8AuGHR07EmueijGSQmqXKY0t
 6HpWgIFcrr622mguSG8KVSUNKGi+xMI+++Oc6J49jA==
X-Google-Smtp-Source: APiQypJXfH5bI+tvmiffFZMkHf3nRrhvoPtzJlA9tQAqPW3jf4NFtRe9tJWNZy67Juc6WFnNJzGovoEzqIT6DJNcl7M=
X-Received: by 2002:a62:4e87:: with SMTP id
 c129mr14304792pfb.178.1588867007770; 
 Thu, 07 May 2020 08:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000039420505a14e4951@google.com>
 <1588755226.13662.17.camel@suse.com>
 <CAAeHK+zOdghTAu647iKBEU+0LqkYYOk0f7gPk_4T6BjNi=2sAQ@mail.gmail.com>
In-Reply-To: <CAAeHK+zOdghTAu647iKBEU+0LqkYYOk0f7gPk_4T6BjNi=2sAQ@mail.gmail.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Thu, 7 May 2020 17:56:36 +0200
Message-ID: <CAAeHK+xu_0BrnM5SKo5zNFvwunMDQWa+foD-y7MpnqjkP8tcbg@mail.gmail.com>
Subject: Re: KASAN: slab-out-of-bounds Read in hfa384x_usbin_callback
To: Oliver Neukum <oneukum@suse.com>, Dmitry Vyukov <dvyukov@google.com>
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
 syzbot <syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, nishkadg.linux@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 6, 2020 at 1:50 PM Andrey Konovalov <andreyknvl@google.com> wrote:
>
> On Wed, May 6, 2020 at 10:54 AM Oliver Neukum <oneukum@suse.com> wrote:
> >
> > Am Freitag, den 20.03.2020, 12:28 -0700 schrieb syzbot:
> > > Hello,
> > >
> > > syzbot found the following crash on:
> > >
> > > HEAD commit:    e17994d1 usb: core: kcov: collect coverage from usb comple..
> > > git tree:       https://github.com/google/kasan.git usb-fuzzer
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=11d74573e00000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=7d42d68643a35f71ac8a
> > > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15fa561de00000
> > > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15d74573e00000
> > >
> > > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > > Reported-by: syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com
> > >
> >
> > Hi,
> >
> > is this bug still active and can a test be run on it? I requested one
> > yesterday. If my analysis is correct this bug has security
> > implications, so it is kind of important.
>
> I see your request in the queue and it's been registered and
> completed, but for some reason syzbot didn't send an email with a
> response.
>
> Let me try this once again:
>
> #syz test: https://github.com/google/kasan.git e17994d1

Still no response. Dmitry, any idea what could be wrong here?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
