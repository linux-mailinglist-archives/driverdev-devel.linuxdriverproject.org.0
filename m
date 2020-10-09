Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F021288D69
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 17:56:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E279876DA;
	Fri,  9 Oct 2020 15:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g74FWAoBYYoN; Fri,  9 Oct 2020 15:56:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C5288757D;
	Fri,  9 Oct 2020 15:56:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1E3B1BF4D5
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 15:56:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D631420336
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 15:56:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-OLStPrxvLq for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 15:56:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id B45472014B
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 15:56:11 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id s66so9437314otb.2
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 08:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b32z5dKsXOrYLHbSI9QCODj0mLTC/ZJJ3E6KUm9+yHE=;
 b=LDUnatNNn2udc+UqXUN+tdPGpv/2MM9wKl2dLPda8qil/vULNrO0DxhWPtDkcZAr7r
 Axl53TaOKUNtScl2hLkq3wuBNt2lR3WN46nvKYP8c1uTr33qF1NY9nZeDw/6Yzf+HUky
 iZQzHYFeB4F6JRZXy5O7uBw49tpgKhHzVWrMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b32z5dKsXOrYLHbSI9QCODj0mLTC/ZJJ3E6KUm9+yHE=;
 b=t5PBuXvkyf36dJacfXGskOmJN2RUYBidXwyu6K6khdBFKtxO6EuEnGBgTGTAQhLTvu
 +9Y7PVODRWfS25XM1Y2Ha2CiNwQNDcm9sLqEwg+L0E4Qinh0Ss3zAjMJLsbQgzZLhTip
 5iSbyrgxDeyu4wOfEu8RWn0qhKaAoZaL152VS1fbl7yaVwRI91ETc8LtCE9eEU+i0fww
 TUJz1aJHAnkCjG4XqZdNr8Wru0NrQUUKxnh+2j+1iyztl4yngFM6wpLZrI0Seolvv+CQ
 ed8ByqiZdKgheUmTiuyE7wrRa0N882nngD3Rpse1bYmQPAq1JIWsTZfcEIT4SzSWMe/1
 nXyg==
X-Gm-Message-State: AOAM530MApsdK2qP4y3G28N2G+b2dvaRTz6u41bfio78KFcah+tMKvUh
 YwR1eKZFRFEgTYutfQCtm/KUoA==
X-Google-Smtp-Source: ABdhPJz3Y617hhCiPlIHjqC9vW6PFy/AnltbdLlnrMsE2eBnxmpcpkdSCIOXcudkVjETugwBP8Bj1Q==
X-Received: by 2002:a9d:2a88:: with SMTP id e8mr8717319otb.299.1602258970850; 
 Fri, 09 Oct 2020 08:56:10 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id e7sm7347246oia.9.2020.10.09.08.56.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:56:09 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, keescook@chromium.org, gregkh@linuxfoundation.org,
 shuah@kernel.org, rafael@kernel.org, johannes@sipsolutions.net,
 lenb@kernel.org, james.morse@arm.com, tony.luck@intel.com, bp@alien8.de,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com, minyard@acm.org, arnd@arndb.de, mchehab@kernel.org,
 rric@kernel.org
Subject: [PATCH v3 00/11] Introduce Simple atomic counters
Date: Fri,  9 Oct 2020 09:55:55 -0600
Message-Id: <cover.1602209970.git.skhan@linuxfoundation.org>
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

The purpose of these counters is to clearly differentiate atomic_t
counters from atomic_t usages that guard object lifetimes, hence prone
to overflow and underflow errors. It allows tools that scan for underflow
and overflow on atomic_t usages to detect overflow and underflows to scan
just the cases that are prone to errors.

Simple atomic counters api provides interfaces for simple atomic counters
that just count, and don't guard resource lifetimes. The interfaces are
built on top of atomic_t api, providing a smaller subset of atomic_t
interfaces necessary to support simple counters.
    
Counter wraps around to INT_MIN when it overflows and should not be used
to guard resource lifetimes, device usage and open counts that control
state changes, and pm states. Overflowing to INT_MIN is consistent with
the atomic_t api, which it is built on top of.
    
Using counter_atomic* to guard lifetimes could lead to use-after free
when it overflows and undefined behavior when used to manage state
changes and device usage/open states.

This patch series introduces Simple atomic counters. Counter atomic ops
leverage atomic_t and provide a sub-set of atomic_t ops.

In addition this patch series converts a few drivers to use the new api.
The following criteria is used for select variables for conversion:

1. Variable doesn't guard object lifetimes, manage state changes e.g:
   device usage counts, device open counts, and pm states.
2. Variable is used for stats and counters.
3. The conversion doesn't change the overflow behavior.

Note: Would like to get this into Linux 5.10-rc1 so we can continue
updating drivers that can be updated to use this API. If this all looks
good, Kees, would you like to take this through your tree or would you
like to take this through mine.

Changes since Patch v2:
-- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
   the patches with the tags.
-- Minor changes to address Greg's comment to remove default from
   Kconfig
-- Added Copyrights to new files
Updates to address comments on v2 from Kees Cook
-- Updated Patch 1/11 to make clear that the counter wraps around to
   INT_MIN and that this behavior is consistent with the atomic_t
   api, on which this counter built api built on top of.
-- Other patch change logs updated with the correct wrap around
   behavior.
-- Patch 1/11 is updated to add tests with constants for overflow
   and underflow.
-- Patch 8/11 - added inits for the stat counters
-- Patch 10/11 - fixes the vmci_num_guest_devices != 0 to >0 which is
   safer than checking for !=0. 
 
Changes since Patch v1
-- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
   the patches with the tags.
-- Addressed Kees's  and Joel's comments:
   1. Removed dec_return interfaces
   2. Removed counter_simple interfaces to be added later with changes
      to drivers that use them (if any).

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
  counters: Introduce counter_atomic* counters
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

 Documentation/core-api/counters.rst          | 109 ++++++++++++
 MAINTAINERS                                  |   8 +
 drivers/acpi/acpi_extlog.c                   |   5 +-
 drivers/acpi/apei/ghes.c                     |   5 +-
 drivers/android/binder.c                     |  41 ++---
 drivers/android/binder_internal.h            |   3 +-
 drivers/base/dd.c                            |  19 +-
 drivers/base/devcoredump.c                   |   5 +-
 drivers/base/test/test_async_driver_probe.c  |  26 +--
 drivers/char/ipmi/ipmi_msghandler.c          |   9 +-
 drivers/char/ipmi/ipmi_si_intf.c             |   9 +-
 drivers/edac/edac_pci.h                      |   5 +-
 drivers/edac/edac_pci_sysfs.c                |  28 +--
 drivers/misc/vmw_vmci/vmci_guest.c           |   9 +-
 include/linux/counters.h                     | 176 +++++++++++++++++++
 lib/Kconfig                                  |   9 +
 lib/Makefile                                 |   1 +
 lib/test_counters.c                          | 162 +++++++++++++++++
 tools/testing/selftests/lib/Makefile         |   1 +
 tools/testing/selftests/lib/config           |   1 +
 tools/testing/selftests/lib/test_counters.sh |  10 ++
 21 files changed, 567 insertions(+), 74 deletions(-)
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
