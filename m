Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D25290384
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 12:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5826588900;
	Fri, 16 Oct 2020 10:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lxsKTBSWwCA4; Fri, 16 Oct 2020 10:53:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37F47888CE;
	Fri, 16 Oct 2020 10:53:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED1CF1BF857
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 10:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E94B488835
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 10:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2kcfUBJMuDhI for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 10:53:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98C87887EF
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 10:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+RZTLQaq+qRJR9rQRj8dPc5jefZyAh1kHGftAj9LgAo=; b=FBzTRCct2xrc5zVUeKT7is1xSu
 MGbl4pv9vThbIjrp7wOg/ARUySZd2N65zj7HJnWgkEwqogKZo3kyRyNZCXlCF00S4NUl1ETHDkdkJ
 z9KhuQEYiVomLErq7jlIKdrzprV7ezYNIiMNt0LE+xYFR16YOvdR6+Xjk5t4zG2+GOL1gki5IFG3a
 UOZNELwkfPjO+FEtZmB58smOwGFR4/3dZuQ2ZslNhpTAcKbnwzuXRJlY0IVYwZwRZ3Wf2BFbUdX9R
 bPzY8lx3e875T1rDs1Y0LwvQCNuqCnuYUzWXxXfoDqY2wBzk+y6lFHQAQRqQJpGaCvGZDqRzfYuKz
 0HeUGVwA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTNMM-0001mw-Nq; Fri, 16 Oct 2020 10:53:19 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4B3A63011E6;
 Fri, 16 Oct 2020 12:53:13 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 2C299203EB17E; Fri, 16 Oct 2020 12:53:13 +0200 (CEST)
Date: Fri, 16 Oct 2020 12:53:13 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 00/11] Introduce Simple atomic counters
Message-ID: <20201016105313.GJ2611@hirez.programming.kicks-ass.net>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
 <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
 <20201014091720.GC2628@hirez.programming.kicks-ass.net>
 <202010141611.70B7A38@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202010141611.70B7A38@keescook>
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
Cc: rafael@kernel.org, Will Deacon <will@kernel.org>,
 linux-kselftest@vger.kernel.org, joel@joelfernandes.org, rric@kernel.org,
 shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org, corbet@lwn.net,
 surenb@google.com, linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org,
 lenb@kernel.org, tkjos@android.com, arnd@arndb.de, bp@alien8.de,
 Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 14, 2020 at 04:31:42PM -0700, Kees Cook wrote:
> On Wed, Oct 14, 2020 at 11:17:20AM +0200, Peter Zijlstra wrote:
> > On Tue, Oct 13, 2020 at 08:12:20PM -0600, Shuah Khan wrote:
> > 
> > > They don't add any new behavior, As Kees mentioned they do give us a
> > > way to clearly differentiate atomic usages that can wrap.
> > 
> > No it doesn't! atomic_t can wrap, this thing can wrap, no distinction.
> > 
> > All it does is fragment the API and sow confusion. FOR NO BENEFIT.
> 
> I really don't see it this way. It's a distinct subset of the atomic_t
> API. The trouble that has existed here has been with an atomic_t being
> originally used NOT for lifetime management, that mutates into something
> like that because of the available API, but doing so without realizing
> it. atomic_t gets used for all kinds of algorithms, and the "counter"
> type is way too easily accidentally transformed into a "lifetime
> tracker" and we get bugs.
> 
> If we have a distinct type for wrapping-counters that limits the API,
> then it is much harder for folks to shoot themselves in the foot. I don't
> see why this is so bad: we end up with safer usage, more easily auditable
> code behavior ("how was this atomic_t instance _intended_ to be used?"),
> and no change in binary size.

I simply do not believe in that. Maybe I've seen too much code like:

  atomic_dec_and_test(&counter->cnt);

or god forbid (thanks Will):

  typedef union { refcount_t ref; counter_atomic_t cnt; atomic_t atm; } my_awesome_type_t;

People simply aren't too fussed. They'll do whatever it takes (to get
the job done with minimal effort).

You think you've cleaned things up, but the moment you turn your back,
it'll decend into madness at break-neck speed. This is part economics
and part the fact that C is crap (see the above two examples).

Can't we use static-analysis/robots for this? The constant feedback from
those is the only thing that helps stem the tide of crap.

Create a variable attribute __wrap, and have the robot complain when
atomic_*_and_test() are used on a variable declared with __wrap. Or
better yet, when a __wrap heads a condition that leads to call_rcu() /
*free*().

> > > There is no need to keep inc_return in this API as such. I included it
> > > so it can be used for above cases 1 and 2, so the users don't have to
> > > call inc() followed by read(). It can be left out of the API.
> 
> I go back and forth on this, but after looking at these instances,
> it makes sense to have inc_return(), for where counters are actually
> "serial numbers". An argument could be made[1], however, that such uses
> should not end up in the position of _reusing_ earlier identifiers, which
> means it's actually can't wrap. (And some cases just need u64 to make this
> happen[2] -- and in that specific case, don't even need to be atomic_t).
> 
> [1] https://lore.kernel.org/lkml/202010071334.8298F3FA7@keescook/
> [2] https://git.kernel.org/linus/d1e7fd6462ca9fc76650fbe6ca800e35b24267da

Sure, there's valid cases where wrapping is ok, but it's a distinct
use-case and really shouldn't be mixed up in the statistics one --
they're distinct.

The fact that patch #4 appears to get this wrong seems like a fairly big
clue.

> > Wrong! The atomic usage in mutex doesn't fall in any of those
> > categories.
> 
> But the atomic usage in mutex is *IN* mutex -- it's a separate data
> type, etc. We don't build mutexes manually, so why build counters
> manually?

The claim was: atomic usage in the kernel falls in these 3 categories.

 - mutex uses atomic (atomic_long_t);
 - mutex is in the kernel;
 - mutex's use of atomic does not fit the listed categories.

Therefore, the claim is false. In fact most of the locking primitives
use atomic one way or another. And yes, some people do build their own.

> > The only thing you're all saying that makes sense is that unintentional
> > wrapping can have bad consequences, the rest is pure confusion.
> > 
> > Focus on the non-wrapping cases, _everything_ else is not going
> > anywhere.
> 
> I view this as a way to do so: this subset of wrapping cases is being
> identified and removed from the pool of all the atomic_t cases so that
> they will have been classified, and we can continue to narrow down all
> the atomic_t uses to find any potentially mis-used non-wrapping cases.
> 
> The other option is adding some kind of attribute to the declarations
> (which gets us the annotation) but doesn't provide a limit to the API.
> (e.g. no counter should ever call dec_return).

See above; robots can do exactly that.

> > So audit the kernel, find the cases that should not wrap, categorize and
> > create APIs for them that trap the wrapping. But don't go around
> > confusing things that don't need confusion.
> 
> That's what's happening here. But as it turns out, it's easier to do
> this by employing both the process of elimination (mark the counters)
> and direct identification (mark the refcount_t). Then the pool of
> "unannotated" atomic_t instances continues to shrink.

That's like saying: "I'm too lazy to track what I've looked at already".
You're basically proposing to graffiti "Kees was here -- 16/10/2020" all
over the kernel. Just so you can see where you still need to go.

It says the code was (assuming your audit was correct) good at that
date, but has no guarantees for any moment after that.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
