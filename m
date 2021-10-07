Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6480A424B5D
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 02:47:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57FA6841F8;
	Thu,  7 Oct 2021 00:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 18jzpHBFsTaQ; Thu,  7 Oct 2021 00:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 932ED841F6;
	Thu,  7 Oct 2021 00:47:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82FD71BF9B9
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 00:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70F714025F
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 00:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KmZ099jbTnSN for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 00:46:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com
 [IPv6:2607:f8b0:4864:20::84a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89FE540230
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 00:46:38 +0000 (UTC)
Received: by mail-qt1-x84a.google.com with SMTP id
 o6-20020a05622a008600b002a6c2fbc853so3746818qtw.16
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 17:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=CH/DW8RotmHfFuCbYoHpP62hkgIiMJ06u9s6VjSYC3s=;
 b=LYTioxtci52jcphCHe8u1eoYv8kmpvwPXGYh1Uwm8AyktnJEWy1v3mFruvAYtAjn/Q
 EDHeLfY1iPVnDnivL3Upw6ev+O6/tMPhIBx5fWWGXLpSbTLnd75JRyfeyM9HfKVDrM8S
 iiYfpH+8BwtyYgPllJRfaYYSFUHw0cdfdS4H2S6iR1BXaG03UGQ0VEX9hxzii5TNIvqt
 vCbzEgSmb227NEoG+nhMpQhyQX+QrfSPWZu/C4QNW/7v4Ww43bKzkNCkwv+6uAWwZYRi
 gtswe0KxRCcpP5JmR0encJ5FMEyMWyhl0HJDjzzG7/4/9Klnx3hJL7wNarFLuE9Ma9xl
 U0Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=CH/DW8RotmHfFuCbYoHpP62hkgIiMJ06u9s6VjSYC3s=;
 b=oSQUI+ID385p7XvKa863mf4NuWfI5oOL57Ba3voXVUJpPiyL2NNY6oYsJyewb2FFtN
 /BN4gnEG5Ph9S6WoeLyckdrQD6LxO5iolCA0rwipEJ8PGtBwxomF2dIL74G9Bs8NbxIv
 RrH171hUZuKe9upNxNbJfskFlCjNrDrnuj8RrsBaSVB+cw/cJ/fWAw9G4eFl12UbkmXM
 KPv6OyqNJQ7jLNoGP2iqOyTCMryl8kDxeMfIzjtekfdjFTsLj/6oftCoBJMWirsM2ipN
 q6padpQ445iviPNKqLmnwwQeUp8MYj07FK9axXoweKbjn6DXi730ucU6C2oN8wXbl1gm
 wmRQ==
X-Gm-Message-State: AOAM5337zpA4KMsjcvUd14E6j0YYXWLs7LOfDc2e/n/UdSaXVk4qmg4x
 m2Axf4/8cmdMEgn3aIsOxnz9bL60vg==
X-Google-Smtp-Source: ABdhPJwMqLn/cAh17Y37uR0h1Q2rnNT1/CHPF8cLO2zOiQpjODuYunYRg5mcCdS5tsK+bwE+XPkH/q8wag==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:6ff2:347f:ac4a:8a04])
 (user=tkjos job=sendgmr) by 2002:ac8:615c:: with SMTP id
 d28mr1528098qtm.103.1633567597415; 
 Wed, 06 Oct 2021 17:46:37 -0700 (PDT)
Date: Wed,  6 Oct 2021 17:46:28 -0700
In-Reply-To: <20211007004629.1113572-1-tkjos@google.com>
Message-Id: <20211007004629.1113572-3-tkjos@google.com>
Mime-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
X-Mailer: git-send-email 2.33.0.800.g4c38ced690-goog
Subject: [PATCH v4 2/3] binder: use cred instead of task for getsecid
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

Use the 'struct cred' saved at binder_open() to lookup
the security ID via security_cred_getsecid(). This
ensures that the security context that opened binder
is the one used to generate the secctx.

Fixes: ec74136ded79 ("binder: create node flag to request sender's
security context")
Signed-off-by: Todd Kjos <tkjos@google.com>
Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
Cc: stable@vger.kernel.org # 5.4+
---
v3: added this patch to series
v4: fix build-break for !CONFIG_SECURITY

 drivers/android/binder.c | 11 +----------
 include/linux/security.h |  4 ++++
 2 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index ca599ebdea4a..989afd0804ca 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2722,16 +2722,7 @@ static void binder_transaction(struct binder_proc *proc,
 		u32 secid;
 		size_t added_size;
 
-		/*
-		 * Arguably this should be the task's subjective LSM secid but
-		 * we can't reliably access the subjective creds of a task
-		 * other than our own so we must use the objective creds, which
-		 * are safe to access.  The downside is that if a task is
-		 * temporarily overriding it's creds it will not be reflected
-		 * here; however, it isn't clear that binder would handle that
-		 * case well anyway.
-		 */
-		security_task_getsecid_obj(proc->tsk, &secid);
+		security_cred_getsecid(proc->cred, &secid);
 		ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
 		if (ret) {
 			return_error = BR_FAILED_REPLY;
diff --git a/include/linux/security.h b/include/linux/security.h
index 6344d3362df7..f02cc0211b10 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -1041,6 +1041,10 @@ static inline void security_transfer_creds(struct cred *new,
 {
 }
 
+static inline void security_cred_getsecid(const struct cred *c, u32 *secid)
+{
+}
+
 static inline int security_kernel_act_as(struct cred *cred, u32 secid)
 {
 	return 0;
-- 
2.33.0.800.g4c38ced690-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
