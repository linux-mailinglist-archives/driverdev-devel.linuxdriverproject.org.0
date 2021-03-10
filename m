Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E75334C55
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 00:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 663204EC5B;
	Wed, 10 Mar 2021 23:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id coGXDtigJ26i; Wed, 10 Mar 2021 23:17:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EAF14EC76;
	Wed, 10 Mar 2021 23:16:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45A7C1BF29E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 411CC4AA2C
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bWIiBy5aaX1c for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 22:53:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4570B49771
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 22:52:58 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id o38so12383120pgm.9
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 14:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U/JqLbY/drLKcXhwUok8+tW62lve6c8Y9pTflofEI9k=;
 b=mQjxPfJDwYZD0n+DT7XwslNr83INLhiU/RS2qmdSzOhUpEacvtbK6Gn7iEhbphCVej
 gStN+llYa9Fs7zNoxhZWXzT23Ny2Yeyw9xk40HFOYPZcogxgMh5yfIyfSZYviIJl6q9C
 zqu00liwTjLNCJVKAUeKHdPDMF0IMw7uObdlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U/JqLbY/drLKcXhwUok8+tW62lve6c8Y9pTflofEI9k=;
 b=QcPaQPUYGPnrBptvfiwh2I36ci23qpqBWCC77hstpcYCgOhcMQFRTxEak6D/U//L8a
 ijAvdKs5uyfmu0rIoJzEGkilySzH5I0mW1qRvaVAjtFmxKcyyK5zBQ9SzUnlsFIzpiay
 TsjshASbDVvb3JX6D2XDp6tQT+4BWGnJ/cIRZGMRFywPbu83N8ep74ub5C4PElfZCnW8
 wRaPYwk4PMZOrappIF+s4SEW0aoPHcu4jcNIiRBFB9DTVhHwXPUeY+zOZN4T1UVjJwtE
 8ml/YL6eTXE3VV1IFqsINxZV1+l2bToDhQXmlPVKJS/2anh/N5aNx020A93ulCKUhlp5
 L/RA==
X-Gm-Message-State: AOAM5310W0e9NGoa/Xlm+VYMz6QMQDtbXoZGgtiV5Rq995uRlNKGE19L
 RT++ot09kTlneJ/s5VvOlEqpsQ==
X-Google-Smtp-Source: ABdhPJxkSGi5th2veJ9AMOwGzxyL2iKf+647aRtZmWLTFjPC+Uz1F381SnipleFzsVqstZHR7v8VLQ==
X-Received: by 2002:a62:b50d:0:b029:1ed:c0d:3778 with SMTP id
 y13-20020a62b50d0000b02901ed0c0d3778mr5107404pfe.72.1615416775812; 
 Wed, 10 Mar 2021 14:52:55 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id t22sm353384pjo.45.2021.03.10.14.52.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 14:52:55 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v1 3/3] binder: BINDER_GET_FROZEN_INFO ioctl
Date: Wed, 10 Mar 2021 14:52:51 -0800
Message-Id: <20210310225251.2577580-4-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc1.246.gcd05c9c855-goog
In-Reply-To: <20210310225251.2577580-1-dualli@chromium.org>
References: <20210310225251.2577580-1-dualli@chromium.org>
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
index 34c3e430a270..00c68b7eb553 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2358,6 +2358,10 @@ static int binder_proc_transaction(struct binder_transaction *t,
 	}
 
 	binder_inner_proc_lock(proc);
+	if (proc->is_frozen) {
+		proc->sync_recv |= !oneway;
+		proc->async_recv |= oneway;
+	}
 
 	if ((proc->is_frozen && !oneway) || proc->is_dead ||
 			(thread && thread->is_dead)) {
@@ -4632,6 +4636,8 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
 
 	if (!info->enable) {
 		binder_inner_proc_lock(target_proc);
+		target_proc->sync_recv = false;
+		target_proc->async_recv = false;
 		target_proc->is_frozen = false;
 		binder_inner_proc_unlock(target_proc);
 		return 0;
@@ -4643,6 +4649,8 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
 	 * for transactions to drain.
 	 */
 	binder_inner_proc_lock(target_proc);
+	target_proc->sync_recv = false;
+	target_proc->async_recv = false;
 	target_proc->is_frozen = true;
 	binder_inner_proc_unlock(target_proc);
 
@@ -4664,6 +4672,33 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
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
@@ -4842,6 +4877,24 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
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
@@ -5152,6 +5205,8 @@ static void binder_deferred_release(struct binder_proc *proc)
 
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
2.31.0.rc1.246.gcd05c9c855-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
