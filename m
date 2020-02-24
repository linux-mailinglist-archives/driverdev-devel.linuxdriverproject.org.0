Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7493E16AA97
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 17:00:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8B4E86027;
	Mon, 24 Feb 2020 16:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KArOGDPAAyqX; Mon, 24 Feb 2020 16:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FD8B85E51;
	Mon, 24 Feb 2020 16:00:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40C301BF3C8
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3B0A384DFE
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F7yyFf2E8IkC for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 16:00:12 +0000 (UTC)
X-Greylist: delayed 00:18:30 by SQLgrey-1.7.6
Received: from mail-lj1-f202.google.com (mail-lj1-f202.google.com
 [209.85.208.202])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB5DC84031
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 16:00:11 +0000 (UTC)
Received: by mail-lj1-f202.google.com with SMTP id a9so1089824ljk.11
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 08:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=WkHKiL8TugMz7Y/fz4AIPdSrnxM3OJ6VRSaILoo+VHE=;
 b=VsVYG68h1WhDk7TEJcliOruin9DuXhTerGfS04MeUUu9+Ml2rh9fHB1Wcjxw5vnh7z
 kPV68+awoOGVQ0Kvg42b0stgBl+XxfeDDW5ybS3+g3RKIfa9wYY4MbNhXhz+jEW01oFM
 /JJtyovSRyfMo3w3KMR5sCPNO01H1mOe3q8p8dcdfST/ZkF8d7phvD5a75llKLD8YRdH
 5CPMSPenS7ieeWrbgWsBr4ZTQxw+WVut7ulGxEvBoU/j0KAY0PZPvh2hKUR4tocZEw70
 WLFE8kF0EpD4P9VXO8s/L+knHwhc5J+YS1DnXVSMwYojcudr1bQgvSr7vfS/ylT+K3UM
 BH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=WkHKiL8TugMz7Y/fz4AIPdSrnxM3OJ6VRSaILoo+VHE=;
 b=GlLnapsah/BfObcmHL6N/+nIpiPG2mMQR0aKVMbcr7DVwTYVQVTnu7crPyno9z9Rdr
 p7OhJJNgnVWNx2lEgyCuBOH3zVbpoCozYjb1tToMKqq/3zTxgkYRQkB+Z9UgENappHG+
 jsN2nc9UZKISiZ9+Wbm+tfKEX6bPv37hq5gEsriUkUFYY3OP3mhNzexK00CLfICNIdhM
 iXjW1r9fTaYwvi30ZDDH4W4QytsbcQEwHjGKmoF9m4zWM+O18BGTmPPIGDoS52rqGEmX
 y3h1ikNnNl1RqhHBQcvOM0FBwaZg2c2J3lzKwzleLc3Znm9DRVz3TjrehKKmdVes5qb8
 lHiA==
X-Gm-Message-State: APjAAAVVuhs4DHTsOWTY7ABF6ZjvqvuQuT/pHFyo7tYdkrP6GzxfTqdD
 3uHA8uBC33brWuCDgEY3C09gQbSKTzo=
X-Google-Smtp-Source: APXvYqwJZymfoYlQm2kufffOVebFfIAcSk/MHotMuSzKEzrhxHOtzJZFDr5TG6lEcwZn5RXb6UIbMBPIyX4=
X-Received: by 2002:adf:e610:: with SMTP id p16mr71227303wrm.81.1582558514774; 
 Mon, 24 Feb 2020 07:35:14 -0800 (PST)
Date: Mon, 24 Feb 2020 16:35:01 +0100
In-Reply-To: <20200224153501.60040-1-glider@google.com>
Message-Id: <20200224153501.60040-3-glider@google.com>
Mime-Version: 1.0
References: <20200224153501.60040-1-glider@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH 3/3] sched/wait: avoid double initialization in ___wait_event()
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

With CONFIG_INIT_STACK_ALL enabled, the local __wq_entry is initialized
twice. Because Clang is currently unable to optimize the automatic
initialization away (init_wait_entry() is defined in another translation
unit), remove it with the __do_not_initialize annotation.

Cc: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Alexander Potapenko <glider@google.com>
---
 include/linux/wait.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/wait.h b/include/linux/wait.h
index 3283c8d021377..03b831ee9b64a 100644
--- a/include/linux/wait.h
+++ b/include/linux/wait.h
@@ -262,7 +262,8 @@ extern void init_wait_entry(struct wait_queue_entry *wq_entry, int flags);
 #define ___wait_event(wq_head, condition, state, exclusive, ret, cmd)		\
 ({										\
 	__label__ __out;							\
-	struct wait_queue_entry __wq_entry;					\
+	/* Unconditionally initialized by init_wait_entry(). */			\
+	struct wait_queue_entry __wq_entry __do_not_initialize;			\
 	long __ret = ret;	/* explicit shadow */				\
 										\
 	init_wait_entry(&__wq_entry, exclusive ? WQ_FLAG_EXCLUSIVE : 0);	\
-- 
2.25.0.265.gbab2e86ba0-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
