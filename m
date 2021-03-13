Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE14F339F12
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 17:17:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92D63400C0;
	Sat, 13 Mar 2021 16:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yWoO-Yzb8Qfb; Sat, 13 Mar 2021 16:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECF70400BC;
	Sat, 13 Mar 2021 16:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4B7F1BF2B1
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 16:17:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 92AEB4EB97
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 16:17:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5wLpiiHkHYM for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 16:17:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0B254DE94
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 16:17:04 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id s7so13319878plg.5
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 08:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=ULnk6/AujffEHtqaXUB+Sqx1kV7oADwaFIlwS/jfgBE=;
 b=iAtatBJ28o/OGcXOP4uyEaVQuUmWu4Xwnm1x+WCdvf82kU73a73wHIarCVvw256MGR
 puzeNqJv/gUPslInZOCmBemSEyU04eVxJWI8t/BpKkGjNZQ2sf47FdRAehJOIDC2VzOV
 4UlvhIWRF40sIcoJpRUqs5RdFviAU/DLnsMhcCjt70p/RYI+D1QmESnsvpX2K41+ula7
 fSTTd4Lh0RzhV02zb4QzouKLp5wO17vnuDV2AhBCTbVtmTpt+eOYnkPsCQ03YBLVmi36
 Pp21kv+0rDFojUW5T7zPMbmgXpdw7SPyTGXYI3ApvoW6I8RVAC0yLeRd6aZvESrQjvon
 0nLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=ULnk6/AujffEHtqaXUB+Sqx1kV7oADwaFIlwS/jfgBE=;
 b=iJQ4VrtIH7G6T2OTVnaFB4kn26F/vhfKy1AHa2+bKY36lNw+yTGWQ/ui9Af+dsVsHo
 5Na2cA3wu+tyH5lq6p2xfZu/zGls7b6/Oa2t6y9oDOSVaJ1mTrk1EvwXjLprmMMir1s5
 B/xq2pyp452vB2vH9tQk+fIz5L9eIPU4JYjC8CDtiEsnP4dUe/Qo1te6TJzrb2eEhPaW
 6YbSfxtk1wwhDq0nSZuzABp6WtjovXqrimBaVqRbdPIJg2+TPrrJ7T0MbCdpIzJujGQ2
 2uoI61oDFsgdp1RitR5QMmCWYxDs6P9qr2zCp4GWXxRx2BRsCuCtRTfviGwhHtCEsOhS
 mv4Q==
X-Gm-Message-State: AOAM5321QrdCkunnHuyT+yooVG+gztCcW16jfuAHTKzoM0vWl1eQSjKx
 A6Vhll5/HTzTU4C22nWh818=
X-Google-Smtp-Source: ABdhPJwKVyYU+jP6gXOXHOeHUG1pzfSGZ4Lqk8xm/nk0yFAyUByJbcHs+PelkKs7IxCjKEfA9bIx7g==
X-Received: by 2002:a17:902:8a91:b029:e6:3e11:b252 with SMTP id
 p17-20020a1709028a91b02900e63e11b252mr3818216plo.7.1615652224355; 
 Sat, 13 Mar 2021 08:17:04 -0800 (PST)
Received: from localhost ([49.206.1.181])
 by smtp.gmail.com with ESMTPSA id l10sm2790396pfc.125.2021.03.13.08.17.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 08:17:03 -0800 (PST)
Date: Sat, 13 Mar 2021 21:46:55 +0530
From: Abhishek C <astro.abhishek02@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] drivers: android: binder.c: Fix indentation of multi-line
 comment
Message-ID: <20210313161655.mu64qezxog4ghibq@astroabhi>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, surenb@google.com,
 bkkarthik@pesu.pes.edu, linux-kernel@vger.kernel.org, hridya@google.com,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed alignment of multi-line comment.
Added a * for each line of the comment.

Signed-off-by: Abhishek C <astro.abhishek02@gmail.com>
---
 drivers/android/binder.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index c119736ca56a..700719c58147 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -4617,8 +4617,9 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	unsigned int size = _IOC_SIZE(cmd);
 	void __user *ubuf = (void __user *)arg;
 
-	/*pr_info("binder_ioctl: %d:%d %x %lx\n",
-			proc->pid, current->pid, cmd, arg);*/
+	/* pr_info("binder_ioctl: %d:%d %x %lx\n",
+	 * proc->pid, current->pid, cmd, arg);
+	 */
 
 	binder_selftest_alloc(&proc->alloc);
 
@@ -5750,8 +5751,8 @@ static int __init binder_init(void)
 	if (!IS_ENABLED(CONFIG_ANDROID_BINDERFS) &&
 	    strcmp(binder_devices_param, "") != 0) {
 		/*
-		* Copy the module_parameter string, because we don't want to
-		* tokenize it in-place.
+		 * Copy the module_parameter string, because we don't want to
+		 * tokenize it in-place.
 		 */
 		device_names = kstrdup(binder_devices_param, GFP_KERNEL);
 		if (!device_names) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
