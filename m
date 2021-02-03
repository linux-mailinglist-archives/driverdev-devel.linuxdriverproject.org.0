Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C0730E215
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 19:12:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91DED86AB6;
	Wed,  3 Feb 2021 18:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MiqaR2xKt8kj; Wed,  3 Feb 2021 18:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94F3A84FB1;
	Wed,  3 Feb 2021 18:12:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B24D61BF2F9
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF20B848F5
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgKUZJg399L8 for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 18:12:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
 [209.85.166.179])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 56BA684973
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 18:12:19 +0000 (UTC)
Received: by mail-il1-f179.google.com with SMTP id e7so106497ile.7
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 10:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Us34ijyq5YldDgoM68M19WNAuZlemdS7tunn1EAeqK0=;
 b=AGLM7izY/rKHCOxp7cxBmTm/tVSqPW7ZIDhByLc5ZUs5fT9iVWlpKxs0rLvrlh1mCo
 rUiu/sshU1xp9YhketiJr9uBHZ5yjx9c65M+Ez/Sds7s9ZGZ30Vm/e1O5nR7ry/Ri6kk
 55jue1iwccIWPtSDFXvnqOff+FiLMnDHgx7uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Us34ijyq5YldDgoM68M19WNAuZlemdS7tunn1EAeqK0=;
 b=WpVlysDp9vK5SNuiJntLkytlhsdhtsbu/+HsoE5xZk8yWn4QvOhUlJBCgG3cgKT4+l
 WGOKuEHMAHjxlNmugFTe+aHlc1DjqkoDabnkmUkLGWxVtGzbVZutlwr+1VERrkrUgSGm
 e4AyNI4kxUb2Ylfg1zmJhAYit0o2/yJ6Iflmyon5Nd+AYCquXHEqG/Vw23IirX+HPDao
 RsBGYTixFyoRA23/aNLPDkic1ExwYvp+SrM3AnnZE1U9ysA/WRXmCXGo2Iz3tYZoDAX6
 yhUK89pOlszebRTF/zVPRtzSQZBLqX6EYFxd0rYUchc8S8DLam8ti7Nkhgq51llCY2o9
 pyZQ==
X-Gm-Message-State: AOAM532xKUe4jtcTF/uzuy9fUQdw3+pU6cLD5T5RKOTTCk6Oe4HE1fEk
 d1ZL8zmpR3RX2XDN0VrILf8Wsw==
X-Google-Smtp-Source: ABdhPJyuJchmuxTVpwILYv0SxXq+AaTfD/pPbWAbbGIQDB/rEG3yKWTEsN9alX7Ngl05yOUMaGN1bA==
X-Received: by 2002:a05:6e02:152f:: with SMTP id
 i15mr3711883ilu.277.1612375935896; 
 Wed, 03 Feb 2021 10:12:15 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h21sm399684iob.30.2021.02.03.10.12.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 10:12:15 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, gregkh@linuxfoundation.org, peterz@infradead.org,
 keescook@chromium.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de
Subject: [PATCH v3 2/7] selftests: lib:test_seqnum_ops: add new test for
 seqnum_ops
Date: Wed,  3 Feb 2021 11:11:58 -0700
Message-Id: <08e6ceb7608d008faf9e28e4f08361af5618cf07.1612314468.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1612314468.git.skhan@linuxfoundation.org>
References: <cover.1612314468.git.skhan@linuxfoundation.org>
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

Add a new selftest for testing seqnum_ops. This test loads test_seqnum_ops
test module and unloads it. The test module runs tests and prints results
to dmesg.

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath.

There are a number of atomic_t usages in the kernel where atomic_t api
is used for counting sequence numbers and other statistical counters.
Several of these usages, convert atomic_read() and atomic_inc_return()
return values to unsigned. Introducing sequence number ops supports
these use-cases with a standard core-api.

