Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6DA44CD5B
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Nov 2021 23:59:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DABE81973;
	Wed, 10 Nov 2021 22:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQ9EwvrX_lWR; Wed, 10 Nov 2021 22:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF67080C81;
	Wed, 10 Nov 2021 22:59:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F11C21BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 22:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED07160775
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 22:59:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6ATBlOOApLS for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 22:59:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com
 [IPv6:2607:f8b0:4864:20::549])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 654EE60614
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 22:59:14 +0000 (UTC)
Received: by mail-pg1-x549.google.com with SMTP id
 r7-20020a63ce47000000b002a5cadd2f25so2244140pgi.9
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 14:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=p1cUwGeUQEoJHf6xV2cI3doT5ZXMV67Wi7GVtUTV4SQ=;
 b=OUzrqS4gMaapy3MUtH5lYIQp3NZRI7ZMZWiBxjefaOKXav7J0oDqev/jUipr14Zp8M
 8p6OEgK5TTKJ1nYhAEb9krLQ2AgxnESBejstYj7qa/RlTQeIqfM7zHSmLZ9lGYNmRVFn
 eWjhAl0bvZ3rhYG8LxZn+F4lLJw/4ib0WdDpydux216zEXMhOuMohzCins0Y/K91L/8R
 GDNSJ8Asfbp63BEq/XySRIF9tuZbHlPGjcIjwZgOXe+Vqc58cbdqPw60cZj/vAZrLvzo
 L5JMaci9MrCophJR6GffVcY6lEuEFpnd2Q04gKB8O8JMF+5v2iwaReFBWCoMs6afCyP5
 IRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=p1cUwGeUQEoJHf6xV2cI3doT5ZXMV67Wi7GVtUTV4SQ=;
 b=AGIIQuzQYadxOrpMz5M+Aw4s9wVO7rEJ8dsLzGf/+DNqO3OMhmH7xOxrSUoZ7HeEXr
 U4sn+nOsKIPe+Wsqtp2NSfgNRZE2hVuzTGLAikN7aLV1O76L69CGj4v1ByT0niDpKWdl
 As17vFLcyqWXmE4vylI1O57LP7wIBSD2NPK7nvBnF/qPsqfEPikePeIh8WjC+A6ftfPU
 AIT75us5wV6cEyvVIpvouA4JOYi8xKbSgVgQuFpMTYvA2a0u++g30FMx4kxoHZLucAkm
 99vMJKAfp8ufTeBndqAz6woi+aMoI4RNliNPW1c+LM4XDzl+eMIXMh25EY/+BhnyOP04
 uGfQ==
X-Gm-Message-State: AOAM5307+tzhqDilyXoBBqY48Psq0ngXY9hqgp+hWIaZTRdGKaq3nDdr
 ayKlFJy/6F7QgGjR+e73LaOaA3j0Qg==
X-Google-Smtp-Source: ABdhPJx8OM9lbwEHeee/6MmNE9uSeAsDUzkWj+Kh/NMxddkxbhM/xrWica1uv/CKrpAZRNhmuTexqemMjA==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:a05:6a00:99e:b0:49f:f9e2:c116 with SMTP id
 u30-20020a056a00099e00b0049ff9e2c116mr2608493pfg.83.1636585153738; Wed, 10
 Nov 2021 14:59:13 -0800 (PST)
Date: Wed, 10 Nov 2021 14:59:09 -0800
Message-Id: <20211110225910.3268106-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 4.4 1/2] binder: use euid from cred instead of using task
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
index 3bc5a7caccbf..0b27238b42c7 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -303,6 +303,7 @@ struct binder_proc {
 	struct mm_struct *vma_vm_mm;
 	struct task_struct *tsk;
 	struct files_struct *files;
+	const struct cred *cred;
 	struct hlist_node deferred_work_node;
 	int deferred_work;
 	void *buffer;
@@ -1493,7 +1494,7 @@ static void binder_transaction(struct binder_proc *proc,
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = task_euid(proc->tsk);
+	t->sender_euid = proc->cred->euid;
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
@@ -3015,6 +3016,7 @@ static int binder_open(struct inode *nodp, struct file *filp)
 		return -ENOMEM;
 	get_task_struct(current->group_leader);
 	proc->tsk = current->group_leader;
+	proc->cred = get_cred(filp->f_cred);
 	INIT_LIST_HEAD(&proc->todo);
 	init_waitqueue_head(&proc->wait);
 	proc->default_priority = task_nice(current);
@@ -3220,6 +3222,7 @@ static void binder_deferred_release(struct binder_proc *proc)
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
