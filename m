Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CCFDD0B9
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 22:56:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 822FE24D71;
	Fri, 18 Oct 2019 20:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bszy3AB9rfE7; Fri, 18 Oct 2019 20:56:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3707222795;
	Fri, 18 Oct 2019 20:56:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE5BD1BF5F6
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 20:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C61C2878EA
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 20:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7HzG-AltdEcy for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 20:56:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com
 [209.85.221.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E902B878C1
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 20:56:48 +0000 (UTC)
Received: by mail-wr1-f74.google.com with SMTP id 67so3235891wrm.18
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 13:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=rSf3nIyWZKMYSfUuilEe+uzzHebaBT4JOp0k6bHBoK4=;
 b=U4NpAEXN5/lXUpumdw+t+ry2JvKAgZeKwdGqMbAo6/rXn4uR382MxTVjKHE0cLCRV+
 ziWtm7ZLVF8hfqGcaNpAxuklijBqedBaJcqOliX/xZfPJ4AFojVNO5lRmCdGP4HWFCj3
 Pdvb6C6YL58kLovWjY2w0bmcIWjRiUsWvMps7w9g4o6JGPH+/F0LEFdCCnl8pe6NsttV
 yAi5SMuNYc31z1Y+ZSEDZmzIuzQahY2kkHG0vDG/Pllz2u3etqP52KytyCIUZYdhSr4A
 EWT2UKHjWyh5UVgLhlHHVHIfXQAFRonY0uSifEdh2REYnWiqaQxVgiPJ3YOQoWQDYfEf
 iPNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=rSf3nIyWZKMYSfUuilEe+uzzHebaBT4JOp0k6bHBoK4=;
 b=oupiQaXwvA+Qj1YuTF5reylowaUKshU39DxxN/hkcGGDZ+fB3jaUZ2YTjRST/f9oZV
 2UGk7KDFD7bP/wuglGJLFNS2TwgscDtk0gl2EmT9hYH9v6irpKZGwjk2dCEqSME8kRas
 m6uPuPefrRPdYikT9O0mGegVIhjaDlDx+pnFLKrZZvcAVHWG1I60WxbYU39s8KW1liIL
 49gNjk1YWT5gEFbmnJuMvq6gCvF9b4JCRlC4MULOP/9qpwIo98JYHKix/rpn9G28hnR/
 0HvLC2SGQMPca4mUFctcwBN29UJhOpt/rnfO6uzy3/Rc2nmPNaMGdoMTNT+fWVdJ7Nhg
 y0Kg==
X-Gm-Message-State: APjAAAWDc6VQKZnWZEZAuGqvotAnPWQZrHEd4TkkYLTdFh38l+ntUGdO
 nhzl+QLwtQFn6E2igejaUTxMwUajCw==
X-Google-Smtp-Source: APXvYqzlSay8l7D7nwGmRtoHF5tVY73mNeqS/VnG/mqmfszIKt2jJP8+W/12gpolZeK4d18GXwIjV/BR7g==
X-Received: by 2002:adf:e28f:: with SMTP id v15mr9028179wri.130.1571432206880; 
 Fri, 18 Oct 2019 13:56:46 -0700 (PDT)
Date: Fri, 18 Oct 2019 22:56:30 +0200
In-Reply-To: <20191018205631.248274-1-jannh@google.com>
Message-Id: <20191018205631.248274-2-jannh@google.com>
Mime-Version: 1.0
References: <20191018205631.248274-1-jannh@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 2/3] binder: Prevent repeated use of ->mmap() via NULL mapping
From: Jann Horn <jannh@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, jannh@google.com
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

binder_alloc_mmap_handler() attempts to detect the use of ->mmap() on a
binder_proc whose binder_alloc has already been initialized by checking
whether alloc->buffer is non-zero.

Before commit 880211667b20 ("binder: remove kernel vm_area for buffer
space"), alloc->buffer was a kernel mapping address, which is always
non-zero, but since that commit, it is a userspace mapping address.

A sufficiently privileged user can map /dev/binder at NULL, tricking
binder_alloc_mmap_handler() into assuming that the binder_proc has not been
mapped yet. This leads to memory unsafety.
Luckily, no context on Android has such privileges, and on a typical Linux
desktop system, you need to be root to do that.

Fix it by using the mapping size instead of the mapping address to
distinguish the mapped case. A valid VMA can't have size zero.

Fixes: 880211667b20 ("binder: remove kernel vm_area for buffer space")
Cc: stable@vger.kernel.org
Signed-off-by: Jann Horn <jannh@google.com>
---
 drivers/android/binder_alloc.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index 21952dfa147d..539385634151 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -681,17 +681,17 @@ int binder_alloc_mmap_handler(struct binder_alloc *alloc,
 	struct binder_buffer *buffer;
 
 	mutex_lock(&binder_alloc_mmap_lock);
-	if (alloc->buffer) {
+	if (alloc->buffer_size) {
 		ret = -EBUSY;
 		failure_string = "already mapped";
 		goto err_already_mapped;
 	}
+	alloc->buffer_size = min_t(unsigned long, vma->vm_end - vma->vm_start,
+				   SZ_4M);
+	mutex_unlock(&binder_alloc_mmap_lock);
 
 	alloc->buffer = (void __user *)vma->vm_start;
-	mutex_unlock(&binder_alloc_mmap_lock);
 
-	alloc->buffer_size = min_t(unsigned long, vma->vm_end - vma->vm_start,
-				   SZ_4M);
 	alloc->pages = kcalloc(alloc->buffer_size / PAGE_SIZE,
 			       sizeof(alloc->pages[0]),
 			       GFP_KERNEL);
@@ -722,8 +722,9 @@ int binder_alloc_mmap_handler(struct binder_alloc *alloc,
 	kfree(alloc->pages);
 	alloc->pages = NULL;
 err_alloc_pages_failed:
-	mutex_lock(&binder_alloc_mmap_lock);
 	alloc->buffer = NULL;
+	mutex_lock(&binder_alloc_mmap_lock);
+	alloc->buffer_size = 0;
 err_already_mapped:
 	mutex_unlock(&binder_alloc_mmap_lock);
 	binder_alloc_debug(BINDER_DEBUG_USER_ERROR,
-- 
2.23.0.866.gb869b98d4c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
