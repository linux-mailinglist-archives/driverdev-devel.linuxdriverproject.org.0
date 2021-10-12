Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8408B42AA23
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 18:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0D2A4072B;
	Tue, 12 Oct 2021 16:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7qWgjUhZKyM6; Tue, 12 Oct 2021 16:57:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9506A40613;
	Tue, 12 Oct 2021 16:57:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68AAB1BF9B6
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 16:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CB4340420
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 16:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXkChCk7COfe for <devel@linuxdriverproject.org>;
 Tue, 12 Oct 2021 16:56:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3918C403FB
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 16:56:31 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 q193-20020a252aca000000b005ba63482993so61865ybq.0
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 09:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3xtw1iMxGRszg4/MWrK+88efBFsz8++3DWzKTvJUJng=;
 b=Kb86Pw5g6WTdAD35oTK2NO5Hic+YuxBuMM0aW9IXoXTI++CBgcHjafzlpQ7RSQd4he
 wvZX/Z7FzGMidXcXSGUcplB7H6YfU8s5TcgllGqpYOtDswmmGI2uLy6hdCi3dfHWLqag
 bL4gd8NubtrdEEQ31D/PaE1kNZPwmziB8m6CLxRp3y+5XW/gBNHjHQi1XoMXttRJ299E
 AAomrZuLNuNI70Yxrza8HV9S1XsXqerEVZEp8yr/xknSYWCSdegHKMJDDE8HjSjDcudR
 OK/Haw+HU7BMcchgO94ciYl9N22WCb6EaZ9j2qhbtax136tdakTUoMvijoXpSOYLMU0U
 iRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3xtw1iMxGRszg4/MWrK+88efBFsz8++3DWzKTvJUJng=;
 b=3RNwwVDqwclDuWJceZfqGOvrMSBN1lGSEgKWg6PcakNRtgl8j7Djo+86wGCyAVQXB/
 MROCYl9bIo4Uvk3mxwOv6xTH5eZD+eSzfoazxsHz8P0eH13q38UGeF1JVA8R8TpdohB4
 vWMYxLcMR51St4VQlFvS1PTU47RWPTETqSx9uWNfGxZyP/z3rAlYTuToNhdX2u5EBA36
 vv6Hb5DIisKttXcvpC9nfX9JeKiwVlGZGzetzelyuhlonJUcm7bvDpWeAdDdCPWDFecH
 tGsOHRL2PGknGJj46/IPQzSXg3CdFY1zIWxZpxzRiU1SA0rAIGStSdq7rABcix7e27ZZ
 R4Pw==
X-Gm-Message-State: AOAM530cqNm3VNEqpeINHHCQwNylM6eESH7f5OO6NyK+ajYmTMxrJViJ
 wEQRKGB5PLgFCcgiLGrtG3JoQKyYiw==
X-Google-Smtp-Source: ABdhPJyAAnfHvBs1PAt/sI6i4I2kEnVcw1mxvGIek06BxW1z07rUGam6/qn2XXRBq2dZIn8qa0z4gvC6Xw==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:39c7:8168:c0b2:b46e])
 (user=tkjos job=sendgmr) by 2002:a25:378e:: with SMTP id
 e136mr27234657yba.272.1634057790106; 
 Tue, 12 Oct 2021 09:56:30 -0700 (PDT)
Date: Tue, 12 Oct 2021 09:56:14 -0700
In-Reply-To: <20211012165614.2873369-1-tkjos@google.com>
Message-Id: <20211012165614.2873369-4-tkjos@google.com>
Mime-Version: 1.0
References: <20211012165614.2873369-1-tkjos@google.com>
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
Subject: [PATCH v5 3/3] binder: use cred instead of task for getsecid
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
v5: set *secid=0 for !CONFIG_SECURITY version of secuirty_cred_getsecid()

 drivers/android/binder.c | 11 +----------
 include/linux/security.h |  5 +++++
 2 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index bc15325f0579..26382e982c5e 100644
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
index 6344d3362df7..46a02ce34d00 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -1041,6 +1041,11 @@ static inline void security_transfer_creds(struct cred *new,
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
2.33.0.882.g93a45727a2-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
