Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8D65A176
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 18:56:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6327887683;
	Fri, 28 Jun 2019 16:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPfv-yrG4Bem; Fri, 28 Jun 2019 16:55:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 169AE87658;
	Fri, 28 Jun 2019 16:55:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 957FD1BF36D
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 16:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 92147881EC
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 16:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CrYRcM6ZuGg8 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 16:55:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A52BA881D9
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 16:55:56 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id v24so6641572ljg.13
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 09:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E1s9SHdejCcLhI9v5CB85EdGtkVPS8wN9741lqH2J5U=;
 b=WiYmuPB4PHzJzEMi+NJ0Wmoh8XdcD/3l5z9Les3Q2QX9RSp7PR2A80PLUcprJVIf1D
 NNhv+ISL/4Sv4sJBG9lx9fIyzNABC//kk3odCEG59D/9NWoXeQcTi/Mwl3rRi1X3H+0s
 yiN2GuHOaVs1ftEWtBeFJlSCdEt+2fQSWO3I4h7kVF1qUt/WX7yyOPBvE6KQFATwRz50
 79ng+DKldaBoKKxTEeai9arj/hGvu+ucq/d35SL8Rdd9MIBfSD7icWi2RCQpeyk/zpT5
 1lDS6uVcsPkkR7uqUwPLkBTWuIm48tX5cjFBRjfyzKePgIK3nR55pnk2Ru+q2Qcp3PpZ
 m61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E1s9SHdejCcLhI9v5CB85EdGtkVPS8wN9741lqH2J5U=;
 b=IP30B6CyBRox5oSrXDIn/g5I36gKwRv/bUe5UOIGxL9AqPtsaQefwF/wtdJIlbUeKv
 RwgKO18N0zlHY4BgDkcChWwp1MuXgSeydxpk1IDytpgTr+ANt17+wXIaZ/ath1cFBVq+
 5syW5lIBmOG9hU0twRfKx5R2nzHjizsn99IXLlDZmdC6JvqPIVHUgET47d98+VI4PoD3
 h1NKxA9lQTFsE26vxkT7Abqunszmbun69XDcNjSJFS+SdpnYVN7zXlvOFGDXKWmTX4MK
 QTOq0BoeehvUtYD0j2705PjMF4Ye+PcKKu1qGK/eV6yhXV3XmHn257XmBElOjTk0g9Lk
 SgXQ==
X-Gm-Message-State: APjAAAVy1JW4KW2g+zPkWJfARWE7PO/dk57SuXXjJIkP1nP2vdtPcu3Q
 rmp1e0/0B4Y9413LSVOIiHP2TuMC7djvRyTeqMagLQ==
X-Google-Smtp-Source: APXvYqz2M85/GYPs1z6CkDilf7Lb1A6Oty+PzwB3F4eQBe9UBJa9DbMbwOrjU7l4kfroJCG64CsVRE+AX1kR3xl5Ltk=
X-Received: by 2002:a2e:970d:: with SMTP id r13mr6755114lji.126.1561740954178; 
 Fri, 28 Jun 2019 09:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000b6b25b058b96d5c3@google.com>
 <20190618121756.GL28859@kadam>
 <CAHRSSExL1fUNpV4jBON5qh47M8A+na0twVNEqpvkBoYVnbJSHA@mail.gmail.com>
In-Reply-To: <CAHRSSExL1fUNpV4jBON5qh47M8A+na0twVNEqpvkBoYVnbJSHA@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 28 Jun 2019 09:55:42 -0700
Message-ID: <CAHRSSEzAv_jVBsP9U6Nb3uDnXEwH1Q6ef0fTrxLNTjAV0HeHng@mail.gmail.com>
Subject: Re: kernel BUG at drivers/android/binder_alloc.c:LINE! (4)
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: syzbot <syzbot+3ae18325f96190606754@syzkaller.appspotmail.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 18, 2019 at 10:37 AM Todd Kjos <tkjos@google.com> wrote:
>
> On Tue, Jun 18, 2019 at 5:18 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > It's weird that that binder_alloc_copy_from_buffer() is a void function.
> > It would be easier to do the error handling at that point, instead of in
> > the callers.  It feels like we keep hitting similar bugs to this.

I took your advice. Fix posted: https://lkml.org/lkml/2019/6/28/857

-Todd

>
> The idea is that if it is an error that the user can cause, it is
> checked by the caller of binder_alloc_copy_from_buffer(). Most uses
> are kernel cases where the expected alignments should be fine and it's
> a BUG if they are not.
>
> Admittedly, a few cases (like this one) have slipped through since
> they cannot happen in Android (syzkaller has been very useful to find
> our bad assumptions).
>
> -Todd
>
> >
> > regards,
> > dan carpenter
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
