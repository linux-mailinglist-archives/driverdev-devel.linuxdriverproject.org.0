Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C20021FB63
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 22:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74E1A86457;
	Wed, 15 May 2019 20:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w8mName3j5b8; Wed, 15 May 2019 20:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74A5984EC1;
	Wed, 15 May 2019 20:10:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E8241BF3E8
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 20:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6AB1686004
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 20:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TlvldBouaKJI for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 20:09:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 607E284E9A
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 20:09:09 +0000 (UTC)
Received: from oasis.local.home (50-204-120-225-static.hfc.comcastbusiness.net
 [50.204.120.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D5382084F;
 Wed, 15 May 2019 20:09:08 +0000 (UTC)
Date: Wed, 15 May 2019 16:09:06 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190515160906.4ce25c8e@oasis.local.home>
In-Reply-To: <20190515185257.GC2888@sultan-box.localdomain>
References: <20190507021622.GA27300@sultan-box.localdomain>
 <20190507153154.GA5750@redhat.com>
 <20190507163520.GA1131@sultan-box.localdomain>
 <20190509155646.GB24526@redhat.com>
 <20190509183353.GA13018@sultan-box.localdomain>
 <20190510151024.GA21421@redhat.com>
 <20190513164555.GA30128@sultan-box.localdomain>
 <20190515145831.GD18892@redhat.com>
 <20190515172728.GA14047@sultan-box.localdomain>
 <20190515143248.17b827d0@oasis.local.home>
 <20190515185257.GC2888@sultan-box.localdomain>
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

On Wed, 15 May 2019 11:52:57 -0700
Sultan Alsawaf <sultan@kerneltoast.com> wrote:

> On Wed, May 15, 2019 at 02:32:48PM -0400, Steven Rostedt wrote:
> > I'm confused why you did this?  
> 
> Oleg said that debug_locks_off() could've been called and thus prevented
> lockdep complaints about simple_lmk from appearing. To eliminate any possibility
> of that, I disabled debug_locks_off().

But I believe that when lockdep discovers an issue, the data from then
on is not reliable. Which is why we turn it off. But just commenting
out the disabling makes lockdep unreliable, and is not a proper way to
test your code.

Yes, it can then miss locking issues after one was discovered. Thus,
you are not properly testing the locking in your code.

-- Steve
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
