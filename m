Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BE127B663
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 22:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BFF14204C9;
	Mon, 28 Sep 2020 20:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AtkzdZwPCN1V; Mon, 28 Sep 2020 20:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C742A20415;
	Mon, 28 Sep 2020 20:34:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD0421BF355
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 20:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7BCC847C5
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 20:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O4eu3PAWuTEb for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 20:34:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34747847FE
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 20:34:34 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id w7so2226896pfi.4
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 13:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fSqGGre3K5gDxqZQhBBAgkB/XW4ArHnxdL9/PVe8UEw=;
 b=NhEgCMqvIk+RvaHqH61RFdho/oyavhy1mnawXx73Z32KtMmWrdQ3TF3Wdl5xGJWAF4
 HJ7MvCec9xWmOfe2vmH4pRHVPw4F2RLEFJS+4IHA6SOXqWq1vixOup+3/VsF76zS/3fH
 NNK2l+sjcwTbNoDengDe+AnKeGhAQtj5ceh68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fSqGGre3K5gDxqZQhBBAgkB/XW4ArHnxdL9/PVe8UEw=;
 b=Z1B6F8oLI5HBNEUzMWyOtUhZI93fdS/ujZOVVRxV7rhw8XHgXB1M0V+nFml6n/Jjub
 1Sf6ul6xCj2BftGqO2P2iQMpd4/uX3A0UJmpNwhyN4Gcpo1N84rR3vic26d16Hq2t/a+
 5Hes/IqM4oHXOI68jdSblRQq9rb895qMKHt6xjL9r/u3BVwxJCqWV5yiFUrhrAzUIahQ
 0mYs07wbNVj3FnpWtDV3aMISZjoj/qQTJ7vJ5Kab7lEpxDwlgM4KwwA+fq3AGRYJswsv
 rlYOOe5zkJUIxebnLNO/+WQdceIdno14rNyoccuafXiZwegl127m9OTHcjqPXau6caX0
 rROw==
X-Gm-Message-State: AOAM5300r9VodB5ONd0yD3oe98Rko/n32O954HgLduHa4Hu1PTNbAZrY
 nW6YMXbYe6L2NJDab3kFZ4x9Ug==
X-Google-Smtp-Source: ABdhPJyzYBgjXDVfi/ERFQgeS7WYZoqBnC+zZTP9Vn+PQLPLjF+pMQ37sNjCiSdOAaPnfO95UdERzg==
X-Received: by 2002:a17:902:7589:b029:d2:686a:4ede with SMTP id
 j9-20020a1709027589b02900d2686a4edemr1142882pll.45.1601325273788; 
 Mon, 28 Sep 2020 13:34:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t14sm2209702pgm.42.2020.09.28.13.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 13:34:32 -0700 (PDT)
Date: Mon, 28 Sep 2020 13:34:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Joel Fernandes <joel@joelfernandes.org>
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
Message-ID: <202009281331.444F36A7B@keescook>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <20200927233526.GA500818@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200927233526.GA500818@google.com>
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

On Sun, Sep 27, 2020 at 07:35:26PM -0400, Joel Fernandes wrote:
> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> > This patch series is a result of discussion at the refcount_t BOF
> > the Linux Plumbers Conference. In this discussion, we identified
> > a need for looking closely and investigating atomic_t usages in
> > the kernel when it is used strictly as a counter without it
> > controlling object lifetimes and state changes.
> > 
> > There are a number of atomic_t usages in the kernel where atomic_t api
> > is used strictly for counting and not for managing object lifetime. In
> > some cases, atomic_t might not even be needed.
> >     
> > The purpose of these counters is twofold: 1. clearly differentiate
> > atomic_t counters from atomic_t usages that guard object lifetimes,
> > hence prone to overflow and underflow errors. It allows tools that scan
> > for underflow and overflow on atomic_t usages to detect overflow and
> > underflows to scan just the cases that are prone to errors. 2. provides
> > non-atomic counters for cases where atomic isn't necessary.
> 
> Nice series :)
> 
> It appears there is no user of counter_simple in this series other than the
> selftest. Would you be planning to add any conversions in the series itself,
> for illustration of use? Sorry if I missed a usage.
> 
> Also how do we guard against atomicity of counter_simple RMW operations? Is
> the implication that it should be guarded using other synchronization to
> prevent lost-update problem?
> 
> Some more comments:
> 
> 1.  atomic RMW operations that have a return value are fully ordered. Would
>     you be adding support to counter_simple for such ordering as well, for
>     consistency?

No -- there is no atomicity guarantee for counter_simple. I would prefer
counter_simple not exist at all, specifically for this reason.

> 2. I felt counter_atomic and counter_atomic64 would be nice equivalents to
>    the atomic and atomic64 naming currently used (i.e. dropping the '32').
>    However that is just my opinion and I am ok with either naming.

I had asked that they be size-named to avoid any confusion (i.e. we're
making a new API).

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
