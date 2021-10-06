Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BADC42476F
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 21:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11FFC82DE6;
	Wed,  6 Oct 2021 19:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-sCRjwK4KOA; Wed,  6 Oct 2021 19:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6885984107;
	Wed,  6 Oct 2021 19:46:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFB3C1BF9AF
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 19:46:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA2B9840DA
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 19:46:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ormKYD9L7yY for <devel@linuxdriverproject.org>;
 Wed,  6 Oct 2021 19:46:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com
 [IPv6:2607:f8b0:4864:20::f49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46A28840D8
 for <devel@driverdev.osuosl.org>; Wed,  6 Oct 2021 19:46:23 +0000 (UTC)
Received: by mail-qv1-xf49.google.com with SMTP id
 fq15-20020a056214258f00b003831673b6bfso2861081qvb.15
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 12:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=S46yz478S8g1jd3FQde3QS+N6MClLovbhy1xDKfV8s4=;
 b=LTnJjPOs+ZrjG0fHZJG5cMVX7InUq2MqrkMbeo48RoAHPz31PRLdH8EOCHwXyVPyc1
 X10w6ZZcI/Hsx7ienxn79JbwedGc+RPfPqaKzL5G/tmWw7NSxvn6Q4nw541XyO7uOiy2
 jJIVJfZILKhWwS3qA1i7qPKnmFdKmYF56wf3Xityp9t7QBQTeFhPdok+rnGnUwLmP9c4
 kTMU7DwzzBEDSl5VEmeAFQQ5twDjGLJLEnvb/JeuNTKjr0YTbuTXc0UCmpHGy0P8tCS1
 Z2XjLcil0IT80vK0kdj7sKduydQnvvj4LI6rlUBOnIu3KJ4NsuTDZLY5lZA6h6CVNn9T
 QHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=S46yz478S8g1jd3FQde3QS+N6MClLovbhy1xDKfV8s4=;
 b=ZVB4P0/Kn05UqGtLMcPLL9n196YDepeyay85HaWW+q+wshxpJpxSG7IggAev3z1vC8
 s27JGgUyqRlGOD/kxKtZVp/sCajbPM4bjy50WMIGGdj6PrK9wQZu1lPhOIwBoNOQQRJg
 WKYo+n4J1i0fMgVIbLrSs/ioUdSX6PwPI6WUjZwK1LA+v5teYJA01JeNVavm0ZLvgBWs
 fupP3n+ywvs3zWg7DKF7w0yOMM76WrdSvcl+l1FvSDhHbJi1X2bZIsFO8qzOQK6yOHkx
 0gdvVTWrFQlpkx4nCVY/ckfdk69q7kf5gOXXNGFKzTTStkPCCJt/ws6Q/hf/llzuBfev
 NlWg==
X-Gm-Message-State: AOAM532gmWgiaHZHMwYJvzUYSS5eqOJh+dVTMen51SlgOFdOikhs3BJw
 0IwRO+7Jjhq+L5vXhPhm6E9KTu4CzQ==
X-Google-Smtp-Source: ABdhPJwethn/u+nenu/8wM0paTR5+kkIhr4fatlk63zkiST7M/XeOk6Gp0cs5DvZ0ktg8MeudPwnwmd6zQ==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:6ff2:347f:ac4a:8a04])
 (user=tkjos job=sendgmr) by 2002:a05:622a:188e:: with SMTP id
 v14mr108103qtc.62.1633549581824; Wed, 06 Oct 2021 12:46:21 -0700 (PDT)
Date: Wed,  6 Oct 2021 12:46:10 -0700
In-Reply-To: <20211006194610.953319-1-tkjos@google.com>
Message-Id: <20211006194610.953319-4-tkjos@google.com>
Mime-Version: 1.0
References: <20211006194610.953319-1-tkjos@google.com>
X-Mailer: git-send-email 2.33.0.800.g4c38ced690-goog
Subject: [PATCH v3 3/3] binder: use euid from cred instead of using task
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

Set a transaction's sender_euid from the the 'struct cred'
saved at binder_open() instead of looking up the euid
from the binder proc's 'struct task'. This ensures
the euid is associated with the security context that
of the task that opened binder.

Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
Signed-off-by: Todd Kjos <tkjos@google.com>
Stephen Smalley <stephen.smalley.work@gmail.com>
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
