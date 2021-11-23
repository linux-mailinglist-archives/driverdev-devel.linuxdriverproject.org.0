Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD1745AC21
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Nov 2021 20:18:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C4C080034;
	Tue, 23 Nov 2021 19:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id beqGryOX_HA8; Tue, 23 Nov 2021 19:18:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8C1780D67;
	Tue, 23 Nov 2021 19:18:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 867431BF30C
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 19:17:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 765F180D67
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 19:17:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L71u1elyTeZd for <devel@linuxdriverproject.org>;
 Tue, 23 Nov 2021 19:17:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60F3A80D59
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 19:17:51 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 x14-20020a627c0e000000b0049473df362dso115547pfc.12
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 11:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=h6a8aHtmkUJYmuWJluyLt+BM7ZWlx66k12Es0pJA0Gk=;
 b=jU1STX8A3bbqW20HNEPIjFyJpFtUXIDAIjpXhNwfaWzeL1B4K9SkhSWLMzRxgD8Jkc
 tuljT5DxGUoCap0f/u7sWdk3bMmFxxvZvySFo586L+yB6RBXs2lM9qiB4h0GLB64q2b2
 /ElVhlRWfKj6oHaZv/JVKPLpwWdy6UZAM81To2W6f4ysiKVRSndVAcmidP+CBGBMfLj+
 61lGgPkw+RVOXdwF1icXaDIefXt188HXLrWv+mD7SyVUTxQC5U5WHqjxwjLWG4OVZc1l
 2j9Bjn3EONq+jp8bCYQ5oQIj9fbNI0r37iw7zcHUTPvigkZEHJVG0Rp3HyUTemQu7qqZ
 ROKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=h6a8aHtmkUJYmuWJluyLt+BM7ZWlx66k12Es0pJA0Gk=;
 b=RC9LPjtIPTeVv1LxWlwKssDBUBgCJ0kJRZfpI27SsC7uqJCYFc6d+L9ETpr8iATTpw
 dy33ZomWj2DkmHJAxgPuAmaQM4DHUI6JFDY1OWPNRhfQWrj9TMed4Svbc0orssJ1t+cn
 tTt/vG11V05kTjxYR8+u8l9T0ecDeq9d8W5asfryAjcUNIJ1ajis6bfWFrpiEMMe9vjW
 EnpkN+EQV+Yz+mEFMueAWUu9qWqot2UgIAyATXUTbS1YGiGCEz37L1I21SURUFwCAcg7
 KWZq0b561G1Z5KnE2RLv6rNH5NLQdQDKFQyEjBXP8+HEOwU9YDor+th6zBrQ+6ecQ9Sy
 BWKA==
X-Gm-Message-State: AOAM530//ieO3D5a5/IJTIrm5WRY2UpbHNeMKt4HDLpdWFNbIm4DLVnJ
 jCw0xCeYIMGncC8fFanYwtA4HzNq5Q==
X-Google-Smtp-Source: ABdhPJwwYr/nKJbNYlzRB1v9RrttuU3wwiLuN6IpbbBiQ3apwsmO82CvE9J8r5ENAWwWCYghksO2Wppu7w==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:ac67:ee23:d7c5:aa3b])
 (user=tkjos job=sendgmr) by 2002:a17:90b:1c87:: with SMTP id
 oo7mr5872042pjb.159.1637695070767; Tue, 23 Nov 2021 11:17:50 -0800 (PST)
Date: Tue, 23 Nov 2021 11:17:37 -0800
In-Reply-To: <20211123191737.1296541-1-tkjos@google.com>
Message-Id: <20211123191737.1296541-4-tkjos@google.com>
Mime-Version: 1.0
References: <20211123191737.1296541-1-tkjos@google.com>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
Subject: [PATCH 3/3] binder: defer copies of pre-patched txn data
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

BINDER_TYPE_PTR objects point to memory areas in the
source process to be copied into the target buffer
as part of a transaction. This implements a scatter-
gather model where non-contiguous memory in a source
process is "gathered" into a contiguous region in
the target buffer.

