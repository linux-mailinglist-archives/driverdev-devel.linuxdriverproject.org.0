Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B28CA17B3BE
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Mar 2020 02:28:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1663222640;
	Fri,  6 Mar 2020 01:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KiXVAjictyyo; Fri,  6 Mar 2020 01:28:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9FC2D22253;
	Fri,  6 Mar 2020 01:28:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81D3B1BF2C9
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 01:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 770EC22253
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 01:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-fpmimlIyvs for <devel@linuxdriverproject.org>;
 Fri,  6 Mar 2020 01:28:14 +0000 (UTC)
X-Greylist: delayed 00:08:36 by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id A051B221F0
 for <devel@driverdev.osuosl.org>; Fri,  6 Mar 2020 01:28:14 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id o10so619280qtr.7
 for <devel@driverdev.osuosl.org>; Thu, 05 Mar 2020 17:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lHNl0Ai/7sXNY9V+qcgDGSXp7Q7ONREfCWa1aDNUtes=;
 b=cL1FKiflYP40AAQZDEDq9/xzxq2lNHeO/2nToYiRfhD+xA7zN5BVRjD4Obprj9XYty
 FvCbC+U+M++96k5N6Vn+mXx2gJuDWSrDvFdXsztuotCTmpNKhxdQ5KnWxoaN7T5bhfrp
 +5VkdtZgwnmYh/Upuz+XrjON7LBkMVV9monqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lHNl0Ai/7sXNY9V+qcgDGSXp7Q7ONREfCWa1aDNUtes=;
 b=izTFKOGB5Ep1Zu/QnHCK9HXjSuINvBbnu6NDTTKIg6gNEv6/2Zj2D1jUsFccsKEKQH
 HEQPD62WDAYc3GzIgaKhUp9aLDSl7SiKzTtQSYI6tJsuozrxXJJwRVKjU3lO5iOKJtQ8
 zE8Im3fHf7mghPSLjZacw1rRNPMAE45FVGbBWtwbCT1ftOT5KEGkWsI0uhA/vMPrRic7
 KsDJDHxIx7Om+bp+R9ztfGxvgDTOfb7OHbm1FZfcpGxB+6obb5wOpXo44d47r3ky41CT
 PuvgbJMN13nPR19UZI1zlvZy2/0RALybFebGJ+To0Q6Ki7m8Cuswog/dg9ePdWHATNZk
 WJ3g==
X-Gm-Message-State: ANhLgQ13WIIzT7wyvzrzhYMhxfrRwt4JiaeO+fn2qu4+Ptpq4S8V9nY6
 CvTPAJjEuYzamLV+PuiqSGfjHkFoWzc=
X-Google-Smtp-Source: ADFU+vu222U7msucal/MgdKipZL/PTF4/n/rQCjB9Mnkuhh6jZrNm6gMfyjubO/FM+ZIxpfUdzlhFA==
X-Received: by 2002:ac8:c09:: with SMTP id k9mr918206qti.241.1583457577550;
 Thu, 05 Mar 2020 17:19:37 -0800 (PST)
Received: from joelaf.cam.corp.google.com ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id j7sm4499370qkd.45.2020.03.05.17.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 17:19:37 -0800 (PST)
From: "Joel Fernandes (Google)" <joel@joelfernandes.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC] ashmem: Fix ashmem shrinker nr_to_scan
Date: Thu,  5 Mar 2020 20:19:30 -0500
Message-Id: <20200306011930.99378-1-joel@joelfernandes.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Martijn Coenen <maco@android.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>, surenb@google.com,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

nr_to_scan is the number of pages to be freed however ashmem doesn't
discount nr_to_scan correctly as it frees ranges. It should be
discounting them by pages than by ranges. Correct the issue.

Cc: surenb@google.com
Signed-off-by: Joel Fernandes (Google) <joel@joelfernandes.org>
---
 drivers/staging/android/ashmem.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 5891d0744a760..cb525ea6db98a 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -458,6 +458,8 @@ ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
 		lru_del(range);
 
 		freed += range_size(range);
+		sc->nr_to_scan -=  range_size(range);
+
 		mutex_unlock(&ashmem_mutex);
 		f->f_op->fallocate(f,
 				   FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
@@ -467,7 +469,7 @@ ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
 			wake_up_all(&ashmem_shrink_wait);
 		if (!mutex_trylock(&ashmem_mutex))
 			goto out;
-		if (--sc->nr_to_scan <= 0)
+		if (sc->nr_to_scan <= 0)
 			break;
 	}
 	mutex_unlock(&ashmem_mutex);
-- 
2.25.0.265.gbab2e86ba0-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
