Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0916044CD97
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 00:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE30F404E2;
	Wed, 10 Nov 2021 23:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csvcPtWr-6xL; Wed, 10 Nov 2021 23:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C675404C2;
	Wed, 10 Nov 2021 23:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 530691BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F2B8404C9
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05BmGtXkmmQZ for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 23:00:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com
 [IPv6:2607:f8b0:4864:20::84a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AEEC404C5
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 23:00:40 +0000 (UTC)
Received: by mail-qt1-x84a.google.com with SMTP id
 v32-20020a05622a18a000b002b04d0d410dso1948516qtc.11
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 15:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=B5qR9IFfPYyqZzAR1NtxHfHPCrwSatA1W5mjCxV+NDo=;
 b=dxpfCGJxE0aLuP6SejLibiTWJsNl6eV6c/7AD/qBuov+nxRRy9M+Huw3sdeCqSw3xv
 untZb7uJRe2oloH8KlA+ToFNZyo1bQX1//VSPZG1xBzkjFFmXQ8FUT0loiOBRk/qzJQ+
 vUFvWT9J8gW7RNdvL06j01uuCWnmRV4JaOhGfxGF/4xo3f7jewGnfVu/v8rQDnTqCv63
 vbIOKJhptN6quN5JVzvqlOdqkPmVW0QhGrE+OVgPBU+w1jzf9h4Q2dIgNefrreNPlTZt
 NOf9feJkkaU36k5lWJJBZaNmDy6lqNrPoJ4cLXDaA8pj5JkDO/RivBeoALWPLGPNC18B
 RCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=B5qR9IFfPYyqZzAR1NtxHfHPCrwSatA1W5mjCxV+NDo=;
 b=Jvw9giOg9pYydxq+43mpnGy8obJpLk/MP0VXK6ktUjz0USTiRA60kKXeKIoGqDMSTf
 tVzaInyhKooNcxx/RZOhlJqbgLpfHhVddrtlVGUB4cmUMbI0b1gUib9elpPAdVWRDlxk
 SCsqw1fQop94Hchu3PC9Gcfxt7dlSIPbXMs6YfByUbUWGMnfbRrwCHBMFZcrkzedfe24
 HWcwX0eyCW5FzlzmaXEdYGybFs0GqYIVX6X6vKz8jJ/jCaKBNkMXSl/kd67vt76/j7m2
 9hv05VfeMwJ3U5Aj9U9QR2JYYQCKCjRU3GtlGQkO67J7tuDXfSBwJ/2lg1VGFxBr923o
 svYg==
X-Gm-Message-State: AOAM530Yu+XrndI6F4VM4u5ky39MLtnxmPzm/1kogMgr27ZXKSSSsenH
 ykgSh/M/gr2osJKMt2QSisViesPOMA==
X-Google-Smtp-Source: ABdhPJxNeI9pPQMczNqh7lTEOTjZOwslOwZWyiK/KZOlDPOiuxMgX0yqvhob/VWngaHy4gSf0G3hdmOstQ==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:a05:622a:20d:: with SMTP id
 b13mr2915118qtx.368.1636585239970; Wed, 10 Nov 2021 15:00:39 -0800 (PST)
Date: Wed, 10 Nov 2021 15:00:34 -0800
Message-Id: <20211110230036.3274365-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 5.10 1/3] binder: use euid from cred instead of using task
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
index 65b22b5af51a..4e33f6e42ac4 100644
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
@@ -3088,7 +3092,7 @@ static void binder_transaction(struct binder_proc *proc,
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = task_euid(proc->tsk);
+	t->sender_euid = proc->cred->euid;
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
@@ -4703,6 +4707,7 @@ static void binder_free_proc(struct binder_proc *proc)
 	}
 	binder_alloc_deferred_release(&proc->alloc);
 	put_task_struct(proc->tsk);
+	put_cred(proc->cred);
 	binder_stats_deleted(BINDER_STAT_PROC);
 	kfree(proc);
 }
@@ -5220,6 +5225,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
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
