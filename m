Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2D533FB20
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:28:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 303866FA06;
	Wed, 17 Mar 2021 22:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x51T2J6uic_v; Wed, 17 Mar 2021 22:28:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17BFF60636;
	Wed, 17 Mar 2021 22:28:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A971C1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99A9A6F998
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UOywOQN5WdBn for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA08560636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id bf3so4213779edb.6
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Kw9PTdn4gEBCxdOpuPAl1D612ZbuzpgbOmQ9NJV9YtU=;
 b=IJMaXuW0YGyBJqIhmOFW9LJJ9sGDS3/1Vxag45/DPAy7VWaqqHmdP5bFBN6B98ghin
 OIy867F9/aOAKpDfq1wIwkPxwwvUJxiXessTP70bsYyFSAbQYUaqXYGaQSoSJJ7wEdfj
 JXv3J5C/El8gTCt1GeZ6IRMBczpUgtF8yd4bEUknnkLonaN/UQHTp2YcDFIKav/Kc//O
 LIAbcWDZniIq/JFohpy9aAihq3vGwfvQB+wd7cSlwd3nwY2tAfYeA43bd0EtB6viymgH
 SwAypHOlJuYf6d0rgT2TBu3mkJ5Jw6XEBZL3qStQaf+Mtp0gjGBEkVffHopK2AarDXjj
 CGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kw9PTdn4gEBCxdOpuPAl1D612ZbuzpgbOmQ9NJV9YtU=;
 b=J4SSS+NN+22YO/sJeUFvbY8sH6EuZXVqauqHhRrN2BPTCStLOlBHFaHcvLaAhq7AdG
 XZaANJwM/v0PHJFwe6WjIqNTbW2aa7LAx1JljoTC/bI1GfWqk3jFOzScNkG0tZGjl3WF
 vyPTSWpaqkMlk69c7ygsz5t/ydNVC0L2lBEHvHt27za6X5EbSBngRZVIjbDJo1EmNi/E
 3au+v4NIVPY7/wnXSxtgZuXuU8j15KbrX4zeQ2gTSCSnZ9ZFVBazr4ysVU+VmAsJcXa6
 kNkaSYXbEjvbyALvEgOZAnNk3ocoQxFOrCUhLk8Hg8jnuw1JPmwTBV3R6gADv0kTkY9d
 wdmg==
X-Gm-Message-State: AOAM531YfoktLkHQ2m08mwlHGJZGssUAA/IXVqsqcQrctaDkjsZLys7b
 iPwPln3GGbcwFqOZIO6/K1s=
X-Google-Smtp-Source: ABdhPJxPnZDBFHbkijyFR8yg1JNO2tHW/qeBbqOiLVsm3C1F2nJYzUYGaLZGtq35ZY5V2Kut+olSxg==
X-Received: by 2002:a50:ed83:: with SMTP id h3mr46078989edr.140.1616019704936; 
 Wed, 17 Mar 2021 15:21:44 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:44 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 36/43] Staging: rtl8723bs: fix names in odm_DIG.h
