Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE9231CCAB
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 16:11:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 555AD8531B;
	Tue, 16 Feb 2021 15:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6enVY0ROGsf; Tue, 16 Feb 2021 15:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48142851AD;
	Tue, 16 Feb 2021 15:11:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AED21BF59E
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 15:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 848676F555
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 15:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mUPoPXRuupeM for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 15:11:19 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id CE4A96F5AA; Tue, 16 Feb 2021 15:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3B7F6F503
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 15:11:03 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id gx20so6111183pjb.1
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 07:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rj1Cme7HGhwAEo9lvgu9bg14f3OadyDnyVkycWOifno=;
 b=mV2Yoj1q/aBPPmAXjdpBHT9kzJqfMyVk4uSi/vKScj5EbMB62jaKkxU7xGYVk4AWne
 /6gWYBf0SEVwoiHulqZlLVybF7bFGx8oJenaSGHqtwilXtM2s4Dhk7k5rIM+9UCMqnq7
 lsLgQZc998d1pGqhqifMbR++ueqQWAKyPkSCGbElt+iA1bn2iTSVP/z6rnp8GFf2qXpz
 Co7WWkg/5vAKuntQhSk/8OwNkoifB0+yGNoSS9cwZ8FWtnJbp5DSXS29J5ogZawrFNK/
 /G8y9YgubKm/VekzmrZjIJ9xo2bZhrm1ZSrUu+Xi0R7O5ZAZs1R4W1sqW9VjcYNZ9G0X
 d5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rj1Cme7HGhwAEo9lvgu9bg14f3OadyDnyVkycWOifno=;
 b=bOHqYC7Saf1G1vPJz/lWGCVTgRjUVl9ddgbQ67NQ+TQ5PogNLtKJ2SXE0A1xfFteMQ
 5CdteFEVqzyER+fkXeih2kW3gu/0/92higHf48ukenOM90CZhePq2KaX3ggpjo9z/10Z
 beQm/SzEGoOsYfu93rTBW40EVtQAGGBtmiW4K87euOPidTwR3rcXTgwXENSeFjxZp74N
 cGHvCrDmblpHYdN89eXbUyzBMwFi7nYARQy8Biy1W0cFXy1bdkWgN4hdW3NVK1hoDAhc
 hHGRYHfvHv7aXtRCkxSqghqlLXodRD7GkSbo/NtStid91SLVbbGZuQn5N0O4B+rF1up3
 7SSQ==
X-Gm-Message-State: AOAM532UtPrPju1UhX8hhDUIXoFGNtEnVoAwyyYdsuCO4u5zHKlzaUXf
 ZA7lBvf5j/zhjmFFQFYJSkk=
X-Google-Smtp-Source: ABdhPJxuWc/dpqa1OAEiNmyGatAMdO4U/Uxs7qdpaKsyYXIRElmC8hGK9OUMn9YftgxO7ipoxySvaw==
X-Received: by 2002:a17:90a:4ce2:: with SMTP id
 k89mr4753423pjh.16.1613488263127; 
 Tue, 16 Feb 2021 07:11:03 -0800 (PST)
Received: from localhost.localdomain ([115.99.81.22])
 by smtp.gmail.com with ESMTPSA id s18sm20839912pfm.129.2021.02.16.07.11.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 07:11:02 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: gregkh@linuxfoundation.org,
	gustavo@embeddedor.com
Subject: [PATCH] Staging: ks7010: ks_hostif: fixed parentheses coding style
 issue
Date: Tue, 16 Feb 2021 20:40:58 +0530
Message-Id: <20210216151058.12638-1-selvakumar16197@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue.

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
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
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
