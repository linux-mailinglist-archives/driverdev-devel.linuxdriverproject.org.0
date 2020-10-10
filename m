Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC6928A020
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 13:09:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9241A87832;
	Sat, 10 Oct 2020 11:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1PonmW0qj33C; Sat, 10 Oct 2020 11:09:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D893287735;
	Sat, 10 Oct 2020 11:09:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16ADF1BF27E
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 11:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0DB0887802
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 11:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SXk-nu1LuUIy for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 11:09:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 46F8387735
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 11:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=6cV+tWxBY2tCvh0w9RakejaDPboIY9tCeHrHg2GCiPA=; b=eBUno4bXjQVLTMDPOm+sW25Lwv
 cowKD724NzwUh0wGoDX2eG2v9P5KJVKb8dHlTaXOU5VS9yonxo5dacyZ9QBDrEL6/NHu9yrFDVlul
 uJaKEt4lT+vM8kcKN1F9biakAjn/UcusJA6djK/yyy9on5fKvTsxSO+3sp/2KlZsoUnoiEKzwrMB4
 7TSBcjnZnVEnKSgMC/MZVlM/dgfJ6XN++gsUwy/SxMYtctBJGqU5CSC+MXoSkcGbzs6L+g82bBhNO
 Y/Lg46iD7UQGhyO+fwbJTDWyUte30Cln331o8ECV+9e4trlBM1tLfDi1pnpFFiEEQbQZdIxL/9tRX
 HbGqIARQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRCkg-00026L-PN; Sat, 10 Oct 2020 11:09:27 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3BEED3003E5;
 Sat, 10 Oct 2020 13:09:21 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 017E52010B5FA; Sat, 10 Oct 2020 13:09:20 +0200 (CEST)
Date: Sat, 10 Oct 2020 13:09:20 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 00/11] Introduce Simple atomic counters
Message-ID: <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202010091255.246395A6@keescook>
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

On Fri, Oct 09, 2020 at 01:45:43PM -0700, Kees Cook wrote:
> On Fri, Oct 09, 2020 at 09:37:46PM +0200, Peter Zijlstra wrote:
> > On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
> > > Simple atomic counters api provides interfaces for simple atomic counters
> > > that just count, and don't guard resource lifetimes. The interfaces are
> > > built on top of atomic_t api, providing a smaller subset of atomic_t
> > > interfaces necessary to support simple counters.
> > 
> > To what actual purpose?!? AFACIT its pointless wrappery, it gets us
> > nothing.
> 
> It's not pointless. There is value is separating types for behavioral
> constraint to avoid flaws. atomic_t provides a native operation. We gained
> refcount_t for the "must not wrap" type, and this gets us the other side
> of that behavioral type, which is "wrapping is expected". Separating the
> atomic_t uses allows for a clearer path to being able to reason about
> code flow, whether it be a human or a static analyzer.

refcount_t got us actual rutime exceptions that atomic_t doesn't. This
propsal gets us nothing.

atomic_t is very much expected to wrap.

> The counter wrappers add nothing to the image size, and only serve to
> confine the API to one that cannot be used for lifetime management.

It doesn't add anything period. It doesn't get us new behaviour, it
splits a 'can wrap' use-case from a 'can wrap' type. That's sodding
pointless.

Worse, it mixes 2 unrelated cases into one type, which just makes a
mockery of things (all the inc_return users are not statistics, some
might even mis-behave if they wrap).

> Once conversions are done, we have a clean line between refcounting
> and statistical atomics, which means we have a much lower chance of
> introducing new flaws (and maybe we'll fix flaws during the conversion,
> which we've certainly seen before when doing this stricter type/language
> changes).
> 
> I don't see why this is an objectionable goal.

People can and will always find a way to mess things up.

Only add types when you get behavioural changes, otherwise it's
pointless noise.

My NAK stands.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
