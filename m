Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4140FFFAE
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 08:39:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDFC08650E;
	Mon, 18 Nov 2019 07:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tRpkB+VmByTo; Mon, 18 Nov 2019 07:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9306485C10;
	Mon, 18 Nov 2019 07:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0B9A1BF94B
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D6C785C28
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9SuKYnK6j7-i for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 07:38:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 789FD85C19
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 07:38:52 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1CB51253756762493A63;
 Mon, 18 Nov 2019 15:38:48 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 15:38:39 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <hariprasad.kelam@gmail.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH 2/5] staging: rtl8723bs: remove set but not used variable
 'pHalData', 'pdmpriv'
Date: Mon, 18 Nov 2019 15:45:53 +0800
Message-ID: <1574063156-68155-3-git-send-email-zhengbin13@huawei.com>
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

drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c: In function rtl8723b_InitAntenna_Selection:
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:2237:23: warning: variable pHalData set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c: In function rtl8723b_fill_default_txdesc:
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:3056:18: warning: variable pdmpriv set but not used [-Wunused-but-set-variable]

They are introduced by commit 554c0a3abf21 ("staging:
Add rtl8723bs sdio wifi driver"), but never used, so remove them.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 22931ab..66127f6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2234,12 +2234,8 @@ void rtl8723b_set_hal_ops(struct hal_ops *pHalFunc)

 void rtl8723b_InitAntenna_Selection(struct adapter *padapter)
 {
-	struct hal_com_data *pHalData;
 	u8 val;

-
-	pHalData = GET_HAL_DATA(padapter);
-
 	val = rtw_read8(padapter, REG_LEDCFG2);
 	/*  Let 8051 take control antenna settting */
 	val |= BIT(7); /*  DPDT_SEL_EN, 0x4C[23] */
@@ -3053,7 +3049,6 @@ static void rtl8723b_fill_default_txdesc(
 {
 	struct adapter *padapter;
 	struct hal_com_data *pHalData;
-	struct dm_priv *pdmpriv;
 	struct mlme_ext_priv *pmlmeext;
 	struct mlme_ext_info *pmlmeinfo;
 	struct pkt_attrib *pattrib;
@@ -3064,7 +3059,6 @@ static void rtl8723b_fill_default_txdesc(

 	padapter = pxmitframe->padapter;
 	pHalData = GET_HAL_DATA(padapter);
-	pdmpriv = &pHalData->dmpriv;
 	pmlmeext = &padapter->mlmeextpriv;
 	pmlmeinfo = &(pmlmeext->mlmext_info);

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
