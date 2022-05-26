Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 982255355E7
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 May 2022 00:00:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 264B061561;
	Thu, 26 May 2022 22:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FeE4hOrW98qp; Thu, 26 May 2022 22:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A036061552;
	Thu, 26 May 2022 22:00:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B1B11BF30E
 for <devel@linuxdriverproject.org>; Thu, 26 May 2022 22:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68866426E6
 for <devel@linuxdriverproject.org>; Thu, 26 May 2022 22:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id niQ2zbxYTp75 for <devel@linuxdriverproject.org>;
 Thu, 26 May 2022 22:00:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A3584270D
 for <devel@driverdev.osuosl.org>; Thu, 26 May 2022 22:00:24 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id cv10so2922723pjb.4
 for <devel@driverdev.osuosl.org>; Thu, 26 May 2022 15:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a+mg1KJ9fWnAuteOxUyV9WUk8JczPK1ljIX5mqz8zUo=;
 b=kdaKXwuwl5zGAp9c9rQxfMtPf4WPtQEAdopqVfcTquFDovjXRWa/V7AI6m/vS5Dqee
 /Yl9e1VpFpcC73KXPSJb5boLi9enYGXBn+BZ9UhT6MzFjzRQAzmLFyXSB8TVbzlDZ1pD
 PbELwUIQUQPbfhYv8b4Ym9/zoL/CC4b2AYJwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a+mg1KJ9fWnAuteOxUyV9WUk8JczPK1ljIX5mqz8zUo=;
 b=k9HuYi1wpOSR/4fLlXUUadTbuBzAIYLwuqOGZaDZBh7rQepcyHIOpwfbZbXm7B+Vo0
 YXsrTEz+lTkocRUjywZP61O1qlm7j3ToccMxPUD2IpLBSf5/uXTfayjgvfVmXiJc4B72
 +e0aS/z9qSnbJvVD5Rcp1CdegUD3yRX2hYQ6cOxOL0ED3nEe2/sCGeuXeLGwsFySFRSy
 1YzqT5gRRLb+ukL/t3xD22RuCneTkkrbLX/3zl6tZ7pgGL97zTg67nkaqYCra9/xABIN
 b0WqUC9kaK9ym2zLUaOD0eQogQhNjcnpE/UOzWiGf9jvtfveeHBjGZK1aBJFiPUhJ1Ye
 cVJA==
X-Gm-Message-State: AOAM532Gzp77RWDVqU6f+j/s4DLJbzd1Iq4uYV89cQ3M5OQ/do+66H8/
 Z97uoAHzOzw1Em6wIkLzbI84TQ==
X-Google-Smtp-Source: ABdhPJzaZqzggGUS5gfUwI5wFCgdoaSnWRac1BVvL4CwK0Dbn/2tILtDXoH/3c5iBMUP/tAuevzO8A==
X-Received: by 2002:a17:90a:8a14:b0:1e1:9f58:5784 with SMTP id
 w20-20020a17090a8a1400b001e19f585784mr4401489pjn.223.1653602423591; 
 Thu, 26 May 2022 15:00:23 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (132.111.125.34.bc.googleusercontent.com. [34.125.111.132])
 by smtp.gmail.com with ESMTPSA id
 t17-20020a17090ad51100b001e269bb6bedsm127225pju.38.2022.05.26.15.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 May 2022 15:00:23 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [RESEND PATCH v3 1/1] Binder: add TF_UPDATE_TXN to replace outdated
 txn
Date: Thu, 26 May 2022 15:00:18 -0700
Message-Id: <20220526220018.3334775-2-dualli@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220526220018.3334775-1-dualli@chromium.org>
References: <20220526220018.3334775-1-dualli@chromium.org>
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
Cc: joel@joelfernandes.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Li Li <dualli@google.com>

