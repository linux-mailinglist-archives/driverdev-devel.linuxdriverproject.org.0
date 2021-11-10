Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B5744CD6A
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 00:00:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28F7D404D7;
	Wed, 10 Nov 2021 23:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mpl6iX6meV59; Wed, 10 Nov 2021 23:00:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F041404D1;
	Wed, 10 Nov 2021 23:00:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0E371BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 22:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9CD0E404BF
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 22:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FECfcBfLGNWM for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 22:59:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com
 [IPv6:2607:f8b0:4864:20::749])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F11C3404B8
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 22:59:57 +0000 (UTC)
Received: by mail-qk1-x749.google.com with SMTP id
 m9-20020a05620a24c900b00467f2fdd657so1305447qkn.5
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 14:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=NXQIBC6uYXJLQpdA1ZTQsbPYiMrRJU1fGrC8dl1Rh5Y=;
 b=KUcUkMZCJ1Sxvy3WZCGTCt8+iPcMu+xuZw+WjPAJjkghJkPzi1lfoZeB/cUmvkLi5y
 F/RLcGN2Jq+4dzAqsSJrSbj+tupQEACP7qA2OeLRN9p04ZKzbNZzjM8d2JWSDwgBk/HL
 MqCoM5XeHpxAuguisbs5Ua6wxLmlmlDk6LWazBnln9yqzrRvUokHfiU3HgzR8xpQ9UJV
 hlOOkEczbm4xspdFhyBvEqBIxGGz1pwwY0INUyPrvLMYCdMMxjTpsK6zLf7MEtFVnNco
 RlC1mVyu6NXOh6dxh/qZp0E4USbT9O5LZvKXN8Ijd/q91f1naYGQ9+jOd/ODaN5A/qMq
 xoiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=NXQIBC6uYXJLQpdA1ZTQsbPYiMrRJU1fGrC8dl1Rh5Y=;
 b=WAgpsMb41WXa3alYXqoErklrbQ7MOlxlwsf+kME0LBzzUQe+YCJHuW/gilhYlpmeQs
 LSJR7InN3ZCcJeK0qA98Ljtc1L8zApBUr7QlnEUW6RdFmbhQzk+KYlLCIdex5XInh3Sp
 V406KbROPEhN+zPYhAoIJzEu4+W8dg31SetuFyHHryhiI29QqwLWQk/yJ6Xty8JHp1q6
 5vvxIcmNJ9OI9n9422VbS49g6NWTyxxfQGiqRYBHfyhNplDB9ttixYopuHIWQPvKjpJj
 39Bq8CsgbjM/cbEXtrCwTbvmj+7Y+1Zcj0g+GLgldFb3j828ECbHG02NDsuWQywdLAvi
 zgWQ==
X-Gm-Message-State: AOAM5302TALg84et5UZjr7UzxsB/fntgHiCeD0eGa6tvF/sTXtUQ1Ty2
 4WfVzGzBaiUD8k1xs8BVpnMwrqJX/w==
X-Google-Smtp-Source: ABdhPJw479LzTKWlqeP07bR6w9grHAeEl0pIQEOjZxFUv82cxFBywlg9sTuPiSdwLgkXDAPeaRDz6DzIqg==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:a05:622a:1a9b:: with SMTP id
 s27mr2812572qtc.417.1636585196708; Wed, 10 Nov 2021 14:59:56 -0800 (PST)
Date: Wed, 10 Nov 2021 14:59:52 -0800
Message-Id: <20211110225953.3269439-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 4.9 1/2] binder: use euid from cred instead of using task
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
 drivers/android/binder.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f4c0b6295945..fe1a70447c1e 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -303,6 +303,7 @@ struct binder_proc {
 	struct task_struct *tsk;
 	struct files_struct *files;
 	struct mutex files_lock;
+	const struct cred *cred;
 	struct hlist_node deferred_work_node;
 	int deferred_work;
 	void *buffer;
@@ -1505,7 +1506,7 @@ static void binder_transaction(struct binder_proc *proc,
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = task_euid(proc->tsk);
+	t->sender_euid = proc->cred->euid;
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
@@ -3036,6 +3037,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
 	get_task_struct(current->group_leader);
 	proc->tsk = current->group_leader;
 	mutex_init(&proc->files_lock);
+	proc->cred = get_cred(filp->f_cred);
 	INIT_LIST_HEAD(&proc->todo);
 	init_waitqueue_head(&proc->wait);
 	proc->default_priority = task_nice(current);
@@ -3241,6 +3243,7 @@ static void binder_deferred_release(struct binder_proc *proc)
 	}
 
 	put_task_struct(proc->tsk);
+	put_cred(proc->cred);
 
 	binder_debug(BINDER_DEBUG_OPEN_CLOSE,
 		     "%s: %d threads %d, nodes %d (ref %d), refs %d, active transactions %d, buffers %d, pages %d\n",
-- 
2.34.0.rc0.344.g81b53c2807-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
