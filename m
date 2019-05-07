Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AAB15E73
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 09:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A02985ECE;
	Tue,  7 May 2019 07:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q103iZrSb81I; Tue,  7 May 2019 07:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB4C5855CB;
	Tue,  7 May 2019 07:43:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 068001BF34D
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EC6DA85B48
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoBxRi-UY-x4 for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 07:43:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6A7FC853C5
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 07:43:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B243120989;
 Tue,  7 May 2019 07:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557215017;
 bh=MFdZ/EgpyfY0kwMJXZf/qyVBEWcoQTA3dkpraEXQxMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2MVgXQNq38tiYvMcy6xa99VJq5jg23ZnqHpAEu4onk5dmCkIOFH9x1lLwuj6OOiJ2
 sewqDcBYKlyNG65ez+rwXLx6PYzSMdFiHCNVzxgbw++r7k2T6KOScNLiActm7KzU+m
 xAvWpbDF7QlCx3RNDlId5RsJEh+Nfm1FJlhwRxwU=
Date: Tue, 7 May 2019 09:43:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507074334.GB26478@kroah.com>
References: <CAKOZuetZPhqQqSgZpyY0cLgy0jroLJRx-B93rkQzcOByL8ih_Q@mail.gmail.com>
 <20190318002949.mqknisgt7cmjmt7n@brauner.io>
 <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507072721.GA4364@sultan-box.localdomain>
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

On Tue, May 07, 2019 at 12:27:21AM -0700, Sultan Alsawaf wrote:
> On Tue, May 07, 2019 at 09:04:30AM +0200, Greg Kroah-Hartman wrote:
> > Um, why can't "all" Android devices take the same patches that the Pixel
> > phones are using today?  They should all be in the public android-common
> > kernel repositories that all Android devices should be syncing with on a
> > weekly/monthly basis anyway, right?
> > 
> > thanks,
> > 
> > greg k-h
> 
> Hi Greg,
> 
> I only see PSI present in the android-common kernels for 4.9 and above. The vast
> majority of Android devices do not run a 4.9+ kernel. It seems unreasonable to
> expect OEMs to toil with backporting PSI themselves to get decent memory
> management.

Given that any "new" android device that gets shipped "soon" should be
using 4.9.y or newer, is this a real issue?

And if it is, I'm sure that asking for those patches to be backported to
4.4.y would be just fine, have you asked?

Note that I know of Android Go devices, running 3.18.y kernels, do NOT
use the in-kernel memory killer, but instead use the userspace solution
today.  So trying to get another in-kernel memory killer solution added
anywhere seems quite odd.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
