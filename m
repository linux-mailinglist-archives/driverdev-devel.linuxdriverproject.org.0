Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 249C424D4F2
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 14:26:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6D3886D64;
	Fri, 21 Aug 2020 12:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vpCMus4Q09mT; Fri, 21 Aug 2020 12:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6AB0786D62;
	Fri, 21 Aug 2020 12:25:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A89A1BF2BC
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 12:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 84EC086D56
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 12:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0hNjky08lEv for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 12:25:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6094F86C34
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 12:25:55 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id si26so2028355ejb.12
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 05:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MBhjOe9jxif78jjgULVGYKNI4hDj2978jERSSLuKlp4=;
 b=lVObcrhUyDqRgOWOkFYLTeh8hoTncZMZK2Dxtvk/P0MMgDy8VwTchbCI0W09Rrbc6g
 3stVgW7b1n3gVMsU9TA3Z+h6DCNLQHvF+CxVaeLoYiIhUHeEAnHrJ1oF8mBC8lD2FOc7
 CywPIPDkStLyd/ga/XSakSM2hXU8wIAM7x1UUqgau1+ynm4vLaX11ULAdAoyJCJ2jym+
 LhNUvpftXo7U1bqvp+aRUP+Fdw6V8vA3ifIR3UaJQsuUidTcE+KbBo1M/BW/YRMlmClx
 /c6JhS9hsJ91ekLO3sFJMoMmkYt4ARDHlZE9HnCiZqMd0LO1D0y7MSDBYm21IvBEP/DT
 OTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MBhjOe9jxif78jjgULVGYKNI4hDj2978jERSSLuKlp4=;
 b=CSuMy7hxmmHX8+W1QFmBEFF4aYLCdO+Di+UBGu11nYBll3Bdb4sXAEGekFjdg20iwz
 Zb2Ntm1pMkojrcEwehHhSicwAucFOL6WNYwa36tTzc0YCRAedYjh60KJ2I2x++j8o8yJ
 Lee4BbBQqSMC/SllSCvEpF5Nd3+GOfQBEdNfUn6B4TBw4yFlYthz/UdMzROIPia1HVz6
 3nD+WAFx4TTlPYORqnRww9gwRiRXklJCt8Zy1WsJrYqTo7oKjb2CJzMPt1ZMGSWy4S+M
 FvtktgeklxWW18ZmebM4cMSt1N8RWVyMKSHwa6/kq24otN3F2K5/zU/8cvzWI8jyAu5A
 lyww==
X-Gm-Message-State: AOAM533kyuq8iEEP19ytRdQxUafk+78IbbpKLKRSXAty/PxYiJZUeIV6
 Pmu3ft9qB3Gm5hhRarm/g4Nqow==
X-Google-Smtp-Source: ABdhPJw3L8lcW4AlvcWFpCags+v1VcHSRyixSLiXsNheuy9dS6+t1cy8BQ/MIfDw9yKPlIbsYiTZHA==
X-Received: by 2002:a17:906:dbf4:: with SMTP id
 yd20mr2494026ejb.369.1598012753395; 
 Fri, 21 Aug 2020 05:25:53 -0700 (PDT)
Received: from maco2.ams.corp.google.com (a83-162-234-235.adsl.xs4all.nl.
 [83.162.234.235])
 by smtp.gmail.com with ESMTPSA id qp16sm1235885ejb.89.2020.08.21.05.25.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Aug 2020 05:25:52 -0700 (PDT)
From: Martijn Coenen <maco@android.com>
To: gregkh@linuxfoundation.org, tkjos@google.com, arve@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com
Subject: [PATCH v3] binder: print warnings when detecting oneway spamming.
Date: Fri, 21 Aug 2020 14:25:44 +0200
Message-Id: <20200821122544.1277051-1-maco@android.com>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
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
Cc: devel@driverdev.osuosl.org, maco@google.com,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The most common cause of the binder transaction buffer filling up is a
client rapidly firing oneway transactions into a process, before it has
a chance to handle them. Yet the root cause of this is often hard to
debug, because either the system or the app will stop, and by that time
binder debug information we dump in bugreports is no longer relevant.

