Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD686320D84
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:14:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7A3F6F4B7
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:14:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H_ZAkCZzTMAy for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 20:14:23 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 41BEC6F4F3; Sun, 21 Feb 2021 20:14:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C9B7605F5;
	Sun, 21 Feb 2021 20:14:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D11B1BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF2C8605F5
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GddGL2B9twnz for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:13:52 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 27B676ECA6; Sun, 21 Feb 2021 20:13:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC2BB605F5
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:13:50 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id z5so2077766pfe.3
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 12:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/MZ9AB1W/dbMxNAhi0KVsZwY+q1BgLJr0bsgnEfCTfU=;
 b=DVDQIQXK+lI9FpI6XKZUP6PmT5GpG9Z156YuDP8RxuG1v1wWrZVtpbILjt3BqmHsZ3
 FVqyLQHPHoHQR2YhRGwp/AVMEbhK9fh0UWR7LptW4rCAsyuajOUuA1lCzLidHd7wuB5I
 B8V2INwsSsjBgq/EAb9+ckUhcvYepGTg9kCikInWdVlWwBR4qOzMbMQLPqZdm6/iRpuU
 kg3/y0JYEtK8FMWQIC7rRjPkWLGdgF5/LPjfMAtpbD80CzC7dEsyYG6SUuaBwQyXZj5A
 MAhPCsHxDyFXyj5WbhpnJ4fJRVOtKjhF42BrsgsqrW1GK6oZuctlKQXEyO8xYnHt0Xgn
 LFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/MZ9AB1W/dbMxNAhi0KVsZwY+q1BgLJr0bsgnEfCTfU=;
 b=XzIaFa/p8ppQgt/WCh+HlAkpdMLJHUeHHb309kCfzaKLmrlst95xZm6wEKAj5uxhQk
 +0YDbXWZz/uprWux+UwK0c4VRfIwNgh4NNm66EHEGdJvwte4Z4+jBEWlZ/NggmrzHPRD
 YcPYyJQwFl6KXaGo+4qtLW8rezV7xqgIN5TSI7IYAutc6t2ExPxtYbBej9+lIBgvMlXC
 a+pSuiEnl27dCQBURBqU+NX6YPTiUD3MpJfmZf1dvKNMjewXr9lhjZq0FEBY4zkg5gau
 zyzuOrds4vn/FLHkeL8cEJkwKqIylxf695YKET7AWjE4K2kVUVTr/xQ4Q9dT12mrH/Ko
 nX6g==
X-Gm-Message-State: AOAM531HkDPJdYd/tWhzPuFZfiwslEPaK/JAfB2IkD4D2m4iBQjPi6oW
 dITb0/AnpkkZeN0ZaK35EDg=
X-Google-Smtp-Source: ABdhPJwtgU7vD26cxEIVe/yhegDad+EYPOJnY1UOXSx4VulhokUGnczz28OKEbIkI6UQrEcSL3ljfw==
X-Received: by 2002:aa7:80c6:0:b029:1b6:92ae:a199 with SMTP id
 a6-20020aa780c60000b02901b692aea199mr11068478pfn.71.1613938430430; 
 Sun, 21 Feb 2021 12:13:50 -0800 (PST)
Received: from rayare.domain.name ([106.51.141.71])
 by smtp.googlemail.com with ESMTPSA id d4sm12721532pfq.101.2021.02.21.12.13.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 12:13:49 -0800 (PST)
From: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
To: 
Subject: [PATCH] staging: ks7010: Replace macros with do while loop.
Date: Mon, 22 Feb 2021 01:43:24 +0530
Message-Id: <20210221201327.12714-1-chakravarthikulkarni2021@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 chakravarthikulkarni2021@gmail.com, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fix errors found in checkpath.pl.
Error message is:
<Macros with complex values should be enclosed in parentheses.>
It is a good idea to keep complex macros in do while loop.
Otherwise result may have side effect.

Signed-off-by: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
index 39138191a556..955499054d10 100644
--- a/drivers/staging/ks7010/ks_hostif.h
+++ b/drivers/staging/ks7010/ks_hostif.h
@@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
 #define TX_RATE_FIXED		5
 
 /* 11b rate */
-#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
-#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
+#define TX_RATE_1M	do { (u8) (10 / 5) } while (0)	/* 11b 11g basic rate */
+#define TX_RATE_2M	do { (u8) (20 / 5) } while (0)	/* 11b 11g basic rate */
+#define TX_RATE_5M	do { (u8) (55 / 5) } while (0)	/* 11g basic rate */
+#define TX_RATE_11M	do { (u8) (110 / 5) } while (0)	/* 11g basic rate */
 
 /* 11g rate */
-#define TX_RATE_6M	(u8)(60 / 5)	/* 11g basic rate */
-#define TX_RATE_12M	(u8)(120 / 5)	/* 11g basic rate */
-#define TX_RATE_24M	(u8)(240 / 5)	/* 11g basic rate */
-#define TX_RATE_9M	(u8)(90 / 5)
-#define TX_RATE_18M	(u8)(180 / 5)
-#define TX_RATE_36M	(u8)(360 / 5)
-#define TX_RATE_48M	(u8)(480 / 5)
-#define TX_RATE_54M	(u8)(540 / 5)
+#define TX_RATE_6M	do { (u8) (60 / 5) } while (0)	/* 11g basic rate */
+#define TX_RATE_12M	do { (u8) (120 / 5) } while (0)	/* 11g basic rate */
+#define TX_RATE_24M	do { (u8) (240 / 5) } while (0)	/* 11g basic rate */
+#define TX_RATE_9M	do { (u8) (90 / 5) } while (0)
+#define TX_RATE_18M	do { (u8) (180 / 5) } while (0)
+#define TX_RATE_36M	do { (u8) (360 / 5) } while (0)
+#define TX_RATE_48M	do { (u8) (480 / 5) } while (0)
+#define TX_RATE_54M	do { (u8) (540 / 5) } while (0)
 
 static inline bool is_11b_rate(u8 rate)
 {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
