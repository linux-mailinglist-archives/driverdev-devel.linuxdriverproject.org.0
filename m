Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E1952DDC9
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 May 2022 21:24:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98449424D7;
	Thu, 19 May 2022 19:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QRjNKmgqY1to; Thu, 19 May 2022 19:24:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0B72424DB;
	Thu, 19 May 2022 19:24:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 665531BF3CB
 for <devel@linuxdriverproject.org>; Thu, 19 May 2022 19:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54230424D7
 for <devel@linuxdriverproject.org>; Thu, 19 May 2022 19:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IiWi8CahGYxm for <devel@linuxdriverproject.org>;
 Thu, 19 May 2022 19:24:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 129F0424D3
 for <devel@driverdev.osuosl.org>; Thu, 19 May 2022 19:24:46 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id i8so5600293plr.13
 for <devel@driverdev.osuosl.org>; Thu, 19 May 2022 12:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a+mg1KJ9fWnAuteOxUyV9WUk8JczPK1ljIX5mqz8zUo=;
 b=I+LHXXZ0Ko2bLI1ImdPb1DIfLaNb3KO1zLbRAIGe7lvfbkaZbt9l9ogN2hbmKqmHil
 dr9x6hTUyI4m5Upyx6T7zrCOkTPAQMEnQS8QDwkkmNBfzPFjZ76Gb2mZu8hkgVvju/uV
 0a/oyroJXco+ItQkXvep6Jpz6Yq7sW3F1nruU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a+mg1KJ9fWnAuteOxUyV9WUk8JczPK1ljIX5mqz8zUo=;
 b=p60dnbSKRTjSQ46vdKruyat31K+GJGIQjohB3uTBnmhhbu6wn0FxpcNI0bXmMeHx5o
 GqILxJVa/InMJaljupsEigS55oQj6iW5Hh0potA7pMPsWUMeGnAlf2iMvP7+PS5aA5vs
 ESu2m9CR/K8LdXOzUJalvUTrVzoFUMGKx1Rv8tqm9wEcDx5jSQH2oo7EdVmlrwtMV8N2
 plEKBVHaIL7AjA01lq4AB0OcHdZL/W02ng8JOxLxr1tR9t30Xh3BXZmbBi2ypglCAb9i
 V7IeJ0Au/s5TMQp30f8vmDseLZDCx9RQsu7Xfr1gLOZBi1AASt3ILH+yDsFeFw/cxD++
 4u6Q==
X-Gm-Message-State: AOAM533iYvySnAv/S75tFn99NZUtVrE39v7kTu4nt/Gyj/VxdLp4Nz0C
 BZXNBJDHcatp2BsT1SPiSMfUDA==
X-Google-Smtp-Source: ABdhPJw11DSCDp6fSu0ayPSrbBHSiJYvLXU4Z/tr9+f4LpcAt7L5+APgtiTeeB3jC8YlkNLSQ/RjJw==
X-Received: by 2002:a17:902:9044:b0:15d:1c51:5bef with SMTP id
 w4-20020a170902904400b0015d1c515befmr6129325plz.170.1652988286413; 
 Thu, 19 May 2022 12:24:46 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (132.111.125.34.bc.googleusercontent.com. [34.125.111.132])
 by smtp.gmail.com with ESMTPSA id
 t6-20020a17090a5d8600b001dcc0cb262asm187897pji.17.2022.05.19.12.24.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 12:24:46 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v3] Binder: add TF_UPDATE_TXN to replace outdated txn
Date: Thu, 19 May 2022 12:24:42 -0700
Message-Id: <20220519192442.1730349-1-dualli@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <YoaSLaNVMQIM7vvn@kroah.com>
References: <YoaSLaNVMQIM7vvn@kroah.com>
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
