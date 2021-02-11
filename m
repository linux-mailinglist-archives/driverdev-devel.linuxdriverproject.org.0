Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 837CC3186FB
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 10:22:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7719187420;
	Thu, 11 Feb 2021 09:22:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XZWKmuvc+vfZ; Thu, 11 Feb 2021 09:22:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E1198732E;
	Thu, 11 Feb 2021 09:22:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D5091BF681
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 09:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6997286D9C
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 09:22:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5YJoUGZ3nR8 for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 09:22:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2309886D8F
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 09:22:44 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id df22so6222385edb.1
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 01:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PDVSyysENqV9wDTbalaf8CRZt4zONvUxJg+BfYAS7Nk=;
 b=T/UL3ICN6LwRJXDz6q627qAvZ+8S92YizHIBLf/dtWLuL9bPjkxjfKbFQb/4BlPQDv
 DGVJ0Q5JPs+XZaMz5CUbP6vXGl91iRBi+gV8mvNoG6RMLyTpegs/MNnaUAh4iONp1dIW
 ith7Mw6qFGD/uEHeCmlfQg+ZLyyE0enqHm9gws6cBZ9m2PxrnsL6c828xyiIYbjygeHI
 KFAEFxKjSnQUxmBGUbjY41xFZ+ircIBtUzDx9Eec26GGH5zPKT//3qay81aO1iR/F3CO
 UmBrhjs668GGQHpV3NQNgIjxs43IXT1Q7uOZ0c7PK+rIg+miuYaUbgXCwEp98AAHK4jX
 x1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PDVSyysENqV9wDTbalaf8CRZt4zONvUxJg+BfYAS7Nk=;
 b=txmBSn6yXVslUWnvFEZk1uKG+ELWtmXdCNirwIWrevBNeJ8RM9AtP8jruAVvR6ByFu
 u7hVv3KlFO0rbKv0P2EV76S9MQRbpMgwkhm58cUvQvkvBnz78oOZ0tUAbwTVoPZhv7cq
 7fDGsJ4jTFHGf4N7GilJwuoqEUv/5pZEZ44dQbJDgiyWgut0p4jMZg7plFHvvg/3wSJW
 zJe83E28wqDwwoQW/z1rj4BkgKu2xwwBlWKLnAEYEnAZn87UmVvRk11Ln81gAYntHi3g
 2sgkSuOcttsHk65Ft+RjjEFyNwR8th0WnpjFbIcto8YpyqtEIW2qNtPZfmnj27x/7fox
 bR8Q==
X-Gm-Message-State: AOAM530HNccPqHisxvrKwxpnSkODMDVmlWlK1lEjS8tpdT0T5Kxp+yiP
 VN49M+4nqfvXORkgu7ql+rY=
X-Google-Smtp-Source: ABdhPJyoxbrNK0/P2UNTUBNwEA+TLB320ytqsYJxJGXc1jgp3iX5Q0575Jbg+uRjPLVjWAXFEJQP6g==
X-Received: by 2002:a05:6402:105a:: with SMTP id
 e26mr7198980edu.60.1613035362571; 
 Thu, 11 Feb 2021 01:22:42 -0800 (PST)
Received: from TRWS9215.usr.ingenico.loc ([95.13.23.74])
 by smtp.gmail.com with ESMTPSA id ga5sm3779324ejb.114.2021.02.11.01.22.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 01:22:42 -0800 (PST)
From: Fatih Yildirim <yildirim.fatih@gmail.com>
To: gregkh@linuxfoundation.org,
	gustavo@embeddedor.com
Subject: [PATCH -next] staging: ks7010: Macros with complex values
Date: Thu, 11 Feb 2021 12:22:39 +0300
Message-Id: <20210211092239.10291-1-yildirim.fatih@gmail.com>
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
 Fatih Yildirim <yildirim.fatih@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix for checkpatch.pl warning:
Macros with complex values should be enclosed in parentheses.

Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
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
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
