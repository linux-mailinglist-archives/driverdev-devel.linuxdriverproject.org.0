Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D98CA29B6
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 00:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0C6B88BC3;
	Thu, 29 Aug 2019 22:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4YNRvI3bu8C3; Thu, 29 Aug 2019 22:24:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 458A188894;
	Thu, 29 Aug 2019 22:24:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6E8F1BF422
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 22:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C1BBD87335
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 22:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cZIDE7A0TqbE for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 22:24:24 +0000 (UTC)
X-Greylist: delayed 00:38:23 by SQLgrey-1.7.6
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A30D186F9A
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 22:24:24 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id o133so5224044qke.4
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 15:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=km1Ous4mqVOOKLZ9m/RRjHFgWBEtlWMoKP9Vl8ohW5c=;
 b=BHO13PhN7rNxNnPgQz2pSPKwRraOzVWIqkEmW3bChL6O8vI7BOrS8hdMdfD6V/62fr
 Kg8VRLrGJ8zrP8O5m7QHJORtDhR/MCUwTPixOXyElkoZKkdU0SxceVDplYKAcQTT0FGs
 Wqra6d11fM686isUB+pr3FpUDrFTqQHJweYdSINBUVlb7KWc+3Gef5J5q7n4spBTfcpb
 yAfLrswNQoXAQ2krCxxdNzN8PD99crT1MgN0WUO82nyaN7GN3+/UfMq31zc8emRqRDlL
 YgBhNuXRmYIHPXvBnLMjHOvc/rgg4zhXLVY7Lul2lvu96fmhKWEeYPc/tkP8xUxk9sFM
 iZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=km1Ous4mqVOOKLZ9m/RRjHFgWBEtlWMoKP9Vl8ohW5c=;
 b=iJ5hCidDVFhe7QpEaKoMZUyNaxCy+7FJ8fIFy7gDa7UW+FBfL9E6k9AUBx9icfvZCx
 9KY3s3T21OKzEkkFkgWvfURXkhHmmG5ANJdOV9wGpOUkohha7ddhVdSaaxRoyV1ZSSHa
 LO581T1J54m0LrsPN6c2CMjRYiE6lTMqkwYzMmBhux50GNMjQkfQ4IVIQpKxeAfgWUZL
 Ayttbu05IN2EBDkWFKp44wtE59awdSxaICA8iFFOVhOGz+mtZUUtgOIoTS6MCukr3bZs
 owj9uMx7J8FJgPPlFLwwe4Cg3PaxghVoF3y0+OxnCTzzCmOXnlvX7lR/zRaD1YCWIclh
 Pifg==
X-Gm-Message-State: APjAAAWw20nH+eViyRaDAd+wB0lsIwHathwKFvxgHbHdRMX0bEFYYzF1
 UbdnCalutte0U7yPoXyzDvw0p16k2uk=
X-Google-Smtp-Source: APXvYqxAKgBqmvswnNdGXP1qJ+JkPBPdnvKO43P65lLDCO00DS5uCr+9ljdlzvjbEDCURCKp92jI5ycfpXM=
X-Received: by 2002:a65:68cd:: with SMTP id k13mr10095651pgt.411.1567113542312; 
 Thu, 29 Aug 2019 14:19:02 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:18:12 -0700
In-Reply-To: <20190829211812.32520-1-hridya@google.com>
Message-Id: <20190829211812.32520-5-hridya@google.com>
Mime-Version: 1.0
References: <20190829211812.32520-1-hridya@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 4/4] binder: Add binder_proc logging to binderfs
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

Currently /sys/kernel/debug/binder/proc contains
the debug data for every binder_proc instance.
This patch makes this information also available
in a binderfs instance mounted with a mount option
"stats=global" in addition to debugfs. The patch does
not affect the presence of the file in debugfs.

If a binderfs instance is mounted at path /dev/binderfs,
this file would be present at /dev/binderfs/binder_logs/proc.
This change provides an alternate way to access this file when debugfs
is not mounted.

Signed-off-by: Hridya Valsaraju <hridya@google.com>
---

 Changes in v2:
 - Consistent variable naming across functions as per Christian
 Brauner.
 - As suggested by Todd Kjos, log a failure to create a
   process-specific binderfs log file if the error code is not EEXIST
   since an error code of EEXIST is expected if
   multiple contexts of the same process try to create the file during
   binder_open().

 drivers/android/binder.c          | 46 ++++++++++++++++++++-
 drivers/android/binder_internal.h | 46 +++++++++++++++++++++
 drivers/android/binderfs.c        | 68 ++++++++++++++-----------------
 3 files changed, 121 insertions(+), 39 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index bed217310197..ee610ea48309 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -481,6 +481,7 @@ struct binder_priority {
  * @inner_lock:           can nest under outer_lock and/or node lock
  * @outer_lock:           no nesting under innor or node lock
  *                        Lock order: 1) outer, 2) node, 3) inner
