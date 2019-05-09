Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B2319042
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 20:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FE2987974;
	Thu,  9 May 2019 18:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kInKOlAYAGTJ; Thu,  9 May 2019 18:34:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98AB08794E;
	Thu,  9 May 2019 18:34:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD1A51BF588
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 18:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D7DD4221DC
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 18:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6YzT9GHG8Ns8 for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 18:33:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E4352013C
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 18:33:58 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id h1so1645772pgs.2
 for <devel@driverdev.osuosl.org>; Thu, 09 May 2019 11:33:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yqiI+x42OXIbUvTBPZc5iTEkpFbz64YiBLYaRAWuA0c=;
 b=R67LjnbABTLfJ2BI+IG+okTwalUppMZb1kqBLo/kOwr+rHDcJMYi6V76ZzUpCSLwNN
 C2h/PzQd0zYS37RCjlM4hKlIrh113bGr0nVA0u+Uy8qGKt7EbfYWSgzeXupyrKK1b31A
 /JeqOEfBPg8m+DYS/EebeKbPfBiplz4fbfvP7E2P0STrMEuc2B35ubwwR73FaF3xpqV1
 iJANbk9APg2/TOgW9RQm0DOiagKgFrcLV1h4ij7uCKzrKTVmeghM51f7nts2nJVSGq1U
 PAS4vnTHPdojzitY6btcw/yPlGHuTMGwOUeO2U2HTQ6FjardGD95bFsJhdzefsEdQyTH
 G5KQ==
X-Gm-Message-State: APjAAAV3ytlryNFH++DyBVm5mvBKOpmvHuVmJNi1lHRAgsS4eUA1QLmN
 JD/vO9+wU6SG0/LHwuf0IJ8=
X-Google-Smtp-Source: APXvYqyEc1uZevZKY+jNDHPdN0qC+8kcKlru+7ZgfAEEO+vBJPv7McdJDqNHLDhPTA7XqyJ/yigK1g==
X-Received: by 2002:aa7:980e:: with SMTP id e14mr7485557pfl.142.1557426837664; 
 Thu, 09 May 2019 11:33:57 -0700 (PDT)
Received: from sultan-box.localdomain
 ([2601:200:c001:5f40:7687:d078:2931:7298])
 by smtp.gmail.com with ESMTPSA id o2sm7914179pgq.1.2019.05.09.11.33.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 11:33:56 -0700 (PDT)
Date: Thu, 9 May 2019 11:33:53 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190509183353.GA13018@sultan-box.localdomain>
References: <20190318002949.mqknisgt7cmjmt7n@brauner.io>
 <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507153154.GA5750@redhat.com>
 <20190507163520.GA1131@sultan-box.localdomain>
 <20190509155646.GB24526@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509155646.GB24526@redhat.com>
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

On Thu, May 09, 2019 at 05:56:46PM +0200, Oleg Nesterov wrote:
> Impossible ;) I bet lockdep should report the deadlock as soon as find_victims()
> calls find_lock_task_mm() when you already have a locked victim.

I hope you're not a betting man ;)

With the following configured:
CONFIG_DEBUG_RT_MUTEXES=y
CONFIG_DEBUG_SPINLOCK=y
# CONFIG_DEBUG_SPINLOCK_BITE_ON_BUG is not set
CONFIG_DEBUG_SPINLOCK_PANIC_ON_BUG=y
CONFIG_DEBUG_MUTEXES=y
CONFIG_DEBUG_WW_MUTEX_SLOWPATH=y
CONFIG_DEBUG_LOCK_ALLOC=y
CONFIG_PROVE_LOCKING=y
CONFIG_LOCKDEP=y
CONFIG_LOCK_STAT=y
CONFIG_DEBUG_LOCKDEP=y
CONFIG_DEBUG_ATOMIC_SLEEP=y
# CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
# CONFIG_LOCK_TORTURE_TEST is not set

And a printk added in vtsk_is_duplicate() to print when a duplicate is detected,
and my phone's memory cut in half to make simple_lmk do something, this is what
I observed:
taimen:/ # dmesg | grep lockdep
[    0.000000] \x09RCU lockdep checking is enabled.
taimen:/ # dmesg | grep simple_lmk
[   23.211091] simple_lmk: Killing android.carrier with adj 906 to free 37420 kiB
[   23.211160] simple_lmk: Killing oadcastreceiver with adj 906 to free 36784 kiB
[   23.248457] simple_lmk: Killing .apps.translate with adj 904 to free 45884 kiB
[   23.248720] simple_lmk: Killing ndroid.settings with adj 904 to free 42868 kiB
[   23.313417] simple_lmk: DUPLICATE VTSK!
[   23.313440] simple_lmk: Killing ndroid.keychain with adj 906 to free 33680 kiB
[   23.313513] simple_lmk: Killing com.whatsapp with adj 904 to free 51436 kiB
[   34.646695] simple_lmk: DUPLICATE VTSK!
[   34.646717] simple_lmk: Killing ndroid.apps.gcs with adj 906 to free 37956 kiB
[   34.646792] simple_lmk: Killing droid.apps.maps with adj 904 to free 63600 kiB
taimen:/ # dmesg | grep lockdep
[    0.000000] \x09RCU lockdep checking is enabled.
taimen:/ # 

> As for https://github.com/kerneltoast/android_kernel_google_wahoo/commit/afc8c9bf2dbde95941253c168d1adb64cfa2e3ad
> Well,
> 
> 	mmdrop(mm);
> 	simple_lmk_mm_freed(mm);
> 
> looks racy because mmdrop(mm) can free this mm_struct. Yes, simple_lmk_mm_freed()
> does not dereference this pointer, but the same memory can be re-allocated as
> another ->mm for the new task which can be found by find_victims(), and _in theory_
> this all can happen in between, so the "victims[i].mm == mm" can be false positive.
> 
> And this also means that simple_lmk_mm_freed() should clear victims[i].mm when
> it detects "victims[i].mm == mm", otherwise we have the same theoretical race,
> victims_to_kill is only cleared when the last victim goes away.

Fair point. Putting simple_lmk_mm_freed(mm) right before mmdrop(mm), and
sprinkling in a cmpxchg in simple_lmk_mm_freed() should fix that up.

> Another nit... you can drop tasklist_lock right after the 1st "find_victims" loop.

True!

> And it seems that you do not really need to walk the "victims" array twice after that,
> you can do everything in a single loop, but this is cosmetic.

Won't this result in potentially holding the task lock way longer than necessary
for multiple tasks that aren't going to be killed?

Thanks,
Sultan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
