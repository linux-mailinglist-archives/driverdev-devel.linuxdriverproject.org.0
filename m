Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB60424B5C
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 02:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD5994095C;
	Thu,  7 Oct 2021 00:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1soQtnWfsd2V; Thu,  7 Oct 2021 00:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F69B408F4;
	Thu,  7 Oct 2021 00:46:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D5081BF9B9
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 00:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87A534025F
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 00:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MxwVguL3PSPr for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 00:46:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1933740230
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 00:46:36 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 z130-20020a256588000000b005b6b4594129so5717985ybb.15
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 17:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=fVYGt4GGFCN2TtSXk5ccVtEifg/XO8gXvHwY8CcBHLQ=;
 b=pxL12Cg7OTFFtudplacxeq1RHvPOJYCNOfv9frqunX2zscRDBi6bv5cPSbdNoTjIqe
 EEsLk87nstdOcxFaLWqmZ27aQb6XmpwJAyrGHJR5g/aC9DcFJPAyFmLT98E3HhLusAwY
 TSD/WkjxnE9CKaWaOUD26qntzfbz9LitjMH1Ysd+ZoNqKvr2WuubTuaSp3XO2lqSgzNA
 h/ND8F6G3fjf7Ifuqf0OqwPkO2aH1KDUIxx4ImKIOtfqdjQh7q8t3KiegzDEtz8HA4Pe
 dJxh0Eb2wRdzmrHJBIfc8wlZmzk7cZ6Hbn+E4qFfgE9RJLJZISIKVsO9RP/RpN7CtztV
 5rGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=fVYGt4GGFCN2TtSXk5ccVtEifg/XO8gXvHwY8CcBHLQ=;
 b=J17Z49DeSynYLXDTb6LZrG9YEZ9otvRKv0O6Srec1M1apjqHtf8iuovw0xumwVEi6L
 D2MyY4lNuaQfquGYZyvPWpPQSSHy3SeQS4qZpCY9TxniZlyWNbJdApmhp5v263AZVe9s
 an7gWxPlAkrw1xOc7sE5ZiBIKVJYr7cXkRRIQ0AqXR7LpO6YxoFttwW2gQSpwD/FDKD/
 g+cMG+/QGJzLIIpzsInNRzlNDOeaO4MK9WVhoc95j0hY8R63nHJuzL1gXEFOR5fVPGsM
 I5d81K9/cgzwAaLD0xHzynyalTEa+OlhOgqIjOjG8hIw2D/jWjxoEzcZoOzkMwUU+7LX
 6bHA==
X-Gm-Message-State: AOAM530lINhPO0rVulHL7qEM8W3diKUGcje6L1FU9OnkzHz7nAAVP1qy
 uKimHPCRNa6QCON1nB8mUyknLsgO9A==
X-Google-Smtp-Source: ABdhPJzR69SX9tebH8WG8Ow5bPAJpWUGL9u+NllqXCUoBuUgD2wzcXfse5fEDNpFOwPl7xAbQF7YRlI/gg==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:6ff2:347f:ac4a:8a04])
 (user=tkjos job=sendgmr) by 2002:a05:6902:102d:: with SMTP id
 x13mr1491298ybt.369.1633567595007; Wed, 06 Oct 2021 17:46:35 -0700 (PDT)
Date: Wed,  6 Oct 2021 17:46:27 -0700
In-Reply-To: <20211007004629.1113572-1-tkjos@google.com>
Message-Id: <20211007004629.1113572-2-tkjos@google.com>
Mime-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
X-Mailer: git-send-email 2.33.0.800.g4c38ced690-goog
Subject: [PATCH v4 1/3] binder: use cred instead of task for selinux checks
From: Todd Kjos <tkjos@google.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com, 
 maco@android.com, christian@brauner.io, jmorris@namei.org, serge@hallyn.com, 
 paul@paul-moore.com, stephen.smalley.work@gmail.com, eparis@parisplace.org, 
 keescook@chromium.org, jannh@google.com, jeffv@google.com, 
 zohar@linux.ibm.com, linux-security-module@vger.kernel.org, 
 selinux@vger.kernel.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
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
Cc: joel@joelfernandes.org, kernel-team@android.com, stable@vger.kernel.org,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Save the struct cred associated with a binder process
at initial open to avoid potential race conditions
when converting to a security ID.

