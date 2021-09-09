Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F83405FFD
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 01:22:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A160C84A4E;
	Thu,  9 Sep 2021 23:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VbCrUgvzIIyc; Thu,  9 Sep 2021 23:22:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37AC0849C3;
	Thu,  9 Sep 2021 23:22:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54EE11BF27E
 for <devel@linuxdriverproject.org>; Thu,  9 Sep 2021 23:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4431060673
 for <devel@linuxdriverproject.org>; Thu,  9 Sep 2021 23:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GeLFeD91Qp6H for <devel@linuxdriverproject.org>;
 Thu,  9 Sep 2021 23:21:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96A41605F8
 for <devel@driverdev.osuosl.org>; Thu,  9 Sep 2021 23:21:46 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id s29so172535pfw.5
 for <devel@driverdev.osuosl.org>; Thu, 09 Sep 2021 16:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=optmWzoqIVOjhQXUMw5iUjXNrn25GovU7GMv1VfeFYo=;
 b=UnhmMEFEEedb/nYIRVefvpU1lJ5cyoiHEBsKXFQv4U2C39h5LMx+zhiUUfrRCdqDck
 CDuAV3R0eOIIW9YThxsoW0VrcSSHEv0NedNPVIXZkP5b/n77Yrz+McGeOwdHvTBXQSFJ
 KG5czbdgXWuO2m/iQgzN4G0/ESmE5UrjS1B0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=optmWzoqIVOjhQXUMw5iUjXNrn25GovU7GMv1VfeFYo=;
 b=PdlWgZog8CH9qGwI7ptIxGxGl3d8Wz15QXweIbH3x0RSdA6JJzifAonvjypY7M87Qm
 3aMGgdh8os58JXuiuN9e4m7ctA00bAaQyqIKdgQE0PnABQaLXL4gOv6jzLX1yr088Wty
 duCSCkwQCZYn3ckRTeqKQeH8bsq4HjvXrOndFjlciJ6APiIbuJhFb01W2LFf0ZEDHi24
 X7r8Gnh+5ppiBJJx4PmJ1wwoPk9Lr1aLNoMe4728czveXJZYJsxRmkn8YnDdZ2KbDCdu
 BW2LnfvxRw4Qv7dEV9D/FjC0/UoOPGiRFOrQa5DrkE2glp/oFrNwbAlpI8JVAe5tQ7gi
 4eoA==
X-Gm-Message-State: AOAM530bxDQKeKtWmLkiNs4cF6acKLnxsEtfqX+2P58H9iPr3o2d2r2X
 aG744MeOAfVTQowQDAR75x+DHg==
X-Google-Smtp-Source: ABdhPJw9Rgvnj20pjw8zoOIoGNR6si9d5MfAS7qI0rSDmxdPGsldEe5p12DT7v+1IPeWBYgqIe3nMA==
X-Received: by 2002:a62:403:0:b0:433:9582:d449 with SMTP id
 3-20020a620403000000b004339582d449mr1083524pfe.15.1631229706076; 
 Thu, 09 Sep 2021 16:21:46 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id f16sm3178210pja.38.2021.09.09.16.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Sep 2021 16:21:45 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v1 1/1] binder: fix freeze race
Date: Thu,  9 Sep 2021 16:21:41 -0700
Message-Id: <20210909232141.2489691-2-dualli@chromium.org>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
In-Reply-To: <20210909232141.2489691-1-dualli@chromium.org>
References: <20210909232141.2489691-1-dualli@chromium.org>
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

Currently cgroup freezer is used to freeze the application threads, and
BINDER_FREEZE is used to freeze binder interface. There's already a
mechanism for BINDER_FREEZE to wait for any existing transactions to
drain out before actually freezing the binder interface.

But freezing an app requires 2 steps, freezing the binder interface with
BINDER_FREEZEwhich and then freezing the application main threads with
cgroupfs. This is not an atomic operation. The following race issue
might happen.

