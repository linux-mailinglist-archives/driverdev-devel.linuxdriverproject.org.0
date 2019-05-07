Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6638616937
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 19:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA34F3015B;
	Tue,  7 May 2019 17:29:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IgdOegesca4H; Tue,  7 May 2019 17:29:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2ACD2FB9A;
	Tue,  7 May 2019 17:29:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B91D11BF5B4
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 17:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B58C385FB6
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 17:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwqo9Jl1-Mr9 for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 17:29:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 87AAE85FB4
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 17:29:43 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDFC9205ED;
 Tue,  7 May 2019 17:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557250183;
 bh=0aJ6ctT9vRN+sTWk16Y0kR/0wZNkZvMg4FJNEQtB+p4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X69pWunFdt3abRor30eAi6ii8e0h5YWRT265TXQ35VyTi3237oX/jgxrmWxHMDzrn
 jWcC3oUU67MGkRXnhy+uK/D0yND+RsTKHyAZqgjvh1anuZd8OMCMwHp6Ew+oHmwYRj
 q6lrXTdH17oLXqhF6mYfNJwdkR7vBAeIWptDiI0o=
Date: Tue, 7 May 2019 19:29:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507172940.GA6835@kroah.com>
References: <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
 <20190507081236.GA1531@sultan-box.localdomain>
 <20190507105826.oi6vah6x5brt257h@brauner.io>
 <20190507171711.GB12201@sultan-box.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507171711.GB12201@sultan-box.localdomain>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Daniel Colascione <dancol@google.com>, Todd Kjos <tkjos@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>,
 Suren Baghdasaryan <surenb@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Tim Murray <timmurray@google.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Martijn Coenen <maco@android.com>,
 Steven Rostedt <rostedt@goodmis.org>, Oleg Nesterov <oleg@redhat.com>,
 Joel Fernandes <joel@joelfernandes.org>, Andy Lutomirski <luto@amacapital.net>,
 kernel-team <kernel-team@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 10:17:11AM -0700, Sultan Alsawaf wrote:
> On Tue, May 07, 2019 at 01:09:21PM +0200, Greg Kroah-Hartman wrote:
> > > It's even more odd that although a userspace solution is touted as the proper
> > > way to go on LKML, almost no Android OEMs are using it, and even in that commit
> > > I linked in the previous message, Google made a rather large set of
> > > modifications to the supposedly-defunct lowmemorykiller.c not one month ago.
> > > What's going on?
> > 
> > "almost no"?  Again, Android Go is doing that, right?
> 
> I'd check for myself, but I can't seem to find kernel source for an Android Go
> device...
> 
> This seems more confusing though. Why would the ultra-low-end devices use LMKD
> while other devices use the broken lowmemorykiller driver?

It's probably because the Android Go devices got a lot more "help" from
people at Google than did the other devices you are looking at.  Also,
despite the older kernel version, they are probably running a newer
version of Android userspace, specially tuned just for lower memory
devices.

So those 3.18.y based Android Go devices are newer than the 4.4.y based
"full Android" devices on the market, and even some 4.9.y based devices.

Yes, it is strange :)

> > > Qualcomm still uses lowmemorykiller.c [1] on the Snapdragon 845.
> > 
> > Qualcomm should never be used as an example of a company that has any
> > idea of what to do in their kernel :)
> 
> Agreed, but nearly all OEMs that use Qualcomm chipsets roll with Qualcomm's
> kernel decisions, so Qualcomm has a bit of influence here.

Yes, because almost no OEM wants to mess with their kernel, they just
take QCOM's kernel and run with it.  But don't take that for some sort
of "best design practice" summary at all.

> > > If PSI were backported to 4.4, or even 3.18, would it really be used?
> > 
> > Why wouldn't it, if it worked properly?
> 
> For the same mysterious reason that Qualcomm and others cling to
> lowmemorykiller, I presume. This is part of what's been confusing me for quite
> some time...

QCOM's 4.4.y based kernel work was done 3-4 years ago, if not older.
They didn't know that this was not the "right way" to do things.  The
Google developers have been working for the past few years to do it
correct, but they can not go back in time to change old repos, sorry.

Now that I understand you just want to work on your local device, that
makes more sense.  But I think you will have a better result trying to
do a 4.4 backport of PSI combined with the userspace stuff, than to try
to worry about your driver in 5.2 or newer.

Or you can forward-port your kernel to 4.9, or better yet, 4.14.  That
would probably be a much better thing to do overall as 4.4 is really old
now.

Good luck!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
