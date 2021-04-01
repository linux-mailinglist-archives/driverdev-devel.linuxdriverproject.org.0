Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8B135117F
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 11:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F68B84A2A;
	Thu,  1 Apr 2021 09:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SPKGEkWa_bRF; Thu,  1 Apr 2021 09:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BC3284A17;
	Thu,  1 Apr 2021 09:10:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 684D51BF38E
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4387360A9F
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JJ1p8vN_wwK8 for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 09:09:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22DB960A99
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 09:09:53 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id ay2so710389plb.3
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 02:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+IsVjISMkpZP5tT2zT9xXS3PV75jGVHq8NuXz4FV7zU=;
 b=Tcop26gJmkd/1TqpULLeDQ2otNmc6j+/VT4iMfeBNgjEfZGjZLKKY1ePPRrQIP3viG
 Esvxv2FAIs51D5A/9yYudr9r1G81x0btHrw8kyZ99swJEdFy/+ABh7aE6ecvN3vRhOvv
 7MvjzbztD7AU/8KGWNLBmKKRQpzfQTVyEelQwkJfB8O/1nqvRkIGHQBI7rN8xgI7pNb2
 GduPhZ3AeBM5D7ClCe70GmFCitB8rR7szjOOuVl1AlLoToz0FbP7n/NAhunhM4nu8X3I
 dnGXfOsxHa5nL7iMivXJJIuny92B72ytUP1lCBRLB5bv0EwmDE/euDet7RVGVBKcRaeR
 /3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+IsVjISMkpZP5tT2zT9xXS3PV75jGVHq8NuXz4FV7zU=;
 b=MvbO9emyqvKYZv/Z2NUUjCqbiAZNvzrDbN38Li7ifH9OkK/vsNsPti2vbRWCYWbnbP
 7Ikyz7uhajFtrzdUaE0qm5BLvMlLRk/5WF16iS/kqzT0TxXeMIekHX/n9RGW5XLaA5lb
 5u1e9O6AzbFnPqQ7Pju5arEsqPl6sLJhnsQKAR1zoDc6Q5IwMGRQ3Q+uOSHcOD5K2Zeo
 WRJnW87o2ikO7qZsRbVPADJH9qDg0UV+f+2+JtohoAGWTIzRXYosRchnWDjoKmgsOn5i
 Se62hyZZJGFqe5eMGDoeYqZ9Wg7k+BXloXYch6Z8k1GOFI32erxoaD9DUEUniWXnAG+L
 yt2A==
X-Gm-Message-State: AOAM531Ol39y9b5l9gA8IsMf6s9ID5oMTMsPBSHFcC6UrBhk9TDs+Bn9
 D6Qt45ROthVJvWP3S6xwlrrr
X-Google-Smtp-Source: ABdhPJzD1ZPSRBjIXRewRBPdRngJTQcG7U1Ly+YzsKw0o4Hb/fRlfsUZ6aEHLdqdggJrzuxMD5kH5A==
X-Received: by 2002:a17:902:c945:b029:e7:1ec4:4315 with SMTP id
 i5-20020a170902c945b02900e71ec44315mr6937613pla.51.1617268192395; 
 Thu, 01 Apr 2021 02:09:52 -0700 (PDT)
Received: from localhost ([139.177.225.243])
 by smtp.gmail.com with ESMTPSA id f21sm4303758pfe.6.2021.04.01.02.09.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 02:09:52 -0700 (PDT)
From: Xie Yongji <xieyongji@bytedance.com>
To: christian.brauner@ubuntu.com, hch@infradead.org,
 gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, hridya@google.com,
 surenb@google.com, viro@zeniv.linux.org.uk, sargun@sargun.me,
 keescook@chromium.org, jasowang@redhat.com
Subject: [PATCH 2/2] binder: Use receive_fd() to receive file from another
 process
Date: Thu,  1 Apr 2021 17:09:32 +0800
Message-Id: <20210401090932.121-3-xieyongji@bytedance.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401090932.121-1-xieyongji@bytedance.com>
References: <20210401090932.121-1-xieyongji@bytedance.com>
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
Cc: devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use receive_fd() to receive file from another process instead of
combination of get_unused_fd_flags() and fd_install(). This simplifies
the logic and also makes sure we don't miss any security stuff.

Signed-off-by: Xie Yongji <xieyongji@bytedance.com>
---
 drivers/android/binder.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index c119736ca56a..080bcab7d632 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3728,7 +3728,7 @@ static int binder_apply_fd_fixups(struct binder_proc *proc,
 	int ret = 0;
 
 	list_for_each_entry(fixup, &t->fd_fixups, fixup_entry) {
-		int fd = get_unused_fd_flags(O_CLOEXEC);
+		int fd  = receive_fd(fixup->file, O_CLOEXEC);
 
 		if (fd < 0) {
 			binder_debug(BINDER_DEBUG_TRANSACTION,
@@ -3741,7 +3741,7 @@ static int binder_apply_fd_fixups(struct binder_proc *proc,
 			     "fd fixup txn %d fd %d\n",
 			     t->debug_id, fd);
 		trace_binder_transaction_fd_recv(t, fd, fixup->offset);
-		fd_install(fd, fixup->file);
+		fput(fixup->file);
 		fixup->file = NULL;
 		if (binder_alloc_copy_to_buffer(&proc->alloc, t->buffer,
 						fixup->offset, &fd,
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
