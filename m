Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E929FCEE29
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 23:05:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5291221F6F;
	Mon,  7 Oct 2019 21:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mHUdwKismqaC; Mon,  7 Oct 2019 21:05:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 576502156C;
	Mon,  7 Oct 2019 21:05:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE97A1BF34C
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 21:05:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E57CC869E1
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 21:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9fLe+6ZrUtV for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 21:05:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD46E8693D
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 21:05:41 +0000 (UTC)
Received: from [213.220.153.21] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iHaCG-0005vQ-E7; Mon, 07 Oct 2019 21:05:36 +0000
Date: Mon, 7 Oct 2019 23:05:35 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Jann Horn <jannh@google.com>
Subject: Re: UAF read in print_binder_transaction_log_entry() on
 ANDROID_BINDERFS kernels
Message-ID: <20191007210534.wqnizdp6pl7gn5qe@wittgenstein>
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
User-Agent: NeoMutt/20180716
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 07, 2019 at 10:49:57PM +0200, Jann Horn wrote:
> Hi!
> 
> There is a use-after-free read in print_binder_transaction_log_entry()
> on ANDROID_BINDERFS kernels because
> print_binder_transaction_log_entry() prints the char* e->context_name
> as string, and if the transaction occurred on a binder device from
> binderfs, e->context_name belongs to the binder device and is freed
> when the inode disappears.
> 
> Luckily this shouldn't have security implications, since:
> 
> a) reading the binder transaction log is already a pretty privileged operation
> b) I can't find any actual users of ANDROID_BINDERFS
> 
> I guess there are three ways to fix it:
> 1) Create a new shared global spinlock for binderfs_evict_inode() and
> binder_transaction_log_show(), and let binderfs_evict_inode() scan the
> transaction log for pointers to its name and replace them with
> pointers to a statically-allocated string "{DELETED}" or something
> like that.
> 2) Let the transaction log contain non-reusable device identifiers
> instead of name pointers, and let print_binder_transaction_log_entry()
> look them up in something like a hashtable.
> 3) Just copy the name into the transaction log every time.
> 
> I'm not sure which one is better, or whether there's a nicer fourth
> option, so I'm leaving writing a patch for this to y'all.

Moin,

Thanks for the report.
Android binderfs is enabled by default on Ubuntu and - iirc - Debian
kernels. It is actively used by Anbox to run Android in containers.

The codepath you're referring to is specific to the stats=global mount
option. This was contributed by the Android team for the 5.4 cycle (cf.
[1]). That means there is no released kernel that supports the
stats=global mount option. So all current users cannot be affected by
this bug.

I'll take a look at this tomorrow and see what makes the most sense. I
agree that this is not a security issue. Thanks for catching this early.

If you already have a script that trivially reproduces the bug it'd be
nice if you could paste it. Otherwise we can just add a reproducer based
on your snippet from below. I want to add a regression test for this.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f00834518ed3194b866f5f3d63b71e0ed7f6bc00
     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0e13e452dafc009049a9a5a4153e2f9e51b23915
     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=03e2e07e38147917482d595ad3cf193212ded8ac
     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4feb80faf428a02d407a9ea1952004af01308765

Thanks!
Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
