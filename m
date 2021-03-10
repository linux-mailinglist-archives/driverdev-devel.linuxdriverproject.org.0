Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA98E334C77
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 00:24:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6632F605D3;
	Wed, 10 Mar 2021 23:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q8O7kkURX4S4; Wed, 10 Mar 2021 23:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ABB3605BC;
	Wed, 10 Mar 2021 23:24:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42F341BF29E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:53:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1717C42FF5
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEx1a0v2swZB for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 22:52:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BC0042FF2
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 22:52:57 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 kr3-20020a17090b4903b02900c096fc01deso8335907pjb.4
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 14:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iTKo6HZiIiKMPWVYnqQ+StOirdxcAweuDP50gHSdDRk=;
 b=SxZMp6iHyZnLOyFo3Fik1VAtV8NLGHmEcwPu6nAt6UaLHzpYk6sDWcgkkZhkqKifI8
 tPdXwwpMalBM3LCaDT2FNoi1J6Ap+FKWOILbBbcV/5u6CBVhleifhrwAJk6fPyBZOezq
 z9gpBEIYFlYzcf+OHJ09L/qK5VZbyXqcg0HbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iTKo6HZiIiKMPWVYnqQ+StOirdxcAweuDP50gHSdDRk=;
 b=lXJaroJRr8KR5lfwHgDnYYUId2+paLG6FvE+ddc1RXn3MXzIbv67b+iI9GKFgBDlkl
 mMV20RADYT2TNNr/MLoyTk1EAUZ5Rzk4psLyupDvHZz8HNhiwjkJUr9skbM/VBZobJKe
 JBj47RLDf5vMzOhCnOqcD1wQ/1/yaDAHfJKmvyrHXaCEFNoIYC0OtqgU2SwDu3uHdOEH
 lLKavFshoZ+AAgMw0wSYpmieH3NI/44uystwMkrFvWPYLdOyhu0bFBljAyj8FeSG2qc9
 3GO7q372L55JwaCg/538XQd9fKVu6wJsJRdwHm9XvUZjJRVgeTu/Apt7IWLHoa9P9WCZ
 9uNA==
X-Gm-Message-State: AOAM532QG+Wd+40jZHD1SAziwaX56TgrZHZgd2boJi2B4Q+mScrdfocO
 K7dIbmpAK8V40CV3nV7ZwWIMcw==
X-Google-Smtp-Source: ABdhPJzJ0DKKTbp9c7zt2ypeiyBrwcYy6C8umgRUteONybNYH/bci+HwKOG151K3C55GxbUcCewVkg==
X-Received: by 2002:a17:902:7407:b029:e4:9b2c:528b with SMTP id
 g7-20020a1709027407b02900e49b2c528bmr5293132pll.6.1615416775168; 
 Wed, 10 Mar 2021 14:52:55 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id t22sm353384pjo.45.2021.03.10.14.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 14:52:54 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v1 2/3] binder: use EINTR for interrupted wait for work
Date: Wed, 10 Mar 2021 14:52:50 -0800
Message-Id: <20210310225251.2577580-3-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc1.246.gcd05c9c855-goog
In-Reply-To: <20210310225251.2577580-1-dualli@chromium.org>
References: <20210310225251.2577580-1-dualli@chromium.org>
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
index 9ec3ba038652..34c3e430a270 100644
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
@@ -4851,7 +4851,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	if (thread)
 		thread->looper_need_return = false;
 	wait_event_interruptible(binder_user_error_wait, binder_stop_on_user_error < 2);
-	if (ret && ret != -ERESTARTSYS)
+	if (ret && ret != -EINTR)
 		pr_info("%d:%d ioctl %x %lx returned %d\n", proc->pid, current->pid, cmd, arg, ret);
 err_unlocked:
 	trace_binder_ioctl_done(ret);
-- 
2.31.0.rc1.246.gcd05c9c855-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
