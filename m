Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9C0175BA7
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 14:31:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A31EA20498;
	Mon,  2 Mar 2020 13:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5k15atlQksfl; Mon,  2 Mar 2020 13:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 930532048C;
	Mon,  2 Mar 2020 13:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D95A1BF29E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1781C86061
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kRuKhJFFEQJv for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 13:31:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com
 [209.85.208.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C1D586044
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 13:31:49 +0000 (UTC)
Received: by mail-ed1-f73.google.com with SMTP id m21so7780635edp.14
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 05:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Wr2Qj05MN+2+uObWO7o5CaCL9JBE9M/aEcqw3hihs/Y=;
 b=JsMLy1LwqBPNhCZ8C0SkN0ibFV2jvFW7MLh2FiV+2/se6TT5NzZZoAm/skX7PxHnTP
 QDLYP+vYyGE+Z79s0Eycc7aeC7/ucskvy5rO4qJFgiHSEBeClC68CULVEOj/7z90Ugxi
 1CMfCA6Dk+tP+GESoBVRt/nEtS/b2zkiUWErzLsqm3cO18Jq7wjCxWmkXivrEWcv5BkT
 RBqWZOvPZIgt/B3+mTn1xdgIMAS9q+Ke5m3Lp4iLhMhTtHf/Gt91xDyQf0u6Iyy0gMrq
 9vcuL5GXPGvsuNHVWmrSGcFOhUkouHWb/CFhz/WwWJrhIap3S/1lDf9bsY+I2sfB1/7T
 96EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Wr2Qj05MN+2+uObWO7o5CaCL9JBE9M/aEcqw3hihs/Y=;
 b=cTSQ957E7Y3XhfZXcQ3SCJARwnlGo3H4fRx0GPkjoYaTwSAPwstJ4j53nFS6LoKVsv
 NlCrptd14r8Bo2fWKagVAEq81lTeEj9bo5DHNLclXRU7pVQI3NR4y7ERm7nqgOPimEHL
 UxrXaTHIPZ6OrQCPIYWInPl9sJcucMGwpdg1U8LnYDtW+SA/gDADtDoCnJoF435k6oC7
 0t44jOT/LinZu6UhD0kM7eHE1rIGgzYkJB5oBXSgfBQQZcCT9ACYfNzYlXMJd2JxO0N5
 DHgGO6KLN9InAS8zMhPn0FLqcJD+z8cYr1GvOQkaPfz4XKJZkvlAO4K8Ddp0TL0pCQO/
 bTXA==
X-Gm-Message-State: APjAAAWAzKVAG2M1WAj4uUkipUWIUKlqQyT7cYXzX2U1dkHUrgRobndJ
 sDRSzrv8RA4rloqxZsUyBHN5lXiiMHA=
X-Google-Smtp-Source: APXvYqyg/8mpbpxuymg0ej9yeLWFMIm+QfXj5o/7rTcNntG02buymV/bnHtZ2K4XoI3xMButacyfTjszFa0=
X-Received: by 2002:a5d:4807:: with SMTP id l7mr22350075wrq.250.1583154275704; 
 Mon, 02 Mar 2020 05:04:35 -0800 (PST)
Date: Mon,  2 Mar 2020 14:04:28 +0100
Message-Id: <20200302130430.201037-1-glider@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v2 1/3] compiler.h: define __no_initialize
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
Cc: devel@driverdev.osuosl.org, jannh@google.com, peterz@infradead.org,
 linux-kernel@vger.kernel.org, Alexander Potapenko <glider@google.com>,
 dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

For CONFIG_INIT_STACK_ALL it's sometimes handy to disable
force-initialization for a local variable, if it is known to be initialized
later on before the first use. This can be done by using the
__no_initialize macro.

__no_initialize should be applied carefully, as future changes to
the code around the local variable may introduce paths on which the
variable remains uninitialized before the use.

Signed-off-by: Alexander Potapenko <glider@google.com>

---

v2:
 - changed __do_not_initialize to __no_initialize as requested by Kees
   Cook
---
 include/linux/compiler-clang.h | 10 ++++++++++
 include/linux/compiler_types.h |  4 ++++
 2 files changed, 14 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a6695a918c..27f774b27b061 100644
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
+#define __no_initialize __attribute__((uninitialized))
+#else
+#define __no_initialize
+#endif
+
 /*
  * Not all versions of clang implement the the type-generic versions
  * of the builtin overflow checkers. Fortunately, clang implements
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 72393a8c1a6c5..0208699c855af 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -216,6 +216,10 @@ struct ftrace_likely_data {
 # define __no_fgcse
 #endif
 
+#ifndef __no_initialize
+#define __no_initialize
+#endif
+
 /* Are two types/vars the same type (ignoring qualifiers)? */
 #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
 
-- 
2.25.0.265.gbab2e86ba0-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
