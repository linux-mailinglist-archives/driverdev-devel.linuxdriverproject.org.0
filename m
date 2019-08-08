Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EE686D67
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 00:50:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CD2B8761F;
	Thu,  8 Aug 2019 22:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7mK3ZdlQdF+0; Thu,  8 Aug 2019 22:50:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96532874D4;
	Thu,  8 Aug 2019 22:49:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2760B1BF35F
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 22:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 242AA847FE
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 22:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ydtZNv8cIn5 for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 22:49:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f202.google.com (mail-vk1-f202.google.com
 [209.85.221.202])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 356ED847D1
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 22:49:54 +0000 (UTC)
Received: by mail-vk1-f202.google.com with SMTP id g68so37852851vkb.1
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 15:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Gg8nHdywARqj4NfIjRfnVnITGpTVJRTSlVwGVid0Qko=;
 b=ijU38H5kf5gPrtFLsVxbQKfJV+WB9zN4OKWEFpdOF99YKzidgPnA3zkMBd4K8IkvjC
 fqru1IJuLAmGAH+rl5s2E2irvjFeeg/y1hk+eOeDvqxrPXtz9ZwiE96E3trFp/3xCfIA
 3M1WynnVATUMgi8dK0mY4H44CrRXdZXHwjdBX68mrx6XYumjQCa4OKjjpnSnnOgN9F+z
 RG0B2UmoA6gdrhwn8iJpNnInXxPz3CkxYoEHmQCpMZI4Ijr0CWmclYLQzVjqzxOOwrJj
 HjEs6n4IlU/rgQDlnktw9GzWpe2AMJ8UcnbiSXn8DlOgYWjnz5dy4pb4qu6qvGkoUx1r
 A/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Gg8nHdywARqj4NfIjRfnVnITGpTVJRTSlVwGVid0Qko=;
 b=Ld6qC2ac6j8zAm8WRqcWwZZACvCnzykQcln+tCaCgywZh0RaDh/cgIR5n6PlZN4Wzi
 sa0b5JJl1DXUZvZfruta7Bt/bGLbUABY40PpQvjV0tEsehHf9pWC0ghHFTpj+oJY3d8O
 PichJrGV0O5YWtrzABVxJY04OiPl0d9BZ16ozdo2FbXXBTw0mvxEsl+ekQ2yzLoqjSK4
 zPiCVtiJQZM9N/AfC/XzToltV0YcmldbsrnSrv12dSekknf1HvM53WF5KdcpEIZDPJ7p
 Nxkyi/TKXZQTeE1/oQmJ0hHwMOiTUVktiP0UPDbSpAN3OV8AtPyht3u7ccWWy6MDcKwo
 j4Cg==
X-Gm-Message-State: APjAAAV7ZndRreaBo529tkMy3tuPP4UB6M/OMD3Pp/wzqchn9IhLmb0R
 nsK6ag7RVhIToc7RnVUInKmu6PbqNZQ=
X-Google-Smtp-Source: APXvYqx6pc8AZYRIy2S2wR703wxN2Gqx0htVtO5Ct/fs0PSgsxmOGzaRIrPBwEeB/GN6lOSy0S/4Lc4qKDE=
X-Received: by 2002:a65:5a44:: with SMTP id z4mr14811850pgs.41.1565303266166; 
 Thu, 08 Aug 2019 15:27:46 -0700 (PDT)
Date: Thu,  8 Aug 2019 15:27:25 -0700
In-Reply-To: <20190808222727.132744-1-hridya@google.com>
Message-Id: <20190808222727.132744-2-hridya@google.com>
Mime-Version: 1.0
References: <20190808222727.132744-1-hridya@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v3 1/2] binder: Add default binder devices through binderfs
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

Changes in v3:
-Removed unnecessary empty lines as per Dan Carpenter.

 drivers/android/binder.c          |  5 +++--
 drivers/android/binder_internal.h |  2 ++
 drivers/android/binderfs.c        | 23 ++++++++++++++++++++---
 3 files changed, 25 insertions(+), 5 deletions(-)

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
index e773f45d19d9..aee46dd1be91 100644
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
@@ -521,7 +523,22 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
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
+	}
+
+	return 0;
 }
 
 static struct dentry *binderfs_mount(struct file_system_type *fs_type,
-- 
2.22.0.770.g0f2c4a37fd-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
