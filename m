Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1DB33FB29
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:29:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B15964327F;
	Wed, 17 Mar 2021 22:29:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bn9siQA6-Lea; Wed, 17 Mar 2021 22:29:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4D82430A8;
	Wed, 17 Mar 2021 22:29:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68F0E1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EDF66F998
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nkKghY1NnDEM for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22C5960636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:50 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id u5so819256ejn.8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=+MUP/ZRmisj+YKI4euIxsszcsZSczyZRMbPt7jGr0aM=;
 b=poqFBDWQp5FREBcFG85uCa/x7GX4xTd+gTid4UmrRXGNo3HMunyYJOZzPmcUmVpfWt
 dKQdM58UugwUBDdRZU3r6AIp3gn7WtHLHcjqMMY5ZUmyIKF8bTVK//9zf0l2Nr7gTs9Y
 ncldWeNpqey5DB6HEzWIqVqhdawnA/hfB4echSuzDDdeGgGpsjSdH1kMac/SEXazvg75
 DwtJ+2i6CaiXmpF2axD9sEPIXwV8C9KNo4/Ky+HRZm2PYGoWylSALHV3EX+jiAIBUAfk
 kgRosEPXznBqywXgKyXok0OlDeeXVwW7qPwuLm0dGB3RkJYKOe6Eykt5OZxnz4IAuvmL
 N6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+MUP/ZRmisj+YKI4euIxsszcsZSczyZRMbPt7jGr0aM=;
 b=Oh6QPvLnVfFMNKpTiAR0ah9WbJ+hfPDxY/CdLq+lbu3I3FrnChBCoKnXR8/bfnWT8G
 k1CMtqfMGNrdQO2Qtm3DjCAyzgZGYRdPi1gjDZdp/+pdUkrxIJZDAqBTx4tFGXwCelsl
 TlL4fjXaAWMiQI/kN405Lgm4R1duVuH/jC0bECMn1rfp5qll9524mEhzEI+TB+M0Ev2r
 kP/LsyV3Q6VL851n/utG1mPi4yLnuEEKRWkEjl61FlJ9Q7SvgnU1ABD+/uRGXDmeNm/s
 3dYLjgWgT8v+3EsUaxA/Q1XR1R5TNO7QTQzk8TUyuhxDwX60RrV5aIj68xlRpPNZ94sk
 sZGQ==
X-Gm-Message-State: AOAM531L6GJuHUMVs6eNsKrsbehCg9J1fmvCan5cGwW18b0Aw0GpNwVr
 jpUuyQhcD9JwWfP0d79sroE=
X-Google-Smtp-Source: ABdhPJweEnBOye2+FbUgyPw9Mom7h/3K5ICmM10mOHNdTdf9Wxk/inzIoipX03Xe0eNc8q+q2O5MBQ==
X-Received: by 2002:a17:906:d787:: with SMTP id
 pj7mr36961699ejb.257.1616019708107; 
 Wed, 17 Mar 2021 15:21:48 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:47 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 40/43] Staging: rtl8723bs: fix names in odm.h
Date: Wed, 17 Mar 2021 23:21:27 +0100
Message-Id: <20210317222130.29528-41-marcocesati@gmail.com>
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
in hal/odm.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_odm.c      |   6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_BB.c  |  10 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_BB.h  |   6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_MAC.c |   6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_MAC.h |   2 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_RF.c  |  12 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_RF.h  |   6 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.c      |   6 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.h      |  12 +-
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    |  52 +++----
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.h    |   8 +-
 drivers/staging/rtl8723bs/hal/hal_com.c       |  10 +-
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    |   6 +-
 drivers/staging/rtl8723bs/hal/odm.c           | 100 ++++++-------
 drivers/staging/rtl8723bs/hal/odm.h           | 140 +++++++++---------
 .../staging/rtl8723bs/hal/odm_CfoTracking.c   |  16 +-
 drivers/staging/rtl8723bs/hal/odm_DIG.c       |  40 ++---
 .../rtl8723bs/hal/odm_DynamicBBPowerSaving.c  |   4 +-
 .../rtl8723bs/hal/odm_DynamicTxPower.c        |   2 +-
 .../rtl8723bs/hal/odm_EdcaTurboCheck.c        |   6 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |  18 +--
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h  |  14 +-
 .../staging/rtl8723bs/hal/odm_NoiseMonitor.c  |   2 +-
 drivers/staging/rtl8723bs/hal/odm_PathDiv.c   |   4 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.c        |  16 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.h        |  16 +-
 drivers/staging/rtl8723bs/hal/odm_debug.c     |   2 +-
 drivers/staging/rtl8723bs/hal/odm_debug.h     |   2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  10 +-
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   |   4 +-
 drivers/staging/rtl8723bs/include/hal_data.h  |   2 +-
 31 files changed, 270 insertions(+), 270 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_odm.c b/drivers/staging/rtl8723bs/core/rtw_odm.c
