Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0369F497921
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jan 2022 08:11:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 117AD82779;
	Mon, 24 Jan 2022 07:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Toe336VFjYuW; Mon, 24 Jan 2022 07:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65E0C82778;
	Mon, 24 Jan 2022 07:11:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A9801BF356
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 07:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 21F9960AD2
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 07:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NGXDD10Szg4Y for <devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 07:10:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 548FA607A1
 for <devel@driverdev.osuosl.org>; Mon, 24 Jan 2022 07:10:50 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id i1so4965447pla.0
 for <devel@driverdev.osuosl.org>; Sun, 23 Jan 2022 23:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=sEQRu2hrB2sPswCDMnmdwB6n6ZIOI2c/Ar/qj62wZNw=;
 b=LtRXGd1Xwau4iR9TPk8ZNc/AAofWCFhgjY4+3jptvVFAbgRsq0n9jD7RUJp7Kt/Rbb
 Zi2h4F8HbtjLZtUHp4V5L8CXvTMQhMN6QbAP4q7Dm5UndqhZsUnHW2XRvzvUUin+YQoT
 C9ByfCW16cLxpehf8KJBXiToeOvIWbsWnHVPeqXxNluX5zkliF77CETg6Fi2pu/V7bNG
 v6GLI+rxJhIoRWUEnleHkclSHdW8c+JUhFVe70vW/PVUROWTewBKExQTb3iT6aeYCkQn
 +C3ZI+0PTbnm14G71mdYGkSn+X29n2XIwVwnqFw6S/Mkwe0hi+NA4EjDkHl/FO/moxmC
 I8HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sEQRu2hrB2sPswCDMnmdwB6n6ZIOI2c/Ar/qj62wZNw=;
 b=tnY1MOcTiO3VZ8Anyg8LQ3T7wYClgup4aET0k+ZRKQ4KL+cWKLAO3nhR92XO5LUb15
 h+BRtR+zGQ9aGwOQE9oTgdlMBMfXQex5gyzWGxy7Gm5fFuugVLn/Bj5Smw9OfAWtIeLZ
 1UGgYTgsmJP0ZPSuw4TOxnK3GLUc0cI5bmG2G7ewsj7oC8gLsgKgjrtu6YHCzTcMkBkl
 JoDFc537uJbZOKZ/pZxgu8ljMoFnCypI1wJkg6d7vc0/XyWx0ILXks4LazfE1My3q8T/
 iHvmj+KwIOIlFprZ01hA/kBCGJPAL6bmIh4+4DgjzvVRUFqnnJ7cYQEl0/DeG/vEw4B5
 L3ZQ==
X-Gm-Message-State: AOAM533v7CTV90YP80Lk3ARVLyp6w67PA73SXq/VDOoBfIYgiX3awDr/
 k36tgcpxHwurCpiQyuTtNAg=
X-Google-Smtp-Source: ABdhPJwzBAA/WVEgDuvbUnJne28mTYr8W1qMmOloeue2QXinYSsYc2kyOHWwnWqdzSewd68salm2YQ==
X-Received: by 2002:a17:90b:384d:: with SMTP id
 nl13mr656306pjb.46.1643008249678; 
 Sun, 23 Jan 2022 23:10:49 -0800 (PST)
Received: from ubuntu.localdomain ([103.226.226.130])
 by smtp.googlemail.com with ESMTPSA id k15sm2548575pff.39.2022.01.23.23.10.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jan 2022 23:10:48 -0800 (PST)
From: ratnesh-r1 <me.ratnesh682@gmail.com>
To: 
Subject: [PATCH] staging: android: ashmem: Declared file operation with const
 keyword
Date: Sun, 23 Jan 2022 23:09:47 -0800
Message-Id: <1643008187-75859-1-git-send-email-me.ratnesh682@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 me.ratnesh682@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

warning found by checkpatch.pl script.

Signed-off-by: ratnesh-r1 <me.ratnesh682@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index c05a214..f9cfa15 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static const struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
