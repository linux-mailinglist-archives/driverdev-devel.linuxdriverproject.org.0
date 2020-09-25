Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708772794F9
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 01:47:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADA4D8769A;
	Fri, 25 Sep 2020 23:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TzeAQAD-BwpM; Fri, 25 Sep 2020 23:47:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EF0587692;
	Fri, 25 Sep 2020 23:47:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E54841BF263
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 23:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E189A86C7C
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 23:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OG2B0hkyL0fW for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 23:47:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com
 [209.85.161.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0EB8686BCF
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 23:47:30 +0000 (UTC)
Received: by mail-oo1-f66.google.com with SMTP id y25so1170138oog.4
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 16:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5GSI4sitvN/PQsQRygkVbK/E0lWn0wSSF/SgQleFAew=;
 b=GlQFMXnTXTAOOylr3kYi+B0XVNO6JJj3Z6K0SonIh8lTAEh3WGSirGKBmo2BLng6AF
 3yEBAeoNOMsRq6+DKsqCsqSnst/dMAXCW4zQhp8/muiVrfCCwWvOViRLT6umAhCndrg6
 EZS6ZOXeF2OjOZzboXBPHXI40fRUC9kdW0PS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5GSI4sitvN/PQsQRygkVbK/E0lWn0wSSF/SgQleFAew=;
 b=DiU0ipQ1tCxjjT99zoERmoxScdptRBrcWvu/l5n+T91ceMKAHfQAl49X4AWQnJvem4
 gG3PHHA4xpn6QeSbUzTXw/mBvura/KX9hCyiFZic8BgNY8YL3WVFdKcJaS40QL90TpdE
 LJJY9UOO5X7m8f2vXLVN3jiaN07HLmDDv6w0KAD/WUGmjqxFkGNA7p8FVhgDkj70bGOR
 Za6Ex6Q9FOsAxkiEBXs0aFgZBh45rO6SLsG/ksYDwwKUbMnReypC14HpYbUCJz2FWHlR
 GDZFxCVmbkN3CMvGsobWbv2kiMNNogVqIJjUcCzGOmLeLfn6JxUgO9DC0li9i98pIrxS
 bhwA==
X-Gm-Message-State: AOAM533NsmGSkeU7/nxirWL7ZRRnQssg8IDLcqeIjKNtjpqgEoNFTqAv
 GALQFUtVTCf8k4CAnoykZ8IQgg==
X-Google-Smtp-Source: ABdhPJzG33LzQAtNWbjJrUe3e0Jp9VlAFB19KfXzKWwMfan8ZxMGXjGcjOylRwfV8HLI2ATW602JaQ==
X-Received: by 2002:a4a:9833:: with SMTP id y48mr2545664ooi.73.1601077649166; 
 Fri, 25 Sep 2020 16:47:29 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id k3sm196219oof.6.2020.09.25.16.47.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 16:47:28 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, keescook@chromium.org, gregkh@linuxfoundation.org,
 shuah@kernel.org, rafael@kernel.org, johannes@sipsolutions.net,
 lenb@kernel.org, james.morse@arm.com, tony.luck@intel.com, bp@alien8.de,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com, minyard@acm.org, arnd@arndb.de, mchehab@kernel.org,
 rric@kernel.org
Subject: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
Date: Fri, 25 Sep 2020 17:47:14 -0600
Message-Id: <cover.1601073127.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series is a result of discussion at the refcount_t BOF
the Linux Plumbers Conference. In this discussion, we identified
a need for looking closely and investigating atomic_t usages in
the kernel when it is used strictly as a counter without it
controlling object lifetimes and state changes.

There are a number of atomic_t usages in the kernel where atomic_t api
is used strictly for counting and not for managing object lifetime. In
some cases, atomic_t might not even be needed.
    
The purpose of these counters is twofold: 1. clearly differentiate
atomic_t counters from atomic_t usages that guard object lifetimes,
hence prone to overflow and underflow errors. It allows tools that scan
for underflow and overflow on atomic_t usages to detect overflow and
underflows to scan just the cases that are prone to errors. 2. provides
non-atomic counters for cases where atomic isn't necessary.
    
Simple atomic and non-atomic counters api provides interfaces for simple
atomic and non-atomic counters that just count, and don't guard resource
lifetimes. Counters will wrap around to 0 when it overflows and should
not be used to guard resource lifetimes, device usage and open counts
that control state changes, and pm states.
    
Using counter_atomic to guard lifetimes could lead to use-after free
when it overflows and undefined behavior when used to manage state
changes and device usage/open states.

This patch series introduces Simple atomic and non-atomic counters.
Counter atomic ops leverage atomic_t and provide a sub-set of atomic_t
ops.

In addition this patch series converts a few drivers to use the new api.
The following criteria is used for select variables for conversion:

1. Variable doesn't guard object lifetimes, manage state changes e.g:
   device usage counts, device open counts, and pm states.
2. Variable is used for stats and counters.
3. The conversion doesn't change the overflow behavior.

Changes since RFC:
-- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
   the patches with the tags.
-- Addressed Kees's comments:
   1. Non-atomic counters renamed to counter_simple32 and counter_simple64
      to clearly indicate size.
   2. Added warning for counter_simple* usage and it should be used only
      when there is no need for atomicity.
   3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
   4. Renamed counter_atomic_long to counter_atomic64 and it now uses
      atomic64_t ops and indicates size.
   5. Test updated for the API renames.
   6. Added helper functions for test results printing
   7. Verified that the test module compiles in kunit env. and test
      module can be loaded to run the test.
   8. Updated Documentation to reflect the intent to make the API
      restricted so it can never be used to guard object lifetimes
      and state management. I left _return ops for now, inc_return
      is necessary for now as per the discussion we had on this topic. 
-- Updated driver patches with API name changes.
-- We discussed if binder counters can be non-atomic. For now I left
   them the same as the RFC patch - using counter_atomic32
-- Unrelated to this patch series:
   The patch series review uncovered improvements could be made to
   test_async_driver_probe and vmw_vmci/vmci_guest. I will track
   these for fixing later.

Shuah Khan (11):
  counters: Introduce counter_simple* and counter_atomic* counters
  selftests:lib:test_counters: add new test for counters
  drivers/base: convert deferred_trigger_count and probe_count to
    counter_atomic32
  drivers/base/devcoredump: convert devcd_count to counter_atomic32
  drivers/acpi: convert seqno counter_atomic32
  drivers/acpi/apei: convert seqno counter_atomic32
  drivers/android/binder: convert stats, transaction_log to
    counter_atomic32
  drivers/base/test/test_async_driver_probe: convert to use
    counter_atomic32
  drivers/char/ipmi: convert stats to use counter_atomic32
  drivers/misc/vmw_vmci: convert num guest devices counter to
    counter_atomic32
  drivers/edac: convert pci counters to counter_atomic32

 Documentation/core-api/counters.rst          | 174 +++++++++
 MAINTAINERS                                  |   8 +
 drivers/acpi/acpi_extlog.c                   |   5 +-
 drivers/acpi/apei/ghes.c                     |   5 +-
 drivers/android/binder.c                     |  41 +--
 drivers/android/binder_internal.h            |   3 +-
 drivers/base/dd.c                            |  19 +-
 drivers/base/devcoredump.c                   |   5 +-
 drivers/base/test/test_async_driver_probe.c  |  23 +-
 drivers/char/ipmi/ipmi_msghandler.c          |   9 +-
 drivers/char/ipmi/ipmi_si_intf.c             |   9 +-
 drivers/edac/edac_pci.h                      |   5 +-
 drivers/edac/edac_pci_sysfs.c                |  28 +-
 drivers/misc/vmw_vmci/vmci_guest.c           |   9 +-
 include/linux/counters.h                     | 350 +++++++++++++++++++
 lib/Kconfig                                  |  10 +
 lib/Makefile                                 |   1 +
 lib/test_counters.c                          | 276 +++++++++++++++
 tools/testing/selftests/lib/Makefile         |   1 +
 tools/testing/selftests/lib/config           |   1 +
 tools/testing/selftests/lib/test_counters.sh |   5 +
 21 files changed, 913 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/core-api/counters.rst
 create mode 100644 include/linux/counters.h
 create mode 100644 lib/test_counters.c
 create mode 100755 tools/testing/selftests/lib/test_counters.sh

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
