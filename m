Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FC810D369
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 10:45:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 240C387DC7;
	Fri, 29 Nov 2019 09:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id scdhHabVc099; Fri, 29 Nov 2019 09:45:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6763787DA3;
	Fri, 29 Nov 2019 09:45:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C22A01BF48D
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 09:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BEA9388531
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 09:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qiF8JM452C5l for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 09:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1D3D884D6
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 09:45:05 +0000 (UTC)
Received: from faui04d.informatik.uni-erlangen.de
 (faui04d.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:134])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id B7681241800;
 Fri, 29 Nov 2019 10:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=stud.informatik.uni-erlangen.de; s=dkim2019; t=1575020395;
 bh=zrAETYs9jGviDqcQkaBJZVlKefmCZVDo8s3N3rrsojc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iKyTFto0VsfktS1uDh2o2Fu+hqfxXwiDzoUj3f6MqDwpMBv1fuYz5bW5CDW3+Spo4
 yvxnMDC48eySyb7s1W23s3xfVDEjYoPjoGrh4Vw3t+1G+MgAFA9R2JB4361YY/Lg9A
 nPaXcB1rQHEPJga8Po8yK7NjZodbgAiXJIl7GJTgqFcHmEaKdBcRKZ3g2c/vestdOy
 EbR2HQLChfW/fjnheigORS5OEehZopblbapJDb06mbxB2mUpEiCkXVGSW7jfL5sU5U
 xHxGgZY4ZVgl4MKgVtRW08fjed/BzwLi92sCdW4CTg6Xdllk4lHi+4qJQCxZ6J9Hc4
 59uGK4trQGwNw==
Received: by faui04d.informatik.uni-erlangen.de (Postfix, from userid 66711)
 id AB909AA5157; Fri, 29 Nov 2019 10:39:55 +0100 (CET)
From: Andreas Hellmich <dy26hofu@stud.informatik.uni-erlangen.de>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 2/2] rtl8723bs: Fix line length
Date: Fri, 29 Nov 2019 10:39:41 +0100
Message-Id: <20191129093939.2782-2-dy26hofu@stud.informatik.uni-erlangen.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191129093939.2782-1-dy26hofu@stud.informatik.uni-erlangen.de>
References: <20191129093939.2782-1-dy26hofu@stud.informatik.uni-erlangen.de>
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
Cc: Andreas Hellmich <dy26hofu@stud.informatik.uni-erlangen.de>,
 Annika Knepper <av91obul@stud.informatik.uni-erlangen.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix some line length errors.

Co-developed-by: Annika Knepper <av91obul@stud.informatik.uni-erlangen.de>
Signed-off-by: Annika Knepper <av91obul@stud.informatik.uni-erlangen.de>
Signed-off-by: Andreas Hellmich <dy26hofu@stud.informatik.uni-erlangen.de>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 24 +++++++-------
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    | 10 ++++--
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 32 ++++++++++---------
 3 files changed, 37 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 81062ec3f086..c642825ca8ef 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -207,10 +207,10 @@ static RT_CHANNEL_PLAN_MAP	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
 	{0x02, 0x1F},	/* 0x57, RT_CHANNEL_DOMAIN_FCC1_FCC10 */
 };
 
-static RT_CHANNEL_PLAN_MAP	RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02}; /* use the combination for max channel numbers */
+ /* use the combination for max channel numbers */
+static RT_CHANNEL_PLAN_MAP RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02};
 
-/*
- * Search the @param ch in given @param ch_set
+/* Search the @param ch in given @param ch_set
  * @ch_set: the given channel set
  * @ch: the given channel number
  *
@@ -229,8 +229,7 @@ int rtw_ch_set_search_ch(RT_CHANNEL_INFO *ch_set, const u32 ch)
 	return i;
 }
 
-/*
- * Check the @param ch is fit with setband setting of @param adapter
+/* Check the @param ch is fit with setband setting of @param adapter
  * @adapter: the given adapter
  * @ch: the given channel number
  *
@@ -3356,9 +3355,11 @@ void issue_assocreq(struct adapter *padapter)
 					(!memcmp(pIE->data, WPS_OUI, 4))) {
 				vs_ie_length = pIE->Length;
 				if ((!padapter->registrypriv.wifi_spec) && (!memcmp(pIE->data, WPS_OUI, 4))) {
-					/* Commented by Kurt 20110629 */
-					/* In some older APs, WPS handshake */
-					/* would be fail if we append vender extensions information to AP */
+					/* Commented by Kurt 20110629
+					 * In some older APs, WPS handshake
+					 * would be fail if we append vendor
+					 * extensions information to AP
+					 */
 
 					vs_ie_length = 14;
 				}
