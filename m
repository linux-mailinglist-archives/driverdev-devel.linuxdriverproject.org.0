Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5240D16ABB0
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 17:34:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D72CD86501;
	Mon, 24 Feb 2020 16:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SlR3sUkDH7pK; Mon, 24 Feb 2020 16:34:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DED63864E0;
	Mon, 24 Feb 2020 16:34:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 804301BF3EE
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C41B20516
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXZh-VS3S410 for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 16:34:19 +0000 (UTC)
X-Greylist: delayed 00:31:35 by SQLgrey-1.7.6
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by silver.osuosl.org (Postfix) with ESMTPS id 3177C2050E
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 16:34:19 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id o22so11244355qko.2
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 08:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=1WV6K2GjUPXrnMuCvXfNGZjI8gN7sC/HTTUM1yqzUqo=;
 b=QqJVprrvyHfdsHSLq8J7Ts7lEm+ySD6dj7D1BYCv4Pe5UmR3I7fN5zUASSCXXmo97y
 2WHPIJeGC90MUiDQ17t/SgW+OS96E0LSlYCKdB0wzlx6uP7herc/sppzXmWaw/QoPA6u
 TztG4DQErqDxvGZPL884+8gDsimDRp5ULI9KfhWsPyu+vtjmZbs1XVoOCYafFEy2WxLq
 l9ycMOQP1mwGbYhyTLFfSS1z5KSh8cKHNZRt63YWI8XPcChWzjCnuOK/cV0WgmUCNFjN
 LnFwhuND7tqRy1ryRiCSV1/nXU/phpmBPa/2UdFUDD39GvzY/3XZoeiT9uYGUNf4yLj+
 A+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=1WV6K2GjUPXrnMuCvXfNGZjI8gN7sC/HTTUM1yqzUqo=;
 b=js1a+tkE0gcAlsL59620fxsVhv8bADu1O51CC44JJulWLKQgtzr3wNpPqRt5rjlY30
 yjzl1lqrXld83K8DKCHBW9Gdb358BHXT6tOda1mVO9vn3UPubXVCzMNjVo7mDtjOyC3B
 IXogCGp/lLBUCOUW8C7y5UQcPaGu5gKZBMp8AioHynqD0dUSFFpjlX8U2xZ3vSGnf6ZP
 Sx+KRXrtj/LGpzPUEWlyvY6F1veX8oYuBVH77OSclPAk4zBEsy87vwrQTdANwBVeQbYN
 ugNMCB8qR8oVYzFJw5hLcPIKmyrt5Po0Uou//pysRAseGzMYBO5ZzV6CqfO16/xWpaLh
 e1/w==
X-Gm-Message-State: APjAAAWHNjM3cI2u5MTkF265btXP+Rh7vcBAzCot+oSXGng8cLZURK59
 FyXRMIMdL432nFTdDIpLSBEcmRa0RCE=
X-Google-Smtp-Source: APXvYqwcFycpxpdu6cHDZocFVdUlmKMasj7BnCyVKHw/qZnGWFd6JNB01XLg9B6cohB1QU4+bHodEUIF2P0=
X-Received: by 2002:a37:a6d4:: with SMTP id p203mr9141422qke.350.1582558510940; 
 Mon, 24 Feb 2020 07:35:10 -0800 (PST)
Date: Mon, 24 Feb 2020 16:35:00 +0100
In-Reply-To: <20200224153501.60040-1-glider@google.com>
Message-Id: <20200224153501.60040-2-glider@google.com>
Mime-Version: 1.0
References: <20200224153501.60040-1-glider@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH 2/3] binder: do not initialize locals passed to
 copy_from_user()
From: glider@google.com
To: tkjos@google.com, keescook@chromium.org, gregkh@linuxfoundation.org, 
 arve@android.com, mingo@redhat.com
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
Cc: devel@driverdev.osuosl.org, peterz@infradead.org,
 Alexander Potapenko <glider@google.com>, dvyukov@google.com, jannh@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Certain copy_from_user() invocations in binder.c are known to
unconditionally initialize locals before their first use, like e.g. in
the following case:

	struct binder_transaction_data tr;
	if (copy_from_user(&tr, ptr, sizeof(tr)))
		return -EFAULT;

In such cases enabling CONFIG_INIT_STACK_ALL leads to insertion of
redundant locals initialization that the compiler fails to remove.
To work around this problem till Clang can deal with it, we apply
__do_not_initialize to local Binder structures.

Cc: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Alexander Potapenko <glider@google.com>
---
 drivers/android/binder.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index a6b2082c24f8f..3c91d842ac704 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
 
 		case BC_TRANSACTION_SG:
 		case BC_REPLY_SG: {
-			struct binder_transaction_data_sg tr;
+			struct binder_transaction_data_sg tr __do_not_initialize;
 
 			if (copy_from_user(&tr, ptr, sizeof(tr)))
 				return -EFAULT;
@@ -3799,7 +3799,7 @@ static int binder_thread_write(struct binder_proc *proc,
 		}
 		case BC_TRANSACTION:
 		case BC_REPLY: {
-			struct binder_transaction_data tr;
+			struct binder_transaction_data tr __do_not_initialize;
 
 			if (copy_from_user(&tr, ptr, sizeof(tr)))
 				return -EFAULT;
@@ -4827,7 +4827,7 @@ static int binder_ioctl_write_read(struct file *filp,
 	struct binder_proc *proc = filp->private_data;
 	unsigned int size = _IOC_SIZE(cmd);
 	void __user *ubuf = (void __user *)arg;
-	struct binder_write_read bwr;
+	struct binder_write_read bwr __do_not_initialize;
 
 	if (size != sizeof(struct binder_write_read)) {
 		ret = -EINVAL;
@@ -5039,7 +5039,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		break;
 	}
 	case BINDER_SET_CONTEXT_MGR_EXT: {
-		struct flat_binder_object fbo;
+		struct flat_binder_object fbo __do_not_initialize;
 
 		if (copy_from_user(&fbo, ubuf, sizeof(fbo))) {
 			ret = -EINVAL;
@@ -5076,7 +5076,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		break;
 	}
 	case BINDER_GET_NODE_INFO_FOR_REF: {
-		struct binder_node_info_for_ref info;
+		struct binder_node_info_for_ref info __do_not_initialize;
 
 		if (copy_from_user(&info, ubuf, sizeof(info))) {
 			ret = -EFAULT;
@@ -5095,7 +5095,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		break;
 	}
 	case BINDER_GET_NODE_DEBUG_INFO: {
-		struct binder_node_debug_info info;
+		struct binder_node_debug_info info __do_not_initialize;
 
 		if (copy_from_user(&info, ubuf, sizeof(info))) {
 			ret = -EFAULT;
-- 
2.25.0.265.gbab2e86ba0-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
