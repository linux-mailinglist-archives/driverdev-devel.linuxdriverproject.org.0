Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3B93188AD
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:57:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 393586F620
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 10:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m92Gh9pR_k9A for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 10:57:19 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 4313B6F69E; Thu, 11 Feb 2021 10:57:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6095F6F530;
	Thu, 11 Feb 2021 10:57:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E532D1BF4D5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF44F87192
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O3VwrlkmeRK0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:56:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10021801.me.com (pv50p00im-ztdg10021801.me.com
 [17.58.6.56])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57C018718C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613041008;
 bh=nYsMUmTBEC5rcwAhETg0N9Q1YyU13E+tRoMEiki11Wo=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=sYjvmmBo4yl9bGYJw3L7gbV+ZxnqAQQ3VGMhagr9BprC0SeK7PTeztdb/dJ/+F1CJ
 jY19GkesBnszK2sAGCe0/VD4i5ToHbN1AYcPT+7JKaAFKK11n4Sn6R7x887qwhorXV
 6ceq21tRPeq/VechSHMkFrMfgvMn52MY+cZvIlgT+/QNaldpGHCpwiBmbkNj2olGuw
 tk4JrINYinmKc1E9fxhaIf4tg1Ial543zxDANYQnzo9SucSVgKXc+k3K10L75pkBgt
 RoXNNDO/OFBtZkhaAfvXPDG3uish376j120dUplc3WBmDFpBpPGrctoXwi57xH0gWM
 eAU1kDzw4IPIA==
Received: from everest.nathzi1505 (unknown [45.250.50.68])
 by pv50p00im-ztdg10021801.me.com (Postfix) with ESMTPSA id 1BCD4360421;
 Thu, 11 Feb 2021 10:56:46 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: driverdev-devel@linuxdriverproject.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: enclosed complex macro definitions with
 parentheses
Date: Thu, 11 Feb 2021 16:26:36 +0530
Message-Id: <20210211105636.13193-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-11_05:2021-02-10,
 2021-02-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102110099
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
Cc: Pritthijit Nath <pritthijit.nath@icloud.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

kshostif.h

fixed ERROR: Macros with complex values should be enclosed in
paranthesis

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
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
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
