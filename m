Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E24944CD78
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 00:00:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B07140404;
	Wed, 10 Nov 2021 23:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RrJ_KlTOI4Md; Wed, 10 Nov 2021 23:00:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EB0C400BE;
	Wed, 10 Nov 2021 23:00:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE4E21BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8445404FA
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 69z5lGlNOLZ8 for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 23:00:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 296C2404DA
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 23:00:08 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 mn13-20020a17090b188d00b001a64f277c1eso2011318pjb.2
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 15:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=NNtCs/5Asdgm6ZFGpEfa7ooseuLLQp0DNLVc8QA+Qxc=;
 b=nhsM5qNip0GWTl9WLxLWO7V0RpbBb3DBIwEXUFpkD8bnYnN5+ssWx72X1tjMx/FB70
 Pbrlo9F3YwOPaIWGQ7mdUTMjeaXwxUvGKli9we7tCM8rn20LRx/C7bkrGiqPRgCSC/OT
 4ixMSL2lX1R93/wddvuP+Vow7Ep2d91vRYRvrWypAQSOkzx4E/uoZubrqAceVibTbN87
 cZl9jCnBh4PhjmAp8YbYLd/AOQX0Xl9fn1AcjMVZaxvTWab0jdm9emKpjBV6OGDK7dWv
 QmykrhmJ6dE3IC67Ddq9P7YSEkF461dxqnvDPTenO3G05XbTTwKjLSCKgM/77nJgS9TR
 OYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=NNtCs/5Asdgm6ZFGpEfa7ooseuLLQp0DNLVc8QA+Qxc=;
 b=G/34GhZTXo6y20aIrTQqp+UEqq5PSbsfkOqjpKHZ1ghZFr0iHeoq7WolVuEQGuK1Pq
 RtWgp1TDrp4vwy1JNEgA9aL1yqQJ1IjHZDikM0BwYYhSJeLwS4+/1IH83PSbf4raz1yg
 PPzYr1GfCuDjWTdy0wbZy1vm+w/WhhnUCbvfGMkE7iqVAjE4gRevZxsqwI30LV5y6gBy
 oP4b0UtvBE2NJm16x8IeJHzkTtw++L/AOfIWG0wlpLnh1+PQpT6emTPQngD2kTcLok19
 /tUUb8VYtniUfW7Gl2QFW+KMdO5S5oeNDLHWSjK2kfOqZiVEnLaeN6qlY+8FL/C3kUiH
 Uqlw==
X-Gm-Message-State: AOAM5313YdzaftosNVVsk+JShCPZKAh13ThrS+LOPjoR47IikRRkI5VJ
 3qAWcFgDKszapLYw6IdQNuJ+NLegvw==
X-Google-Smtp-Source: ABdhPJzfmbvcdwiBN03d/zTSOvM+WMgFuMWfvsDrxxruIbYfM1j+IsSOPHJf8XD7UM0mYdGHjZn/SQr4hQ==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:a05:6a00:2391:b0:47c:2747:b1f5 with SMTP id
 f17-20020a056a00239100b0047c2747b1f5mr2682892pfc.44.1636585207324; Wed, 10
 Nov 2021 15:00:07 -0800 (PST)
Date: Wed, 10 Nov 2021 15:00:02 -0800
Message-Id: <20211110230003.3270335-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 4.14 1/2] binder: use euid from cred instead of using task
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
index 0db4b5646036..332b4a2cbb94 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -484,6 +484,9 @@ enum binder_deferred_state {
  * @files                 files_struct for process
  *                        (protected by @files_lock)
  * @files_lock            mutex to protect @files
+ * @cred                  struct cred associated with the `struct file`
+ *                        in binder_open()
+ *                        (invariant after initialized)
  * @deferred_work_node:   element for binder_deferred_list
  *                        (protected by binder_deferred_lock)
  * @deferred_work:        bitmap of deferred work to perform
@@ -532,6 +535,7 @@ struct binder_proc {
 	struct task_struct *tsk;
 	struct files_struct *files;
 	struct mutex files_lock;
+	const struct cred *cred;
 	struct hlist_node deferred_work_node;
 	int deferred_work;
 	bool is_dead;
@@ -2890,7 +2894,7 @@ static void binder_transaction(struct binder_proc *proc,
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = task_euid(proc->tsk);
+	t->sender_euid = proc->cred->euid;
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
@@ -4261,6 +4265,7 @@ static void binder_free_proc(struct binder_proc *proc)
 	BUG_ON(!list_empty(&proc->delivered_death));
 	binder_alloc_deferred_release(&proc->alloc);
 	put_task_struct(proc->tsk);
+	put_cred(proc->cred);
 	binder_stats_deleted(BINDER_STAT_PROC);
 	kfree(proc);
 }
@@ -4717,6 +4722,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
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
