Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5395D83956
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 21:06:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3CF392202C;
	Tue,  6 Aug 2019 19:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kuixidwx-+RN; Tue,  6 Aug 2019 19:06:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 023A12094D;
	Tue,  6 Aug 2019 19:06:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 156A11BF39F
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 19:06:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C2B8867F2
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 19:06:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J2wUvT0XRBQa for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 19:06:04 +0000 (UTC)
X-Greylist: delayed 00:25:24 by SQLgrey-1.7.6
Received: from mail-qt1-f202.google.com (mail-qt1-f202.google.com
 [209.85.160.202])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2DD0C85608
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 19:06:04 +0000 (UTC)
Received: by mail-qt1-f202.google.com with SMTP id f28so79925190qtg.2
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 12:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3gHpNPP1fnGrZAV26eEJQxjBXqWlw2vn3cK+N4C2Azg=;
 b=aVRbzD5JDu0Fk13cbLAGvxnSJ47je+XwmMOS2Ygv0A6wpqI52paQJaZsXOvsEQJUGz
 BUNrVTEi3/pqNeI+In/GrDkR+SRbMBIzJggCVu60OsO1w4Z5CizfoyBtVsRZ3fibcnxI
 NJSklHKSZKTI8YNGSleyYy3ZQT8gOpVBH+ZNGzskWO5eWS0ZOla8yCKyba65CXAW7wBo
 egVYNnN7h9MwoPdvup7KeQXwDfxIcHCXioCLu1YwI50Wf0aO5UEXQYLSjA6kyZh9S4Mn
 e4O53EGYazUQW6JWQZfCm3Bffma6vJQnbKtySiQ2NqInvVeM1lFieFawaOsHO+MtUl+0
 XjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3gHpNPP1fnGrZAV26eEJQxjBXqWlw2vn3cK+N4C2Azg=;
 b=MNGaRUEb1DYH+1NET9Sebpx2vYQthS1M4O2FW9irQt+n7PxcxXTvU7b9Hzu0znN6tk
 oh0+tGYz7QPLcytbSTEn7ngdkL+NUYi8BDFlbvHVcusfX7ffwQD+qiIEs1NgB3MKY4en
 opNzW89/NNmAtj1pFUwstKrfH+Yx53egZFARs1qEMPVmsmrCb7pVYFz9B38aBUvMot/E
 DpB5mO2XuNkg3za99LIrMDqQv/tYl3CRPgnSfN1fV7u/2BEcedAor4JEIN/5AyQAgzUS
 xNWcT378MbIjGoVO/lGyVqxT76SAB8XMtKyh75gA7PUfPHbgzxqVEhCiLkvqcNtFe1H4
 zoow==
X-Gm-Message-State: APjAAAVWJRk/0LG91foEJ3BjxNv9picfhvbXPl1mYq9QXuubAQULG5Gn
 fR6MRXbExLh/rn/gsXfupGXMC/Sz3qs=
X-Google-Smtp-Source: APXvYqyGwrwx9UimhQcaVkY91plBBeSj6QGmB3xoFdLBqmShltNYoD/THqgcEHQ4tOcwptByKBkbhdpCiH0=
X-Received: by 2002:ac8:541a:: with SMTP id b26mr4433733qtq.229.1565116839255; 
 Tue, 06 Aug 2019 11:40:39 -0700 (PDT)
Date: Tue,  6 Aug 2019 11:40:05 -0700
In-Reply-To: <20190806184007.60739-1-hridya@google.com>
Message-Id: <20190806184007.60739-2-hridya@google.com>
Mime-Version: 1.0
References: <20190806184007.60739-1-hridya@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v2 1/2] binder: Add default binder devices through binderfs
 when configured
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

Currently, since each binderfs instance needs its own
private binder devices, every time a binderfs instance is
mounted, all the default binder devices need to be created
via the BINDER_CTL_ADD IOCTL. This patch aims to
add a solution to automatically create the default binder
devices for each binderfs instance that gets mounted.
To achieve this goal, when CONFIG_ANDROID_BINDERFS is set,
the default binder devices specified by CONFIG_ANDROID_BINDER_DEVICES
are created in each binderfs instance instead of global devices
being created by the binder driver.

Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Hridya Valsaraju <hridya@google.com>
---

Changes in v2:
- Updated commit message as per Greg Kroah-Hartman.
- Removed new module parameter creation as per Greg
  Kroah-Hartman/Christian Brauner.
- Refactored device name length check into a new patch as per Greg Kroah-Hartman.

 drivers/android/binder.c          |  5 +++--
 drivers/android/binder_internal.h |  2 ++
 drivers/android/binderfs.c        | 25 ++++++++++++++++++++++---
 3 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 466b6a7f8ab7..ca6b21a53321 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -123,7 +123,7 @@ static uint32_t binder_debug_mask = BINDER_DEBUG_USER_ERROR |
 	BINDER_DEBUG_FAILED_TRANSACTION | BINDER_DEBUG_DEAD_TRANSACTION;
 module_param_named(debug_mask, binder_debug_mask, uint, 0644);
 
-static char *binder_devices_param = CONFIG_ANDROID_BINDER_DEVICES;
+char *binder_devices_param = CONFIG_ANDROID_BINDER_DEVICES;
 module_param_named(devices, binder_devices_param, charp, 0444);
 
 static DECLARE_WAIT_QUEUE_HEAD(binder_user_error_wait);
@@ -6279,7 +6279,8 @@ static int __init binder_init(void)
 				    &transaction_log_fops);
 	}
 
-	if (strcmp(binder_devices_param, "") != 0) {
+	if (!IS_ENABLED(CONFIG_ANDROID_BINDERFS) &&
+	    strcmp(binder_devices_param, "") != 0) {
 		/*
 		* Copy the module_parameter string, because we don't want to
 		* tokenize it in-place.
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index 045b3e42d98b..fe8c745dc8e0 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -37,6 +37,8 @@ struct binder_device {
 
 extern const struct file_operations binder_fops;
 
+extern char *binder_devices_param;
+
 #ifdef CONFIG_ANDROID_BINDERFS
 extern bool is_binderfs_device(const struct inode *inode);
 #else
diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index e773f45d19d9..886b4e0f482f 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -186,8 +186,7 @@ static int binderfs_binder_device_create(struct inode *ref_inode,
 	req->major = MAJOR(binderfs_dev);
 	req->minor = minor;
 
-	ret = copy_to_user(userp, req, sizeof(*req));
-	if (ret) {
+	if (userp && copy_to_user(userp, req, sizeof(*req))) {
 		ret = -EFAULT;
 		goto err;
 	}
@@ -467,6 +466,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
 	int ret;
 	struct binderfs_info *info;
 	struct inode *inode = NULL;
+	struct binderfs_device device_info = { 0 };
+	const char *name;
+	size_t len;
 
 	sb->s_blocksize = PAGE_SIZE;
 	sb->s_blocksize_bits = PAGE_SHIFT;
@@ -521,7 +523,24 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
 	if (!sb->s_root)
 		return -ENOMEM;
 
-	return binderfs_binder_ctl_create(sb);
+	ret = binderfs_binder_ctl_create(sb);
+	if (ret)
+		return ret;
+
+	name = binder_devices_param;
+	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
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
-- 
2.22.0.770.g0f2c4a37fd-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
