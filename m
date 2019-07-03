Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4EA5EBEA
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 20:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 440562156F;
	Wed,  3 Jul 2019 18:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1uqKx9X-yrzc; Wed,  3 Jul 2019 18:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BF0302046C;
	Wed,  3 Jul 2019 18:46:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7C51BF321
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 18:46:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3861587C76
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 18:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4d3CqzNEaqaw for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 18:46:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2007B87B69
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 18:46:34 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id v24so3534885ljg.13
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 11:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vCIUPeCCEF+OLz7w98udyRcP/O/Khzz7h89sR5YZeg4=;
 b=pGPO5o/p8zY1Oc4aPFzsn/Mool+es6Sl/wsHeKtG+4T7hctg/2z6k2jLIpWXJjSMD9
 7mhnhoZiyom+kOicmb3t+F5QcYtVN4qZr/S1G9PUhNtT9UL3MHWcf0OFmpKDMqnSicg0
 A7i4opJIwLQBzzpg2lTwrxtwi1Nn6GpdhNh4go8sUJ9tkD4ds+9ojwVootFLPHDdEw2I
 ZkwBdGLo4wOw9K5+dtPlMTRelWuyWU5X08SdLgpPGAxPslQUmq1zDZUfrTB/uj4Ii517
 e0DTGmeARSOMj4gybq+qQ0TRyCHo9Upj8pKw42NAKUCHu/wTHrDryJwJaRXW7jP05Em/
 yt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vCIUPeCCEF+OLz7w98udyRcP/O/Khzz7h89sR5YZeg4=;
 b=goci41dnNjaQlrEtQtBUiqg3RlSuwh7rGVnKE8tp306zoJ13VI16qKkv8BVdM9I+G+
 ypVk+16+Q9GpaCMLEM5S4CHNzoKWMpiukiQ59VeBK6lSX8akcrYVd9bxnkiuMJ1Z52GJ
 Yo0ua/lpcQzAETmcLhnvmQLcehP4TKb0aw+/gZJzm95T/9rb7wRwbdEc9iIlAtTbkYz6
 9x3Mh5Zcwqbngo7m1huhn6xU7IhYLowLI2N20Yn5a7qSTwgES8jrhVfk6AmEQL8473L/
 +DEavvmQQ6UGFOkArZRNI+G1J/LU2UpeUtg7nUvbAMqdrwKTgG+MwAKcS+0iV8/T0Dys
 1L4w==
X-Gm-Message-State: APjAAAU9cndyAWM3Xa99T3f38VDJ5dtmvO0fbHyhRVKYr0BJKuJyDdJ3
 y+/g9zffDlOqNQhEzZgzS9qLn+3RyztgzZBtpLBqCw==
X-Google-Smtp-Source: APXvYqwiem5/n4z8d4zc+GCZEWpVW1sd4VnYulWvpXNjCar1izXohWHI0hwu9Cczfd1wDW2xf9ddEgTiPFBZQtzl+o4=
X-Received: by 2002:a2e:98d7:: with SMTP id s23mr11048254ljj.179.1562179591897; 
 Wed, 03 Jul 2019 11:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190703050229.GC633@sol.localdomain>
