Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE3144EC75
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Nov 2021 19:07:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AC876153E;
	Fri, 12 Nov 2021 18:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VNkeZRV05Hbd; Fri, 12 Nov 2021 18:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A50876153B;
	Fri, 12 Nov 2021 18:07:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F91F1BF289
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 18:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F129826B4
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 18:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PbYvFyAHjVbo for <devel@linuxdriverproject.org>;
 Fri, 12 Nov 2021 18:07:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C95782553
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 18:07:24 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 n13-20020a170902d2cd00b0014228ffc40dso4655693plc.4
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 10:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=GhhOdgquJDTmTXM6T9YlgdPGJ3obcugzwjKl+qkCXjU=;
 b=EFar4ORGAOm2ynZp0zNUZ6bCQJzatXMR2zAuyfEU+eUK1vhBFETulnczi01R0evyQV
 VaGLSeyMxT+kGUi7k1E48wgV4p1xNIacnRgOUZweJ1n5iRnVo341Zt6Nneobe6IEboim
 OPuPMhyVLzXnJD5E20gQWoWm2TLZ/I701ZS4jqgBC2H42ZpFcw45TrZpmySlckJbzpBv
 2nIO/H6w13LKAtM5XDHXBBeG/6Tm8tnXkeNG7Y639B8UwZ87s81dmhuYuVYOk80Jvr6Z
 n4kJwTlUjfaecDfCdLjE31RRbDnypf/FWc4T6FWmPuHZrnF+2yQMIj4JTR1fKSsLXQnp
 5AYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=GhhOdgquJDTmTXM6T9YlgdPGJ3obcugzwjKl+qkCXjU=;
 b=GJx5MfxE+YViBuqhBThkzdV6YKeWQAIHhmpFJu5KtZF5e//bsghY0rWijOsgcs7x7/
 O+quAZBrcMBXQPfhxLoUXeIYL/lEvL2B7OT8DB+HbAAqerHjfTJcSXcoQL4vncfo6KrP
 1K+6hq3FY+bKhL84V8mlvC+D0r1r1qUsLCxPYlMUoesFdfWJ2wKezZwlrvAApF7577YU
 P5xRfFRZnjTWqSDhUya7pIjGC3dFgAm9iXftvM5iE42UEMRSWVM43aLxbBHbpaB1WHZg
 XeW8/e5Y0XlW2PB2e19rUPooK4auQtW53/QVWHM2sAuMdtAm0a1BiUWhtM6Xn8d5NCXE
 CDww==
X-Gm-Message-State: AOAM5336rrwG/tLlq0EDdyHoAm5v8nQQzCFVbCZdvnInWzsejc8T18mt
 ZnumnULAfNrAOZqsQM3myFMIfL8k5Q==
X-Google-Smtp-Source: ABdhPJxVApQCL2FxYvBZ7ZeJ66SWOHkQyxFWnt62j83MthQwK7TXY5fEllH7KrQyJ2b0sHRYYGRgSU81Uw==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:8825:328e:2a73:f3f0])
 (user=tkjos job=sendgmr) by 2002:a17:903:408c:b0:142:45a9:672c with SMTP id
 z12-20020a170903408c00b0014245a9672cmr9940846plc.7.1636740444394; Fri, 12 Nov
 2021 10:07:24 -0800 (PST)
Date: Fri, 12 Nov 2021 10:07:20 -0800
Message-Id: <20211112180720.2858135-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc1.387.gb447b232ab-goog
Subject: [PATCH] binder: fix test regression due to sender_euid change
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

This is a partial revert of commit
29bc22ac5e5b ("binder: use euid from cred instead of using task").
Setting sender_euid using proc->cred caused some Android system test
regressions that need further investigation. It is a partial
reversion because subsequent patches rely on proc->cred.

Cc: stable@vger.kernel.org # 4.4+
Fixes: 29bc22ac5e5b ("binder: use euid from cred instead of using task")
Signed-off-by: Todd Kjos <tkjos@google.com>
Change-Id: I9b1769a3510fed250bb21859ef8beebabe034c66
---
- the issue was introduced in 5.16-rc1, so please apply to 5.16
- this should apply cleanly to all stable branches back to 4.4
  that contain "binder: use euid from cred instead of using task"


 drivers/android/binder.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 49fb74196d02..cffbe57a8e08 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2710,7 +2710,7 @@ static void binder_transaction(struct binder_proc *proc,
 		t->from = thread;
 	else
 		t->from = NULL;
-	t->sender_euid = proc->cred->euid;
+	t->sender_euid = task_euid(proc->tsk);
 	t->to_proc = target_proc;
 	t->to_thread = target_thread;
 	t->code = tr->code;
-- 
2.34.0.rc1.387.gb447b232ab-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
