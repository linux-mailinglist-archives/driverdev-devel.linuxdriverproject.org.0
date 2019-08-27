Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 233A99F476
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 22:48:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 836EB86B26;
	Tue, 27 Aug 2019 20:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DYcPADYiUQoX; Tue, 27 Aug 2019 20:48:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DFB7186A9D;
	Tue, 27 Aug 2019 20:47:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A1B2A1BF355
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E742214EC
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pV94BkrCDMYS for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:47:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f201.google.com (mail-vk1-f201.google.com
 [209.85.221.201])
 by silver.osuosl.org (Postfix) with ESMTPS id C291020404
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 20:47:56 +0000 (UTC)
Received: by mail-vk1-f201.google.com with SMTP id d21so240410vkf.5
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 13:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=EmHdjqpWOkwN7QyDqYlPb8k3J4oHvfwy1O4QGHBsJTQ=;
 b=rIEGF++rukeOc4SYnZVqa4YoSg9x8ExCagym0n4NYRrgmemg2OUG/F0/euXZAiPSdS
 ySnDj93ohmptmaA5l/vci75jYdk/X4hjAj8n14JmXF6Xc6iJ3Sfqc2JLhrn+fdRXS45T
 vnV73xLzxdSoPWz6Nki/6rjMEsn/ptFwSrHhZrV+olpO94yEWluJISL7AjAK5haY2t9B
 oU5MJunWAsiKJSyDADZQa4kXxKLtfeOvlFMmiEEK8vLJzSIFzURi5aqzrWpXC3B3aH4n
 7lSZ8WejX8hwVzWkF0Jikl2S8+XoV4piPV2mRm/msZDJ6pVTxZEDzDI+cw0rs4Jd8B1z
 vakA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=EmHdjqpWOkwN7QyDqYlPb8k3J4oHvfwy1O4QGHBsJTQ=;
 b=oppWUtyPsIqt54lv9RXGTOKYDSqp/aA7FKoK1ogyTKcrK86pTqh7oq0D2Y9A/7PIqP
 AHKofeKQVv3D/r6lOwtmWkHU8ry9J5OrSjqw7pO+z/OBmFa6DvyBzhRVz8kjfrny42kg
 RGCKwgb6mhaIecz2Jn6KURj4G+2OcZvdS1bj/evpMqNrN042Nca/N7R/7kiVZ9Tn3zyn
 ANiSE9uT+DLlcGzc9X9CsWnd6uSahIWVbgQk7vn/sNe71qPoq7yUmHpjnyqVRo0nQdQe
 zy7SdCjZnYPuRmMY5k16hfothIrOw37yQ+MprssFB0+abcux19f4g9wcEGsm+WZaI3Rd
 TQzA==
X-Gm-Message-State: APjAAAU8vJLh/Vd1CSVwST1u/9OOR+9jmKBcAUMDGDUjNw+CpNyRlUET
 iujBle3UFzEZzBL7g0mt1D4Fw0HGO3k=
X-Google-Smtp-Source: APXvYqxcN4KrgyCS3F1BcJepFgEZJTRnesa9Z78AtmB++07tEo3qHBqbd9W028360YYWIMQZHFgg5QNO7jk=
X-Received: by 2002:a63:8ac3:: with SMTP id y186mr285624pgd.13.1566938544084; 
 Tue, 27 Aug 2019 13:42:24 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:41:51 -0700
In-Reply-To: <20190827204152.114609-1-hridya@google.com>
Message-Id: <20190827204152.114609-4-hridya@google.com>
Mime-Version: 1.0
References: <20190827204152.114609-1-hridya@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH 3/4] binder: Make transaction_log available in binderfs
From: Hridya Valsaraju <hridya@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
Cc: Hridya Valsaraju <hridya@google.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently, the binder transaction log files 'transaction_log'
and 'failed_transaction_log' live in debugfs at the following locations:

/sys/kernel/debug/binder/failed_transaction_log
/sys/kernel/debug/binder/transaction_log

This patch makes these files also available in a binderfs instance
mounted with the mount option "stats=global".
It does not affect the presence of these files in debugfs.
If a binderfs instance is mounted at path /dev/binderfs, the location of
these files will be as follows:

/dev/binderfs/binder_logs/failed_transaction_log
/dev/binderfs/binder_logs/transaction_log

This change provides an alternate option to access these files when
debugfs is not mounted.

Signed-off-by: Hridya Valsaraju <hridya@google.com>
---
 drivers/android/binder.c          | 34 +++++--------------------------
 drivers/android/binder_internal.h | 30 +++++++++++++++++++++++++++
 drivers/android/binderfs.c        | 19 +++++++++++++++++
 3 files changed, 54 insertions(+), 29 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index de795bd229c4..bed217310197 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -197,30 +197,8 @@ static inline void binder_stats_created(enum binder_stat_types type)
 	atomic_inc(&binder_stats.obj_created[type]);
 }
 
