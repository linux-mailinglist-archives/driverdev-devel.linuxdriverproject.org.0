Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64613BB740
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 16:55:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5C16875A7;
	Mon, 23 Sep 2019 14:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KoUooQgHCKZa; Mon, 23 Sep 2019 14:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BDE186B58;
	Mon, 23 Sep 2019 14:55:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 480B31BF2E3
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 14:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44EC32010B
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 14:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AUFdn-lHCjGn for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 14:55:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 69898203CC
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 14:55:00 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id r4so13174953edy.4
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 07:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SlUYkwpj6yu5lfNnzsV0ggIvbULgs9iiQHnWd1Afxa0=;
 b=HYb0F+L8Uu70AC2b7u/vm9E/UTCUBNxWVvqGtZojbim+5mMU74lFioo671pSDz9P2L
 W+nJL0RP82Xr2FDuvZimleCdEWnExfBYatWkPRtrlhOCSTl8VeZkgOlu/qwF7YoROd5D
 P9uqdhVdBlNRlUmMX0mjCx2pQyHbkZgdqDq7bj/9V4K8TxOUB6ReswkEPWhSZ6lhY7pp
 8NRA9YLsV0jEazqSmB89y3bzvAFp+0X8fxwsWucNCxNcSFOitHYQKRW9yl8BiWVv79QH
 EM9Tw4iWZoWXUqI5Q2GpWkV2CYg0GtBk1eha7V2ZCTavuhulrKLfSpTn4HX941Scutf2
 ZyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SlUYkwpj6yu5lfNnzsV0ggIvbULgs9iiQHnWd1Afxa0=;
 b=oaJMDgVQTR2eNjVMkUEriEB9uG4hmuFiWUe8NJxjRDIJvieMtztD1EspN4Cx30HgLm
 pTzb/CNYrneXqJzj4owSIpwLV/oKUdv2X7r7IxsezM71NqQDfYzh7J8s+NmbimEbXhk5
 8n3npOvic/sA5RAdwKnfjN22syhJFxufWop0AEmXEFQceueLhcdVZkmX9vqUmfVKh8/a
 /lVje7F6JdcANRwYQqDzE/7mpkKHEnfBS4WB4aP1O+vFhVTZ2yb6LWpE+93qrzhwK/dE
 c3rDK74qfduhZWTDrdCvBabG7hbSoJPLHuIHQ8BHoIxC3Mo8DmAB00bQGJShjBhq1UlQ
 dHSA==
X-Gm-Message-State: APjAAAXrzTQ/AGZlvW/sWl70Dd/cYPMX2r506i4ETPaMlcP1dB/BDioN
 qHdtygGsKB4Z4fgBBkiYbRM=
X-Google-Smtp-Source: APXvYqxdsHr1OP7HdBc78VihnThRuQ0b2LN5hfAfeWkJmkwSi8pr/cq+zIEZpMtI27Sa3oIeCrc5cg==
X-Received: by 2002:a17:906:5c16:: with SMTP id
 e22mr256576ejq.105.1569250498627; 
 Mon, 23 Sep 2019 07:54:58 -0700 (PDT)
Received: from linux.fritz.box
 (200116b864096d0082c6903ef0ca246b.dip.versatel-1u1.de.
 [2001:16b8:6409:6d00:82c6:903e:f0ca:246b])
 by smtp.googlemail.com with ESMTPSA id n6sm2418866edr.27.2019.09.23.07.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 07:54:58 -0700 (PDT)
From: "Christopher N. Hesse" <raymanfx@gmail.com>
To: 
Subject: [PATCH] staging: android: ashmem: Fix zero area size return code
Date: Mon, 23 Sep 2019 16:54:51 +0200
Message-Id: <20190923145451.13341-1-raymanfx@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 penguin-kernel@I-love.SAKURA.ne.jp,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 "Christopher N. Hesse" <raymanfx@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The previous inline comment stated that a size of zero would make the
ashmem_read_iter function return EOF, but it returned 0 instead.

Looking at other functions, such as ashmem_llseek or ashmem_mmap, it
appears the convention is to return -EINVAL if the region size is unset or
zero.

To be consistent with the checks, I changed the one occurrence that used
the ! operator to compare the size to check against equal-to-zero instead.

Signed-off-by: Christopher N. Hesse <raymanfx@gmail.com>
---
 drivers/staging/android/ashmem.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 74d497d39c5a..6af8130db0d7 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -291,9 +291,11 @@ static ssize_t ashmem_read_iter(struct kiocb *iocb, struct iov_iter *iter)
 
 	mutex_lock(&ashmem_mutex);
 
-	/* If size is not set, or set to 0, always return EOF. */
-	if (asma->size == 0)
+	/* If size is not set, or set to 0, always return EINVAL. */
+	if (asma->size == 0) {
+		ret = -EINVAL;
 		goto out_unlock;
+	}
 
 	if (!asma->file) {
 		ret = -EBADF;
@@ -359,7 +361,7 @@ static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 	mutex_lock(&ashmem_mutex);
 
 	/* user needs to SET_SIZE before mapping */
-	if (!asma->size) {
+	if (asma->size == 0) {
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
