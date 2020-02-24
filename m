Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E1816AB5D
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 17:28:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C66EF86501;
	Mon, 24 Feb 2020 16:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mX4tR11epLUU; Mon, 24 Feb 2020 16:28:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99F0284EB0;
	Mon, 24 Feb 2020 16:28:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC8311BF3EE
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1E4A864B8
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2BRZYcJYZz7a for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 16:28:05 +0000 (UTC)
X-Greylist: delayed 00:29:49 by SQLgrey-1.7.6
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com
 [209.85.208.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC331864A0
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 16:28:04 +0000 (UTC)
Received: by mail-ed1-f74.google.com with SMTP id n12so7036997edq.13
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 08:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=5ns55I+9a1YIqXKg1GMpdpihlQePRoRe97SZuddtRCg=;
 b=R5ODJeOe995yJ3ZZJn5iS5AMwEK603SB9MSK52+BuQYpJA+NgUQbyun+sND0l75xaR
 cLyKW+yZA0bkbOfY871yhx9xNhVKbGuJwSvwdi0DEW39yBmuq/DvcAzK0QJjUCx7N5Xf
 FjMwKJeMfSu54nyVh7E5wXAaYFGV+hxwbMdVBhSy+pmjzMoe1bVLSO1WkbQxnGu5BwIR
 xW08DlPQrFcwBCw3F6sZ6Ur3iA328SD5zxWRpwCs0C5hKK9qPalfUg9T29Q+DKr4fE0E
 N8zcS1pBiGIgDP3qeXAdMK9Low6YpIo2mq2MR7xPPNdW4mnbFjiEPKY+Mt334qt17x9z
 WaPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=5ns55I+9a1YIqXKg1GMpdpihlQePRoRe97SZuddtRCg=;
 b=GtgdWycNE6KLyphalnvg/ZGeHuL09n7l0Z+sUe2chD3chBkkLQ6qSym6jr2InAAKjd
 8hqAV7aJo6uwZBSTXHd3anRUvEUZ85lSKriWgPAfL9esBE+/jctPi4TBw/76l+1vn9AJ
 9HC+2Aj8nWTT8W+LDtY8JsOmFdX4UvR55f91EBtD19RFNKmJrypfZdSka0X9BxKCD0AN
 NfiDzSMWmo7ZQerpymC3MNcP0+CTLMBSgotb9o8vhZu8n0Bp52Mi2uaprD49reqI039y
 dkLVYLXLMhVc4RJ1/9nRvi7FcpFBVvpXAQtuYeMioTtlwEGk6ZG0MWSdH94HaQHG9dhC
 qOzQ==
X-Gm-Message-State: APjAAAXMYanytnaYzTs7sbpBjKSgiZ7KcgLpNG2RZ/noWdQxfFpf/O13
 AAlrNg+nOVdF31COiOzoG529GTCabFc=
X-Google-Smtp-Source: APXvYqxIypdmNt6dY1Yku+uIjCUuPbRIwLWQf7eXvxRXs2sUp7Z+mf1wO6HPmwqRIx7k7JTPVstCl3uYuR0=
X-Received: by 2002:a5d:6144:: with SMTP id y4mr66506393wrt.15.1582558505602; 
 Mon, 24 Feb 2020 07:35:05 -0800 (PST)
Date: Mon, 24 Feb 2020 16:34:59 +0100
Message-Id: <20200224153501.60040-1-glider@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH 1/3] compiler.h: define __do_not_initialize
From: glider@google.com
To: tkjos@google.com, keescook@chromium.org, gregkh@linuxfoundation.org, 
 arve@android.com, mingo@redhat.com
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
Cc: devel@driverdev.osuosl.org, peterz@infradead.org,
 Alexander Potapenko <glider@google.com>, dvyukov@google.com, jannh@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

For CONFIG_INIT_STACK_ALL it's sometimes handy to disable
force-initialization for a local variable, if it is known to be initialized
later on before the first use. This can be done by using the
__do_not_initialize macro.

__do_not_initialize should be applied carefully, as future changes to
the code around the local variable may introduce paths on which the
variable remains uninitialized before the use.

Signed-off-by: Alexander Potapenko <glider@google.com>
---
 include/linux/compiler-clang.h | 10 ++++++++++
 include/linux/compiler_types.h |  4 ++++
 2 files changed, 14 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a6695a918c..9204334d39261 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -24,6 +24,16 @@
 #define __no_sanitize_address
 #endif
 
+/*
+ * Disable initialization of a local variable when building with
+ * CONFIG_INIT_STACK_ALL.
+ */
+#ifdef CONFIG_INIT_STACK_ALL
+#define __do_not_initialize __attribute__((uninitialized))
+#else
+#define __do_not_initialize
+#endif
+
 /*
  * Not all versions of clang implement the the type-generic versions
  * of the builtin overflow checkers. Fortunately, clang implements
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 72393a8c1a6c5..b216beb5586fc 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -180,6 +180,10 @@ struct ftrace_likely_data {
 
 #endif /* __ASSEMBLY__ */
 
+#ifndef __do_not_initialize
+#define __do_not_initialize
+#endif
+
 /*
  * The below symbols may be defined for one or more, but not ALL, of the above
  * compilers. We don't consider that to be an error, so set them to nothing.
-- 
2.25.0.265.gbab2e86ba0-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
