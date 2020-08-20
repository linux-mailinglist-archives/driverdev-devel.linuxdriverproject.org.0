Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3074324B0A5
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 09:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD07488072;
	Thu, 20 Aug 2020 07:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVKiZ3xhLqkl; Thu, 20 Aug 2020 07:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D60887FEA;
	Thu, 20 Aug 2020 07:57:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C60A1BF841
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 07:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 41FEE87D5F
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 07:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUDDU2Ow37RA for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 07:57:42 +0000 (UTC)
X-Greylist: delayed 00:05:44 by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C737087D51
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 07:57:41 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id o23so1427831ejr.1
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 00:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3iJ9/fK5LB+6Kor9RoXGNOLvcbD9Ssuir1D7JZUYEZQ=;
 b=vVTaDo2Ur+t1k5v/hjwxfcOoDSC6nxBbJPQAWOfhKxMOXA13Ayg65BQ4cdgIk57V4m
 /H/zi0NyhUDS1+NL1r4L5tZdYybjr92n6LYfYS2CMej9pejnQoVFBJUczJ4zGric3avP
 Y+2aGEJyGAYfvJvqi5EpCv/GwFeWzIgOTysDc9/D64nI/+rl1A6PJDkFacCqxlEs4ovt
 W+tWkO72YgBOFwtQsIKMv98InuTzozuS9IENFuPIrOkO78YL7YygajKZN9i6i35MsBhN
 YPGLtTSRax2pKNqruLk9xslwMvIe6YSR1gs/3sbg4fWiYMBQFTLyMJCO8kt7WTSfRiIq
 pz5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3iJ9/fK5LB+6Kor9RoXGNOLvcbD9Ssuir1D7JZUYEZQ=;
 b=sAHxtXK9yOgXbWZkKmNtxwqolKugS2dVhRIf76BnUCuHO8K3BlxfJsPti8J7pYgDtS
 MYXMQY2eRfDV7Ee9WU8BGpvXqddz41vkB9j55ZVT5BdV4lTjQGAJYWBJlCCMs3sjmHqe
 B9ApJWWnExoQi0t6Il+GPTC3uHN6zvut7F1n/uXmBzoZuOY05wE7I6w2U+iwVj1xT4dD
 SrTlQQr642/1wOCBYakdKRj2jjtFfnXFB48IqtCgyl+Yqu1m1aPUWPb1sQpAu/+GFedI
 GkfKocI8t+a3HSGfGbEIZnAnQdJagykm2v7pK6WW3p9f3XGaBGu0O3Fhnadi3VKQsiVF
 SLZw==
X-Gm-Message-State: AOAM533XQRREFg+UOcPAfXJNb5fPCONIX9fYMfVMFq4+inq31HIG6RCN
 yD1t3oAx+RLVi8PXDH3ExhzeuFgFqzkMOA==
X-Google-Smtp-Source: ABdhPJyl6aVYd1dRYJ+2QTDFpYpAk07k8IYLGLewCo+zey/nRl010HIldBrnD28vF0nrOD3pIDDQBQ==
X-Received: by 2002:a17:906:a3d5:: with SMTP id
 ca21mr1971315ejb.453.1597909915660; 
 Thu, 20 Aug 2020 00:51:55 -0700 (PDT)
Received: from maco2.ams.corp.google.com (a83-162-234-235.adsl.xs4all.nl.
 [83.162.234.235])
 by smtp.gmail.com with ESMTPSA id p1sm836281edu.11.2020.08.20.00.51.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Aug 2020 00:51:55 -0700 (PDT)
From: Martijn Coenen <maco@android.com>
To: gregkh@linuxfoundation.org, tkjos@google.com, arve@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com
Subject: [PATCH] binder: print warnings when detecting oneway spamming.
Date: Thu, 20 Aug 2020 09:51:33 +0200
Message-Id: <20200820075133.87040-1-maco@android.com>
X-Mailer: git-send-email 2.28.0.220.ged08abb693-goog
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
 drivers/android/binder.c       |  2 +-
 drivers/android/binder_alloc.c | 49 +++++++++++++++++++++++++++++++---
 drivers/android/binder_alloc.h |  5 +++-
 3 files changed, 51 insertions(+), 5 deletions(-)

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
index 69609696a843..76e8e633dbd4 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -338,12 +338,48 @@ static inline struct vm_area_struct *binder_alloc_get_vma(
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
+	size_t buffer_size;
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
+		buffer_size = binder_alloc_buffer_size(alloc, buffer);
+		total_alloc_size += buffer_size;
+		num_buffers++;
+	}
+
+	// Warn if this pid has more than 50% of async space, or more than 50 txns
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
@@ -486,11 +522,16 @@ static struct binder_buffer *binder_alloc_new_buf_locked(
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
+			// Start detecting spammers once we reach 80% of async space used
+			debug_low_async_space_locked(alloc, pid);
+		}
 	}
 	return buffer;
 
@@ -508,6 +549,7 @@ static struct binder_buffer *binder_alloc_new_buf_locked(
  * @offsets_size:       user specified buffer offset
  * @extra_buffers_size: size of extra space for meta-data (eg, security context)
  * @is_async:           buffer for async transaction
+ * @pid:				pid to attribute allocation to (used for debugging)
  *
  * Allocate a new buffer given the requested sizes. Returns
  * the kernel version of the buffer pointer. The size allocated
@@ -520,13 +562,14 @@ struct binder_buffer *binder_alloc_new_buf(struct binder_alloc *alloc,
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
-- 
2.28.0.220.ged08abb693-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