When the target process is busy, incoming oneway transactions are
queued in the async_todo list. If the clients continue sending extra
oneway transactions while the target process is frozen, this queue can
become too large to accommodate new transactions. That's why binder
driver introduced ONEWAY_SPAM_DETECTION to detect this situation. It's
helpful to debug the async binder buffer exhausting issue, but the
issue itself isn't solved directly.

In real cases applications are designed to send oneway transactions
repeatedly, delivering updated inforamtion to the target process.
Typical examples are Wi-Fi signal strength and some real time sensor
data. Even if the apps might only care about the lastet information,
all outdated oneway transactions are still accumulated there until the
frozen process is thawed later. For this kind of situations, there's
no existing method to skip those outdated transactions and deliver the
latest one only.

This patch introduces a new transaction flag TF_UPDATE_TXN. To use it,
use apps can set this new flag along with TF_ONE_WAY. When such an
oneway transaction is to be queued into the async_todo list of a frozen
process, binder driver will check if any previous pending transactions
can be superseded by comparing their code, flags and target node. If
such an outdated pending transaction is found, the latest transaction
will supersede that outdated one. This effectively prevents the async
binder buffer running out and saves unnecessary binder read workloads.

Signed-off-by: Li Li <dualli@google.com>
---
v3:
  - Add this changelog required by "The canonical patch format"
v2:
  - Fix alignment warnings reported by checkpatch --strict
  - Add descriptive summary in patch subject

 drivers/android/binder.c            | 85 ++++++++++++++++++++++++++++-
 drivers/android/binder_trace.h      |  4 ++
 include/uapi/linux/android/binder.h |  1 +
 3 files changed, 87 insertions(+), 3 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f3b639e89dd8..bb968cf2f9ec 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2594,6 +2594,56 @@ static int binder_fixup_parent(struct list_head *pf_head,
 	return binder_add_fixup(pf_head, buffer_offset, bp->buffer, 0);
 }
 
+/**
+ * binder_can_update_transaction() - Can a txn be superseded by an updated one?
+ * @t1: the pending async txn in the frozen process
+ * @t2: the new async txn to supersede the outdated pending one
+ *
+ * Return:  true if t2 can supersede t1
+ *          false if t2 can not supersede t1
+ */
+static bool binder_can_update_transaction(struct binder_transaction *t1,
+					  struct binder_transaction *t2)
+{
+	if ((t1->flags & t2->flags & (TF_ONE_WAY | TF_UPDATE_TXN)) !=
+	    (TF_ONE_WAY | TF_UPDATE_TXN) || !t1->to_proc || !t2->to_proc)
+		return false;
+	if (t1->to_proc->tsk == t2->to_proc->tsk && t1->code == t2->code &&
+	    t1->flags == t2->flags && t1->buffer->pid == t2->buffer->pid &&
+	    t1->buffer->target_node->ptr == t2->buffer->target_node->ptr &&
+	    t1->buffer->target_node->cookie == t2->buffer->target_node->cookie)
+		return true;
+	return false;
+}
+
+/**
+ * binder_find_outdated_transaction_ilocked() - Find the outdated transaction
+ * @t:		 new async transaction
+ * @target_list: list to find outdated transaction
+ *
+ * Return: the outdated transaction if found
+ *         NULL if no outdated transacton can be found
+ *
+ * Requires the proc->inner_lock to be held.
+ */
+static struct binder_transaction *
+binder_find_outdated_transaction_ilocked(struct binder_transaction *t,
+					 struct list_head *target_list)
+{
+	struct binder_work *w;
+
+	list_for_each_entry(w, target_list, entry) {
+		struct binder_transaction *t_queued;
+
+		if (w->type != BINDER_WORK_TRANSACTION)
+			continue;
+		t_queued = container_of(w, struct binder_transaction, work);
+		if (binder_can_update_transaction(t_queued, t))
+			return t_queued;
+	}
+	return NULL;
+}
+
 /**
  * binder_proc_transaction() - sends a transaction to a process and wakes it up
  * @t:		transaction to send
@@ -2619,6 +2669,7 @@ static int binder_proc_transaction(struct binder_transaction *t,
 	struct binder_node *node = t->buffer->target_node;
 	bool oneway = !!(t->flags & TF_ONE_WAY);
 	bool pending_async = false;
+	struct binder_transaction *t_outdated = NULL;
 
 	BUG_ON(!node);
 	binder_node_lock(node);
@@ -2646,12 +2697,24 @@ static int binder_proc_transaction(struct binder_transaction *t,
 	if (!thread && !pending_async)
 		thread = binder_select_thread_ilocked(proc);
 
-	if (thread)
+	if (thread) {
 		binder_enqueue_thread_work_ilocked(thread, &t->work);
-	else if (!pending_async)
+	} else if (!pending_async) {
 		binder_enqueue_work_ilocked(&t->work, &proc->todo);
-	else
+	} else {
+		if ((t->flags & TF_UPDATE_TXN) && proc->is_frozen) {
+			t_outdated = binder_find_outdated_transaction_ilocked(t,
+									      &node->async_todo);
+			if (t_outdated) {
+				binder_debug(BINDER_DEBUG_TRANSACTION,
+					     "txn %d supersedes %d\n",
+					     t->debug_id, t_outdated->debug_id);
+				list_del_init(&t_outdated->work.entry);
+				proc->outstanding_txns--;
+			}
+		}
 		binder_enqueue_work_ilocked(&t->work, &node->async_todo);
+	}
 
 	if (!pending_async)
 		binder_wakeup_thread_ilocked(proc, thread, !oneway /* sync */);
