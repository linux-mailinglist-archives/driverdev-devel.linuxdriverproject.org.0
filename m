Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DC1A6DCF
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 18:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2DAA86935;
	Tue,  3 Sep 2019 16:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZqLnsshl31xC; Tue,  3 Sep 2019 16:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AD858688F;
	Tue,  3 Sep 2019 16:17:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 037901BF27F
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EFBB0877A5
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rC6CCMkQF96l for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 16:17:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com
 [209.85.210.202])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 174478777F
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 16:17:18 +0000 (UTC)
Received: by mail-pf1-f202.google.com with SMTP id f2so10151047pfk.13
 for <devel@driverdev.osuosl.org>; Tue, 03 Sep 2019 09:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=dmiOATAqQyCo7lDcckxvNROZCBcaSq8xNO80WhRvGcQ=;
 b=TsI58MWS7f3U530lYsTZ6jA8H7TUbzJ2lAbG8FMV/MmP5L5tNdJN3ouegaSQiZCY6Y
 eYlSv5o/JvvUFo5sX+8NScDGK90div5hmZTLowMOGImoOqZs5wvu7AN+FCWoWJqKvzpi
 1TlC84q0JN99nxyeW9VMuepXdkSwFxQjxeuSjZUqxNAPKrdP/ck0oPSc1U8FiohkTVBG
 4pyyyLAu0+puqL3YX0Sy4iaq80cmxPr9J4iW1N25AXPGJAy/4qU0fkRWdV3dH164xnh0
 OGWECsP4FIvmTEyIEwLtrrW6sNP+eHm8b+m0CBBpHi+dVT7EmRgO7trbiaioIABx8vIF
 s3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=dmiOATAqQyCo7lDcckxvNROZCBcaSq8xNO80WhRvGcQ=;
 b=Y0GkwxrwEy+AZjyJym3h1RvyXdbNd46rUFCDApAuyPTjYDeS5RNfqDsQWZg8mvZuGl
 3hpWxaaEF6bE+JOXTK3vU2qsiB4U6TqpN1Yj2aWGGKOUyMvpEF54Qxk5b7kDTq0EctWz
 +VpGdn5ZCP+q+DeXpf8FGaLWzNhFJYcdX+rUpl0lpGBG21f6fQ4ndXHi6O4PNu4zsaaU
 MsmGLpOptsq+Zt7rv5HFT9pfWGrCdwIzcUVHEIglClyyMu9TQlfw7yTEEvew3iahN9eO
 8rXQbRAJ8C6EinPrAzmuEYFI7h/W/0sR3HEKITL9dKaUi5/aTkO2QC/Ev0pzUySkVb3r
 HH+A==
X-Gm-Message-State: APjAAAWOZnzekJVqfJIB+p30gGsVf+Ni4uQ37MN9+Wmdvcz7H4fkyYQD
 mTBOE1lr7aFciSeOBF+3z5kAjmgY7n8=
X-Google-Smtp-Source: APXvYqxfgtAIeG1oMjPvv+b73pWvMejl4RV6CQBC/6SoRO8ME6mSNSV3wTSK47APDFCANf+4jP2bYIaNcL0=
X-Received: by 2002:a63:58c:: with SMTP id 134mr3887883pgf.106.1567527437205; 
 Tue, 03 Sep 2019 09:17:17 -0700 (PDT)
Date: Tue,  3 Sep 2019 09:16:54 -0700
In-Reply-To: <20190903161655.107408-1-hridya@google.com>
Message-Id: <20190903161655.107408-4-hridya@google.com>
Mime-Version: 1.0
References: <20190903161655.107408-1-hridya@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 3/4] binder: Make transaction_log available in binderfs
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
Cc: Hridya Valsaraju <hridya@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>, kernel-team@android.com
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

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Hridya Valsaraju <hridya@google.com>
---

 Changes in v2:
 -Consistent variable naming accross functions as per Christian Brauner.

 drivers/android/binder.c          | 34 +++++--------------------------
 drivers/android/binder_internal.h | 30 +++++++++++++++++++++++++++
 drivers/android/binderfs.c        | 18 ++++++++++++++++
 3 files changed, 53 insertions(+), 29 deletions(-)

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
index 01c1db463053..9bb54fd3a48a 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -630,6 +630,24 @@ static int init_binder_logs(struct super_block *sb)
 
 	dentry = binderfs_create_file(binder_logs_root_dir, "transactions",
 				      &binder_transactions_fops, NULL);
+	if (IS_ERR(dentry)) {
+		ret = PTR_ERR(dentry);
+		goto out;
+	}
+
+	dentry = binderfs_create_file(binder_logs_root_dir,
+				      "transaction_log",
+				      &binder_transaction_log_fops,
+				      &binder_transaction_log);
+	if (IS_ERR(dentry)) {
+		ret = PTR_ERR(dentry);
+		goto out;
+	}
+
+	dentry = binderfs_create_file(binder_logs_root_dir,
+				      "failed_transaction_log",
+				      &binder_transaction_log_fops,
+				      &binder_transaction_log_failed);
 	if (IS_ERR(dentry))
 		ret = PTR_ERR(dentry);
 
-- 
2.23.0.187.g17f5b7556c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