Since binder was integrated with selinux, it has passed
'struct task_struct' associated with the binder_proc
to represent the source and target of transactions.
The conversion of task to SID was then done in the hook
implementations. It turns out that there are race conditions
which can result in an incorrect security context being used.

Fix by saving the 'struct cred' during binder_open and pass
it to the selinux subsystem.

Fixes: 79af73079d75 ("Add security hooks to binder and implement the
hooks for SELinux.")
Suggested-by: Jann Horn <jannh@google.com>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Todd Kjos <tkjos@google.com>
Cc: stable@vger.kernel.org # 5.14 (need backport for earlier stables)
---
v2: updated comments as suggested by Paul Moore
v3: added 2 patches to fix related issues

 drivers/android/binder.c          | 14 +++++----
 drivers/android/binder_internal.h |  4 +++
 include/linux/lsm_hook_defs.h     | 14 ++++-----
 include/linux/lsm_hooks.h         | 14 ++++-----
 include/linux/security.h          | 28 +++++++++---------
 security/security.c               | 14 ++++-----
 security/selinux/hooks.c          | 48 +++++++++----------------------
 7 files changed, 60 insertions(+), 76 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 9edacc8b9768..ca599ebdea4a 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2056,7 +2056,7 @@ static int binder_translate_binder(struct flat_binder_object *fp,
 		ret = -EINVAL;
 		goto done;
 	}
-	if (security_binder_transfer_binder(proc->tsk, target_proc->tsk)) {
+	if (security_binder_transfer_binder(proc->cred, target_proc->cred)) {
 		ret = -EPERM;
 		goto done;
 	}
@@ -2102,7 +2102,7 @@ static int binder_translate_handle(struct flat_binder_object *fp,
 				  proc->pid, thread->pid, fp->handle);
 		return -EINVAL;
 	}
-	if (security_binder_transfer_binder(proc->tsk, target_proc->tsk)) {
+	if (security_binder_transfer_binder(proc->cred, target_proc->cred)) {
 		ret = -EPERM;
 		goto done;
 	}
@@ -2190,7 +2190,7 @@ static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
 		ret = -EBADF;
 		goto err_fget;
 	}
-	ret = security_binder_transfer_file(proc->tsk, target_proc->tsk, file);
+	ret = security_binder_transfer_file(proc->cred, target_proc->cred, file);
 	if (ret < 0) {
 		ret = -EPERM;
 		goto err_security;
@@ -2595,8 +2595,8 @@ static void binder_transaction(struct binder_proc *proc,
 			return_error_line = __LINE__;
 			goto err_invalid_target_handle;
 		}
-		if (security_binder_transaction(proc->tsk,
-						target_proc->tsk) < 0) {
+		if (security_binder_transaction(proc->cred,
+						target_proc->cred) < 0) {
 			return_error = BR_FAILED_REPLY;
 			return_error_param = -EPERM;
 			return_error_line = __LINE__;
@@ -4353,6 +4353,7 @@ static void binder_free_proc(struct binder_proc *proc)
 	}
 	binder_alloc_deferred_release(&proc->alloc);
 	put_task_struct(proc->tsk);
+	put_cred(proc->cred);
 	binder_stats_deleted(BINDER_STAT_PROC);
 	kfree(proc);
 }
@@ -4564,7 +4565,7 @@ static int binder_ioctl_set_ctx_mgr(struct file *filp,
 		ret = -EBUSY;
 		goto out;
 	}
-	ret = security_binder_set_context_mgr(proc->tsk);
+	ret = security_binder_set_context_mgr(proc->cred);
 	if (ret < 0)
 		goto out;
 	if (uid_valid(context->binder_context_mgr_uid)) {
@@ -5055,6 +5056,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
 	spin_lock_init(&proc->outer_lock);
 	get_task_struct(current->group_leader);
 	proc->tsk = current->group_leader;
+	proc->cred = get_cred(filp->f_cred);
 	INIT_LIST_HEAD(&proc->todo);
 	init_waitqueue_head(&proc->freeze_wait);
 	proc->default_priority = task_nice(current);
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index 402c4d4362a8..d6b6b8cb7346 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -364,6 +364,9 @@ struct binder_ref {
  *                        (invariant after initialized)
  * @tsk                   task_struct for group_leader of process
  *                        (invariant after initialized)
+ * @cred                  struct cred associated with the `struct file`
+ *                        in binder_open()
+ *                        (invariant after initialized)
  * @deferred_work_node:   element for binder_deferred_list
  *                        (protected by binder_deferred_lock)
  * @deferred_work:        bitmap of deferred work to perform
@@ -426,6 +429,7 @@ struct binder_proc {
 	struct list_head waiting_threads;
 	int pid;
 	struct task_struct *tsk;
+	const struct cred *cred;
 	struct hlist_node deferred_work_node;
 	int deferred_work;
 	int outstanding_txns;
diff --git a/include/linux/lsm_hook_defs.h b/include/linux/lsm_hook_defs.h
index 2adeea44c0d5..61590c1f2d33 100644
--- a/include/linux/lsm_hook_defs.h
+++ b/include/linux/lsm_hook_defs.h
@@ -26,13 +26,13 @@
  *   #undef LSM_HOOK
  * };
  */
-LSM_HOOK(int, 0, binder_set_context_mgr, struct task_struct *mgr)
-LSM_HOOK(int, 0, binder_transaction, struct task_struct *from,
-	 struct task_struct *to)
-LSM_HOOK(int, 0, binder_transfer_binder, struct task_struct *from,
-	 struct task_struct *to)
-LSM_HOOK(int, 0, binder_transfer_file, struct task_struct *from,
-	 struct task_struct *to, struct file *file)
+LSM_HOOK(int, 0, binder_set_context_mgr, const struct cred *mgr)
+LSM_HOOK(int, 0, binder_transaction, const struct cred *from,
+	 const struct cred *to)
+LSM_HOOK(int, 0, binder_transfer_binder, const struct cred *from,
+	 const struct cred *to)
+LSM_HOOK(int, 0, binder_transfer_file, const struct cred *from,
+	 const struct cred *to, struct file *file)
 LSM_HOOK(int, 0, ptrace_access_check, struct task_struct *child,
 	 unsigned int mode)
 LSM_HOOK(int, 0, ptrace_traceme, struct task_struct *parent)
diff --git a/include/linux/lsm_hooks.h b/include/linux/lsm_hooks.h
index 5c4c5c0602cb..59024618554e 100644
--- a/include/linux/lsm_hooks.h
+++ b/include/linux/lsm_hooks.h
@@ -1313,22 +1313,22 @@
  *
  * @binder_set_context_mgr:
  *	Check whether @mgr is allowed to be the binder context manager.
- *	@mgr contains the task_struct for the task being registered.
+ *	@mgr contains the struct cred for the current binder process.
  *	Return 0 if permission is granted.
  * @binder_transaction:
  *	Check whether @from is allowed to invoke a binder transaction call
  *	to @to.
- *	@from contains the task_struct for the sending task.
- *	@to contains the task_struct for the receiving task.
+ *	@from contains the struct cred for the sending process.
+ *	@to contains the struct cred for the receiving process.
  * @binder_transfer_binder:
  *	Check whether @from is allowed to transfer a binder reference to @to.
- *	@from contains the task_struct for the sending task.
- *	@to contains the task_struct for the receiving task.
+ *	@from contains the struct cred for the sending process.
+ *	@to contains the struct cred for the receiving process.
  * @binder_transfer_file:
  *	Check whether @from is allowed to transfer @file to @to.
- *	@from contains the task_struct for the sending task.
+ *	@from contains the struct cred for the sending process.
  *	@file contains the struct file being transferred.
- *	@to contains the task_struct for the receiving task.
+ *	@to contains the struct cred for the receiving process.
  *
  * @ptrace_access_check:
  *	Check permission before allowing the current process to trace the
diff --git a/include/linux/security.h b/include/linux/security.h
index 5b7288521300..6344d3362df7 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -258,13 +258,13 @@ extern int security_init(void);
 extern int early_security_init(void);
 
 /* Security operations */
-int security_binder_set_context_mgr(struct task_struct *mgr);
-int security_binder_transaction(struct task_struct *from,
-				struct task_struct *to);
-int security_binder_transfer_binder(struct task_struct *from,
-				    struct task_struct *to);
-int security_binder_transfer_file(struct task_struct *from,
-				  struct task_struct *to, struct file *file);
+int security_binder_set_context_mgr(const struct cred *mgr);
+int security_binder_transaction(const struct cred *from,
+				const struct cred *to);
+int security_binder_transfer_binder(const struct cred *from,
+				    const struct cred *to);
+int security_binder_transfer_file(const struct cred *from,
+				  const struct cred *to, struct file *file);
 int security_ptrace_access_check(struct task_struct *child, unsigned int mode);
 int security_ptrace_traceme(struct task_struct *parent);
 int security_capget(struct task_struct *target,
@@ -508,25 +508,25 @@ static inline int early_security_init(void)
 	return 0;
 }
 
-static inline int security_binder_set_context_mgr(struct task_struct *mgr)
+static inline int security_binder_set_context_mgr(const struct cred *mgr)
 {
 	return 0;
 }
 
-static inline int security_binder_transaction(struct task_struct *from,
-					      struct task_struct *to)
+static inline int security_binder_transaction(const struct cred *from,
+					      const struct cred *to)
 {
 	return 0;
 }
 
-static inline int security_binder_transfer_binder(struct task_struct *from,
-						  struct task_struct *to)
+static inline int security_binder_transfer_binder(const struct cred *from,
+						  const struct cred *to)
 {
 	return 0;
 }
 
-static inline int security_binder_transfer_file(struct task_struct *from,
-						struct task_struct *to,
+static inline int security_binder_transfer_file(const struct cred *from,
+						const struct cred *to,
 						struct file *file)
 {
 	return 0;
diff --git a/security/security.c b/security/security.c
index 9ffa9e9c5c55..67264cb08fb3 100644
--- a/security/security.c
+++ b/security/security.c
@@ -747,25 +747,25 @@ static int lsm_superblock_alloc(struct super_block *sb)
 
 /* Security operations */
 
-int security_binder_set_context_mgr(struct task_struct *mgr)
+int security_binder_set_context_mgr(const struct cred *mgr)
 {
 	return call_int_hook(binder_set_context_mgr, 0, mgr);
 }
 
-int security_binder_transaction(struct task_struct *from,
-				struct task_struct *to)
+int security_binder_transaction(const struct cred *from,
+				const struct cred *to)
 {
 	return call_int_hook(binder_transaction, 0, from, to);
 }
 
-int security_binder_transfer_binder(struct task_struct *from,
-				    struct task_struct *to)
+int security_binder_transfer_binder(const struct cred *from,
+				    const struct cred *to)
 {
 	return call_int_hook(binder_transfer_binder, 0, from, to);
 }
 
-int security_binder_transfer_file(struct task_struct *from,
-				  struct task_struct *to, struct file *file)
+int security_binder_transfer_file(const struct cred *from,
+				  const struct cred *to, struct file *file)
 {
 	return call_int_hook(binder_transfer_file, 0, from, to, file);
 }
diff --git a/security/selinux/hooks.c b/security/selinux/hooks.c
index e7ebd45ca345..c8bf3db90c8b 100644
--- a/security/selinux/hooks.c
+++ b/security/selinux/hooks.c
@@ -255,29 +255,6 @@ static inline u32 task_sid_obj(const struct task_struct *task)
 	return sid;
 }
 
-/*
- * get the security ID of a task for use with binder
- */
-static inline u32 task_sid_binder(const struct task_struct *task)
-{
-	/*
-	 * In many case where this function is used we should be using the
-	 * task's subjective SID, but we can't reliably access the subjective
-	 * creds of a task other than our own so we must use the objective
-	 * creds/SID, which are safe to access.  The downside is that if a task
-	 * is temporarily overriding it's creds it will not be reflected here;
-	 * however, it isn't clear that binder would handle that case well
-	 * anyway.
-	 *
-	 * If this ever changes and we can safely reference the subjective
-	 * creds/SID of another task, this function will make it easier to
-	 * identify the various places where we make use of the task SIDs in
-	 * the binder code.  It is also likely that we will need to adjust
-	 * the main drivers/android binder code as well.
-	 */
-	return task_sid_obj(task);
-}
-
 static int inode_doinit_with_dentry(struct inode *inode, struct dentry *opt_dentry);
 
 /*
@@ -2066,18 +2043,19 @@ static inline u32 open_file_to_av(struct file *file)
 
 /* Hook functions begin here. */
 
-static int selinux_binder_set_context_mgr(struct task_struct *mgr)
+static int selinux_binder_set_context_mgr(const struct cred *mgr)
 {
 	return avc_has_perm(&selinux_state,
-			    current_sid(), task_sid_binder(mgr), SECCLASS_BINDER,
+			    current_sid(), cred_sid(mgr), SECCLASS_BINDER,
 			    BINDER__SET_CONTEXT_MGR, NULL);
 }
 
-static int selinux_binder_transaction(struct task_struct *from,
-				      struct task_struct *to)
+static int selinux_binder_transaction(const struct cred *from,
+				      const struct cred *to)
 {
 	u32 mysid = current_sid();
-	u32 fromsid = task_sid_binder(from);
+	u32 fromsid = cred_sid(from);
+	u32 tosid = cred_sid(to);
 	int rc;
 
 	if (mysid != fromsid) {
@@ -2088,24 +2066,24 @@ static int selinux_binder_transaction(struct task_struct *from,
 			return rc;
 	}
 
-	return avc_has_perm(&selinux_state, fromsid, task_sid_binder(to),
+	return avc_has_perm(&selinux_state, fromsid, tosid,
 			    SECCLASS_BINDER, BINDER__CALL, NULL);
 }
 
-static int selinux_binder_transfer_binder(struct task_struct *from,
-					  struct task_struct *to)
+static int selinux_binder_transfer_binder(const struct cred *from,
+					  const struct cred *to)
 {
 	return avc_has_perm(&selinux_state,
-			    task_sid_binder(from), task_sid_binder(to),
+			    cred_sid(from), cred_sid(to),
 			    SECCLASS_BINDER, BINDER__TRANSFER,
 			    NULL);
 }
 
-static int selinux_binder_transfer_file(struct task_struct *from,
-					struct task_struct *to,
+static int selinux_binder_transfer_file(const struct cred *from,
+					const struct cred *to,
 					struct file *file)
 {
-	u32 sid = task_sid_binder(to);
+	u32 sid = cred_sid(to);
 	struct file_security_struct *fsec = selinux_file(file);
 	struct dentry *dentry = file->f_path.dentry;
 	struct inode_security_struct *isec;
-- 
2.33.0.800.g4c38ced690-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
