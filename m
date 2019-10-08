Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEB5CFAD5
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 15:02:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B446861F2;
	Tue,  8 Oct 2019 13:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWCEKb_URBzx; Tue,  8 Oct 2019 13:02:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 233DC861AA;
	Tue,  8 Oct 2019 13:02:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0B5D1BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 13:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC17B87F9C
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 13:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5KOcXjh2lXJ2 for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 13:02:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EBEC887FC3
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 13:02:08 +0000 (UTC)
Received: from p2e585ebf.dip0.t-ipconnect.de ([46.88.94.191]
 helo=localhost.localdomain) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iHp7t-0001iX-2O; Tue, 08 Oct 2019 13:02:05 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: jannh@google.com
Subject: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
Date: Tue,  8 Oct 2019 15:01:59 +0200
Message-Id: <20191008130159.10161-1-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Hridya Valsaraju <hridya@google.com>, arve@android.com, joel@joelfernandes.org,
 Christian Brauner <christian.brauner@ubuntu.com>, maco@android.com,
 christian@brauner.io, tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When a binder transaction is initiated on a binder device coming from a
binderfs instance, a pointer to the name of the binder device is stashed
in the binder_transaction_log_entry's context_name member. Later on it
is used to print the name in print_binder_transaction_log_entry(). By
the time print_binder_transaction_log_entry() accesses context_name
binderfs_evict_inode() might have already freed the associated memory
thereby causing a UAF. Do the simple thing and prevent this by copying
the name of the binder device instead of stashing a pointer to it.

Reported-by: Jann Horn <jannh@google.com>
Fixes: 03e2e07e3814 ("binder: Make transaction_log available in binderfs")
Link: https://lore.kernel.org/r/CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Todd Kjos <tkjos@android.com>
Cc: Hridya Valsaraju <hridya@google.com>
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
 drivers/android/binder.c          | 4 +++-
 drivers/android/binder_internal.h | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index c0a491277aca..5b9ac2122e89 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -57,6 +57,7 @@
 #include <linux/sched/signal.h>
 #include <linux/sched/mm.h>
 #include <linux/seq_file.h>
+#include <linux/string.h>
 #include <linux/uaccess.h>
 #include <linux/pid_namespace.h>
 #include <linux/security.h>
@@ -66,6 +67,7 @@
 #include <linux/task_work.h>
 
 #include <uapi/linux/android/binder.h>
+#include <uapi/linux/android/binderfs.h>
 
 #include <asm/cacheflush.h>
 
@@ -2876,7 +2878,7 @@ static void binder_transaction(struct binder_proc *proc,
 	e->target_handle = tr->target.handle;
 	e->data_size = tr->data_size;
 	e->offsets_size = tr->offsets_size;
-	e->context_name = proc->context->name;
+	strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);
 
 	if (reply) {
 		binder_inner_proc_lock(proc);
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index bd47f7f72075..ae991097d14d 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -130,7 +130,7 @@ struct binder_transaction_log_entry {
 	int return_error_line;
 	uint32_t return_error;
 	uint32_t return_error_param;
-	const char *context_name;
+	char context_name[BINDERFS_MAX_NAME + 1];
 };
 
 struct binder_transaction_log {
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
