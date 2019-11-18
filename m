Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B40FFFB0
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 08:39:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D950C85CE0;
	Mon, 18 Nov 2019 07:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wXnsjwajuPVy; Mon, 18 Nov 2019 07:39:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF8C68651C;
	Mon, 18 Nov 2019 07:39:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 504DF1BF94B
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33B88879DB
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a-jEioGccpvl for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 07:38:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 04FBC87A4D
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 07:38:52 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F09A67822E9F54F5C56D;
 Mon, 18 Nov 2019 15:38:47 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 15:38:38 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <hariprasad.kelam@gmail.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH 1/5] staging: rtl8723bs: remove set but not used variable
 'pHalData', 'pregistrypriv'
Date: Mon, 18 Nov 2019 15:45:52 +0800
Message-ID: <1574063156-68155-2-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574063156-68155-1-git-send-email-zhengbin13@huawei.com>
References: <1574063156-68155-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8723bs/hal/sdio_halinit.c: In function sdio_AggSettingRxUpdate:
drivers/staging/rtl8723bs/hal/sdio_halinit.c:578:23: warning: variable pHalData set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/sdio_halinit.c: In function rtl8723bs_hal_init:
drivers/staging/rtl8723bs/hal/sdio_halinit.c:734:24: warning: variable pregistrypriv set but not used [-Wunused-but-set-variable]

They are introduced by commit 554c0a3abf21 ("staging:
Add rtl8723bs sdio wifi driver"), but never used, so remove them.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 0f5dd46..e813382 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -570,14 +570,11 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)

 static void sdio_AggSettingRxUpdate(struct adapter *padapter)
 {
-	struct hal_com_data *pHalData;
 	u8 valueDMA;
 	u8 valueRxAggCtrl = 0;
 	u8 aggBurstNum = 3;  /* 0:1, 1:2, 2:3, 3:4 */
 	u8 aggBurstSize = 0;  /* 0:1K, 1:512Byte, 2:256Byte... */

-	pHalData = GET_HAL_DATA(padapter);
-
 	valueDMA = rtw_read8(padapter, REG_TRXDMA_CTRL);
 	valueDMA |= RXDMA_AGG_EN;
 	rtw_write8(padapter, REG_TRXDMA_CTRL, valueDMA);
@@ -713,13 +710,11 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	s32 ret;
 	struct hal_com_data *pHalData;
 	struct pwrctrl_priv *pwrctrlpriv;
-	struct registry_priv *pregistrypriv;
 	u32 NavUpper = WiFiNavUpperUs;
 	u8 u1bTmp;

 	pHalData = GET_HAL_DATA(padapter);
 	pwrctrlpriv = adapter_to_pwrctl(padapter);
-	pregistrypriv = &padapter->registrypriv;

 	if (
 		adapter_to_pwrctl(padapter)->bips_processing == true &&
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
