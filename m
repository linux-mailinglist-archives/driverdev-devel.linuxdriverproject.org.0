Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEED44CD92
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 00:01:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB7D240190;
	Wed, 10 Nov 2021 23:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AwsU8c9FB7Ny; Wed, 10 Nov 2021 23:01:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D805E4011F;
	Wed, 10 Nov 2021 23:01:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B04B1BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 017F04011F
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRV5ESWJWqoG for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 23:00:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A61E400BE
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 23:00:29 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 d7-20020a17090a7bc700b001a6ebe3f9cbso1395113pjl.0
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 15:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=t5e0oq8q91cf/Ue6VqtW39BEhdWlEDVqG4XuF2W3UxM=;
 b=cjQh6yNRqAEib4bkuRUUV2DzILAxjUXsa2S96kVT5IHEIF8n+S7d9YYD9bP2jTRXjA
 cvieNrJ8MKHHV3sNffXW9ZMjXt1TjIuHA+6L9COj6WWGhbfPyFJPZd1CAaf7dH0hGVcG
 CiBvI5mu/gxKn7yJdaJ/WcysJmRd+w88jqtiJnn6d6sr1NDNcIX57iLVGRXIvREMQmBI
 6MZ5nuwDLR9H85UDRuW0pj/STyYHfI3ms3RtV9iiS24qAd3YBaZhriYVsy7GfokJe6p2
 BLFyw1YtsZ2z1X98STw3fU3qHQwOrIqFx1PYs+PcSlSnxgL8E6L4D/ZVL6hR+O3cfhbJ
 Qp1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=t5e0oq8q91cf/Ue6VqtW39BEhdWlEDVqG4XuF2W3UxM=;
 b=yMeYTsnfAsUlvl2OdvMQGWPIQLcskF5w10BS3VBIApAMHqEhpTmPpthHo4DKuMH7Ne
 6GlBJFeU+vjJOiBJXaNZ8Gv+UW7SJiFuBj09+HJ/dVTAX3TMKNwhNySlRJts8voh0zeG
 ck4M1DfxXpC2NZwFN+RJ9S7Ry7PAMaH0oKDQ7f6JMR9AaHnp2K3/s5oyM6DY/ZDPG2g4
 8ZQY3bvSKUckXGGBGWO4bcAWlrx99uRiB3ErqUxP9oy8c/3yDpLHchfb5ykIp1abxX5w
 TAnGGkLwMA21CkHokaENcEOgcBRaDt2gcfThu6sywZLv9rfVI1pA5mDONTIpOnklsqLo
 8bGQ==
X-Gm-Message-State: AOAM531OqWW55gcyUbgQWuEHyhHVSnoDn5fD3sO/y0UiCu2FcrKx1xhe
 BS753oqw08dRvUZ0W05cj4aTOIK2fg==
X-Google-Smtp-Source: ABdhPJwpQyLAed5G4PQyKeGJbPJXdZCROZTEk0QHj7f3ksUPOMbm0WkC0uB/PCoqBdVsesGfp5QwGOTDvA==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:a17:902:82c9:b0:142:401f:dc9 with SMTP id
 u9-20020a17090282c900b00142401f0dc9mr2619789plz.43.1636585228607; Wed, 10 Nov
 2021 15:00:28 -0800 (PST)
Date: Wed, 10 Nov 2021 15:00:23 -0800
Message-Id: <20211110230025.3272776-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 5.4 1/3] binder: use euid from cred instead of using task
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
index 4eaef780844e..64f6fb3b1f66 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -424,6 +424,9 @@ enum binder_deferred_state {
  *                        (invariant after initialized)
  * @tsk                   task_struct for group_leader of process
  *                        (invariant after initialized)
+ * @cred                  struct cred associated with the `struct file`
+ *                        in binder_open()
+ *                        (invariant after initialized)
  * @deferred_work_node:   element for binder_deferred_list
  *                        (protected by binder_deferred_lock)
  * @deferred_work:        bitmap of deferred work to perform
@@ -469,6 +472,7 @@ struct binder_proc {
 	struct list_head waiting_threads;
 	int pid;
 	struct task_struct *tsk;
+	const struct cred *cred;
 	struct hlist_node deferred_work_node;
 	int deferred_work;
 	bool is_dead;
@@ -3092,7 +3096,7 @@ static void binder_transaction(struct binder_proc *proc,
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = task_euid(proc->tsk);
+	t->sender_euid = proc->cred->euid;
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
@@ -4707,6 +4711,7 @@ static void binder_free_proc(struct binder_proc *proc)
 	}
 	binder_alloc_deferred_release(&proc->alloc);
 	put_task_struct(proc->tsk);
+	put_cred(proc->cred);
 	binder_stats_deleted(BINDER_STAT_PROC);
 	kfree(proc);
 }
@@ -5234,6 +5239,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
 	spin_lock_init(&proc->outer_lock);
 	get_task_struct(current->group_leader);
 	proc->tsk = current->group_leader;
+	proc->cred = get_cred(filp->f_cred);
 	INIT_LIST_HEAD(&proc->todo);
 	proc->default_priority = task_nice(current);
 	/* binderfs stashes devices in i_private */
-- 
2.34.0.rc0.344.g81b53c2807-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
