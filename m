Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 294DD2794FD
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 01:47:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9F0686EB0;
	Fri, 25 Sep 2020 23:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8J5ap9THSTc5; Fri, 25 Sep 2020 23:47:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03AC486EA1;
	Fri, 25 Sep 2020 23:47:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE9A51BF263
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 23:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C656286E8F
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 23:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DdWAUJZNDTMK for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 23:47:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DAF3386DF2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 23:47:42 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id a2so3902258otr.11
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 16:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7GKRgx1+J3D6WQ1h/+myxlWJJaGx1vz9Y6CYgKfy5Oc=;
 b=D0GJjSoFuiYKNBCKvGobJEjjtwgwcWUfjH8sr75923KX43QHs8Cvom5Q0fkDQEaq/s
 8fHG81WQR6/KmQhnvtRxwlu9GKXrEnY19iome1tfjg2I5F2ZBixrGykaoYc2pCS+Pzui
 Vcf8vmdU5l6A5KLy4wopKc4F7UVqwD3t1/8YM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7GKRgx1+J3D6WQ1h/+myxlWJJaGx1vz9Y6CYgKfy5Oc=;
 b=mDfppJg/PZh0ddN6xe0HgD0l6V5I8xi6DWcR42blZGoeavYUiMKGIkgl+R2lxzMTME
 W+x3rScF5E9ms+hqbTeeVlLQix2RaFgTjmuRZn+0C9kV9rS5+JSS3qtMuZaTMyJ5GCvY
 P8JvnBmjqKaxvWcfM8TEbn0KViC2EbtNJ5B0nXHDBFeGrV4/EBPMyIPelm8OZNYpnrYP
 uLls7D0WrqDCPq7IO4OcTfbsVwtyryr2sYKzcurNAlDTKLhnJ733p4p2olByqqcXEY9w
 2GPO7eYX/XMxgSWeKpk/RKq/opdQCNZHm4UIlbGizptxzdhsHSe5WUpFq0+4F+O/VI1t
 AS3A==
X-Gm-Message-State: AOAM532hb+COIgGIxdGAUbyj3fSUFwgwLQY+NXOUHn5xj1wbQnFSynS/
 NbXx7VTMttrID8HhQY9u5B60EQ==
X-Google-Smtp-Source: ABdhPJzvn0MwX5rvkrAEKWKB3JQh1HqrhH2nhrKCWVvslvZ8vOurJDN3L8sgaAs8iFHVK9izO8sbGA==
X-Received: by 2002:a9d:4c0a:: with SMTP id l10mr1943745otf.166.1601077662022; 
 Fri, 25 Sep 2020 16:47:42 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id k3sm196219oof.6.2020.09.25.16.47.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 16:47:41 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 hridya@google.com, surenb@google.com, keescook@chromium.org
Subject: [PATCH 07/11] drivers/android/binder: convert stats,
 transaction_log to counter_atomic32
Date: Fri, 25 Sep 2020 17:47:21 -0600
Message-Id: <ab2cb30977ac35cc172d30306da25178b742c328.1601073127.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1601073127.git.skhan@linuxfoundation.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

counter_atomic* is introduced to be used when a variable is used as
a simple counter and doesn't guard object lifetimes. This clearly
differentiates atomic_t usages that guard object lifetimes.

counter_atomic* variables will wrap around to 0 when it overflows and
should not be used to guard resource lifetimes, device usage and
open counts that control state changes, and pm states.

stats tracks per-process binder statistics. Unsure if there is a chance
of this overflowing, other than stats getting reset to 0. Convert it to
use counter_atomic.

binder_transaction_log:cur is used to keep track of the current log entry
location. Overflow is handled in the code. Since it is used as a
counter, convert it to use counter_atomic32.

This conversion doesn't change the overflow wrap around behavior.

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