@@ -5379,8 +5380,7 @@ static void rtw_mlmeext_disconnect(struct adapter *padapter)
 
 	/* set_opmode_cmd(padapter, infra_client_with_mlme); */
 
-	/*
-	 * For safety, prevent from keeping macid sleep.
+	/* For safety, prevent from keeping macid sleep.
 	 * If we can sure all power mode enter/leave are paired,
 	 * this check can be removed.
 	 * Lucas@20131113
@@ -6385,7 +6385,9 @@ u8 sitesurvey_cmd_hdl(struct adapter *padapter, u8 *pbuf)
 		Save_DM_Func_Flag(padapter);
 		Switch_DM_Func(padapter, DYNAMIC_FUNC_DISABLE, false);
 
-		/* config the initial gain under scanning, need to write the BB registers */
+		/* config the initial gain under scanning, need to write the BB
+		 * registers
+		 */
 		initialgain = 0x1e;
 
 		rtw_hal_set_hwreg(padapter, HW_VAR_INITIAL_GAIN, (u8 *)(&initialgain));
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 106bfd670701..338dd0b7a6eb 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/******************************************************************************
+/*****************************************************************************
  *
  * Copyright(c) 2007 - 2011 Realtek Corporation. All rights reserved.
  *
@@ -82,7 +82,9 @@ static void setIqkMatrix_8723B(
 		/* if (RFPath == ODM_RF_PATH_A) */
 		switch (RFPath) {
 		case ODM_RF_PATH_A:
-			/* write new elements A, C, D to regC80 and regC94, element B is always 0 */
+			/* write new elements A, C, D to regC80 and regC94,
+			 * element B is always 0
+			 */
 			value32 = (ele_D<<22)|((ele_C&0x3F)<<16)|ele_A;
 			PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_XATxIQImbalance, bMaskDWord, value32);
 
@@ -93,7 +95,9 @@ static void setIqkMatrix_8723B(
 			PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_ECCAThreshold, BIT24, value32);
 			break;
 		case ODM_RF_PATH_B:
-			/* write new elements A, C, D to regC88 and regC9C, element B is always 0 */
+			/* write new elements A, C, D to regC88 and regC9C,
+			 * element B is always 0
+			 */
 			value32 = (ele_D<<22)|((ele_C&0x3F)<<16)|ele_A;
 			PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_XBTxIQImbalance, bMaskDWord, value32);
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 06c22ccfb2fd..de8caa6cd418 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3191,22 +3191,26 @@ static void rtl8723b_fill_default_txdesc(
 	if (bmcst)
 		ptxdesc->bmc = 1;
 
-	/*  2009.11.05. tynli_test. Suggested by SD4 Filen for FW LPS. */
-	/*  (1) The sequence number of each non-Qos frame / broadcast / multicast / */
-	/*  mgnt frame should be controlled by Hw because Fw will also send null data */
-	/*  which we cannot control when Fw LPS enable. */
-	/*  --> default enable non-Qos data sequense number. 2010.06.23. by tynli. */
-	/*  (2) Enable HW SEQ control for beacon packet, because we use Hw beacon. */
-	/*  (3) Use HW Qos SEQ to control the seq num of Ext port non-Qos packets. */
-	/*  2010.06.23. Added by tynli. */
+	/* 2009.11.05. tynli_test. Suggested by SD4 Filen for FW LPS.
+	 * (1) The sequence number of each non-Qos frame / broadcast /
+	 * multicast / mgnt frame should be controlled by Hw because Fw
+	 * will also send null data which we cannot control when Fw LPS
+	 * enable.
+	 * --> default enable non-Qos data sequense number. 2010.06.23.
+	 * by tynli.
+	 * (2) Enable HW SEQ control for beacon packet, because we use
+	 * Hw beacon.
+	 * (3) Use HW Qos SEQ to control the seq num of Ext port non-Qos
+	 * packets.
+	 * 2010.06.23. Added by tynli.
+	 */
 	if (!pattrib->qos_en) /*  Hw set sequence number */
 		ptxdesc->en_hwseq = 1; /*  HWSEQ_EN */
 }
 
-/*
- *Description:
+/* Description:
  *
- *Parameters:
+ * Parameters:
  *	pxmitframe	xmitframe
  *	pbuf		where to fill tx desc
  */
@@ -4329,8 +4333,7 @@ void GetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 	}
 }
 
-/*
- *Description:
+/* Description:
  *	Change default setting of specified variable.
  */
 u8 SetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, void *pval)
@@ -4348,8 +4351,7 @@ u8 SetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, v
 	return bResult;
 }
 
-/*
- *Description:
+/* Description:
  *	Query setting of specified variable.
  */
 u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, void *pval)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
