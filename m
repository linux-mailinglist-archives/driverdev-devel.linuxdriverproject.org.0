Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE4644F2C3
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Nov 2021 12:27:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5DB040212;
	Sat, 13 Nov 2021 11:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BeioDtOfeLjf; Sat, 13 Nov 2021 11:27:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BEBD94000B;
	Sat, 13 Nov 2021 11:27:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C67A1BF358
 for <devel@linuxdriverproject.org>; Sat, 13 Nov 2021 11:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5ACD340191
 for <devel@linuxdriverproject.org>; Sat, 13 Nov 2021 11:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qrQX99Kx9t3r for <devel@linuxdriverproject.org>;
 Sat, 13 Nov 2021 11:26:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02B084013B
 for <devel@driverdev.osuosl.org>; Sat, 13 Nov 2021 11:26:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4A144610A1;
 Sat, 13 Nov 2021 11:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1636802817;
 bh=Duy71hag/dJGSrQpxMGrbIfEa6/ooN8D4AXN+7ONfgY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=EGKnlwD9dEEu9bUjP28MHe5wi7K8EcAvHJFv6dZxfzyZBjRV6u3Yh+GybcC17vEaz
 uteI5s5VBGoYVnQ9JY6V62jSFLB7N77ygaDxj6F6WWjULuQndS/934SWDN+B38ToXL
 Qhcc1V82HeL84zXt9fWkXLz4Ci1Q6vwkmGKRkBTs=
Subject: Patch "binder: use euid from cred instead of using task" has been
 added to the 5.10-stable tree
To: arve@android.com, casey@schaufler-ca.com, christian@brauner.io,
 devel@driverdev.osuosl.org, eparis@parisplace.org, gregkh@linuxfoundation.org,
 jannh@google.com, jeffv@google.com, jmorris@namei.org, joel@joelfernandes.org,
 keescook@chromium.org, kernel-team@android.com, maco@android.com,
 paul@paul-moore.com, serge@hallyn.com, stephen.smalley.work@gmail.com,
 tkjos@android.com, tkjos@google.com, zohar@linux.ibm.com
From: <gregkh@linuxfoundation.org>
Date: Sat, 13 Nov 2021 12:26:45 +0100
In-Reply-To: <20211110230036.3274365-1-tkjos@google.com>
Message-ID: <1636802805195156@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


This is a note to let you know that I've just added the patch titled

    binder: use euid from cred instead of using task

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     binder-use-euid-from-cred-instead-of-using-task.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Sat Nov 13 12:23:35 PM CET 2021
From: Todd Kjos <tkjos@google.com>
Date: Wed, 10 Nov 2021 15:00:34 -0800
Subject: binder: use euid from cred instead of using task
To: stable@vger.kernel.org, gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com, maco@android.com, christian@brauner.io, jmorris@namei.org, serge@hallyn.com, paul@paul-moore.com, stephen.smalley.work@gmail.com, eparis@parisplace.org, keescook@chromium.org, jannh@google.com, jeffv@google.com, zohar@linux.ibm.com, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, devel@driverdev.osuosl.org
Cc: joel@joelfernandes.org, kernel-team@android.com, Todd Kjos <tkjos@google.com>, Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <20211110230036.3274365-1-tkjos@google.com>

From: Todd Kjos <tkjos@google.com>

commit 29bc22ac5e5bc63275e850f0c8fc549e3d0e306b upstream.

Save the 'struct cred' associated with a binder process
at initial open to avoid potential race conditions
when converting to an euid.

Set a transaction's sender_euid from the 'struct cred'
saved at binder_open() instead of looking up the euid
from the binder proc's 'struct task'. This ensures
the euid is associated with the security context that
of the task that opened binder.

Cc: stable@vger.kernel.org # 4.4+
Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
Signed-off-by: Todd Kjos <tkjos@google.com>
Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
Suggested-by: Jann Horn <jannh@google.com>
Acked-by: Casey Schaufler <casey@schaufler-ca.com>
Signed-off-by: Paul Moore <paul@paul-moore.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/android/binder.c |    8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -420,6 +420,9 @@ enum binder_deferred_state {
  *                        (invariant after initialized)
  * @tsk                   task_struct for group_leader of process
  *                        (invariant after initialized)
+ * @cred                  struct cred associated with the `struct file`
+ *                        in binder_open()
+ *                        (invariant after initialized)
  * @deferred_work_node:   element for binder_deferred_list
  *                        (protected by binder_deferred_lock)
  * @deferred_work:        bitmap of deferred work to perform
@@ -465,6 +468,7 @@ struct binder_proc {
 	struct list_head waiting_threads;
 	int pid;
 	struct task_struct *tsk;
+	const struct cred *cred;
 	struct hlist_node deferred_work_node;
 	int deferred_work;
 	bool is_dead;
@@ -3087,7 +3091,7 @@ static void binder_transaction(struct bi
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = task_euid(proc->tsk);
+	t->sender_euid = proc->cred->euid;
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
@@ -4703,6 +4707,7 @@ static void binder_free_proc(struct bind
 	}
 	binder_alloc_deferred_release(&proc->alloc);
 	put_task_struct(proc->tsk);
+	put_cred(proc->cred);
 	binder_stats_deleted(BINDER_STAT_PROC);
 	kfree(proc);
 }
@@ -5220,6 +5225,7 @@ static int binder_open(struct inode *nod
 	spin_lock_init(&proc->outer_lock);
 	get_task_struct(current->group_leader);
 	proc->tsk = current->group_leader;
+	proc->cred = get_cred(filp->f_cred);
 	INIT_LIST_HEAD(&proc->todo);
 	proc->default_priority = task_nice(current);
 	/* binderfs stashes devices in i_private */


Patches currently in stable-queue which might be from tkjos@google.com are

queue-5.10/binder-use-cred-instead-of-task-for-selinux-checks.patch
queue-5.10/binder-use-cred-instead-of-task-for-getsecid.patch
queue-5.10/binder-use-euid-from-cred-instead-of-using-task.patch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
