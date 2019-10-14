Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269D9D6A3A
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Oct 2019 21:36:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3473587EC5;
	Mon, 14 Oct 2019 19:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Xkj2bndIz7I; Mon, 14 Oct 2019 19:36:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 62D1287935;
	Mon, 14 Oct 2019 19:36:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA771BF32A
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 19:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DD09387935
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 19:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wiHtYhFnrSvN for <devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 19:35:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DDCB87933
 for <devel@driverdev.osuosl.org>; Mon, 14 Oct 2019 19:35:58 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 21so14781060otj.11
 for <devel@driverdev.osuosl.org>; Mon, 14 Oct 2019 12:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XrWcyp1buzweQbMvYgKZmE2h0wYSbiCvDrJ+ITMmwAc=;
 b=IJFXJjCibwKfNUOiQCp1JlGMkAtgvORwOi6fntAkmdXV7TAwwnpvaaFCjdTORnzFRQ
 mrmc27Pefqh5bqAq/aqfeXOcM5cy4gaIqkOeD/butl4CuorwZ6n6bQxP5QyGnMkbCw3m
 R9tGK7fIZyyCYHKBHUA3lqZVHt6kax2el+WpHGHLmkOnW/hNrlSY+6Y5q6G7eLq/7ogl
 B8xjA3BLnldSklthJd4STJn9cZYlDYwfNkx+NbRQsSOL7/0z3R0WP8e1nW7XOwQXzQ1B
 9u95uhgqJp3zCE9up+1EqEkfWNojZ+TclzSFpgIL5ENLTOwD4wxGNQMATLmDsuYVuNhb
 GiDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XrWcyp1buzweQbMvYgKZmE2h0wYSbiCvDrJ+ITMmwAc=;
 b=aTcTqzdvG9sxsvL1z0GN7zYEhdAqtRYf0QgBVf2ZFUuDduSPabEeI67Jcn0jxQbki4
 +s+B87Izsdi4LPf5pjgoKloFXKbg2+mdpwCNlSafvCmxRdk4odnp5wxSF4Wh7dJQek2S
 yBqp0gP0dtaghnoJgYwm7OUlJjEe/j7eiVp9dGNBkyvjMrGL2msB3J7Rs9ZL7lVCiReY
 jDvK5IKdAcCaQrltSTD95ZqsGqTCdXVyI5O3Itvq0jahTURkyaAOXI1R7m/1ai36nF+y
 ChQqXXm3/sseJqBooFW+2oKfa2qIHrCU4rzPhBdBe7C/stILXMJdgtttxmyW3sHebTy1
 6kFw==
X-Gm-Message-State: APjAAAVo0ZHgTz1tPNrX6NUACf82rxx3CZT4snmEos2hi7ESM/myHjFy
 xTZz3kRug/05O/Rl9E3zYT0f7Hs0uPnSG7kUNST4Ug==
X-Google-Smtp-Source: APXvYqwzoS/csv409X8Yf9La00JPxKWIxu4wbj0FyCwv2f8S5eKwddkMYEcCIX/87xgRi3XqvhpLLQDlG3a6xO+8SK8=
X-Received: by 2002:a9d:75d0:: with SMTP id c16mr10442901otl.32.1571081757198; 
 Mon, 14 Oct 2019 12:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190715191804.112933-1-hridya@google.com>
 <CAG48ez0dSd4q06YXOnkzmM8BkfQGTtYE6j60_YRdC5fmrTm8jw@mail.gmail.com>
 <CAG48ez2ez1bb=3o3h1KSahPU6QcdXhbh=Z2aX4Mte24H4901_g@mail.gmail.com>
 <CA+wgaPNPSOzEf-p8wsorqGe=eEbhFLkW6gYfYP1MaCqhQBvrnw@mail.gmail.com>
In-Reply-To: <CA+wgaPNPSOzEf-p8wsorqGe=eEbhFLkW6gYfYP1MaCqhQBvrnw@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Mon, 14 Oct 2019 21:35:30 +0200
Message-ID: <CAG48ez1w0MGaQdssdX7nZamPF_JmwR4g_Aj6cmHuojLfXAigfA@mail.gmail.com>
Subject: Re: [PATCH] binder: prevent transactions to context manager from its
 own process.
To: Hridya Valsaraju <hridya@google.com>
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
 kernel-team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 14, 2019 at 7:38 PM Hridya Valsaraju <hridya@google.com> wrote:
> On Fri, Oct 11, 2019 at 3:11 PM Jann Horn <jannh@google.com> wrote:
> > On Fri, Oct 11, 2019 at 11:59 PM Jann Horn <jannh@google.com> wrote:
> > > (I think you could also let A receive a handle
> > > to itself and then transact with itself, but I haven't tested that.)
> >
> > Ignore this sentence, that's obviously wrong because same-binder_proc
> > nodes will always show up as a binder, not a handle.
>
> Thank you for the email and steps to reproduce the issue Jann. I need
> some time to take a look at the same and I will get back to you once I
> understand it and hopefully have a fix. We do want to disallow
> same-process transactions. Here is a little bit more of context for
> the patch: https://lkml.org/lkml/2018/3/28/173

That patch (commit 7aa135fcf26377f92dc0680a57566b4c7f3e281b) prevented
transactions within one *binder_proc*, which makes sense to me; that
still allows same-process transactions, so long as they are between
different binder_proc instances. What I don't understand is your
follow-up in commit 49ed96943a8e0c62cc5a9b0a6cfc88be87d1fcec, where
you try to block transactions within the same process (well, kind of,
the semantics of the term "process" are quite fuzzy here and don't map
onto binder well).
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
