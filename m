Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5DE5A21B
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 19:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0328876A4;
	Fri, 28 Jun 2019 17:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2V5QiAiSKeFa; Fri, 28 Jun 2019 17:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20DE587691;
	Fri, 28 Jun 2019 17:18:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E1DB1BF844
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2748E20407
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsQw1OVEp8ry for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 17:18:00 +0000 (UTC)
X-Greylist: delayed 00:19:32 by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 164D3203EA
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 17:18:00 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id 65so4772458oid.13
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PyMZA7LTU3YwuPZ9HL93kOMjaNYFWigetQuCQt+Cqeg=;
 b=biCHnLOxxn11gtPzWstm+TOkw05E3FSxRdvr/cI3M2HZFqnnwzjolid7uXE1pHuG9U
 +/83AjHB4qxTNerJWqJabo0EyPz1QABCBuYstHbwTRj5X5THHfLma2tVBBbdypURbQFI
 i+Y4mYhG7RZ6hEAMCLB3+ERtDRxlav76ebRX0pdpDGRRnn62mtIOtQh6pxzk3zUJmTja
 AmUdpfKnwFbns23NyUxebyU2n912IvTqwUID6bj0R32HULa6BOhyQugU1fYXcvpo1RkA
 iiqKjyWugWlB0iYzzlJMm1v73Wx0CpC22v4b1Lngln0XjymODa3m1uJS7S4NX9X82F6N
 BFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PyMZA7LTU3YwuPZ9HL93kOMjaNYFWigetQuCQt+Cqeg=;
 b=MPlgAcB+PoBtuJ+m+Qkn+JC3TlhbXD9ZWQ2okOXk01IIn44rZJAfybHklYNJlpcDq7
 9mw0MIthLOTbht9MH1pv119YBbijwp2EveMikAcYJhpzbwKpcFl4E3nAEidSqQmwqBCC
 +t6CQbBb8Wm4LLoaDxZV8lvc0QLZAvKaywduWp9lCEyvdY7vJtDI5LKQ8OXJXb841USI
 f77fNX6ryP1Cqy2WkvDUWa3y6zgDe/vjByyzflpy8BNat4y+5+fe6AIxmMOTr16TZlHE
 BfD8QGEG0F9x4CfIIYuQkgyrM4MW8833tazZlDeiF4wBinPE+u0ayoWeMI2WDKHc8gbO
 zc/g==
X-Gm-Message-State: APjAAAXRVjiLSNWNfXVlaD21ILEfMdG40TW3R5DfRelRwV/ydHD0eVFc
 e+C2DXUwFqpYazGIQzbOqrd35LvZtevvdw==
X-Google-Smtp-Source: APXvYqxr1ynSrDmpl/BIWH1F0WuwHJLd4jnNJLCS0Y/IZLxw6W8XC47jFs0KMYMHkPITs7DuSnO0HA==
X-Received: by 2002:a63:6089:: with SMTP id
 u131mr10533192pgb.314.1561740627387; 
 Fri, 28 Jun 2019 09:50:27 -0700 (PDT)
Received: from ava-linux2.mtv.corp.google.com
 ([2620:0:1000:1601:6cc0:d41d:b970:fd7])
 by smtp.googlemail.com with ESMTPSA id h6sm9382535pjs.2.2019.06.28.09.50.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 09:50:26 -0700 (PDT)
From: Todd Kjos <tkjos@android.com>
X-Google-Original-From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, arve@android.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, maco@google.com
Subject: [PATCH] binder: return errors from buffer copy functions
Date: Fri, 28 Jun 2019 09:50:12 -0700
Message-Id: <20190628165012.4841-1-tkjos@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
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
 syzbot+3ae18325f96190606754@syzkaller.appspotmail.com, kernel-team@android.com,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The buffer copy functions assumed the caller would ensure
correct alignment and that the memory to be copied was
completely within the binder buffer. There have been
a few cases discovered by syzkallar where a malformed
transaction created by a user could violated the
assumptions and resulted in a BUG_ON.

The fix is to remove the BUG_ON and always return the
error to be handled appropriately by the caller.

