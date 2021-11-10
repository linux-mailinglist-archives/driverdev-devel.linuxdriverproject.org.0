Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8C144CD93
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 00:01:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EF2240522;
	Wed, 10 Nov 2021 23:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id skTwMY-KkE1X; Wed, 10 Nov 2021 23:01:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA580404F1;
	Wed, 10 Nov 2021 23:01:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EE8F1BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB970400BE
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yJ4aV_aa5-tt for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 23:00:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com
 [IPv6:2607:f8b0:4864:20::749])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0199B4021C
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 23:00:31 +0000 (UTC)
Received: by mail-qk1-x749.google.com with SMTP id
 h8-20020a05620a284800b0045ec745583cso2933591qkp.6
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 15:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=AyO5APv0B3j2lJDIzBcNaAzCnbUGVx9ja7WSxNT1cAM=;
 b=DhZFjR36Sqw40TdNkE8v7w057R1mfkXgVdIrPyDbxX11V9LcQcuBUPZ29VnmeAKKpX
 QqQa0FHgX9XgKWBP6UJe55VEQ4TxR7JtvUWmueGH9LWrdelmApfHjI5ZmpR6hEV2hlP8
 eDlnkcXq25wz4EMaP0f+El8TDuV7zyAjPGxz1aaxaoVxippGkuwT9j2LPDhQ+wwN404c
 oa1b2Vb6+AAMjSQPX6vkFOms2ql8In2ksLD4cypPP9tKj3W7R4alKk+s3n//zBps/UoN
 sA73gIqq9R7xQekjjO/QrIxQ5GNtwxzJFJAuukKBMUuveJkLJJM0n2O76OaqfZ2rnz6G
 lEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=AyO5APv0B3j2lJDIzBcNaAzCnbUGVx9ja7WSxNT1cAM=;
 b=GfflP/dALhZD8xRlX6CnhXBfBPkvEPTuTdCVOvZYk2AlORKDNFGrpLzTlVrXA+q6v/
 Ezx0U9bmeEds6ilusSRSE384bHDBxh32sfJkqY/9fKHFkKOrPLBiCGUBjLzUtBpLFnAB
 nS5NmkBCAo31lQ0ULnJq7wCeM9uWXHQPKKXESNA5llX0OBV6QI/pRn3BU1CGOHf/VAjA
 RhkpNacogfjc/gWQ9OX35XpKfhelk0Nf1yD1OSRB6zeKCxzCqLmGiDglzIGIL9gE2MsW
 0P1FSDgB4yKQYJsWEwRj4U4BLJA0liWsiaKHxeiPiHNPQ9regAZveN0McsadEwlcu6Lz
 xTyw==
X-Gm-Message-State: AOAM533lh8+8DM1xnoiE/8LndjHSB3EjSzFoqd8PAV3ijh2KfZsB9yvb
 wjxKPjd87LkJWLAUe9oZUUs+e+xZeg==
X-Google-Smtp-Source: ABdhPJxSWLLHSq6+0QpnuL6EWkgcfAhSLc8NVZ78+KSA6O//hOneGnzz90C5uL+A6Oa7SCObhv99ElfsMg==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:ac8:5fc5:: with SMTP id
 k5mr2988581qta.110.1636585230768; 
 Wed, 10 Nov 2021 15:00:30 -0800 (PST)
Date: Wed, 10 Nov 2021 15:00:24 -0800
In-Reply-To: <20211110230025.3272776-1-tkjos@google.com>
Message-Id: <20211110230025.3272776-2-tkjos@google.com>
Mime-Version: 1.0
References: <20211110230025.3272776-1-tkjos@google.com>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 5.4 2/3] binder: use cred instead of task for selinux checks
From: Todd Kjos <tkjos@google.com>
To: stable@vger.kernel.org, gregkh@linuxfoundation.org, arve@android.com, 
 tkjos@android.com, maco@android.com, christian@brauner.io, jmorris@namei.org, 
 serge@hallyn.com, paul@paul-moore.com, stephen.smalley.work@gmail.com, 
 eparis@parisplace.org, keescook@chromium.org, jannh@google.com, 
 jeffv@google.com, zohar@linux.ibm.com, linux-security-module@vger.kernel.org, 
 selinux@vger.kernel.org, devel@driverdev.osuosl.org
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
Cc: joel@joelfernandes.org, Casey Schaufler <casey@schaufler-ca.com>,
 kernel-team@android.com, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

