Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A240742AA1D
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 18:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A065E60BBF;
	Tue, 12 Oct 2021 16:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B8p57WAS1p8t; Tue, 12 Oct 2021 16:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 022E660B95;
	Tue, 12 Oct 2021 16:56:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E7451BF9B6
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 16:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DC5360B95
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 16:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XLaHreHg-BRl for <devel@linuxdriverproject.org>;
 Tue, 12 Oct 2021 16:56:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A86F96059E
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 16:56:22 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 c65-20020a251c44000000b005ba81fe4944so17669799ybc.14
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 09:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Mwae8Ejzsmbhdp150195SP11OIoOnZHvR8wRYQamjXg=;
 b=RZ/VZBHl1HvOJwMNfn/wyOhkRQ7x7ZEERi3vIgiH1zWADtTrwOSu3msb+uBQ5z/+zo
 3SRgiJvV5Bx+HU9qQk24SooKq+aeGWwJss5ZPBHS18wTHIs5bVhCRZepq/qdObdMRKhb
 L1wunp82irR9mtPFWffaUV6KsDXII0nGdD20NleN0KqbzWVC0208pZOT4d+D6JotJ37o
 UPIzghFGIDn7oYQl0tpPAzhBjUOcRPP9Kw9hiNXU/AnPuXDgVwQKx2bRncxoSta3kYEd
 Vx9wTcnVuNVEYNH+hD6dM+xkjcqPgRqRdXv15pXgw/bjcpW3pwF2Tj7rlUe6rXYhVq4a
 10uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Mwae8Ejzsmbhdp150195SP11OIoOnZHvR8wRYQamjXg=;
 b=6cZO/4R8cFcZTfOpFLBuGTTNs61TFSoXra4HSze7L1SeQDKA4HG69sIHjOGKieOI+B
 V3UM7EkNlZDSyIAbH0l5qNBpEbNfnFK9I+iIMO2v6h+6Za8sQNZQB1bHseXQZZNICc/6
 WfVlAhBucGYbCFlt9bvftMm2X/1H432erlbyqQrVBs8sHkGZnsKU+dz2QmRf+t4Iz2KW
 rIywUBJ9K9hmj1d8fLV+syzH1gtOgQSX2ywCvsNdPSJBCt3moY3AL21rLA6GkW2fYxhz
 Ai025XaQDArX3LbtejJrEKe7HyLevLtanYDif3YjWluzZrBic3FEbpzDqz49YGJwJiAl
 YB9A==
X-Gm-Message-State: AOAM530q+T3okKq317M4xR0oYOtNHYhLMqguBsXxDGaE77j2R1QrlNeO
 MxqdP3CyTGe1HeG57fYaMfKumbTxnw==
X-Google-Smtp-Source: ABdhPJzyTWT16jc0uAEpzHgNTjY8P3Cae43hy5GOBsxaWT1o4sIRwdkN+OAgexPrM9Wj0PqxVQ4ruuYa6g==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:39c7:8168:c0b2:b46e])
 (user=tkjos job=sendgmr) by 2002:a25:d94d:: with SMTP id
 q74mr29250835ybg.196.1634057781619; 
 Tue, 12 Oct 2021 09:56:21 -0700 (PDT)
Date: Tue, 12 Oct 2021 09:56:12 -0700
In-Reply-To: <20211012165614.2873369-1-tkjos@google.com>
Message-Id: <20211012165614.2873369-2-tkjos@google.com>
Mime-Version: 1.0
References: <20211012165614.2873369-1-tkjos@google.com>
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
Subject: [PATCH v5 1/3] binder: use euid from cred instead of using task
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

Save the 'struct cred' associated with a binder process
at initial open to avoid potential race conditions
when converting to an euid.

Set a transaction's sender_euid from the 'struct cred'
saved at binder_open() instead of looking up the euid
from the binder proc's 'struct task'. This ensures
the euid is associated with the security context that
of the task that opened binder.

Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
Signed-off-by: Todd Kjos <tkjos@google.com>
Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
Suggested-by: Jann Horn <jannh@google.com>
Cc: stable@vger.kernel.org # 4.4+
---
v3: added this patch to series (as 3/3)
v5:
- combined with saving of 'struct cred' during binder_open()
- reordered to 1/1 as suggested by Stephen Smalley

 drivers/android/binder.c          | 4 +++-
 drivers/android/binder_internal.h | 4 ++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 9edacc8b9768..a396015e874a 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2711,7 +2711,7 @@ static void binder_transaction(struct binder_proc *proc,
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = task_euid(proc->tsk);
+	t->sender_euid = proc->cred->euid;
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
@@ -4353,6 +4353,7 @@ static void binder_free_proc(struct binder_proc *proc)
 	}
 	binder_alloc_deferred_release(&proc->alloc);
 	put_task_struct(proc->tsk);
+	put_cred(proc->cred);
 	binder_stats_deleted(BINDER_STAT_PROC);
 	kfree(proc);
 }
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
-- 
2.33.0.882.g93a45727a2-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
