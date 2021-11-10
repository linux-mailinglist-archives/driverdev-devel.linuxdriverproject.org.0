Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E86B44CD99
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 00:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EBF760B19;
	Wed, 10 Nov 2021 23:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-tfC--MoMOp; Wed, 10 Nov 2021 23:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 451E460B0E;
	Wed, 10 Nov 2021 23:02:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A6171BF279
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6679A404C9
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 23:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmCS7EVviFT2 for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 23:00:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BE7D6404C5
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 23:00:44 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 mv1-20020a17090b198100b001a67d5901d2so1994694pjb.7
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 15:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=akg642f7HDeisDI17y1/ahPZ+9iAX4nebtKtHRS0FT0=;
 b=tYlvx8oO3Ox97muMYpX13r1a/mvmZk08+xfJ29QkGgOrWb7Yr7bEE0TBHzndmJ6ieu
 WLd/RCgFiGXhnctk6ifoQcszWap/Hhs8FGuwNzTxWOEtxT18a9RP/vM5/+W148LjVfbo
 9KYs9Bt/YeXsBATtT6nP7unifCeZpwKgz0rXCnduN7+b+iQ7lk0w8QRBoBxl9jNndcEa
 UbGY1/Lp9g7lVpEGxsKyRNbpzAU2/xTCA5cq07Tb7Sa0ImJ1488YfBtLBGTVEPWCpsG2
 +src/caUTiZWvW2i5hLlkFPfrYC6+fJLPFkocE9tdiscEUgGDCMjAI/zBTQUVTJgWhk7
 J0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=akg642f7HDeisDI17y1/ahPZ+9iAX4nebtKtHRS0FT0=;
 b=4C/f6J9Dre2L7KJOVOrdFZC3ZkMKPlDmrQT6bNXOhT0jb4Ydb/7hbIPCdiahKdcUsS
 AfsJIco/CRs7+KcPRlkkHvxeIzJXz62aNLEvf9juTxoLeyHmmjQxrGepUjgiFtDFkNd/
 aLRCI0EWkoQPgsurRaf+uLxlwKuE+VXUE387a+dNJaxr7IT3BtE0oYyMvzswhLXCmrPb
 d+IK1v05WHEFA+3sNnsy7jVQGpKxCAiabOWy4z2CyWMbMUm/y4hqoVX6o4wF0NpuEKkQ
 rluXV6vZeVC9xuFFvIMC8i1zj/WyHhBi25RmfPJaf+R8/eXKcTXLGqJjjMz0ByHtuIbc
 Nl+Q==
X-Gm-Message-State: AOAM531e6x0xOojfyscbjvdo6/fdUg6MSB1H/kzV8Zp/c3l0hpyAZpao
 eD6Iu2SXqR8pDbVDIyUmWVrxGFcUCQ==
X-Google-Smtp-Source: ABdhPJxxCupVj5ImDPnY2F8WAukfAsjSmvOKv44ciI5NXs0e9uEd08daIFxS+YgObqo/u75TDbTqI1VcDw==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:4a73:99b6:9694:8c4d])
 (user=tkjos job=sendgmr) by 2002:a63:144e:: with SMTP id
 14mr1668364pgu.14.1636585244153; 
 Wed, 10 Nov 2021 15:00:44 -0800 (PST)
Date: Wed, 10 Nov 2021 15:00:36 -0800
In-Reply-To: <20211110230036.3274365-1-tkjos@google.com>
Message-Id: <20211110230036.3274365-3-tkjos@google.com>
Mime-Version: 1.0
References: <20211110230036.3274365-1-tkjos@google.com>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH 5.10 3/3] binder: use cred instead of task for getsecid
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
index 50fff726dc70..3ba3944a9e1f 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3103,7 +3103,7 @@ static void binder_transaction(struct binder_proc *proc,
 		u32 secid;
 		size_t added_size;
 
-		security_task_getsecid(proc->tsk, &secid);
+		security_cred_getsecid(proc->cred, &secid);
 		ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
 		if (ret) {
 			return_error = BR_FAILED_REPLY;
diff --git a/include/linux/security.h b/include/linux/security.h
index e67cc8c40865..35355429648e 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -1003,6 +1003,11 @@ static inline void security_transfer_creds(struct cred *new,
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
