Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E021624BE1
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Nov 2022 21:34:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2026540457;
	Thu, 10 Nov 2022 20:34:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2026540457
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fSMqd70CJE6; Thu, 10 Nov 2022 20:34:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FFC8404CA;
	Thu, 10 Nov 2022 20:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FFC8404CA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7517B1BF3EE
 for <devel@linuxdriverproject.org>; Thu, 10 Nov 2022 20:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F6184049C
 for <devel@linuxdriverproject.org>; Thu, 10 Nov 2022 20:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F6184049C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tbxQF1o_N-6E for <devel@linuxdriverproject.org>;
 Thu, 10 Nov 2022 20:34:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C97AF40457
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C97AF40457
 for <devel@driverdev.osuosl.org>; Thu, 10 Nov 2022 20:34:11 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id io19so2499529plb.8
 for <devel@driverdev.osuosl.org>; Thu, 10 Nov 2022 12:34:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PVR4UIDOLtSWVj2wHASg+l8eU278cy2uXh7YL7xWXDs=;
 b=BG4RdY3ZZtNwfCm4EC40HZ7GFHcuzUaM8LIWcbVRqaq77FL+OwUV3NDeO7Sejtasxt
 SCzFpkVMMxk2pe35iyYYd4Y6XLFIIK8ATm3J+AAHhwi6bKYCRYkkeOqnXYQa3mIeTbi0
 k1rX5itYQzkQC4KPFKnTRyGrcnAQeTGdHveeUQXnQt7u1/6Af7XFNzuWft/KjrZHQU4M
 1rPrl+CU0VklS5Pa6AgvLksITJaseETHz4R80ZyYHHfP0FyiS8zFvXPSIzRhDe37L+Rl
 yw/uiZ1wyGWWf5EjxKAC/xFt/qEdZkASZ/nJlqg98dsx1wPOmZEDzsyiUTDvVLqngzZ6
 cngA==
X-Gm-Message-State: ACrzQf28UAgzqeMbhcBf8sNB7C6ZhjVrgYNIRIaQiCMp90B0xO0riIQY
 vedZ2zsweMAa3tJN0L1IvmeGyA==
X-Google-Smtp-Source: AMsMyM4MISvHjZMMqXcCVPcKIfs/sqXdPc9WpI9R+izp93VuEkjms8Uq5icOhfqVC1TxPukiZ1Dmrg==
X-Received: by 2002:a17:902:f214:b0:186:b065:eedb with SMTP id
 m20-20020a170902f21400b00186b065eedbmr64183100plc.45.1668112451212; 
 Thu, 10 Nov 2022 12:34:11 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (30.161.125.34.bc.googleusercontent.com. [34.125.161.30])
 by smtp.gmail.com with ESMTPSA id
 d207-20020a621dd8000000b0056be1581126sm67703pfd.143.2022.11.10.12.34.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Nov 2022 12:34:10 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, gregkh@linuxfoundation.org, arve@android.com,
 tkjos@android.com, maco@android.com, joel@joelfernandes.org,
 brauner@kernel.org, cmllamas@google.com, surenb@google.com, arnd@arndb.de,
 masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hridya@google.com, smoreland@google.com
Subject: [PATCH v2 1/1] binder: return pending info for frozen async txns
Date: Thu, 10 Nov 2022 12:34:05 -0800
Message-Id: <20221110203405.611600-2-dualli@chromium.org>
X-Mailer: git-send-email 2.38.1.431.g37b22c650d-goog
In-Reply-To: <20221110203405.611600-1-dualli@chromium.org>
References: <20221110203405.611600-1-dualli@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PVR4UIDOLtSWVj2wHASg+l8eU278cy2uXh7YL7xWXDs=;
 b=jvwY0/sPLLzNFezDxJxiAq9jV2WRqJVcvqwxzciGTTjg3WCIMG1H01qTV4qUwyR/Qn
 FmuSgtmAHhAA2+jFKhkYu7R/uV5Gb9MbRjMOkLUiXymhh/qWxEFqr7g2xUD0XvqHsKKE
 q5D76trwbkUvuBhknY999jdVYRprb0dfDIwqw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=jvwY0/sP
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
Cc: kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Li Li <dualli@google.com>

An async transaction to a frozen process will still be successfully
put in the queue. But this pending async transaction won't be processed
until the target process is unfrozen at an unspecified time in the
future. Pass this important information back to the user space caller
by returning BR_TRANSACTION_PENDING.

