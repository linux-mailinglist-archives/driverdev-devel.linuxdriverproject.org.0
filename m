Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A4627A484
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 01:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82C1287091;
	Sun, 27 Sep 2020 23:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8g-1IWwG1ix; Sun, 27 Sep 2020 23:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E505F8702E;
	Sun, 27 Sep 2020 23:35:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6B31BF3F2
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 23:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 554CF85C04
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 23:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NrbNEY-BFx3l for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 23:35:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F363085BF7
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 23:35:28 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id cv8so4515677qvb.12
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 16:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QZ9ccKxrbw+GLDZtn/A5B8mgsLI26ygsTihNFMKsaJg=;
 b=F/56Xv83N6WX7oppzzL1NJZmCHsucSUClxFHBoBH3xsnTVfETiPJeuhnRdxGz41V4r
 wmhjN4hzByPXiI41LvOfaV3oAVNMOhh4n5Bti5j3pJHKbA2Nsm8f9J/+OQapxcZKM/0E
 Yg72rxpPjAQYXHf+wlNQils/SLD473ptBw7hc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QZ9ccKxrbw+GLDZtn/A5B8mgsLI26ygsTihNFMKsaJg=;
 b=Ei1GF2Gift2jZXta/MPtaKi53RxkxRSNFo5PiitfbeX9uIkhiR/nRCX2KhfH6Wl+JM
 fmSgL7bRLkf76TlrQmqeb35mU/AF77X5uE92JiuYYfnESxut9StG/IRvFkbCZXg8+udK
 djzoX4Nl14u5H8uuGKnfxIG1pGpVE5Y6gd1e0gGaMwzWbQzak/GZ8JKkShLMxOe5vECO
 Zsu80j8aZS1UFtSEj/l27ayNaRupnYWPw+fC1HUwns3U15Zg2nFOsgoRFZVS5Ser4eRs
 vjKNJ5n5ZPZmstPpr4E0UQO955YdkvQQhy5osJRhdrPN9MgexjcGWLvzMZuCUGbFJqdX
 KJmg==
X-Gm-Message-State: AOAM532lMOIRrO2s0qjloT29s/FwzT1kbtHRmUd4o7lyQ2yIW9ekZnir
 gUhLpr+k5y69yJTjEg4fW2fyVQ==
X-Google-Smtp-Source: ABdhPJxVvYjhgGsi9+tR/TAw2u5qjrv6jp+i1+M0SKg/XJH2jhzXZSe5R7zNVYtzRKNJD4xFiXfYRw==
X-Received: by 2002:a05:6214:292:: with SMTP id
 l18mr9219493qvv.3.1601249727784; 
 Sun, 27 Sep 2020 16:35:27 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:cad3:ffff:feb3:bd59])
 by smtp.gmail.com with ESMTPSA id j16sm7589014qkg.26.2020.09.27.16.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Sep 2020 16:35:27 -0700 (PDT)
Date: Sun, 27 Sep 2020 19:35:26 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
Message-ID: <20200927233526.GA500818@google.com>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1601073127.git.skhan@linuxfoundation.org>
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
 shuah@kernel.org, devel@driverdev.osuosl.org, arnd@arndb.de, corbet@lwn.net,
 surenb@google.com, linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org,
 lenb@kernel.org, tkjos@android.com, keescook@chromium.org, minyard@acm.org,
 bp@alien8.de, openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 maco@android.com, christian@brauner.io, linux-edac@vger.kernel.org,
 tony.luck@intel.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 arve@android.com, james.morse@arm.com, hridya@google.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> This patch series is a result of discussion at the refcount_t BOF
> the Linux Plumbers Conference. In this discussion, we identified
> a need for looking closely and investigating atomic_t usages in
> the kernel when it is used strictly as a counter without it
> controlling object lifetimes and state changes.
> 
> There are a number of atomic_t usages in the kernel where atomic_t api
> is used strictly for counting and not for managing object lifetime. In
> some cases, atomic_t might not even be needed.
>     
> The purpose of these counters is twofold: 1. clearly differentiate
> atomic_t counters from atomic_t usages that guard object lifetimes,
> hence prone to overflow and underflow errors. It allows tools that scan
> for underflow and overflow on atomic_t usages to detect overflow and
> underflows to scan just the cases that are prone to errors. 2. provides
> non-atomic counters for cases where atomic isn't necessary.

Nice series :)

It appears there is no user of counter_simple in this series other than the
selftest. Would you be planning to add any conversions in the series itself,
for illustration of use? Sorry if I missed a usage.

Also how do we guard against atomicity of counter_simple RMW operations? Is
the implication that it should be guarded using other synchronization to
prevent lost-update problem?

Some more comments:

1.  atomic RMW operations that have a return value are fully ordered. Would
    you be adding support to counter_simple for such ordering as well, for
    consistency?

