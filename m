Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF5544CD95
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 00:01:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C58B060B0E;
	Wed, 10 Nov 2021 23:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6fz7Mk27kXdy; Wed, 10 Nov 2021 23:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 125C06079F;
	Wed, 10 Nov 2021 23:01:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D8BF1BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B0DB401E1
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c5o5yntm3jly for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 23:00:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 424904021A
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 23:00:35 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 f206-20020a6238d7000000b004a02dd7156bso1197626pfa.5
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 15:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=2l2vfSk9noud27fza1jTmzfBpZWxrMJkzDQXI8UVNOI=;
 b=ck6Z8uYzej/4+oPc/kvulx+Et7Mr8ngkMyTs+OcSpmwgkcmIKy5CxaT6eB1o4Dw/bD
 +LF7Hlf0cU44kBTUJe8ctxy7W434zCe0EKUDc+gtcizY4OeAyKYuadHviz426NuTiJHg
 qE62VPjHShdVR0UndKg5W07O7DMIcUywM8RffPODtyqXEcnUSSIVzx3/xFhDH3DR1u7L
 5S0LUc7UJ2gyDCpNK+7OBshsQg/VXADB2lt2EV1djOL8gj8EZCgWe8mSczrNeU/u3uRJ
 ipcDUcRi7OG8KPx+t4FWf3FiY27EikOPxB9D6++N3I5hxqDg8LiPUGc+XhufXTILzfvx
 jlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=2l2vfSk9noud27fza1jTmzfBpZWxrMJkzDQXI8UVNOI=;
 b=wIIEPxQZlzj/B2LzIXl4h7JTZkGSMbReZTVl0igFcG3JYsb1Rtv4EZ+ms7hAVZ4SVr
 JLc7f09vmQrahzkMDewCjIHCSeF/6+86qnl7zANYv8wOAN3eZUo4+BQYuBpNY3eJItHU
 ghiDNcJaKVqkygczHuVfMBVeBeeRAxnXA2G+F2ss3Aisz+8T2BSqWZXcWNjeCKNQ25ve
 GGu6vgsaftN8BbxAD57vr2UcRNhPW24nVVwLZgm12WqfPIaYDYF3bbj/5UDIHm4bHsYW
 Hp/K5mXOHdMeVZL/dLYt69Xk1Gnf2TKCehIbw4xPj1YpL+zAPzx8HdaczldCqP/SJ2vN
 zAdA==
X-Gm-Message-State: AOAM531wQzcgF5fDoYTYncIH9v1ByjQ2FG9CW5NeeBi9pCbUvIyui/sL
 3jntagaBAi1TmorCceUo/7BpBcvPZg==
X-Google-Smtp-Source: ABdhPJyNhiR0WCLprzojB+bzsoIu+VAQJAFJNw45gZ1HbjTQT04eNyWkTiTQyluaemVlbTwtyhfRpHxe7Q==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:a17:903:1c3:b0:142:3ae:5c09 with SMTP id
 e3-20020a17090301c300b0014203ae5c09mr2835269plh.52.1636585216973; Wed, 10 Nov
 2021 15:00:16 -0800 (PST)
Date: Wed, 10 Nov 2021 15:00:12 -0800
Message-Id: <20211110230013.3271596-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 4.19 1/2] binder: use euid from cred instead of using task
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
Change-Id: I91922e7f359df5901749f1b09094c3c68d45aed4
---
 drivers/android/binder.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index cda4f7eb58ea..58e497db26b4 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -483,6 +483,9 @@ enum binder_deferred_state {
  * @files                 files_struct for process
  *                        (protected by @files_lock)
  * @files_lock            mutex to protect @files
+ * @cred                  struct cred associated with the `struct file`
+ *                        in binder_open()
+ *                        (invariant after initialized)
  * @deferred_work_node:   element for binder_deferred_list
  *                        (protected by binder_deferred_lock)
  * @deferred_work:        bitmap of deferred work to perform
@@ -529,6 +532,7 @@ struct binder_proc {
 	struct task_struct *tsk;
 	struct files_struct *files;
 	struct mutex files_lock;
+	const struct cred *cred;
 	struct hlist_node deferred_work_node;
 	int deferred_work;
 	bool is_dead;
@@ -2962,7 +2966,7 @@ static void binder_transaction(struct binder_proc *proc,
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = task_euid(proc->tsk);
+	t->sender_euid = proc->cred->euid;
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
@@ -4341,6 +4345,7 @@ static void binder_free_proc(struct binder_proc *proc)
 	BUG_ON(!list_empty(&proc->delivered_death));
 	binder_alloc_deferred_release(&proc->alloc);
 	put_task_struct(proc->tsk);
+	put_cred(proc->cred);
 	binder_stats_deleted(BINDER_STAT_PROC);
 	kfree(proc);
 }
@@ -4799,6 +4804,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
 	get_task_struct(current->group_leader);
 	proc->tsk = current->group_leader;
 	mutex_init(&proc->files_lock);
+	proc->cred = get_cred(filp->f_cred);
 	INIT_LIST_HEAD(&proc->todo);
 	proc->default_priority = task_nice(current);
 	binder_dev = container_of(filp->private_data, struct binder_device,
-- 
2.34.0.rc0.344.g81b53c2807-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
