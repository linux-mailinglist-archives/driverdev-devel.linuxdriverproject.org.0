Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090A7463E25
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Nov 2021 19:53:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3F48404BE;
	Tue, 30 Nov 2021 18:52:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DDlbs9HdZhS1; Tue, 30 Nov 2021 18:52:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 229B2403CE;
	Tue, 30 Nov 2021 18:52:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A8FA1BF5AA
 for <devel@linuxdriverproject.org>; Tue, 30 Nov 2021 18:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 39A776060B
 for <devel@linuxdriverproject.org>; Tue, 30 Nov 2021 18:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84fUbj4wlWwZ for <devel@linuxdriverproject.org>;
 Tue, 30 Nov 2021 18:52:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B6AF605CE
 for <devel@driverdev.osuosl.org>; Tue, 30 Nov 2021 18:52:19 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 q19-20020a056a00151300b004a4ca777976so13341319pfu.19
 for <devel@driverdev.osuosl.org>; Tue, 30 Nov 2021 10:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/x4shhy8P1gipGO2qyj7usThSAMQkMN2iF2OByB0V/o=;
 b=Cm70hsrsrudib05kVHncJdIXwt6nBgtVsgNJLvRu5+nP7ySNiBQHA6knfFo5Zo0P7P
 RQd5P7GtM4j5zTf0V8XMRWtPa88Z0mu5ESP1SKG2dBgb0R7GEP/zLsJ45fyZRBITs+56
 TEYjZ06WFKNSOdRakC2H1MTsxQ4fuQGd4aqxw96wjnS4s4RGNsLFjuKzBBZpbmXiEVjU
 9oU+hprXKEytuQRgSzyVsNCGZQa5fLxFSocGhRmOSOKFN0C+Vpo+YX50RFNF538hjl+z
 j9MBs3VMuuZEqwSKi+dDa8xaeAWq8Fq67dZ+iVDWihBwUoIYZ1VCJsn1tIBRy/Z7mlKT
 yxWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/x4shhy8P1gipGO2qyj7usThSAMQkMN2iF2OByB0V/o=;
 b=1h7Dra9n+sPiLhcBzLK5toOm1vgYmVXzrWtCl1FgOZCp/PDhJ2urLyKlnYbIQZ4fSm
 lz0M18lLUf9MRTj+Md4anjwmoHgneKeXL+nt60A0UOlwzU4wYKMkA5k5erPRpcVZ7HXC
 YMh0tv7IZdaVi5TRVq6R8mSwFunaLkuTXJ+LuIh6qr9jc4T26v2mogbBqrN5AbVsYxhf
 6UKv1ORVPHmT2crzeJ4hbN8ll41NIv1W335gdvshNMHGYAoysYYYwootEtn2gBW+h/qF
 AkK+aqpPlNNBQvBfgslvFBnWSDxLc1XnjTASDCfsagVwl41EjWdOck4ca2Fyp3rDKX6M
 o/5A==
X-Gm-Message-State: AOAM530fvjNws2VamnwPdki5gLi8qSW5SvpR/iYov/msG52mT4IxHAxW
 kUsXxO6L0qVd9qyvKpq9KlDbLfiu7Q==
X-Google-Smtp-Source: ABdhPJztoFBmzaSNYWw1ElKlHnlfHYTXIpGjHCyNGky8A6Kva9DQSRjCflRUk31qgXugJ4QQE9QH3npnWw==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:2355:b4ef:3d57:5d7d])
 (user=tkjos job=sendgmr) by 2002:aa7:9575:0:b0:49f:ddab:dcdb with SMTP id
 x21-20020aa79575000000b0049fddabdcdbmr818875pfq.13.1638298339025; Tue, 30 Nov
 2021 10:52:19 -0800 (PST)
Date: Tue, 30 Nov 2021 10:51:51 -0800
In-Reply-To: <20211130185152.437403-1-tkjos@google.com>
Message-Id: <20211130185152.437403-4-tkjos@google.com>
Mime-Version: 1.0
References: <20211130185152.437403-1-tkjos@google.com>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
Subject: [PATCH v2 3/4] binder: read pre-translated fds from sender buffer
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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
Cc: joel@joelfernandes.org, Martijn Coenen <maco@android.com>,
 kernel-team@android.com, avakj45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch is to prepare for an up coming patch where we read
pre-translated fds from the sender buffer and translate them before
copying them to the target.  It does not change run time.

