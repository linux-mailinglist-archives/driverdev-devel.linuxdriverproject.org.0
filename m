Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD7830E212
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 19:12:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37051871AF;
	Wed,  3 Feb 2021 18:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xqzwpDEjVfMH; Wed,  3 Feb 2021 18:12:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75929871A4;
	Wed,  3 Feb 2021 18:12:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 053341BF2F9
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 00EF584973
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gDZtrN37lLX3 for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 18:12:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F323848F5
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 18:12:11 +0000 (UTC)
Received: by mail-il1-f173.google.com with SMTP id g9so133420ilc.3
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 10:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SB8riJOjuzgjOw1Wsc94yZlZbRu0f544yG+Du9Zqdfg=;
 b=GqNljR3NKsjx1aOKKKpu7DPYAayE0yJ1cSIeVoqtDg/UDvcqLkBOFJN8mTXuu8AlnW
 2/qg3wBHa6u37PqvAHoL/TEHy1UG6FAH/6PalY0HU1l079BwcJ9zMWmrZkugS+4apyhL
 MeaUsA/GGDyF1u4u0949ghfqeRJPJK9inRKG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SB8riJOjuzgjOw1Wsc94yZlZbRu0f544yG+Du9Zqdfg=;
 b=Y+hopi7Z6T4sZkL53bQseJlGCvxb295vghyaWl2jxc3DPIPDbJH6ZlDEJ0kulvZa2Y
 wJ3O+QsbLKbfDowH2hmwjvW4ZuYTdNnVJiSSN22j5kREbT0U5rQA0Jw+MxqERJ035jpq
 aEsc2AYbsYBst5VCKOyicx49N0M9LzLQPvdQpe1/tmeVsUD0gvGOHodVD4hknqUa3azR
 INnDrIa1BjfNG3vEtHtdmUGdwcJ95i2GTMUn2bDywyOr1sSTXshL5S4Gf1IP+S8Pxtf6
 GvNKfN6BP+QUfUtJexLKcUa3Bso9yEu8cxQdQrN4L3GphzeKJRq/jVpNALFj23P7m0CM
 bXCQ==
X-Gm-Message-State: AOAM5339gGuyC0SKmrudHdhuGbZqFag7f+8gKRWglA9H89WL5b3rppDW
 ag9V0jXwy0iiDIRJIU9WsPOBCw==
X-Google-Smtp-Source: ABdhPJz2RPi0I2OuoWXqMNIMCO4ew11k/K1o0MoxUBjXKxBLRiPZWJwL//3sB8cqqu6t1+eIdcNEkg==
X-Received: by 2002:a92:2e05:: with SMTP id v5mr3876876ile.241.1612375930585; 
 Wed, 03 Feb 2021 10:12:10 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h21sm399684iob.30.2021.02.03.10.12.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 10:12:09 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, gregkh@linuxfoundation.org, peterz@infradead.org,
 keescook@chromium.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de
Subject: [PATCH v3 0/7] Introduce Sequence Number Ops 
Date: Wed,  3 Feb 2021 11:11:56 -0700
Message-Id: <cover.1612314468.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
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
 linux-kselftest@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sequence Number api provides interfaces for unsigned atomic up counters.

There are a number of atomic_t usages in the kernel where atomic_t api
is used for counting sequence numbers and other statistical counters.
Several of these usages, convert atomic_read() and atomic_inc_return()
return values to unsigned. Introducing sequence number ops supports
these use-cases with a standard core-api.

Sequence Number ops provide interfaces to initialize, increment and get
the sequence number. These ops also check for overflow and log message to
indicate when overflow occurs. This check is intended to help catch cases
where overflow could lead to problems.

Since v2:
- Uses atomic_inc_return() for incrementing the sequence number.
- No longer uses atomic_read()

Shuah Khan (7):
  seqnum_ops: Introduce Sequence Number Ops
  selftests: lib:test_seqnum_ops: add new test for seqnum_ops
  drivers/acpi: convert seqno to use seqnum_ops
  drivers/acpi/apei: convert seqno to seqnum_ops
  drivers/staging/rtl8723bs: convert event_seq to use seqnum_ops
  drivers/staging/rtl8188eu: convert event_seq to use seqnum_ops
  kobject: convert uevent_seqnum to seqnum_ops

 Documentation/core-api/index.rst              |   1 +
 Documentation/core-api/seqnum_ops.rst         |  62 ++++++++
 MAINTAINERS                                   |   8 ++
 drivers/acpi/acpi_extlog.c                    |   8 +-
 drivers/acpi/apei/ghes.c                      |   8 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  23 ++-
 .../staging/rtl8188eu/include/rtw_mlme_ext.h  |   3 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   3 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  33 +++--
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |   3 +-
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |   3 +-
 include/linux/kobject.h                       |   3 +-
 include/linux/seqnum_ops.h                    | 131 +++++++++++++++++
 kernel/ksysfs.c                               |   3 +-
 lib/Kconfig                                   |   9 ++
 lib/Makefile                                  |   1 +
 lib/kobject_uevent.c                          |   9 +-
 lib/test_seqnum_ops.c                         | 133 ++++++++++++++++++
 tools/testing/selftests/lib/Makefile          |   1 +
 tools/testing/selftests/lib/config            |   1 +
 .../testing/selftests/lib/test_seqnum_ops.sh  |  10 ++
 21 files changed, 423 insertions(+), 33 deletions(-)
 create mode 100644 Documentation/core-api/seqnum_ops.rst
 create mode 100644 include/linux/seqnum_ops.h
 create mode 100644 lib/test_seqnum_ops.c
 create mode 100755 tools/testing/selftests/lib/test_seqnum_ops.sh

-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