@@ -2660,6 +2723,22 @@ static int binder_proc_transaction(struct binder_transaction *t,
 	binder_inner_proc_unlock(proc);
 	binder_node_unlock(node);
 
+	/*
+	 * To reduce potential contention, free the outdated transaction and
+	 * buffer after releasing the locks.
+	 */
+	if (t_outdated) {
+		struct binder_buffer *buffer = t_outdated->buffer;
+
+		t_outdated->buffer = NULL;
+		buffer->transaction = NULL;
+		trace_binder_transaction_update_buffer_release(buffer);
+		binder_transaction_buffer_release(proc, NULL, buffer, 0, 0);
+		binder_alloc_free_buf(&proc->alloc, buffer);
+		kfree(t_outdated);
+		binder_stats_deleted(BINDER_STAT_TRANSACTION);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/android/binder_trace.h b/drivers/android/binder_trace.h
index 8eeccdc64724..8cc07e6a4273 100644
--- a/drivers/android/binder_trace.h
+++ b/drivers/android/binder_trace.h
@@ -311,6 +311,10 @@ DEFINE_EVENT(binder_buffer_class, binder_transaction_failed_buffer_release,
 	TP_PROTO(struct binder_buffer *buffer),
 	TP_ARGS(buffer));
 
+DEFINE_EVENT(binder_buffer_class, binder_transaction_update_buffer_release,
+	     TP_PROTO(struct binder_buffer *buffer),
+	     TP_ARGS(buffer));
+
 TRACE_EVENT(binder_update_page_range,
 	TP_PROTO(struct binder_alloc *alloc, bool allocate,
 		 void __user *start, void __user *end),
diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
index 11157fae8a8e..0b291b1d29d1 100644
--- a/include/uapi/linux/android/binder.h
+++ b/include/uapi/linux/android/binder.h
@@ -271,6 +271,7 @@ enum transaction_flags {
 	TF_STATUS_CODE	= 0x08,	/* contents are a 32-bit status code */
 	TF_ACCEPT_FDS	= 0x10,	/* allow replies with file descriptors */
 	TF_CLEAR_BUF	= 0x20,	/* clear buffer on txn complete */
+	TF_UPDATE_TXN	= 0x40,	/* update the outdated pending async txn */
 };
 
 struct binder_transaction_data {
-- 
2.36.1.124.g0e6072fb45-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