-struct binder_transaction_log_entry {
-	int debug_id;
-	int debug_id_done;
-	int call_type;
-	int from_proc;
-	int from_thread;
-	int target_handle;
-	int to_proc;
-	int to_thread;
-	int to_node;
-	int data_size;
-	int offsets_size;
-	int return_error_line;
-	uint32_t return_error;
-	uint32_t return_error_param;
-	const char *context_name;
-};
-struct binder_transaction_log {
-	atomic_t cur;
-	bool full;
-	struct binder_transaction_log_entry entry[32];
-};
-static struct binder_transaction_log binder_transaction_log;
-static struct binder_transaction_log binder_transaction_log_failed;
+struct binder_transaction_log binder_transaction_log;
+struct binder_transaction_log binder_transaction_log_failed;
 
 static struct binder_transaction_log_entry *binder_transaction_log_add(
 	struct binder_transaction_log *log)
@@ -6166,7 +6144,7 @@ static void print_binder_transaction_log_entry(struct seq_file *m,
 			"\n" : " (incomplete)\n");
 }
 
-static int transaction_log_show(struct seq_file *m, void *unused)
+int binder_transaction_log_show(struct seq_file *m, void *unused)
 {
 	struct binder_transaction_log *log = m->private;
 	unsigned int log_cur = atomic_read(&log->cur);
@@ -6198,8 +6176,6 @@ const struct file_operations binder_fops = {
 	.release = binder_release,
 };
 
-DEFINE_SHOW_ATTRIBUTE(transaction_log);
-
 static int __init init_binder_device(const char *name)
 {
 	int ret;
@@ -6268,12 +6244,12 @@ static int __init binder_init(void)
 				    0444,
 				    binder_debugfs_dir_entry_root,
 				    &binder_transaction_log,
-				    &transaction_log_fops);
+				    &binder_transaction_log_fops);
 		debugfs_create_file("failed_transaction_log",
 				    0444,
 				    binder_debugfs_dir_entry_root,
 				    &binder_transaction_log_failed,
-				    &transaction_log_fops);
+				    &binder_transaction_log_fops);
 	}
 
 	if (!IS_ENABLED(CONFIG_ANDROID_BINDERFS) &&
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index 12ef96f256c6..b9be42d9464c 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -65,4 +65,34 @@ DEFINE_SHOW_ATTRIBUTE(binder_state);
 
 int binder_transactions_show(struct seq_file *m, void *unused);
 DEFINE_SHOW_ATTRIBUTE(binder_transactions);
+
+int binder_transaction_log_show(struct seq_file *m, void *unused);
+DEFINE_SHOW_ATTRIBUTE(binder_transaction_log);
+
+struct binder_transaction_log_entry {
+	int debug_id;
+	int debug_id_done;
+	int call_type;
+	int from_proc;
+	int from_thread;
+	int target_handle;
+	int to_proc;
+	int to_thread;
+	int to_node;
+	int data_size;
+	int offsets_size;
+	int return_error_line;
+	uint32_t return_error;
+	uint32_t return_error_param;
+	const char *context_name;
+};
+
+struct binder_transaction_log {
+	atomic_t cur;
+	bool full;
+	struct binder_transaction_log_entry entry[32];
+};
+
+extern struct binder_transaction_log binder_transaction_log;
+extern struct binder_transaction_log binder_transaction_log_failed;
 #endif /* _LINUX_BINDER_INTERNAL_H */
diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index d542f9b8d8ab..dc25a7d759c9 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -630,8 +630,27 @@ static int init_binder_logs(struct super_block *sb)
 
 	file_dentry = binderfs_create_file(binder_logs_root_dir, "transactions",
 					   &binder_transactions_fops, NULL);
+	if (IS_ERR(file_dentry)) {
+		ret = PTR_ERR(file_dentry);
+		goto out;
+	}
+
+	file_dentry = binderfs_create_file(binder_logs_root_dir,
+					   "transaction_log",
+					   &binder_transaction_log_fops,
+					   &binder_transaction_log);
+	if (IS_ERR(file_dentry)) {
+		ret = PTR_ERR(file_dentry);
+		goto out;
+	}
+
+	file_dentry = binderfs_create_file(binder_logs_root_dir,
+					   "failed_transaction_log",
+					   &binder_transaction_log_fops,
+					   &binder_transaction_log_failed);
 	if (IS_ERR(file_dentry))
 		ret = PTR_ERR(file_dentry);
+
 out:
 	return ret;
 }
-- 
2.23.0.187.g17f5b7556c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
