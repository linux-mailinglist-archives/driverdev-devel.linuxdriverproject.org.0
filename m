Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7FF42476E
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 21:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90C0E40DA9;
	Wed,  6 Oct 2021 19:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmrMtQUPxFa4; Wed,  6 Oct 2021 19:46:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F11340243;
	Wed,  6 Oct 2021 19:46:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C261E1BF9AF
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 19:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B19CF60F29
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 19:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppLn9anNxRRH for <devel@linuxdriverproject.org>;
 Wed,  6 Oct 2021 19:46:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98A8660F22
 for <devel@driverdev.osuosl.org>; Wed,  6 Oct 2021 19:46:20 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 i83-20020a252256000000b005b67a878f56so4753542ybi.17
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 12:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+cJ2U8Kdfy1yQQcGk3LARYGCqa9M8jIliNAIu7s74eQ=;
 b=ZvJyaUxlzhtcsgadNpmuGGUBZT76eQqyEVoB8on2XenmCdJm9gZ6R2RDf+xiH8rMFG
 1qN5V/UD5aOJs8Hf+hNMD/y6MJMO2w469S+KdFUi+IIo0pJ9S4959sStXjvF7imp5s1w
 Ob9eaIYx5Q95X1D4mzr7Hvi1k54zuwi2eUnK3ftn06t6/bX3gsBzqF2IPr9cJkEs+0UF
 mhBehHkdB00HeaH0+BEtSaaQh1xMDssE8KeuYFm1U5yF8qgcRSJpDrMErZLNHycGQ/FL
 u9Z2R+tNbEc4r6wr6vKtKhYsHcoD35c2RxK1kBQeQA9o8fp0riETFiZRHe6WIpcMZv5f
 rjWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+cJ2U8Kdfy1yQQcGk3LARYGCqa9M8jIliNAIu7s74eQ=;
 b=LUArUIY7YYUcGJO2SRvm86POr+Rk9SN0q0dKz7VGcdPXx4bOoAow+RBhu7Ts3b46dz
 VLiXpLSZBj2ROFiXd+CCltsPQ/WXlitTrXY1gVZusg67LiPNKp4/udSmh7oq8qJ0Q1bU
 yeQO4LpZlzHloTMb5GHzG3hAglGLH7TPAG95/I1FAwjHi9HPiLO9vUPtvMweO2EP0RN7
 DykvXS1gxDTHpkUOd7A6QUQqCegBSPZJWg7xGvypMiR5Yvk+w7tYZ+wIX3JlK1yu+dOA
 pxgijpvAoFJvutuB2podM/lj8Nk87SbQW7lkkdVjDkHr5AfT6f0qv8ORImfiE5CuqdqW
 sM3g==
X-Gm-Message-State: AOAM532v17dNfy0619e/sh6xT1xcsIe8z9w7AX3rCKcvv8dGgOG9CpG4
 w1EsgcAA3enhSwcv7o0Hpn8ZAgZM2Q==
X-Google-Smtp-Source: ABdhPJx4NII6suHk437Oza4d9GhybnDEU0XlzwSKDh6uVO5Hgr9ofng+eRpQ+vrF7M4hFmvgSyMBKr4gIA==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:6ff2:347f:ac4a:8a04])
 (user=tkjos job=sendgmr) by 2002:a25:e4c7:: with SMTP id
 b190mr47234ybh.28.1633549579410; 
 Wed, 06 Oct 2021 12:46:19 -0700 (PDT)
Date: Wed,  6 Oct 2021 12:46:09 -0700
In-Reply-To: <20211006194610.953319-1-tkjos@google.com>
Message-Id: <20211006194610.953319-3-tkjos@google.com>
Mime-Version: 1.0
References: <20211006194610.953319-1-tkjos@google.com>
X-Mailer: git-send-email 2.33.0.800.g4c38ced690-goog
Subject: [PATCH v3 2/3] binder: use cred instead of task for getsecid
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
Cc: stable@vger.kernel.org # 5.4+
---
v3: added this patch to series

 drivers/android/binder.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

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
-- 
2.33.0.800.g4c38ced690-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
