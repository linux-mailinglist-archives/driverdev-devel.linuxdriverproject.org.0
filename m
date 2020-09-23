Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3813F274E91
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 03:44:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14ECE85F93;
	Wed, 23 Sep 2020 01:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lp-cYsyrBjLS; Wed, 23 Sep 2020 01:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98F21855CC;
	Wed, 23 Sep 2020 01:43:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D168E1BF425
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 01:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C8405855CC
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 01:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q5_V5RwyMHdG for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 01:43:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EA3FB84E5F
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 01:43:56 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id c13so23278584oiy.6
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 18:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jS6qXoxP8oaPPr4z/ISWBa/fqTB0t5njLCtqvmesqnQ=;
 b=G+hI5wX8b2Mgi7CpmlZz/BbRZ94AkUl88hXN1JwuQ34ehWFDDAH1EiGJlznX6Q1hkh
 leoTF4ALmGHjcSFCGWQTp9oolzWxQJAfHjJcY2uTD8jw1//YObslhst7+G02nWz+wJ6H
 SamX0bagHIpt+fJ/d7+7oToKKwlqUc5BpPiJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jS6qXoxP8oaPPr4z/ISWBa/fqTB0t5njLCtqvmesqnQ=;
 b=uBkJzxZ/W95mPJuFnDltYwPaU9pgZkvtj1TQtswxkCEJzyCgLnO778NF6uY6UWMXzM
 D9QbIM4hmm2rZ5IMmFHDWHk5cGRX4ibdEYvZOS6Jsq+kcmtZ8jRrgdqK1brYUR7pffXZ
 CPFQeFyComkGV89AazM8WmzfoQxC1FOuLp2BkngSwh6MrqpCWn4ff0zBZMs6GutqKaBv
 BE7hDduf2F+vjDBsNN697VrTrc0AyFtZUHR6BLPxXBGAR40/5ke7+YNS1UfcNj27Gg2r
 hTnrxRjZEKkk4+H2RMNYxAiDuXsn1jjzlNy6xDDvnjXh8PR/xAuEz3jflkqxMiCb8JnX
 SiHw==
X-Gm-Message-State: AOAM5329lIT7TuUF25hU15AQ9x0sY27+gA3kR6PUPfLDF6ac+5vaVb5Q
 l4QMLZ9E//s3y8kX5wMRF20ySw==
X-Google-Smtp-Source: ABdhPJyPQg1FpZjcUx+RNaSk3Z0uB0vB4JXzkK2pjJD8AjXfQL76MIafNbVdr3ZrCY8bDGXBAwq3dg==
X-Received: by 2002:aca:4142:: with SMTP id o63mr4085367oia.167.1600825436078; 
 Tue, 22 Sep 2020 18:43:56 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id y23sm8801820ooj.34.2020.09.22.18.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 18:43:55 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, keescook@chromium.org, gregkh@linuxfoundation.org,
 shuah@kernel.org, rafael@kernel.org, johannes@sipsolutions.net,
 lenb@kernel.org, james.morse@arm.com, tony.luck@intel.com, bp@alien8.de,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com, minyard@acm.org, arnd@arndb.de, mchehab@kernel.org,
 rric@kernel.org
Subject: [RFC PATCH 00/11] Introduce Simple atomic and non-atomic counters
Date: Tue, 22 Sep 2020 19:43:29 -0600
Message-Id: <cover.1600816121.git.skhan@linuxfoundation.org>
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
the Linux Plumbers Conference. In this discussion, we identifed
a need for looking closely and investigating atomic_t usages in
the kernel when it is used strictly as a counter wothout it
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

Please review and let me know if non-stat conversions e.g: probe_count,
deferred_trigger_count make sense.

Shuah Khan (11):
  counters: Introduce counter and counter_atomic counters
  selftests:lib:test_counters: add new test for counters
  drivers/base: convert deferred_trigger_count and probe_count to
    counter_atomic
  drivers/base/devcoredump: convert devcd_count to counter_atomic
  drivers/acpi: convert seqno counter_atomic
  drivers/acpi/apei: convert seqno counter_atomic
  drivers/android/binder: convert stats, transaction_log to
    counter_atomic
  drivers/base/test/test_async_driver_probe: convert to use
    counter_atomic
  drivers/char/ipmi: convert stats to use counter_atomic
  drivers/misc/vmw_vmci: convert num guest devices counter to
    counter_atomic
  drivers/edac: convert pci counters to counter_atomic

 Documentation/core-api/counters.rst          | 158 +++++++++
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
 include/linux/counters.h                     | 343 +++++++++++++++++++
 lib/Kconfig                                  |  10 +
 lib/Makefile                                 |   1 +
 lib/test_counters.c                          | 283 +++++++++++++++
 tools/testing/selftests/lib/Makefile         |   1 +
 tools/testing/selftests/lib/config           |   1 +
 tools/testing/selftests/lib/test_counters.sh |   5 +
 21 files changed, 897 insertions(+), 74 deletions(-)
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