2. I felt counter_atomic and counter_atomic64 would be nice equivalents to
   the atomic and atomic64 naming currently used (i.e. dropping the '32').
   However that is just my opinion and I am ok with either naming.

thanks!

 - Joel

>     
> Simple atomic and non-atomic counters api provides interfaces for simple
> atomic and non-atomic counters that just count, and don't guard resource
> lifetimes. Counters will wrap around to 0 when it overflows and should
> not be used to guard resource lifetimes, device usage and open counts
> that control state changes, and pm states.
>     
> Using counter_atomic to guard lifetimes could lead to use-after free
> when it overflows and undefined behavior when used to manage state
> changes and device usage/open states.
> 
> This patch series introduces Simple atomic and non-atomic counters.
> Counter atomic ops leverage atomic_t and provide a sub-set of atomic_t
> ops.
> 
> In addition this patch series converts a few drivers to use the new api.
> The following criteria is used for select variables for conversion:
> 
> 1. Variable doesn't guard object lifetimes, manage state changes e.g:
>    device usage counts, device open counts, and pm states.
> 2. Variable is used for stats and counters.
> 3. The conversion doesn't change the overflow behavior.
> 
> Changes since RFC:
> -- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
>    the patches with the tags.
> -- Addressed Kees's comments:
>    1. Non-atomic counters renamed to counter_simple32 and counter_simple64
>       to clearly indicate size.
>    2. Added warning for counter_simple* usage and it should be used only
>       when there is no need for atomicity.
>    3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
>    4. Renamed counter_atomic_long to counter_atomic64 and it now uses
>       atomic64_t ops and indicates size.
>    5. Test updated for the API renames.
>    6. Added helper functions for test results printing
>    7. Verified that the test module compiles in kunit env. and test
>       module can be loaded to run the test.
>    8. Updated Documentation to reflect the intent to make the API
>       restricted so it can never be used to guard object lifetimes
>       and state management. I left _return ops for now, inc_return
>       is necessary for now as per the discussion we had on this topic. 
> -- Updated driver patches with API name changes.
> -- We discussed if binder counters can be non-atomic. For now I left
>    them the same as the RFC patch - using counter_atomic32
> -- Unrelated to this patch series:
>    The patch series review uncovered improvements could be made to
>    test_async_driver_probe and vmw_vmci/vmci_guest. I will track
>    these for fixing later.
> 
> Shuah Khan (11):
>   counters: Introduce counter_simple* and counter_atomic* counters
>   selftests:lib:test_counters: add new test for counters
>   drivers/base: convert deferred_trigger_count and probe_count to
>     counter_atomic32
>   drivers/base/devcoredump: convert devcd_count to counter_atomic32
>   drivers/acpi: convert seqno counter_atomic32
>   drivers/acpi/apei: convert seqno counter_atomic32
>   drivers/android/binder: convert stats, transaction_log to
>     counter_atomic32
>   drivers/base/test/test_async_driver_probe: convert to use
>     counter_atomic32
>   drivers/char/ipmi: convert stats to use counter_atomic32
>   drivers/misc/vmw_vmci: convert num guest devices counter to
>     counter_atomic32
>   drivers/edac: convert pci counters to counter_atomic32
> 
>  Documentation/core-api/counters.rst          | 174 +++++++++
>  MAINTAINERS                                  |   8 +
>  drivers/acpi/acpi_extlog.c                   |   5 +-
>  drivers/acpi/apei/ghes.c                     |   5 +-
>  drivers/android/binder.c                     |  41 +--
>  drivers/android/binder_internal.h            |   3 +-
>  drivers/base/dd.c                            |  19 +-
>  drivers/base/devcoredump.c                   |   5 +-
>  drivers/base/test/test_async_driver_probe.c  |  23 +-
>  drivers/char/ipmi/ipmi_msghandler.c          |   9 +-
>  drivers/char/ipmi/ipmi_si_intf.c             |   9 +-
>  drivers/edac/edac_pci.h                      |   5 +-
>  drivers/edac/edac_pci_sysfs.c                |  28 +-
>  drivers/misc/vmw_vmci/vmci_guest.c           |   9 +-
>  include/linux/counters.h                     | 350 +++++++++++++++++++
>  lib/Kconfig                                  |  10 +
>  lib/Makefile                                 |   1 +
>  lib/test_counters.c                          | 276 +++++++++++++++
>  tools/testing/selftests/lib/Makefile         |   1 +
>  tools/testing/selftests/lib/config           |   1 +
>  tools/testing/selftests/lib/test_counters.sh |   5 +
>  21 files changed, 913 insertions(+), 74 deletions(-)
>  create mode 100644 Documentation/core-api/counters.rst
>  create mode 100644 include/linux/counters.h
>  create mode 100644 lib/test_counters.c
>  create mode 100755 tools/testing/selftests/lib/test_counters.sh
> 
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