In-Reply-To: <20190703050229.GC633@sol.localdomain>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 3 Jul 2019 11:46:20 -0700
Message-ID: <CAHRSSExd8bKR01010QLcWSotXXeVS5QC7iWvt7Qdz4VRyd-wCA@mail.gmail.com>
Subject: Re: Reminder: 3 open syzbot bugs in "android/binder" subsystem
To: Eric Biggers <ebiggers@kernel.org>
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
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 2, 2019 at 10:03 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> [This email was generated by a script.  Let me know if you have any suggestions
> to make it better, or if you want it re-generated with the latest status.]
>
> Of the currently open syzbot reports against the upstream kernel, I've manually
> marked 3 of them as possibly being bugs in the "android/binder" subsystem.  I've
> listed these reports below, sorted by an algorithm that tries to list first the
> reports most likely to be still valid, important, and actionable.
>
> Of these 3 bugs, 1 was seen in mainline in the last week.
>
> Of these 3 bugs, 1 was bisected to a commit from the following person:
>
>         Todd Kjos <tkjos@android.com>
>
> If you believe a bug is no longer valid, please close the syzbot report by
> sending a '#syz fix', '#syz dup', or '#syz invalid' command in reply to the
> original thread, as explained at https://goo.gl/tpsmEJ#status
>
> If you believe I misattributed a bug to the "android/binder" subsystem, please
> let me know, and if possible forward the report to the correct people or mailing
> list.
>
> Here are the bugs:
>
> --------------------------------------------------------------------------------
> Title:              kernel BUG at drivers/android/binder_alloc.c:LINE! (4)
> Last occurred:      6 days ago
> Reported:           14 days ago
> Branches:           Mainline and others
> Dashboard link:     https://syzkaller.appspot.com/bug?id=bbf40136a49ffaa8ac60906edcbe77f825b2c406
> Original thread:    https://lkml.kernel.org/lkml/000000000000b6b25b058b96d5c3@google.com/T/#u
>
> This bug has a C reproducer.
>
> This bug was bisected to:
>
>         commit bde4a19fc04f5f46298c86b1acb7a4af1d5f138d
>         Author: Todd Kjos <tkjos@android.com>
>         Date:   Fri Feb 8 18:35:20 2019 +0000
>
>           binder: use userspace pointer as base of buffer space
>
> The original thread for this bug has received 3 replies; the last was 4 days
> ago.

Fix posted: https://lore.kernel.org/lkml/20190628165012.4841-1-tkjos@google.com/

>
> If you fix this bug, please add the following tag to the commit:
>     Reported-by: syzbot+3ae18325f96190606754@syzkaller.appspotmail.com
>
> If you send any email or patch for this bug, please reply to the original
> thread, which had activity only 4 days ago.  For the git send-email command to
> use, or tips on how to reply if the thread isn't in your mailbox, see the "Reply
> instructions" at https://lkml.kernel.org/r/000000000000b6b25b058b96d5c3@google.com
>
> --------------------------------------------------------------------------------
> Title:              WARNING in binder_transaction_buffer_release
> Last occurred:      0 days ago
> Reported:           43 days ago
> Branches:           Mainline and others
> Dashboard link:     https://syzkaller.appspot.com/bug?id=4e0a6a529aef923a8d61c5d20b8fc0605c730138
> Original thread:    https://lkml.kernel.org/lkml/000000000000afe2c70589526668@google.com/T/#u

Assigned to Hridya Valsaraju (b/134585943)

>
> This bug has a syzkaller reproducer only.
>
> The original thread for this bug has received 2 replies; the last was 20 days
> ago.
>
> If you fix this bug, please add the following tag to the commit:
>     Reported-by: syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com
>
> If you send any email or patch for this bug, please consider replying to the
> original thread.  For the git send-email command to use, or tips on how to reply
> if the thread isn't in your mailbox, see the "Reply instructions" at
> https://lkml.kernel.org/r/000000000000afe2c70589526668@google.com
>
> --------------------------------------------------------------------------------
> Title:              possible deadlock in uprobe_clear_state
> Last occurred:      165 days ago
> Reported:           202 days ago
> Branches:           Mainline
> Dashboard link:     https://syzkaller.appspot.com/bug?id=a1ce9b3da349209c5085bb8c4fee753d68c3697f
> Original thread:    https://lkml.kernel.org/lkml/00000000000010a9fb057cd14174@google.com/T/#u
>
> Unfortunately, this bug does not have a reproducer.
>
> [Note: the uprobe developers think this is a bug in binder, not uprobes.
>  See https://marc.info/?l=linux-kernel&m=155119805728815&w=2
>  for a suggested fix for this bug.]

Just learned about this, but looks like a straightforward fix.

>
> If you fix this bug, please add the following tag to the commit:
>     Reported-by: syzbot+1068f09c44d151250c33@syzkaller.appspotmail.com
>
> If you send any email or patch for this bug, please consider replying to the
> original thread.  For the git send-email command to use, or tips on how to reply
> if the thread isn't in your mailbox, see the "Reply instructions" at
> https://lkml.kernel.org/r/00000000000010a9fb057cd14174@google.com
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