The patch adds two new parameters to binder_translate_fd_array() to
hold the sender buffer and sender buffer parent.  These parameters let
us call copy_from_user() directly from the sender instead of using
binder_alloc_copy_from_buffer() to copy from the target.  Also the patch
adds some new alignment checks.  Previously the alignment checks would
have been done in a different place, but this lets us print more
useful error messages.

Reviewed-by: Martijn Coenen <maco@android.com>
Signed-off-by: Todd Kjos <tkjos@google.com>
---
v2: Addressed comments from Dan Carpenter
- Re-wrote commit message as suggested
- renamed "u" and "user" locals to "sender_*" for clarity
- fixed printk format for size_t

 drivers/android/binder.c | 39 ++++++++++++++++++++++++++++++++-------
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 3cd3e82866aa..9eb24d8a4d2f 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2234,15 +2234,17 @@ static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
 }
 
 static int binder_translate_fd_array(struct binder_fd_array_object *fda,
+				     const void __user *sender_ubuffer,
 				     struct binder_buffer_object *parent,
+				     struct binder_buffer_object *sender_uparent,
 				     struct binder_transaction *t,
 				     struct binder_thread *thread,
 				     struct binder_transaction *in_reply_to)
 {
 	binder_size_t fdi, fd_buf_size;
 	binder_size_t fda_offset;
+	const void __user *sender_ufda_base;
 	struct binder_proc *proc = thread->proc;
-	struct binder_proc *target_proc = t->to_proc;
 
 	fd_buf_size = sizeof(u32) * fda->num_fds;
 	if (fda->num_fds >= SIZE_MAX / sizeof(u32)) {
@@ -2266,7 +2268,10 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 	 */
 	fda_offset = (parent->buffer - (uintptr_t)t->buffer->user_data) +
 		fda->parent_offset;
-	if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32))) {
+	sender_ufda_base = (void __user *)sender_uparent->buffer + fda->parent_offset;
+
+	if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32)) ||
+	    !IS_ALIGNED((unsigned long)sender_ufda_base, sizeof(u32))) {
 		binder_user_error("%d:%d parent offset not aligned correctly.\n",
 				  proc->pid, thread->pid);
 		return -EINVAL;
@@ -2275,10 +2280,9 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 		u32 fd;
 		int ret;
 		binder_size_t offset = fda_offset + fdi * sizeof(fd);
+		binder_size_t sender_uoffset = fdi * sizeof(fd);
 
-		ret = binder_alloc_copy_from_buffer(&target_proc->alloc,
-						    &fd, t->buffer,
-						    offset, sizeof(fd));
+		ret = copy_from_user(&fd, sender_ufda_base + sender_uoffset, sizeof(fd));
 		if (!ret)
 			ret = binder_translate_fd(fd, offset, t, thread,
 						  in_reply_to);
@@ -2951,6 +2955,8 @@ static void binder_transaction(struct binder_proc *proc,
 		case BINDER_TYPE_FDA: {
 			struct binder_object ptr_object;
 			binder_size_t parent_offset;
+			struct binder_object user_object;
+			size_t user_parent_size;
 			struct binder_fd_array_object *fda =
 				to_binder_fd_array_object(hdr);
 			size_t num_valid = (buffer_offset - off_start_offset) /
@@ -2982,8 +2988,27 @@ static void binder_transaction(struct binder_proc *proc,
 				return_error_line = __LINE__;
 				goto err_bad_parent;
 			}
-			ret = binder_translate_fd_array(fda, parent, t, thread,
-							in_reply_to);
+			/*
+			 * We need to read the user version of the parent
+			 * object to get the original user offset
+			 */
+			user_parent_size =
+				binder_get_object(proc, user_buffer, t->buffer,
+						  parent_offset, &user_object);
+			if (user_parent_size != sizeof(user_object.bbo)) {
+				binder_user_error("%d:%d invalid ptr object size: %zd vs %zd\n",
+						  proc->pid, thread->pid,
+						  user_parent_size,
+						  sizeof(user_object.bbo));
+				return_error = BR_FAILED_REPLY;
+				return_error_param = -EINVAL;
+				return_error_line = __LINE__;
+				goto err_bad_parent;
+			}
+			ret = binder_translate_fd_array(fda, user_buffer,
+							parent,
+							&user_object.bbo, t,
+							thread, in_reply_to);
 			if (!ret)
 				ret = binder_alloc_copy_to_buffer(&target_proc->alloc,
 								  t->buffer,
-- 
2.34.0.rc2.393.gf8c9666880-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
