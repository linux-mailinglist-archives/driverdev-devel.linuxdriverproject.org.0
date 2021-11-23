Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6016D45AC1F
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Nov 2021 20:18:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 821EA402CB;
	Tue, 23 Nov 2021 19:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iwsRqO5xut5l; Tue, 23 Nov 2021 19:18:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C45B5401DF;
	Tue, 23 Nov 2021 19:18:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C5871BF30C
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 19:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4804B40374
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 19:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e-suPq4KeFCv for <devel@linuxdriverproject.org>;
 Tue, 23 Nov 2021 19:17:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 756B94025F
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 19:17:49 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 i3-20020a170902c94300b0014287dc7dcbso9461421pla.16
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 11:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/Wu/IKe6vm9acow98kpO8yBnX9ceqcYGYutL6tcKfK0=;
 b=hmkBTACZzy2j54PF8xrGe9hwc8AR0rBojligfCQWISqUqYyPSM0IfIcQuKSPYtH14C
 2EFGTK8oph0UFdJo9R7LV8+WVJbup6DZi28Wyvj6cdufH7Dn8vlylxirAXtd3fXeDWiZ
 e7zdvq+zQWM+O0+ktc3uZ8hzsl6nwfs4N48bJdPS//pgxGqXxFw0CRIhywFO0KGL/vLh
 WJknTdo90Ccve1mvwxgKX7mkFN2mk2xHuwxs0kVb8iXyvz9mVU7jdV82Hcv1ZaMHyv0F
 Gl5Hh1ENGOK0c/vSTEs0PgyBW4mXQ8HLqXFTYN+c2pqs0ej/ikA5gvlqr44j8jEz+xlk
 hZig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/Wu/IKe6vm9acow98kpO8yBnX9ceqcYGYutL6tcKfK0=;
 b=gempZi7XuVwHW59gQXc5cqA9hDmeolOYvGQU5K5VVZYognOFJnNafnMZK5SY4xnQD9
 SDmFRElC78QnnSzkYBxvyPANYH8jD/I+p58TJTB8PiTPDUH7/VfmzgKJ/6OmxLDNbRto
 KXUp1rMPqBEBRUdlno7BoQdva7nA9mbUX4DMB3qFc12crteT1EO0WqELJmANalGgJqAN
 CGPt9aG6ppvuv164MaNhDRKDL8BKEZflZK870ohCUiY8FamTlQ0qGiv/2VHkMWIrTIT1
 CGF10Ti13HQ12qsNoExqajTwpItwtG+OhHSY8OX07BfHpvWLCGFu0go0UPzeFWhbVonC
 z5eQ==
X-Gm-Message-State: AOAM531QixPzQesZsJum1FrkPkRaOhFAxl3FahMMZDvu6QdS4qlNhVSQ
 ZBpDMLKmrKAzHAx7AGEpipUlyz9W3Q==
X-Google-Smtp-Source: ABdhPJzVLB9/5VB0XxIBPaGi6wOqp+JkRmcFPzIVlssCjibjD+3ga+3scZfLoV6B5DMEWxYNl5ccwBdJuw==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:ac67:ee23:d7c5:aa3b])
 (user=tkjos job=sendgmr) by 2002:a17:90b:3810:: with SMTP id
 mq16mr6028528pjb.128.1637695068910; Tue, 23 Nov 2021 11:17:48 -0800 (PST)
Date: Tue, 23 Nov 2021 11:17:36 -0800
In-Reply-To: <20211123191737.1296541-1-tkjos@google.com>
Message-Id: <20211123191737.1296541-3-tkjos@google.com>
Mime-Version: 1.0
References: <20211123191737.1296541-1-tkjos@google.com>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
Subject: [PATCH 2/3] binder: read pre-translated fds from sender buffer
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
Cc: joel@joelfernandes.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since we are no longer going to copy the pre-fixup
data from the target buffer, we need to read
pre-translated FD array information from the source
buffer.

Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 40 +++++++++++++++++++++++++++++++++-------
 1 file changed, 33 insertions(+), 7 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 571d3c203557..2300fa8e09d5 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2234,15 +2234,17 @@ static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
 }
 
 static int binder_translate_fd_array(struct binder_fd_array_object *fda,
+				     const void __user *u,
 				     struct binder_buffer_object *parent,
+				     struct binder_buffer_object *uparent,
 				     struct binder_transaction *t,
 				     struct binder_thread *thread,
 				     struct binder_transaction *in_reply_to)
 {
 	binder_size_t fdi, fd_buf_size;
 	binder_size_t fda_offset;
+	const void __user *ufda_base;
 	struct binder_proc *proc = thread->proc;
-	struct binder_proc *target_proc = t->to_proc;
 
 	fd_buf_size = sizeof(u32) * fda->num_fds;
 	if (fda->num_fds >= SIZE_MAX / sizeof(u32)) {
@@ -2266,7 +2268,10 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 	 */
 	fda_offset = (parent->buffer - (uintptr_t)t->buffer->user_data) +
 		fda->parent_offset;
-	if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32))) {
+	ufda_base = (void __user *)uparent->buffer + fda->parent_offset;
+
+	if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32)) ||
+	    !IS_ALIGNED((unsigned long)ufda_base, sizeof(u32))) {
 		binder_user_error("%d:%d parent offset not aligned correctly.\n",
 				  proc->pid, thread->pid);
 		return -EINVAL;
@@ -2275,10 +2280,9 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 		u32 fd;
 		int ret;
 		binder_size_t offset = fda_offset + fdi * sizeof(fd);
+		binder_size_t uoffset = fdi * sizeof(fd);
 
-		ret = binder_alloc_copy_from_buffer(&target_proc->alloc,
-						    &fd, t->buffer,
-						    offset, sizeof(fd));
+		ret = copy_from_user(&fd, ufda_base + uoffset, sizeof(fd));
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
@@ -2982,8 +2988,28 @@ static void binder_transaction(struct binder_proc *proc,
 				return_error_line = __LINE__;
 				goto err_bad_parent;
 			}
-			ret = binder_translate_fd_array(fda, parent, t, thread,
-							in_reply_to);
+
+			/*
+			 * We need to read the user version of the parent
+			 * object to get the original user offset
+			 */
+			user_parent_size =
+				binder_get_object(proc, user_buffer, t->buffer,
+						  parent_offset, &user_object);
+			if (user_parent_size != sizeof(user_object.bbo)) {
+				binder_user_error("%d:%d invalid ptr object size: %lld vs %lld\n",
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
 			if (ret < 0 ||
 			    binder_alloc_copy_to_buffer(&target_proc->alloc,
 							t->buffer,
-- 
2.34.0.rc2.393.gf8c9666880-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
