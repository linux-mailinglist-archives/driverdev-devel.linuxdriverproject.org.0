Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4079290DE2
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 00:51:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0B028906C;
	Fri, 16 Oct 2020 22:51:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gFlL2B5oKwJZ; Fri, 16 Oct 2020 22:51:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C52DC8905C;
	Fri, 16 Oct 2020 22:51:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3E441BF316
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 22:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A0FBC2E8D6
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 22:51:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QSFJf2oQgyDI for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 22:51:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C00420354
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 22:51:27 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d6so2014368plo.13
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 15:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+A3qb7wSddKoudeH8qefVLLKBMGX/mQTDOB4rUkAdCY=;
 b=CF4LqkGIH6KRSjEVRXkMwMTHn6F2e/bCzAoitFYNW9uJm8WKLqpR6NIZ7gFV3aCNBZ
 DnHu4YGPXjOHok3RikNWoHjwks9Jp7YV3Q7GQeWMLNl6w2qqUkU+xnGlTV41kuQanWlw
 5I3SXWgj8ziKK8QievcHzQEAYEVifzBDPBh1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+A3qb7wSddKoudeH8qefVLLKBMGX/mQTDOB4rUkAdCY=;
 b=ME9gGIpOBQl+yheEBATvF4jzDuWbFeAEWdYd6E+WLok/d1LO/roTiGqkBCeW9S9D0c
 cVuK4thgCfW8W0iCeYNh7/UZZQLSTEc0vMRm4FXfQ+78RcIcORX8empWwDJQg0zY4cyx
 APPXGGWjiPrxqRIOXTaV2SMJkutpALF8RTMYEviNpmrhnIWNJ7rWvGahbJzq/ptDhSMq
 F7cUiBEqv3G0mLGVba5J2MyiG36gB1/acE/VJx1vzvZqVUaIIffrKdnsp5aGpoPnkw8Q
 uCqoDF0TR+93nAxDyxG87enpRJmcn0DalPpoyCLxPsoDD73NX6MCn2dJa/l1i+96DlN4
 FsIQ==
X-Gm-Message-State: AOAM531gcdvYwSM+UZ9xdhLEeTgMDgkwg9NURUKOaJG0+E6QccKLrCrH
 FlmY4wIBnNOCSAP3RIt/Y/OXQg==
X-Google-Smtp-Source: ABdhPJydepy1YplrdnyBgmFc/3tQ/e/3eMYUwqhlQUodPHed8wA582z7vboWjRhYh9ZEXf+nz1NAJw==
X-Received: by 2002:a17:90a:aa90:: with SMTP id
 l16mr6212058pjq.0.1602888686891; 
 Fri, 16 Oct 2020 15:51:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c17sm4044276pfj.220.2020.10.16.15.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 15:51:25 -0700 (PDT)
Date: Fri, 16 Oct 2020 15:51:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v3 00/11] Introduce Simple atomic counters
Message-ID: <202010161541.6DD2D1E@keescook>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
 <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
 <20201014091720.GC2628@hirez.programming.kicks-ass.net>
 <202010141611.70B7A38@keescook>
 <20201016105313.GJ2611@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016105313.GJ2611@hirez.programming.kicks-ass.net>
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

On Fri, Oct 16, 2020 at 12:53:13PM +0200, Peter Zijlstra wrote:
> That's like saying: "I'm too lazy to track what I've looked at already".
> You're basically proposing to graffiti "Kees was here -- 16/10/2020" all
> over the kernel. Just so you can see where you still need to go.
> 
> It says the code was (assuming your audit was correct) good at that
> date, but has no guarantees for any moment after that.

That kind of bit-rot marking is exactly what I would like to avoid: just
putting a comment in is pointless. Making the expectations of the usage
become _enforced_ is the goal. And having it enforced by the _compiler_
is key. Just adding a meaningless attribute that a static checker
will notice some time and hope people fix them doesn't scale either
(just look at how many sparse warnings there are). So with C's limits,
the API and type enforcement become the principle way to get this done.

So, if there are behavioral patterns we CAN carve away from atomic_t
cleanly (and I think there are), those are the ones I want to work
towards. The "corner case" uses of atomic_t are much less common than
the "big" code patterns like lifetime management (now delegated to and
enforced by refcount_t). My estimation was that _statistics_ (and not
"serial identifiers") was the next biggest code pattern using atomic_t
that could benefit from having its usage isolated. It is not itself a
dangerous code pattern, but it can mask finding them.

Then, at the end of the day, only the corner cases remain, and those can
be seen clearly as they change over time. Since we can never have a
one-time audit be anything other than advisory, we need to make it EASY
to do those kinds of audits so they can be done regularly.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