Date: Wed, 17 Mar 2021 23:21:23 +0100
Message-Id: <20210317222130.29528-37-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit converts names of structs / enums
in hal/odm_DIG.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c           |  2 +-
 drivers/staging/rtl8723bs/hal/odm.c               |  2 +-
 drivers/staging/rtl8723bs/hal/odm.h               |  2 +-
 drivers/staging/rtl8723bs/hal/odm_DIG.c           | 12 ++++++------
 drivers/staging/rtl8723bs/hal/odm_DIG.h           |  4 ++--
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c       |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c |  2 +-
 7 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 1e66f749fd40..3d2120f0d843 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1170,7 +1170,7 @@ u8 SetHalDefVar(
 			odm->SupportAbility  &= (~DYNAMIC_BB_ANT_DIV);
 		} else if (dm_func == 6) {/* turn on all dynamic func */
 			if (!(odm->SupportAbility  & DYNAMIC_BB_DIG)) {
-				struct DIG_T	*pDigTable = &odm->DM_DigTable;
+				struct dig_t	*pDigTable = &odm->DM_DigTable;
 				pDigTable->CurIGValue = rtw_read8(adapter, 0xc50);
 			}
 			dm->DMFlag |= DYNAMIC_FUNC_BT;
diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index c7607e7d26c5..3e5f6623971b 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -417,7 +417,7 @@ void ODM_DMWatchdog(struct DM_ODM_T *pDM_Odm)
 		odm_DIG(pDM_Odm);
 
 	{
-		struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+		struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 		odm_Adaptivity(pDM_Odm, pDM_DigTable->CurIGValue);
 	}
diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 80683d3fb80f..1dda34ffdad3 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1110,7 +1110,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/* ODM Structure */
 	/*  */
 	struct FAT_T DM_FatTable;
-	struct DIG_T DM_DigTable;
+	struct dig_t DM_DigTable;
 	struct PS_T DM_PSTable;
 	struct dynamic_primary_CCA DM_PriCCA;
 	struct RXHP_T DM_RXHP_Table;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index eca34f45aaa3..aa185d5a3251 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -323,7 +323,7 @@ void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 void ODM_Write_DIG(void *pDM_VOID, u8 CurrentIGI)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	if (pDM_DigTable->bStopDIG) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("Stop Writing IGI\n"));
@@ -363,7 +363,7 @@ void odm_PauseDIG(
 )
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	static bool bPaused;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG() =========>\n"));
@@ -467,7 +467,7 @@ bool odm_DigAbort(void *pDM_VOID)
 void odm_DIGInit(void *pDM_VOID)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	pDM_DigTable->bStopDIG = false;
 	pDM_DigTable->bPSDInProgress = false;
@@ -507,7 +507,7 @@ void odm_DIG(void *pDM_VOID)
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/*  Common parameters */
-	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	bool FirstConnect, FirstDisConnect;
 	u8 DIG_MaxOfMin, DIG_Dynamic_MIN;
@@ -1079,7 +1079,7 @@ void odm_FAThresholdCheck(
 u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	u8 rx_gain_range_min = pDM_DigTable->rx_gain_range_min;
 
@@ -1196,7 +1196,7 @@ void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 void ODM_Write_CCK_CCA_Thres(void *pDM_VOID, u8 CurCCK_CCAThres)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	/* modify by Guo.Mingzhi 2012-01-03 */
 	if (pDM_DigTable->CurCCK_CCAThres != CurCCK_CCAThres)
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.h b/drivers/staging/rtl8723bs/hal/odm_DIG.h
index 5a1900d1e8d1..20d4b88da9ff 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.h
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.h
@@ -8,7 +8,7 @@
 #ifndef __ODMDIG_H__
 #define __ODMDIG_H__
 
-struct DIG_T { /* _Dynamic_Initial_Gain_Threshold_ */
+struct dig_t { /* _Dynamic_Initial_Gain_Threshold_ */
 	bool bStopDIG;
 	bool bPSDInProgress;
 
@@ -77,7 +77,7 @@ struct  false_ALARM_STATISTICS {
 	u32 Cnt_BW_LSC; /* Gary */
 };
 
-enum DM_DIG_OP_E { /* tag_Dynamic_Init_Gain_Operation_Type_Definition */
+enum dm_dig_op_e { /* tag_Dynamic_Init_Gain_Operation_Type_Definition */
 	DIG_TYPE_THRESH_HIGH = 0,
 	DIG_TYPE_THRESH_LOW = 1,
 	DIG_TYPE_BACKOFF = 2,
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index a584615556d4..f851efaadae5 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -227,7 +227,7 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
-	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct sta_priv *pstapriv = &Adapter->stapriv;
 	struct sta_info *psta = NULL;
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index e0b5a608ec97..29894252c73c 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4047,7 +4047,7 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 
 	case HW_VAR_INITIAL_GAIN:
 		{
-			struct DIG_T *pDigTable = &pHalData->odmpriv.DM_DigTable;
+			struct dig_t *pDigTable = &pHalData->odmpriv.DM_DigTable;
 			u32 rx_gain = *(u32 *)val;
 
 			if (rx_gain == 0xff) {/* restore rx gain */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
