Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9132242FEF3
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Oct 2021 01:38:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A518E40877;
	Fri, 15 Oct 2021 23:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwvOUy_1vqGa; Fri, 15 Oct 2021 23:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B580B40876;
	Fri, 15 Oct 2021 23:38:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 196BA1BF336
 for <devel@linuxdriverproject.org>; Fri, 15 Oct 2021 23:38:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02AF540876
 for <devel@linuxdriverproject.org>; Fri, 15 Oct 2021 23:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JooS1ydNIHk4 for <devel@linuxdriverproject.org>;
 Fri, 15 Oct 2021 23:38:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A23C4078F
 for <devel@driverdev.osuosl.org>; Fri, 15 Oct 2021 23:38:16 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 i21-20020a253b15000000b005b9c0fbba45so12990609yba.20
 for <devel@driverdev.osuosl.org>; Fri, 15 Oct 2021 16:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=LgZx2gyU7+brRv5aiN0oii+nN50bf2cC7za5oQ9rp8U=;
 b=PLYjtcfo6gK6CFeWjXpE8xbQDQwDhU9poRm7tfVdSwucK14C58F2qlAJyifG2TETMZ
 xCS1MK+g2ziKWxjBBndKXROcdahBsjMq+l4zuSCs4zQUpcbMQtptwde/OjouuJc08DMX
 NmyE7hX5uj+KcQqMH2F9IyRGnc7exCPAAMrBmVYbdvm8Rd/kHHa3XzFvZQ89nQQndkmW
 1pREFIuxdM+StPhYs7Oeu3/0GIMoLw5dC8ENcbYzk5soyfpJLgTP7yrFL96S7qhiS6La
 dSHtJE/cC6IIqlQ5mvUerca3ClSj+4jcrptvTKP6FjlXA/PJF9eYIN1shNGZQSugbFAz
 OWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=LgZx2gyU7+brRv5aiN0oii+nN50bf2cC7za5oQ9rp8U=;
 b=IU7UMcJPTFgw26i2B2IamyqykIvvR3TCRGuOJjuPPFYngj5lBX8UBThZ6sa4MziO0F
 9jklea6Fbn9w4+KHbsw9uo+pHztINc7WR9ryihZucHHi7ux9KyeNbRC2Mmo6zQMHbMbg
 sYU/TPcJ9bYE9Ug/FSPTFS9N48sBAh84SGaBge9t9/9TYu7sSMSbdp9RxIZHOfLQ5Np2
 vwIjsGGtNqh4VJQYrQ7Dr4aI7jFWzpuxhVL8yX1pgH7ZS7Rn9E8HHNig7mTDPU0LknMU
 JJ8mowgXHObktVnhNyXp3IAWPluST07BzCJV3eu2lSyLyzrsZR5fpQ1apeVo2wEBBkcc
 FNkg==
X-Gm-Message-State: AOAM533Tii8aAzmf4/FEcW8sLe4+GgHIEN1aLXgBgxvtHQ3uQSvCdNG8
 6io4u5tEEgqphta+tKgGUu5ZOotAoQ==
X-Google-Smtp-Source: ABdhPJxEDGdVVMenm/sX8xOmG9IFsHUV1PDfzHRM1HesKJwF9WfDiTdctWGq2QGDt8ymMQeubkzAlrcVoA==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:b298:286b:4728:da92])
 (user=tkjos job=sendgmr) by 2002:a25:6150:: with SMTP id
 v77mr15450286ybb.530.1634341095202; 
 Fri, 15 Oct 2021 16:38:15 -0700 (PDT)
Date: Fri, 15 Oct 2021 16:38:11 -0700
Message-Id: <20211015233811.3532235-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.1079.g6e70778dc9-goog
Subject: [PATCH] binder: don't detect sender/target during buffer cleanup
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, jannh@google.com, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org, maco@google.com
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

When freeing txn buffers, binder_transaction_buffer_release()
attempts to detect whether the current context is the target by
comparing current->group_leader to proc->tsk. This is an unreliable
test. Instead explicitly pass an 'is_failure' boolean.

Detecting the sender was being used as a way to tell if the
transaction failed to be sent.  When cleaning up after
failing to send a transaction, there is no need to close
the fds associated with a BINDER_TYPE_FDA object. Now
'is_failure' can be used to accurately detect this case.

Fixes: 44d8047f1d87 ("binder: use standard functions to allocate fds")
Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 9edacc8b9768..fe4c3b49eec1 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -1870,7 +1870,7 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
 		binder_dec_node(buffer->target_node, 1, 0);
 
 	off_start_offset = ALIGN(buffer->data_size, sizeof(void *));
-	off_end_offset = is_failure ? failed_at :
+	off_end_offset = is_failure && failed_at ? failed_at :
 				off_start_offset + buffer->offsets_size;
 	for (buffer_offset = off_start_offset; buffer_offset < off_end_offset;
 	     buffer_offset += sizeof(binder_size_t)) {
@@ -1956,9 +1956,8 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
 			binder_size_t fd_buf_size;
 			binder_size_t num_valid;
 
-			if (proc->tsk != current->group_leader) {
+			if (is_failure) {
 				/*
-				 * Nothing to do if running in sender context
 				 * The fd fixups have not been applied so no
 				 * fds need to be closed.
 				 */
@@ -3185,6 +3184,7 @@ static void binder_transaction(struct binder_proc *proc,
  * binder_free_buf() - free the specified buffer
  * @proc:	binder proc that owns buffer
  * @buffer:	buffer to be freed
+ * @is_failure:	failed to send transaction
  *
  * If buffer for an async transaction, enqueue the next async
  * transaction from the node.
@@ -3194,7 +3194,7 @@ static void binder_transaction(struct binder_proc *proc,
 static void
 binder_free_buf(struct binder_proc *proc,
 		struct binder_thread *thread,
-		struct binder_buffer *buffer)
+		struct binder_buffer *buffer, bool is_failure)
 {
 	binder_inner_proc_lock(proc);
 	if (buffer->transaction) {
@@ -3222,7 +3222,7 @@ binder_free_buf(struct binder_proc *proc,
 		binder_node_inner_unlock(buf_node);
 	}
 	trace_binder_transaction_buffer_release(buffer);
-	binder_transaction_buffer_release(proc, thread, buffer, 0, false);
+	binder_transaction_buffer_release(proc, thread, buffer, 0, is_failure);
 	binder_alloc_free_buf(&proc->alloc, buffer);
 }
 
@@ -3424,7 +3424,7 @@ static int binder_thread_write(struct binder_proc *proc,
 				     proc->pid, thread->pid, (u64)data_ptr,
 				     buffer->debug_id,
 				     buffer->transaction ? "active" : "finished");
-			binder_free_buf(proc, thread, buffer);
+			binder_free_buf(proc, thread, buffer, false);
 			break;
 		}
 
@@ -4117,7 +4117,7 @@ static int binder_thread_read(struct binder_proc *proc,
 			buffer->transaction = NULL;
 			binder_cleanup_transaction(t, "fd fixups failed",
 						   BR_FAILED_REPLY);
-			binder_free_buf(proc, thread, buffer);
+			binder_free_buf(proc, thread, buffer, true);
 			binder_debug(BINDER_DEBUG_FAILED_TRANSACTION,
 				     "%d:%d %stransaction %d fd fixups failed %d/%d, line %d\n",
 				     proc->pid, thread->pid,
-- 
2.33.0.1079.g6e70778dc9-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
