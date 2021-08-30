Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4A23FBD2C
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Aug 2021 21:52:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A97D640466;
	Mon, 30 Aug 2021 19:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ULFOcrwVZ9kk; Mon, 30 Aug 2021 19:52:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDB97404BA;
	Mon, 30 Aug 2021 19:52:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD91F1BF40A
 for <devel@linuxdriverproject.org>; Mon, 30 Aug 2021 19:51:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC928403D9
 for <devel@linuxdriverproject.org>; Mon, 30 Aug 2021 19:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jdLoy8cMK6D for <devel@linuxdriverproject.org>;
 Mon, 30 Aug 2021 19:51:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com
 [IPv6:2607:f8b0:4864:20::749])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BE5C402F1
 for <devel@driverdev.osuosl.org>; Mon, 30 Aug 2021 19:51:57 +0000 (UTC)
Received: by mail-qk1-x749.google.com with SMTP id
 h10-20020a05620a284a00b003d30e8c8cb5so1875214qkp.11
 for <devel@driverdev.osuosl.org>; Mon, 30 Aug 2021 12:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=vlmH2FPTCreu/0JhtoQw1RSxIqcHbMmpEsPhqtnkEpI=;
 b=Hu5Qb9P9tv4nw3UP2XEOSG1qwsgzvImOwJ97Q4XzlftJCvz42sL/HihtDA1evQXqp1
 h6mioNwzuqarhT+QBmliJrncaKOzPfFD9VpEt1Ajr+0CIFpSLS13XTsDg1fpKUWMITZc
 O2IJrwk9UdL4PsbiqBUIMIwGcnLIbhDmiCVaJCQ0bOXykhK2OhYOTA2wNyMkRx/u0Bji
 7Rmi1se2ZguU7bH9XeycQ+aZBMGN/AAOwk25z4V68ObbBaQ0m/P3Ta5Rg5cqHbv8M9ql
 6vytI4T9+jBnG+il60fClEX3juvtWDQniUUcHrwt5vOriDipNeI5DuQ4SxL4XGXAt3Ev
 dO+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=vlmH2FPTCreu/0JhtoQw1RSxIqcHbMmpEsPhqtnkEpI=;
 b=MQPm0LfYuednxvbSP8ec3TzxR2wT8XKPqfxVWMESAQTMZEqahvuZKUBluHNcphmBDq
 G+DetUcIz9/v3jryhVzvKadTpFT/qUFAAR2G/F5ByRhGJjS9x+PYHzZ7d2JzL9+EN7CI
 pmHKxRMiB++1eeSJbJcKcamft7uKQWH/38UzHZZfDtyZqFVGz7iCmxf8UulIUkquuCin
 7fHc0/41MXlly/K1UK/dn5+6mUzsqGUA8CfBzOdFBEfuzgS0gYALjzapnSqkZsb3acHB
 b67oVPM11tr5U/RIq2y/fswQHTW0UJMll82AJ6pE+2sifSu3Mg9TJnV74rUFa+f/whws
 sDKQ==
X-Gm-Message-State: AOAM533WjzxHFZ4K1xp3mOAfxrXvun3A88RlgI8Y8J9OELIKypTw4zxz
 slH2fk+1g/+b0+LmGy0SUcGy5TtiWw==
X-Google-Smtp-Source: ABdhPJxypQStTHSuW+vYuUUGWnGVDGQv9PYEyN8B0RtmipOSC5YYG5ph1LGaqiJUYg1AwithU+Q625lwIw==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:371e:b5b3:7633:f5cd])
 (user=tkjos job=sendgmr) by 2002:a0c:ff4b:: with SMTP id
 y11mr25342076qvt.50.1630353116285; 
 Mon, 30 Aug 2021 12:51:56 -0700 (PDT)
Date: Mon, 30 Aug 2021 12:51:46 -0700
Message-Id: <20210830195146.587206-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
Subject: [PATCH] binder: make sure fd closes complete
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

During BC_FREE_BUFFER processing, the BINDER_TYPE_FDA object
cleanup may close 1 or more fds. The close operations are
completed using the task work mechanism -- which means the thread
needs to return to userspace or the file object may never be
dereferenced -- which can lead to hung processes.

Force the binder thread back to userspace if an fd is closed during
BC_FREE_BUFFER handling.

Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index bcec598b89f2..c2823f0d588f 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -1852,6 +1852,7 @@ static void binder_deferred_fd_close(int fd)
 }
 
 static void binder_transaction_buffer_release(struct binder_proc *proc,
+					      struct binder_thread *thread,
 					      struct binder_buffer *buffer,
 					      binder_size_t failed_at,
 					      bool is_failure)
@@ -2011,8 +2012,16 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
 						&proc->alloc, &fd, buffer,
 						offset, sizeof(fd));
 				WARN_ON(err);
-				if (!err)
+				if (!err) {
 					binder_deferred_fd_close(fd);
+					/*
+					 * Need to make sure the thread goes
+					 * back to userspace to complete the
+					 * deferred close
+					 */
+					if (thread)
+						thread->looper_need_return = true;
+				}
 			}
 		} break;
 		default:
@@ -3105,7 +3114,7 @@ static void binder_transaction(struct binder_proc *proc,
 err_copy_data_failed:
 	binder_free_txn_fixups(t);
 	trace_binder_transaction_failed_buffer_release(t->buffer);
-	binder_transaction_buffer_release(target_proc, t->buffer,
+	binder_transaction_buffer_release(target_proc, NULL, t->buffer,
 					  buffer_offset, true);
 	if (target_node)
 		binder_dec_node_tmpref(target_node);
@@ -3184,7 +3193,9 @@ static void binder_transaction(struct binder_proc *proc,
  * Cleanup buffer and free it.
  */
 static void
-binder_free_buf(struct binder_proc *proc, struct binder_buffer *buffer)
+binder_free_buf(struct binder_proc *proc,
+		struct binder_thread *thread,
+		struct binder_buffer *buffer)
 {
 	binder_inner_proc_lock(proc);
 	if (buffer->transaction) {
@@ -3212,7 +3223,7 @@ binder_free_buf(struct binder_proc *proc, struct binder_buffer *buffer)
 		binder_node_inner_unlock(buf_node);
 	}
 	trace_binder_transaction_buffer_release(buffer);
-	binder_transaction_buffer_release(proc, buffer, 0, false);
+	binder_transaction_buffer_release(proc, thread, buffer, 0, false);
 	binder_alloc_free_buf(&proc->alloc, buffer);
 }
 
@@ -3414,7 +3425,7 @@ static int binder_thread_write(struct binder_proc *proc,
 				     proc->pid, thread->pid, (u64)data_ptr,
 				     buffer->debug_id,
 				     buffer->transaction ? "active" : "finished");
-			binder_free_buf(proc, buffer);
+			binder_free_buf(proc, thread, buffer);
 			break;
 		}
 
@@ -4107,7 +4118,7 @@ static int binder_thread_read(struct binder_proc *proc,
 			buffer->transaction = NULL;
 			binder_cleanup_transaction(t, "fd fixups failed",
 						   BR_FAILED_REPLY);
-			binder_free_buf(proc, buffer);
+			binder_free_buf(proc, thread, buffer);
 			binder_debug(BINDER_DEBUG_FAILED_TRANSACTION,
 				     "%d:%d %stransaction %d fd fixups failed %d/%d, line %d\n",
 				     proc->pid, thread->pid,
-- 
2.33.0.259.gc128427fd7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
