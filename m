Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B3A7E67B
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 01:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 23DC322C44;
	Thu,  1 Aug 2019 23:41:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tIbbBG3pTtxJ; Thu,  1 Aug 2019 23:41:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB1ED228E7;
	Thu,  1 Aug 2019 23:41:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 693941BF395
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 23:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 658A2228D5
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 23:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QN-AMLvdils2 for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 23:41:53 +0000 (UTC)
X-Greylist: delayed 00:35:58 by SQLgrey-1.7.6
Received: from mail-ot1-f74.google.com (mail-ot1-f74.google.com
 [209.85.210.74])
 by silver.osuosl.org (Postfix) with ESMTPS id 215AE228B4
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 23:41:53 +0000 (UTC)
Received: by mail-ot1-f74.google.com with SMTP id a8so40118017oti.8
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 16:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Q8S6sBR/EDTcEWov03yTX8vEHgSrUzDM01pDpuH2jZ4=;
 b=YZXPrbN9uObA2Jl9VVSGXgNRzykbiYE/fs3pbhidBME76TTmSarWpnZSQ7X39+F0ou
 JQrTvb04xQ5Gm8Qi8/VnonZDdBHAcK18MS6OB1B1I2DDdpElnw/XadvEnYkhB3fP4fED
 P1MayVzSWMK7kHsemKAJcqLiJcVX1tiOwUd0bH5JcJ+BuPKe9EScjjUfwqLlz9AGusBv
 qUotVh40xOGoZ0cE3Mc5sAywuKAyxKW8IB86IRZ1q27lTgt3ZLlTlnVgcLmiuPoY1oy4
 bArhkyIxr6RrYMdGPs/QqFS7QK+mrnqI49Lpu+vysV5/CacoHP4/qbk0Au7lU8ed4mdF
 Y38g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Q8S6sBR/EDTcEWov03yTX8vEHgSrUzDM01pDpuH2jZ4=;
 b=jIQxz4eogOknup35/SIb3Hsy3fmeb4D+0vrVL7671PwmAlY7/ZF+fdrCO1uHY48vd9
 m8CyR1wpc6WVU8yvncOnfUF6YnlRobMB1E6iwv/4biYUMgmJXGf5b428GRp1ZxnDWp6o
 EZXWnNGFQm0YSusaW3dzKFKqrQYhPWtE7ClAEFNvZpF6x1g1NMjmkWGDfnQFH1MRORUL
 17R6LiDzq2jWYMNYSlprnrNK6x6Mb15w3NHEajaTkptMOYq4ffSNz3MLlhl4MphMK1rR
 O6pngMn8PNBQCbzzjtwUlCMANtQz1h2ejJeIWGG6kT7Ms3yVQqOs8vARwepOWBujrEYV
 SaZg==
X-Gm-Message-State: APjAAAW5gabb44fXPojoGAYN3oJHfxoKK7tIBmaLd9hWJg0h4n7C/JqY
 oKbKY7lIDTl3gXUTQ9FCEnK6mu22QUE=
X-Google-Smtp-Source: APXvYqxoB79TCfX3OovycYkRN4gWxwtMQhOboagfCQrm1BcM75QPCFwXBpt41q4AHDtMjnKrmor0xtsHznw=
X-Received: by 2002:a63:3147:: with SMTP id x68mr58481466pgx.212.1564698971325; 
 Thu, 01 Aug 2019 15:36:11 -0700 (PDT)
Date: Thu,  1 Aug 2019 15:35:56 -0700
Message-Id: <20190801223556.209184-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH] Add default binder devices through binderfs when configured
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

If CONFIG_ANDROID_BINDERFS is set, the default binder devices
specified by CONFIG_ANDROID_BINDER_DEVICES are created in each
binderfs instance instead of global devices being created by
the binder driver.

Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Hridya Valsaraju <hridya@google.com>
---
 drivers/android/binder.c   |  3 ++-
 drivers/android/binderfs.c | 46 ++++++++++++++++++++++++++++++++++----
 2 files changed, 44 insertions(+), 5 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 466b6a7f8ab7..65a99ac26711 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -6279,7 +6279,8 @@ static int __init binder_init(void)
 				    &transaction_log_fops);
 	}
 
-	if (strcmp(binder_devices_param, "") != 0) {
+	if (!IS_ENABLED(CONFIG_ANDROID_BINDERFS) &&
+	    strcmp(binder_devices_param, "") != 0) {
 		/*
 		* Copy the module_parameter string, because we don't want to
 		* tokenize it in-place.
diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index e773f45d19d9..9f5ed50ffd70 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -48,6 +48,10 @@ static dev_t binderfs_dev;
 static DEFINE_MUTEX(binderfs_minors_mutex);
 static DEFINE_IDA(binderfs_minors);
 
+static char *binder_devices_param = CONFIG_ANDROID_BINDER_DEVICES;
+module_param_named(devices, binder_devices_param, charp, 0444);
+MODULE_PARM_DESC(devices, "Binder devices to be created by default");
+
 /**
  * binderfs_mount_opts - mount options for binderfs
  * @max: maximum number of allocatable binderfs binder devices
@@ -135,7 +139,6 @@ static int binderfs_binder_device_create(struct inode *ref_inode,
 #else
 	bool use_reserve = true;
 #endif
-
 	/* Reserve new minor number for the new device. */
 	mutex_lock(&binderfs_minors_mutex);
 	if (++info->device_count <= info->mount_opts.max)
@@ -186,8 +189,7 @@ static int binderfs_binder_device_create(struct inode *ref_inode,
 	req->major = MAJOR(binderfs_dev);
 	req->minor = minor;
 
-	ret = copy_to_user(userp, req, sizeof(*req));
-	if (ret) {
+	if (userp && copy_to_user(userp, req, sizeof(*req))) {
 		ret = -EFAULT;
 		goto err;
 	}
@@ -467,6 +469,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
 	int ret;
 	struct binderfs_info *info;
 	struct inode *inode = NULL;
+	struct binderfs_device device_info = { 0 };
+	const char *name;
+	size_t len;
 
 	sb->s_blocksize = PAGE_SIZE;
 	sb->s_blocksize_bits = PAGE_SHIFT;
@@ -521,7 +526,28 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
 	if (!sb->s_root)
 		return -ENOMEM;
 
-	return binderfs_binder_ctl_create(sb);
+	ret = binderfs_binder_ctl_create(sb);
+	if (ret)
+		return ret;
+
+	name = binder_devices_param;
+	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
+		/*
+		 * init_binderfs() has already checked that the length of
+		 * device_name_entry->name is not greater than device_info.name.
+		 */
+		strscpy(device_info.name, name, len + 1);
+		ret = binderfs_binder_device_create(inode, NULL, &device_info);
+		if (ret)
+			return ret;
+		name += len;
+		if (*name == ',')
+			name++;
+
+	}
+
+	return 0;
+
 }
 
 static struct dentry *binderfs_mount(struct file_system_type *fs_type,
@@ -553,6 +579,18 @@ static struct file_system_type binder_fs_type = {
 int __init init_binderfs(void)
 {
 	int ret;
+	const char *name;
+	size_t len;
+
+	/* Verify that the default binderfs device names are valid. */
+	name = binder_devices_param;
+	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
+		if (len > BINDERFS_MAX_NAME)
+			return -E2BIG;
+		name += len;
+		if (*name == ',')
+			name++;
+	}
 
 	/* Allocate new major number for binderfs. */
 	ret = alloc_chrdev_region(&binderfs_dev, 0, BINDERFS_MAX_MINOR,
-- 
2.22.0.770.g0f2c4a37fd-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