Acked-by: Martijn Coenen <maco@android.com>
Reported-by: syzbot+3ae18325f96190606754@syzkaller.appspotmail.com
Fixes: bde4a19fc04f ("binder: use userspace pointer as base of buffer space")
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c       | 153 ++++++++++++++++++++-------------
 drivers/android/binder_alloc.c |  44 +++++-----
 drivers/android/binder_alloc.h |  22 ++---
 3 files changed, 126 insertions(+), 93 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index bc26b5511f0a9..414492c136ddf 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2059,10 +2059,9 @@ static size_t binder_get_object(struct binder_proc *proc,
 
 	read_size = min_t(size_t, sizeof(*object), buffer->data_size - offset);
 	if (offset > buffer->data_size || read_size < sizeof(*hdr) ||
-	    !IS_ALIGNED(offset, sizeof(u32)))
+	    binder_alloc_copy_from_buffer(&proc->alloc, object, buffer,
+					  offset, read_size))
 		return 0;
-	binder_alloc_copy_from_buffer(&proc->alloc, object, buffer,
-				      offset, read_size);
 
 	/* Ok, now see if we read a complete object. */
 	hdr = &object->hdr;
@@ -2131,8 +2130,10 @@ static struct binder_buffer_object *binder_validate_ptr(
 		return NULL;
 
 	buffer_offset = start_offset + sizeof(binder_size_t) * index;
-	binder_alloc_copy_from_buffer(&proc->alloc, &object_offset,
-				      b, buffer_offset, sizeof(object_offset));
+	if (binder_alloc_copy_from_buffer(&proc->alloc, &object_offset,
+					  b, buffer_offset,
+					  sizeof(object_offset)))
+		return NULL;
 	object_size = binder_get_object(proc, b, object_offset, object);
 	if (!object_size || object->hdr.type != BINDER_TYPE_PTR)
 		return NULL;
@@ -2212,10 +2213,12 @@ static bool binder_validate_fixup(struct binder_proc *proc,
 			return false;
 		last_min_offset = last_bbo->parent_offset + sizeof(uintptr_t);
 		buffer_offset = objects_start_offset +
-			sizeof(binder_size_t) * last_bbo->parent,
-		binder_alloc_copy_from_buffer(&proc->alloc, &last_obj_offset,
-					      b, buffer_offset,
-					      sizeof(last_obj_offset));
+			sizeof(binder_size_t) * last_bbo->parent;
+		if (binder_alloc_copy_from_buffer(&proc->alloc,
+						  &last_obj_offset,
+						  b, buffer_offset,
+						  sizeof(last_obj_offset)))
+			return false;
 	}
 	return (fixup_offset >= last_min_offset);
 }
@@ -2301,15 +2304,15 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
 	for (buffer_offset = off_start_offset; buffer_offset < off_end_offset;
 	     buffer_offset += sizeof(binder_size_t)) {
 		struct binder_object_header *hdr;
-		size_t object_size;
+		size_t object_size = 0;
 		struct binder_object object;
 		binder_size_t object_offset;
 
-		binder_alloc_copy_from_buffer(&proc->alloc, &object_offset,
-					      buffer, buffer_offset,
-					      sizeof(object_offset));
-		object_size = binder_get_object(proc, buffer,
-						object_offset, &object);
+		if (!binder_alloc_copy_from_buffer(&proc->alloc, &object_offset,
+						   buffer, buffer_offset,
+						   sizeof(object_offset)))
+			object_size = binder_get_object(proc, buffer,
+							object_offset, &object);
 		if (object_size == 0) {
 			pr_err("transaction release %d bad object at offset %lld, size %zd\n",
 			       debug_id, (u64)object_offset, buffer->data_size);
@@ -2432,15 +2435,16 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
 			for (fd_index = 0; fd_index < fda->num_fds;
 			     fd_index++) {
 				u32 fd;
+				int err;
 				binder_size_t offset = fda_offset +
 					fd_index * sizeof(fd);
 
-				binder_alloc_copy_from_buffer(&proc->alloc,
-							      &fd,
-							      buffer,
-							      offset,
-							      sizeof(fd));
-				binder_deferred_fd_close(fd);
+				err = binder_alloc_copy_from_buffer(
+						&proc->alloc, &fd, buffer,
+						offset, sizeof(fd));
+				WARN_ON(err);
+				if (!err)
+					binder_deferred_fd_close(fd);
 			}
 		} break;
 		default:
@@ -2683,11 +2687,12 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 		int ret;
 		binder_size_t offset = fda_offset + fdi * sizeof(fd);
 
-		binder_alloc_copy_from_buffer(&target_proc->alloc,
-					      &fd, t->buffer,
-					      offset, sizeof(fd));
-		ret = binder_translate_fd(fd, offset, t, thread,
-					  in_reply_to);
+		ret = binder_alloc_copy_from_buffer(&target_proc->alloc,
+						    &fd, t->buffer,
+						    offset, sizeof(fd));
+		if (!ret)
+			ret = binder_translate_fd(fd, offset, t, thread,
+						  in_reply_to);
 		if (ret < 0)
 			return ret;
 	}
