Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7654A1629A
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 13:09:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2CD5F279B9;
	Tue,  7 May 2019 11:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BD4mkb9MQp1X; Tue,  7 May 2019 11:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D92227408;
	Tue,  7 May 2019 11:09:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3549B1BF853
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 11:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2F8B681B74
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 11:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LljlyOaP+QrY for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 11:09:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D0FB816CE
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 11:09:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0C2420825;
 Tue,  7 May 2019 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557227363;
 bh=lH6zDECW23fQQmezy1wEZakHblsm5N0Cv80tHjWVNCc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sOR88QRttf7cjAkI3eaLJvcyuSDmHQ1qjgDydZzWSVyPd9M9JC19/WtjAWBZWLubr
 f+UE6Pt1H11AOiDsTKtWprMz1kZ3IkqTZNIcPGlWUmF6tRAMSgJ9qZUBzgkZWyiER3
 Rk2qbQJj3O1NasgjA5/lculWTtaWpGs1D1JA91xo=
Date: Tue, 7 May 2019 13:09:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507110921.GA32210@kroah.com>
References: <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
 <20190507081236.GA1531@sultan-box.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507081236.GA1531@sultan-box.localdomain>
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
 Daniel Colascione <dancol@google.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>, Suren Baghdasaryan <surenb@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 01:12:36AM -0700, Sultan Alsawaf wrote:
> On Tue, May 07, 2019 at 09:43:34AM +0200, Greg Kroah-Hartman wrote:
> > Given that any "new" android device that gets shipped "soon" should be
> > using 4.9.y or newer, is this a real issue?
> 
> It's certainly a real issue for those who can't buy brand new Android devices
> without software bugs every six months :)

Heh.

But, your "new code" isn't going to be going into any existing device,
or any device that will come out this year.  The soonest it would be
would be next year, and by then, 4.9.y is fine.

> > And if it is, I'm sure that asking for those patches to be backported to
> > 4.4.y would be just fine, have you asked?
> >
> > Note that I know of Android Go devices, running 3.18.y kernels, do NOT
> > use the in-kernel memory killer, but instead use the userspace solution
> > today.  So trying to get another in-kernel memory killer solution added
> > anywhere seems quite odd.
> 
> It's even more odd that although a userspace solution is touted as the proper
> way to go on LKML, almost no Android OEMs are using it, and even in that commit
> I linked in the previous message, Google made a rather large set of
> modifications to the supposedly-defunct lowmemorykiller.c not one month ago.
> What's going on?

"almost no"?  Again, Android Go is doing that, right?

And yes, there is still some 4.4 android-common work happening in this
area, see this patch that just got merged:
	https://android-review.googlesource.com/c/kernel/common/+/953354

So, for 4.4.y based devices, that should be enough, right?

> Qualcomm still uses lowmemorykiller.c [1] on the Snapdragon 845.

Qualcomm should never be used as an example of a company that has any
idea of what to do in their kernel :)

> If PSI were backported to 4.4, or even 3.18, would it really be used?

Why wouldn't it, if it worked properly?

> I don't really understand the aversion to an in-kernel memory killer
> on LKML despite the rest of the industry's attraction to it. Perhaps
> there's some inherently great cost in using the userspace solution
> that I'm unaware of?

Please see the work that went into PSI and the patches around it.
There's also a lwn.net article last week about the further work ongoing
in this area.  With all of that, you should see how in-kernel memory
killers are NOT the way to go.

> Regardless, even if PSI were backported, a full-fledged LMKD using it has yet to
> be made, so it wouldn't be of much use now.

"LMKD"?  Again, PSI is in the 4.9.y android-common tree, so the
userspace side should be in AOSP, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