commit 52f88693378a58094c538662ba652aff0253c4fe upstream.

Since binder was integrated with selinux, it has passed
'struct task_struct' associated with the binder_proc
to represent the source and target of transactions.
The conversion of task to SID was then done in the hook
implementations. It turns out that there are race conditions
which can result in an incorrect security context being used.

Fix by using the 'struct cred' saved during binder_open and pass
it to the selinux subsystem.

Cc: stable@vger.kernel.org # 5.14 (need backport for earlier stables)
Fixes: 79af73079d75 ("Add security hooks to binder and implement the hooks for SELinux.")
Suggested-by: Jann Horn <jannh@google.com>
Signed-off-by: Todd Kjos <tkjos@google.com>
Acked-by: Casey Schaufler <casey@schaufler-ca.com>
Signed-off-by: Paul Moore <paul@paul-moore.com>
Change-Id: Id7157515d2b08f11683aeb8ad9b8f1da075d34e7
---
 drivers/android/binder.c  | 12 ++++++------
 include/linux/lsm_hooks.h | 28 ++++++++++++++--------------
 include/linux/security.h  | 28 ++++++++++++++--------------
 security/security.c       | 14 +++++++-------
 security/selinux/hooks.c  | 36 +++++++++++++++---------------------
 5 files changed, 56 insertions(+), 62 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 64f6fb3b1f66..cebb2cd1876c 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2447,7 +2447,7 @@ static int binder_translate_binder(struct flat_binder_object *fp,
 		ret = -EINVAL;
 		goto done;
 	}
-	if (security_binder_transfer_binder(proc->tsk, target_proc->tsk)) {
+	if (security_binder_transfer_binder(proc->cred, target_proc->cred)) {
 		ret = -EPERM;
 		goto done;
 	}
@@ -2493,7 +2493,7 @@ static int binder_translate_handle(struct flat_binder_object *fp,
 				  proc->pid, thread->pid, fp->handle);
 		return -EINVAL;
 	}
-	if (security_binder_transfer_binder(proc->tsk, target_proc->tsk)) {
+	if (security_binder_transfer_binder(proc->cred, target_proc->cred)) {
 		ret = -EPERM;
 		goto done;
 	}
@@ -2581,7 +2581,7 @@ static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
 		ret = -EBADF;
 		goto err_fget;
 	}
