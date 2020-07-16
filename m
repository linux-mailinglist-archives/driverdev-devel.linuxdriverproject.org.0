Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F2122284A
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 18:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 975E689366;
	Thu, 16 Jul 2020 16:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OzcUkY1+Osjt; Thu, 16 Jul 2020 16:29:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08E1388674;
	Thu, 16 Jul 2020 16:29:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0E71BF311
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 16:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 00F958AE07
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 16:29:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L5rpy4cV6UTF for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 16:29:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6B8B8AE06
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 16:29:47 +0000 (UTC)
Received: from ip5f5af08c.dynamic.kabel-deutschland.de ([95.90.240.140]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jw6lI-0001Zl-5G; Thu, 16 Jul 2020 16:29:32 +0000
Date: Thu, 16 Jul 2020 18:29:31 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v2] binder: Don't use mmput() from shrinker function.
Message-ID: <20200716162931.g3delsp7qmfjup6x@wittgenstein>
References: <0000000000001fbbb605aa805c9b@google.com>
 <5ce3ee90-333e-638d-ac8c-cd6d7ab7aa3b@I-love.SAKURA.ne.jp>
 <20200716083506.GA20915@dhcp22.suse.cz>
 <36db7016-98d6-2c6b-110b-b2481fd480ac@i-love.sakura.ne.jp>
 <20200716135445.GN31089@dhcp22.suse.cz>
 <4ba9adb2-43f5-2de0-22de-f6075c1fab50@i-love.sakura.ne.jp>
 <20200716151756.GO31089@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716151756.GO31089@dhcp22.suse.cz>
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
Cc: mark.rutland@arm.com,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>, peterz@infradead.org,
 jolsa@redhat.com, Todd Kjos <tkjos@android.com>, linux-mm <linux-mm@kvack.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 alexander.shishkin@linux.intel.com, Arve Hjonnevag <arve@android.com>,
 mingo@redhat.com, Joel Fernandes <joel@joelfernandes.org>, namhyung@kernel.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 05:17:56PM +0200, Michal Hocko wrote:
> On Fri 17-07-20 00:12:15, Tetsuo Handa wrote:
> > syzbot is reporting that mmput() from shrinker function has a risk of
> > deadlock [1], for delayed_uprobe_add() from update_ref_ctr() calls
> > kzalloc(GFP_KERNEL) with delayed_uprobe_lock held, and
> > uprobe_clear_state() from __mmput() also holds delayed_uprobe_lock.
> > 
> > Commit a1b2289cef92ef0e ("android: binder: drop lru lock in isolate
> > callback") replaced mmput() with mmput_async() in order to avoid sleeping
> > with spinlock held. But this patch replaces mmput() with mmput_async() in
> > order not to start __mmput() from shrinker context.
> > 
> > [1] https://syzkaller.appspot.com/bug?id=bc9e7303f537c41b2b0cc2dfcea3fc42964c2d45
> > 
> > Reported-by: syzbot <syzbot+1068f09c44d151250c33@syzkaller.appspotmail.com>
> > Reported-by: syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>
> > Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> 
> Reviewed-by: Michal Hocko <mhocko@suse.com>

Thanks for the careful review Michal!
Does this need a Cc: stable?

Otherwise

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

Thanks!
Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
