Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2840FFFAF
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 08:39:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 60B6020427;
	Mon, 18 Nov 2019 07:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2KfXIbStfql; Mon, 18 Nov 2019 07:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 51D53203FD;
	Mon, 18 Nov 2019 07:39:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35A201BF424
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2334885C10
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2zi4jKkLxCbM for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 07:38:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 718EC85CE0
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 07:38:50 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E94512B04D21BBAA5285;
 Mon, 18 Nov 2019 15:38:47 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 15:38:39 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <hariprasad.kelam@gmail.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH 3/5] staging: rtl8723bs: remove set but not used variable
 'pmlmeinfo', 'pHalData'
Date: Mon, 18 Nov 2019 15:45:54 +0800
Message-ID: <1574063156-68155-4-git-send-email-zhengbin13@huawei.com>
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

drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c: In function ConstructBtNullFunctionData:
drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:2099:24: warning: variable pmlmeinfo set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c: In function SetFwRsvdPagePkt_BTCoex:
drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:2154:24: warning: variable pmlmeinfo set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c: In function SetFwRsvdPagePkt_BTCoex:
drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c:2149:23: warning: variable pHalData set but not used [-Wunused-but-set-variable]

They are introduced by commit 554c0a3abf21 ("staging:
Add rtl8723bs sdio wifi driver"), but never used, so remove them.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 7760fd0..71b5a50 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -2071,8 +2071,6 @@ static void ConstructBtNullFunctionData(
 	struct ieee80211_hdr *pwlanhdr;
 	__le16 *fctrl;
 	u32 pktlen;
-	struct mlme_ext_priv *pmlmeext;
-	struct mlme_ext_info *pmlmeinfo;
 	u8 bssid[ETH_ALEN];


@@ -2080,8 +2078,6 @@ static void ConstructBtNullFunctionData(
 		FUNC_ADPT_ARG(padapter), bQoS, bEosp, bForcePowerSave);

 	pwlanhdr = (struct ieee80211_hdr *)pframe;
-	pmlmeext = &padapter->mlmeextpriv;
-	pmlmeinfo = &pmlmeext->mlmext_info;

 	if (!StaAddr) {
 		memcpy(bssid, myid(&padapter->eeprompriv), ETH_ALEN);
@@ -2122,12 +2118,9 @@ static void ConstructBtNullFunctionData(

 static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 {
-	struct hal_com_data *pHalData;
 	struct xmit_frame *pcmdframe;
 	struct pkt_attrib *pattrib;
 	struct xmit_priv *pxmitpriv;
-	struct mlme_ext_priv *pmlmeext;
-	struct mlme_ext_info *pmlmeinfo;
 	u32 BeaconLength = 0;
 	u32 BTQosNullLength = 0;
 	u8 *ReservedPagePacket;
@@ -2140,10 +2133,7 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)

 /* 	DBG_8192C("+" FUNC_ADPT_FMT "\n", FUNC_ADPT_ARG(padapter)); */

-	pHalData = GET_HAL_DATA(padapter);
 	pxmitpriv = &padapter->xmitpriv;
-	pmlmeext = &padapter->mlmeextpriv;
-	pmlmeinfo = &pmlmeext->mlmext_info;
 	TxDescLen = TXDESC_SIZE;
 	TxDescOffset = TXDESC_OFFSET;
 	PageSize = PAGE_SIZE_TX_8723B;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
