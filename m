Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5142F337CE2
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 19:47:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C07C4EC9D;
	Thu, 11 Mar 2021 18:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9v7FgpZbXATJ; Thu, 11 Mar 2021 18:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFB3349771;
	Thu, 11 Mar 2021 18:47:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 050BB1BF9B4
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 18:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E61FB43040
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 18:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v3UIqOMhDwAX for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 18:46:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CECC42FF8
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 18:46:36 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id w34so13183771pga.8
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 10:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8ThC/aZyZtyu8YThXizaGji+jBatfJ70op3Hbxq+y0U=;
 b=Ai761PRismWdAegNejLsIULyzKF8bYQmAjwV5+8wGJh/zABIU/t/UlnmZ8vTrldP1Z
 334750SBHCB2yXF1CFhnFkJHlhGfZq8Y+e+PFy4iZo9HAZYJsNEq4cJW6SFti/yVNE8q
 AB4T6k8vLNLHtLjeNMPYWw1DLNAp2CQ0RePGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8ThC/aZyZtyu8YThXizaGji+jBatfJ70op3Hbxq+y0U=;
 b=p4i5gZRFxAY0YW03vrOOTOovydyEVOnQA0oWvo0qPMAP8X9lbuXQDjpO2t85s1q3l0
 Irk8M8bj4HbEn0MSO+GZmbyHZzRdkheFcVKplMy1+FeK23Y78ZYKw7eArcnOD/KjAhIv
 24Fd8Sz4imGzvR20QBTfm7q9jHitsqCzDplzV6kgZqWngotoWQD0etpXysL4COU3SMgl
 URA00SJWoOSFlpo9pEtgalRHvQKFteFC+cRmIbAhwoCjOB/vZIJCIVE48TyvlSpXkEnj
 yQOfXpnnEdj1CKKCYKC3NErsPu8O5XMBZAnEJBsWgGVcVfBDChWz6rt2UaRZWMhOQ0X9
 nYPA==
X-Gm-Message-State: AOAM533vTyvpzrtfI6U0Sp+vDgNhXA6iS5u0U1269Oea11fuRTLVE8x+
 KpC6KS3egQ98iISYcsaGo1KFag==
X-Google-Smtp-Source: ABdhPJwhuPd/ijrnAk4fTa6qtRk6vWhZCM8q71RfMvcigwgFYLJSHnxswiiffOYktPHeDkOqJ2pUZA==
X-Received: by 2002:a63:4d0a:: with SMTP id a10mr8376724pgb.177.1615488395610; 
 Thu, 11 Mar 2021 10:46:35 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id z2sm3108398pfq.198.2021.03.11.10.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 10:46:35 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v2 3/3] binder: BINDER_GET_FROZEN_INFO ioctl
Date: Thu, 11 Mar 2021 10:46:29 -0800
Message-Id: <20210311184629.589725-4-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210311184629.589725-1-dualli@chromium.org>
References: <20210311184629.589725-1-dualli@chromium.org>
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

From: Marco Ballesio <balejs@google.com>

User space needs to know if binder transactions occurred to frozen
processes. Introduce a new BINDER_GET_FROZEN ioctl and keep track of
transactions occurring to frozen proceses.

Signed-off-by: Marco Ballesio <balejs@google.com>
Signed-off-by: Li Li <dualli@google.com>
---
 drivers/android/binder.c            | 55 +++++++++++++++++++++++++++++
 drivers/android/binder_internal.h   |  6 ++++
 include/uapi/linux/android/binder.h |  7 ++++
 3 files changed, 68 insertions(+)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 38bbf9a4ce99..b4999ed04b2e 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2360,6 +2360,10 @@ static int binder_proc_transaction(struct binder_transaction *t,
 	}
 
 	binder_inner_proc_lock(proc);
