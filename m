Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5002E2B23
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Dec 2020 11:06:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8EBA873D6;
	Fri, 25 Dec 2020 10:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 577PzjgVOUJ7; Fri, 25 Dec 2020 10:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFA3C873DC;
	Fri, 25 Dec 2020 10:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28FCE1BF32A
 for <devel@linuxdriverproject.org>; Fri, 25 Dec 2020 10:06:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44A1C20362
 for <devel@linuxdriverproject.org>; Fri, 25 Dec 2020 10:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjmRk9YrzOZa for <devel@linuxdriverproject.org>;
 Fri, 25 Dec 2020 10:05:56 +0000 (UTC)
X-Greylist: delayed 00:11:16 by SQLgrey-1.7.6
Received: from 189.cn (mta.189.cn [121.14.53.140])
 by silver.osuosl.org (Postfix) with ESMTP id 3A05920358
 for <devel@driverdev.osuosl.org>; Fri, 25 Dec 2020 10:05:56 +0000 (UTC)
HMM_SOURCE_IP: 10.64.10.45:59034.311620768
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-123.150.8.42 (unknown [10.64.10.45])
 by 189.cn (HERMES) with SMTP id 3DB26BEE7D;
 Fri, 25 Dec 2020 17:54:37 +0800 (CST)
Received: from  ([10.64.8.34])
 by gateway-151646-dep-54888d799-vh9dt with ESMTP id
 668de2d40219467fb5213150908c1a6f for greg@kroah.com; 
 Fri Dec 25 17:54:38 2020
X-Transaction-ID: 668de2d40219467fb5213150908c1a6f
X-filter-score: 
X-Real-From: chensong_2000@189.cn
X-Receive-IP: 10.64.8.34
X-MEDUSA-Status: 0
From: Song Chen <chensong_2000@189.cn>
To: greg@kroah.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: board: Remove macro board_staging
Date: Fri, 25 Dec 2020 17:54:45 +0800
Message-Id: <1608890085-1267-1-git-send-email-chensong_2000@189.cn>
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
Cc: devel@driverdev.osuosl.org, Song Chen <chensong_2000@189.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Macro is not supposed to have flow control in it's
statement, remove.

Signed-off-by: Song Chen <chensong_2000@189.cn>
---
 drivers/staging/board/armadillo800eva.c | 10 ++++++----
 drivers/staging/board/board.h           | 11 -----------
 drivers/staging/board/kzm9d.c           | 18 ++++++++++--------
 3 files changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/board/armadillo800eva.c b/drivers/staging/board/armadillo800eva.c
index 0225234..a7e8487 100644
--- a/drivers/staging/board/armadillo800eva.c
+++ b/drivers/staging/board/armadillo800eva.c
@@ -80,9 +80,11 @@ static const struct board_staging_dev armadillo800eva_devices[] __initconst = {
 
 static void __init armadillo800eva_init(void)
 {
-	board_staging_gic_setup_xlate("arm,pl390", 32);
-	board_staging_register_devices(armadillo800eva_devices,
-				       ARRAY_SIZE(armadillo800eva_devices));
+	if (of_machine_is_compatible("renesas,armadillo800eva")) {
+		board_staging_gic_setup_xlate("arm,pl390", 32);
+		board_staging_register_devices(armadillo800eva_devices,
+					       ARRAY_SIZE(armadillo800eva_devices));
+	}
 }
 
-board_staging("renesas,armadillo800eva", armadillo800eva_init);
+device_initcall(armadillo800eva_init);
diff --git a/drivers/staging/board/board.h b/drivers/staging/board/board.h
index 5609daf..f1c233e 100644
--- a/drivers/staging/board/board.h
+++ b/drivers/staging/board/board.h
@@ -32,15 +32,4 @@ int board_staging_register_device(const struct board_staging_dev *dev);
 void board_staging_register_devices(const struct board_staging_dev *devs,
 				    unsigned int ndevs);
 
-#define board_staging(str, fn)			\
-static int __init runtime_board_check(void)	\
-{						\
-	if (of_machine_is_compatible(str))	\
-		fn();				\
-						\
-	return 0;				\
-}						\
-						\
-device_initcall(runtime_board_check)
-
 #endif /* __BOARD_H__ */
diff --git a/drivers/staging/board/kzm9d.c b/drivers/staging/board/kzm9d.c
index d449a83..72b1ad45 100644
--- a/drivers/staging/board/kzm9d.c
+++ b/drivers/staging/board/kzm9d.c
@@ -12,15 +12,17 @@ static struct resource usbs1_res[] __initdata = {
 
 static void __init kzm9d_init(void)
 {
-	board_staging_gic_setup_xlate("arm,pl390", 32);
+	if (of_machine_is_compatible("renesas,kzm9d")) {
+		board_staging_gic_setup_xlate("arm,pl390", 32);
 
-	if (!board_staging_dt_node_available(usbs1_res,
-					     ARRAY_SIZE(usbs1_res))) {
-		board_staging_gic_fixup_resources(usbs1_res,
-						  ARRAY_SIZE(usbs1_res));
-		platform_device_register_simple("emxx_udc", -1, usbs1_res,
-						ARRAY_SIZE(usbs1_res));
+		if (!board_staging_dt_node_available(usbs1_res,
+						     ARRAY_SIZE(usbs1_res))) {
+			board_staging_gic_fixup_resources(usbs1_res,
+							  ARRAY_SIZE(usbs1_res));
+			platform_device_register_simple("emxx_udc", -1, usbs1_res,
+							ARRAY_SIZE(usbs1_res));
+		}
 	}
 }
 
-board_staging("renesas,kzm9d", kzm9d_init);
+device_initcall(kzm9d_init);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