The data can include pointers that must be fixed up
to correctly point to the copied data. To avoid making
source process pointers visible to the target process,
this patch defers the copy until the fixups are known
and then copies and fixeups are done together.

There is a special case of BINDER_TYPE_FDA which applies
the fixup later in the target process context. In this
case the user data is skipped (so no untranslated fds
become visible to the target).

Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 311 +++++++++++++++++++++++++++++++++++----
 1 file changed, 286 insertions(+), 25 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 2300fa8e09d5..56dc814b8dde 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2233,7 +2233,258 @@ static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
 	return ret;
 }
 
-static int binder_translate_fd_array(struct binder_fd_array_object *fda,
+/**
+ * struct binder_ptr_fixup - data to be fixed-up in target buffer
+ * @offset	offset in target buffer to fixup
+ * @skip_size	bytes to skip in copy (fixup will be written later)
+ * @fixup_data	data to write at fixup offset
+ * @node	list node
+ *
+ * This is used for the pointer fixup list (pf) which is created and consumed
+ * during binder_transaction() and is only accessed locally. No
+ * locking is necessary.
+ *
+ * The list is ordered by @offset.
+ */
+struct binder_ptr_fixup {
+	binder_size_t offset;
+	size_t skip_size;
+	binder_uintptr_t fixup_data;
+	struct list_head node;
+};
+
+/**
+ * struct binder_sg_copy - scatter-gather data to be copied
+ * @offset	offset in target buffer
+ * @uaddr	user address in source buffer
+ * @length	bytes to copy
+ * @node	list node
+ *
+ * This is used for the sg copy list (sgc) which is created and consumed
+ * during binder_transaction() and is only accessed locally. No
+ * locking is necessary.
+ *
+ * The list is ordered by @offset.
+ */
+struct binder_sg_copy {
+	binder_size_t offset;
+	const void __user *uaddr;
+	size_t length;
+	struct list_head node;
+};
+
+/**
+ * binder_do_deferred_txn_copies() - copy and fixup scatter-gather data
+ * @alloc:	binder_alloc associated with @buffer
+ * @buffer:	binder buffer in target process
+ * @sgc_head:	list_head of scatter-gather copy list
+ * @pf_head:	list_head of pointer fixup list
+ *
+ * Processes all elements of @sgc_head, applying fixups from @pf_head
+ * and copying the scatter-gather data from the source process' user
+ * buffer to the target's buffer. It is expected that the list creation
+ * and processing all occurs during binder_transaction() so these lists
+ * are only accessed in local context.
+ *
+ * Return: 0=success, else -errno
+ */
+static int binder_do_deferred_txn_copies(struct binder_alloc *alloc,
+					 struct binder_buffer *buffer,
+					 struct list_head *sgc_head,
+					 struct list_head *pf_head)
+{
+	int ret = 0;
+	struct list_head *entry, *tmp;
+	struct binder_ptr_fixup *pf =
+		list_first_entry_or_null(pf_head, struct binder_ptr_fixup,
+					 node);
+
+	list_for_each_safe(entry, tmp, sgc_head) {
+		size_t bytes_copied = 0;
+		struct binder_sg_copy *sgc =
+			container_of(entry, struct binder_sg_copy, node);
+
+		while (bytes_copied < sgc->length) {
+			size_t copy_size;
+			size_t bytes_left = sgc->length - bytes_copied;
+			size_t offset = sgc->offset + bytes_copied;
+
+			/*
+			 * We copy up to the fixup (pointed to by pf)
+			 */
+			copy_size = pf ? min(bytes_left, (size_t)pf->offset - offset)
+				       : bytes_left;
+			if (!ret && copy_size)
+				ret = binder_alloc_copy_user_to_buffer(
+						alloc, buffer,
+						offset,
+						sgc->uaddr + bytes_copied,
+						copy_size);
+			bytes_copied += copy_size;
+			if (copy_size != bytes_left) {
+				BUG_ON(!pf);
+				/* we stopped at a fixup offset */
+				if (pf->skip_size) {
+					/*
+					 * we are just skipping. This is for
+					 * BINDER_TYPE_FDA where the translated
+					 * fds will be fixed up when we get
+					 * to target context.
+					 */
+					bytes_copied += pf->skip_size;
+				} else {
+					/* apply the fixup indicated by pf */
+					if (!ret)
+						ret = binder_alloc_copy_to_buffer(
+							alloc, buffer,
+							pf->offset,
+							&pf->fixup_data,
+							sizeof(pf->fixup_data));
+					bytes_copied += sizeof(pf->fixup_data);
+				}
+				list_del(&pf->node);
+				kfree(pf);
+				pf = list_first_entry_or_null(pf_head,
+						struct binder_ptr_fixup, node);
+			}
+		}
+		list_del(&sgc->node);
+		kfree(sgc);
+	}
+	BUG_ON(!list_empty(pf_head));
+	BUG_ON(!list_empty(sgc_head));
+
+	return ret;
+}
+
+/**
+ * binder_cleanup_deferred_txn_lists() - free specified lists
+ * @sgc_head:	list_head of scatter-gather copy list
+ * @pf_head:	list_head of pointer fixup list
+ *
+ * Called to clean up @sgc_head and @pf_head if there is an
+ * error.
+ */
+static void binder_cleanup_deferred_txn_lists(struct list_head *sgc_head,
+					      struct list_head *pf_head)
+{
+	struct list_head *entry, *tmp;
+
+	list_for_each_safe(entry, tmp, sgc_head) {
+		struct binder_sg_copy *sgc =
+			container_of(entry, struct binder_sg_copy, node);
+		list_del(&sgc->node);
+		kfree(sgc);
+	}
+	list_for_each_safe(entry, tmp, pf_head) {
+		struct binder_ptr_fixup *pf =
+			container_of(entry, struct binder_ptr_fixup, node);
+		list_del(&pf->node);
+		kfree(pf);
+	}
+}
+
+/**
+ * binder_defer_copy() - queue a scatter-gather buffer for copy
+ * @sgc_head:	list_head of scatter-gather copy list
+ * @offset:	binder buffer offset in target process
+ * @uaddr:	user address in source process
+ * @length:	bytes to copy
+ *
+ * Specify a scatter-gather block to be copied. The actual copy must
+ * be deferred until all the needed fixups are identified and queued.
+ * Then the copy and fixups are done together so un-translated values
+ * from the source are never visible in the target buffer.
+ *
+ * We are guaranteed that repeated calls to this function will have
+ * monotonically increasing @offset values so the list will naturally
+ * be ordered.
+ *
+ * Return: 0=success, else -errno
+ */
+static int binder_defer_copy(struct list_head *sgc_head, binder_size_t offset,
+			     const void __user *uaddr, size_t length)
+{
+	struct binder_sg_copy *bc = kzalloc(sizeof(*bc), GFP_KERNEL);
+
+	if (!bc)
+		return -ENOMEM;
+
+	bc->offset = offset;
+	bc->uaddr = uaddr;
+	bc->length = length;
+	INIT_LIST_HEAD(&bc->node);
+
+	/*
+	 * We are guaranteed that the deferred copies are in-order
+	 * so just add to the tail.
+	 */
+	list_add_tail(&bc->node, sgc_head);
+
+	return 0;
+}
+
+/**
+ * binder_add_fixup() - queue a fixup to be applied to sg copy
+ * @pf_head:	list_head of binder ptr fixup list
+ * @offset:	binder buffer offset in target process
+ * @fixup:	bytes to be copied for fixup
+ * @skip_size:	bytes to skip when copying (fixup will be applied later)
+ *
+ * Add the specified fixup to a list ordered by @offset. When copying
+ * the scatter-gather buffers, the fixup will be copied instead of
+ * data from the source buffer. For BINDER_TYPE_FDA fixups, the fixup
+ * will be applied later (in target process context), so we just skip
+ * the bytes specified by @skip_size. If @skip_size is 0, we copy the
+ * value in @fixup.
+ *
+ * This function is called *mostly* in @offset order, but there are
+ * exceptions. Since out-of-order inserts are relatively uncommon,
+ * we insert the new element by searching backward from the tail of
+ * the list.
+ *
+ * Return: 0=success, else -errno
+ */
+static int binder_add_fixup(struct list_head *pf_head, binder_size_t offset,
+			    binder_uintptr_t fixup, size_t skip_size)
+{
+	struct binder_ptr_fixup *pf = kzalloc(sizeof(*pf), GFP_KERNEL);
+	struct list_head *tmp;
+
+	if (!pf)
+		return -ENOMEM;
+
+	pf->offset = offset;
+	pf->fixup_data = fixup;
+	pf->skip_size = skip_size;
+	INIT_LIST_HEAD(&pf->node);
+
+	/* Fixups are *mostly* added in-order, but there are some
+	 * exceptions. Look backwards through list for insertion point.
+	 */
+	if (!list_empty(pf_head)) {
+		list_for_each_prev(tmp, pf_head) {
+			struct binder_ptr_fixup *tmppf =
+				list_entry(tmp, struct binder_ptr_fixup, node);
+
+			if (tmppf->offset < pf->offset) {
+				list_add(&pf->node, tmp);
+				return 0;
+			}
+		}
+		/*
+		 * if we get here, then the new offset is the lowest so
+		 * insert at the head
+		 */
+		list_add(&pf->node, pf_head);
+		return 0;
+	}
+	list_add_tail(&pf->node, pf_head);
+	return 0;
+}
+
+static int binder_translate_fd_array(struct list_head *pf_head,
+				     struct binder_fd_array_object *fda,
 				     const void __user *u,
 				     struct binder_buffer_object *parent,
 				     struct binder_buffer_object *uparent,
@@ -2245,6 +2496,7 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 	binder_size_t fda_offset;
 	const void __user *ufda_base;
 	struct binder_proc *proc = thread->proc;
+	int ret;
 
 	fd_buf_size = sizeof(u32) * fda->num_fds;
 	if (fda->num_fds >= SIZE_MAX / sizeof(u32)) {
@@ -2276,9 +2528,12 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 				  proc->pid, thread->pid);
 		return -EINVAL;
 	}
+	ret = binder_add_fixup(pf_head, fda_offset, 0, fda->num_fds * sizeof(u32));
+	if (ret)
+		return ret;
+
 	for (fdi = 0; fdi < fda->num_fds; fdi++) {
 		u32 fd;
-		int ret;
 		binder_size_t offset = fda_offset + fdi * sizeof(fd);
 		binder_size_t uoffset = fdi * sizeof(fd);
 
@@ -2292,7 +2547,8 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 	return 0;
 }
 
-static int binder_fixup_parent(struct binder_transaction *t,
+static int binder_fixup_parent(struct list_head *pf_head,
+			       struct binder_transaction *t,
 			       struct binder_thread *thread,
 			       struct binder_buffer_object *bp,
 			       binder_size_t off_start_offset,
@@ -2338,14 +2594,7 @@ static int binder_fixup_parent(struct binder_transaction *t,
 	}
 	buffer_offset = bp->parent_offset +
 			(uintptr_t)parent->buffer - (uintptr_t)b->user_data;
-	if (binder_alloc_copy_to_buffer(&target_proc->alloc, b, buffer_offset,
-					&bp->buffer, sizeof(bp->buffer))) {
-		binder_user_error("%d:%d got transaction with invalid parent offset\n",
-				  proc->pid, thread->pid);
-		return -EINVAL;
-	}
-
-	return 0;
+	return binder_add_fixup(pf_head, buffer_offset, bp->buffer, 0);
 }
 
 /**
@@ -2487,8 +2736,12 @@ static void binder_transaction(struct binder_proc *proc,
 	int t_debug_id = atomic_inc_return(&binder_last_id);
 	char *secctx = NULL;
 	u32 secctx_sz = 0;
+	struct list_head sgc_head;
+	struct list_head pf_head;
 	const void __user *user_buffer = (const void __user *)
 				(uintptr_t)tr->data.ptr.buffer;
+	INIT_LIST_HEAD(&sgc_head);
+	INIT_LIST_HEAD(&pf_head);
 
 	e = binder_transaction_log_add(&binder_transaction_log);
 	e->debug_id = t_debug_id;
@@ -3006,8 +3259,8 @@ static void binder_transaction(struct binder_proc *proc,
 				return_error_line = __LINE__;
 				goto err_bad_parent;
 			}
-			ret = binder_translate_fd_array(fda, user_buffer,
-							parent,
+			ret = binder_translate_fd_array(&pf_head, fda,
+							user_buffer, parent,
 							&user_object.bbo, t,
 							thread, in_reply_to);
 			if (ret < 0 ||
@@ -3038,19 +3291,14 @@ static void binder_transaction(struct binder_proc *proc,
 				return_error_line = __LINE__;
 				goto err_bad_offset;
 			}
-			if (binder_alloc_copy_user_to_buffer(
-						&target_proc->alloc,
-						t->buffer,
-						sg_buf_offset,
-						(const void __user *)
-							(uintptr_t)bp->buffer,
-						bp->length)) {
-				binder_user_error("%d:%d got transaction with invalid offsets ptr\n",
-						  proc->pid, thread->pid);
-				return_error_param = -EFAULT;
+			ret = binder_defer_copy(&sgc_head, sg_buf_offset,
+				(const void __user *)(uintptr_t)bp->buffer,
+				bp->length);
+			if (ret) {
 				return_error = BR_FAILED_REPLY;
+				return_error_param = ret;
 				return_error_line = __LINE__;
-				goto err_copy_data_failed;
+				goto err_translate_failed;
 			}
 			/* Fixup buffer pointer to target proc address space */
 			bp->buffer = (uintptr_t)
@@ -3059,7 +3307,8 @@ static void binder_transaction(struct binder_proc *proc,
 
 			num_valid = (buffer_offset - off_start_offset) /
 					sizeof(binder_size_t);
-			ret = binder_fixup_parent(t, thread, bp,
+			ret = binder_fixup_parent(&pf_head, t,
+						  thread, bp,
 						  off_start_offset,
 						  num_valid,
 						  last_fixup_obj_off,
@@ -3099,6 +3348,17 @@ static void binder_transaction(struct binder_proc *proc,
 		return_error_line = __LINE__;
 		goto err_copy_data_failed;
 	}
+
+	ret = binder_do_deferred_txn_copies(&target_proc->alloc, t->buffer,
+					    &sgc_head, &pf_head);
+	if (ret) {
+		binder_user_error("%d:%d got transaction with invalid offsets ptr\n",
+				  proc->pid, thread->pid);
+		return_error = BR_FAILED_REPLY;
+		return_error_param = ret;
+		return_error_line = __LINE__;
+		goto err_copy_data_failed;
+	}
 	if (t->buffer->oneway_spam_suspect)
 		tcomplete->type = BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT;
 	else
@@ -3172,6 +3432,7 @@ static void binder_transaction(struct binder_proc *proc,
 err_bad_offset:
 err_bad_parent:
 err_copy_data_failed:
+	binder_cleanup_deferred_txn_lists(&sgc_head, &pf_head);
 	binder_free_txn_fixups(t);
 	trace_binder_transaction_failed_buffer_release(t->buffer);
 	binder_transaction_buffer_release(target_proc, NULL, t->buffer,
-- 
2.34.0.rc2.393.gf8c9666880-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
