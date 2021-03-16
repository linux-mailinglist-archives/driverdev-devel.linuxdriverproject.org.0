Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C018533CACA
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 02:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D4E26F55F;
	Tue, 16 Mar 2021 01:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3SwadWdGOol7; Tue, 16 Mar 2021 01:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C75D60630;
	Tue, 16 Mar 2021 01:17:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A61841BF325
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 01:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1E5C4EC1D
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 01:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e2IwXcIKyK-2 for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 01:16:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF66C4EBF8
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 01:16:35 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id n17so12611756plc.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 18:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xx8QLtikLkDLPOmLmQC2zpFe5/XXKjjjg8633l/8OoI=;
 b=QU1xNjYrA2wQoZcYr2KXN0oNCcSQUdkDCxqhlmp63HrprpWu99WQNqSUvtPxz3CnPb
 l+922xEH7HVILl1hQGolLAcylKxvE5bNtyM/hq2jh/TtInq3284pMh+B4Y1pjlFvZqYg
 chZoc/1wsCc6z4temFBvmXYFI0yDmSlSEst5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xx8QLtikLkDLPOmLmQC2zpFe5/XXKjjjg8633l/8OoI=;
 b=ANx8MPkVH8R5qhi2TEpG0m1Zu83ZbenwMCK8xnAOEPQl9+BwqgTVj27jMmhbjv7ysv
 3uP6Ci8ac4b51HeWQL8iz8W+rMs7qdbgT5mXw/dCtktWCQPxhB3f+seGE5Oq9F27320c
 UjMtq5uVur0N14+WzMlYW0XaCBJwe3pJqL2/97a0MYKMkgudGt8PMBFBTqEnHXha9V1L
 7vG/0/eBGuHkwvBN0bzeqtYmQtyBaIBASaVFysHwND6sUg4zGardDL+I2FFVVIr6Wb6G
 9P4lzK3NBzMjIEPxT9ZZNfyJlScXOFJsANlrjAAiGRMo7nx9i9Da5la1zPpmh74AZZCY
 djGA==
X-Gm-Message-State: AOAM530soC71MMQUIeznrIMCDJOl2yZXPff03rHCNTmCpfzJjxKo80VS
 Hku8v118cjOpgHHI0jvEO8dmAQ==
X-Google-Smtp-Source: ABdhPJz6LyEyZKo+kfLAXYd6pgdUX3BnSnvJgQJAy35n2Am3YZm96u2wI7YVtm3Rctozj39NKgFG7Q==
X-Received: by 2002:a17:90b:4a81:: with SMTP id
 lp1mr1999113pjb.154.1615857395301; 
 Mon, 15 Mar 2021 18:16:35 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id 186sm15773381pfb.143.2021.03.15.18.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 18:16:34 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v3 3/3] binder: BINDER_GET_FROZEN_INFO ioctl
Date: Mon, 15 Mar 2021 18:16:30 -0700
Message-Id: <20210316011630.1121213-4-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210316011630.1121213-1-dualli@chromium.org>
References: <20210316011630.1121213-1-dualli@chromium.org>
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
index fe16c455a76e..e1a484ab0366 100644
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
@@ -4634,6 +4638,8 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
 
 	if (!info->enable) {
 		binder_inner_proc_lock(target_proc);
+		target_proc->sync_recv = false;
+		target_proc->async_recv = false;
 		target_proc->is_frozen = false;
 		binder_inner_proc_unlock(target_proc);
 		return 0;
@@ -4645,6 +4651,8 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
 	 * for transactions to drain.
 	 */
 	binder_inner_proc_lock(target_proc);
+	target_proc->sync_recv = false;
+	target_proc->async_recv = false;
 	target_proc->is_frozen = true;
 	binder_inner_proc_unlock(target_proc);
 
@@ -4666,6 +4674,33 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
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
@@ -4844,6 +4879,24 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
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
@@ -5154,6 +5207,8 @@ static void binder_deferred_release(struct binder_proc *proc)
 
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