-	ret = security_binder_transfer_file(proc->tsk, target_proc->tsk, file);
+	ret = security_binder_transfer_file(proc->cred, target_proc->cred, file);
 	if (ret < 0) {
 		ret = -EPERM;
 		goto err_security;
@@ -2980,8 +2980,8 @@ static void binder_transaction(struct binder_proc *proc,
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
@@ -4922,7 +4922,7 @@ static int binder_ioctl_set_ctx_mgr(struct file *filp,
 		ret = -EBUSY;
 		goto out;
 	}
-	ret = security_binder_set_context_mgr(proc->tsk);
+	ret = security_binder_set_context_mgr(proc->cred);
 	if (ret < 0)
 		goto out;
 	if (uid_valid(context->binder_context_mgr_uid)) {
diff --git a/include/linux/lsm_hooks.h b/include/linux/lsm_hooks.h
index a3763247547c..a21dc5413653 100644
--- a/include/linux/lsm_hooks.h
+++ b/include/linux/lsm_hooks.h
@@ -1241,22 +1241,22 @@
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
@@ -1456,13 +1456,13 @@
  *     @what: kernel feature being accessed
  */
 union security_list_options {
-	int (*binder_set_context_mgr)(struct task_struct *mgr);
-	int (*binder_transaction)(struct task_struct *from,
-					struct task_struct *to);
-	int (*binder_transfer_binder)(struct task_struct *from,
-					struct task_struct *to);
-	int (*binder_transfer_file)(struct task_struct *from,
-					struct task_struct *to,
+	int (*binder_set_context_mgr)(const struct cred *mgr);
+	int (*binder_transaction)(const struct cred *from,
+					const struct cred *to);
+	int (*binder_transfer_binder)(const struct cred *from,
+					const struct cred *to);
+	int (*binder_transfer_file)(const struct cred *from,
+					const struct cred *to,
 					struct file *file);
 
 	int (*ptrace_access_check)(struct task_struct *child,
diff --git a/include/linux/security.h b/include/linux/security.h
index df90399a8af9..0d4cb64cae1f 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -249,13 +249,13 @@ extern int security_init(void);
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
@@ -481,25 +481,25 @@ static inline int early_security_init(void)
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
index 1bc000f834e2..c34ec4c7d98c 100644
--- a/security/security.c
+++ b/security/security.c
@@ -670,25 +670,25 @@ static void __init lsm_early_task(struct task_struct *task)
 
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
index 717a398ef4d0..8b9cbe1e8ee2 100644
--- a/security/selinux/hooks.c
+++ b/security/selinux/hooks.c
@@ -2050,22 +2050,19 @@ static inline u32 open_file_to_av(struct file *file)
 
 /* Hook functions begin here. */
 
-static int selinux_binder_set_context_mgr(struct task_struct *mgr)
+static int selinux_binder_set_context_mgr(const struct cred *mgr)
 {
-	u32 mysid = current_sid();
-	u32 mgrsid = task_sid(mgr);
-
 	return avc_has_perm(&selinux_state,
-			    mysid, mgrsid, SECCLASS_BINDER,
+			    current_sid(), cred_sid(mgr), SECCLASS_BINDER,
 			    BINDER__SET_CONTEXT_MGR, NULL);
 }
 
-static int selinux_binder_transaction(struct task_struct *from,
-				      struct task_struct *to)
+static int selinux_binder_transaction(const struct cred *from,
+				      const struct cred *to)
 {
 	u32 mysid = current_sid();
-	u32 fromsid = task_sid(from);
-	u32 tosid = task_sid(to);
+	u32 fromsid = cred_sid(from);
+	u32 tosid = cred_sid(to);
 	int rc;
 
 	if (mysid != fromsid) {
@@ -2076,27 +2073,24 @@ static int selinux_binder_transaction(struct task_struct *from,
 			return rc;
 	}
 
-	return avc_has_perm(&selinux_state,
-			    fromsid, tosid, SECCLASS_BINDER, BINDER__CALL,
-			    NULL);
+	return avc_has_perm(&selinux_state, fromsid, tosid,
+			    SECCLASS_BINDER, BINDER__CALL, NULL);
 }
 
-static int selinux_binder_transfer_binder(struct task_struct *from,
-					  struct task_struct *to)
+static int selinux_binder_transfer_binder(const struct cred *from,
+					  const struct cred *to)
 {
-	u32 fromsid = task_sid(from);
-	u32 tosid = task_sid(to);
-
 	return avc_has_perm(&selinux_state,
-			    fromsid, tosid, SECCLASS_BINDER, BINDER__TRANSFER,
+			    cred_sid(from), cred_sid(to),
+			    SECCLASS_BINDER, BINDER__TRANSFER,
 			    NULL);
 }
 
-static int selinux_binder_transfer_file(struct task_struct *from,
-					struct task_struct *to,
+static int selinux_binder_transfer_file(const struct cred *from,
+					const struct cred *to,
 					struct file *file)
 {
-	u32 sid = task_sid(to);
+	u32 sid = cred_sid(to);
 	struct file_security_struct *fsec = selinux_file(file);
 	struct dentry *dentry = file->f_path.dentry;
 	struct inode_security_struct *isec;
-- 
2.34.0.rc0.344.g81b53c2807-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
