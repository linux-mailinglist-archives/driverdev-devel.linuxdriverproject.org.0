Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78725288D6A
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 17:56:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 63FCC877C0;
	Fri,  9 Oct 2020 15:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTRsPzuKrQx4; Fri,  9 Oct 2020 15:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A453877AD;
	Fri,  9 Oct 2020 15:56:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E37611BF4D5
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 15:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6BA120336
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 15:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pOYuQQF4AQD1 for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 15:56:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 8CB682014B
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 15:56:19 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id t15so9468148otk.0
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 08:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A1N4mi8Zf4gb8ftqUkRYHg/x5FlWQplCKiI34SuO3n4=;
 b=Z/ahUIVUocf/jyhMdVQ9cNINzt03KhJFdbREveQrU8g3EQ5rfYAlT7v5SIutmHV/yT
 P6YtA72110Jq+F2BdBwZPbuow0oPNAsthTPZLZzImKeHcvZT7cKQDM5PDs5wSA5ptAYh
 AbL592FL/3GCa57V4aDLJzyvBBy6VilM6WUbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A1N4mi8Zf4gb8ftqUkRYHg/x5FlWQplCKiI34SuO3n4=;
 b=uc+11I7JsLJOi5cx54tlDuEE8fA5KQtMeWJFpP0lfzHRSBa0u7rtbIsxybKPNJuvCP
 SnmUcKNeVEVDbYeQ4IIFn7bQlX7DJtI9cgNCeV8NOQgau4ciAIwm0u0N9j5+YL0yMKNJ
 inRRUXfK69WCd2P+mxTvRZL7YWDbMkEzenP520P3MNMZCO9nX0uHbnUzb1FdKFN/jJhG
 I9JJOkyCM95zQRMJ7OLw7W7c9We+AZzqypAlOdMAdN9WV4PGWJ6wgs2BI88G6ISpczil
 XfKJuu/AFeAcsLrVZbuQttz7vGK9qN+PiqcdMxB9eTsddANsGWxqdTU84DctzKjLztqQ
 /sDA==
X-Gm-Message-State: AOAM5306DbVRkkgtZ5mNipkmZTK49aDcyiUf1fDZCvf/457K27N/0dP6
 edpxOSDOr9TIsg9GFO655H3F4g==
X-Google-Smtp-Source: ABdhPJwJnsHbdiehHd1EZ75yuq+iazTGW+NKlhAG8cQhOLTw+81X0rQFyh8y2zP4MwYygrGRxCXqYA==
X-Received: by 2002:a05:6830:1e19:: with SMTP id
 s25mr8880139otr.294.1602258978791; 
 Fri, 09 Oct 2020 08:56:18 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id e7sm7347246oia.9.2020.10.09.08.56.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:56:18 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 hridya@google.com, surenb@google.com, keescook@chromium.org
Subject: [PATCH v3 07/11] drivers/android/binder: convert stats,
 transaction_log to counter_atomic32
Date: Fri,  9 Oct 2020 09:56:02 -0600
Message-Id: <907441886ba11255ec6be480c1fd90a1f23f959c.1602209970.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1602209970.git.skhan@linuxfoundation.org>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org,
 Christian Brauner <christian.brauner@ubuntu.com>, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

counter_atomic* is introduced to be used when a variable is used as
a simple counter and doesn't guard object lifetimes. This clearly
differentiates atomic_t usages that guard object lifetimes.

counter_atomic* variables wrap around to INT_MIN when it overflows and
should not be used to guard resource lifetimes, device usage and open
counts that control state changes, and pm states.

stats tracks per-process binder statistics. Unsure if there is a chance
of this overflowing, other than stats getting reset to 0. Convert it to
use counter_atomic.

binder_transaction_log:cur is used to keep track of the current log entry
location. Overflow is handled in the code. Since it is used as a
counter, convert it to use counter_atomic32.

This conversion doesn't change the overflow wrap around behavior.

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/android/binder.c          | 41 ++++++++++++++++---------------
 drivers/android/binder_internal.h |  3 ++-
 2 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f936530a19b0..52175cd6a62b 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -66,6 +66,7 @@
 #include <linux/syscalls.h>
 #include <linux/task_work.h>
 #include <linux/sizes.h>
+#include <linux/counters.h>
 
 #include <uapi/linux/android/binder.h>
 #include <uapi/linux/android/binderfs.h>
@@ -172,22 +173,22 @@ enum binder_stat_types {
 };
 
 struct binder_stats {
-	atomic_t br[_IOC_NR(BR_FAILED_REPLY) + 1];
-	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
-	atomic_t obj_created[BINDER_STAT_COUNT];
-	atomic_t obj_deleted[BINDER_STAT_COUNT];
+	struct counter_atomic32 br[_IOC_NR(BR_FAILED_REPLY) + 1];
+	struct counter_atomic32 bc[_IOC_NR(BC_REPLY_SG) + 1];
+	struct counter_atomic32 obj_created[BINDER_STAT_COUNT];
+	struct counter_atomic32 obj_deleted[BINDER_STAT_COUNT];
 };
 
 static struct binder_stats binder_stats;
 
 static inline void binder_stats_deleted(enum binder_stat_types type)
 {
-	atomic_inc(&binder_stats.obj_deleted[type]);
+	counter_atomic32_inc(&binder_stats.obj_deleted[type]);
 }
 
 static inline void binder_stats_created(enum binder_stat_types type)
 {
-	atomic_inc(&binder_stats.obj_created[type]);
+	counter_atomic32_inc(&binder_stats.obj_created[type]);
 }
 
 struct binder_transaction_log binder_transaction_log;
