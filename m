Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3F1289C81
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 01:56:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 32BB220130;
	Fri,  9 Oct 2020 23:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6KgL4FPSOxu3; Fri,  9 Oct 2020 23:56:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 513B82042B;
	Fri,  9 Oct 2020 23:56:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1FA61BF36D
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 23:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AC28F87211
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 23:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id huCGDSXyoYzl for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 23:56:18 +0000 (UTC)
X-Greylist: delayed 00:31:18 by SQLgrey-1.7.6
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com
 [209.85.219.202])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 92E2E871FF
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 23:56:18 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id v4so10699602ybk.5
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 16:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=sender:date:message-id:mime-version:subject:from:to:cc;
 bh=OTHm9oO7gk347MFuW+OaDq2/vsm6e+aeSPuhn/LkcJw=;
 b=Ku83pqzDHSiRYOrwEw/9LRjAXIFYt8qx5KWw2o53dxsZjBb21junI6XTHLqtqK8BiR
 gnTnNU8zz2rQxMwEQql68FJCuS/uU3D0HhFGj/bEFtipb9lCGcTFW3empL9Nyo1PHXCT
 D1dkMrmc32WHciqu2EnOSVP7iPd0y+qtFqi9g1P1PIqD3iqyvbXAXQ+rJExDCzYMECOl
 C5nEn0GdUL0bEOn+PGWiGMcFUXPgG2zIQcGf4DaZRybHjF3LwOOibYcmUbdYxt9mFsGo
 cBoxbwc19kEtojUjHFs0up80tozU9w3W9Si6Li3lVKSGT++V0gjwDtypkdJ735d+rtYN
 YyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :to:cc;
 bh=OTHm9oO7gk347MFuW+OaDq2/vsm6e+aeSPuhn/LkcJw=;
 b=iX4Y6TwRf87LUSmL4ISq6CweK8LIpta7mirhHnll+nLwVTSjXzOf6TCtPMb141ejJ9
 tY14U/hHfDJwR2HXxZuPmqBTG4T7qNmL1VNiqdOv2PgcQY6Lhrz65icPAkQsaRJfwS6T
 5j/t9IEI+r2/NtUH0A+FHSH/7HaSxvTk4EF7RmUsApizCVKxKY1QmYt+v/0uJOqalexT
 f7kb6LM/p4v0nnDibDLz2Jrjon16iIl2YWfBdZlZSS0dGUSsg61g8XW+eu0LSpBU1qJG
 CnOUBeveXfmR352W4m5xAiOtaHKpf7d2RNcp8e4el13nsbr2cHmZF5sN/mE2aPf7i05U
 +vYA==
X-Gm-Message-State: AOAM530yQusK3Egup30V7gAOwvGAarynVSiNavuxQT516pGaAiUb55V7
 wBBnNSYZ0VkTE0Dyc+CquJrYl346wA==
X-Google-Smtp-Source: ABdhPJxoHQ5YjsNwPzIMb6FhZkvn+yojwMJAoOU/IxEqLpXJKjKG+lu1V1MGdGcoHGvYRMl9hbgQVuxs7g==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:0:cad3:ffff:feb3:bfed])
 (user=tkjos job=sendgmr) by 2002:a25:c546:: with SMTP id
 v67mr22651787ybe.74.1602285899380; 
 Fri, 09 Oct 2020 16:24:59 -0700 (PDT)
Date: Fri,  9 Oct 2020 16:24:55 -0700
Message-Id: <20201009232455.4054810-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH] binder: fix UAF when releasing todo list
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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

When releasing a thread todo list when tearing down
a binder_proc, the following race was possible which
could result in a use-after-free:

1.  Thread 1: enter binder_release_work from binder_thread_release
2.  Thread 2: binder_update_ref_for_handle() -> binder_dec_node_ilocked()
3.  Thread 2: dec nodeA --> 0 (will free node)
4.  Thread 1: ACQ inner_proc_lock
5.  Thread 2: block on inner_proc_lock
6.  Thread 1: dequeue work (BINDER_WORK_NODE, part of nodeA)
7.  Thread 1: REL inner_proc_lock
8.  Thread 2: ACQ inner_proc_lock
9.  Thread 2: todo list cleanup, but work was already dequeued
10. Thread 2: free node
11. Thread 2: REL inner_proc_lock
12. Thread 1: deref w->type (UAF)

The problem was that for a BINDER_WORK_NODE, the binder_work element
must not be accessed after releasing the inner_proc_lock while
processing the todo list elements since another thread might be
handling a deref on the node containing the binder_work element
leading to the node being freed.

Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 35 ++++++++++-------------------------
 1 file changed, 10 insertions(+), 25 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f936530a19b0..e8a1db4a86ed 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -223,7 +223,7 @@ static struct binder_transaction_log_entry *binder_transaction_log_add(
 struct binder_work {
 	struct list_head entry;
 
-	enum {
+	enum binder_work_type {
 		BINDER_WORK_TRANSACTION = 1,
 		BINDER_WORK_TRANSACTION_COMPLETE,
 		BINDER_WORK_RETURN_ERROR,
@@ -885,27 +885,6 @@ static struct binder_work *binder_dequeue_work_head_ilocked(
 	return w;
 }
 
-/**
- * binder_dequeue_work_head() - Dequeues the item at head of list
- * @proc:         binder_proc associated with list
- * @list:         list to dequeue head
- *
- * Removes the head of the list if there are items on the list
- *
- * Return: pointer dequeued binder_work, NULL if list was empty
- */
-static struct binder_work *binder_dequeue_work_head(
-					struct binder_proc *proc,
-					struct list_head *list)
-{
-	struct binder_work *w;
-
-	binder_inner_proc_lock(proc);
-	w = binder_dequeue_work_head_ilocked(list);
-	binder_inner_proc_unlock(proc);
-	return w;
-}
-
 static void
 binder_defer_work(struct binder_proc *proc, enum binder_deferred_state defer);
 static void binder_free_thread(struct binder_thread *thread);
@@ -4587,13 +4566,17 @@ static void binder_release_work(struct binder_proc *proc,
 				struct list_head *list)
 {
 	struct binder_work *w;
+	enum binder_work_type wtype;
 
 	while (1) {
-		w = binder_dequeue_work_head(proc, list);
+		binder_inner_proc_lock(proc);
+		w = binder_dequeue_work_head_ilocked(list);
+		wtype = w ? w->type : 0;
+		binder_inner_proc_unlock(proc);
 		if (!w)
 			return;
 
-		switch (w->type) {
+		switch (wtype) {
 		case BINDER_WORK_TRANSACTION: {
 			struct binder_transaction *t;
 
@@ -4627,9 +4610,11 @@ static void binder_release_work(struct binder_proc *proc,
 			kfree(death);
 			binder_stats_deleted(BINDER_STAT_DEATH);
 		} break;
+		case BINDER_WORK_NODE:
+			break;
 		default:
 			pr_err("unexpected work type, %d, not freed\n",
-			       w->type);
+			       wtype);
 			break;
 		}
 	}
-- 
2.28.0.1011.ga647a8990f-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
