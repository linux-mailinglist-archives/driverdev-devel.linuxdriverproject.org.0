Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D657E28E932
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 01:31:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6038987F15;
	Wed, 14 Oct 2020 23:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rtwNOU+sJ0D1; Wed, 14 Oct 2020 23:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB29987987;
	Wed, 14 Oct 2020 23:31:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7382D1BF2CE
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 23:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 629612E2D0
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 23:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1Siqkdg0XwP for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 23:31:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 343A020436
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 23:31:45 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id x13so630799pgp.7
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 16:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HXVUBRNSSqTPt62/mgLGqwfLQyF1yjV/YHL73Dao6W8=;
 b=jCAqi4iTXHmrlmTxFYn6GS2VgUo/8myl3KBrmWg0lRxHbNQgb3vs1osYENVe61bW0P
 M+4wkDUWjW0myaMTX5a1Gxf50PJCa/e+uOHI7EyM+POftZ0Y/9LfYtXSwlA+pbBlCT0Z
 p+qpDy78UxHceaiLraq0fP4f7UgNDPeMM5qHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HXVUBRNSSqTPt62/mgLGqwfLQyF1yjV/YHL73Dao6W8=;
 b=VBRC7U+SThiODVG7eK18DonRfz2sP1nBitv+THQoVhd8ZIgOv+z+VdDhInJFbF3kmO
 RkYI348QTW7+G+FdVWle+2poVJi1IQnwg2vNRr3rHiOALszi0FAocYDCpkN+3mzv5eb0
 t2fc5UpGtI1gsimyLbCoI3djknX0mz6UN9l2FNIeMhXgWC7xCP1f7ctvqLDMR/2u7maR
 cM/D/sn3EqZpZZxq0ioT4dcmZqFeKhnbJlMMjObWenGkbDsMGW3rDx7GrSj/i7l6fFw6
 YLqR487lj0hvutUNO84Ak5wMF3rnbffKlbwMIgPjgs0NtbacZsCHmYivmqzZLK87SXdG
 VQDw==
X-Gm-Message-State: AOAM5335XUwZYqedWHxyTyt1iLzGmP3F0z/ZGJmJh4OsLqJ4zu0PHSRF
 lchfGE1aa2pmKsbVpj+qst9uDQ==
X-Google-Smtp-Source: ABdhPJxOwI5RHIhqZd5sqTZJ3BeFjY/QwyZ69aihzdHcq4MYx7e3PrGhvAMQ5MYwvG0KK4zLFTqSZQ==
X-Received: by 2002:a63:d66:: with SMTP id 38mr983974pgn.400.1602718304430;
 Wed, 14 Oct 2020 16:31:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r201sm780160pfc.98.2020.10.14.16.31.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 16:31:43 -0700 (PDT)
Date: Wed, 14 Oct 2020 16:31:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v3 00/11] Introduce Simple atomic counters
Message-ID: <202010141611.70B7A38@keescook>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
 <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
 <20201014091720.GC2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201014091720.GC2628@hirez.programming.kicks-ass.net>
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

On Wed, Oct 14, 2020 at 11:17:20AM +0200, Peter Zijlstra wrote:
> On Tue, Oct 13, 2020 at 08:12:20PM -0600, Shuah Khan wrote:
> 
> > They don't add any new behavior, As Kees mentioned they do give us a
> > way to clearly differentiate atomic usages that can wrap.
> 
> No it doesn't! atomic_t can wrap, this thing can wrap, no distinction.
> 
> All it does is fragment the API and sow confusion. FOR NO BENEFIT.

I really don't see it this way. It's a distinct subset of the atomic_t
API. The trouble that has existed here has been with an atomic_t being
originally used NOT for lifetime management, that mutates into something
like that because of the available API, but doing so without realizing
it. atomic_t gets used for all kinds of algorithms, and the "counter"
type is way too easily accidentally transformed into a "lifetime
tracker" and we get bugs.

If we have a distinct type for wrapping-counters that limits the API,
then it is much harder for folks to shoot themselves in the foot. I don't
see why this is so bad: we end up with safer usage, more easily auditable
code behavior ("how was this atomic_t instance _intended_ to be used?"),
and no change in binary size.

> > There is no need to keep inc_return in this API as such. I included it
> > so it can be used for above cases 1 and 2, so the users don't have to
> > call inc() followed by read(). It can be left out of the API.

I go back and forth on this, but after looking at these instances,
it makes sense to have inc_return(), for where counters are actually
"serial numbers". An argument could be made[1], however, that such uses
should not end up in the position of _reusing_ earlier identifiers, which
means it's actually can't wrap. (And some cases just need u64 to make this
happen[2] -- and in that specific case, don't even need to be atomic_t).

[1] https://lore.kernel.org/lkml/202010071334.8298F3FA7@keescook/
[2] https://git.kernel.org/linus/d1e7fd6462ca9fc76650fbe6ca800e35b24267da

> Wrong! The atomic usage in mutex doesn't fall in any of those
> categories.

But the atomic usage in mutex is *IN* mutex -- it's a separate data
type, etc. We don't build mutexes manually, so why build counters
manually?

> The only thing you're all saying that makes sense is that unintentional
> wrapping can have bad consequences, the rest is pure confusion.
> 
> Focus on the non-wrapping cases, _everything_ else is not going
> anywhere.

I view this as a way to do so: this subset of wrapping cases is being
identified and removed from the pool of all the atomic_t cases so that
they will have been classified, and we can continue to narrow down all
the atomic_t uses to find any potentially mis-used non-wrapping cases.

The other option is adding some kind of attribute to the declarations
(which gets us the annotation) but doesn't provide a limit to the API.
(e.g. no counter should ever call dec_return).

> So audit the kernel, find the cases that should not wrap, categorize and
> create APIs for them that trap the wrapping. But don't go around
> confusing things that don't need confusion.

That's what's happening here. But as it turns out, it's easier to do
this by employing both the process of elimination (mark the counters)
and direct identification (mark the refcount_t). Then the pool of
"unannotated" atomic_t instances continues to shrink.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