@@ -197,7 +198,7 @@ static struct binder_transaction_log_entry *binder_transaction_log_add(
 	struct binder_transaction_log *log)
 {
 	struct binder_transaction_log_entry *e;
-	unsigned int cur = atomic_inc_return(&log->cur);
+	unsigned int cur = counter_atomic32_inc_return(&log->cur);
 
 	if (cur >= ARRAY_SIZE(log->entry))
 		log->full = true;
@@ -3615,9 +3616,9 @@ static int binder_thread_write(struct binder_proc *proc,
 		ptr += sizeof(uint32_t);
 		trace_binder_command(cmd);
 		if (_IOC_NR(cmd) < ARRAY_SIZE(binder_stats.bc)) {
-			atomic_inc(&binder_stats.bc[_IOC_NR(cmd)]);
-			atomic_inc(&proc->stats.bc[_IOC_NR(cmd)]);
-			atomic_inc(&thread->stats.bc[_IOC_NR(cmd)]);
+			counter_atomic32_inc(&binder_stats.bc[_IOC_NR(cmd)]);
+			counter_atomic32_inc(&proc->stats.bc[_IOC_NR(cmd)]);
+			counter_atomic32_inc(&thread->stats.bc[_IOC_NR(cmd)]);
 		}
 		switch (cmd) {
 		case BC_INCREFS:
@@ -4047,9 +4048,9 @@ static void binder_stat_br(struct binder_proc *proc,
 {
 	trace_binder_return(cmd);
 	if (_IOC_NR(cmd) < ARRAY_SIZE(binder_stats.br)) {
-		atomic_inc(&binder_stats.br[_IOC_NR(cmd)]);
-		atomic_inc(&proc->stats.br[_IOC_NR(cmd)]);
-		atomic_inc(&thread->stats.br[_IOC_NR(cmd)]);
+		counter_atomic32_inc(&binder_stats.br[_IOC_NR(cmd)]);
+		counter_atomic32_inc(&proc->stats.br[_IOC_NR(cmd)]);
+		counter_atomic32_inc(&thread->stats.br[_IOC_NR(cmd)]);
 	}
 }
 
@@ -5841,7 +5842,7 @@ static void print_binder_stats(struct seq_file *m, const char *prefix,
 	BUILD_BUG_ON(ARRAY_SIZE(stats->bc) !=
 		     ARRAY_SIZE(binder_command_strings));
 	for (i = 0; i < ARRAY_SIZE(stats->bc); i++) {
-		int temp = atomic_read(&stats->bc[i]);
+		int temp = counter_atomic32_read(&stats->bc[i]);
 
 		if (temp)
 			seq_printf(m, "%s%s: %d\n", prefix,
@@ -5851,7 +5852,7 @@ static void print_binder_stats(struct seq_file *m, const char *prefix,
 	BUILD_BUG_ON(ARRAY_SIZE(stats->br) !=
 		     ARRAY_SIZE(binder_return_strings));
 	for (i = 0; i < ARRAY_SIZE(stats->br); i++) {
-		int temp = atomic_read(&stats->br[i]);
+		int temp = counter_atomic32_read(&stats->br[i]);
 
 		if (temp)
 			seq_printf(m, "%s%s: %d\n", prefix,
@@ -5863,8 +5864,8 @@ static void print_binder_stats(struct seq_file *m, const char *prefix,
 	BUILD_BUG_ON(ARRAY_SIZE(stats->obj_created) !=
 		     ARRAY_SIZE(stats->obj_deleted));
 	for (i = 0; i < ARRAY_SIZE(stats->obj_created); i++) {
-		int created = atomic_read(&stats->obj_created[i]);
-		int deleted = atomic_read(&stats->obj_deleted[i]);
+		int created = counter_atomic32_read(&stats->obj_created[i]);
+		int deleted = counter_atomic32_read(&stats->obj_deleted[i]);
 
 		if (created || deleted)
 			seq_printf(m, "%s%s: active %d total %d\n",
@@ -6054,7 +6055,7 @@ static void print_binder_transaction_log_entry(struct seq_file *m,
 int binder_transaction_log_show(struct seq_file *m, void *unused)
 {
 	struct binder_transaction_log *log = m->private;
-	unsigned int log_cur = atomic_read(&log->cur);
+	unsigned int log_cur = counter_atomic32_read(&log->cur);
 	unsigned int count;
 	unsigned int cur;
 	int i;
@@ -6124,8 +6125,8 @@ static int __init binder_init(void)
 	if (ret)
 		return ret;
 
-	atomic_set(&binder_transaction_log.cur, ~0U);
-	atomic_set(&binder_transaction_log_failed.cur, ~0U);
+	counter_atomic32_set(&binder_transaction_log.cur, ~0U);
+	counter_atomic32_set(&binder_transaction_log_failed.cur, ~0U);
 
 	binder_debugfs_dir_entry_root = debugfs_create_dir("binder", NULL);
 	if (binder_debugfs_dir_entry_root)
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index 283d3cb9c16e..c77960c01430 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -12,6 +12,7 @@
 #include <linux/stddef.h>
 #include <linux/types.h>
 #include <linux/uidgid.h>
+#include <linux/counters.h>
 
 struct binder_context {
 	struct binder_node *binder_context_mgr_node;
@@ -136,7 +137,7 @@ struct binder_transaction_log_entry {
 };
 
 struct binder_transaction_log {
-	atomic_t cur;
+	struct counter_atomic32 cur;
 	bool full;
 	struct binder_transaction_log_entry entry[32];
 };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
