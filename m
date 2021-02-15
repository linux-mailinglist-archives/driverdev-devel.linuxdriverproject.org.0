Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB55C31B83F
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 12:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B53887122;
	Mon, 15 Feb 2021 11:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BM-7GVQsacHE; Mon, 15 Feb 2021 11:45:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEB1087115;
	Mon, 15 Feb 2021 11:45:52 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45A5D1BF278
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 11:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4205486964
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 11:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BbfqUJxql87n
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 11:45:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4735986857
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 11:45:50 +0000 (UTC)
Received: by mail-pg1-f178.google.com with SMTP id b21so4063658pgk.7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 03:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JUSXFahK2+KSXTILvwXam14Ygd6GKmJF8A1mXaBPTuQ=;
 b=KaNUG7Y7ORHAqXbbKHmaZG3NUxUsqENfEXeCRLWVzqAUlrJeggsqx2C8sox7Fe8+zK
 qqd9k12ic4+7nE7HjOMc3DZCYx9XVAoK/a8UeElgc0hIy0bktiUrZD0XCAt02bwfKW6K
 xcQxlnodZ0AU2RfTwFPwZFaLUfF8AfwXt12zanE+2zYcv8uu9DrvEKcrYqKxQLwdBzkt
 lJUQAVg0u9BS3Ph+IVdhcJtdiTYg6wcc3dlWkh2XJYZHlgwz31QUYdQYlnrn6yH6cWBp
 0BC4sXME6srEQj2mA7kHZYSt+lYgW+3uHJcnYYDPirHBRVY8yGjn9AQ2vI5i2RpIxqB8
 IBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JUSXFahK2+KSXTILvwXam14Ygd6GKmJF8A1mXaBPTuQ=;
 b=MFFN+RW4OsJz/JV1EoDPopZn662Aj7kcWAcbYOzBBQwTDvCkL69tSXYzI0QIaTEL7c
 cY8CFMkGc5TNSTQdO0jgI9sUT2ljDVY60XAMSPIpoIqeAsmvPwRdCifJSoecHxNbeuQA
 f77bFl6Vrsu5arl7wM1kPsHqtLxoenXAlM8lRKITu5lFr74Hs6rsrL6ZvUd31Q4NOnAZ
 NNv8dQc8EXjirMN9SnPc+1ILu+INIOfo2kXoUOBNj7EgXaCUO3pEcEKAvEDWFmMLDBrt
 kAjJ7UN/EVJfp8s1XEqaUFVXCa8L2oPx/vXO8G0rI50ZSdhoA8+IZiwWWWCI7ZnIT40H
 ndSg==
X-Gm-Message-State: AOAM531XGc87LEHhcMAnHR3kQrKnnNd9GoUFabrQeRDj2gFzboBJVWC4
 a5yuz5avA+NXzrB62yV7zw==
X-Google-Smtp-Source: ABdhPJwAWwK0tYYkoyWF3ejtcT1ZZrFxJ6o1ia8et331ko3p4u0fm592m0Vg/v6qMo5vSGah2xNvEw==
X-Received: by 2002:a63:f404:: with SMTP id g4mr14498405pgi.114.1613389549745; 
 Mon, 15 Feb 2021 03:45:49 -0800 (PST)
Received: from localhost.localdomain ([2405:201:7000:69ad:718a:7103:c6a3:4d43])
 by smtp.gmail.com with ESMTPSA id k31sm17604364pgi.5.2021.02.15.03.45.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 03:45:49 -0800 (PST)
From: shivang upadhyay <oroz3x@gmail.com>
To: gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org
Subject: [PATCH v3] ks7010: enclosed non-trivial defines in parentheses
Date: Mon, 15 Feb 2021 17:15:34 +0530
Message-Id: <20210215114534.12610-1-oroz3x@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: shivang upadhyay <oroz3x@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

checkpatch.pl complains about missing parentheses
"Macros with complex values should be enclosed in parentheses".
fixed that


Signed-off-by: shivang upadhyay <oroz3x@gmail.com>
---
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
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
