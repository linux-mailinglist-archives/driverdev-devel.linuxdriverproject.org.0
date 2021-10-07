Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5866424B5E
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 02:47:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E8F760F70;
	Thu,  7 Oct 2021 00:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lj4y2A7WAzfK; Thu,  7 Oct 2021 00:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F41960F61;
	Thu,  7 Oct 2021 00:47:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC7D41BF9B9
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 00:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B676B841F6
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 00:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GsSnnS5ZB2-O for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 00:46:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E8C1841F3
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 00:46:40 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 z2-20020a254c02000000b005b68ef4fe24so5718258yba.11
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 17:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=zPCs1rEpKuQz4LUSoTxaJ0G3vwf7KAFSlUITLwZs6tU=;
 b=p7C8NObDL/qgsnHg5/TYMe/e2qJ6I/Lq4YqPZ2gUnySyfykd5F/A2vU/1m3ceyFytV
 I/7OeC1DNhDBO/Sg1SZmblT8zSDOS20AEaXhLm2H/qlJpIU+UkrwJgwQR6ZhajMJlwdg
 H0AQ8c2Ji4cC5UGLPFyjbyHiVLS1+KBXJaeDkVYrBsKAL2mDeRIuBNWlxuMFkZA9ZGV8
 A7qky4OO4I/PaZtI6fTe4+d1q4NwNuqcs2UJX5Gqm7isuGeOruusB375wUngfU0n4dV1
 v6iAo7zDuAInyEyLRn9Rt/0nvTXYRScq+aeug+gsRlashaZxAnGdEcAqgBxeJf60frPU
 Y76A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=zPCs1rEpKuQz4LUSoTxaJ0G3vwf7KAFSlUITLwZs6tU=;
 b=FqH6MjpPAuLdW0PHbDqFkvGS9JOm7TP//52OynrP6MN5IPthJ7DecUvXl3wvvfA/ko
 PG+DaMtn3+8IHoEi8EBjYz3fPy+wUrEtOb2d0HCJjAxyucUjbEk09Ak0DyaKkVlCcOOS
 TBsvUDtk6YcuEm4vuu4c6qD0I6fu1uzLqIbBT7hU0/li4KBhTpe4HOGGzSktbJZZ2wdj
 a6zH0Clk4KFLvCN8JDH20YPhAqVHQVyj/Fp+jlmaGxAwo5Yvnc8bEYUHJdu7W1N/XBB0
 fnPereyu3T8C65iM23T0Dj2x6M7XoKjI1DrMpiti4BD32NW4IMILaHLHLSGuN9kazBkC
 y6cg==
X-Gm-Message-State: AOAM530j8e60QXtNEPtSByr+wxbXMpmGjWPGAA/bE0zXGe9B9k61a5wF
 UAaxEq490gy7Y+WGj4N2xplE1VcV2Q==
X-Google-Smtp-Source: ABdhPJyjO6u79sIe1Ctn1/EYwfXuBQtVGMw40kM5yChFcDVNsb4RU39eXJBDBGttGXiLTmWRzysZNXQWxg==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:6ff2:347f:ac4a:8a04])
 (user=tkjos job=sendgmr) by 2002:a5b:501:: with SMTP id
 o1mr1359354ybp.402.1633567600035; 
 Wed, 06 Oct 2021 17:46:40 -0700 (PDT)
Date: Wed,  6 Oct 2021 17:46:29 -0700
In-Reply-To: <20211007004629.1113572-1-tkjos@google.com>
Message-Id: <20211007004629.1113572-4-tkjos@google.com>
Mime-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
X-Mailer: git-send-email 2.33.0.800.g4c38ced690-goog
Subject: [PATCH v4 3/3] binder: use euid from cred instead of using task
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

Set a transaction's sender_euid from the 'struct cred'
saved at binder_open() instead of looking up the euid
from the binder proc's 'struct task'. This ensures
the euid is associated with the security context that
of the task that opened binder.

Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
Signed-off-by: Todd Kjos <tkjos@google.com>
Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
Cc: stable@vger.kernel.org # 4.4+
---
v3: added this patch to series

 drivers/android/binder.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 989afd0804ca..26382e982c5e 100644
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
-- 
2.33.0.800.g4c38ced690-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
