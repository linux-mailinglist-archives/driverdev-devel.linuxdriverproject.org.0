Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B495621B32B
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 12:28:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 189328750F;
	Fri, 10 Jul 2020 10:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 16X2hZNMLUDl; Fri, 10 Jul 2020 10:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C541C87264;
	Fri, 10 Jul 2020 10:27:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 885B71BF322
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 10:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5E13A20022
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 10:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y3pCI71oPzMI for <devel@linuxdriverproject.org>;
 Fri, 10 Jul 2020 10:27:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 339C820017
 for <devel@driverdev.osuosl.org>; Fri, 10 Jul 2020 10:27:37 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id h22so5834393lji.9
 for <devel@driverdev.osuosl.org>; Fri, 10 Jul 2020 03:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=irAYaXay27AD2lSUWXkja3Lk/12VaS/aPk24zD+y1jA=;
 b=NT6hn6KGBeSQNYoJ4TSGOgqeZXB5x8xlaW3d75qpNeg6Y8S8odq5NytrN3uXcansjX
 R0wU3gTNmnz8FvK3Xg1hyZj/sgS0qA5XQ0TCT9LQ8HC/FvTbv4wOAlDmXUeoOB/eAD5G
 ComUdluQ8Bv9ZUBNdjeD4l9ho5eoD9jAlcwZkH4XNt/r42KU8uiqb/TkhmhBuUoodSGA
 JQTeh+H3b09tnx0BdzjWCrq02e0kDiKyc5EISTsdRP6DrpF2DT8ZXA6IuOwG+DG8LwmW
 4Y/40sJnOCpYyM0snl68oDWdwCQPJa2lt6rbsuF2paDlX8AOYHdSuOwyfcM42WNNTaUN
 vAdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=irAYaXay27AD2lSUWXkja3Lk/12VaS/aPk24zD+y1jA=;
 b=QCeAqLP6sV4SyjxNNFjEMxKV2f7Pywe9uKWoUcFfwyrIrxZ1eOqJFMLSudPnITIBZI
 ropIe6klW7DcRVmmIVlqkIrSDIREXRiR1FNgzf+s+sB7q64g4reuQaCFdOyedK98uyFa
 UYH5HIp5KmULZhDCEDNHX4XQy/1MzDawA240u/YTHpYA9xb9+slS7nPxpXRD4z+dDXM+
 VFboCyMQHjdxb7YQae3xcug/lEqQKbgCkVu2q1HSw/Cn3aw80Ml0h14J853oqH0klpz1
 sFg1rE0NedIsVMKRo6borhLPT1xe9gIjipFMOIuXG6TOn7Pii7nq31vSadWExVNuJIWK
 +0AA==
X-Gm-Message-State: AOAM5305PJEqPoT36zUMgEjEg7lEFLRGPB6VQBFeV873HyKZQC9x2Rft
 NXVXRYThF2ad7o+9USqjx/LCO4UW8mRsyLiNTokRIg==
X-Google-Smtp-Source: ABdhPJyvjlEfU5AEHqHy1TpQ6u3w5UGbNJbg/vKjfQjSlvZ99aPTn9iHVT52rgNOqMSP3WBHmgzMbme69Qni0E5tUhk=
X-Received: by 2002:a05:651c:21c:: with SMTP id
 y28mr28230968ljn.139.1594376854785; 
 Fri, 10 Jul 2020 03:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200709223948.1051613-1-jannh@google.com>
 <20200710065418.GA1143105@kroah.com>
In-Reply-To: <20200710065418.GA1143105@kroah.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 10 Jul 2020 12:27:08 +0200
Message-ID: <CAG48ez2kjacpSyesHQxnpq5oTX1Dgp8wDhtMOXuH7u7tXxBM+w@mail.gmail.com>
Subject: Re: [PATCH resend] binder: Prevent context manager from incrementing
 ref 0
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
 Todd Kjos <tkjos@android.com>, Mattias Nissler <mnissler@google.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 10, 2020 at 8:54 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Fri, Jul 10, 2020 at 12:39:48AM +0200, Jann Horn wrote:
> > Binder is designed such that a binder_proc never has references to
> > itself. If this rule is violated, memory corruption can occur when a
> > process sends a transaction to itself; see e.g.
> > <https://syzkaller.appspot.com/bug?extid=09e05aba06723a94d43d>.
> >
> > There is a remaining edgecase through which such a transaction-to-self
> > can still occur from the context of a task with BINDER_SET_CONTEXT_MGR
> > access:
> >
> >  - task A opens /dev/binder twice, creating binder_proc instances P1
> >    and P2
> >  - P1 becomes context manager
> >  - P2 calls ACQUIRE on the magic handle 0, allocating index 0 in its
> >    handle table
> >  - P1 dies (by closing the /dev/binder fd and waiting a bit)
> >  - P2 becomes context manager
> >  - P2 calls ACQUIRE on the magic handle 0, allocating index 1 in its
> >    handle table
> >    [this triggers a warning: "binder: 1974:1974 tried to acquire
> >    reference to desc 0, got 1 instead"]
> >  - task B opens /dev/binder once, creating binder_proc instance P3
> >  - P3 calls P2 (via magic handle 0) with (void*)1 as argument (two-way
> >    transaction)
> >  - P2 receives the handle and uses it to call P3 (two-way transaction)
> >  - P3 calls P2 (via magic handle 0) (two-way transaction)
> >  - P2 calls P2 (via handle 1) (two-way transaction)
> >
> > And then, if P2 does *NOT* accept the incoming transaction work, but
> > instead closes the binder fd, we get a crash.
> >
> > Solve it by preventing the context manager from using ACQUIRE on ref 0.
> > There shouldn't be any legitimate reason for the context manager to do
> > that.
> >
> > Additionally, print a warning if someone manages to find another way to
> > trigger a transaction-to-self bug in the future.
> >
> > Cc: stable@vger.kernel.org
> > Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> > Signed-off-by: Jann Horn <jannh@google.com>
> > Acked-by: Todd Kjos <tkjos@google.com>
> > ---
> > sending again because I forgot to CC LKML the first time... sorry about
> > the spam.
>
> This spits out a bunch of warnings when built, how did it work on your
> end?

... by creating the patch file before fixing the warnings. Sigh. I'll
send the proper patch as v2...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
