Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD32337CDC
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 19:47:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02F65843A3;
	Thu, 11 Mar 2021 18:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNmXGDD9WmGW; Thu, 11 Mar 2021 18:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D3C184378;
	Thu, 11 Mar 2021 18:46:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA9B51BF9B4
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 18:46:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D8DCF83FA2
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 18:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 57iPrFE76MoE for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 18:46:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4EB9383F84
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 18:46:35 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id b23so141660pfo.8
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 10:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jsb6E0FK8MRIhs7lJ7D4eERwE7vUrhoh8LogP70fZt4=;
 b=M2eO061lK/r+Wprxytw5m1AqfRReogSNsgcZMLc5wcHCDT+xRXZ6eg4P4wXyWb+zNU
 Yw8A7pyi619WeytrvNrXC5RE8cfIsq39+KTkqX5o2jhiUubEHySgJzUDhH1DswG7BR1O
 yVAb8b20uwjiL3motL+4kSsMJ+GDAvNCUr7mU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jsb6E0FK8MRIhs7lJ7D4eERwE7vUrhoh8LogP70fZt4=;
 b=iIbdkD5wRJJgPwETqtIFapftdPkQkPohl7A9Ux26TEwDELc9qsT7z1SQxZ5q4H4Ktq
 fHOf82GmvPEAZ83k9uVJw2bQIgLYeZcLi/S74oqQcDAw7SywCJ2w1lG+sdEk6d+MFB6M
 2jUgsB6hXfk6RSYuJD9mgwFmYpPx8N+j07lyhYGthBXSb5ej9UNBdigFabBovrvXgYnP
 IXKf5Re8NyxMn2lCu47Whp47UueTGLJptJeTT5NaOPt46ttV14f7yopkRXl0ci6jxz3L
 0ll+yqoFZ3dRHDrOCmA2DCmc11725IExqE9B6wlDGnM3oX097pz/ALKanRYKW3MCRCZW
 PvMQ==
X-Gm-Message-State: AOAM530M226aAieVUqwCFgSQpZuu17Jsn1WauIAn7OwoHko7U3N838lY
 H14Z20Gozz4J9ciHcZSqT/f7Zg==
X-Google-Smtp-Source: ABdhPJw8Kn5XC+uVS/X25xneC62+nmr9A/S66pErwyPEkvxxDuPvVOSdORxBHW7dZ3xkYf26Hhl3Og==
X-Received: by 2002:a63:161c:: with SMTP id w28mr8473860pgl.341.1615488394733; 
 Thu, 11 Mar 2021 10:46:34 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id z2sm3108398pfq.198.2021.03.11.10.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 10:46:34 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v2 2/3] binder: use EINTR for interrupted wait for work
Date: Thu, 11 Mar 2021 10:46:28 -0800
Message-Id: <20210311184629.589725-3-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210311184629.589725-1-dualli@chromium.org>
References: <20210311184629.589725-1-dualli@chromium.org>
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
index 76ea558df03e..38bbf9a4ce99 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3712,7 +3712,7 @@ static int binder_wait_for_work(struct binder_thread *thread,
 		binder_inner_proc_lock(proc);
 		list_del_init(&thread->waiting_thread_node);
 		if (signal_pending(current)) {
-			ret = -ERESTARTSYS;
+			ret = -EINTR;
 			break;
 		}
 	}
@@ -4855,7 +4855,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
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