@@ -2740,8 +2745,12 @@ static int binder_fixup_parent(struct binder_transaction *t,
 	}
 	buffer_offset = bp->parent_offset +
 			(uintptr_t)parent->buffer - (uintptr_t)b->user_data;
-	binder_alloc_copy_to_buffer(&target_proc->alloc, b, buffer_offset,
-				    &bp->buffer, sizeof(bp->buffer));
+	if (binder_alloc_copy_to_buffer(&target_proc->alloc, b, buffer_offset,
+					&bp->buffer, sizeof(bp->buffer))) {
+		binder_user_error("%d:%d got transaction with invalid parent offset\n",
+				  proc->pid, thread->pid);
+		return -EINVAL;
+	}
 
 	return 0;
 }
@@ -3160,15 +3169,20 @@ static void binder_transaction(struct binder_proc *proc,
 		goto err_binder_alloc_buf_failed;
 	}
 	if (secctx) {
+		int err;
 		size_t buf_offset = ALIGN(tr->data_size, sizeof(void *)) +
 				    ALIGN(tr->offsets_size, sizeof(void *)) +
 				    ALIGN(extra_buffers_size, sizeof(void *)) -
 				    ALIGN(secctx_sz, sizeof(u64));
 
 		t->security_ctx = (uintptr_t)t->buffer->user_data + buf_offset;
-		binder_alloc_copy_to_buffer(&target_proc->alloc,
-					    t->buffer, buf_offset,
-					    secctx, secctx_sz);
+		err = binder_alloc_copy_to_buffer(&target_proc->alloc,
+						  t->buffer, buf_offset,
+						  secctx, secctx_sz);
+		if (err) {
+			t->security_ctx = 0;
+			WARN_ON(1);
+		}
 		security_release_secctx(secctx, secctx_sz);
 		secctx = NULL;
 	}
