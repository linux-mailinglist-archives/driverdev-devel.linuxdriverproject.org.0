Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A07279AF7
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 18:33:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F8CE8723F;
	Sat, 26 Sep 2020 16:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6eUldcZ1PWSc; Sat, 26 Sep 2020 16:33:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BA4F87239;
	Sat, 26 Sep 2020 16:33:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 045E01BF3DB
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 16:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE4EA8723E
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 16:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pjel50v9F77h for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 16:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A4DE87239
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 16:33:19 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id j7so989560plk.11
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 09:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mvGz7fsSzQyG47W1/0kt8/LOxSWmeEYp8+sMo1z9HUE=;
 b=j18SszrIGHglF5HogqSQsLrk58lP8fECmVsnU5yfOkqc1W0HCJU1XuoZWoSIGhCw8O
 5BStnOqQow7SWPPTqSlIcqGVqAw/vVxjHtQ/Q1W5D+EbZaryvm/j2R/qcMgcPnAAXJ+P
 plaUHOPH8H18NjpTtFiQzfPWrswFQIWoggbK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mvGz7fsSzQyG47W1/0kt8/LOxSWmeEYp8+sMo1z9HUE=;
 b=Hm4gv2xEhLZLGs9jSVO+ldLq2m4uQDGpLRPj9Y/OySi82u6G6L+dvrQaxB4b5LaFkf
 SKNvcNamgvatovOnzw4TwoxOWCpM8C9LYH5ozptYIlsG2kWdGgSi5RqwDowMTMhYXDgW
 80zyy5wHGuTunn2zCKERYAGmgjnXSpDVh/k20NR/4Fos3Rcrr4Pc6sgtk6qYJuuspg4t
 rPBs5GZN87cyGfK4OY3M2wByqTbHr79l+EGEaG+vDTZ2f9GMqYmbouW9UH6s0FLboicv
 EhDOAUklvvlx7YVlgLH4SYFthQ5XAm855itHJeVctFAV4FzYS7JYDtc1x1l9ygJ3nFnt
 u/Gw==
X-Gm-Message-State: AOAM5332K/jhLeVOsSRNJmayO2sELYX/qPFsNoceuPZtkmmDXmkvp29R
 H0D0JuN2wVMlrhA0e0Bhawmxfw==
X-Google-Smtp-Source: ABdhPJz07FYhFy6jlg7aMFgFGis4mK43u8VsIHtsiKwV5vvMHcarj8PIcUsFLtBpAAi0bNvkL0ZzQA==
X-Received: by 2002:a17:90a:4b42:: with SMTP id
 o2mr2367400pjl.205.1601137999302; 
 Sat, 26 Sep 2020 09:33:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w14sm5767645pfu.87.2020.09.26.09.33.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 09:33:18 -0700 (PDT)
Date: Sat, 26 Sep 2020 09:33:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
Message-ID: <202009260930.9252966D@keescook>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009251650.193E2AD@keescook>
 <7d8f86ab-4333-afa1-6523-e42ae5c7d9b2@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d8f86ab-4333-afa1-6523-e42ae5c7d9b2@linuxfoundation.org>
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, joel@joelfernandes.org,
 rric@kernel.org, shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org,
 corbet@lwn.net, surenb@google.com, linux-doc@vger.kernel.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, tkjos@android.com, arnd@arndb.de,
 bp@alien8.de, openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 maco@android.com, christian@brauner.io, linux-edac@vger.kernel.org,
 tony.luck@intel.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 arve@android.com, james.morse@arm.com, hridya@google.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 25, 2020 at 06:13:37PM -0600, Shuah Khan wrote:
> On 9/25/20 5:52 PM, Kees Cook wrote:
> > On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> > > -- Addressed Kees's comments:
> > >     1. Non-atomic counters renamed to counter_simple32 and counter_simple64
> > >        to clearly indicate size.
> > >     2. Added warning for counter_simple* usage and it should be used only
> > >        when there is no need for atomicity.
> > >     3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
> > >     4. Renamed counter_atomic_long to counter_atomic64 and it now uses
> > >        atomic64_t ops and indicates size.
> > >     5. Test updated for the API renames.
> > >     6. Added helper functions for test results printing
> > >     7. Verified that the test module compiles in kunit env. and test
> > >        module can be loaded to run the test.
> > 
> > Thanks for all of this!
> > 
> > >     8. Updated Documentation to reflect the intent to make the API
> > >        restricted so it can never be used to guard object lifetimes
> > >        and state management. I left _return ops for now, inc_return
> > >        is necessary for now as per the discussion we had on this topic.
> > 
> > I still *really* do not want dec_return() to exist. That is asking for
> > trouble. I'd prefer inc_return() not exist either, but I can live with
> > it. ;)
> > 
> 
> Thanks. I am equally concerned about adding anything that can be used to
> guard object lifetimes. So I will make sure this set won't expand and
> plan to remove dec_return() if we don't find any usages.

I would like it much stronger than "if". dec_return() needs to be just
dec() and read(). It will not be less efficient (since they're both
inlines), but it _will_ create a case where the atomicity cannot be used
for ref counting. My point is that anything that _requires_ dec_return()
(or, frankly, inc_return()) is _not_ "just" a statistical counter. It
may not be a refcounter, but it relies on the inc/dec atomicity for some
reason beyond counting in once place and reporting it in another.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
