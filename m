Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 370E1A70D5
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 18:44:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A395B84042;
	Tue,  3 Sep 2019 16:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VqC3m+4351tb; Tue,  3 Sep 2019 16:44:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D310830FD;
	Tue,  3 Sep 2019 16:44:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3735E1BF27F
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30D2A2270C
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KdGJepdxSKrp for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 16:44:08 +0000 (UTC)
X-Greylist: delayed 00:26:53 by SQLgrey-1.7.6
Received: from mail-yw1-f74.google.com (mail-yw1-f74.google.com
 [209.85.161.74])
 by silver.osuosl.org (Postfix) with ESMTPS id 0057722193
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 16:44:07 +0000 (UTC)
Received: by mail-yw1-f74.google.com with SMTP id e12so13788447ywe.6
 for <devel@driverdev.osuosl.org>; Tue, 03 Sep 2019 09:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=K0bb58sIVRPVof5l6bIsmNLs/S1EXwD/86fFZzshrEk=;
 b=HV23bSo9uIud4Nyd0cYXzDDTC9L1hxlQvl/0nLafwm09vTuJypzCTEjapJ3pNApQn1
 PZs7UMQ3/nvTE1xsYLCVLEPxg26eu45hO1aDNLkr2ehHbqNJq3SrLMxj50wELOO4/C7E
 k2rcfHdEfaHlbR6iT5vYhwb51bEHQaALDuU3u6MUP72uAJDhCIYVobCDsWhnzeRwuGHe
 0pFY3XuF3sf5WONa5dkOP2lQW7pK8yk35WviCmaodkRRkZYEUm1YD/N3Zy3HEZd2jQ7i
 qfp80NLZ/zpV+Qa3Nrp1IMbwBfm0vKToRbEohTwI5RFArJap7DNyCHRG0sOQCf1IpzUH
 rJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=K0bb58sIVRPVof5l6bIsmNLs/S1EXwD/86fFZzshrEk=;
 b=l8IBGxY9yitJX9ZWT9jbmpDidteHJKo3SBPYPwrVxdZhQerOl9lXDAhG3wEM/fKGHw
 F6P3gGNfI3UrRmkdKChmmnTFtd1yUJg4N4dC+8WZ7k4LlomAscHlTTH8RZoiKJMmwFHL
 NwvD14U1UiyIMRtQZIpHznLmV70hOPDgGj8Ai4MdtZDkuLW6LVKyDAlSvTUeXtfEI8jt
 D8vYJG0o/9onIANRGEnSm0xyqHB7/82UAMMeTWrJQyx97RUySEkw4HJ1YcxJOTK1lJhZ
 a0w421enDl8Dj6tBs7z13l+fyCO/wirFDXz8GAEuqhV+ig5nVcwXV3u00NnsalWH+OWu
 tK/w==
X-Gm-Message-State: APjAAAUBc2KGXKKXZYN25M6lorj/OLEGdNwL4hQ57yhkeFn3j/M0gwKu
 /Ui7kIhY1YwiWDgQh1wp4ksApzwd5PQ=
X-Google-Smtp-Source: APXvYqy9Ck9TyY1uDxJHieUSYSkyh3oRep/k05GPStqIsjUvZHnooR8w3TKQHNVMARgEdhlx7t/IS7jplR0=
X-Received: by 2002:a25:7701:: with SMTP id s1mr23195999ybc.231.1567527432819; 
 Tue, 03 Sep 2019 09:17:12 -0700 (PDT)
Date: Tue,  3 Sep 2019 09:16:53 -0700
In-Reply-To: <20190903161655.107408-1-hridya@google.com>
Message-Id: <20190903161655.107408-3-hridya@google.com>
Mime-Version: 1.0
References: <20190903161655.107408-1-hridya@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 2/4] binder: Add stats, state and transactions files
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

The following binder stat files currently live in debugfs.

/sys/kernel/debug/binder/state
/sys/kernel/debug/binder/stats
/sys/kernel/debug/binder/transactions

This patch makes these files available in a binderfs instance
mounted with the mount option 'stats=global'. For example, if a binderfs
instance is mounted at path /dev/binderfs, the above files will be
available at the following locations:

/dev/binderfs/binder_logs/state
/dev/binderfs/binder_logs/stats
/dev/binderfs/binder_logs/transactions

