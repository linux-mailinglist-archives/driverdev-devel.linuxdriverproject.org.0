Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CBD6BE59
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jul 2019 16:35:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CF7F87ED1;
	Wed, 17 Jul 2019 14:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KSDY1n707L6; Wed, 17 Jul 2019 14:35:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A3198742F;
	Wed, 17 Jul 2019 14:35:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1141B1BF342
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 14:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0DF018638F
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 14:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Oh1BoZNT4za for <devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 14:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C534586381
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 14:34:58 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C24388FE867EE1C592AC;
 Wed, 17 Jul 2019 22:34:54 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Wed, 17 Jul 2019
 22:34:47 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <payal.s.kshirsagar.98@gmail.com>,
 <hariprasad.kelam@gmail.com>
Subject: [PATCH] staging: rtl8723bs: remove set but not used variable
 'cck_highpwr'
Date: Wed, 17 Jul 2019 22:20:14 +0800
Message-ID: <20190717142014.43216-1-yuehaibing@huawei.com>
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

drivers/staging/rtl8723bs/hal/odm_HWConfig.c:
 In function odm_RxPhyStatus92CSeries_Parsing:
drivers/staging/rtl8723bs/hal/odm_HWConfig.c:92:5: warning:
 variable cck_highpwr set but not used [-Wunused-but-set-variable]

It is never used and can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 49fa81406..71919a3 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -89,7 +89,6 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 	u8 RSSI, total_rssi = 0;
 	bool isCCKrate = false;
 	u8 rf_rx_num = 0;
-	u8 cck_highpwr = 0;
 	u8 LNA_idx, VGA_idx;
 	PPHY_STATUS_RPT_8192CD_T pPhyStaRpt = (PPHY_STATUS_RPT_8192CD_T)pPhyStatus;
 
@@ -107,16 +106,10 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 		/*  (2)PWDB, Average PWDB cacluated by hardware (for rate adaptive) */
 		/*  */
 
-		/* if (pHalData->eRFPowerState == eRfOn) */
-		cck_highpwr = pDM_Odm->bCckHighPower;
-		/* else */
-		/* cck_highpwr = false; */
-
 		cck_agc_rpt =  pPhyStaRpt->cck_agc_rpt_ofdm_cfosho_a ;
 
 		/* 2011.11.28 LukeLee: 88E use different LNA & VGA gain table */
 		/* The RSSI formula should be modified according to the gain table */
-		/* In 88E, cck_highpwr is always set to 1 */
 		LNA_idx = ((cck_agc_rpt & 0xE0)>>5);
 		VGA_idx = (cck_agc_rpt & 0x1F);
 		rx_pwr_all = odm_CCKRSSI_8723B(LNA_idx, VGA_idx);
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