Sequence Number ops provide interfaces to initialize, increment and get
the sequence number. These ops also check for overflow and log message to
indicate when overflow occurs.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 Documentation/core-api/seqnum_ops.rst          |  9 +++++++++
 MAINTAINERS                                    |  1 +
 include/linux/seqnum_ops.h                     |  2 ++
 tools/testing/selftests/lib/Makefile           |  1 +
 tools/testing/selftests/lib/config             |  1 +
 tools/testing/selftests/lib/test_seqnum_ops.sh | 10 ++++++++++
 6 files changed, 24 insertions(+)
 create mode 100755 tools/testing/selftests/lib/test_seqnum_ops.sh

diff --git a/Documentation/core-api/seqnum_ops.rst b/Documentation/core-api/seqnum_ops.rst
index ed4eba394799..6db2c9120885 100644
--- a/Documentation/core-api/seqnum_ops.rst
+++ b/Documentation/core-api/seqnum_ops.rst
@@ -51,3 +51,12 @@ Returns sequence number value. ::
 
 .. warning::
         seqnum32 wraps around to INT_MIN when it overflows.
+
+Where are the seqnum_ops and how to use and test them?
+------------------------------------------------------
+
+.. kernel-doc:: include/linux/seqnum_ops.h
+
+Please see lib/test_seqnum_ops.c for examples usages and test module.
+Please find selftest: testing/selftests/lib/test_seqnum_ops.sh
+Please check dmesg for results after running test_seqnum_ops.sh.
diff --git a/MAINTAINERS b/MAINTAINERS
index f9fe1438a8cd..70b9eeb995f7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16241,6 +16241,7 @@ L:	linux-kernel@vger.kernel.org
 S:	Maintained
 F:	include/linux/seqnum_ops.h
 F:	lib/test_seqnum_ops.c
+F:	tools/testing/selftests/lib/test_seqnum_ops.sh
 
 SIMPLE FIRMWARE INTERFACE (SFI)
 S:	Obsolete
diff --git a/include/linux/seqnum_ops.h b/include/linux/seqnum_ops.h
index e8d8481445d3..d540b62d1aa4 100644
--- a/include/linux/seqnum_ops.h
+++ b/include/linux/seqnum_ops.h
@@ -18,6 +18,8 @@
  *
  * Reference and API guide:
  *	Documentation/core-api/seqnum_ops.rst for more information.
+ *	lib/test_seqnum_ops.c - example usages and test module
+ *	tools/testing/selftests/lib/test_seqnum_ops.sh
  */
 
 #ifndef __LINUX_SEQNUM_OPS_H
diff --git a/tools/testing/selftests/lib/Makefile b/tools/testing/selftests/lib/Makefile
index a105f094676e..1818444f0e97 100644
--- a/tools/testing/selftests/lib/Makefile
+++ b/tools/testing/selftests/lib/Makefile
@@ -5,5 +5,6 @@
 all:
 
 TEST_PROGS := printf.sh bitmap.sh prime_numbers.sh strscpy.sh
+TEST_PROGS += test_seqnum_ops.sh
 
 include ../lib.mk
diff --git a/tools/testing/selftests/lib/config b/tools/testing/selftests/lib/config
index b80ee3f6e265..674ed2a2ac82 100644
--- a/tools/testing/selftests/lib/config
+++ b/tools/testing/selftests/lib/config
@@ -3,3 +3,4 @@ CONFIG_TEST_BITMAP=m
 CONFIG_PRIME_NUMBERS=m
 CONFIG_TEST_STRSCPY=m
 CONFIG_TEST_BITOPS=m
+CONFIG_TEST_SEQNUM_OPS=m
diff --git a/tools/testing/selftests/lib/test_seqnum_ops.sh b/tools/testing/selftests/lib/test_seqnum_ops.sh
new file mode 100755
index 000000000000..fdce16b220ba
--- /dev/null
+++ b/tools/testing/selftests/lib/test_seqnum_ops.sh
@@ -0,0 +1,10 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (c) 2020 Shuah Khan <skhan@linuxfoundation.org>
+# Copyright (c) 2020 The Linux Foundation
+#
+# Tests the Sequence Number Ops interfaces using test_seqnum_ops
+# kernel module
+#
+$(dirname $0)/../kselftest/module.sh "test_seqnum_ops" test_seqnum_ops
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
