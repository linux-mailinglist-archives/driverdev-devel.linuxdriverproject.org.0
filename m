Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F1D33CAC9
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 02:17:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 842396F5E4;
	Tue, 16 Mar 2021 01:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ts5Op0gMvx32; Tue, 16 Mar 2021 01:17:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A50D460615;
	Tue, 16 Mar 2021 01:17:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 479B21BF325
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 01:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F956838E6
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 01:16:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eqqv-pStq_K0 for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 01:16:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 157F6838D3
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 01:16:35 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id q12so5696425plr.1
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 18:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bhHWi0W+kgMuBFyHAFWOLLlF9YZIpVMkVfttAql0YwA=;
 b=nA8Ngu/c1mcCJm4YPMIVJna2yX4BpiIi6bGwb0rnabI0TXQ5f6gXN+bbW205dyV95R
 8qzI18FvYemqgXrKV55oQJKSt9kVUHZfD7qulTQjyAZn92HD494f0FcSIO9e5JOsF1Sv
 D3vyiUlRLZK2waVcNf24JawUkfKsHTqLxT0SE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bhHWi0W+kgMuBFyHAFWOLLlF9YZIpVMkVfttAql0YwA=;
 b=eotCo94ZYHpv3wNwLm6vA8cNiT+hR90CUReTqvxDEqpkLTduD/PlUzJxmNmVqWQYwq
 yN3b5pPShm52CID0AO8GntHEIgxM3D4j3FV3LzWu+mY7NxAHT1Yw7zikxgJSPhzyotBU
 6A4IX2uipGF8QkT9wdkHby/NRC8HzhReWOQaIs0QenYY8tAsjyUUTXzPInWv/AZcopNu
 cGNVhCjK7940g2pee8QktR5nJ95hacE+y/nRlf3CAAlDMy5qPrLE2hbEyUkb9IXzdNeT
 X1kd3RSrIzQtsLn5k8ku7suNi6DvqWXT78aR4mqEKc3SYHzvqhwivJ1JF4ZGYWZjriz5
 uDtw==
X-Gm-Message-State: AOAM530o/4Mr+/D8p+jyd1zSxpletQ0L7KayJREpCFad9URQb1GVOb27
 u3kOMEvr5wXbsOxPcRKOkrYsyA==
X-Google-Smtp-Source: ABdhPJxt4DxjF0zu+JN7eBy057OuUI5MOVCFOD60RyC8UZHbkuRFiBfI8l6Jex+q3ydXUVTbiCuBCQ==
X-Received: by 2002:a17:90a:ce0c:: with SMTP id
 f12mr1993327pju.11.1615857394598; 
 Mon, 15 Mar 2021 18:16:34 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id 186sm15773381pfb.143.2021.03.15.18.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 18:16:34 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v3 2/3] binder: use EINTR for interrupted wait for work
Date: Mon, 15 Mar 2021 18:16:29 -0700
Message-Id: <20210316011630.1121213-3-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210316011630.1121213-1-dualli@chromium.org>
References: <20210316011630.1121213-1-dualli@chromium.org>
MIME-Version: 1.0
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
Cc: joel@joelfernandes.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Marco Ballesio <balejs@google.com>

when interrupted by a signal, binder_wait_for_work currently returns
-ERESTARTSYS. This error code isn't propagated to user space, but a way
to handle interruption due to signals must be provided to code using
this API.

Replace this instance of -ERESTARTSYS with -EINTR, which is propagated
to user space.

Test: built, booted, interrupted a worker thread within
binder_wait_for_work
Signed-off-by: Marco Ballesio <balejs@google.com>
Signed-off-by: Li Li <dualli@google.com>
---
 drivers/android/binder.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index b93ca53bb90f..fe16c455a76e 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3710,7 +3710,7 @@ static int binder_wait_for_work(struct binder_thread *thread,
 		binder_inner_proc_lock(proc);
 		list_del_init(&thread->waiting_thread_node);
 		if (signal_pending(current)) {
-			ret = -ERESTARTSYS;
+			ret = -EINTR;
 			break;
 		}
 	}
@@ -4853,7 +4853,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	if (thread)
 		thread->looper_need_return = false;
 	wait_event_interruptible(binder_user_error_wait, binder_stop_on_user_error < 2);
-	if (ret && ret != -ERESTARTSYS)
+	if (ret && ret != -EINTR)
 		pr_info("%d:%d ioctl %x %lx returned %d\n", proc->pid, current->pid, cmd, arg, ret);
 err_unlocked:
 	trace_binder_ioctl_done(ret);
-- 
2.31.0.rc2.261.g7f71774620-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
