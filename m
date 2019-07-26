Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5F976AF4
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 16:03:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EA1C89D39;
	Fri, 26 Jul 2019 14:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AtQlcuVmVUAK; Fri, 26 Jul 2019 14:03:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D80889D07;
	Fri, 26 Jul 2019 14:03:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43A1F1BF2A0
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 14:03:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3E3BB25DB6
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 14:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e3Xc0wU-czEs for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 14:03:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id 21D0822786
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 14:03:40 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8BDE6CA4AD68E482E6F4;
 Fri, 26 Jul 2019 22:03:35 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 26 Jul 2019
 22:03:28 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <shobhitkukreti@gmail.com>
Subject: [PATCH -next] staging: rtl8723bs: remove set but not used variable
 'bWifiBusy'
Date: Fri, 26 Jul 2019 22:03:21 +0800
Message-ID: <20190726140321.19200-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

 In function halbtc8723b1ant_TdmaDurationAdjustForAcl:
drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:1761:7: warning:
 variable bWifiBusy set but not used [-Wunused-but-set-variable]

It is never used so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index 8e4caee..dd349c5 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -1758,7 +1758,6 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 	static s32 up, dn, m, n, WaitCount;
 	s32 result;   /* 0: no change, +1: increase WiFi duration, -1: decrease WiFi duration */
 	u8 retryCount = 0, btInfoExt;
-	bool bWifiBusy = false;
 
 	BTC_PRINT(
 		BTC_MSG_ALGORITHM,
@@ -1766,11 +1765,6 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 		("[BTCoex], TdmaDurationAdjustForAcl()\n")
 	);
 
-	if (BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY == wifiStatus)
-		bWifiBusy = true;
-	else
-		bWifiBusy = false;
-
 	if (
 		(BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN == wifiStatus) ||
 		(BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN == wifiStatus) ||
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
