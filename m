Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0338242543
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 08:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11647882AD;
	Wed, 12 Aug 2020 06:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H+l-ISMklkSv; Wed, 12 Aug 2020 06:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F87D87CCB;
	Wed, 12 Aug 2020 06:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 106551BF873
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 06:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0CBE388183
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 06:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-TTRn4IcLRZ for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 06:21:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D036187CCB
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 06:21:16 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id CB142AC12;
 Wed, 12 Aug 2020 06:21:35 +0000 (UTC)
Date: Wed, 12 Aug 2020 08:21:13 +0200
Message-ID: <s5hpn7wz8o6.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
In-Reply-To: <202008111427.D00FCCF@keescook>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <87h7tpa3hg.fsf@nanos.tec.linutronix.de>
 <202007301113.45D24C9D@keescook>
 <CAOMdWSJQKHAWY1P297b9koOLd8sVtezEYEyWGtymN1YeY27M6A@mail.gmail.com>
 <202008111427.D00FCCF@keescook>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 alsa-devel@alsa-project.org, Oscar Carter <oscar.carter@gmx.com>,
 Will Deacon <will@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Allen <allen.lkml@gmail.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, kgdb-bugreport@lists.sourceforge.net,
 Thomas Gleixner <tglx@linutronix.de>, Romain Perier <romain.perier@gmail.com>,
 linux-input@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 11 Aug 2020 23:33:13 +0200,
Kees Cook wrote:
> 
> On Mon, Aug 03, 2020 at 02:16:15PM +0530, Allen wrote:
> > Here's the series re-based on top of 5.8
> > https://github.com/allenpais/tasklets/tree/V3
> 
> Great!
> 
> > Let me know how you would want these to be reviewed.
> 
> Was a Coccinelle script used for any of these conversions? I wonder if
> it'd be easier to do a single treewide patch for the more mechanical
> changes.
> 
> And, actually, I still think the "prepare" patches should just be
> collapsed into the actual "covert" patches -- there are only a few.
> 
> After those, yeah, I think getting these sent to their respective
> maintainers is the next step.
> 
> > Also, I was thinking if removing tasklets completely could be a task
> > on KSPP wiki. If yes, I did like to take ownership of that task. I have a
> > couple of ideas in mind, which could be discussed in a separate email.
> 
> Sure! I will add it to the tracker. Here's for the refactoring:
> https://github.com/KSPP/linux/issues/30
> 
> and here's for the removal:
> https://github.com/KSPP/linux/issues/94
> 
> if you can added details/examples of how they should be removed, that'd
> help other folks too, if they wanted to jump in. :)

I have a patch set to convert the remaining tasklet usage in sound
drivers to either the threaded IRQ or the work, but it wasn't
submitted / merged for 5.8 due to the obvious conflict with your API
changes.
Each conversion is rather simple, but it's always a question of the
nature of each tasklet usage which alternative is the best fit.

FWIW, the current version is found in test/kill-tasklet branch of
sound git tree
  git://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git


thanks,

Takashi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
