Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD25630E213
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 19:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C55D585F32;
	Wed,  3 Feb 2021 18:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zbHdIpJRICEG; Wed,  3 Feb 2021 18:12:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5B2E85F56;
	Wed,  3 Feb 2021 18:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46D381BF2F9
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42DEC84E5E
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tAVvi-1d-pWT for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 18:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
 [209.85.166.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 13ACD8421E
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 18:12:13 +0000 (UTC)
Received: by mail-il1-f171.google.com with SMTP id m20so74830ilj.13
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 10:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=21sYp4CUQOlK2ImbPHkhn1yuZ3PO6WQHxDIabv9nFSU=;
 b=a/J9XR4fYFo21GZtTtRafEkGGqUjKVgmZ02h6PT8krbADl2du6F3QbsjhpPGn+//uR
 kYSdvlIoHShsW0o60cQ8l5h/x52JjyUVcRblQSCoJCX16IAPQiDaYAdFJK6ZrAlZdvLL
 CcalE3AAU6twCgFVXY22uTfEz6EiclrX8uwfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=21sYp4CUQOlK2ImbPHkhn1yuZ3PO6WQHxDIabv9nFSU=;
 b=F0mUo65vub3jn3gY9wfWfp7vuCVgXwwRun4x136h/5YQT8pznoeTettSEQHia/GoTT
 OtlaHQxzYYRsvbj71PTrU7liNhzS68Lv1kZK2Z/WFk13rfLPsiMxwYMcb1GWNnUsdVpp
 qQegR0S/6ZFg390FiI9+UtubrdNbq9W9bCWU3lZt6RbHgNkUI8VaN1tauNMGUzp50ugD
 QxdZrbkTo3ykVgxr5x1Q2wNBWOI+vktwBrGlPBVqLiNFoJGnGFYGGI15IZdptU6quzb5
 j0/+0Rg7M/bhoAirPpOICsa56KnnDa/Fy05II+VEC/InVGajfSHTskYhtkfxyz9tEL30
 e1sQ==
X-Gm-Message-State: AOAM531gaXuEYfKUhWQcc55+0G3KJa35bqd9V9iHvcJiOA0N6iYmj9GH
 8mSY4nsncpH4ZNUkH9J0bw6ocQ==
X-Google-Smtp-Source: ABdhPJxgtPPDuGMtnmHbwj0HIGYLXw7KoEebt/ahk62mO2prc+ckUOJJFz4Vn0JVYWWrk4Oqcd0cug==
X-Received: by 2002:a05:6e02:216f:: with SMTP id
 s15mr3610702ilv.81.1612375933021; 
 Wed, 03 Feb 2021 10:12:13 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h21sm399684iob.30.2021.02.03.10.12.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 10:12:12 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, gregkh@linuxfoundation.org, peterz@infradead.org,
 keescook@chromium.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de
Subject: [PATCH v3 1/7] seqnum_ops: Introduce Sequence Number Ops
Date: Wed,  3 Feb 2021 11:11:57 -0700
Message-Id: <23f6347a7bb9f902babe7351f71b23644035673d.1612314468.git.skhan@linuxfoundation.org>
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

Sequence Number api provides interfaces for unsigned atomic up counters.

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
 Documentation/core-api/index.rst      |   1 +
 Documentation/core-api/seqnum_ops.rst |  53 ++++++++++
 MAINTAINERS                           |   7 ++
 include/linux/seqnum_ops.h            | 129 +++++++++++++++++++++++++
 lib/Kconfig                           |   9 ++
 lib/Makefile                          |   1 +
 lib/test_seqnum_ops.c                 | 133 ++++++++++++++++++++++++++
 7 files changed, 333 insertions(+)
 create mode 100644 Documentation/core-api/seqnum_ops.rst
 create mode 100644 include/linux/seqnum_ops.h
 create mode 100644 lib/test_seqnum_ops.c

diff --git a/Documentation/core-api/index.rst b/Documentation/core-api/index.rst
index f1c9d20bd42d..adc8b1ae2acf 100644
--- a/Documentation/core-api/index.rst
+++ b/Documentation/core-api/index.rst
@@ -54,6 +54,7 @@ How Linux keeps everything from happening at the same time.  See
    :maxdepth: 1
 
    refcount-vs-atomic
+   seqnum_ops
    irq/index
    local_ops
    padata
diff --git a/Documentation/core-api/seqnum_ops.rst b/Documentation/core-api/seqnum_ops.rst
new file mode 100644
index 000000000000..ed4eba394799
--- /dev/null
+++ b/Documentation/core-api/seqnum_ops.rst
@@ -0,0 +1,53 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+.. include:: <isonum.txt>
+
+.. _seqnum_ops:
+
+==========================
+Sequence Number Operations
+==========================
+
+:Author: Shuah Khan
+:Copyright: |copy| 2021, The Linux Foundation
+:Copyright: |copy| 2021, Shuah Khan <skhan@linuxfoundation.org>
+
+Sequence Number api provides interfaces for unsigned up counters.
+
+Sequence Number Ops
+===================
+
+seqnum32 and seqnum64 types support implementing unsigned up counters. ::
+
+        struct seqnum32 { u32 seqnum; };
+        struct seqnum64 { u64 seqnum; };
+
+Initializers
+------------
+
+Interfaces for initializing sequence numbers. ::
+
+        #define SEQNUM_INIT(i)    { .seqnum = i }
+        seqnum32_init(seqnum, val)
+        seqnum64_init(seqnum, val)
+
+Increment interface
+-------------------
+
+Increments sequence number and returns the new value. Checks for overflow
+conditions and logs message when overflow occurs. This check is intended
+to help catch cases where overflow could lead to problems. ::
+
+        seqnum32_inc(seqnum): Calls atomic_inc_return(seqnum).
+        seqnum64_inc(seqnum): Calls atomic64_inc_return(seqnum).
+
+Return/get value interface
+--------------------------
+
+Returns sequence number value. ::
+
+        seqnum32_get() - return seqnum value.
+        seqnum64_get() - return seqnum value.
+
+.. warning::
+        seqnum32 wraps around to INT_MIN when it overflows.
diff --git a/MAINTAINERS b/MAINTAINERS
index cc1e6a5ee6e6..f9fe1438a8cd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16235,6 +16235,13 @@ S:	Maintained
 F:	Documentation/fb/sm712fb.rst
 F:	drivers/video/fbdev/sm712*
 
+SEQNUM OPS
+M:	Shuah Khan <skhan@linuxfoundation.org>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	include/linux/seqnum_ops.h
+F:	lib/test_seqnum_ops.c
+
 SIMPLE FIRMWARE INTERFACE (SFI)
 S:	Obsolete
 W:	http://simplefirmware.org/
diff --git a/include/linux/seqnum_ops.h b/include/linux/seqnum_ops.h
new file mode 100644
index 000000000000..e8d8481445d3
--- /dev/null
+++ b/include/linux/seqnum_ops.h
@@ -0,0 +1,129 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * seqnum_ops.h - Interfaces for unsigned atomic sequential up counters.
+ *
+ * Copyright (c) 2021 Shuah Khan <skhan@linuxfoundation.org>
+ * Copyright (c) 2021 The Linux Foundation
+ *
+ * Sequence Number functions provide support for unsgined atomic up
+ * counters.
+ *
+ * The interface provides:
+ * seqnumu32 & seqnumu64 functions:
+ *	initialization
+ *	increment and return
+ *
+ * seqnumu32 and seqnumu64 functions leverage/use atomic*_t ops to
+ * implement support for unsigned atomic up counters.
+ *
+ * Reference and API guide:
+ *	Documentation/core-api/seqnum_ops.rst for more information.
+ */
+
+#ifndef __LINUX_SEQNUM_OPS_H
+#define __LINUX_SEQNUM_OPS_H
+
+#include <linux/atomic.h>
+
+/**
+ * struct seqnum32 - Sequence number atomic counter
+ * @seqnum: atomic_t
+ *
+ **/
+struct seqnum32 {
+	u32 seqnum;
+};
+
+#define SEQNUM_INIT(i)		{ .seqnum = i }
+
+/*
+ * seqnum32_init() - initialize seqnum value
+ * @seq: struct seqnum32 pointer
+ *
+ */
+static inline void seqnum32_init(struct seqnum32 *seq, u32 val)
+{
+	seq->seqnum = val;
+}
+
+/*
+ * seqnum32_inc() - increment seqnum value and return the new value
+ * @seq: struct seqnum32 pointer
+ *
+ * Return u32
+ */
+static inline u32 seqnum32_inc(struct seqnum32 *seq)
+{
+	atomic_t val = ATOMIC_INIT(seq->seqnum);
+
+	seq->seqnum = (u32) atomic_inc_return(&val);
+	if (seq->seqnum >= UINT_MAX)
+		pr_info("Sequence Number overflow %u detected\n",
+			seq->seqnum);
+	return seq->seqnum;
+}
+
+/*
+ * seqnum32_get() - get seqnum value
+ * @seq: struct seqnum32 pointer
+ *
+ * Return u32
+ */
+static inline u32 seqnum32_get(struct seqnum32 *seq)
+{
+	return seq->seqnum;
+}
+
+/*
+ * struct seqnum64 - Sequential/Statistical atomic counter
+ * @seq: atomic64_t
+ *
+ */
+struct seqnum64 {
+	u64 seqnum;
+};
+
+/* Add to a global include/vdso/limits.h and fix all other UINT64_MAX
+ * duplicate defines?
+ */
+#define SEQ_UINT64_MAX	((u64)(~((u64) 0)))	/* 0xFFFFFFFFFFFFFFFF */
+
+/*
+ * seqnum64_init() - initialize seqnum value
+ * @seq: struct seqnum64 pointer
+ *
+ */
+static inline void seqnum64_init(struct seqnum64 *seq, u64 val)
+{
+	seq->seqnum = val;
+}
+
+/*
+ * seqnum64_inc() - increment seqnum value and return the new value
+ * @seq: struct seqnum64 pointer
+ *
+ * Return u64
+ */
+static inline u64 seqnum64_inc(struct seqnum64 *seq)
+{
+	atomic64_t val = ATOMIC_INIT(seq->seqnum);
+
+	seq->seqnum = (u64) atomic64_inc_return(&val);
+	if (seq->seqnum >= SEQ_UINT64_MAX)
+		pr_info("Sequence Number overflow %llu detected\n",
+			seq->seqnum);
+	return seq->seqnum;
+}
+
+/*
+ * seqnum64_get() - get seqnum value
+ * @seq: struct seqnum64 pointer
+ *
+ * Return u64
+ */
+static inline u64 seqnum64_get(struct seqnum64 *seq)
+{
+	return (u64) seq->seqnum;
+}
+
+#endif /* __LINUX_SEQNUM_OPS_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 46806332a8cc..518de7d34606 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -663,6 +663,15 @@ config OBJAGG
 config STRING_SELFTEST
 	tristate "Test string functions"
 
+config TEST_SEQNUM_OPS
+	tristate "Test Sequence Number Ops API"
+	help
+	   A test module for Sequence Number Ops API. A corresponding
+	   selftest can be used to test the Seqnum Ops API. Select this
+	   for testing Sequence Number Ops API.
+
+	   See Documentation/core-api/seqnum_ops.rst
+
 endmenu
 
 config GENERIC_IOREMAP
diff --git a/lib/Makefile b/lib/Makefile
index afeff05fa8c5..917686063cb3 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -101,6 +101,7 @@ obj-$(CONFIG_TEST_MEMINIT) += test_meminit.o
 obj-$(CONFIG_TEST_LOCKUP) += test_lockup.o
 obj-$(CONFIG_TEST_HMM) += test_hmm.o
 obj-$(CONFIG_TEST_FREE_PAGES) += test_free_pages.o
+obj-$(CONFIG_TEST_SEQNUM_OPS) += test_seqnum_ops.o
 
 #
 # CFLAGS for compiling floating point code inside the kernel. x86/Makefile turns
diff --git a/lib/test_seqnum_ops.c b/lib/test_seqnum_ops.c
new file mode 100644
index 000000000000..173278314f26
--- /dev/null
+++ b/lib/test_seqnum_ops.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * test_seqnum_ops.c - Kernel module for testing Seqnum API
+ *
+ * Copyright (c) 2021 Shuah Khan <skhan@linuxfoundation.org>
+ * Copyright (c) 2021 The Linux Foundation
+ *
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/module.h>
+#include <linux/seqnum_ops.h>
+
+static inline void
+test_seqnum32_result(char *msg, u32 start, u32 end, u32 expected)
+{
+	pr_info("%s: %u to %u - %s\n",
+		msg, start, end,
+		((expected == end) ? "PASS" : "FAIL"));
+}
+
+
+static void test_seqnum32(void)
+{
+	u32 start_val = 0;
+	struct seqnum32 seq = SEQNUM_INIT(start_val);
+	u32 end_val;
+
+	end_val = seqnum32_inc(&seq);
+	test_seqnum32_result("Test increment",
+			     start_val, end_val, start_val+1);
+
+	/* Initialize sequence number to 0 */
+	seqnum32_init(&seq, 0);
+	end_val = seqnum32_inc(&seq);
+	/* If seqnum32_init() works correctly end_val should be 1 */
+	test_seqnum32_result("Test init", start_val, end_val, 1);
+
+	/* seqnum32_get() test for seqnum value == 1 */
+	start_val = end_val = seqnum32_get(&seq);
+	test_seqnum32_result("Test get", start_val, end_val, 1);
+}
+
+static void test_seqnum32_overflow(u32 val)
+{
+	u32 start_val;
+	struct seqnum32 seq;
+	u32 end_val;
+
+	pr_info("Test with start_val UINT_MAX-1 + %u\n", val);
+	start_val = UINT_MAX-1 + val;
+	seqnum32_init(&seq, start_val);
+	end_val = seqnum32_inc(&seq);
+	test_seqnum32_result("Test UINT_MAX limit compare with (val+1)",
+			     start_val, end_val, start_val+1);
+	test_seqnum32_result("Test UINT_MAX limit compare with (UINT_MAX)",
+			     start_val, end_val, UINT_MAX+val);
+}
+
+static inline void
+test_seqnum64_result(char *msg, u64 start, u64 end, u64 expected)
+{
+	pr_info("%s: %llu to %llu - %s\n",
+		msg, start, end,
+		((expected == end) ? "PASS" : "FAIL"));
+}
+
+static void test_seqnum64(void)
+{
+	u64 start_val = 0;
+	struct seqnum64 seq = SEQNUM_INIT(start_val);
+	u64 end_val;
+
+	end_val = seqnum64_inc(&seq);
+	test_seqnum64_result("Test increment",
+			     start_val, end_val, start_val+1);
+
+	/* Initialize sequence number to 0 */
+	seqnum64_init(&seq, start_val);
+	end_val = seqnum64_inc(&seq);
+
+	/* if seqnum642_init() works correctly end_val should be 1 */
+	test_seqnum64_result("Test init", start_val, end_val, 1);
+	/* seqnum64_get() test for seqnum value == 1 */
+	start_val = end_val = seqnum64_get(&seq);
+	test_seqnum64_result("Test get", start_val, end_val, 1);
+}
+
+static void test_seqnum64_overflow(u64 val)
+{
+	u64 start_val;
+	struct seqnum64 seq;
+	u64 end_val;
+
+	pr_info("Test with start_val SEQ_UINT64_MAX-1 + %llu\n", val);
+	start_val = SEQ_UINT64_MAX-1 + val;
+	seqnum64_init(&seq, start_val);
+	end_val = seqnum64_inc(&seq);
+	test_seqnum64_result("Test UINT64_MAX limit compare with (val+1)",
+			     start_val, end_val, start_val+1);
+	test_seqnum64_result("Test UINT64_MAX limit compare with (UINT64_MAX)",
+			     start_val, end_val, SEQ_UINT64_MAX+val);
+}
+
+static int __init test_seqnum_ops_init(void)
+{
+	pr_info("Start seqnum32_*() interfaces test\n");
+	test_seqnum32();
+	test_seqnum32_overflow(0);
+	test_seqnum32_overflow(5);
+	pr_info("End seqnum32_*() interfaces test\n\n");
+
+	pr_info("Start seqnum64_*() interfaces test\n");
+	test_seqnum64();
+	test_seqnum64_overflow(0);
+	test_seqnum64_overflow(5);
+	pr_info("End seqnum64_*() interfaces test\n\n");
+
+	return 0;
+}
+
+module_init(test_seqnum_ops_init);
+
+static void __exit test_seqnum_ops_exit(void)
+{
+	pr_info("exiting.\n");
+}
+
+module_exit(test_seqnum_ops_exit);
+
+MODULE_AUTHOR("Shuah Khan <skhan@linuxfoundation.org>");
+MODULE_LICENSE("GPL v2");
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