+ * @binderfs_entry:       process-specific binderfs log file
  *
  * Bookkeeping structure for binder processes
  */
@@ -510,6 +511,7 @@ struct binder_proc {
 	struct binder_context *context;
 	spinlock_t inner_lock;
 	spinlock_t outer_lock;
+	struct dentry *binderfs_entry;
 };
 
 enum {
@@ -5347,6 +5349,8 @@ static int binder_open(struct inode *nodp, struct file *filp)
 {
 	struct binder_proc *proc;
 	struct binder_device *binder_dev;
+	struct binderfs_info *info;
+	struct dentry *binder_binderfs_dir_entry_proc = NULL;
 
 	binder_debug(BINDER_DEBUG_OPEN_CLOSE, "%s: %d:%d\n", __func__,
 		     current->group_leader->pid, current->pid);
@@ -5368,11 +5372,14 @@ static int binder_open(struct inode *nodp, struct file *filp)
 	}
 
 	/* binderfs stashes devices in i_private */
-	if (is_binderfs_device(nodp))
+	if (is_binderfs_device(nodp)) {
 		binder_dev = nodp->i_private;
-	else
+		info = nodp->i_sb->s_fs_info;
+		binder_binderfs_dir_entry_proc = info->proc_log_dir;
+	} else {
 		binder_dev = container_of(filp->private_data,
 					  struct binder_device, miscdev);
+	}
 	proc->context = &binder_dev->context;
 	binder_alloc_init(&proc->alloc);
 
@@ -5403,6 +5410,35 @@ static int binder_open(struct inode *nodp, struct file *filp)
 			&proc_fops);
 	}
 
+	if (binder_binderfs_dir_entry_proc) {
+		char strbuf[11];
+		struct dentry *binderfs_entry;
+
+		snprintf(strbuf, sizeof(strbuf), "%u", proc->pid);
+		/*
+		 * Similar to debugfs, the process specific log file is shared
+		 * between contexts. If the file has already been created for a
+		 * process, the following binderfs_create_file() call will
+		 * fail with error code EEXIST if another context of the same
+		 * process invoked binder_open(). This is ok since same as
+		 * debugfs, the log file will contain information on all
+		 * contexts of a given PID.
+		 */
+		binderfs_entry = binderfs_create_file(binder_binderfs_dir_entry_proc,
+			strbuf, &proc_fops, (void *)(unsigned long)proc->pid);
+		if (!IS_ERR(binderfs_entry)) {
+			proc->binderfs_entry = binderfs_entry;
+		} else {
+			int error;
+
+			error = PTR_ERR(binderfs_entry);
+			if (error != -EEXIST) {
+				pr_warn("Unable to create file %s in binderfs (error %d)\n",
+					strbuf, error);
+			}
+		}
+	}
+
 	return 0;
 }
 
@@ -5442,6 +5478,12 @@ static int binder_release(struct inode *nodp, struct file *filp)
 	struct binder_proc *proc = filp->private_data;
 
 	debugfs_remove(proc->debugfs_entry);
+
+	if (proc->binderfs_entry) {
+		binderfs_remove_file(proc->binderfs_entry);
+		proc->binderfs_entry = NULL;
+	}
+
 	binder_defer_work(proc, BINDER_DEFERRED_RELEASE);
 
 	return 0;
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index b9be42d9464c..bd47f7f72075 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -35,17 +35,63 @@ struct binder_device {
 	struct inode *binderfs_inode;
 };
 
+/**
+ * binderfs_mount_opts - mount options for binderfs
+ * @max: maximum number of allocatable binderfs binder devices
+ * @stats_mode: enable binder stats in binderfs.
+ */
+struct binderfs_mount_opts {
+	int max;
+	int stats_mode;
+};
+
+/**
+ * binderfs_info - information about a binderfs mount
+ * @ipc_ns:         The ipc namespace the binderfs mount belongs to.
+ * @control_dentry: This records the dentry of this binderfs mount
+ *                  binder-control device.
+ * @root_uid:       uid that needs to be used when a new binder device is
+ *                  created.
+ * @root_gid:       gid that needs to be used when a new binder device is
+ *                  created.
+ * @mount_opts:     The mount options in use.
+ * @device_count:   The current number of allocated binder devices.
+ * @proc_log_dir:   Pointer to the directory dentry containing process-specific
+ *                  logs.
+ */
+struct binderfs_info {
+	struct ipc_namespace *ipc_ns;
+	struct dentry *control_dentry;
+	kuid_t root_uid;
+	kgid_t root_gid;
+	struct binderfs_mount_opts mount_opts;
+	int device_count;
+	struct dentry *proc_log_dir;
+};
+
 extern const struct file_operations binder_fops;
 
 extern char *binder_devices_param;
 
 #ifdef CONFIG_ANDROID_BINDERFS
 extern bool is_binderfs_device(const struct inode *inode);