This provides a way to access them even when debugfs is not mounted.

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Hridya Valsaraju <hridya@google.com>
---

 Changes in v3:
 - Use set_nlink() instead of inc_nlink() in binderfs_create_dir() as
   per Christian Brauner.
 - Replace parent->d_inode usage with d_inode(parent) in
   binderfs_create_file() for consistency as per Christian Brauner.

 Changes in v2:
 - Consistently name variables across functions as per Christian
   Brauner.
 - Improve check for binderfs device in binderfs_evict_inode()
   as per Christian Brauner.

 drivers/android/binder.c          |  15 ++--
 drivers/android/binder_internal.h |   8 ++
 drivers/android/binderfs.c        | 140 +++++++++++++++++++++++++++++-
 3 files changed, 153 insertions(+), 10 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index ca6b21a53321..de795bd229c4 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -6055,7 +6055,7 @@ static void print_binder_proc_stats(struct seq_file *m,
 }
 
 
-static int state_show(struct seq_file *m, void *unused)
+int binder_state_show(struct seq_file *m, void *unused)
 {
 	struct binder_proc *proc;
 	struct binder_node *node;
@@ -6094,7 +6094,7 @@ static int state_show(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int stats_show(struct seq_file *m, void *unused)
+int binder_stats_show(struct seq_file *m, void *unused)
 {
 	struct binder_proc *proc;
 
@@ -6110,7 +6110,7 @@ static int stats_show(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int transactions_show(struct seq_file *m, void *unused)
+int binder_transactions_show(struct seq_file *m, void *unused)
 {
 	struct binder_proc *proc;
 
@@ -6198,9 +6198,6 @@ const struct file_operations binder_fops = {
 	.release = binder_release,
 };
 
-DEFINE_SHOW_ATTRIBUTE(state);
-DEFINE_SHOW_ATTRIBUTE(stats);
-DEFINE_SHOW_ATTRIBUTE(transactions);
 DEFINE_SHOW_ATTRIBUTE(transaction_log);
 
 static int __init init_binder_device(const char *name)
@@ -6256,17 +6253,17 @@ static int __init binder_init(void)
 				    0444,
 				    binder_debugfs_dir_entry_root,
 				    NULL,
-				    &state_fops);
+				    &binder_state_fops);
 		debugfs_create_file("stats",
 				    0444,
 				    binder_debugfs_dir_entry_root,
 				    NULL,
-				    &stats_fops);
+				    &binder_stats_fops);
 		debugfs_create_file("transactions",
 				    0444,
 				    binder_debugfs_dir_entry_root,
 				    NULL,
-				    &transactions_fops);
+				    &binder_transactions_fops);
 		debugfs_create_file("transaction_log",
 				    0444,
 				    binder_debugfs_dir_entry_root,
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index fe8c745dc8e0..12ef96f256c6 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -57,4 +57,12 @@ static inline int __init init_binderfs(void)
 }
 #endif
 
+int binder_stats_show(struct seq_file *m, void *unused);
+DEFINE_SHOW_ATTRIBUTE(binder_stats);
+
+int binder_state_show(struct seq_file *m, void *unused);
+DEFINE_SHOW_ATTRIBUTE(binder_state);
+
+int binder_transactions_show(struct seq_file *m, void *unused);
+DEFINE_SHOW_ATTRIBUTE(binder_transactions);
 #endif /* _LINUX_BINDER_INTERNAL_H */
diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index 7045bfe5b52b..01c1db463053 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -280,7 +280,7 @@ static void binderfs_evict_inode(struct inode *inode)
 
 	clear_inode(inode);
 
-	if (!device)
+	if (!S_ISCHR(inode->i_mode) || !device)
 		return;
 
 	mutex_lock(&binderfs_minors_mutex);
@@ -502,6 +502,141 @@ static const struct inode_operations binderfs_dir_inode_operations = {
 	.unlink = binderfs_unlink,
 };
 
+static struct inode *binderfs_make_inode(struct super_block *sb, int mode)
+{
+	struct inode *ret;
+
+	ret = new_inode(sb);
+	if (ret) {
+		ret->i_ino = iunique(sb, BINDERFS_MAX_MINOR + INODE_OFFSET);
+		ret->i_mode = mode;
+		ret->i_atime = ret->i_mtime = ret->i_ctime = current_time(ret);
+	}
+	return ret;
+}
+
+static struct dentry *binderfs_create_dentry(struct dentry *parent,
+					     const char *name)
+{
+	struct dentry *dentry;
+
+	dentry = lookup_one_len(name, parent, strlen(name));
+	if (IS_ERR(dentry))
+		return dentry;
+
+	/* Return error if the file/dir already exists. */
+	if (d_really_is_positive(dentry)) {
+		dput(dentry);
+		return ERR_PTR(-EEXIST);
+	}
+
+	return dentry;
+}
+
+static struct dentry *binderfs_create_file(struct dentry *parent,
+					   const char *name,
+					   const struct file_operations *fops,
+					   void *data)
+{
+	struct dentry *dentry;
+	struct inode *new_inode, *parent_inode;
+	struct super_block *sb;
+
+	parent_inode = d_inode(parent);
+	inode_lock(parent_inode);
+
+	dentry = binderfs_create_dentry(parent, name);
+	if (IS_ERR(dentry))
+		goto out;
+
+	sb = parent_inode->i_sb;
+	new_inode = binderfs_make_inode(sb, S_IFREG | 0444);
+	if (!new_inode) {
+		dput(dentry);
+		dentry = ERR_PTR(-ENOMEM);
+		goto out;
+	}
+
+	new_inode->i_fop = fops;
+	new_inode->i_private = data;
+	d_instantiate(dentry, new_inode);
+	fsnotify_create(parent_inode, dentry);
+
+out:
+	inode_unlock(parent_inode);
+	return dentry;
+}
+
+static struct dentry *binderfs_create_dir(struct dentry *parent,
+					  const char *name)
+{
+	struct dentry *dentry;
+	struct inode *new_inode, *parent_inode;
+	struct super_block *sb;
+
+	parent_inode = d_inode(parent);
+	inode_lock(parent_inode);
+
+	dentry = binderfs_create_dentry(parent, name);
+	if (IS_ERR(dentry))
+		goto out;
+
+	sb = parent_inode->i_sb;
+	new_inode = binderfs_make_inode(sb, S_IFDIR | 0755);
+	if (!new_inode) {
+		dput(dentry);
+		dentry = ERR_PTR(-ENOMEM);
+		goto out;
+	}
+
+	new_inode->i_fop = &simple_dir_operations;
+	new_inode->i_op = &simple_dir_inode_operations;
+
+	set_nlink(new_inode, 2);
+	d_instantiate(dentry, new_inode);
+	inc_nlink(parent_inode);
+	fsnotify_mkdir(parent_inode, dentry);
+
+out:
+	inode_unlock(parent_inode);
+	return dentry;
+}
+
+static int init_binder_logs(struct super_block *sb)
+{
+	struct dentry *binder_logs_root_dir, *dentry;
+	int ret = 0;
+
+	binder_logs_root_dir = binderfs_create_dir(sb->s_root,
+						   "binder_logs");
+	if (IS_ERR(binder_logs_root_dir)) {
+		ret = PTR_ERR(binder_logs_root_dir);
+		goto out;
+	}
+
+	dentry = binderfs_create_file(binder_logs_root_dir, "stats",
+				      &binder_stats_fops, NULL);
+	if (IS_ERR(dentry)) {
+		ret = PTR_ERR(dentry);
+		goto out;
+	}
+
+	dentry = binderfs_create_file(binder_logs_root_dir, "state",
+				      &binder_state_fops, NULL);
+	if (IS_ERR(dentry)) {
+		ret = PTR_ERR(dentry);
+		goto out;
+	}
+
+	dentry = binderfs_create_file(binder_logs_root_dir, "transactions",
+				      &binder_transactions_fops, NULL);
+	if (IS_ERR(dentry))
+		ret = PTR_ERR(dentry);
+
+out:
+	return ret;
+}
+
 static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
 {
 	int ret;
@@ -580,6 +715,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
 
 	}
 
+	if (info->mount_opts.stats_mode == STATS_GLOBAL)
+		return init_binder_logs(sb);
+
 	return 0;
 }
 
-- 
2.23.0.187.g17f5b7556c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
