Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD81547B359
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Dec 2021 20:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F219160E36;
	Mon, 20 Dec 2021 19:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lsUp_IbP474e; Mon, 20 Dec 2021 19:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4ED4F60AF0;
	Mon, 20 Dec 2021 19:02:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E90BB1BF2F2
 for <devel@linuxdriverproject.org>; Mon, 20 Dec 2021 19:02:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E23C8402BE
 for <devel@linuxdriverproject.org>; Mon, 20 Dec 2021 19:02:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I3CvYwQWKa4P for <devel@linuxdriverproject.org>;
 Mon, 20 Dec 2021 19:02:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4045940294
 for <devel@driverdev.osuosl.org>; Mon, 20 Dec 2021 19:02:04 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 j18-20020a258152000000b006000d292a42so21292353ybm.0
 for <devel@driverdev.osuosl.org>; Mon, 20 Dec 2021 11:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Tap7nBAM0h0L8VrB9lLDO+R7RMvpcS4S2PLyP50CL8w=;
 b=UcUzIg+ZujUKm8Nx/UydFFi+uMvumbtNCxprjcJkB01d9AJrO6NJPDVVzuERlTxtoo
 O0qsQou5K98cO5aXEfF7StBWN2OD2N2Ruy5v+ZsYRMvEagNADmvgQdir0ZW1D13+mle1
 jrS33OHIGUH/+y3ah7lppcTv6FOZjU4gieOL9hEPdxCjiZKdeHaQBpua6b2XJCshuWD/
 0TrRAV/tx7tDmDUo+GXyiZFehOJMqe7FwPbaRBkPAuG+AktfcTU+Z+zDOpvaUUK0aW3M
 R8FJyCnv6fEkO+fiqyV0n8mBlyH9hM9PjUUscNVeD7G5HBY5M8QUDPt2NsTBRIk+zIsb
 z9MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Tap7nBAM0h0L8VrB9lLDO+R7RMvpcS4S2PLyP50CL8w=;
 b=xUfr89pKLfgsWQF7LnHy4LpHP5/RZc7LEr0BxMdIeKtz07vo25dAwwvh6aK9SBsui/
 YMfPjqwRzUTM8aAMBQ9GAXZ+qGBG2kKlLbhHhaHeTvQyxwg04ws/KqoH3+5yQ5oR3Trt
 yAKZ0//Q8XHfsHW1sUYTX4zCsalIKmzyix7ynx5cUFEYlTXsEdZFyuErXiBZeLmYhSzc
 fn/GC4tewfp7bm6iVqH8TPbtWq88w1b2QE77KXfU53Iqps0zKbMW7QcWaGgajri2VkFA
 kFjWVrltguD4Vkraw0Ofi5wkffxT8vdkYWj6LfzZFRqTDlfSkU8J1yVWhkSpLOHexg+i
 IkeQ==
X-Gm-Message-State: AOAM530aLl3fOZTyuGvAKL+rNkWT6+LLsrpDK3LjXMrwZE65YeZGMvaO
 rPs64fDv9iRWrAL8E4aq7C2XR0bNDQ==
X-Google-Smtp-Source: ABdhPJxZdayCcLgGEvMgK9ZDeJlqsTgjaZ1M/Le/NEE1z5TpUoR902tFNIT9OoDe4Yfw9al4vallvqy71g==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:1cee:d72d:c926:e290])
 (user=tkjos job=sendgmr) by 2002:a25:850f:: with SMTP id
 w15mr26872987ybk.373.1640026923099; 
 Mon, 20 Dec 2021 11:02:03 -0800 (PST)
Date: Mon, 20 Dec 2021 11:01:50 -0800
Message-Id: <20211220190150.2107077-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.1.307.g9b7440fafd-goog
Subject: [PATCH] binder: fix async_free_space accounting for empty parcels
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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

In 4.13, commit 74310e06be4d ("android: binder: Move buffer out of area shared with user space")
fixed a kernel structure visibility issue. As part of that patch,
sizeof(void *) was used as the buffer size for 0-length data payloads so
the driver could detect abusive clients sending 0-length asynchronous
transactions to a server by enforcing limits on async_free_size.

Unfortunately, on the "free" side, the accounting of async_free_space
did not add the sizeof(void *) back. The result was that up to 8-bytes of
async_free_space were leaked on every async transaction of 8-bytes or
less.  These small transactions are uncommon, so this accounting issue
has gone undetected for several years.

The fix is to use "buffer_size" (the allocated buffer size) instead of
"size" (the logical buffer size) when updating the async_free_space
during the free operation. These are the same except for this
corner case of asynchronous transactions with payloads < 8 bytes.

Fixes: 74310e06be4d ("android: binder: Move buffer out of area shared with user space")
Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder_alloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index 340515f54498..47bc74a8c7b6 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -671,7 +671,7 @@ static void binder_free_buf_locked(struct binder_alloc *alloc,
 	BUG_ON(buffer->user_data > alloc->buffer + alloc->buffer_size);
 
 	if (buffer->async_transaction) {
-		alloc->free_async_space += size + sizeof(struct binder_buffer);
+		alloc->free_async_space += buffer_size + sizeof(struct binder_buffer);
 
 		binder_alloc_debug(BINDER_DEBUG_BUFFER_ALLOC_ASYNC,
 			     "%d: binder_free_buf size %zd async free %zd\n",
-- 
2.34.1.307.g9b7440fafd-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
