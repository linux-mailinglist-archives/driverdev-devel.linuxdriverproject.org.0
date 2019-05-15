Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD71FA0B
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 20:35:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0C7487194;
	Wed, 15 May 2019 18:32:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26Hm0-cMZBaC; Wed, 15 May 2019 18:32:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33C6987167;
	Wed, 15 May 2019 18:32:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 276291BF410
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 18:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 230EB30E82
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 18:32:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8AriW+7J7VJs for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 18:32:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 69081214EC
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 18:32:49 +0000 (UTC)
Received: from oasis.local.home (50-204-120-225-static.hfc.comcastbusiness.net
 [50.204.120.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9887720843;
 Wed, 15 May 2019 18:32:48 +0000 (UTC)
Date: Wed, 15 May 2019 14:32:48 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190515143248.17b827d0@oasis.local.home>
In-Reply-To: <20190515172728.GA14047@sultan-box.localdomain>
References: <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507153154.GA5750@redhat.com>
 <20190507163520.GA1131@sultan-box.localdomain>
 <20190509155646.GB24526@redhat.com>
 <20190509183353.GA13018@sultan-box.localdomain>
 <20190510151024.GA21421@redhat.com>
 <20190513164555.GA30128@sultan-box.localdomain>
 <20190515145831.GD18892@redhat.com>
 <20190515172728.GA14047@sultan-box.localdomain>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Tim Murray <timmurray@google.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm <linux-mm@kvack.org>,
 Arve =?UTF-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Andy Lutomirski <luto@amacapital.net>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 15 May 2019 10:27:28 -0700
Sultan Alsawaf <sultan@kerneltoast.com> wrote:

> On Wed, May 15, 2019 at 04:58:32PM +0200, Oleg Nesterov wrote:
> > Could you explain in detail what exactly did you do and what do you see in dmesg?
> > 
> > Just in case, lockdep complains only once, print_circular_bug() does debug_locks_off()
> > so it it has already reported another false positive __lock_acquire() will simply
> > return after that.
> > 
> > Oleg.  
> 
> This is what I did:
> diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
> index 774ab79d3ec7..009e7d431a88 100644
> --- a/kernel/locking/lockdep.c
> +++ b/kernel/locking/lockdep.c
> @@ -3078,6 +3078,7 @@ static int __lock_acquire(struct lockdep_map *lock, unsigned int subclass,
>         int class_idx;
>         u64 chain_key;
> 
> +       BUG_ON(!debug_locks || !prove_locking);
>         if (unlikely(!debug_locks))
>                 return 0;
> 
> diff --git a/lib/debug_locks.c b/lib/debug_locks.c
> index 124fdf238b3d..4003a18420fb 100644
> --- a/lib/debug_locks.c
> +++ b/lib/debug_locks.c
> @@ -37,6 +37,7 @@ EXPORT_SYMBOL_GPL(debug_locks_silent);
>   */
>  int debug_locks_off(void)
>  {
> +       return 0;

I'm confused why you did this?

-- Steve

>         if (debug_locks && __debug_locks_off()) {
>                 if (!debug_locks_silent) {
>                         console_verbose();
> 
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
