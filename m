Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDF318D73
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 17:57:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB3D0878D7;
	Thu,  9 May 2019 15:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1j0V1ECMR6j; Thu,  9 May 2019 15:56:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F04A875FB;
	Thu,  9 May 2019 15:56:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F02531BF2BB
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 15:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA77487853
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 15:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9zvq6n32DZPG for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 15:56:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2906A875FB
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 15:56:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BF84BDBD6F;
 Thu,  9 May 2019 15:56:52 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 4B9EC27BCD;
 Thu,  9 May 2019 15:56:48 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Thu,  9 May 2019 17:56:51 +0200 (CEST)
Date: Thu, 9 May 2019 17:56:46 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190509155646.GB24526@redhat.com>
References: <CAKOZuetZPhqQqSgZpyY0cLgy0jroLJRx-B93rkQzcOByL8ih_Q@mail.gmail.com>
 <20190318002949.mqknisgt7cmjmt7n@brauner.io>
 <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507153154.GA5750@redhat.com>
 <20190507163520.GA1131@sultan-box.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507163520.GA1131@sultan-box.localdomain>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 09 May 2019 15:56:53 +0000 (UTC)
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
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Martijn Coenen <maco@android.com>,
 Steven Rostedt <rostedt@goodmis.org>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05/07, Sultan Alsawaf wrote:
>
> On Tue, May 07, 2019 at 05:31:54PM +0200, Oleg Nesterov wrote:
>
> > Did you test this patch with lockdep enabled?
> >
> > If I read the patch correctly, lockdep should complain. vtsk_is_duplicate()
> > ensures that we do not take the same ->alloc_lock twice or more, but lockdep
> > can't know this.
>
> Yeah, lockdep is fine with this, at least on 4.4.

Impossible ;) I bet lockdep should report the deadlock as soon as find_victims()
calls find_lock_task_mm() when you already have a locked victim.

Nevermind, I guess this code won't run with lockdep enabled...


As for https://github.com/kerneltoast/android_kernel_google_wahoo/commit/afc8c9bf2dbde95941253c168d1adb64cfa2e3ad
Well,

	mmdrop(mm);
	simple_lmk_mm_freed(mm);

looks racy because mmdrop(mm) can free this mm_struct. Yes, simple_lmk_mm_freed()
does not dereference this pointer, but the same memory can be re-allocated as
another ->mm for the new task which can be found by find_victims(), and _in theory_
this all can happen in between, so the "victims[i].mm == mm" can be false positive.

And this also means that simple_lmk_mm_freed() should clear victims[i].mm when
it detects "victims[i].mm == mm", otherwise we have the same theoretical race,
victims_to_kill is only cleared when the last victim goes away.


Another nit... you can drop tasklist_lock right after the 1st "find_victims" loop.

And it seems that you do not really need to walk the "victims" array twice after that,
you can do everything in a single loop, but this is cosmetic.

Oleg.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
