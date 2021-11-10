Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6E344CD94
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 00:01:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC7EC40534;
	Wed, 10 Nov 2021 23:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9AuV6aK7QY6I; Wed, 10 Nov 2021 23:01:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 267DF404F1;
	Wed, 10 Nov 2021 23:01:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EAC91BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2B1B4021A
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NhG4ThsjfwDi for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 23:00:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 424FE400BE
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 23:00:33 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 l10-20020a17090a4d4a00b001a6f817f57eso1841119pjh.3
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 15:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=yNrrb1MY66o5TEyam1VaYvCkGo/lj2vOXH/uZFJ75Lc=;
 b=CUiAJ9p5bk6Iv5tdC414ooYPRjb2bhcAWHQgOvROCxmPWVNHbu21+CN5VqNAqK+mcs
 FFtDjMO7bm0CbatcQhs84QzxXP94big3USlPHlyS3RGDCvEhnlsWpqBJZOVY8lIJp5hn
 3Go0qjSqbksTmIablvqW2e/FGdfCqpq6cyxLCONn7aCyrDVeFrErwdojbZM0cWHT3SRo
 3L9gRGkHDx4RmWHyqr/NfoVpe2WoTMZmIE0oHCr1zWm82eVeif7vlOfe1rGu3wFnjLec
 05IJIhEFUy7/jOUiv46ST6F/2eIPPE2FtQc6HN5u5tB7qBOo/oW1Lzhol+VXAc50CbA6
 8xpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=yNrrb1MY66o5TEyam1VaYvCkGo/lj2vOXH/uZFJ75Lc=;
 b=cGstsnkpcYxHmY3PPZaZWdeE9tXiggJ1gaKkdH+npiiR+RKVemHTys1TDQq41yY6L+
 uqodmhN6DkXX+gq9xNemVCEFjkg4Y+U74fZvLLcN02rlSYXIhfw9ln9725FR1MwGRW+x
 y+fJlYkMi7cSxc1QQIm/RJ34G/8E25tF2wY0itmIPXki0SqGV0C0q4GBJ6N74J+yC/rM
 8wMMoYiS8hPcrcUrq3VazGKqr1s9QI2Wd50O0vKHP2OyrvZxI7EknPBcrRkkeqMN3fiW
 KXIHgk9OaS9njQUAO25wjz/TbERvTFtGNmKoQLLlP9mCP2aQqWIxLg7YHrVWhNlipACQ
 xLcw==
X-Gm-Message-State: AOAM531Y9Whz+uRr4DcNNPKjN20iCbbL2LxxWBOl1QeN+8nitD3ryVRu
 XBAKZMoLGd/L470nxbyOqtU3cgV8pg==
X-Google-Smtp-Source: ABdhPJywdaxOOw9nASlhOPJsKBRybMvXwDYonXMni0w7Qq+5w6A1MNcPmMEClR1ICZ6i+XHI8LUP2VsobA==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:a17:90a:b107:: with SMTP id
 z7mr3006564pjq.104.1636585232687; Wed, 10 Nov 2021 15:00:32 -0800 (PST)
Date: Wed, 10 Nov 2021 15:00:25 -0800
In-Reply-To: <20211110230025.3272776-1-tkjos@google.com>
Message-Id: <20211110230025.3272776-3-tkjos@google.com>
Mime-Version: 1.0
References: <20211110230025.3272776-1-tkjos@google.com>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 5.4 3/3] binder: use cred instead of task for getsecid
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

commit 4d5b5539742d2554591751b4248b0204d20dcc9d upstream.

Use the 'struct cred' saved at binder_open() to lookup
the security ID via security_cred_getsecid(). This
ensures that the security context that opened binder
is the one used to generate the secctx.

Cc: stable@vger.kernel.org # 5.4+
Fixes: ec74136ded79 ("binder: create node flag to request sender's security context")
Signed-off-by: Todd Kjos <tkjos@google.com>
Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
Acked-by: Casey Schaufler <casey@schaufler-ca.com>
Signed-off-by: Paul Moore <paul@paul-moore.com>
Change-Id: Ia7b59804a0bdbd51191bbcca556414840307c623
---
 drivers/android/binder.c | 2 +-
 include/linux/security.h | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index cebb2cd1876c..c2c411c458b2 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3107,7 +3107,7 @@ static void binder_transaction(struct binder_proc *proc,
 		u32 secid;
 		size_t added_size;
 
-		security_task_getsecid(proc->tsk, &secid);
+		security_cred_getsecid(proc->cred, &secid);
 		ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
 		if (ret) {
 			return_error = BR_FAILED_REPLY;
diff --git a/include/linux/security.h b/include/linux/security.h
index 0d4cb64cae1f..3f6b8195ae9e 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -985,6 +985,11 @@ static inline void security_transfer_creds(struct cred *new,
 {
 }
 
+static inline void security_cred_getsecid(const struct cred *c, u32 *secid)
+{
+	*secid = 0;
+}
+
 static inline int security_kernel_act_as(struct cred *cred, u32 secid)
 {
 	return 0;
-- 
2.34.0.rc0.344.g81b53c2807-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