@@ -3234,11 +3248,16 @@ static void binder_transaction(struct binder_proc *proc,
 		struct binder_object object;
 		binder_size_t object_offset;
 
-		binder_alloc_copy_from_buffer(&target_proc->alloc,
-					      &object_offset,
-					      t->buffer,
-					      buffer_offset,
-					      sizeof(object_offset));
+		if (binder_alloc_copy_from_buffer(&target_proc->alloc,
+						  &object_offset,
+						  t->buffer,
+						  buffer_offset,
+						  sizeof(object_offset))) {
+			return_error = BR_FAILED_REPLY;
+			return_error_param = -EINVAL;
+			return_error_line = __LINE__;
+			goto err_bad_offset;
+		}
 		object_size = binder_get_object(target_proc, t->buffer,
 						object_offset, &object);
 		if (object_size == 0 || object_offset < off_min) {
@@ -3262,15 +3281,17 @@ static void binder_transaction(struct binder_proc *proc,
 
 			fp = to_flat_binder_object(hdr);
 			ret = binder_translate_binder(fp, t, thread);
-			if (ret < 0) {
+
+			if (ret < 0 ||
+			    binder_alloc_copy_to_buffer(&target_proc->alloc,
+							t->buffer,
+							object_offset,
+							fp, sizeof(*fp))) {
 				return_error = BR_FAILED_REPLY;
 				return_error_param = ret;
 				return_error_line = __LINE__;
 				goto err_translate_failed;
 			}
-			binder_alloc_copy_to_buffer(&target_proc->alloc,
-						    t->buffer, object_offset,
-						    fp, sizeof(*fp));
 		} break;
 		case BINDER_TYPE_HANDLE:
 		case BINDER_TYPE_WEAK_HANDLE: {
@@ -3278,15 +3299,16 @@ static void binder_transaction(struct binder_proc *proc,
 
 			fp = to_flat_binder_object(hdr);
 			ret = binder_translate_handle(fp, t, thread);
-			if (ret < 0) {
+			if (ret < 0 ||
+			    binder_alloc_copy_to_buffer(&target_proc->alloc,
+							t->buffer,
+							object_offset,
+							fp, sizeof(*fp))) {
 				return_error = BR_FAILED_REPLY;
 				return_error_param = ret;
 				return_error_line = __LINE__;
 				goto err_translate_failed;
 			}
-			binder_alloc_copy_to_buffer(&target_proc->alloc,
-						    t->buffer, object_offset,
-						    fp, sizeof(*fp));
 		} break;
 
 		case BINDER_TYPE_FD: {
@@ -3296,16 +3318,17 @@ static void binder_transaction(struct binder_proc *proc,
 			int ret = binder_translate_fd(fp->fd, fd_offset, t,
 						      thread, in_reply_to);
 
-			if (ret < 0) {
+			fp->pad_binder = 0;
+			if (ret < 0 ||
+			    binder_alloc_copy_to_buffer(&target_proc->alloc,
+							t->buffer,
+							object_offset,
+							fp, sizeof(*fp))) {
 				return_error = BR_FAILED_REPLY;
 				return_error_param = ret;
 				return_error_line = __LINE__;
 				goto err_translate_failed;
 			}
-			fp->pad_binder = 0;
-			binder_alloc_copy_to_buffer(&target_proc->alloc,
-						    t->buffer, object_offset,
-						    fp, sizeof(*fp));
 		} break;
 		case BINDER_TYPE_FDA: {
 			struct binder_object ptr_object;
@@ -3393,15 +3416,16 @@ static void binder_transaction(struct binder_proc *proc,
 						  num_valid,
 						  last_fixup_obj_off,
 						  last_fixup_min_off);
-			if (ret < 0) {
+			if (ret < 0 ||
+			    binder_alloc_copy_to_buffer(&target_proc->alloc,
+							t->buffer,
+							object_offset,
+							bp, sizeof(*bp))) {
 				return_error = BR_FAILED_REPLY;
 				return_error_param = ret;
 				return_error_line = __LINE__;
 				goto err_translate_failed;
 			}
-			binder_alloc_copy_to_buffer(&target_proc->alloc,
-						    t->buffer, object_offset,
-						    bp, sizeof(*bp));
 			last_fixup_obj_off = object_offset;
 			last_fixup_min_off = 0;
 		} break;
@@ -4140,20 +4164,27 @@ static int binder_apply_fd_fixups(struct binder_proc *proc,
 		trace_binder_transaction_fd_recv(t, fd, fixup->offset);
 		fd_install(fd, fixup->file);
 		fixup->file = NULL;
-		binder_alloc_copy_to_buffer(&proc->alloc, t->buffer,
-					    fixup->offset, &fd,
-					    sizeof(u32));
+		if (binder_alloc_copy_to_buffer(&proc->alloc, t->buffer,
+						fixup->offset, &fd,
+						sizeof(u32))) {
+			ret = -EINVAL;
+			break;
+		}
 	}
 	list_for_each_entry_safe(fixup, tmp, &t->fd_fixups, fixup_entry) {
 		if (fixup->file) {
 			fput(fixup->file);
 		} else if (ret) {
 			u32 fd;
-
-			binder_alloc_copy_from_buffer(&proc->alloc, &fd,
-						      t->buffer, fixup->offset,
-						      sizeof(fd));
-			binder_deferred_fd_close(fd);
+			int err;
+
+			err = binder_alloc_copy_from_buffer(&proc->alloc, &fd,
+							    t->buffer,
+							    fixup->offset,
+							    sizeof(fd));
+			WARN_ON(err);
+			if (!err)
+				binder_deferred_fd_close(fd);
 		}
 		list_del(&fixup->fixup_entry);
 		kfree(fixup);
diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index ce5603c2291c6..6d79a1b0d4463 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -1119,15 +1119,16 @@ binder_alloc_copy_user_to_buffer(struct binder_alloc *alloc,
 	return 0;
 }
 
-static void binder_alloc_do_buffer_copy(struct binder_alloc *alloc,
-					bool to_buffer,
-					struct binder_buffer *buffer,
-					binder_size_t buffer_offset,
-					void *ptr,
-					size_t bytes)
+static int binder_alloc_do_buffer_copy(struct binder_alloc *alloc,
+				       bool to_buffer,
+				       struct binder_buffer *buffer,
+				       binder_size_t buffer_offset,
+				       void *ptr,
+				       size_t bytes)
 {
 	/* All copies must be 32-bit aligned and 32-bit size */
-	BUG_ON(!check_buffer(alloc, buffer, buffer_offset, bytes));
+	if (!check_buffer(alloc, buffer, buffer_offset, bytes))
+		return -EINVAL;
 
 	while (bytes) {
 		unsigned long size;
@@ -1155,25 +1156,26 @@ static void binder_alloc_do_buffer_copy(struct binder_alloc *alloc,
 		ptr = ptr + size;
 		buffer_offset += size;
 	}
+	return 0;
 }
 
-void binder_alloc_copy_to_buffer(struct binder_alloc *alloc,
-				 struct binder_buffer *buffer,
-				 binder_size_t buffer_offset,
-				 void *src,
-				 size_t bytes)
+int binder_alloc_copy_to_buffer(struct binder_alloc *alloc,
+				struct binder_buffer *buffer,
+				binder_size_t buffer_offset,
+				void *src,
+				size_t bytes)
 {
-	binder_alloc_do_buffer_copy(alloc, true, buffer, buffer_offset,
-				    src, bytes);
+	return binder_alloc_do_buffer_copy(alloc, true, buffer, buffer_offset,
+					   src, bytes);
 }
 
-void binder_alloc_copy_from_buffer(struct binder_alloc *alloc,
-				   void *dest,
-				   struct binder_buffer *buffer,
-				   binder_size_t buffer_offset,
-				   size_t bytes)
+int binder_alloc_copy_from_buffer(struct binder_alloc *alloc,
+				  void *dest,
+				  struct binder_buffer *buffer,
+				  binder_size_t buffer_offset,
+				  size_t bytes)
 {
-	binder_alloc_do_buffer_copy(alloc, false, buffer, buffer_offset,
-				    dest, bytes);
+	return binder_alloc_do_buffer_copy(alloc, false, buffer, buffer_offset,
+					   dest, bytes);
 }
 
diff --git a/drivers/android/binder_alloc.h b/drivers/android/binder_alloc.h
index 71bfa95f8e09b..db9c1b984695d 100644
--- a/drivers/android/binder_alloc.h
+++ b/drivers/android/binder_alloc.h
@@ -159,17 +159,17 @@ binder_alloc_copy_user_to_buffer(struct binder_alloc *alloc,
 				 const void __user *from,
 				 size_t bytes);
 
-void binder_alloc_copy_to_buffer(struct binder_alloc *alloc,
-				 struct binder_buffer *buffer,
-				 binder_size_t buffer_offset,
-				 void *src,
-				 size_t bytes);
-
-void binder_alloc_copy_from_buffer(struct binder_alloc *alloc,
-				   void *dest,
-				   struct binder_buffer *buffer,
-				   binder_size_t buffer_offset,
-				   size_t bytes);
+int binder_alloc_copy_to_buffer(struct binder_alloc *alloc,
+				struct binder_buffer *buffer,
+				binder_size_t buffer_offset,
+				void *src,
+				size_t bytes);
+
+int binder_alloc_copy_from_buffer(struct binder_alloc *alloc,
+				  void *dest,
+				  struct binder_buffer *buffer,
+				  binder_size_t buffer_offset,
+				  size_t bytes);
 
 #endif /* _LINUX_BINDER_ALLOC_H */
 
-- 
2.22.0.410.gd8fdbe21b5-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