+extern struct dentry *binderfs_create_file(struct dentry *dir, const char *name,
+					   const struct file_operations *fops,
+					   void *data);
+extern void binderfs_remove_file(struct dentry *dentry);
 #else
 static inline bool is_binderfs_device(const struct inode *inode)
 {
 	return false;
 }
+static inline struct dentry *binderfs_create_file(struct dentry *dir,
+					   const char *name,
+					   const struct file_operations *fops,
+					   void *data)
+{
+	return NULL;
+}
+static inline void binderfs_remove_file(struct dentry *dentry) {}
 #endif
 
 #ifdef CONFIG_ANDROID_BINDERFS
diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index 1715e72ce9c7..d6b50fe38218 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -48,16 +48,6 @@ static dev_t binderfs_dev;
 static DEFINE_MUTEX(binderfs_minors_mutex);
 static DEFINE_IDA(binderfs_minors);
 
-/**
- * binderfs_mount_opts - mount options for binderfs
- * @max: maximum number of allocatable binderfs binder devices
- * @stats_mode: enable binder stats in binderfs.
- */
-struct binderfs_mount_opts {
-	int max;
-	int stats_mode;
-};
-
 enum {
 	Opt_max,
 	Opt_stats_mode,
@@ -75,27 +65,6 @@ static const match_table_t tokens = {
 	{ Opt_err, NULL     }
 };
 
-/**
- * binderfs_info - information about a binderfs mount
- * @ipc_ns:         The ipc namespace the binderfs mount belongs to.
- * @control_dentry: This records the dentry of this binderfs mount
- *                  binder-control device.
- * @root_uid:       uid that needs to be used when a new binder device is
- *                  created.
- * @root_gid:       gid that needs to be used when a new binder device is
- *                  created.
- * @mount_opts:     The mount options in use.
- * @device_count:   The current number of allocated binder devices.
- */
-struct binderfs_info {
-	struct ipc_namespace *ipc_ns;
-	struct dentry *control_dentry;
-	kuid_t root_uid;
-	kgid_t root_gid;
-	struct binderfs_mount_opts mount_opts;
-	int device_count;
-};
-
 static inline struct binderfs_info *BINDERFS_I(const struct inode *inode)
 {
 	return inode->i_sb->s_fs_info;
@@ -533,10 +502,24 @@ static struct dentry *binderfs_create_dentry(struct dentry *parent,
 	return dentry;
 }
 
-static struct dentry *binderfs_create_file(struct dentry *parent,
-					   const char *name,
-					   const struct file_operations *fops,
-					   void *data)
+void binderfs_remove_file(struct dentry *dentry)
+{
+	struct inode *parent_inode;
+
+	parent_inode = d_inode(dentry->d_parent);
+	inode_lock(parent_inode);
+	if (simple_positive(dentry)) {
+		dget(dentry);
+		simple_unlink(parent_inode, dentry);
+		d_delete(dentry);
+		dput(dentry);
+	}
+	inode_unlock(parent_inode);
+}
+
+struct dentry *binderfs_create_file(struct dentry *parent, const char *name,
+				    const struct file_operations *fops,
+				    void *data)
 {
 	struct dentry *dentry;
 	struct inode *new_inode, *parent_inode;
@@ -604,7 +587,8 @@ static struct dentry *binderfs_create_dir(struct dentry *parent,
 
 static int init_binder_logs(struct super_block *sb)
 {
-	struct dentry *binder_logs_root_dir, *dentry;
+	struct dentry *binder_logs_root_dir, *dentry, *proc_log_dir;
+	struct binderfs_info *info;
 	int ret = 0;
 
 	binder_logs_root_dir = binderfs_create_dir(sb->s_root,
@@ -648,8 +632,18 @@ static int init_binder_logs(struct super_block *sb)
 				      "failed_transaction_log",
 				      &binder_transaction_log_fops,
 				      &binder_transaction_log_failed);
-	if (IS_ERR(dentry))
+	if (IS_ERR(dentry)) {
 		ret = PTR_ERR(dentry);
+		goto out;
+	}
+
+	proc_log_dir = binderfs_create_dir(binder_logs_root_dir, "proc");
+	if (IS_ERR(proc_log_dir)) {
+		ret = PTR_ERR(proc_log_dir);
+		goto out;
+	}
+	info = sb->s_fs_info;
+	info->proc_log_dir = proc_log_dir;
 
 out:
 	return ret;
-- 
2.23.0.187.g17f5b7556c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
