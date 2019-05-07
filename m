Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3718915DD2
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 09:04:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 99BFF2286F;
	Tue,  7 May 2019 07:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r1iJ3o-kmOgt; Tue,  7 May 2019 07:04:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1AAC82286C;
	Tue,  7 May 2019 07:04:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C82701BF2B6
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C263022844
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NZR+xlsvrE3t for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 07:04:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 46DC220796
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 07:04:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A59721019;
 Tue,  7 May 2019 07:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557212673;
 bh=hNi2vt1qB3b6X3N9lBhgsKLvokmDdrvsjVx/J28EZ90=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1NwSfNdiJdTpK3PxZVb09tk48+2+AXcgrQl+ONIUsuxrfaxWSH5EVRvzyWG0q5iZK
 GoU2xj/aHaJYSzTAqERyT8jaORLr94yQ1si1oFuQ21nMGXDmmeQt8N0QaISagR8JcU
 YXN8lw0eZwmxKlwz0uu4QBqj9nvLINBiTWHmBxHY=
Date: Tue, 7 May 2019 09:04:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507070430.GA24150@kroah.com>
References: <20190317015306.GA167393@google.com>
 <20190317114238.ab6tvvovpkpozld5@brauner.io>
 <CAKOZuetZPhqQqSgZpyY0cLgy0jroLJRx-B93rkQzcOByL8ih_Q@mail.gmail.com>
 <20190318002949.mqknisgt7cmjmt7n@brauner.io>
 <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507021622.GA27300@sultan-box.localdomain>
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
 Martijn Coenen <maco@android.com>, LKML <linux-kernel@vger.kernel.org>,
 Tim Murray <timmurray@google.com>, Michal Hocko <mhocko@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, kernel-team <kernel-team@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 06, 2019 at 07:16:22PM -0700, Sultan Alsawaf wrote:
> This is a complete low memory killer solution for Android that is small
> and simple. Processes are killed according to the priorities that
> Android gives them, so that the least important processes are always
> killed first. Processes are killed until memory deficits are satisfied,
> as observed from kswapd struggling to free up pages. Simple LMK stops
> killing processes when kswapd finally goes back to sleep.
> 
> The only tunables are the desired amount of memory to be freed per
> reclaim event and desired frequency of reclaim events. Simple LMK tries
> to free at least the desired amount of memory per reclaim and waits
> until all of its victims' memory is freed before proceeding to kill more
> processes.
> 
> Signed-off-by: Sultan Alsawaf <sultan@kerneltoast.com>
> ---
> Hello everyone,
> 
> I've addressed some of the concerns that were brought up with the first version
> of the Simple LMK patch. I understand that a kernel-based solution like this
> that contains policy decisions for a specific userspace is not the way to go,
> but the Android ecosystem still has a pressing need for a low memory killer that
> works well.
> 
> Most Android devices still use the ancient and deprecated lowmemorykiller.c
> kernel driver; Simple LMK seeks to replace that, at the very least until PSI and
> a userspace daemon utilizing PSI are ready for *all* Android devices, and not
> just the privileged Pixel phone line.

Um, why can't "all" Android devices take the same patches that the Pixel
phones are using today?  They should all be in the public android-common
kernel repositories that all Android devices should be syncing with on a
weekly/monthly basis anyway, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
