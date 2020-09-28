Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139FA27B6EF
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 23:17:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF0D286FB7;
	Mon, 28 Sep 2020 21:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6KNAhSOjxIY; Mon, 28 Sep 2020 21:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EB5E86F84;
	Mon, 28 Sep 2020 21:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29E351BF2B0
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 21:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 26523859D9
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 21:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLyE-jx3Tvpd for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 21:17:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71935859BA
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 21:17:11 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id n10so1974836qtv.3
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 14:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TsieN2AyZd+fHurZfoVnAsK/371QDPaE9PSaaOsF10M=;
 b=E/E+O1Kdz8L/LgV+e3noNHmCUepRX8tYRdZmhvH1oqH1ALQLGP9YZ/dETKdHtGk05j
 wpvbZI+tcv1EpJog3kH/xRzfufYZLAbq6RvYEyNhs/6/SDQpmj5TkCNNlF085WCvLpfS
 QF38VkMXId3KqzhLsBF8KxCGWUfAw8jaSZCwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TsieN2AyZd+fHurZfoVnAsK/371QDPaE9PSaaOsF10M=;
 b=kX8P653cW470seaIu0WCiMnLg0Z9hm4wVcgI+jUG8g5rHW+54VpADTGsKGZCarVhVs
 raOoOKOVQdmuINVklGHrTc8rHxHDw9/EwYJcSOi96H0gJ9+wKJ25DdgoCiSLtVECYJ36
 /FHhekmSh2bLfUhAAMT6rzCiLZi3/OAcndd9252VSRMn8EgIbJZGEyB7AV/sUi2mLyEK
 BmP1Wl2NUMPmSu7E0qoFzXtzvu2cOe6QMDfHHb9HY4k11YMvp/12+ojs1K222mx8kMT8
 h3gWLwHgiURYScl6AaIUt/V69f0NtVYe4Aap3uxdvFW+8WLuJK4LKSvfrulbZKqk4iPT
 OTHQ==
X-Gm-Message-State: AOAM533CAtgH/DldFg2Q42FD0pZXS1lSlsf4J9UXEvzfSFXFMXIBF6R5
 ZTp5pQCa/F+IVvRSm0DSImSbtA==
X-Google-Smtp-Source: ABdhPJzchTLFzFK6iluf3Jf7o3/ZyyOrcF3IVJNDVf1TIaEdhxhcd/ElF3y6FMMqh5p80QFSd1shxA==
X-Received: by 2002:aed:25d1:: with SMTP id y17mr11236qtc.375.1601327830218;
 Mon, 28 Sep 2020 14:17:10 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:cad3:ffff:feb3:bd59])
 by smtp.gmail.com with ESMTPSA id x26sm2483053qtr.78.2020.09.28.14.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 14:17:09 -0700 (PDT)
Date: Mon, 28 Sep 2020 17:17:09 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
Message-ID: <20200928211709.GA2641213@google.com>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <20200927233526.GA500818@google.com>
 <202009281331.444F36A7B@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202009281331.444F36A7B@keescook>
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, rric@kernel.org,
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

On Mon, Sep 28, 2020 at 01:34:31PM -0700, Kees Cook wrote:
> On Sun, Sep 27, 2020 at 07:35:26PM -0400, Joel Fernandes wrote:
> > On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> > > This patch series is a result of discussion at the refcount_t BOF
> > > the Linux Plumbers Conference. In this discussion, we identified
> > > a need for looking closely and investigating atomic_t usages in
> > > the kernel when it is used strictly as a counter without it
> > > controlling object lifetimes and state changes.
> > > 
> > > There are a number of atomic_t usages in the kernel where atomic_t api
> > > is used strictly for counting and not for managing object lifetime. In
> > > some cases, atomic_t might not even be needed.
> > >     
> > > The purpose of these counters is twofold: 1. clearly differentiate
> > > atomic_t counters from atomic_t usages that guard object lifetimes,
> > > hence prone to overflow and underflow errors. It allows tools that scan
> > > for underflow and overflow on atomic_t usages to detect overflow and
> > > underflows to scan just the cases that are prone to errors. 2. provides
> > > non-atomic counters for cases where atomic isn't necessary.
> > 
> > Nice series :)
> > 
> > It appears there is no user of counter_simple in this series other than the
> > selftest. Would you be planning to add any conversions in the series itself,
> > for illustration of use? Sorry if I missed a usage.
> > 
> > Also how do we guard against atomicity of counter_simple RMW operations? Is
> > the implication that it should be guarded using other synchronization to
> > prevent lost-update problem?
> > 
> > Some more comments:
> > 
> > 1.  atomic RMW operations that have a return value are fully ordered. Would
> >     you be adding support to counter_simple for such ordering as well, for
> >     consistency?
> 
> No -- there is no atomicity guarantee for counter_simple. I would prefer
> counter_simple not exist at all, specifically for this reason.

Yeah I am ok with it not existing, especially also as there are no examples
of its conversion/usage in the series.

> > 2. I felt counter_atomic and counter_atomic64 would be nice equivalents to
> >    the atomic and atomic64 naming currently used (i.e. dropping the '32').
> >    However that is just my opinion and I am ok with either naming.
> 
> I had asked that they be size-named to avoid any confusion (i.e. we're
> making a new API).

Works for me.

Cheers,

 - Joel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