+	if (proc->is_frozen) {
+		proc->sync_recv |= !oneway;
+		proc->async_recv |= oneway;
+	}
 
 	if ((proc->is_frozen && !oneway) || proc->is_dead ||
 			(thread && thread->is_dead)) {
@@ -4636,6 +4640,8 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
 
 	if (!info->enable) {
 		binder_inner_proc_lock(target_proc);
+		target_proc->sync_recv = false;
+		target_proc->async_recv = false;
 		target_proc->is_frozen = false;
 		binder_inner_proc_unlock(target_proc);
 		return 0;
@@ -4647,6 +4653,8 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
 	 * for transactions to drain.
 	 */
 	binder_inner_proc_lock(target_proc);
+	target_proc->sync_recv = false;
+	target_proc->async_recv = false;
 	target_proc->is_frozen = true;
 	binder_inner_proc_unlock(target_proc);
 
@@ -4668,6 +4676,33 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
 	return ret;
 }
 
+static int binder_ioctl_get_freezer_info(
+				struct binder_frozen_status_info *info)
+{
+	struct binder_proc *target_proc;
+	bool found = false;
+
+	info->sync_recv = 0;
+	info->async_recv = 0;
+
+	mutex_lock(&binder_procs_lock);
+	hlist_for_each_entry(target_proc, &binder_procs, proc_node) {
+		if (target_proc->pid == info->pid) {
+			found = true;
+			binder_inner_proc_lock(target_proc);
+			info->sync_recv |= target_proc->sync_recv;
+			info->async_recv |= target_proc->async_recv;
+			binder_inner_proc_unlock(target_proc);
+		}
+	}
+	mutex_unlock(&binder_procs_lock);
+
+	if (!found)
+		return -EINVAL;
+
+	return 0;
+}
+
 static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 {
 	int ret;
@@ -4846,6 +4881,24 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 			goto err;
 		break;
 	}
+	case BINDER_GET_FROZEN_INFO: {
+		struct binder_frozen_status_info info;
+
+		if (copy_from_user(&info, ubuf, sizeof(info))) {
+			ret = -EFAULT;
+			goto err;
+		}
+
+		ret = binder_ioctl_get_freezer_info(&info);
+		if (ret < 0)
+			goto err;
+
+		if (copy_to_user(ubuf, &info, sizeof(info))) {
+			ret = -EFAULT;
+			goto err;
+		}
+		break;
+	}
 	default:
 		ret = -EINVAL;
 		goto err;
@@ -5156,6 +5209,8 @@ static void binder_deferred_release(struct binder_proc *proc)
 
 	proc->is_dead = true;
 	proc->is_frozen = false;
+	proc->sync_recv = false;
+	proc->async_recv = false;
 	threads = 0;
 	active_transactions = 0;
 	while ((n = rb_first(&proc->threads))) {
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index e6a53e98c6da..2872a7de68e1 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -376,6 +376,10 @@ struct binder_ref {
  * @is_frozen:            process is frozen and unable to service
  *                        binder transactions
  *                        (protected by @inner_lock)
+ * @sync_recv:            process received sync transactions since last frozen
+ *                        (protected by @inner_lock)
+ * @async_recv:           process received async transactions since last frozen
+ *                        (protected by @inner_lock)
  * @freeze_wait:          waitqueue of processes waiting for all outstanding
  *                        transactions to be processed
  *                        (protected by @inner_lock)
@@ -422,6 +426,8 @@ struct binder_proc {
 	int outstanding_txns;
 	bool is_dead;
 	bool is_frozen;
+	bool sync_recv;
+	bool async_recv;
 	wait_queue_head_t freeze_wait;
 
 	struct list_head todo;
diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
index 7eb5b818b3c1..156070d18c4f 100644
--- a/include/uapi/linux/android/binder.h
+++ b/include/uapi/linux/android/binder.h
@@ -223,6 +223,12 @@ struct binder_freeze_info {
 	__u32            timeout_ms;
 };
 
+struct binder_frozen_status_info {
+	__u32            pid;
+	__u32            sync_recv;
+	__u32            async_recv;
+};
+
 #define BINDER_WRITE_READ		_IOWR('b', 1, struct binder_write_read)
 #define BINDER_SET_IDLE_TIMEOUT		_IOW('b', 3, __s64)
 #define BINDER_SET_MAX_THREADS		_IOW('b', 5, __u32)
@@ -234,6 +240,7 @@ struct binder_freeze_info {
 #define BINDER_GET_NODE_INFO_FOR_REF	_IOWR('b', 12, struct binder_node_info_for_ref)
 #define BINDER_SET_CONTEXT_MGR_EXT	_IOW('b', 13, struct flat_binder_object)
 #define BINDER_FREEZE			_IOW('b', 14, struct binder_freeze_info)
+#define BINDER_GET_FROZEN_INFO		_IOWR('b', 15, struct binder_frozen_status_info)
 
 /*
  * NOTE: Two special error codes you should check for when calling
-- 
2.31.0.rc2.261.g7f71774620-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