1) Binder interface is frozen by ioctl(BINDER_FREEZE);
2) Main thread initiates a new sync binder transaction;
3) Main thread is frozen by "echo 1 > cgroup.freeze";
4) The response reaches the frozen thread, which will unexpectedly fail.

This patch provides a mechanism for user space freezer manager to check
if there's any new pending transaction happening between BINDER_FREEZE
and freezing main thread. If there's any, the main thread freezing
operation can be rolled back.

Furthermore, the response might reach the binder driver before the
rollback actually happens. That will also cause failed transaction.

As the other process doesn't wait for another response of the response,
the failed response transaction can be fixed by treating the response
transaction like an oneway/async one, allowing it to reach the frozen
thread. And it will be consumed when the thread gets unfrozen later.

Bug: 198493121
Signed-off-by: Li Li <dualli@google.com>
---
 drivers/android/binder.c          | 32 +++++++++++++++++++++++++++----
 drivers/android/binder_internal.h |  2 ++
 2 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index d9030cb6b1e4..f9713a97578c 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3038,9 +3038,8 @@ static void binder_transaction(struct binder_proc *proc,
 	if (reply) {
 		binder_enqueue_thread_work(thread, tcomplete);
 		binder_inner_proc_lock(target_proc);
-		if (target_thread->is_dead || target_proc->is_frozen) {
-			return_error = target_thread->is_dead ?
-				BR_DEAD_REPLY : BR_FROZEN_REPLY;
+		if (target_thread->is_dead) {
+			return_error = BR_DEAD_REPLY;
 			binder_inner_proc_unlock(target_proc);
 			goto err_dead_proc_or_thread;
 		}
@@ -4648,6 +4647,22 @@ static int binder_ioctl_get_node_debug_info(struct binder_proc *proc,
 	return 0;
 }
 
+static int binder_txns_pending(struct binder_proc *proc)
+{
+	struct rb_node *n;
+	struct binder_thread *thread;
+
+	if (proc->outstanding_txns > 0)
+		return 1;
+
+	for (n = rb_first(&proc->threads); n; n = rb_next(n)) {
+		thread = rb_entry(n, struct binder_thread, rb_node);
+		if (thread->transaction_stack)
+			return 1;
+	}
+	return 0;
+}
+
 static int binder_ioctl_freeze(struct binder_freeze_info *info,
 			       struct binder_proc *target_proc)
 {
@@ -4682,6 +4697,14 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
 	if (!ret && target_proc->outstanding_txns)
 		ret = -EAGAIN;
 
+	/* Also check pending transactions that wait for reply */
+	if (ret >= 0) {
+		binder_inner_proc_lock(target_proc);
+		if (binder_txns_pending(target_proc))
+			ret = -EAGAIN;
+		binder_inner_proc_unlock(target_proc);
+	}
+
 	if (ret < 0) {
 		binder_inner_proc_lock(target_proc);
 		target_proc->is_frozen = false;
@@ -4705,7 +4728,8 @@ static int binder_ioctl_get_freezer_info(
 		if (target_proc->pid == info->pid) {
 			found = true;
 			binder_inner_proc_lock(target_proc);
-			info->sync_recv |= target_proc->sync_recv;
+			info->sync_recv |= target_proc->sync_recv |
+					(binder_txns_pending(target_proc) << 1);
 			info->async_recv |= target_proc->async_recv;
 			binder_inner_proc_unlock(target_proc);
 		}
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index 810c0b84d3f8..402c4d4362a8 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -378,6 +378,8 @@ struct binder_ref {
  *                        binder transactions
  *                        (protected by @inner_lock)
  * @sync_recv:            process received sync transactions since last frozen
+ *                        bit 0: received sync transaction after being frozen
+ *                        bit 1: new pending sync transaction during freezing
  *                        (protected by @inner_lock)
  * @async_recv:           process received async transactions since last frozen
  *                        (protected by @inner_lock)
-- 
2.33.0.309.g3052b89438-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