This change warns as soon as a process dips below 80% of its oneway
space (less than 100kB available in the configuration), when any one
process is responsible for either more than 50 transactions, or more
than 50% of the oneway space.

Signed-off-by: Martijn Coenen <maco@android.com>
---
v2: fixed call-site in binder_alloc_selftest

v3: include size of struct binder_buffer in calculation, fix comments

 drivers/android/binder.c                |  2 +-
 drivers/android/binder_alloc.c          | 55 +++++++++++++++++++++++--
 drivers/android/binder_alloc.h          |  5 ++-
 drivers/android/binder_alloc_selftest.c |  2 +-
 4 files changed, 58 insertions(+), 6 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f936530a19b0..946332bc871a 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3136,7 +3136,7 @@ static void binder_transaction(struct binder_proc *proc,
 
 	t->buffer = binder_alloc_new_buf(&target_proc->alloc, tr->data_size,
 		tr->offsets_size, extra_buffers_size,
-		!reply && (t->flags & TF_ONE_WAY));
+		!reply && (t->flags & TF_ONE_WAY), current->tgid);
 	if (IS_ERR(t->buffer)) {
 		/*
 		 * -ESRCH indicates VMA cleared. The target is dying.
diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index 69609696a843..b5b6c9cf1b0b 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -338,12 +338,50 @@ static inline struct vm_area_struct *binder_alloc_get_vma(
 	return vma;
 }
 
+static void debug_low_async_space_locked(struct binder_alloc *alloc, int pid)
+{
+	/*
+	 * Find the amount and size of buffers allocated by the current caller;
+	 * The idea is that once we cross the threshold, whoever is responsible
+	 * for the low async space is likely to try to send another async txn,
+	 * and at some point we'll catch them in the act. This is more efficient
+	 * than keeping a map per pid.
+	 */
+	struct rb_node *n = alloc->free_buffers.rb_node;
+	struct binder_buffer *buffer;
+	size_t total_alloc_size = 0;
+	size_t num_buffers = 0;
+
+	for (n = rb_first(&alloc->allocated_buffers); n != NULL;
+		 n = rb_next(n)) {
+		buffer = rb_entry(n, struct binder_buffer, rb_node);
+		if (buffer->pid != pid)
+			continue;
+		if (!buffer->async_transaction)
+			continue;
+		total_alloc_size += binder_alloc_buffer_size(alloc, buffer)
+			+ sizeof(struct binder_buffer);
+		num_buffers++;
+	}
+
+	/*
+	 * Warn if this pid has more than 50 transactions, or more than 50% of
+	 * async space (which is 25% of total buffer size).
+	 */
+	if (num_buffers > 50 || total_alloc_size > alloc->buffer_size / 4) {
+		binder_alloc_debug(BINDER_DEBUG_USER_ERROR,
+			     "%d: pid %d spamming oneway? %zd buffers allocated for a total size of %zd\n",
+			      alloc->pid, pid, num_buffers, total_alloc_size);
+	}
+}
+
 static struct binder_buffer *binder_alloc_new_buf_locked(
 				struct binder_alloc *alloc,
 				size_t data_size,
 				size_t offsets_size,
 				size_t extra_buffers_size,
-				int is_async)
+				int is_async,
+				int pid)
 {
 	struct rb_node *n = alloc->free_buffers.rb_node;
 	struct binder_buffer *buffer;
@@ -486,11 +524,20 @@ static struct binder_buffer *binder_alloc_new_buf_locked(
 	buffer->offsets_size = offsets_size;
 	buffer->async_transaction = is_async;
 	buffer->extra_buffers_size = extra_buffers_size;
+	buffer->pid = pid;
 	if (is_async) {
 		alloc->free_async_space -= size + sizeof(struct binder_buffer);
 		binder_alloc_debug(BINDER_DEBUG_BUFFER_ALLOC_ASYNC,
 			     "%d: binder_alloc_buf size %zd async free %zd\n",
 			      alloc->pid, size, alloc->free_async_space);
+		if (alloc->free_async_space < alloc->buffer_size / 10) {
+			/*
+			 * Start detecting spammers once we have less than 20%
+			 * of async space left (which is less than 10% of total
+			 * buffer size).
+			 */
+			debug_low_async_space_locked(alloc, pid);
+		}
 	}
 	return buffer;
 
@@ -508,6 +555,7 @@ static struct binder_buffer *binder_alloc_new_buf_locked(
  * @offsets_size:       user specified buffer offset
  * @extra_buffers_size: size of extra space for meta-data (eg, security context)
  * @is_async:           buffer for async transaction
+ * @pid:				pid to attribute allocation to (used for debugging)
  *
  * Allocate a new buffer given the requested sizes. Returns
  * the kernel version of the buffer pointer. The size allocated
@@ -520,13 +568,14 @@ struct binder_buffer *binder_alloc_new_buf(struct binder_alloc *alloc,
 					   size_t data_size,
 					   size_t offsets_size,
 					   size_t extra_buffers_size,
-					   int is_async)
+					   int is_async,
+					   int pid)
 {
 	struct binder_buffer *buffer;
 
 	mutex_lock(&alloc->mutex);
 	buffer = binder_alloc_new_buf_locked(alloc, data_size, offsets_size,
-					     extra_buffers_size, is_async);
+					     extra_buffers_size, is_async, pid);
 	mutex_unlock(&alloc->mutex);
 	return buffer;
 }
diff --git a/drivers/android/binder_alloc.h b/drivers/android/binder_alloc.h
index db9c1b984695..55d8b4106766 100644
--- a/drivers/android/binder_alloc.h
+++ b/drivers/android/binder_alloc.h
@@ -32,6 +32,7 @@ struct binder_transaction;
  * @offsets_size:       size of array of offsets
  * @extra_buffers_size: size of space for other objects (like sg lists)
  * @user_data:          user pointer to base of buffer space
+ * @pid:                pid to attribute the buffer to (caller)
  *
  * Bookkeeping structure for binder transaction buffers
  */
@@ -51,6 +52,7 @@ struct binder_buffer {
 	size_t offsets_size;
 	size_t extra_buffers_size;
 	void __user *user_data;
+	int    pid;
 };
 
 /**
@@ -117,7 +119,8 @@ extern struct binder_buffer *binder_alloc_new_buf(struct binder_alloc *alloc,
 						  size_t data_size,
 						  size_t offsets_size,
 						  size_t extra_buffers_size,
-						  int is_async);
+						  int is_async,
+						  int pid);
 extern void binder_alloc_init(struct binder_alloc *alloc);
 extern int binder_alloc_shrinker_init(void);
 extern void binder_alloc_vma_close(struct binder_alloc *alloc);
diff --git a/drivers/android/binder_alloc_selftest.c b/drivers/android/binder_alloc_selftest.c
index 4151d9938255..c2b323bc3b3a 100644
--- a/drivers/android/binder_alloc_selftest.c
+++ b/drivers/android/binder_alloc_selftest.c
@@ -119,7 +119,7 @@ static void binder_selftest_alloc_buf(struct binder_alloc *alloc,
 	int i;
 
 	for (i = 0; i < BUFFER_NUM; i++) {
-		buffers[i] = binder_alloc_new_buf(alloc, sizes[i], 0, 0, 0);
+		buffers[i] = binder_alloc_new_buf(alloc, sizes[i], 0, 0, 0, 0);
 		if (IS_ERR(buffers[i]) ||
 		    !check_buffer_pages_allocated(alloc, buffers[i],
 						  sizes[i])) {
-- 
2.28.0.297.g1956fa8f8d-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
