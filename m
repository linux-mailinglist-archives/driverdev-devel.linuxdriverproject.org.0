Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF90461882C
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Nov 2022 20:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 475BD404C9;
	Thu,  3 Nov 2022 19:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 475BD404C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cwp-b-_Trodg; Thu,  3 Nov 2022 19:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5178403B7;
	Thu,  3 Nov 2022 19:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5178403B7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FB041BF3C0
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77E25404C1
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77E25404C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W8dHWubQCKAY for <devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 19:05:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFFB5403B7
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFFB5403B7
 for <devel@driverdev.osuosl.org>; Thu,  3 Nov 2022 19:05:57 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id v28so2481896pfi.12
 for <devel@driverdev.osuosl.org>; Thu, 03 Nov 2022 12:05:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JJkdqC6xaSvasH+b4tdtU/3z+ZeTWR3odHCTd4ISmW8=;
 b=Rw8NzDTtBHw50c813TvQcR4olwbdkXDagwXKa16J6jDY0pCgvdS58SmAPRDLCdgPn4
 8f3eupFBsLQK2C9FDliu22I/Cfv4ZeYG+jL5z0jdDjvPK7FlnAjXr3u0xUivlShQerPY
 3/gHHrXvuHvKMztqkpX/KAwqVKF/JudY9H05Qlc5pBfNwk8BIzKvYpY4ZeaDVVxP78BZ
 tQYtfk8BvGw1yQDUTLimq7m1TRGfCvhVMEwf1yCyWnoXMWDyymlJlz5eSM0u2MgvRy2p
 xJmRmk1jUz3Am22x/ETmsVTmHyTcocG4FKYrwMkgmo5c07NaUqrh/IoNQPLBmRiv2lWK
 ETTQ==
X-Gm-Message-State: ACrzQf0iBPvU92SOpZ40rCtgIijSAfYo0W539NaqVBFkZ+poWG/DLVjI
 1U3ufcYG7otNfg4sq/NLXTaeSQ==
X-Google-Smtp-Source: AMsMyM6VmJaDWQ7kyIuH99F4LBWwwJ6XDI1Ebv0Uf5iHJKSoyuk0AZUPlLRNEzujaLQ2XmcX9ZsYHw==
X-Received: by 2002:a63:c65:0:b0:470:cb4:aca3 with SMTP id
 37-20020a630c65000000b004700cb4aca3mr7351966pgm.389.1667502357107; 
 Thu, 03 Nov 2022 12:05:57 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (30.161.125.34.bc.googleusercontent.com. [34.125.161.30])
 by smtp.gmail.com with ESMTPSA id
 q13-20020a63d60d000000b0046ae5cfc3d5sm1070973pgg.61.2022.11.03.12.05.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Nov 2022 12:05:56 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, gregkh@linuxfoundation.org, arve@android.com,
 tkjos@android.com, maco@android.com, joel@joelfernandes.org,
 brauner@kernel.org, cmllamas@google.com, surenb@google.com, arnd@arndb.de,
 masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hridya@google.com, smoreland@google.com
Subject: [PATCH v1 1/1] binder: return pending info for frozen async txns
Date: Thu,  3 Nov 2022 12:05:49 -0700
Message-Id: <20221103190549.3446167-2-dualli@chromium.org>
X-Mailer: git-send-email 2.38.1.431.g37b22c650d-goog
In-Reply-To: <20221103190549.3446167-1-dualli@chromium.org>
References: <20221103190549.3446167-1-dualli@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JJkdqC6xaSvasH+b4tdtU/3z+ZeTWR3odHCTd4ISmW8=;
 b=UL6HrfpC5hh15df7tf6WCRbbdFW3ms99n+B2dkgGdkQ8146HutoXC5edrOgoaW6VF2
 Aregj3BzB4hftUZzYkNbhr4KUNRiGjDiApd/UhYFl9ggp+kiOLFpIzcNGBDPftccbZAv
 SOuZ1o9CvdNoM4ugC55ull1XbyPVaUVak8WGI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=UL6HrfpC
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

An async transaction to a frozen process will still be successsfully
put in the queue. But this pending async transaction won't be processed
until the target process is unfrozen at an unspecified time in the
future. Pass this important information back to the user space caller
by returning BR_TRANSACTION_PENDING.

Signed-off-by: Li Li <dualli@google.com>
---
 drivers/android/binder.c            | 23 ++++++++++++++++++++---
 drivers/android/binder_internal.h   |  3 ++-
 include/uapi/linux/android/binder.h |  7 ++++++-
 3 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 880224ec6abb..a097b89f6a7a 100644
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
@@ -2807,6 +2810,9 @@ static int binder_proc_transaction(struct binder_transaction *t,
 		binder_stats_deleted(BINDER_STAT_TRANSACTION);
 	}
 
+	if (oneway && proc->is_frozen)
+		return BR_TRANSACTION_PENDING;
+
 	return 0;
 }
 
@@ -3607,9 +3613,16 @@ static void binder_transaction(struct binder_proc *proc,
 	} else {
 		BUG_ON(target_node == NULL);
 		BUG_ON(t->buffer->async_transaction != 1);
-		binder_enqueue_thread_work(thread, tcomplete);
 		return_error = binder_proc_transaction(t, target_proc, NULL);
-		if (return_error)
+		/*
+		 * Let the caller know its async transaction reaches a frozen
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
@@ -4440,10 +4453,13 @@ static int binder_thread_read(struct binder_proc *proc,
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
@@ -6170,6 +6186,7 @@ static const char * const binder_return_strings[] = {
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