index 87fed69e64d7..53f7cc0444ba 100644
--- a/drivers/staging/rtl8723bs/core/rtw_odm.c
+++ b/drivers/staging/rtl8723bs/core/rtw_odm.c
@@ -152,7 +152,7 @@ inline void rtw_odm_ability_set(struct adapter *adapter, u32 ability)
 void rtw_odm_adaptivity_parm_msg(void *sel, struct adapter *adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(adapter);
-	struct DM_ODM_T *odm = &pHalData->odmpriv;
+	struct dm_odm_t *odm = &pHalData->odmpriv;
 
 	DBG_871X_SEL_NL(sel, "%10s %16s %8s %10s %11s %14s\n",
 			"TH_L2H_ini", "TH_EDCCA_HL_diff", "IGI_Base",
@@ -173,7 +173,7 @@ void rtw_odm_adaptivity_parm_set(struct adapter *adapter, s8 TH_L2H_ini,
 				 u8 IGI_LowerBound)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(adapter);
-	struct DM_ODM_T *odm = &pHalData->odmpriv;
+	struct dm_odm_t *odm = &pHalData->odmpriv;
 
 	odm->TH_L2H_ini = TH_L2H_ini;
 	odm->TH_EDCCA_HL_diff = TH_EDCCA_HL_diff;
@@ -186,7 +186,7 @@ void rtw_odm_adaptivity_parm_set(struct adapter *adapter, s8 TH_L2H_ini,
 void rtw_odm_get_perpkt_rssi(void *sel, struct adapter *adapter)
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	struct DM_ODM_T *odm = &hal_data->odmpriv;
+	struct dm_odm_t *odm = &hal_data->odmpriv;
 
 	DBG_871X_SEL_NL(sel, "RxRate = %s, RSSI_A = %d(%%), RSSI_B = %d(%%)\n",
 			HDATA_RATE(odm->RxRate), odm->RSSI_A, odm->RSSI_B);
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
index 4faa9038417d..016d257b90a0 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	struct DM_ODM_T *pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct dm_odm_t *pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -112,7 +112,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	struct DM_ODM_T *pDM_Odm, const u32  Condition1, const u32 Condition2
+	struct dm_odm_t *pDM_Odm, const u32  Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -257,7 +257,7 @@ static u32 Array_MP_8723B_AGC_TAB[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_AGC_TAB(struct DM_ODM_T *pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_AGC_TAB(struct dm_odm_t *pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_AGC_TAB);
@@ -526,7 +526,7 @@ static u32 Array_MP_8723B_PHY_REG[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_PHY_REG(struct DM_ODM_T *pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_PHY_REG(struct dm_odm_t *pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_PHY_REG);
@@ -606,7 +606,7 @@ static u32 Array_MP_8723B_PHY_REG_PG[] = {
 	0, 0, 0, 0x00000e14, 0xffffffff, 0x26303436
 };
 
-void ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(struct DM_ODM_T *pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(struct dm_odm_t *pDM_Odm)
 {
 	u32 i = 0;
 	u32 *Array = Array_MP_8723B_PHY_REG_PG;
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
index 1cb572604206..186007ce57d5 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
@@ -15,7 +15,7 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_AGC_TAB(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *pDM_Odm
+	struct dm_odm_t *pDM_Odm
 );
 
 /******************************************************************************
@@ -24,7 +24,7 @@ ODM_ReadAndConfig_MP_8723B_AGC_TAB(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_PHY_REG(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *pDM_Odm
+	struct dm_odm_t *pDM_Odm
 );
 
 /******************************************************************************
@@ -33,7 +33,7 @@ ODM_ReadAndConfig_MP_8723B_PHY_REG(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *pDM_Odm
+	struct dm_odm_t *pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_PHY_REG_PG(void);
 
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
index 51d7bf3e6d83..677bcfa10b0d 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	struct DM_ODM_T *pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct dm_odm_t *pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -111,7 +111,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	struct DM_ODM_T *pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct dm_odm_t *pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -228,7 +228,7 @@ static u32 Array_MP_8723B_MAC_REG[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_MAC_REG(struct DM_ODM_T *pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_MAC_REG(struct dm_odm_t *pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_MAC_REG);
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
index 4ff8b7c28999..50429c159fee 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
@@ -15,6 +15,6 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_MAC_REG(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *pDM_Odm
+	struct dm_odm_t *pDM_Odm
 );
 #endif
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
index 5f78a64ca737..2c450c1ce7e7 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	struct DM_ODM_T *pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct dm_odm_t *pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -121,7 +121,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	struct DM_ODM_T *pDM_Odm, const u32  Condition1, const u32 Condition2
+	struct dm_odm_t *pDM_Odm, const u32  Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -259,7 +259,7 @@ static u32 Array_MP_8723B_RadioA[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_RadioA(struct DM_ODM_T *pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_RadioA(struct dm_odm_t *pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_RadioA);
@@ -420,9 +420,9 @@ static u8 gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B[] = {
 	8,  8,  9,  9,  9, 10, 10, 11, 11, 12, 12, 13, 14, 15
 };
 
-void ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(struct DM_ODM_T *pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(struct dm_odm_t *pDM_Odm)
 {
-	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
+	struct odm_rf_cal_t *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 	ODM_RT_TRACE(
 		pDM_Odm,
@@ -755,7 +755,7 @@ static u8 *Array_MP_8723B_TXPWR_LMT[] = {
 	"MKK", "2.4G", "40M", "HT", "2T", "14", "63"
 };
 
-void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(struct DM_ODM_T *pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(struct dm_odm_t *pDM_Odm)
 {
 	u32 i = 0;
 	u8 **Array = Array_MP_8723B_TXPWR_LMT;
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
index 1bb266f34e7d..acf5679d188c 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
@@ -15,7 +15,7 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_RadioA(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *pDM_Odm
+	struct dm_odm_t *pDM_Odm
 );
 
 /******************************************************************************
@@ -24,7 +24,7 @@ ODM_ReadAndConfig_MP_8723B_RadioA(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *pDM_Odm
+	struct dm_odm_t *pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_TxPowerTrack_SDIO(void);
 
@@ -34,7 +34,7 @@ u32 ODM_GetVersion_MP_8723B_TxPowerTrack_SDIO(void);
 
 void
 ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *pDM_Odm
+	struct dm_odm_t *pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_TXPWR_LMT(void);
 
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index 9599c45997bb..14426151faae 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -23,7 +23,7 @@
 	} while (0)
 
 
-void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct txpwrtrack_cfg *pConfig)
+void ConfigureTxpowerTrack(struct dm_odm_t *pDM_Odm, struct txpwrtrack_cfg *pConfig)
 {
 	ConfigureTxpowerTrack_8723B(pConfig);
 }
@@ -36,7 +36,7 @@ void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct txpwrtrack_cfg *pCon
 /*  NOTE: If Tx BB swing or Tx scaling is varified during run-time, still */
 /*        need to call this function. */
 /*  */
-void ODM_ClearTxPowerTrackingState(struct DM_ODM_T *pDM_Odm)
+void ODM_ClearTxPowerTrackingState(struct dm_odm_t *pDM_Odm)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(pDM_Odm->Adapter);
 	u8 p = 0;
@@ -74,7 +74,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 {
 
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	u8 ThermalValue = 0, delta, delta_LCK, delta_IQK, p = 0, i = 0;
 	u8 ThermalValue_AVG_count = 0;
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.h b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
index 5a07f3c14d80..d7eda508d04d 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
@@ -19,10 +19,10 @@ enum pwrtrack_method {
 	MIX_MODE
 };
 
-typedef void (*FuncSetPwr)(struct DM_ODM_T *, enum pwrtrack_method, u8, u8);
-typedef void (*FuncIQK)(struct DM_ODM_T *, u8, u8, u8);
-typedef void (*FuncLCK)(struct DM_ODM_T *);
-typedef void (*FuncSwing)(struct DM_ODM_T *, u8 **, u8 **, u8 **, u8 **);
+typedef void (*FuncSetPwr)(struct dm_odm_t *, enum pwrtrack_method, u8, u8);
+typedef void (*FuncIQK)(struct dm_odm_t *, u8, u8, u8);
+typedef void (*FuncLCK)(struct dm_odm_t *);
+typedef void (*FuncSwing)(struct dm_odm_t *, u8 **, u8 **, u8 **, u8 **);
 
 struct txpwrtrack_cfg {
 	u8 SwingTableSize_CCK;
@@ -37,10 +37,10 @@ struct txpwrtrack_cfg {
 	FuncSwing GetDeltaSwingTable;
 };
 
-void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct txpwrtrack_cfg *pConfig);
+void ConfigureTxpowerTrack(struct dm_odm_t *pDM_Odm, struct txpwrtrack_cfg *pConfig);
 
 
-void ODM_ClearTxPowerTrackingState(struct DM_ODM_T *pDM_Odm);
+void ODM_ClearTxPowerTrackingState(struct dm_odm_t *pDM_Odm);
 
 void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter);
 
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 30cbe125eb4c..12f0e3601531 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -54,7 +54,7 @@ static u8 DeltaSwingTableIdx_2GA_P_8188E[] = {
 
 
 static void setIqkMatrix_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u8 OFDM_index,
 	u8 RFPath,
 	s32 IqkResult_X,
@@ -135,7 +135,7 @@ static void setIqkMatrix_8723B(
 }
 
 
-static void setCCKFilterCoefficient(struct DM_ODM_T *pDM_Odm, u8 CCKSwingIndex)
+static void setCCKFilterCoefficient(struct dm_odm_t *pDM_Odm, u8 CCKSwingIndex)
 {
 	if (!pDM_Odm->RFCalibrateInfo.bCCKinCH14) {
 		rtw_write8(pDM_Odm->Adapter, 0xa22, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][0]);
@@ -159,7 +159,7 @@ static void setCCKFilterCoefficient(struct DM_ODM_T *pDM_Odm, u8 CCKSwingIndex)
 }
 
 void DoIQK_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u8 DeltaThermalIndex,
 	u8 ThermalValue,
 	u8 Threshold
@@ -185,7 +185,7 @@ void DoIQK_8723B(
  *
  *---------------------------------------------------------------------------*/
 void ODM_TxPwrTrackSetPwr_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	enum pwrtrack_method Method,
 	u8 RFPath,
 	u8 ChannelMappedIndex
@@ -360,7 +360,7 @@ void ODM_TxPwrTrackSetPwr_8723B(
 }
 
 static void GetDeltaSwingTable_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u8 **TemperatureUP_A,
 	u8 **TemperatureDOWN_A,
 	u8 **TemperatureUP_B,
@@ -368,7 +368,7 @@ static void GetDeltaSwingTable_8723B(
 )
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
-	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
+	struct odm_rf_cal_t *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	u16 rate = *(pDM_Odm->pForcedDataRate);
 	u8 channel = pHalData->CurrentChannel;
@@ -437,7 +437,7 @@ static u8 phy_PathA_IQK_8723B(
 	u8 result = 0x00;
 
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	/*  Save RF Path */
 	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord);
@@ -548,7 +548,7 @@ static u8 phy_PathA_RxIQK8723B(
 	u32 regEAC, regE94, regE9C, regEA4, u4tmp, tmp, Path_SEL_BB;
 	u8 result = 0x00;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 /* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A Rx IQK!\n")); */
 
@@ -762,7 +762,7 @@ static u8 phy_PathB_IQK_8723B(struct adapter *padapter)
 	u32 regEAC, regE94, regE9C, tmp, Path_SEL_BB/*, regEC4, regECC, Path_SEL_BB*/;
 	u8 result = 0x00;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path B IQK!\n"));
 
@@ -869,7 +869,7 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	u32 regE94, regE9C, regEA4, regEAC, u4tmp, tmp, Path_SEL_BB;
 	u8 result = 0x00;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 /* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B Rx IQK!\n")); */
 
@@ -1092,9 +1092,9 @@ static void _PHY_PathAFillIQKMatrix8723B(
 	u32 Oldval_0, X, TX0_A, reg;
 	s32 Y, TX0_C;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
-	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
+	struct odm_rf_cal_t *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path A IQ Calibration %s !\n", (bIQKOK)?"Success":"Failed"));
 
@@ -1172,9 +1172,9 @@ static void _PHY_PathBFillIQKMatrix8723B(
 	u32 Oldval_1, X, TX1_A, reg;
 	s32	Y, TX1_C;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
-	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
+	struct odm_rf_cal_t *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B IQ Calibration %s !\n", (bIQKOK)?"Success":"Failed"));
 
@@ -1247,10 +1247,10 @@ static void _PHY_PathBFillIQKMatrix8723B(
 /*  */
 /*  MP Already declare in odm.c */
 
-void ODM_SetIQCbyRFpath(struct DM_ODM_T *pDM_Odm, u32 RFpath)
+void ODM_SetIQCbyRFpath(struct dm_odm_t *pDM_Odm, u32 RFpath)
 {
 
-	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
+	struct odm_rf_cal_t *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 	if (
 		(pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC80][VAL] != 0x0) &&
@@ -1292,7 +1292,7 @@ static void _PHY_SaveADDARegisters8723B(
 {
 	u32 i;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	if (!ODM_CheckPowerStatus(padapter))
 		return;
@@ -1310,7 +1310,7 @@ static void _PHY_SaveMACRegisters8723B(
 {
 	u32 i;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save MAC parameters.\n"));
 	for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++) {
@@ -1330,7 +1330,7 @@ static void _PHY_ReloadADDARegisters8723B(
 {
 	u32 i;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Reload ADDA power saving parameters !\n"));
 	for (i = 0 ; i < RegiesterNum; i++) {
@@ -1360,7 +1360,7 @@ static void _PHY_PathADDAOn8723B(
 	u32 pathOn;
 	u32 i;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("ADDA ON.\n"));
 
@@ -1384,7 +1384,7 @@ static void _PHY_MACSettingCalibration8723B(
 {
 	u32 i = 0;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("MAC settings for Calibration.\n"));
 
@@ -1489,7 +1489,7 @@ static void phy_IQCalibrate_8723B(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	u32 i;
 	u8 PathAOK, PathBOK;
@@ -1697,7 +1697,7 @@ static void phy_IQCalibrate_8723B(
 }
 
 
-static void phy_LCCalibrate_8723B(struct DM_ODM_T *pDM_Odm, bool is2T)
+static void phy_LCCalibrate_8723B(struct dm_odm_t *pDM_Odm, bool is2T)
 {
 	u8 tmpReg;
 	u32 RF_Amode = 0, RF_Bmode = 0, LC_Cal;
@@ -1784,7 +1784,7 @@ void PHY_IQCalibrate_8723B(
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	s32 result[4][8];	/* last is final result */
 	u8 i, final_candidate;
@@ -1830,7 +1830,7 @@ void PHY_IQCalibrate_8723B(
 	if (bRestore) {
 		u32 offset, data;
 		u8 path, bResult = SUCCESS;
-		struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
+		struct odm_rf_cal_t *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 		path = (PHY_QueryBBReg(pDM_Odm->Adapter, rS0S1_PathSwitch, bMaskByte0) == 0x00) ? ODM_RF_PATH_A : ODM_RF_PATH_B;
 
@@ -2038,7 +2038,7 @@ void PHY_IQCalibrate_8723B(
 }
 
 
-void PHY_LCCalibrate_8723B(struct DM_ODM_T *pDM_Odm)
+void PHY_LCCalibrate_8723B(struct dm_odm_t *pDM_Odm)
 {
 	bool		bSingleTone = false, bCarrierSuppression = false;
 	u32 		timeout = 2000, timecount = 0;
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
index 7b009b11540c..775095ad0921 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
@@ -19,14 +19,14 @@
 void ConfigureTxpowerTrack_8723B(struct txpwrtrack_cfg *pConfig);
 
 void DoIQK_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u8 DeltaThermalIndex,
 	u8 ThermalValue,
 	u8 Threshold
 );
 
 void ODM_TxPwrTrackSetPwr_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	enum pwrtrack_method Method,
 	u8 RFPath,
 	u8 ChannelMappedIndex
@@ -41,12 +41,12 @@ void PHY_IQCalibrate_8723B(
 	u8 RF_Path
 );
 
-void ODM_SetIQCbyRFpath(struct DM_ODM_T *pDM_Odm, u32 RFpath);
+void ODM_SetIQCbyRFpath(struct dm_odm_t *pDM_Odm, u32 RFpath);
 
 /*  */
 /*  LC calibrate */
 /*  */
-void PHY_LCCalibrate_8723B(struct DM_ODM_T *pDM_Odm);
+void PHY_LCCalibrate_8723B(struct dm_odm_t *pDM_Odm);
 
 /*  */
 /*  AP calibrate */
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 3d2120f0d843..98a363698843 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1006,7 +1006,7 @@ void hw_var_port_switch(struct adapter *adapter)
 void SetHwReg(struct adapter *adapter, u8 variable, u8 *val)
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	struct DM_ODM_T *odm = &(hal_data->odmpriv);
+	struct dm_odm_t *odm = &(hal_data->odmpriv);
 
 	switch (variable) {
 	case HW_VAR_PORT_SWITCH:
@@ -1086,7 +1086,7 @@ void SetHwReg(struct adapter *adapter, u8 variable, u8 *val)
 void GetHwReg(struct adapter *adapter, u8 variable, u8 *val)
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	struct DM_ODM_T *odm = &(hal_data->odmpriv);
+	struct dm_odm_t *odm = &(hal_data->odmpriv);
 
 	switch (variable) {
 	case HW_VAR_BASIC_RATE:
@@ -1117,7 +1117,7 @@ u8 SetHalDefVar(
 )
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	struct DM_ODM_T *odm = &(hal_data->odmpriv);
+	struct dm_odm_t *odm = &(hal_data->odmpriv);
 	u8 bResult = _SUCCESS;
 
 	switch (variable) {
@@ -1202,7 +1202,7 @@ u8 GetHalDefVar(
 )
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	struct DM_ODM_T *odm = &(hal_data->odmpriv);
+	struct dm_odm_t *odm = &(hal_data->odmpriv);
 	u8 bResult = _SUCCESS;
 
 	switch (variable) {
@@ -1273,7 +1273,7 @@ void SetHalODMVar(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T *podmpriv = &pHalData->odmpriv;
+	struct dm_odm_t *podmpriv = &pHalData->odmpriv;
 	/* _irqL irqL; */
 	switch (eVariable) {
 	case HAL_ODM_STA_INFO:
diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 67db3c60b518..9d7e0211a457 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -270,7 +270,7 @@ u8 PHY_GetRateSectionIndexOfTxPowerByRate(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 	u8	index = 0;
 
 	if (pDM_Odm->PhyRegPgVersion == 0) {
@@ -795,7 +795,7 @@ void PHY_StoreTxPowerByRate(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	if (pDM_Odm->PhyRegPgVersion > 0)
 		PHY_StoreTxPowerByRateNew(padapter, Band, RfPath, TxNum, RegAddr, BitMask, Data);
@@ -1188,7 +1188,7 @@ u8 PHY_GetTxPowerIndexBase(
 s8 PHY_GetTxPowerTrackingOffset(struct adapter *padapter, u8 RFPath, u8 Rate)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 	s8 offset = 0;
 
 	if (pDM_Odm->RFCalibrateInfo.TxPowerTrackControl  == false)
diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index 3e5f6623971b..931c8eeb09bd 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -282,13 +282,13 @@ u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE] = {
 /*  Local Function predefine. */
 
 /* START------------COMMON INFO RELATED--------------- */
-void odm_CommonInfoSelfInit(struct DM_ODM_T *pDM_Odm);
+void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm);
 
-void odm_CommonInfoSelfUpdate(struct DM_ODM_T *pDM_Odm);
+void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm);
 
-void odm_CmnInfoInit_Debug(struct DM_ODM_T *pDM_Odm);
+void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm);
 
-void odm_BasicDbgMessage(struct DM_ODM_T *pDM_Odm);
+void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm);
 
 /* END------------COMMON INFO RELATED--------------- */
 
@@ -302,17 +302,17 @@ void odm_BasicDbgMessage(struct DM_ODM_T *pDM_Odm);
 /* Remove BB power Saving by YuChen */
 /* END---------BB POWER SAVE----------------------- */
 
-void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T *pDM_Odm);
+void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm);
 
 /* Remove by YuChen */
 
-void odm_RSSIMonitorInit(struct DM_ODM_T *pDM_Odm);
+void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm);
 
-void odm_RSSIMonitorCheckCE(struct DM_ODM_T *pDM_Odm);
+void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm);
 
-void odm_RSSIMonitorCheck(struct DM_ODM_T *pDM_Odm);
+void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm);
 
-void odm_SwAntDetectInit(struct DM_ODM_T *pDM_Odm);
+void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm);
 
 void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
 
@@ -320,14 +320,14 @@ void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
 
 void odm_GlobalAdapterCheck(void);
 
-void odm_RefreshRateAdaptiveMask(struct DM_ODM_T *pDM_Odm);
+void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm);
 
-void ODM_TXPowerTrackingCheck(struct DM_ODM_T *pDM_Odm);
+void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm);
 
-void odm_RateAdaptiveMaskInit(struct DM_ODM_T *pDM_Odm);
+void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm);
 
 
-void odm_TXPowerTrackingInit(struct DM_ODM_T *pDM_Odm);
+void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm);
 
 /* Remove Edca by Yu Chen */
 
@@ -335,10 +335,10 @@ void odm_TXPowerTrackingInit(struct DM_ODM_T *pDM_Odm);
 #define RxDefaultAnt1		0x65a9
 #define RxDefaultAnt2		0x569a
 
-void odm_InitHybridAntDiv(struct DM_ODM_T *pDM_Odm);
+void odm_InitHybridAntDiv(struct dm_odm_t *pDM_Odm);
 
 bool odm_StaDefAntSel(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u32 OFDM_Ant1_Cnt,
 	u32 OFDM_Ant2_Cnt,
 	u32 CCK_Ant1_Cnt,
@@ -346,11 +346,11 @@ bool odm_StaDefAntSel(
 	u8 *pDefAnt
 );
 
-void odm_SetRxIdleAnt(struct DM_ODM_T *pDM_Odm, u8 Ant, bool bDualPath);
+void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm, u8 Ant, bool bDualPath);
 
 
 
-void odm_HwAntDiv(struct DM_ODM_T *pDM_Odm);
+void odm_HwAntDiv(struct dm_odm_t *pDM_Odm);
 
 
 /*  */
@@ -360,7 +360,7 @@ void odm_HwAntDiv(struct DM_ODM_T *pDM_Odm);
 /*  */
 /*  2011/09/21 MH Add to describe different team necessary resource allocate?? */
 /*  */
-void ODM_DMInit(struct DM_ODM_T *pDM_Odm)
+void ODM_DMInit(struct dm_odm_t *pDM_Odm)
 {
 
 	odm_CommonInfoSelfInit(pDM_Odm);
@@ -390,7 +390,7 @@ void ODM_DMInit(struct DM_ODM_T *pDM_Odm)
 /*  You can not add any dummy function here, be care, you can only use DM structure */
 /*  to perform any new ODM_DM. */
 /*  */
-void ODM_DMWatchdog(struct DM_ODM_T *pDM_Odm)
+void ODM_DMWatchdog(struct dm_odm_t *pDM_Odm)
 {
 	odm_CommonInfoSelfUpdate(pDM_Odm);
 	odm_BasicDbgMessage(pDM_Odm);
@@ -445,7 +445,7 @@ void ODM_DMWatchdog(struct DM_ODM_T *pDM_Odm)
 /*  */
 /*  Init /.. Fixed HW value. Only init time. */
 /*  */
-void ODM_CmnInfoInit(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value)
+void ODM_CmnInfoInit(struct dm_odm_t *pDM_Odm, enum odm_cmninfo_e CmnInfo, u32 Value)
 {
 	/*  */
 	/*  This section is used for init value */
@@ -519,16 +519,16 @@ void ODM_CmnInfoInit(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 V
 		break;
 
 	case ODM_CMNINFO_GPA:
-		pDM_Odm->TypeGPA = (enum ODM_TYPE_GPA_E)Value;
+		pDM_Odm->TypeGPA = (enum odm_type_gpa_e)Value;
 		break;
 	case ODM_CMNINFO_APA:
-		pDM_Odm->TypeAPA = (enum ODM_TYPE_APA_E)Value;
+		pDM_Odm->TypeAPA = (enum odm_type_apa_e)Value;
 		break;
 	case ODM_CMNINFO_GLNA:
-		pDM_Odm->TypeGLNA = (enum ODM_TYPE_GLNA_E)Value;
+		pDM_Odm->TypeGLNA = (enum odm_type_glna_e)Value;
 		break;
 	case ODM_CMNINFO_ALNA:
-		pDM_Odm->TypeALNA = (enum ODM_TYPE_ALNA_E)Value;
+		pDM_Odm->TypeALNA = (enum odm_type_alna_e)Value;
 		break;
 
 	case ODM_CMNINFO_EXT_TRSW:
@@ -557,7 +557,7 @@ void ODM_CmnInfoInit(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 V
 }
 
 
-void ODM_CmnInfoHook(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue)
+void ODM_CmnInfoHook(struct dm_odm_t *pDM_Odm, enum odm_cmninfo_e CmnInfo, void *pValue)
 {
 	/*  */
 	/*  Hook call by reference pointer. */
@@ -686,8 +686,8 @@ void ODM_CmnInfoHook(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void
 
 
 void ODM_CmnInfoPtrArrayHook(
-	struct DM_ODM_T *pDM_Odm,
-	enum ODM_CMNINFO_E CmnInfo,
+	struct dm_odm_t *pDM_Odm,
+	enum odm_cmninfo_e CmnInfo,
 	u16 Index,
 	void *pValue
 )
@@ -714,7 +714,7 @@ void ODM_CmnInfoPtrArrayHook(
 /*  */
 /*  Update Band/CHannel/.. The values are dynamic but non-per-packet. */
 /*  */
-void ODM_CmnInfoUpdate(struct DM_ODM_T *pDM_Odm, u32 CmnInfo, u64 Value)
+void ODM_CmnInfoUpdate(struct dm_odm_t *pDM_Odm, u32 CmnInfo, u64 Value)
 {
 	/*  */
 	/*  This init variable may be changed in run time. */
@@ -828,7 +828,7 @@ void ODM_CmnInfoUpdate(struct DM_ODM_T *pDM_Odm, u32 CmnInfo, u64 Value)
 
 }
 
-void odm_CommonInfoSelfInit(struct DM_ODM_T *pDM_Odm)
+void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm)
 {
 	pDM_Odm->bCckHighPower = (bool) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(CCK_RPT_FORMAT, pDM_Odm), ODM_BIT(CCK_RPT_FORMAT, pDM_Odm));
 	pDM_Odm->RFPathRxEnable = (u8) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(BB_RX_PATH, pDM_Odm), ODM_BIT(BB_RX_PATH, pDM_Odm));
@@ -838,7 +838,7 @@ void odm_CommonInfoSelfInit(struct DM_ODM_T *pDM_Odm)
 	pDM_Odm->TxRate = 0xFF;
 }
 
-void odm_CommonInfoSelfUpdate(struct DM_ODM_T *pDM_Odm)
+void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm)
 {
 	u8 EntryCnt = 0;
 	u8 i;
@@ -864,7 +864,7 @@ void odm_CommonInfoSelfUpdate(struct DM_ODM_T *pDM_Odm)
 		pDM_Odm->bOneEntryOnly = false;
 }
 
-void odm_CmnInfoInit_Debug(struct DM_ODM_T *pDM_Odm)
+void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoInit_Debug ==>\n"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportPlatform =%d\n", pDM_Odm->SupportPlatform));
@@ -885,7 +885,7 @@ void odm_CmnInfoInit_Debug(struct DM_ODM_T *pDM_Odm)
 
 }
 
-void odm_BasicDbgMessage(struct DM_ODM_T *pDM_Odm)
+void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_BasicDbgMsg ==>\n"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bLinked = %d, RSSI_Min = %d,\n",
@@ -932,9 +932,9 @@ void odm_BasicDbgMessage(struct DM_ODM_T *pDM_Odm)
 /* 3 Rate Adaptive */
 /* 3 ============================================================ */
 
-void odm_RateAdaptiveMaskInit(struct DM_ODM_T *pDM_Odm)
+void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm)
 {
-	struct ODM_RATE_ADAPTIVE *pOdmRA = &pDM_Odm->RateAdaptive;
+	struct odm_rate_adaptive *pOdmRA = &pDM_Odm->RateAdaptive;
 
 	pOdmRA->Type = DM_Type_ByDriver;
 	if (pOdmRA->Type == DM_Type_ByDriver)
@@ -950,7 +950,7 @@ void odm_RateAdaptiveMaskInit(struct DM_ODM_T *pDM_Odm)
 }
 
 u32 ODM_Get_Rate_Bitmap(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u32 macid,
 	u32 ra_mask,
 	u8 rssi_level
@@ -1080,7 +1080,7 @@ u32 ODM_Get_Rate_Bitmap(
 *
 * --------------------------------------------------------------------------
 */
-void odm_RefreshRateAdaptiveMask(struct DM_ODM_T *pDM_Odm)
+void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm)
 {
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask()---------->\n"));
@@ -1091,7 +1091,7 @@ void odm_RefreshRateAdaptiveMask(struct DM_ODM_T *pDM_Odm)
 	odm_RefreshRateAdaptiveMaskCE(pDM_Odm);
 }
 
-void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T *pDM_Odm)
+void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm)
 {
 	u8 i;
 	struct adapter *padapter =  pDM_Odm->Adapter;
@@ -1128,13 +1128,13 @@ void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T *pDM_Odm)
 /*  Return Value: bool */
 /*  - true: RATRState is changed. */
 bool ODM_RAStateCheck(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	s32 RSSI,
 	bool bForceUpdate,
 	u8 *pRATRState
 )
 {
-	struct ODM_RATE_ADAPTIVE *pRA = &pDM_Odm->RateAdaptive;
+	struct odm_rate_adaptive *pRA = &pDM_Odm->RateAdaptive;
 	const u8 GoUpGap = 5;
 	u8 HighRSSIThreshForRA = pRA->HighRSSIThresh;
 	u8 LowRSSIThreshForRA = pRA->LowRSSIThresh;
@@ -1193,15 +1193,15 @@ bool ODM_RAStateCheck(
 /* 3 RSSI Monitor */
 /* 3 ============================================================ */
 
-void odm_RSSIMonitorInit(struct DM_ODM_T *pDM_Odm)
+void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm)
 {
-	struct RA_T *pRA_Table = &pDM_Odm->DM_RA_Table;
+	struct ra_t *pRA_Table = &pDM_Odm->DM_RA_Table;
 
 	pRA_Table->firstconnect = false;
 
 }
 
-void odm_RSSIMonitorCheck(struct DM_ODM_T *pDM_Odm)
+void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm)
 {
 	if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
 		return;
@@ -1214,7 +1214,7 @@ static void FindMinimumRSSI(struct adapter *padapter)
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	/* 1 1.Determine the minimum RSSI */
 
@@ -1231,7 +1231,7 @@ static void FindMinimumRSSI(struct adapter *padapter)
 	/* ODM_RT_TRACE(pDM_Odm, COMP_DIG, DBG_LOUD, ("MinUndecoratedPWDBForDM =%d\n", pHalData->MinUndecoratedPWDBForDM)); */
 }
 
-void odm_RSSIMonitorCheckCE(struct DM_ODM_T *pDM_Odm)
+void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
@@ -1240,7 +1240,7 @@ void odm_RSSIMonitorCheckCE(struct DM_ODM_T *pDM_Odm)
 	int tmpEntryMaxPWDB = 0, tmpEntryMinPWDB = 0xff;
 	u8 sta_cnt = 0;
 	u32 PWDB_rssi[NUM_STA] = {0};/* 0~15]:MACID, [16~31]:PWDB_rssi */
-	struct RA_T *pRA_Table = &pDM_Odm->DM_RA_Table;
+	struct ra_t *pRA_Table = &pDM_Odm->DM_RA_Table;
 
 	if (pDM_Odm->bLinked != true)
 		return;
@@ -1303,7 +1303,7 @@ void odm_RSSIMonitorCheckCE(struct DM_ODM_T *pDM_Odm)
 /* 3 Tx Power Tracking */
 /* 3 ============================================================ */
 
-static u8 getSwingIndex(struct DM_ODM_T *pDM_Odm)
+static u8 getSwingIndex(struct dm_odm_t *pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	u8 i = 0;
@@ -1327,7 +1327,7 @@ static u8 getSwingIndex(struct DM_ODM_T *pDM_Odm)
 	return i;
 }
 
-void odm_TXPowerTrackingInit(struct DM_ODM_T *pDM_Odm)
+void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm)
 {
 	u8 defaultSwingIndex = getSwingIndex(pDM_Odm);
 	u8 p = 0;
@@ -1371,7 +1371,7 @@ void odm_TXPowerTrackingInit(struct DM_ODM_T *pDM_Odm)
 
 }
 
-void ODM_TXPowerTrackingCheck(struct DM_ODM_T *pDM_Odm)
+void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 
@@ -1395,9 +1395,9 @@ void ODM_TXPowerTrackingCheck(struct DM_ODM_T *pDM_Odm)
 /* 3 ============================================================ */
 /* 3 SW Antenna Diversity */
 /* 3 ============================================================ */
-void odm_SwAntDetectInit(struct DM_ODM_T *pDM_Odm)
+void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm)
 {
-	struct SWAT_T *pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
+	struct swat_t *pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
 
 	pDM_SWAT_Table->SWAS_NoLink_BK_Reg92c = rtw_read32(pDM_Odm->Adapter, rDPDT_control);
 	pDM_SWAT_Table->PreAntenna = MAIN_ANT;
diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 932a5b357877..e2dd8c34c569 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -92,11 +92,11 @@ struct dynamic_primary_CCA {
 	u8 MF_state;
 };
 
-struct RA_T {
+struct ra_t {
 	u8 firstconnect;
 };
 
-struct RXHP_T {
+struct rxhp_t {
 	u8 RXHP_flag;
 	u8 PSD_func_trigger;
 	u8 PSD_bitmap_RXHP[80];
@@ -126,7 +126,7 @@ struct RXHP_T {
 #define	TRAFFIC_HIGH	1
 #define	TRAFFIC_UltraLOW	2
 
-struct SWAT_T { /* _SW_Antenna_Switch_ */
+struct swat_t { /* _SW_Antenna_Switch_ */
 	u8 Double_chk_flag;
 	u8 try_flag;
 	s32 PreRSSI;
@@ -178,7 +178,7 @@ struct SWAT_T { /* _SW_Antenna_Switch_ */
 /* Remove Edca by YuChen */
 
 
-struct ODM_RATE_ADAPTIVE {
+struct odm_rate_adaptive {
 	u8 Type;				/*  DM_Type_ByFW/DM_Type_ByDriver */
 	u8 LdpcThres;			/*  if RSSI > LdpcThres => switch from LPDC to BCC */
 	bool bUseLdpc;
@@ -297,7 +297,7 @@ enum ODM_Ability_E { /* tag_Dynamic_ODM_Support_Ability_Type */
 /*  2011/20/20 MH For MP driver RT_WLAN_STA =  STA_INFO_T */
 /*  Please declare below ODM relative info in your STA info structure. */
 /*  */
-struct ODM_STA_INFO_T {
+struct odm_sta_info_t {
 	/*  Driver Write */
 	bool bUsed;				/*  record the sta status link or not? */
 	/* u8 WirelessMode;		 */
@@ -325,7 +325,7 @@ struct ODM_STA_INFO_T {
 /*  */
 /*  2011/10/20 MH Define Common info enum for all team. */
 /*  */
-enum ODM_CMNINFO_E {
+enum odm_cmninfo_e {
 	/*  Fixed value: */
 
 	/* HOOK BEFORE REG INIT----------- */
@@ -415,7 +415,7 @@ enum ODM_CMNINFO_E {
 };
 
 /*  2011/10/20 MH Define ODM support ability.  ODM_CMNINFO_ABILITY */
-enum ODM_ABILITY_E { /* _ODM_Support_Ability_Definition */
+enum odm_ability_e { /* _ODM_Support_Ability_Definition */
 	/*  */
 	/*  BB ODM section BIT 0-15 */
 	/*  */
@@ -446,18 +446,18 @@ enum ODM_ABILITY_E { /* _ODM_Support_Ability_Definition */
 };
 
 /* 	ODM_CMNINFO_INTERFACE */
-enum ODM_INTERFACE_E { /* tag_ODM_Support_Interface_Definition */
+enum odm_interface_e { /* tag_ODM_Support_Interface_Definition */
 	ODM_ITRF_SDIO	=	0x4,
 	ODM_ITRF_ALL	=	0x7,
 };
 
 /*  ODM_CMNINFO_IC_TYPE */
-enum ODM_IC_TYPE_E { /* tag_ODM_Support_IC_Type_Definition */
+enum odm_ic_type_e { /* tag_ODM_Support_IC_Type_Definition */
 	ODM_RTL8723B	=	BIT8,
 };
 
 /* ODM_CMNINFO_CUT_VER */
-enum ODM_CUT_VERSION_E { /* tag_ODM_Cut_Version_Definition */
+enum odm_cut_version_e { /* tag_ODM_Cut_Version_Definition */
 	ODM_CUT_A		=	0,
 	ODM_CUT_B		=	1,
 	ODM_CUT_C		=	2,
@@ -472,7 +472,7 @@ enum ODM_CUT_VERSION_E { /* tag_ODM_Cut_Version_Definition */
 };
 
 /*  ODM_CMNINFO_FAB_VER */
-enum ODM_FAB_E { /* tag_ODM_Fab_Version_Definition */
+enum odm_fab_e { /* tag_ODM_Fab_Version_Definition */
 	ODM_TSMC	=	0,
 	ODM_UMC		=	1,
 };
@@ -481,7 +481,7 @@ enum ODM_FAB_E { /* tag_ODM_Fab_Version_Definition */
 /*  */
 /*  For example 1T2R (A+AB = BIT0|BIT4|BIT5) */
 /*  */
-enum ODM_RF_PATH_E { /* tag_ODM_RF_Path_Bit_Definition */
+enum odm_rf_path_e { /* tag_ODM_RF_Path_Bit_Definition */
 	ODM_RF_TX_A	=	BIT0,
 	ODM_RF_TX_B	=	BIT1,
 	ODM_RF_TX_C	=	BIT2,
@@ -492,7 +492,7 @@ enum ODM_RF_PATH_E { /* tag_ODM_RF_Path_Bit_Definition */
 	ODM_RF_RX_D	=	BIT7,
 };
 
-enum ODM_RF_TYPE_E { /* tag_ODM_RF_Type_Definition */
+enum odm_rf_type_e { /* tag_ODM_RF_Type_Definition */
 	ODM_1T1R	=	0,
 	ODM_1T2R	=	1,
 	ODM_2T2R	=	2,
@@ -513,13 +513,13 @@ enum ODM_RF_TYPE_E { /* tag_ODM_RF_Type_Definition */
 /* 	DUALMAC_SINGLEPHY, */
 /* MACPHY_MODE_8192D,*PMACPHY_MODE_8192D; */
 /*  Above is the original define in MP driver. Please use the same define. THX. */
-enum ODM_MAC_PHY_MODE_E { /* tag_ODM_MAC_PHY_Mode_Definition */
+enum odm_mac_phy_mode_e { /* tag_ODM_MAC_PHY_Mode_Definition */
 	ODM_SMSP	= 0,
 	ODM_DMSP	= 1,
 	ODM_DMDP	= 2,
 };
 
-enum ODM_BT_COEXIST_E { /* tag_BT_Coexist_Definition */
+enum odm_bt_coexist_e { /* tag_BT_Coexist_Definition */
 	ODM_BT_BUSY		= 1,
 	ODM_BT_ON		= 2,
 	ODM_BT_OFF		= 3,
@@ -527,7 +527,7 @@ enum ODM_BT_COEXIST_E { /* tag_BT_Coexist_Definition */
 };
 
 /*  ODM_CMNINFO_OP_MODE */
-enum ODM_OPERATION_MODE_E { /* tag_Operation_Mode_Definition */
+enum odm_operation_mode_e { /* tag_Operation_Mode_Definition */
 	ODM_NO_LINK      = BIT0,
 	ODM_LINK         = BIT1,
 	ODM_SCAN         = BIT2,
@@ -540,7 +540,7 @@ enum ODM_OPERATION_MODE_E { /* tag_Operation_Mode_Definition */
 };
 
 /*  ODM_CMNINFO_WM_MODE */
-enum ODM_WIRELESS_MODE_E { /* tag_Wireless_Mode_Definition */
+enum odm_wireless_mode_e { /* tag_Wireless_Mode_Definition */
 	ODM_WM_UNKNOWN    = 0x0,
 	ODM_WM_B          = BIT0,
 	ODM_WM_G          = BIT1,
@@ -552,7 +552,7 @@ enum ODM_WIRELESS_MODE_E { /* tag_Wireless_Mode_Definition */
 };
 
 /*  ODM_CMNINFO_BAND */
-enum ODM_BAND_TYPE_E { /* tag_Band_Type_Definition */
+enum odm_band_type_e { /* tag_Band_Type_Definition */
 	ODM_BAND_2_4G = 0,
 	ODM_BAND_5G,
 	ODM_BAND_ON_BOTH,
@@ -560,14 +560,14 @@ enum ODM_BAND_TYPE_E { /* tag_Band_Type_Definition */
 };
 
 /*  ODM_CMNINFO_SEC_CHNL_OFFSET */
-enum ODM_SEC_CHNL_OFFSET_E { /* tag_Secondary_Channel_Offset_Definition */
+enum odm_sec_chnl_offset_e { /* tag_Secondary_Channel_Offset_Definition */
 	ODM_DONT_CARE	= 0,
 	ODM_BELOW		= 1,
 	ODM_ABOVE		= 2
 };
 
 /*  ODM_CMNINFO_SEC_MODE */
-enum ODM_SECURITY_E { /* tag_Security_Definition */
+enum odm_security_e { /* tag_Security_Definition */
 	ODM_SEC_OPEN		= 0,
 	ODM_SEC_WEP40		= 1,
 	ODM_SEC_TKIP		= 2,
@@ -579,7 +579,7 @@ enum ODM_SECURITY_E { /* tag_Security_Definition */
 };
 
 /*  ODM_CMNINFO_BW */
-enum ODM_BW_E { /* tag_Bandwidth_Definition */
+enum odm_bw_e { /* tag_Bandwidth_Definition */
 	ODM_BW20M		= 0,
 	ODM_BW40M		= 1,
 	ODM_BW80M		= 2,
@@ -590,7 +590,7 @@ enum ODM_BW_E { /* tag_Bandwidth_Definition */
 /*  ODM_CMNINFO_BOARD_TYPE */
 /*  For non-AC-series IC , ODM_BOARD_5G_EXT_PA and ODM_BOARD_5G_EXT_LNA are ignored */
 /*  For AC-series IC, external PA & LNA can be indivisuallly added on 2.4G and/or 5G */
-enum ODM_BOARD_TYPE_E { /* tag_Board_Definition */
+enum odm_board_type_e { /* tag_Board_Definition */
 	ODM_BOARD_DEFAULT    = 0,      /*  The DEFAULT case. */
 	ODM_BOARD_MINICARD   = BIT(0), /*  0 = non-mini card, 1 = mini card. */
 	ODM_BOARD_SLIM       = BIT(1), /*  0 = non-slim card, 1 = slim card */
@@ -609,24 +609,24 @@ enum ODM_Package_TYPE_E { /* tag_ODM_Package_Definition */
 	ODM_PACKAGE_TFBGA79      = BIT(2),
 };
 
-enum ODM_TYPE_GPA_E { /* tag_ODM_TYPE_GPA_Definition */
+enum odm_type_gpa_e { /* tag_ODM_TYPE_GPA_Definition */
 	TYPE_GPA0 = 0,
 	TYPE_GPA1 = BIT(1)|BIT(0)
 };
 
-enum ODM_TYPE_APA_E { /* tag_ODM_TYPE_APA_Definition */
+enum odm_type_apa_e { /* tag_ODM_TYPE_APA_Definition */
 	TYPE_APA0 = 0,
 	TYPE_APA1 = BIT(1)|BIT(0)
 };
 
-enum ODM_TYPE_GLNA_E { /* tag_ODM_TYPE_GLNA_Definition */
+enum odm_type_glna_e { /* tag_ODM_TYPE_GLNA_Definition */
 	TYPE_GLNA0 = 0,
 	TYPE_GLNA1 = BIT(2)|BIT(0),
 	TYPE_GLNA2 = BIT(3)|BIT(1),
 	TYPE_GLNA3 = BIT(3)|BIT(2)|BIT(1)|BIT(0)
 };
 
-enum ODM_TYPE_ALNA_E { /* tag_ODM_TYPE_ALNA_Definition */
+enum odm_type_alna_e { /* tag_ODM_TYPE_ALNA_Definition */
 	TYPE_ALNA0 = 0,
 	TYPE_ALNA1 = BIT(2)|BIT(0),
 	TYPE_ALNA2 = BIT(3)|BIT(1),
@@ -634,13 +634,13 @@ enum ODM_TYPE_ALNA_E { /* tag_ODM_TYPE_ALNA_Definition */
 };
 
 /*  ODM_CMNINFO_ONE_PATH_CCA */
-enum ODM_CCA_PATH_E { /* tag_CCA_Path */
+enum odm_cca_path_e { /* tag_CCA_Path */
 	ODM_CCA_2R			= 0,
 	ODM_CCA_1R_A		= 1,
 	ODM_CCA_1R_B		= 2,
 };
 
-struct ODM_RA_INFO_T { /* _ODM_RA_Info_ */
+struct odm_ra_info_t { /* _ODM_RA_Info_ */
 	u8 RateID;
 	u32 RateMask;
 	u32 RAUseRate;
@@ -672,7 +672,7 @@ struct ODM_RA_INFO_T { /* _ODM_RA_Info_ */
 	u8 PTSmoothFactor;
 };
 
-struct IQK_MATRIX_REGS_SETTING { /* _IQK_MATRIX_REGS_SETTING */
+struct iqk_matrix_regs_setting { /* _IQK_MATRIX_REGS_SETTING */
 	bool bIQKDone;
 	s32 Value[3][IQK_Matrix_REG_NUM];
 	bool bBWIqkResultSaved[3];
@@ -680,7 +680,7 @@ struct IQK_MATRIX_REGS_SETTING { /* _IQK_MATRIX_REGS_SETTING */
 
 /* Remove PATHDIV_PARA struct to odm_PathDiv.h */
 
-struct ODM_RF_CAL_T { /* ODM_RF_Calibration_Structure */
+struct odm_rf_cal_t { /* ODM_RF_Calibration_Structure */
 	/* for tx power tracking */
 
 	u32 RegA24; /*  for TempCCK */
@@ -724,7 +724,7 @@ struct ODM_RF_CAL_T { /* ODM_RF_Calibration_Structure */
 
 	u8 ThermalValue_HP[HP_THERMAL_NUM];
 	u8 ThermalValue_HP_index;
-	struct IQK_MATRIX_REGS_SETTING IQKMatrixRegSetting[IQK_Matrix_Settings_NUM];
+	struct iqk_matrix_regs_setting IQKMatrixRegSetting[IQK_Matrix_Settings_NUM];
 	bool bNeedIQK;
 	bool bIQKInProgress;
 	u8 Delta_IQK;
@@ -785,7 +785,7 @@ struct ODM_RF_CAL_T { /* ODM_RF_Calibration_Structure */
 /*  ODM Dynamic common info value definition */
 /*  */
 
-struct FAT_T { /* _FAST_ANTENNA_TRAINNING_ */
+struct fat_t { /* _FAST_ANTENNA_TRAINNING_ */
 	u8 Bssid[6];
 	u8 antsel_rx_keep_0;
 	u8 antsel_rx_keep_1;
@@ -825,12 +825,12 @@ struct FAT_T { /* _FAST_ANTENNA_TRAINNING_ */
 
 };
 
-enum FAT_STATE_E {
+enum fat_state_e {
 	FAT_NORMAL_STATE			= 0,
 	FAT_TRAINING_STATE		= 1,
 };
 
-enum ANT_DIV_TYPE_E {
+enum ant_div_type_e {
 	NO_ANTDIV			= 0xFF,
 	CG_TRX_HW_ANTDIV		= 0x01,
 	CGCS_RX_HW_ANTDIV	= 0x02,
@@ -840,7 +840,7 @@ enum ANT_DIV_TYPE_E {
 	S0S1_SW_ANTDIV          = 0x06 /* 8723B intrnal switch S0 S1 */
 };
 
-struct PATHDIV_T { /* _ODM_PATH_DIVERSITY_ */
+struct pathdiv_t { /* _ODM_PATH_DIVERSITY_ */
 	u8 RespTxPath;
 	u8 PathSel[ODM_ASSOCIATE_ENTRY_NUM];
 	u32 PathA_Sum[ODM_ASSOCIATE_ENTRY_NUM];
@@ -849,7 +849,7 @@ struct PATHDIV_T { /* _ODM_PATH_DIVERSITY_ */
 	u32 PathB_Cnt[ODM_ASSOCIATE_ENTRY_NUM];
 };
 
-enum PHY_REG_PG_TYPE { /* _BASEBAND_CONFIG_PHY_REG_PG_VALUE_TYPE */
+enum phy_reg_pg_type { /* _BASEBAND_CONFIG_PHY_REG_PG_VALUE_TYPE */
 	PHY_REG_PG_RELATIVE_VALUE = 0,
 	PHY_REG_PG_EXACT_VALUE = 1
 };
@@ -857,7 +857,7 @@ enum PHY_REG_PG_TYPE { /* _BASEBAND_CONFIG_PHY_REG_PG_VALUE_TYPE */
 /*  */
 /*  Antenna detection information from single tone mechanism, added by Roger, 2012.11.27. */
 /*  */
-struct ANT_DETECTED_INFO {
+struct ant_detected_info {
 	bool bAntDetected;
 	u32 dBForAntA;
 	u32 dBForAntB;
@@ -867,7 +867,7 @@ struct ANT_DETECTED_INFO {
 /*  */
 /*  2011/09/22 MH Copy from SD4 defined structure. We use to support PHY DM integration. */
 /*  */
-struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
+struct dm_odm_t { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/* struct timer_list	FastAntTrainingTimer; */
 	/*  */
 	/* 	Add for different team use temporarily */
@@ -876,7 +876,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/*  WHen you use Adapter or priv pointer, you must make sure the pointer is ready. */
 	bool odm_ready;
 
-	enum PHY_REG_PG_TYPE PhyRegPgValueType;
+	enum phy_reg_pg_type PhyRegPgValueType;
 	u8 PhyRegPgVersion;
 
 	u64	DebugComponents;
@@ -1109,21 +1109,21 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/*  */
 	/* ODM Structure */
 	/*  */
-	struct FAT_T DM_FatTable;
+	struct fat_t DM_FatTable;
 	struct dig_t DM_DigTable;
 	struct PS_T DM_PSTable;
 	struct dynamic_primary_CCA DM_PriCCA;
-	struct RXHP_T DM_RXHP_Table;
-	struct RA_T DM_RA_Table;
+	struct rxhp_t dM_RXHP_Table;
+	struct ra_t DM_RA_Table;
 	struct false_ALARM_STATISTICS FalseAlmCnt;
 	struct false_ALARM_STATISTICS FlaseAlmCntBuddyAdapter;
-	struct SWAT_T DM_SWAT_Table;
+	struct swat_t DM_SWAT_Table;
 	bool RSSI_test;
 	struct cfo_tracking DM_CfoTrack;
 
 	struct edca_t DM_EDCA_Table;
 	u32 WMMEDCA_BE;
-	struct PATHDIV_T DM_PathDiv;
+	struct pathdiv_t DM_PathDiv;
 	/*  Copy from SD4 structure */
 	/*  */
 	/*  ================================================== */
@@ -1158,11 +1158,11 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/* for rate adaptive, in fact,  88c/92c fw will handle this */
 	u8 bUseRAMask;
 
-	struct ODM_RATE_ADAPTIVE RateAdaptive;
+	struct odm_rate_adaptive RateAdaptive;
 
-	struct ANT_DETECTED_INFO AntDetectedInfo; /*  Antenna detected information for RSSI tool */
+	struct ant_detected_info AntDetectedInfo; /*  Antenna detected information for RSSI tool */
 
-	struct ODM_RF_CAL_T RFCalibrateInfo;
+	struct odm_rf_cal_t RFCalibrateInfo;
 
 	/*  */
 	/*  TX power tracking */
@@ -1208,7 +1208,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 
 #define ODM_RF_PATH_MAX 2
 
-enum ODM_RF_RADIO_PATH_E {
+enum odm_rf_radio_path_e {
 	ODM_RF_PATH_A = 0,   /* Radio Path A */
 	ODM_RF_PATH_B = 1,   /* Radio Path B */
 	ODM_RF_PATH_C = 2,   /* Radio Path C */
@@ -1226,7 +1226,7 @@ enum ODM_RF_RADIO_PATH_E {
 	/*   ODM_RF_PATH_MAX,    Max RF number 90 support */
 };
 
- enum ODM_RF_CONTENT {
+ enum odm_rf_content {
 	odm_radioa_txt = 0x1000,
 	odm_radiob_txt = 0x1001,
 	odm_radioc_txt = 0x1002,
@@ -1259,7 +1259,7 @@ enum ODM_FW_Config_Type {
 };
 
 /*  Status code */
-enum RT_STATUS {
+enum rt_status {
 	RT_STATUS_SUCCESS,
 	RT_STATUS_FAILURE,
 	RT_STATUS_PENDING,
@@ -1316,13 +1316,13 @@ enum RT_STATUS {
 /* 3 BB Power Save */
 /* 3 =========================================================== */
 
-enum DM_1R_CCA_E { /* tag_1R_CCA_Type_Definition */
+enum dm_1r_cca_e { /* tag_1R_CCA_Type_Definition */
 	CCA_1R = 0,
 	CCA_2R = 1,
 	CCA_MAX = 2,
 };
 
-enum DM_RF_E { /* tag_RF_Type_Definition */
+enum dm_rf_e { /* tag_RF_Type_Definition */
 	RF_Save = 0,
 	RF_Normal = 1,
 	RF_MAX = 2,
@@ -1331,7 +1331,7 @@ enum DM_RF_E { /* tag_RF_Type_Definition */
 /* 3 =========================================================== */
 /* 3 Antenna Diversity */
 /* 3 =========================================================== */
-enum DM_SWAS_E { /* tag_SW_Antenna_Switch_Definition */
+enum dm_swas_e { /* tag_SW_Antenna_Switch_Definition */
 	Antenna_A = 1,
 	Antenna_B = 2,
 	Antenna_MAX = 3,
@@ -1368,10 +1368,10 @@ extern  u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE];
 /* Remove BB power saving by Yuchen */
 
 #define dm_CheckTXPowerTracking ODM_TXPowerTrackingCheck
-void ODM_TXPowerTrackingCheck(struct DM_ODM_T *pDM_Odm);
+void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm);
 
 bool ODM_RAStateCheck(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	s32	RSSI,
 	bool bForceUpdate,
 	u8 *pRATRState
@@ -1379,13 +1379,13 @@ bool ODM_RAStateCheck(
 
 #define dm_SWAW_RSSI_Check	ODM_SwAntDivChkPerPktRssi
 void ODM_SwAntDivChkPerPktRssi(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u8 StationID,
 	struct odm_phy_info *pPhyInfo
 );
 
 u32 ODM_Get_Rate_Bitmap(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u32 macid,
 	u32 ra_mask,
 	u8 rssi_level
@@ -1395,38 +1395,38 @@ u32 ODM_Get_Rate_Bitmap(
 BEAMFORMING_CAP Beamforming_GetEntryBeamCapByMacId(PMGNT_INFO pMgntInfo, u8 MacId);
 #endif
 
-void odm_TXPowerTrackingInit(struct DM_ODM_T *pDM_Odm);
+void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm);
 
-void ODM_DMInit(struct DM_ODM_T *pDM_Odm);
+void ODM_DMInit(struct dm_odm_t *pDM_Odm);
 
-void ODM_DMWatchdog(struct DM_ODM_T *pDM_Odm); /*  For common use in the future */
+void ODM_DMWatchdog(struct dm_odm_t *pDM_Odm); /*  For common use in the future */
 
-void ODM_CmnInfoInit(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value);
+void ODM_CmnInfoInit(struct dm_odm_t *pDM_Odm, enum odm_cmninfo_e CmnInfo, u32 Value);
 
-void ODM_CmnInfoHook(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue);
+void ODM_CmnInfoHook(struct dm_odm_t *pDM_Odm, enum odm_cmninfo_e CmnInfo, void *pValue);
 
 void ODM_CmnInfoPtrArrayHook(
-	struct DM_ODM_T *pDM_Odm,
-	enum ODM_CMNINFO_E CmnInfo,
+	struct dm_odm_t *pDM_Odm,
+	enum odm_cmninfo_e CmnInfo,
 	u16 Index,
 	void *pValue
 );
 
-void ODM_CmnInfoUpdate(struct DM_ODM_T *pDM_Odm, u32 CmnInfo, u64 Value);
+void ODM_CmnInfoUpdate(struct dm_odm_t *pDM_Odm, u32 CmnInfo, u64 Value);
 
-void ODM_InitAllTimers(struct DM_ODM_T *pDM_Odm);
+void ODM_InitAllTimers(struct dm_odm_t *pDM_Odm);
 
-void ODM_CancelAllTimers(struct DM_ODM_T *pDM_Odm);
+void ODM_CancelAllTimers(struct dm_odm_t *pDM_Odm);
 
-void ODM_ReleaseAllTimers(struct DM_ODM_T *pDM_Odm);
+void ODM_ReleaseAllTimers(struct dm_odm_t *pDM_Odm);
 
 void ODM_AntselStatistics_88C(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u8 MacId,
 	u32 PWDBAll,
 	bool isCCKrate
 );
 
-void ODM_DynamicARFBSelect(struct DM_ODM_T *pDM_Odm, u8 rate, bool Collision_State);
+void ODM_DynamicARFBSelect(struct dm_odm_t *pDM_Odm, u8 rate, bool Collision_State);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index edfdd9101008..75471c6c168e 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -9,7 +9,7 @@
 
 static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->CrystalCap == CrystalCap)
@@ -39,7 +39,7 @@ static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 
 static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
@@ -49,7 +49,7 @@ static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 
 static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->bATCStatus == ATCStatus)
@@ -67,7 +67,7 @@ static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
 static bool odm_GetATCStatus(void *pDM_VOID)
 {
 	bool ATCStatus;
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	ATCStatus = (bool)PHY_QueryBBReg(
 		pDM_Odm->Adapter,
@@ -79,7 +79,7 @@ static bool odm_GetATCStatus(void *pDM_VOID)
 
 void ODM_CfoTrackingReset(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
@@ -91,7 +91,7 @@ void ODM_CfoTrackingReset(void *pDM_VOID)
 
 void ODM_CfoTrackingInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap =
@@ -118,7 +118,7 @@ void ODM_CfoTrackingInit(void *pDM_VOID)
 
 void ODM_CfoTracking(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	int CFO_kHz_A, CFO_kHz_B, CFO_ave = 0;
 	int CFO_ave_diff;
@@ -297,7 +297,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 
 void ODM_ParsingCFO(void *pDM_VOID, void *pPktinfo_VOID, s8 *pcfotail)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct odm_packet_info *pPktinfo = pPktinfo_VOID;
 	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	u8 i;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index aa185d5a3251..dcef7fb17389 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -11,7 +11,7 @@
 
 void odm_NHMCounterStatisticsInit(void *pDM_VOID)
 {
-	struct DM_ODM_T	*pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t	*pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	/* PHY parameters initialize for n series */
 	rtw_write16(pDM_Odm->Adapter, ODM_REG_NHM_TIMER_11N+2, 0x2710);	/* 0x894[31:16]= 0x2710	Time duration for NHM unit: 4us, 0x2710 =40ms */
@@ -27,7 +27,7 @@ void odm_NHMCounterStatisticsInit(void *pDM_VOID)
 
 void odm_NHMCounterStatistics(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	/*  Get NHM report */
 	odm_GetNHMCounterStatistics(pDM_Odm);
@@ -38,7 +38,7 @@ void odm_NHMCounterStatistics(void *pDM_VOID)
 
 void odm_GetNHMCounterStatistics(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	u32 value32 = 0;
 
 	value32 = PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG_NHM_CNT_11N, bMaskDWord);
@@ -48,7 +48,7 @@ void odm_GetNHMCounterStatistics(void *pDM_VOID)
 
 void odm_NHMCounterStatisticsReset(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 0);
 	PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 1);
@@ -56,7 +56,7 @@ void odm_NHMCounterStatisticsReset(void *pDM_VOID)
 
 void odm_NHMBBInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	pDM_Odm->adaptivity_flag = 0;
 	pDM_Odm->tolerance_cnt = 3;
@@ -69,7 +69,7 @@ void odm_NHMBBInit(void *pDM_VOID)
 /*  */
 void odm_NHMBB(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	/* u8 test_status; */
 	/* struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt; */
 
@@ -133,7 +133,7 @@ void odm_NHMBB(void *pDM_VOID)
 
 void odm_SearchPwdBLowerBound(void *pDM_VOID, u8 IGI_target)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	u32 value32 = 0;
 	u8 cnt, IGI;
 	bool bAdjust = true;
@@ -205,7 +205,7 @@ void odm_SearchPwdBLowerBound(void *pDM_VOID, u8 IGI_target)
 
 void odm_AdaptivityInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	if (pDM_Odm->Carrier_Sense_enable == false)
 		pDM_Odm->TH_L2H_ini = 0xf7; /*  -7 */
@@ -233,7 +233,7 @@ void odm_AdaptivityInit(void *pDM_VOID)
 
 void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	s8 TH_L2H_dmc, TH_H2L_dmc;
 	s8 Diff, IGI_target;
 	bool EDCCA_State = false;
@@ -322,7 +322,7 @@ void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 
 void ODM_Write_DIG(void *pDM_VOID, u8 CurrentIGI)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	if (pDM_DigTable->bStopDIG) {
@@ -362,7 +362,7 @@ void odm_PauseDIG(
 	u8 IGIValue
 )
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	static bool bPaused;
 
@@ -435,7 +435,7 @@ void odm_PauseDIG(
 
 bool odm_DigAbort(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	/* SupportAbility */
 	if (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT)) {
@@ -466,7 +466,7 @@ bool odm_DigAbort(void *pDM_VOID)
 
 void odm_DIGInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	pDM_DigTable->bStopDIG = false;
@@ -504,7 +504,7 @@ void odm_DIGInit(void *pDM_VOID)
 
 void odm_DIG(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	/*  Common parameters */
 	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
@@ -823,7 +823,7 @@ void odm_DIG(void *pDM_VOID)
 
 void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 
 	u8 RSSI_Lower = DM_DIG_MIN_NIC;   /* 0x1E or 0x1C */
@@ -892,7 +892,7 @@ void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 
 void odm_FalseAlarmCounterStatistics(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct false_ALARM_STATISTICS *FalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	u32 ret_value;
 
@@ -1062,7 +1062,7 @@ void odm_FAThresholdCheck(
 	u32 *dm_FA_thres
 )
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	if (pDM_Odm->bLinked && (bPerformance || bDFSBand)) {
 		/*  For NIC */
@@ -1078,7 +1078,7 @@ void odm_FAThresholdCheck(
 
 u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	u8 rx_gain_range_min = pDM_DigTable->rx_gain_range_min;
@@ -1134,7 +1134,7 @@ u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 
 void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct false_ALARM_STATISTICS *FalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	u8 CurCCK_CCAThres;
 
@@ -1195,7 +1195,7 @@ void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 
 void ODM_Write_CCK_CCA_Thres(void *pDM_VOID, u8 CurCCK_CCAThres)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	/* modify by Guo.Mingzhi 2012-01-03 */
diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
index 522f87fe69b2..d12f4841114c 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
@@ -9,7 +9,7 @@
 
 void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct PS_T *pDM_PSTable = &pDM_Odm->DM_PSTable;
 
 	pDM_PSTable->PreCCAState = CCA_MAX;
@@ -22,7 +22,7 @@ void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 
 void ODM_RF_Saving(void *pDM_VOID, u8 bForceInNormal)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct PS_T *pDM_PSTable = &pDM_Odm->DM_PSTable;
 	u8 Rssi_Up_bound = 30;
 	u8 Rssi_Low_bound = 25;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c b/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
index ca8246c1a2cd..398dfa13449d 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
@@ -9,7 +9,7 @@
 
 void odm_DynamicTxPowerInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
diff --git a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
index 95fbb91aeb7d..12b37c17ea0c 100644
--- a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
+++ b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
@@ -31,7 +31,7 @@ static u32 edca_setting_DL[HT_IOT_PEER_MAX] = {
 
 void ODM_EdcaTurboInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct adapter *Adapter = pDM_Odm->Adapter;
 
 	pDM_Odm->DM_EDCA_Table.bCurrentTurboEDCA = false;
@@ -58,7 +58,7 @@ void odm_EdcaTurboCheck(void *pDM_VOID)
 	 *  operate at the same time. In stage2/3, we need to prove universal
 	 *  interface and merge all HW dynamic mechanism.
 	 */
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
 		     ("odm_EdcaTurboCheck ========================>\n"));
@@ -73,7 +73,7 @@ void odm_EdcaTurboCheck(void *pDM_VOID)
 
 void odm_EdcaTurboCheckCE(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct dvobj_priv *pdvobjpriv = adapter_to_dvobj(Adapter);
 	struct recv_priv *precvpriv = &(Adapter->recvpriv);
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index b1b69459282f..638c16f5c668 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -23,7 +23,7 @@ static u8 odm_QueryRxPwrPercentage(s8 AntPower)
 
 }
 
-s32 odm_SignalScaleMapping(struct DM_ODM_T *pDM_Odm, s32 CurrSig)
+s32 odm_SignalScaleMapping(struct dm_odm_t *pDM_Odm, s32 CurrSig)
 {
 	s32 RetSig = 0;
 
@@ -77,7 +77,7 @@ static u8 odm_EVMdbToPercentage(s8 Value)
 }
 
 static void odm_RxPhyStatus92CSeries_Parsing(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -238,7 +238,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 }
 
 static void odm_Process_RSSIForDM(
-	struct DM_ODM_T *pDM_Odm, struct odm_phy_info *pPhyInfo, struct odm_packet_info *pPktinfo
+	struct dm_odm_t *pDM_Odm, struct odm_phy_info *pPhyInfo, struct odm_packet_info *pPktinfo
 )
 {
 
@@ -392,7 +392,7 @@ static void odm_Process_RSSIForDM(
 /*  Endianness before calling this API */
 /*  */
 static void ODM_PhyStatusQuery_92CSeries(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -406,7 +406,7 @@ static void ODM_PhyStatusQuery_92CSeries(
 }
 
 void ODM_PhyStatusQuery(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -422,9 +422,9 @@ void ODM_PhyStatusQuery(
 /*  */
 
 enum hal_status ODM_ConfigRFWithHeaderFile(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	enum ODM_RF_Config_Type ConfigType,
-	enum ODM_RF_RADIO_PATH_E eRFPath
+	enum odm_rf_radio_path_e eRFPath
 )
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
@@ -441,7 +441,7 @@ enum hal_status ODM_ConfigRFWithHeaderFile(
 	return HAL_STATUS_SUCCESS;
 }
 
-enum hal_status ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm)
+enum hal_status ODM_ConfigRFWithTxPwrTrackHeaderFile(struct dm_odm_t *pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 				 ("===>ODM_ConfigRFWithTxPwrTrackHeaderFile (%s)\n", (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
@@ -456,7 +456,7 @@ enum hal_status ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm)
 }
 
 enum hal_status ODM_ConfigBBWithHeaderFile(
-	struct DM_ODM_T *pDM_Odm, enum ODM_BB_Config_Type ConfigType
+	struct dm_odm_t *pDM_Odm, enum ODM_BB_Config_Type ConfigType
 )
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
index 184609623f5c..eda35d2e7d29 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
@@ -122,31 +122,31 @@ struct phy_status_rpt_8812_t {
 
 
 void ODM_PhyStatusQuery(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
 );
 
-enum hal_status ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm);
+enum hal_status ODM_ConfigRFWithTxPwrTrackHeaderFile(struct dm_odm_t *pDM_Odm);
 
 enum hal_status ODM_ConfigRFWithHeaderFile(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	enum ODM_RF_Config_Type ConfigType,
-	enum ODM_RF_RADIO_PATH_E eRFPath
+	enum odm_rf_radio_path_e eRFPath
 );
 
 enum hal_status ODM_ConfigBBWithHeaderFile(
-	struct DM_ODM_T *pDM_Odm, enum ODM_BB_Config_Type ConfigType
+	struct dm_odm_t *pDM_Odm, enum ODM_BB_Config_Type ConfigType
 );
 
 enum hal_status ODM_ConfigFWWithHeaderFile(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	enum ODM_FW_Config_Type ConfigType,
 	u8 *pFirmware,
 	u32 *pSize
 );
 
-s32 odm_SignalScaleMapping(struct DM_ODM_T *pDM_Odm, s32 CurrSig);
+s32 odm_SignalScaleMapping(struct dm_odm_t *pDM_Odm, s32 CurrSig);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
index 54b9a70a7060..c3de123e2a48 100644
--- a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
+++ b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
@@ -19,7 +19,7 @@
 #define ValidCnt				5
 
 static s16 odm_InbandNoise_Monitor_NSeries(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u8 bPauseDIG,
 	u8 IGIValue,
 	u32 max_time
diff --git a/drivers/staging/rtl8723bs/hal/odm_PathDiv.c b/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
index eeb8c87f2612..92b708265d47 100644
--- a/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
+++ b/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
@@ -9,7 +9,7 @@
 
 void odm_PathDiversityInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_PATH_DIV))
 		ODM_RT_TRACE(
@@ -22,7 +22,7 @@ void odm_PathDiversityInit(void *pDM_VOID)
 
 void odm_PathDiversity(void *pDM_VOID)
 {
-	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_PATH_DIV))
 		ODM_RT_TRACE(
diff --git a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
index 0fc5abe6ae23..63bf5ba3e0d5 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
+++ b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
@@ -8,10 +8,10 @@
 #include "odm_precomp.h"
 
 void odm_ConfigRFReg_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u32 Addr,
 	u32 Data,
-	enum ODM_RF_RADIO_PATH_E RF_PATH,
+	enum odm_rf_radio_path_e RF_PATH,
 	u32 RegAddr
 )
 {
@@ -106,7 +106,7 @@ void odm_ConfigRFReg_8723B(
 }
 
 
-void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u32 Data)
+void odm_ConfigRF_RadioA_8723B(struct dm_odm_t *pDM_Odm, u32 Addr, u32 Data)
 {
 	u32  content = 0x1000; /*  RF_Content: radioa_txt */
 	u32 maskforPhySet = (u32)(content&0xE000);
@@ -131,7 +131,7 @@ void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u32 Data)
 	);
 }
 
-void odm_ConfigMAC_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u8 Data)
+void odm_ConfigMAC_8723B(struct dm_odm_t *pDM_Odm, u32 Addr, u8 Data)
 {
 	rtw_write8(pDM_Odm->Adapter, Addr, Data);
 	ODM_RT_TRACE(
@@ -147,7 +147,7 @@ void odm_ConfigMAC_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u8 Data)
 }
 
 void odm_ConfigBB_AGC_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u32 Addr,
 	u32 Bitmask,
 	u32 Data
@@ -170,7 +170,7 @@ void odm_ConfigBB_AGC_8723B(
 }
 
 void odm_ConfigBB_PHY_REG_PG_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u32 Band,
 	u32 RfPath,
 	u32 TxNum,
@@ -198,7 +198,7 @@ void odm_ConfigBB_PHY_REG_PG_8723B(
 }
 
 void odm_ConfigBB_PHY_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u32 Addr,
 	u32 Bitmask,
 	u32 Data
@@ -226,7 +226,7 @@ void odm_ConfigBB_PHY_8723B(
 }
 
 void odm_ConfigBB_TXPWR_LMT_8723B(
-	struct DM_ODM_T *pDM_Odm,
+	struct dm_odm_t *pDM_Odm,
 	u8 *Regulation,
 	u8 *Band,
 	u8 *Bandwidth,
diff --git a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
index e863f0c6d27a..b392d14c389d 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
+++ b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
@@ -7,24 +7,24 @@
 #ifndef __INC_ODM_REGCONFIG_H_8723B
 #define __INC_ODM_REGCONFIG_H_8723B
 
-void odm_ConfigRFReg_8723B(struct DM_ODM_T *pDM_Odm,
+void odm_ConfigRFReg_8723B(struct dm_odm_t *pDM_Odm,
 			   u32 Addr,
 			   u32 Data,
-			   enum ODM_RF_RADIO_PATH_E RF_PATH,
+			   enum odm_rf_radio_path_e RF_PATH,
 			   u32 RegAddr
 );
 
-void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u32 Data);
+void odm_ConfigRF_RadioA_8723B(struct dm_odm_t *pDM_Odm, u32 Addr, u32 Data);
 
-void odm_ConfigMAC_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u8 Data);
+void odm_ConfigMAC_8723B(struct dm_odm_t *pDM_Odm, u32 Addr, u8 Data);
 
-void odm_ConfigBB_AGC_8723B(struct DM_ODM_T *pDM_Odm,
+void odm_ConfigBB_AGC_8723B(struct dm_odm_t *pDM_Odm,
 			    u32 Addr,
 			    u32 Bitmask,
 			    u32 Data
 );
 
-void odm_ConfigBB_PHY_REG_PG_8723B(struct DM_ODM_T *pDM_Odm,
+void odm_ConfigBB_PHY_REG_PG_8723B(struct dm_odm_t *pDM_Odm,
 				   u32 Band,
 				   u32 RfPath,
 				   u32 TxNum,
@@ -33,13 +33,13 @@ void odm_ConfigBB_PHY_REG_PG_8723B(struct DM_ODM_T *pDM_Odm,
 				   u32 Data
 );
 
-void odm_ConfigBB_PHY_8723B(struct DM_ODM_T *pDM_Odm,
+void odm_ConfigBB_PHY_8723B(struct dm_odm_t *pDM_Odm,
 			    u32 Addr,
 			    u32 Bitmask,
 			    u32 Data
 );
 
-void odm_ConfigBB_TXPWR_LMT_8723B(struct DM_ODM_T *pDM_Odm,
+void odm_ConfigBB_TXPWR_LMT_8723B(struct dm_odm_t *pDM_Odm,
 				  u8 *Regulation,
 				  u8 *Band,
 				  u8 *Bandwidth,
diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.c b/drivers/staging/rtl8723bs/hal/odm_debug.c
index 8e0fb04bc3d6..b35451bcb437 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.c
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.c
@@ -7,7 +7,7 @@
 
 #include "odm_precomp.h"
 
-void ODM_InitDebugSetting(struct DM_ODM_T *pDM_Odm)
+void ODM_InitDebugSetting(struct dm_odm_t *pDM_Odm)
 {
 	pDM_Odm->DebugLevel = ODM_DBG_LOUD;
 
diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.h b/drivers/staging/rtl8723bs/hal/odm_debug.h
index 22f0e37456e2..05dbfa55e933 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.h
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.h
@@ -162,6 +162,6 @@
 	no_printk("%s %p", title_str, ptr)
 #endif
 
-void ODM_InitDebugSetting(struct DM_ODM_T *pDM_Odm);
+void ODM_InitDebugSetting(struct dm_odm_t *pDM_Odm);
 
 #endif	/*  __ODM_DBG_H__ */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index f851efaadae5..3792280f93d5 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -25,7 +25,7 @@ static void Init_ODM_ComInfo_8723b(struct adapter *Adapter)
 {
 
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 	u8 cut_ver, fab_ver;
 
@@ -74,7 +74,7 @@ static void Update_ODM_ComInfo_8723b(struct adapter *Adapter)
 	struct dvobj_priv *dvobj = adapter_to_dvobj(Adapter);
 	struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(Adapter);
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 	int i;
 	u8 zero = 0;
@@ -126,7 +126,7 @@ void rtl8723b_InitHalDm(struct adapter *Adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
 	pdmpriv->DM_Type = DM_Type_ByDriver;
 	pdmpriv->DMFlag = DYNAMIC_FUNC_DISABLE;
@@ -200,7 +200,7 @@ void rtl8723b_hal_dm_in_lps(struct adapter *padapter)
 	u32 PWDB_rssi = 0;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct sta_info *psta = NULL;
 
@@ -226,7 +226,7 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 	struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct sta_priv *pstapriv = &Adapter->stapriv;
 	struct sta_info *psta = NULL;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 52cb58dc4e8d..2abff4673be2 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -594,8 +594,8 @@ u8 PHY_GetTxPowerIndex(
 void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 Channel)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
-	struct FAT_T *pDM_FatTable = &pDM_Odm->DM_FatTable;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
+	struct fat_t *pDM_FatTable = &pDM_Odm->DM_FatTable;
 	u8 RFPath = ODM_RF_PATH_A;
 
 	if (pHalData->AntDivCfg) {/*  antenna diversity Enable */
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 9512da2a7e95..b5a0be35a6ce 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -431,7 +431,7 @@ struct hal_com_data {
 	u32 		sdio_tx_max_len[SDIO_MAX_TX_QUEUE];/*  H, N, L, used for sdio tx aggregation max length per queue */
 
 	struct dm_priv dmpriv;
-	struct DM_ODM_T		odmpriv;
+	struct dm_odm_t		odmpriv;
 
 	/*  For bluetooth co-existance */
 	struct bt_coexist		bt_coexist;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
