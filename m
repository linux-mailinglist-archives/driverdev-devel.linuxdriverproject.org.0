Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E85318538
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 07:25:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A6FF87405;
	Thu, 11 Feb 2021 06:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aUrGx09MwgfF; Thu, 11 Feb 2021 06:25:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25B1C873B6;
	Thu, 11 Feb 2021 06:25:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 416101BF82F
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 06:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E18D86B23
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 06:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ORYqwrnbiLbC for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 06:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4EFFA86B22
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 06:25:50 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id w36so6560990lfu.4
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 22:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a172++GKBLp4j2cPZ3xSzTWnzK4BLacsMzqqmF8v+TE=;
 b=WBpA8brY2RCW6NuIzbHlbWFdDzpUcH0uxC8tByIVFAxMDnfaB1GmcSu96JbG2cG++4
 Qmm+TEp1d5x5i3XD9b4mPmqa47rUy4qh4nZFQ81VkUZHe2iv4FZ6Sn7vks+65Ud0Wrel
 hBKhv+cf6FwOFup48Xi4ztNVwIhr21FD/0f9SJ/gVubrqPz+5P6WUagdgvT8yTzbW9hB
 Nr6rVR06R41X3fYBsRjrdVZccp2UxmfrtNaZRJekVWAxPm/dukdS/wTWvag7hIgLazcI
 MpjverAgYDmrJI7uMJaa4oOLXsdOUT2Gk/4ONACyt+GViqLlfPI4puvC9+Rfg+13H3Ow
 vvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a172++GKBLp4j2cPZ3xSzTWnzK4BLacsMzqqmF8v+TE=;
 b=IhWaCexhF4L27RJuJz4fWVjaFVh2OB4V4xkrgTOttTu+E0f/Sr6bKTZ9uStbUAHXrH
 oFm5PNXRAJLm6YjvDAxkfYzM2AFzRRni+Qp3NyqG0CirDX0tgpYjuWg7a/JINjIxi9MF
 kMtKeZf+L4EhFoTxTRfqzSGreLI79vRmXXVWLveRlHqqTvhE9WZWTGOjTONzHKCSJtEz
 2xy2sbHgY25G5IXdPtl1OkijMlvOCDFb3Cq6TERRI7Slius+l6iXqaMFVtlnSCRR5zZT
 nDmkT7KhfKKPaIEFiF08VuExzeMNLwUiwo975hOSaY5r8T6Ep/HOWcczBBVxRwC7z3k9
 irMA==
X-Gm-Message-State: AOAM530qOgfaTZJojwV4W5/lQBilWmzyASjhnHS18rs8iJIVxdt+DMTT
 FDt42KURFHwqOs45zvvWOwk=
X-Google-Smtp-Source: ABdhPJzQ8QWb+QBHz9JARn4nvO4Z+FjrNcSK/SiqjhEGuwa9KBxwoLNr7RNApN81B+t3NDXVlB45gg==
X-Received: by 2002:a19:9154:: with SMTP id y20mr3460756lfj.2.1613024748279;
 Wed, 10 Feb 2021 22:25:48 -0800 (PST)
Received: from TRWS9215.usr.ingenico.loc ([213.143.229.14])
 by smtp.gmail.com with ESMTPSA id l24sm794420lje.50.2021.02.10.22.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 22:25:47 -0800 (PST)
From: Fatih YILDIRIM <yildirim.fatih@gmail.com>
To: gregkh@linuxfoundation.org,
	gustavo@embeddedor.com
Subject: [PATCH] Macros with complex values should be enclosed in parentheses.
Date: Thu, 11 Feb 2021 09:25:43 +0300
Message-Id: <20210211062543.9817-1-yildirim.fatih@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Fatih YILDIRIM <yildirim.fatih@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Fatih YILDIRIM <yildirim.fatih@gmail.com>
---
Hi,
I have a coding style fix.
By the way, I'm following the Eudyptula Challenge Linux kernel tasks
and this is my first patch related to my task no 10.
I hope I'm doing it the right way.
Thanks for your understanding and kind comments.

 drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
index 39138191a556..c62a494ed6bb 100644
--- a/drivers/staging/ks7010/ks_hostif.h
+++ b/drivers/staging/ks7010/ks_hostif.h
@@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
 #define TX_RATE_FIXED		5
 
 /* 11b rate */
-#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
-#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
+#define TX_RATE_1M	((u8)(10 / 5))	/* 11b 11g basic rate */
+#define TX_RATE_2M	((u8)(20 / 5))	/* 11b 11g basic rate */
+#define TX_RATE_5M	((u8)(55 / 5))	/* 11g basic rate */
+#define TX_RATE_11M	((u8)(110 / 5))	/* 11g basic rate */
 
 /* 11g rate */
-#define TX_RATE_6M	(u8)(60 / 5)	/* 11g basic rate */
-#define TX_RATE_12M	(u8)(120 / 5)	/* 11g basic rate */
-#define TX_RATE_24M	(u8)(240 / 5)	/* 11g basic rate */
-#define TX_RATE_9M	(u8)(90 / 5)
-#define TX_RATE_18M	(u8)(180 / 5)
-#define TX_RATE_36M	(u8)(360 / 5)
-#define TX_RATE_48M	(u8)(480 / 5)
-#define TX_RATE_54M	(u8)(540 / 5)
+#define TX_RATE_6M	((u8)(60 / 5))	/* 11g basic rate */
+#define TX_RATE_12M	((u8)(120 / 5))	/* 11g basic rate */
+#define TX_RATE_24M	((u8)(240 / 5))	/* 11g basic rate */
+#define TX_RATE_9M	((u8)(90 / 5))
+#define TX_RATE_18M	((u8)(180 / 5))
+#define TX_RATE_36M	((u8)(360 / 5))
+#define TX_RATE_48M	((u8)(480 / 5))
+#define TX_RATE_54M	((u8)(540 / 5))
 
 static inline bool is_11b_rate(u8 rate)
 {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
