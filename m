Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFC92899F3
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 22:45:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AB5A878D2;
	Fri,  9 Oct 2020 20:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FaF1GPqlGFLS; Fri,  9 Oct 2020 20:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5947E87890;
	Fri,  9 Oct 2020 20:45:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0B821BF83E
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 20:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9CE4A87890
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 20:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b8oJdC-jLMe4 for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 20:45:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0519B8788C
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 20:45:46 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r21so4807087pgj.5
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 13:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hVX5+FfHI4ZUM/n+lt7+FKmZQZljIf9JA1OHbdRm9dM=;
 b=VXDV+aZd/7WAFMj+s91i6dzU5o9niIOJr9LtvzDbExqBX92/o43XJ4mLdkWsssdUYW
 59/mf+Vx9HTFuB+s5Uq+SPPb/V+sG7AmiVA9XX0Je/8LgHrwTkCyhv3fT9fvBKLsQUI1
 kv3u9MueBXwLYe6awXe3LxmAvsJGNqzekmkq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hVX5+FfHI4ZUM/n+lt7+FKmZQZljIf9JA1OHbdRm9dM=;
 b=Fg5dpklG0fRMqB0ti89s99+t2m47lSPmTgJ5zWGbV32ycNCT90rfGASX3rU4e4K28C
 TeXwtV5GPWp0btttT2XLEmcdXtxIWSV+VulAZQ4J2OiNZAN7eL7veZaJ3nn+zIBkgoUz
 oB1QGfNZvyUtcj0u5wzL42rKYjHWzo44uVQMtvYfYJlzRm+lYv3hEfeFWqYVKvIsJeIh
 Uq5C5/Yyyx9tdFw+2p04RLK24LPwiUps5rWYnzzz2vcHe8HTpSjHjJH4EE7xy4QsM0m6
 ty5KhIRvP7gO8fzpN6B5fFDm7GMDpV2wTiZTpzstTUI7KdnmYn6NQDjCE0h08BDkaoqd
 7z1Q==
X-Gm-Message-State: AOAM533QRc4lNI2ov8OGOFrVN3S4psto1NASfUQ3vSyQtjPULUyzcenu
 jvXZ18X/CIPy7bgrv/BBotJRW6d2tqFEOw==
X-Google-Smtp-Source: ABdhPJzSAKjeywiz0Od20lW+Cape3t34gBitYgmyJAvlFQsFShOemku3ICOQ9rzytzKY66XYHOnlUw==
X-Received: by 2002:a17:90a:1548:: with SMTP id
 y8mr6533282pja.113.1602276345630; 
 Fri, 09 Oct 2020 13:45:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j25sm11474436pfn.212.2020.10.09.13.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 13:45:44 -0700 (PDT)
Date: Fri, 9 Oct 2020 13:45:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v3 00/11] Introduce Simple atomic counters
Message-ID: <202010091255.246395A6@keescook>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
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

On Fri, Oct 09, 2020 at 09:37:46PM +0200, Peter Zijlstra wrote:
> On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
> > Simple atomic counters api provides interfaces for simple atomic counters
> > that just count, and don't guard resource lifetimes. The interfaces are
> > built on top of atomic_t api, providing a smaller subset of atomic_t
> > interfaces necessary to support simple counters.
> 
> To what actual purpose?!? AFACIT its pointless wrappery, it gets us
> nothing.

It's not pointless. There is value is separating types for behavioral
constraint to avoid flaws. atomic_t provides a native operation. We gained
refcount_t for the "must not wrap" type, and this gets us the other side
of that behavioral type, which is "wrapping is expected". Separating the
atomic_t uses allows for a clearer path to being able to reason about
code flow, whether it be a human or a static analyzer.

The counter wrappers add nothing to the image size, and only serve to
confine the API to one that cannot be used for lifetime management.

Once conversions are done, we have a clean line between refcounting
and statistical atomics, which means we have a much lower chance of
introducing new flaws (and maybe we'll fix flaws during the conversion,
which we've certainly seen before when doing this stricter type/language
changes).

I don't see why this is an objectionable goal.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