Signed-off-by: Li Li <dualli@google.com>
---
 drivers/android/binder.c            | 31 +++++++++++++++++++++++------
 drivers/android/binder_internal.h   |  3 ++-
 include/uapi/linux/android/binder.h |  7 ++++++-
 3 files changed, 33 insertions(+), 8 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 880224ec6abb..a798f6661488 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2728,7 +2728,10 @@ binder_find_outdated_transaction_ilocked(struct binder_transaction *t,
  *
  * Return:	0 if the transaction was successfully queued
  *		BR_DEAD_REPLY if the target process or thread is dead
- *		BR_FROZEN_REPLY if the target process or thread is frozen
+ *		BR_FROZEN_REPLY if the target process or thread is frozen and
+ *			the sync transaction was rejected
+ *		BR_TRANSACTION_PENDING if the target process is frozen and the
+ *			async transaction was successfully queued
  */
 static int binder_proc_transaction(struct binder_transaction *t,
 				    struct binder_proc *proc,
@@ -2738,6 +2741,7 @@ static int binder_proc_transaction(struct binder_transaction *t,
 	bool oneway = !!(t->flags & TF_ONE_WAY);
 	bool pending_async = false;
 	struct binder_transaction *t_outdated = NULL;
+	bool frozen = false;
 
 	BUG_ON(!node);
 	binder_node_lock(node);
@@ -2751,15 +2755,16 @@ static int binder_proc_transaction(struct binder_transaction *t,
 
 	binder_inner_proc_lock(proc);
 	if (proc->is_frozen) {
+		frozen = true;
 		proc->sync_recv |= !oneway;
 		proc->async_recv |= oneway;
 	}
 
-	if ((proc->is_frozen && !oneway) || proc->is_dead ||
+	if ((frozen && !oneway) || proc->is_dead ||
 			(thread && thread->is_dead)) {
 		binder_inner_proc_unlock(proc);
 		binder_node_unlock(node);
-		return proc->is_frozen ? BR_FROZEN_REPLY : BR_DEAD_REPLY;
+		return frozen ? BR_FROZEN_REPLY : BR_DEAD_REPLY;
 	}
 
 	if (!thread && !pending_async)
@@ -2770,7 +2775,7 @@ static int binder_proc_transaction(struct binder_transaction *t,
 	} else if (!pending_async) {
 		binder_enqueue_work_ilocked(&t->work, &proc->todo);
 	} else {
-		if ((t->flags & TF_UPDATE_TXN) && proc->is_frozen) {
+		if ((t->flags & TF_UPDATE_TXN) && frozen) {
 			t_outdated = binder_find_outdated_transaction_ilocked(t,
 									      &node->async_todo);
 			if (t_outdated) {
@@ -2807,6 +2812,9 @@ static int binder_proc_transaction(struct binder_transaction *t,
 		binder_stats_deleted(BINDER_STAT_TRANSACTION);
 	}
 
+	if (oneway && frozen)
+		return BR_TRANSACTION_PENDING;
+
 	return 0;
 }
 
@@ -3607,9 +3615,16 @@ static void binder_transaction(struct binder_proc *proc,
 	} else {
 		BUG_ON(target_node == NULL);
 		BUG_ON(t->buffer->async_transaction != 1);
-		binder_enqueue_thread_work(thread, tcomplete);
 		return_error = binder_proc_transaction(t, target_proc, NULL);
-		if (return_error)
+		/*
+		 * Let the caller know when async transaction reaches a frozen
+		 * process and is put in a pending queue, waiting for the target
+		 * process to be unfrozen.
+		 */
+		if (return_error == BR_TRANSACTION_PENDING)
+			tcomplete->type = BINDER_WORK_TRANSACTION_PENDING;
+		binder_enqueue_thread_work(thread, tcomplete);
+		if (return_error && return_error != BR_TRANSACTION_PENDING)
 			goto err_dead_proc_or_thread;
 	}
 	if (target_thread)
@@ -4440,10 +4455,13 @@ static int binder_thread_read(struct binder_proc *proc,
 			binder_stat_br(proc, thread, cmd);
 		} break;
 		case BINDER_WORK_TRANSACTION_COMPLETE:
+		case BINDER_WORK_TRANSACTION_PENDING:
 		case BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT: {
 			if (proc->oneway_spam_detection_enabled &&
 				   w->type == BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT)
 				cmd = BR_ONEWAY_SPAM_SUSPECT;
+			else if (w->type == BINDER_WORK_TRANSACTION_PENDING)
+				cmd = BR_TRANSACTION_PENDING;
 			else
 				cmd = BR_TRANSACTION_COMPLETE;
 			binder_inner_proc_unlock(proc);
@@ -6170,6 +6188,7 @@ static const char * const binder_return_strings[] = {
 	"BR_FAILED_REPLY",
 	"BR_FROZEN_REPLY",
 	"BR_ONEWAY_SPAM_SUSPECT",
+	"BR_TRANSACTION_PENDING"
 };
 
 static const char * const binder_command_strings[] = {
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index abe19d88c6ec..6c51325a826f 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -133,7 +133,7 @@ enum binder_stat_types {
 };
 
 struct binder_stats {
-	atomic_t br[_IOC_NR(BR_ONEWAY_SPAM_SUSPECT) + 1];
+	atomic_t br[_IOC_NR(BR_TRANSACTION_PENDING) + 1];
 	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
 	atomic_t obj_created[BINDER_STAT_COUNT];
 	atomic_t obj_deleted[BINDER_STAT_COUNT];
@@ -152,6 +152,7 @@ struct binder_work {
 	enum binder_work_type {
 		BINDER_WORK_TRANSACTION = 1,
 		BINDER_WORK_TRANSACTION_COMPLETE,
+		BINDER_WORK_TRANSACTION_PENDING,
 		BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT,
 		BINDER_WORK_RETURN_ERROR,
 		BINDER_WORK_NODE,
diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
index e72e4de8f452..c21b3b3eb4e4 100644
--- a/include/uapi/linux/android/binder.h
+++ b/include/uapi/linux/android/binder.h
@@ -450,7 +450,7 @@ enum binder_driver_return_protocol {
 
 	BR_FROZEN_REPLY = _IO('r', 18),
 	/*
-	 * The target of the last transaction (either a bcTRANSACTION or
+	 * The target of the last sync transaction (either a bcTRANSACTION or
 	 * a bcATTEMPT_ACQUIRE) is frozen.  No parameters.
 	 */
 
@@ -460,6 +460,11 @@ enum binder_driver_return_protocol {
 	 * asynchronous transaction makes the allocated async buffer size exceed
 	 * detection threshold.  No parameters.
 	 */
+
+	BR_TRANSACTION_PENDING = _IO('r', 20),
+	/*
+	 * The target of the last async transaction is frozen.  No parameters.
+	 */
 };
 
 enum binder_driver_command_protocol {
-- 
2.38.1.431.g37b22c650d-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
