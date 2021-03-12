Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC4B338750
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:28:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A663784538;
	Fri, 12 Mar 2021 08:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xkOgP1tcn9Qe; Fri, 12 Mar 2021 08:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B67BC844F8;
	Fri, 12 Mar 2021 08:28:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 466331C1135
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 390EB84519
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LotsGlW89tx8 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 708BE844F8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:50 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id g25so3246372wmh.0
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nV2aAJojlI4CG2T8SMQJap+7nQX9FdP+GpzuP+EZar8=;
 b=UNfdLmYKOvC7jKmBR1RwknNeu+xrp7RcpE4oq3lHfbKOrRzDIeCuWdK8Md3FoG58ou
 gnrsuOQcg9ilQMhcRKM8VaTn4I4rL3/BVMSmE/0dSGqR/XBWQibssp8EyC4ZvoEGMdpK
 v95u2jZp0/TYHb+Ba2eQ+9HjNRmdSR776yiJCtDsCt4u6K/XSwdVqRny2XG//nzQRUjt
 yL43073H8V1WfTPRYmjlPDe+2ZC9U0zWhHOLJy6LTji7qDZUykydqr5JMLw82wDVq/aK
 awu0xIGbowRloxDhDDisbyBwco/QIPz/mfMZHoeOBx2GjSfY7WNZGT85RAVzvQ9YZHer
 LabQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nV2aAJojlI4CG2T8SMQJap+7nQX9FdP+GpzuP+EZar8=;
 b=kq+pwXCZnR4y+Kq/YuugWInLrntwjmsrWioiwWLrhxnzID3xEke/b6or2hQP72Defu
 WHacWP1Iysz0ssgrovAiBSSrk4KVe7d/D45SolLFuOQ3OvXxnagbuns6wMEje/qAY/K/
 S8aQZXcCmpRSfDz8ZeqpABGL4uy+oCWsqdLv76JwJ6qnBnoXxQ+8et+XHAnme0ZA9SY5
 h9u3JT7002DiSiCu68FBTAXwFyASYyhU4Kb5uSkaWPruBiM+/Co2jBVS3X0Tnv1YEaM8
 Nqm+f+1zxwVcinva8gcZNyc8Pe9mOJTNdDqeGcJNa2QqW/UbUtuDnS6nhdROcTZ6Jz21
 0KxQ==
X-Gm-Message-State: AOAM533F+fyh/+1t/RkYnmacHw47z+q/bmVMFQJaZ/uLk+bPN+YLQIOp
 f1bi7pRvSHPRScier2TOfo0=
X-Google-Smtp-Source: ABdhPJynAfoFC2hJIUAUQrCAj4fFGZDV4X2hL12qa60Qd/WWuP4nITfLU9G3WmgAbK9xEVx1y5KbQw==
X-Received: by 2002:a7b:c35a:: with SMTP id l26mr11833125wmj.104.1615537608679; 
 Fri, 12 Mar 2021 00:26:48 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:48 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 03/33] staging: rtl8723bs: remove typedefs in odm.h
Date: Fri, 12 Mar 2021 09:26:08 +0100
Message-Id: <20210312082638.25512-4-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #95: FILE: hal/odm.h:95:
    +typedef struct _Rate_Adaptive_Table_ {

    WARNING: do not add new typedefs
    #99: FILE: hal/odm.h:99:
    +typedef struct _RX_High_Power_ {

    WARNING: do not add new typedefs
    #129: FILE: hal/odm.h:129:
    +typedef struct _SW_Antenna_Switch_ {

    WARNING: do not add new typedefs
    #181: FILE: hal/odm.h:181:
    +typedef struct _ODM_RATE_ADAPTIVE {

    WARNING: do not add new typedefs
    #280: FILE: hal/odm.h:280:
    +typedef enum tag_Dynamic_ODM_Support_Ability_Type {

    WARNING: do not add new typedefs
    #300: FILE: hal/odm.h:300:
    +typedef struct _ODM_STA_INFO {

    WARNING: do not add new typedefs
    #328: FILE: hal/odm.h:328:
    +typedef enum _ODM_Common_Info_Definition {

    WARNING: do not add new typedefs
    #418: FILE: hal/odm.h:418:
    +typedef enum _ODM_Support_Ability_Definition {

    WARNING: do not add new typedefs
    #449: FILE: hal/odm.h:449:
    +typedef enum tag_ODM_Support_Interface_Definition {

    WARNING: do not add new typedefs
    #455: FILE: hal/odm.h:455:
    +typedef enum tag_ODM_Support_IC_Type_Definition {

    WARNING: do not add new typedefs
    #460: FILE: hal/odm.h:460:
    +typedef enum tag_ODM_Cut_Version_Definition {

    WARNING: do not add new typedefs
    #475: FILE: hal/odm.h:475:
    +typedef enum tag_ODM_Fab_Version_Definition {

    WARNING: do not add new typedefs
    #484: FILE: hal/odm.h:484:
    +typedef enum tag_ODM_RF_Path_Bit_Definition {

    WARNING: do not add new typedefs
    #495: FILE: hal/odm.h:495:
    +typedef enum tag_ODM_RF_Type_Definition {

    WARNING: do not add new typedefs
    #516: FILE: hal/odm.h:516:
    +typedef enum tag_ODM_MAC_PHY_Mode_Definition {

    WARNING: do not add new typedefs
    #522: FILE: hal/odm.h:522:
    +typedef enum tag_BT_Coexist_Definition {

    WARNING: do not add new typedefs
    #530: FILE: hal/odm.h:530:
    +typedef enum tag_Operation_Mode_Definition {

    WARNING: do not add new typedefs
    #543: FILE: hal/odm.h:543:
    +typedef enum tag_Wireless_Mode_Definition {

    WARNING: do not add new typedefs
    #555: FILE: hal/odm.h:555:
    +typedef enum tag_Band_Type_Definition {

    WARNING: do not add new typedefs
    #563: FILE: hal/odm.h:563:
    +typedef enum tag_Secondary_Channel_Offset_Definition {

    WARNING: do not add new typedefs
    #570: FILE: hal/odm.h:570:
    +typedef enum tag_Security_Definition {

    WARNING: do not add new typedefs
    #582: FILE: hal/odm.h:582:
    +typedef enum tag_Bandwidth_Definition {

    WARNING: do not add new typedefs
    #593: FILE: hal/odm.h:593:
    +typedef enum tag_Board_Definition {

    WARNING: do not add new typedefs
    #605: FILE: hal/odm.h:605:
    +typedef enum tag_ODM_Package_Definition {

    WARNING: do not add new typedefs
    #612: FILE: hal/odm.h:612:
    +typedef enum tag_ODM_TYPE_GPA_Definition {

    WARNING: do not add new typedefs
    #617: FILE: hal/odm.h:617:
    +typedef enum tag_ODM_TYPE_APA_Definition {

    WARNING: do not add new typedefs
    #622: FILE: hal/odm.h:622:
    +typedef enum tag_ODM_TYPE_GLNA_Definition {

    WARNING: do not add new typedefs
    #629: FILE: hal/odm.h:629:
    +typedef enum tag_ODM_TYPE_ALNA_Definition {

    WARNING: do not add new typedefs
    #637: FILE: hal/odm.h:637:
    +typedef enum tag_CCA_Path {

    WARNING: do not add new typedefs
    #643: FILE: hal/odm.h:643:
    +typedef struct _ODM_RA_Info_ {

    WARNING: do not add new typedefs
    #675: FILE: hal/odm.h:675:
    +typedef struct _IQK_MATRIX_REGS_SETTING {

    WARNING: do not add new typedefs
    #683: FILE: hal/odm.h:683:
    +typedef struct ODM_RF_Calibration_Structure {

    WARNING: do not add new typedefs
    #788: FILE: hal/odm.h:788:
    +typedef struct _FAST_ANTENNA_TRAINNING_ {

    WARNING: do not add new typedefs
    #828: FILE: hal/odm.h:828:
    +typedef enum _FAT_STATE {

    WARNING: do not add new typedefs
    #833: FILE: hal/odm.h:833:
    +typedef enum _ANT_DIV_TYPE {

    WARNING: do not add new typedefs
    #843: FILE: hal/odm.h:843:
    +typedef struct _ODM_PATH_DIVERSITY_ {

    WARNING: do not add new typedefs
    #852: FILE: hal/odm.h:852:
    +typedef enum _BASEBAND_CONFIG_PHY_REG_PG_VALUE_TYPE {

    WARNING: do not add new typedefs
    #860: FILE: hal/odm.h:860:
    +typedef struct _ANT_DETECTED_INFO {

    WARNING: do not add new typedefs
    #870: FILE: hal/odm.h:870:
    +typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {

    WARNING: do not add new typedefs
    #1229: FILE: hal/odm.h:1229:
    + typedef enum _ODM_RF_CONTENT {

    WARNING: do not add new typedefs
    #1236: FILE: hal/odm.h:1236:
    +typedef enum _ODM_BB_Config_Type {

    WARNING: do not add new typedefs
    #1246: FILE: hal/odm.h:1246:
    +typedef enum _ODM_RF_Config_Type {

    WARNING: do not add new typedefs
    #1251: FILE: hal/odm.h:1251:
    +typedef enum _ODM_FW_Config_Type {

    WARNING: do not add new typedefs
    #1262: FILE: hal/odm.h:1262:
    +typedef enum _RT_STATUS {

    WARNING: do not add new typedefs
    #1319: FILE: hal/odm.h:1319:
    +typedef enum tag_1R_CCA_Type_Definition {

    WARNING: do not add new typedefs
    #1325: FILE: hal/odm.h:1325:
    +typedef enum tag_RF_Type_Definition {

    WARNING: do not add new typedefs
    #1334: FILE: hal/odm.h:1334:
    +typedef enum tag_SW_Antenna_Switch_Definition {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
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
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    |  52 ++--
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.h    |   8 +-
 drivers/staging/rtl8723bs/hal/hal_com.c       |  10 +-
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    |   6 +-
 drivers/staging/rtl8723bs/hal/odm.c           | 100 +++----
 drivers/staging/rtl8723bs/hal/odm.h           | 246 +++++++++---------
 .../staging/rtl8723bs/hal/odm_CfoTracking.c   |  16 +-
 drivers/staging/rtl8723bs/hal/odm_DIG.c       |  40 +--
 .../rtl8723bs/hal/odm_DynamicBBPowerSaving.c  |   4 +-
 .../rtl8723bs/hal/odm_DynamicTxPower.c        |   2 +-
 .../rtl8723bs/hal/odm_EdcaTurboCheck.c        |   6 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |  20 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h  |  18 +-
 .../staging/rtl8723bs/hal/odm_NoiseMonitor.c  |   2 +-
 drivers/staging/rtl8723bs/hal/odm_PathDiv.c   |   4 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.c        |  16 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.h        |  16 +-
 drivers/staging/rtl8723bs/hal/odm_debug.c     |   2 +-
 drivers/staging/rtl8723bs/hal/odm_debug.h     |   2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  10 +-
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   |   4 +-
 drivers/staging/rtl8723bs/include/hal_data.h  |   2 +-
 31 files changed, 326 insertions(+), 326 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_odm.c b/drivers/staging/rtl8723bs/core/rtw_odm.c
index 93e8f17d2574..87fed69e64d7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_odm.c
+++ b/drivers/staging/rtl8723bs/core/rtw_odm.c
@@ -152,7 +152,7 @@ inline void rtw_odm_ability_set(struct adapter *adapter, u32 ability)
 void rtw_odm_adaptivity_parm_msg(void *sel, struct adapter *adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(adapter);
-	DM_ODM_T *odm = &pHalData->odmpriv;
+	struct DM_ODM_T *odm = &pHalData->odmpriv;
 
 	DBG_871X_SEL_NL(sel, "%10s %16s %8s %10s %11s %14s\n",
 			"TH_L2H_ini", "TH_EDCCA_HL_diff", "IGI_Base",
@@ -173,7 +173,7 @@ void rtw_odm_adaptivity_parm_set(struct adapter *adapter, s8 TH_L2H_ini,
 				 u8 IGI_LowerBound)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(adapter);
-	DM_ODM_T *odm = &pHalData->odmpriv;
+	struct DM_ODM_T *odm = &pHalData->odmpriv;
 
 	odm->TH_L2H_ini = TH_L2H_ini;
 	odm->TH_EDCCA_HL_diff = TH_EDCCA_HL_diff;
@@ -186,7 +186,7 @@ void rtw_odm_adaptivity_parm_set(struct adapter *adapter, s8 TH_L2H_ini,
 void rtw_odm_get_perpkt_rssi(void *sel, struct adapter *adapter)
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	DM_ODM_T *odm = &hal_data->odmpriv;
+	struct DM_ODM_T *odm = &hal_data->odmpriv;
 
 	DBG_871X_SEL_NL(sel, "RxRate = %s, RSSI_A = %d(%%), RSSI_B = %d(%%)\n",
 			HDATA_RATE(odm->RxRate), odm->RSSI_A, odm->RSSI_B);
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
index 19856e806b1f..a31ab66941ac 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	PDM_ODM_T pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -112,7 +112,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	PDM_ODM_T pDM_Odm, const u32  Condition1, const u32 Condition2
+	struct DM_ODM_T * pDM_Odm, const u32  Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -257,7 +257,7 @@ static u32 Array_MP_8723B_AGC_TAB[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_AGC_TAB(PDM_ODM_T pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_AGC_TAB(struct DM_ODM_T * pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_AGC_TAB);
@@ -526,7 +526,7 @@ static u32 Array_MP_8723B_PHY_REG[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_PHY_REG(PDM_ODM_T pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_PHY_REG(struct DM_ODM_T * pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_PHY_REG);
@@ -606,7 +606,7 @@ static u32 Array_MP_8723B_PHY_REG_PG[] = {
 	0, 0, 0, 0x00000e14, 0xffffffff, 0x26303436
 };
 
-void ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(PDM_ODM_T pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(struct DM_ODM_T * pDM_Odm)
 {
 	u32 i = 0;
 	u32 *Array = Array_MP_8723B_PHY_REG_PG;
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
index c1fbe91cd4f3..69485ce3a408 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
@@ -15,7 +15,7 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_AGC_TAB(/*  TC: Test Chip, MP: MP Chip */
-	PDM_ODM_T  pDM_Odm
+	struct DM_ODM_T *  pDM_Odm
 );
 
 /******************************************************************************
@@ -24,7 +24,7 @@ ODM_ReadAndConfig_MP_8723B_AGC_TAB(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_PHY_REG(/*  TC: Test Chip, MP: MP Chip */
-	PDM_ODM_T  pDM_Odm
+	struct DM_ODM_T *  pDM_Odm
 );
 
 /******************************************************************************
@@ -33,7 +33,7 @@ ODM_ReadAndConfig_MP_8723B_PHY_REG(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(/*  TC: Test Chip, MP: MP Chip */
-	PDM_ODM_T  pDM_Odm
+	struct DM_ODM_T *  pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_PHY_REG_PG(void);
 
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
index b80c5b11796b..3408dee976a1 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	PDM_ODM_T pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -111,7 +111,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	PDM_ODM_T pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -228,7 +228,7 @@ static u32 Array_MP_8723B_MAC_REG[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_MAC_REG(PDM_ODM_T pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_MAC_REG(struct DM_ODM_T * pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_MAC_REG);
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
index 788fdca1337b..de7502232b7a 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
@@ -15,6 +15,6 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_MAC_REG(/*  TC: Test Chip, MP: MP Chip */
-	PDM_ODM_T  pDM_Odm
+	struct DM_ODM_T *  pDM_Odm
 );
 #endif
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
index 426f68b8f0d2..963a08fc9032 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	PDM_ODM_T pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -121,7 +121,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	PDM_ODM_T pDM_Odm, const u32  Condition1, const u32 Condition2
+	struct DM_ODM_T * pDM_Odm, const u32  Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -259,7 +259,7 @@ static u32 Array_MP_8723B_RadioA[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_RadioA(PDM_ODM_T pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_RadioA(struct DM_ODM_T * pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_RadioA);
@@ -420,9 +420,9 @@ static u8 gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B[] = {
 	8,  8,  9,  9,  9, 10, 10, 11, 11, 12, 12, 13, 14, 15
 };
 
-void ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(PDM_ODM_T pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(struct DM_ODM_T * pDM_Odm)
 {
-	PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
 
 	ODM_RT_TRACE(
 		pDM_Odm,
@@ -755,7 +755,7 @@ static u8 *Array_MP_8723B_TXPWR_LMT[] = {
 	"MKK", "2.4G", "40M", "HT", "2T", "14", "63"
 };
 
-void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(PDM_ODM_T pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(struct DM_ODM_T * pDM_Odm)
 {
 	u32 i = 0;
 	u8 **Array = Array_MP_8723B_TXPWR_LMT;
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
index 36a47437f974..9f86f199d4fd 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
@@ -15,7 +15,7 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_RadioA(/*  TC: Test Chip, MP: MP Chip */
-	PDM_ODM_T  pDM_Odm
+	struct DM_ODM_T *  pDM_Odm
 );
 
 /******************************************************************************
@@ -24,7 +24,7 @@ ODM_ReadAndConfig_MP_8723B_RadioA(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(/*  TC: Test Chip, MP: MP Chip */
-	PDM_ODM_T  pDM_Odm
+	struct DM_ODM_T *  pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_TxPowerTrack_SDIO(void);
 
@@ -34,7 +34,7 @@ u32 ODM_GetVersion_MP_8723B_TxPowerTrack_SDIO(void);
 
 void
 ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(/*  TC: Test Chip, MP: MP Chip */
-	PDM_ODM_T  pDM_Odm
+	struct DM_ODM_T *  pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_TXPWR_LMT(void);
 
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index 491bf735c6f1..80ae4d0933f4 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -23,7 +23,7 @@
 	} while (0)
 
 
-void ConfigureTxpowerTrack(PDM_ODM_T pDM_Odm, struct TXPWRTRACK_CFG * pConfig)
+void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pConfig)
 {
 	ConfigureTxpowerTrack_8723B(pConfig);
 }
@@ -36,7 +36,7 @@ void ConfigureTxpowerTrack(PDM_ODM_T pDM_Odm, struct TXPWRTRACK_CFG * pConfig)
 /*  NOTE: If Tx BB swing or Tx scaling is varified during run-time, still */
 /*        need to call this function. */
 /*  */
-void ODM_ClearTxPowerTrackingState(PDM_ODM_T pDM_Odm)
+void ODM_ClearTxPowerTrackingState(struct DM_ODM_T * pDM_Odm)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(pDM_Odm->Adapter);
 	u8 p = 0;
@@ -74,7 +74,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 {
 
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 	u8 ThermalValue = 0, delta, delta_LCK, delta_IQK, p = 0, i = 0;
 	u8 ThermalValue_AVG_count = 0;
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.h b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
index 5adccb981845..93659222d678 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
@@ -19,10 +19,10 @@ enum PWRTRACK_METHOD {
 	MIX_MODE
 };
 
-typedef void (*FuncSetPwr)(PDM_ODM_T, enum PWRTRACK_METHOD, u8, u8);
-typedef void (*FuncIQK)(PDM_ODM_T, u8, u8, u8);
-typedef void (*FuncLCK)(PDM_ODM_T);
-typedef void (*FuncSwing)(PDM_ODM_T, u8 **, u8 **, u8 **, u8 **);
+typedef void (*FuncSetPwr)(struct DM_ODM_T *, enum PWRTRACK_METHOD, u8, u8);
+typedef void (*FuncIQK)(struct DM_ODM_T *, u8, u8, u8);
+typedef void (*FuncLCK)(struct DM_ODM_T *);
+typedef void (*FuncSwing)(struct DM_ODM_T *, u8 **, u8 **, u8 **, u8 **);
 
 struct TXPWRTRACK_CFG {
 	u8 SwingTableSize_CCK;
@@ -37,10 +37,10 @@ struct TXPWRTRACK_CFG {
 	FuncSwing GetDeltaSwingTable;
 };
 
-void ConfigureTxpowerTrack(PDM_ODM_T pDM_Odm, struct TXPWRTRACK_CFG * pConfig);
+void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pConfig);
 
 
-void ODM_ClearTxPowerTrackingState(PDM_ODM_T pDM_Odm);
+void ODM_ClearTxPowerTrackingState(struct DM_ODM_T * pDM_Odm);
 
 void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter);
 
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index d8b3b2095544..dfff2bb56b63 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -54,7 +54,7 @@ static u8 DeltaSwingTableIdx_2GA_P_8188E[] = {
 
 
 static void setIqkMatrix_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u8 OFDM_index,
 	u8 RFPath,
 	s32 IqkResult_X,
@@ -135,7 +135,7 @@ static void setIqkMatrix_8723B(
 }
 
 
-static void setCCKFilterCoefficient(PDM_ODM_T pDM_Odm, u8 CCKSwingIndex)
+static void setCCKFilterCoefficient(struct DM_ODM_T * pDM_Odm, u8 CCKSwingIndex)
 {
 	if (!pDM_Odm->RFCalibrateInfo.bCCKinCH14) {
 		rtw_write8(pDM_Odm->Adapter, 0xa22, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][0]);
@@ -159,7 +159,7 @@ static void setCCKFilterCoefficient(PDM_ODM_T pDM_Odm, u8 CCKSwingIndex)
 }
 
 void DoIQK_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u8 DeltaThermalIndex,
 	u8 ThermalValue,
 	u8 Threshold
@@ -185,7 +185,7 @@ void DoIQK_8723B(
  *
  *---------------------------------------------------------------------------*/
 void ODM_TxPwrTrackSetPwr_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	enum PWRTRACK_METHOD Method,
 	u8 RFPath,
 	u8 ChannelMappedIndex
@@ -360,7 +360,7 @@ void ODM_TxPwrTrackSetPwr_8723B(
 }
 
 static void GetDeltaSwingTable_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u8 **TemperatureUP_A,
 	u8 **TemperatureDOWN_A,
 	u8 **TemperatureUP_B,
@@ -368,7 +368,7 @@ static void GetDeltaSwingTable_8723B(
 )
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
-	PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	u16 rate = *(pDM_Odm->pForcedDataRate);
 	u8 channel = pHalData->CurrentChannel;
@@ -437,7 +437,7 @@ static u8 phy_PathA_IQK_8723B(
 	u8 result = 0x00;
 
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T		pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;
 
 	/*  Save RF Path */
 	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord);
@@ -548,7 +548,7 @@ static u8 phy_PathA_RxIQK8723B(
 	u32 regEAC, regE94, regE9C, regEA4, u4tmp, tmp, Path_SEL_BB;
 	u8 result = 0x00;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 /* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A Rx IQK!\n")); */
 
@@ -762,7 +762,7 @@ static u8 phy_PathB_IQK_8723B(struct adapter *padapter)
 	u32 regEAC, regE94, regE9C, tmp, Path_SEL_BB/*, regEC4, regECC, Path_SEL_BB*/;
 	u8 result = 0x00;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path B IQK!\n"));
 
@@ -869,7 +869,7 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	u32 regE94, regE9C, regEA4, regEAC, u4tmp, tmp, Path_SEL_BB;
 	u8 result = 0x00;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 /* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B Rx IQK!\n")); */
 
@@ -1092,9 +1092,9 @@ static void _PHY_PathAFillIQKMatrix8723B(
 	u32 Oldval_0, X, TX0_A, reg;
 	s32 Y, TX0_C;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
-	PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path A IQ Calibration %s !\n", (bIQKOK)?"Success":"Failed"));
 
@@ -1172,9 +1172,9 @@ static void _PHY_PathBFillIQKMatrix8723B(
 	u32 Oldval_1, X, TX1_A, reg;
 	s32	Y, TX1_C;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
-	PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B IQ Calibration %s !\n", (bIQKOK)?"Success":"Failed"));
 
@@ -1247,10 +1247,10 @@ static void _PHY_PathBFillIQKMatrix8723B(
 /*  */
 /*  MP Already declare in odm.c */
 
-void ODM_SetIQCbyRFpath(PDM_ODM_T pDM_Odm, u32 RFpath)
+void ODM_SetIQCbyRFpath(struct DM_ODM_T * pDM_Odm, u32 RFpath)
 {
 
-	PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
 
 	if (
 		(pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC80][VAL] != 0x0) &&
@@ -1292,7 +1292,7 @@ static void _PHY_SaveADDARegisters8723B(
 {
 	u32 i;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 	if (!ODM_CheckPowerStatus(padapter))
 		return;
@@ -1310,7 +1310,7 @@ static void _PHY_SaveMACRegisters8723B(
 {
 	u32 i;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T		pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save MAC parameters.\n"));
 	for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++) {
@@ -1330,7 +1330,7 @@ static void _PHY_ReloadADDARegisters8723B(
 {
 	u32 i;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Reload ADDA power saving parameters !\n"));
 	for (i = 0 ; i < RegiesterNum; i++) {
@@ -1360,7 +1360,7 @@ static void _PHY_PathADDAOn8723B(
 	u32 pathOn;
 	u32 i;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("ADDA ON.\n"));
 
@@ -1384,7 +1384,7 @@ static void _PHY_MACSettingCalibration8723B(
 {
 	u32 i = 0;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("MAC settings for Calibration.\n"));
 
@@ -1489,7 +1489,7 @@ static void phy_IQCalibrate_8723B(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 	u32 i;
 	u8 PathAOK, PathBOK;
@@ -1697,7 +1697,7 @@ static void phy_IQCalibrate_8723B(
 }
 
 
-static void phy_LCCalibrate_8723B(PDM_ODM_T pDM_Odm, bool is2T)
+static void phy_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm, bool is2T)
 {
 	u8 tmpReg;
 	u32 RF_Amode = 0, RF_Bmode = 0, LC_Cal;
@@ -1784,7 +1784,7 @@ void PHY_IQCalibrate_8723B(
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 
 	s32 result[4][8];	/* last is final result */
 	u8 i, final_candidate;
@@ -1830,7 +1830,7 @@ void PHY_IQCalibrate_8723B(
 	if (bRestore) {
 		u32 offset, data;
 		u8 path, bResult = SUCCESS;
-		PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+		struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
 
 		path = (PHY_QueryBBReg(pDM_Odm->Adapter, rS0S1_PathSwitch, bMaskByte0) == 0x00) ? ODM_RF_PATH_A : ODM_RF_PATH_B;
 
@@ -2038,7 +2038,7 @@ void PHY_IQCalibrate_8723B(
 }
 
 
-void PHY_LCCalibrate_8723B(PDM_ODM_T pDM_Odm)
+void PHY_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm)
 {
 	bool		bSingleTone = false, bCarrierSuppression = false;
 	u32 		timeout = 2000, timecount = 0;
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
index c61d39acb6a4..80cb446db5fa 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
@@ -19,14 +19,14 @@
 void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG * pConfig);
 
 void DoIQK_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u8 DeltaThermalIndex,
 	u8 ThermalValue,
 	u8 Threshold
 );
 
 void ODM_TxPwrTrackSetPwr_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	enum PWRTRACK_METHOD Method,
 	u8 RFPath,
 	u8 ChannelMappedIndex
@@ -41,12 +41,12 @@ void PHY_IQCalibrate_8723B(
 	u8 RF_Path
 );
 
-void ODM_SetIQCbyRFpath(PDM_ODM_T pDM_Odm, u32 RFpath);
+void ODM_SetIQCbyRFpath(struct DM_ODM_T * pDM_Odm, u32 RFpath);
 
 /*  */
 /*  LC calibrate */
 /*  */
-void PHY_LCCalibrate_8723B(PDM_ODM_T pDM_Odm);
+void PHY_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm);
 
 /*  */
 /*  AP calibrate */
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 173ccaba2537..34b8354dbc03 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1008,7 +1008,7 @@ void hw_var_port_switch(struct adapter *adapter)
 void SetHwReg(struct adapter *adapter, u8 variable, u8 *val)
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	DM_ODM_T *odm = &(hal_data->odmpriv);
+	struct DM_ODM_T *odm = &(hal_data->odmpriv);
 
 	switch (variable) {
 	case HW_VAR_PORT_SWITCH:
@@ -1088,7 +1088,7 @@ void SetHwReg(struct adapter *adapter, u8 variable, u8 *val)
 void GetHwReg(struct adapter *adapter, u8 variable, u8 *val)
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	DM_ODM_T *odm = &(hal_data->odmpriv);
+	struct DM_ODM_T *odm = &(hal_data->odmpriv);
 
 	switch (variable) {
 	case HW_VAR_BASIC_RATE:
@@ -1119,7 +1119,7 @@ u8 SetHalDefVar(
 )
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	DM_ODM_T *odm = &(hal_data->odmpriv);
+	struct DM_ODM_T *odm = &(hal_data->odmpriv);
 	u8 bResult = _SUCCESS;
 
 	switch (variable) {
@@ -1204,7 +1204,7 @@ u8 GetHalDefVar(
 )
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
-	DM_ODM_T *odm = &(hal_data->odmpriv);
+	struct DM_ODM_T *odm = &(hal_data->odmpriv);
 	u8 bResult = _SUCCESS;
 
 	switch (variable) {
@@ -1289,7 +1289,7 @@ void SetHalODMVar(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	PDM_ODM_T podmpriv = &pHalData->odmpriv;
+	struct DM_ODM_T * podmpriv = &pHalData->odmpriv;
 	/* _irqL irqL; */
 	switch (eVariable) {
 	case HAL_ODM_STA_INFO:
diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 10250642d30a..2bf4689dc08e 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -270,7 +270,7 @@ u8 PHY_GetRateSectionIndexOfTxPowerByRate(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 	u8	index = 0;
 
 	if (pDM_Odm->PhyRegPgVersion == 0) {
@@ -795,7 +795,7 @@ void PHY_StoreTxPowerByRate(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T		pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;
 
 	if (pDM_Odm->PhyRegPgVersion > 0)
 		PHY_StoreTxPowerByRateNew(padapter, Band, RfPath, TxNum, RegAddr, BitMask, Data);
@@ -1188,7 +1188,7 @@ u8 PHY_GetTxPowerIndexBase(
 s8 PHY_GetTxPowerTrackingOffset(struct adapter *padapter, u8 RFPath, u8 Rate)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 	s8 offset = 0;
 
 	if (pDM_Odm->RFCalibrateInfo.TxPowerTrackControl  == false)
diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index 5e432f1bc150..4c8f86fd22a3 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -282,13 +282,13 @@ u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE] = {
 /*  Local Function predefine. */
 
 /* START------------COMMON INFO RELATED--------------- */
-void odm_CommonInfoSelfInit(PDM_ODM_T pDM_Odm);
+void odm_CommonInfoSelfInit(struct DM_ODM_T * pDM_Odm);
 
-void odm_CommonInfoSelfUpdate(PDM_ODM_T pDM_Odm);
+void odm_CommonInfoSelfUpdate(struct DM_ODM_T * pDM_Odm);
 
-void odm_CmnInfoInit_Debug(PDM_ODM_T pDM_Odm);
+void odm_CmnInfoInit_Debug(struct DM_ODM_T * pDM_Odm);
 
-void odm_BasicDbgMessage(PDM_ODM_T pDM_Odm);
+void odm_BasicDbgMessage(struct DM_ODM_T * pDM_Odm);
 
 /* END------------COMMON INFO RELATED--------------- */
 
@@ -302,17 +302,17 @@ void odm_BasicDbgMessage(PDM_ODM_T pDM_Odm);
 /* Remove BB power Saving by YuChen */
 /* END---------BB POWER SAVE----------------------- */
 
-void odm_RefreshRateAdaptiveMaskCE(PDM_ODM_T pDM_Odm);
+void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T * pDM_Odm);
 
 /* Remove by YuChen */
 
-void odm_RSSIMonitorInit(PDM_ODM_T pDM_Odm);
+void odm_RSSIMonitorInit(struct DM_ODM_T * pDM_Odm);
 
-void odm_RSSIMonitorCheckCE(PDM_ODM_T pDM_Odm);
+void odm_RSSIMonitorCheckCE(struct DM_ODM_T * pDM_Odm);
 
-void odm_RSSIMonitorCheck(PDM_ODM_T pDM_Odm);
+void odm_RSSIMonitorCheck(struct DM_ODM_T * pDM_Odm);
 
-void odm_SwAntDetectInit(PDM_ODM_T pDM_Odm);
+void odm_SwAntDetectInit(struct DM_ODM_T * pDM_Odm);
 
 void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
 
@@ -320,14 +320,14 @@ void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
 
 void odm_GlobalAdapterCheck(void);
 
-void odm_RefreshRateAdaptiveMask(PDM_ODM_T pDM_Odm);
+void odm_RefreshRateAdaptiveMask(struct DM_ODM_T * pDM_Odm);
 
-void ODM_TXPowerTrackingCheck(PDM_ODM_T pDM_Odm);
+void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm);
 
-void odm_RateAdaptiveMaskInit(PDM_ODM_T pDM_Odm);
+void odm_RateAdaptiveMaskInit(struct DM_ODM_T * pDM_Odm);
 
 
-void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm);
+void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm);
 
 /* Remove Edca by Yu Chen */
 
@@ -335,10 +335,10 @@ void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm);
 #define RxDefaultAnt1		0x65a9
 #define RxDefaultAnt2		0x569a
 
-void odm_InitHybridAntDiv(PDM_ODM_T pDM_Odm);
+void odm_InitHybridAntDiv(struct DM_ODM_T * pDM_Odm);
 
 bool odm_StaDefAntSel(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u32 OFDM_Ant1_Cnt,
 	u32 OFDM_Ant2_Cnt,
 	u32 CCK_Ant1_Cnt,
@@ -346,11 +346,11 @@ bool odm_StaDefAntSel(
 	u8 *pDefAnt
 );
 
-void odm_SetRxIdleAnt(PDM_ODM_T pDM_Odm, u8 Ant, bool bDualPath);
+void odm_SetRxIdleAnt(struct DM_ODM_T * pDM_Odm, u8 Ant, bool bDualPath);
 
 
 
-void odm_HwAntDiv(PDM_ODM_T pDM_Odm);
+void odm_HwAntDiv(struct DM_ODM_T * pDM_Odm);
 
 
 /*  */
@@ -360,7 +360,7 @@ void odm_HwAntDiv(PDM_ODM_T pDM_Odm);
 /*  */
 /*  2011/09/21 MH Add to describe different team necessary resource allocate?? */
 /*  */
-void ODM_DMInit(PDM_ODM_T pDM_Odm)
+void ODM_DMInit(struct DM_ODM_T * pDM_Odm)
 {
 
 	odm_CommonInfoSelfInit(pDM_Odm);
@@ -390,7 +390,7 @@ void ODM_DMInit(PDM_ODM_T pDM_Odm)
 /*  You can not add any dummy function here, be care, you can only use DM structure */
 /*  to perform any new ODM_DM. */
 /*  */
-void ODM_DMWatchdog(PDM_ODM_T pDM_Odm)
+void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm)
 {
 	odm_CommonInfoSelfUpdate(pDM_Odm);
 	odm_BasicDbgMessage(pDM_Odm);
@@ -445,7 +445,7 @@ void ODM_DMWatchdog(PDM_ODM_T pDM_Odm)
 /*  */
 /*  Init /.. Fixed HW value. Only init time. */
 /*  */
-void ODM_CmnInfoInit(PDM_ODM_T pDM_Odm, ODM_CMNINFO_E CmnInfo, u32 Value)
+void ODM_CmnInfoInit(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value)
 {
 	/*  */
 	/*  This section is used for init value */
@@ -519,16 +519,16 @@ void ODM_CmnInfoInit(PDM_ODM_T pDM_Odm, ODM_CMNINFO_E CmnInfo, u32 Value)
 		break;
 
 	case ODM_CMNINFO_GPA:
-		pDM_Odm->TypeGPA = (ODM_TYPE_GPA_E)Value;
+		pDM_Odm->TypeGPA = (enum ODM_TYPE_GPA_E)Value;
 		break;
 	case ODM_CMNINFO_APA:
-		pDM_Odm->TypeAPA = (ODM_TYPE_APA_E)Value;
+		pDM_Odm->TypeAPA = (enum ODM_TYPE_APA_E)Value;
 		break;
 	case ODM_CMNINFO_GLNA:
-		pDM_Odm->TypeGLNA = (ODM_TYPE_GLNA_E)Value;
+		pDM_Odm->TypeGLNA = (enum ODM_TYPE_GLNA_E)Value;
 		break;
 	case ODM_CMNINFO_ALNA:
-		pDM_Odm->TypeALNA = (ODM_TYPE_ALNA_E)Value;
+		pDM_Odm->TypeALNA = (enum ODM_TYPE_ALNA_E)Value;
 		break;
 
 	case ODM_CMNINFO_EXT_TRSW:
@@ -557,7 +557,7 @@ void ODM_CmnInfoInit(PDM_ODM_T pDM_Odm, ODM_CMNINFO_E CmnInfo, u32 Value)
 }
 
 
-void ODM_CmnInfoHook(PDM_ODM_T pDM_Odm, ODM_CMNINFO_E CmnInfo, void *pValue)
+void ODM_CmnInfoHook(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue)
 {
 	/*  */
 	/*  Hook call by reference pointer. */
@@ -686,8 +686,8 @@ void ODM_CmnInfoHook(PDM_ODM_T pDM_Odm, ODM_CMNINFO_E CmnInfo, void *pValue)
 
 
 void ODM_CmnInfoPtrArrayHook(
-	PDM_ODM_T pDM_Odm,
-	ODM_CMNINFO_E CmnInfo,
+	struct DM_ODM_T * pDM_Odm,
+	enum ODM_CMNINFO_E CmnInfo,
 	u16 Index,
 	void *pValue
 )
@@ -714,7 +714,7 @@ void ODM_CmnInfoPtrArrayHook(
 /*  */
 /*  Update Band/CHannel/.. The values are dynamic but non-per-packet. */
 /*  */
-void ODM_CmnInfoUpdate(PDM_ODM_T pDM_Odm, u32 CmnInfo, u64 Value)
+void ODM_CmnInfoUpdate(struct DM_ODM_T * pDM_Odm, u32 CmnInfo, u64 Value)
 {
 	/*  */
 	/*  This init variable may be changed in run time. */
@@ -828,7 +828,7 @@ void ODM_CmnInfoUpdate(PDM_ODM_T pDM_Odm, u32 CmnInfo, u64 Value)
 
 }
 
-void odm_CommonInfoSelfInit(PDM_ODM_T pDM_Odm)
+void odm_CommonInfoSelfInit(struct DM_ODM_T * pDM_Odm)
 {
 	pDM_Odm->bCckHighPower = (bool) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(CCK_RPT_FORMAT, pDM_Odm), ODM_BIT(CCK_RPT_FORMAT, pDM_Odm));
 	pDM_Odm->RFPathRxEnable = (u8) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(BB_RX_PATH, pDM_Odm), ODM_BIT(BB_RX_PATH, pDM_Odm));
@@ -838,7 +838,7 @@ void odm_CommonInfoSelfInit(PDM_ODM_T pDM_Odm)
 	pDM_Odm->TxRate = 0xFF;
 }
 
-void odm_CommonInfoSelfUpdate(PDM_ODM_T pDM_Odm)
+void odm_CommonInfoSelfUpdate(struct DM_ODM_T * pDM_Odm)
 {
 	u8 EntryCnt = 0;
 	u8 i;
@@ -864,7 +864,7 @@ void odm_CommonInfoSelfUpdate(PDM_ODM_T pDM_Odm)
 		pDM_Odm->bOneEntryOnly = false;
 }
 
-void odm_CmnInfoInit_Debug(PDM_ODM_T pDM_Odm)
+void odm_CmnInfoInit_Debug(struct DM_ODM_T * pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoInit_Debug ==>\n"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportPlatform =%d\n", pDM_Odm->SupportPlatform));
@@ -885,7 +885,7 @@ void odm_CmnInfoInit_Debug(PDM_ODM_T pDM_Odm)
 
 }
 
-void odm_BasicDbgMessage(PDM_ODM_T pDM_Odm)
+void odm_BasicDbgMessage(struct DM_ODM_T * pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_BasicDbgMsg ==>\n"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bLinked = %d, RSSI_Min = %d,\n",
@@ -932,9 +932,9 @@ void odm_BasicDbgMessage(PDM_ODM_T pDM_Odm)
 /* 3 Rate Adaptive */
 /* 3 ============================================================ */
 
-void odm_RateAdaptiveMaskInit(PDM_ODM_T pDM_Odm)
+void odm_RateAdaptiveMaskInit(struct DM_ODM_T * pDM_Odm)
 {
-	PODM_RATE_ADAPTIVE pOdmRA = &pDM_Odm->RateAdaptive;
+	struct ODM_RATE_ADAPTIVE * pOdmRA = &pDM_Odm->RateAdaptive;
 
 	pOdmRA->Type = DM_Type_ByDriver;
 	if (pOdmRA->Type == DM_Type_ByDriver)
@@ -950,7 +950,7 @@ void odm_RateAdaptiveMaskInit(PDM_ODM_T pDM_Odm)
 }
 
 u32 ODM_Get_Rate_Bitmap(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u32 macid,
 	u32 ra_mask,
 	u8 rssi_level
@@ -1080,7 +1080,7 @@ u32 ODM_Get_Rate_Bitmap(
 *
 * --------------------------------------------------------------------------
 */
-void odm_RefreshRateAdaptiveMask(PDM_ODM_T pDM_Odm)
+void odm_RefreshRateAdaptiveMask(struct DM_ODM_T * pDM_Odm)
 {
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask()---------->\n"));
@@ -1091,7 +1091,7 @@ void odm_RefreshRateAdaptiveMask(PDM_ODM_T pDM_Odm)
 	odm_RefreshRateAdaptiveMaskCE(pDM_Odm);
 }
 
-void odm_RefreshRateAdaptiveMaskCE(PDM_ODM_T pDM_Odm)
+void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T * pDM_Odm)
 {
 	u8 i;
 	struct adapter *padapter =  pDM_Odm->Adapter;
@@ -1128,13 +1128,13 @@ void odm_RefreshRateAdaptiveMaskCE(PDM_ODM_T pDM_Odm)
 /*  Return Value: bool */
 /*  - true: RATRState is changed. */
 bool ODM_RAStateCheck(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	s32 RSSI,
 	bool bForceUpdate,
 	u8 *pRATRState
 )
 {
-	PODM_RATE_ADAPTIVE pRA = &pDM_Odm->RateAdaptive;
+	struct ODM_RATE_ADAPTIVE * pRA = &pDM_Odm->RateAdaptive;
 	const u8 GoUpGap = 5;
 	u8 HighRSSIThreshForRA = pRA->HighRSSIThresh;
 	u8 LowRSSIThreshForRA = pRA->LowRSSIThresh;
@@ -1193,15 +1193,15 @@ bool ODM_RAStateCheck(
 /* 3 RSSI Monitor */
 /* 3 ============================================================ */
 
-void odm_RSSIMonitorInit(PDM_ODM_T pDM_Odm)
+void odm_RSSIMonitorInit(struct DM_ODM_T * pDM_Odm)
 {
-	pRA_T pRA_Table = &pDM_Odm->DM_RA_Table;
+	struct RA_T * pRA_Table = &pDM_Odm->DM_RA_Table;
 
 	pRA_Table->firstconnect = false;
 
 }
 
-void odm_RSSIMonitorCheck(PDM_ODM_T pDM_Odm)
+void odm_RSSIMonitorCheck(struct DM_ODM_T * pDM_Odm)
 {
 	if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
 		return;
@@ -1214,7 +1214,7 @@ static void FindMinimumRSSI(struct adapter *padapter)
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	PDM_ODM_T pDM_Odm = &(pHalData->odmpriv);
+	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);
 
 	/* 1 1.Determine the minimum RSSI */
 
@@ -1231,7 +1231,7 @@ static void FindMinimumRSSI(struct adapter *padapter)
 	/* ODM_RT_TRACE(pDM_Odm, COMP_DIG, DBG_LOUD, ("MinUndecoratedPWDBForDM =%d\n", pHalData->MinUndecoratedPWDBForDM)); */
 }
 
-void odm_RSSIMonitorCheckCE(PDM_ODM_T pDM_Odm)
+void odm_RSSIMonitorCheckCE(struct DM_ODM_T * pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
@@ -1240,7 +1240,7 @@ void odm_RSSIMonitorCheckCE(PDM_ODM_T pDM_Odm)
 	int tmpEntryMaxPWDB = 0, tmpEntryMinPWDB = 0xff;
 	u8 sta_cnt = 0;
 	u32 PWDB_rssi[NUM_STA] = {0};/* 0~15]:MACID, [16~31]:PWDB_rssi */
-	pRA_T pRA_Table = &pDM_Odm->DM_RA_Table;
+	struct RA_T * pRA_Table = &pDM_Odm->DM_RA_Table;
 
 	if (pDM_Odm->bLinked != true)
 		return;
@@ -1303,7 +1303,7 @@ void odm_RSSIMonitorCheckCE(PDM_ODM_T pDM_Odm)
 /* 3 Tx Power Tracking */
 /* 3 ============================================================ */
 
-static u8 getSwingIndex(PDM_ODM_T pDM_Odm)
+static u8 getSwingIndex(struct DM_ODM_T * pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	u8 i = 0;
@@ -1327,7 +1327,7 @@ static u8 getSwingIndex(PDM_ODM_T pDM_Odm)
 	return i;
 }
 
-void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm)
+void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm)
 {
 	u8 defaultSwingIndex = getSwingIndex(pDM_Odm);
 	u8 p = 0;
@@ -1371,7 +1371,7 @@ void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm)
 
 }
 
-void ODM_TXPowerTrackingCheck(PDM_ODM_T pDM_Odm)
+void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 
@@ -1395,9 +1395,9 @@ void ODM_TXPowerTrackingCheck(PDM_ODM_T pDM_Odm)
 /* 3 ============================================================ */
 /* 3 SW Antenna Diversity */
 /* 3 ============================================================ */
-void odm_SwAntDetectInit(PDM_ODM_T pDM_Odm)
+void odm_SwAntDetectInit(struct DM_ODM_T * pDM_Odm)
 {
-	pSWAT_T pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
+	struct SWAT_T * pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
 
 	pDM_SWAT_Table->SWAS_NoLink_BK_Reg92c = rtw_read32(pDM_Odm->Adapter, rDPDT_control);
 	pDM_SWAT_Table->PreAntenna = MAIN_ANT;
diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 16e8f66a3171..494792162980 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -92,11 +92,11 @@ struct dynamic_primary_CCA {
 	u8 MF_state;
 };
 
-typedef struct _Rate_Adaptive_Table_ {
+struct RA_T {
 	u8 firstconnect;
-} RA_T, *pRA_T;
+};
 
-typedef struct _RX_High_Power_ {
+struct RXHP_T {
 	u8 RXHP_flag;
 	u8 PSD_func_trigger;
 	u8 PSD_bitmap_RXHP[80];
@@ -108,7 +108,7 @@ typedef struct _RX_High_Power_ {
 	bool RXHP_enable;
 	u8 TP_Mode;
 	RT_TIMER PSDTimer;
-} RXHP_T, *pRXHP_T;
+};
 
 #define ASSOCIATE_ENTRY_NUM					32 /*  Max size of AsocEntry[]. */
 #define	ODM_ASSOCIATE_ENTRY_NUM				ASSOCIATE_ENTRY_NUM
@@ -126,7 +126,7 @@ typedef struct _RX_High_Power_ {
 #define	TRAFFIC_HIGH	1
 #define	TRAFFIC_UltraLOW	2
 
-typedef struct _SW_Antenna_Switch_ {
+struct SWAT_T { /* _SW_Antenna_Switch_ */
 	u8 Double_chk_flag;
 	u8 try_flag;
 	s32 PreRSSI;
@@ -173,12 +173,12 @@ typedef struct _SW_Antenna_Switch_ {
 	RT_TIMER SwAntennaSwitchTimer_8723B;
 	u32 PktCnt_SWAntDivByCtrlFrame;
 	bool bSWAntDivByCtrlFrame;
-} SWAT_T, *pSWAT_T;
+};
 
 /* Remove Edca by YuChen */
 
 
-typedef struct _ODM_RATE_ADAPTIVE {
+struct ODM_RATE_ADAPTIVE {
 	u8 Type;				/*  DM_Type_ByFW/DM_Type_ByDriver */
 	u8 LdpcThres;			/*  if RSSI > LdpcThres => switch from LPDC to BCC */
 	bool bUseLdpc;
@@ -187,7 +187,7 @@ typedef struct _ODM_RATE_ADAPTIVE {
 	u8 LowRSSIThresh;		/*  if RSSI <= LowRSSIThresh	=> RATRState is DM_RATR_STA_LOW */
 	u8 RATRState;			/*  Current RSSI level, DM_RATR_STA_HIGH/DM_RATR_STA_MIDDLE/DM_RATR_STA_LOW */
 
-} ODM_RATE_ADAPTIVE, *PODM_RATE_ADAPTIVE;
+};
 
 #define IQK_MAC_REG_NUM		4
 #define IQK_ADDA_REG_NUM		16
@@ -277,7 +277,7 @@ struct odm_mac_status_info {
 	u8 test;
 };
 
-typedef enum tag_Dynamic_ODM_Support_Ability_Type {
+enum ODM_Ability_E { /* tag_Dynamic_ODM_Support_Ability_Type */
 	/*  BB Team */
 	ODM_DIG				= 0x00000001,
 	ODM_HIGH_POWER		= 0x00000002,
@@ -291,13 +291,13 @@ typedef enum tag_Dynamic_ODM_Support_Ability_Type {
 	ODM_2TPATHDIV		= 0x00000200,
 	ODM_1TPATHDIV		= 0x00000400,
 	ODM_PSD2AFH			= 0x00000800
-} ODM_Ability_E;
+};
 
 /*  */
 /*  2011/20/20 MH For MP driver RT_WLAN_STA =  STA_INFO_T */
 /*  Please declare below ODM relative info in your STA info structure. */
 /*  */
-typedef struct _ODM_STA_INFO {
+struct ODM_STA_INFO_T {
 	/*  Driver Write */
 	bool bUsed;				/*  record the sta status link or not? */
 	/* u8 WirelessMode;		 */
@@ -320,12 +320,12 @@ typedef struct _ODM_STA_INFO {
 	/*  */
 	/*  ODM Write Wilson will handle this part(said by Luke.Lee) */
 	/* TX_RPT_T		pTxRpt;			Define in IC folder. Move lower layer. */
-} ODM_STA_INFO_T, *PODM_STA_INFO_T;
+};
 
 /*  */
 /*  2011/10/20 MH Define Common info enum for all team. */
 /*  */
-typedef enum _ODM_Common_Info_Definition {
+enum ODM_CMNINFO_E {
 	/*  Fixed value: */
 
 	/* HOOK BEFORE REG INIT----------- */
@@ -412,10 +412,10 @@ typedef enum _ODM_Common_Info_Definition {
 	ODM_CMNINFO_MAC_STATUS,
 
 	ODM_CMNINFO_MAX,
-} ODM_CMNINFO_E;
+};
 
 /*  2011/10/20 MH Define ODM support ability.  ODM_CMNINFO_ABILITY */
-typedef enum _ODM_Support_Ability_Definition {
+enum ODM_ABILITY_E { /* _ODM_Support_Ability_Definition */
 	/*  */
 	/*  BB ODM section BIT 0-15 */
 	/*  */
@@ -443,21 +443,21 @@ typedef enum _ODM_Support_Ability_Definition {
 	ODM_RF_TX_PWR_TRACK		= BIT24,
 	ODM_RF_RX_GAIN_TRACK	= BIT25,
 	ODM_RF_CALIBRATION		= BIT26,
-} ODM_ABILITY_E;
+};
 
 /* 	ODM_CMNINFO_INTERFACE */
-typedef enum tag_ODM_Support_Interface_Definition {
+enum ODM_INTERFACE_E { /* tag_ODM_Support_Interface_Definition */
 	ODM_ITRF_SDIO	=	0x4,
 	ODM_ITRF_ALL	=	0x7,
-} ODM_INTERFACE_E;
+};
 
 /*  ODM_CMNINFO_IC_TYPE */
-typedef enum tag_ODM_Support_IC_Type_Definition {
+enum ODM_IC_TYPE_E { /* tag_ODM_Support_IC_Type_Definition */
 	ODM_RTL8723B	=	BIT8,
-} ODM_IC_TYPE_E;
+};
 
 /* ODM_CMNINFO_CUT_VER */
-typedef enum tag_ODM_Cut_Version_Definition {
+enum ODM_CUT_VERSION_E { /* tag_ODM_Cut_Version_Definition */
 	ODM_CUT_A		=	0,
 	ODM_CUT_B		=	1,
 	ODM_CUT_C		=	2,
@@ -469,19 +469,19 @@ typedef enum tag_ODM_Cut_Version_Definition {
 	ODM_CUT_J		=	9,
 	ODM_CUT_K		=	10,
 	ODM_CUT_TEST	=	15,
-} ODM_CUT_VERSION_E;
+};
 
 /*  ODM_CMNINFO_FAB_VER */
-typedef enum tag_ODM_Fab_Version_Definition {
+enum ODM_FAB_E { /* tag_ODM_Fab_Version_Definition */
 	ODM_TSMC	=	0,
 	ODM_UMC		=	1,
-} ODM_FAB_E;
+};
 
 /*  ODM_CMNINFO_RF_TYPE */
 /*  */
 /*  For example 1T2R (A+AB = BIT0|BIT4|BIT5) */
 /*  */
-typedef enum tag_ODM_RF_Path_Bit_Definition {
+enum ODM_RF_PATH_E { /* tag_ODM_RF_Path_Bit_Definition */
 	ODM_RF_TX_A	=	BIT0,
 	ODM_RF_TX_B	=	BIT1,
 	ODM_RF_TX_C	=	BIT2,
@@ -490,9 +490,9 @@ typedef enum tag_ODM_RF_Path_Bit_Definition {
 	ODM_RF_RX_B	=	BIT5,
 	ODM_RF_RX_C	=	BIT6,
 	ODM_RF_RX_D	=	BIT7,
-} ODM_RF_PATH_E;
+};
 
-typedef enum tag_ODM_RF_Type_Definition {
+enum ODM_RF_TYPE_E { /* tag_ODM_RF_Type_Definition */
 	ODM_1T1R	=	0,
 	ODM_1T2R	=	1,
 	ODM_2T2R	=	2,
@@ -501,7 +501,7 @@ typedef enum tag_ODM_RF_Type_Definition {
 	ODM_3T3R	=	5,
 	ODM_3T4R	=	6,
 	ODM_4T4R	=	7,
-} ODM_RF_TYPE_E;
+};
 
 /*  */
 /*  ODM Dynamic common info value definition */
@@ -513,21 +513,21 @@ typedef enum tag_ODM_RF_Type_Definition {
 /* 	DUALMAC_SINGLEPHY, */
 /* MACPHY_MODE_8192D,*PMACPHY_MODE_8192D; */
 /*  Above is the original define in MP driver. Please use the same define. THX. */
-typedef enum tag_ODM_MAC_PHY_Mode_Definition {
+enum ODM_MAC_PHY_MODE_E { /* tag_ODM_MAC_PHY_Mode_Definition */
 	ODM_SMSP	= 0,
 	ODM_DMSP	= 1,
 	ODM_DMDP	= 2,
-} ODM_MAC_PHY_MODE_E;
+};
 
-typedef enum tag_BT_Coexist_Definition {
+enum ODM_BT_COEXIST_E { /* tag_BT_Coexist_Definition */
 	ODM_BT_BUSY		= 1,
 	ODM_BT_ON		= 2,
 	ODM_BT_OFF		= 3,
 	ODM_BT_NONE		= 4,
-} ODM_BT_COEXIST_E;
+};
 
 /*  ODM_CMNINFO_OP_MODE */
-typedef enum tag_Operation_Mode_Definition {
+enum ODM_OPERATION_MODE_E { /* tag_Operation_Mode_Definition */
 	ODM_NO_LINK      = BIT0,
 	ODM_LINK         = BIT1,
 	ODM_SCAN         = BIT2,
@@ -537,10 +537,10 @@ typedef enum tag_Operation_Mode_Definition {
 	ODM_AD_HOC       = BIT6,
 	ODM_WIFI_DIRECT  = BIT7,
 	ODM_WIFI_DISPLAY = BIT8,
-} ODM_OPERATION_MODE_E;
+};
 
 /*  ODM_CMNINFO_WM_MODE */
-typedef enum tag_Wireless_Mode_Definition {
+enum ODM_WIRELESS_MODE_E { /* tag_Wireless_Mode_Definition */
 	ODM_WM_UNKNOWN    = 0x0,
 	ODM_WM_B          = BIT0,
 	ODM_WM_G          = BIT1,
@@ -549,25 +549,25 @@ typedef enum tag_Wireless_Mode_Definition {
 	ODM_WM_N5G        = BIT4,
 	ODM_WM_AUTO       = BIT5,
 	ODM_WM_AC         = BIT6,
-} ODM_WIRELESS_MODE_E;
+};
 
 /*  ODM_CMNINFO_BAND */
-typedef enum tag_Band_Type_Definition {
+enum ODM_BAND_TYPE_E { /* tag_Band_Type_Definition */
 	ODM_BAND_2_4G = 0,
 	ODM_BAND_5G,
 	ODM_BAND_ON_BOTH,
 	ODM_BANDMAX
-} ODM_BAND_TYPE_E;
+};
 
 /*  ODM_CMNINFO_SEC_CHNL_OFFSET */
-typedef enum tag_Secondary_Channel_Offset_Definition {
+enum ODM_SEC_CHNL_OFFSET_E { /* tag_Secondary_Channel_Offset_Definition */
 	ODM_DONT_CARE	= 0,
 	ODM_BELOW		= 1,
 	ODM_ABOVE		= 2
-} ODM_SEC_CHNL_OFFSET_E;
+};
 
 /*  ODM_CMNINFO_SEC_MODE */
-typedef enum tag_Security_Definition {
+enum ODM_SECURITY_E { /* tag_Security_Definition */
 	ODM_SEC_OPEN		= 0,
 	ODM_SEC_WEP40		= 1,
 	ODM_SEC_TKIP		= 2,
@@ -576,21 +576,21 @@ typedef enum tag_Security_Definition {
 	ODM_SEC_WEP104		= 5,
 	ODM_WEP_WPA_MIXED	= 6, /*  WEP + WPA */
 	ODM_SEC_SMS4		= 7,
-} ODM_SECURITY_E;
+};
 
 /*  ODM_CMNINFO_BW */
-typedef enum tag_Bandwidth_Definition {
+enum ODM_BW_E { /* tag_Bandwidth_Definition */
 	ODM_BW20M		= 0,
 	ODM_BW40M		= 1,
 	ODM_BW80M		= 2,
 	ODM_BW160M		= 3,
 	ODM_BW10M		= 4,
-} ODM_BW_E;
+};
 
 /*  ODM_CMNINFO_BOARD_TYPE */
 /*  For non-AC-series IC , ODM_BOARD_5G_EXT_PA and ODM_BOARD_5G_EXT_LNA are ignored */
 /*  For AC-series IC, external PA & LNA can be indivisuallly added on 2.4G and/or 5G */
-typedef enum tag_Board_Definition {
+enum ODM_BOARD_TYPE_E { /* tag_Board_Definition */
 	ODM_BOARD_DEFAULT    = 0,      /*  The DEFAULT case. */
 	ODM_BOARD_MINICARD   = BIT(0), /*  0 = non-mini card, 1 = mini card. */
 	ODM_BOARD_SLIM       = BIT(1), /*  0 = non-slim card, 1 = slim card */
@@ -600,47 +600,47 @@ typedef enum tag_Board_Definition {
 	ODM_BOARD_EXT_TRSW   = BIT(5), /*  0 = no ext-TRSW, 1 = existing ext-TRSW */
 	ODM_BOARD_EXT_PA_5G  = BIT(6), /*  0 = no 5G ext-PA, 1 = existing 5G ext-PA */
 	ODM_BOARD_EXT_LNA_5G = BIT(7), /*  0 = no 5G ext-LNA, 1 = existing 5G ext-LNA */
-} ODM_BOARD_TYPE_E;
+};
 
-typedef enum tag_ODM_Package_Definition {
+enum ODM_Package_TYPE_E { /* tag_ODM_Package_Definition */
 	ODM_PACKAGE_DEFAULT      = 0,
 	ODM_PACKAGE_QFN68        = BIT(0),
 	ODM_PACKAGE_TFBGA90      = BIT(1),
 	ODM_PACKAGE_TFBGA79      = BIT(2),
-} ODM_Package_TYPE_E;
+};
 
-typedef enum tag_ODM_TYPE_GPA_Definition {
+enum ODM_TYPE_GPA_E { /* tag_ODM_TYPE_GPA_Definition */
 	TYPE_GPA0 = 0,
 	TYPE_GPA1 = BIT(1)|BIT(0)
-} ODM_TYPE_GPA_E;
+};
 
-typedef enum tag_ODM_TYPE_APA_Definition {
+enum ODM_TYPE_APA_E { /* tag_ODM_TYPE_APA_Definition */
 	TYPE_APA0 = 0,
 	TYPE_APA1 = BIT(1)|BIT(0)
-} ODM_TYPE_APA_E;
+};
 
-typedef enum tag_ODM_TYPE_GLNA_Definition {
+enum ODM_TYPE_GLNA_E { /* tag_ODM_TYPE_GLNA_Definition */
 	TYPE_GLNA0 = 0,
 	TYPE_GLNA1 = BIT(2)|BIT(0),
 	TYPE_GLNA2 = BIT(3)|BIT(1),
 	TYPE_GLNA3 = BIT(3)|BIT(2)|BIT(1)|BIT(0)
-} ODM_TYPE_GLNA_E;
+};
 
-typedef enum tag_ODM_TYPE_ALNA_Definition {
+enum ODM_TYPE_ALNA_E { /* tag_ODM_TYPE_ALNA_Definition */
 	TYPE_ALNA0 = 0,
 	TYPE_ALNA1 = BIT(2)|BIT(0),
 	TYPE_ALNA2 = BIT(3)|BIT(1),
 	TYPE_ALNA3 = BIT(3)|BIT(2)|BIT(1)|BIT(0)
-} ODM_TYPE_ALNA_E;
+};
 
 /*  ODM_CMNINFO_ONE_PATH_CCA */
-typedef enum tag_CCA_Path {
+enum ODM_CCA_PATH_E { /* tag_CCA_Path */
 	ODM_CCA_2R			= 0,
 	ODM_CCA_1R_A		= 1,
 	ODM_CCA_1R_B		= 2,
-} ODM_CCA_PATH_E;
+};
 
-typedef struct _ODM_RA_Info_ {
+struct ODM_RA_INFO_T { /* _ODM_RA_Info_ */
 	u8 RateID;
 	u32 RateMask;
 	u32 RAUseRate;
@@ -670,17 +670,17 @@ typedef struct _ODM_RA_Info_ {
 	u8 PTModeSS;  /*  decide whitch rate should do PT */
 	u8 RAstage;  /*  StageRA, decide how many times RA will be done between PT */
 	u8 PTSmoothFactor;
-} ODM_RA_INFO_T, *PODM_RA_INFO_T;
+};
 
-typedef struct _IQK_MATRIX_REGS_SETTING {
+struct IQK_MATRIX_REGS_SETTING { /* _IQK_MATRIX_REGS_SETTING */
 	bool bIQKDone;
 	s32 Value[3][IQK_Matrix_REG_NUM];
 	bool bBWIqkResultSaved[3];
-} IQK_MATRIX_REGS_SETTING, *PIQK_MATRIX_REGS_SETTING;
+};
 
 /* Remove PATHDIV_PARA struct to odm_PathDiv.h */
 
-typedef struct ODM_RF_Calibration_Structure {
+struct ODM_RF_CAL_T { /* ODM_RF_Calibration_Structure */
 	/* for tx power tracking */
 
 	u32 RegA24; /*  for TempCCK */
@@ -724,7 +724,7 @@ typedef struct ODM_RF_Calibration_Structure {
 
 	u8 ThermalValue_HP[HP_THERMAL_NUM];
 	u8 ThermalValue_HP_index;
-	IQK_MATRIX_REGS_SETTING IQKMatrixRegSetting[IQK_Matrix_Settings_NUM];
+	struct IQK_MATRIX_REGS_SETTING IQKMatrixRegSetting[IQK_Matrix_Settings_NUM];
 	bool bNeedIQK;
 	bool bIQKInProgress;
 	u8 Delta_IQK;
@@ -780,12 +780,12 @@ typedef struct ODM_RF_Calibration_Structure {
 
 	u32 TxLOK[2];
 
-} ODM_RF_CAL_T, *PODM_RF_CAL_T;
+};
 /*  */
 /*  ODM Dynamic common info value definition */
 /*  */
 
-typedef struct _FAST_ANTENNA_TRAINNING_ {
+struct FAT_T { /* _FAST_ANTENNA_TRAINNING_ */
 	u8 Bssid[6];
 	u8 antsel_rx_keep_0;
 	u8 antsel_rx_keep_1;
@@ -823,14 +823,14 @@ typedef struct _FAST_ANTENNA_TRAINNING_ {
 	u32 MainAnt_CtrlFrame_Cnt;
 	u32 AuxAnt_CtrlFrame_Cnt;
 
-} FAT_T, *pFAT_T;
+};
 
-typedef enum _FAT_STATE {
+enum FAT_STATE_E {
 	FAT_NORMAL_STATE			= 0,
 	FAT_TRAINING_STATE		= 1,
-} FAT_STATE_E, *PFAT_STATE_E;
+};
 
-typedef enum _ANT_DIV_TYPE {
+enum ANT_DIV_TYPE_E {
 	NO_ANTDIV			= 0xFF,
 	CG_TRX_HW_ANTDIV		= 0x01,
 	CGCS_RX_HW_ANTDIV	= 0x02,
@@ -838,36 +838,36 @@ typedef enum _ANT_DIV_TYPE {
 	CG_TRX_SMART_ANTDIV	= 0x04,
 	CGCS_RX_SW_ANTDIV	= 0x05,
 	S0S1_SW_ANTDIV          = 0x06 /* 8723B intrnal switch S0 S1 */
-} ANT_DIV_TYPE_E, *PANT_DIV_TYPE_E;
+};
 
-typedef struct _ODM_PATH_DIVERSITY_ {
+struct PATHDIV_T { /* _ODM_PATH_DIVERSITY_ */
 	u8 RespTxPath;
 	u8 PathSel[ODM_ASSOCIATE_ENTRY_NUM];
 	u32 PathA_Sum[ODM_ASSOCIATE_ENTRY_NUM];
 	u32 PathB_Sum[ODM_ASSOCIATE_ENTRY_NUM];
 	u32 PathA_Cnt[ODM_ASSOCIATE_ENTRY_NUM];
 	u32 PathB_Cnt[ODM_ASSOCIATE_ENTRY_NUM];
-} PATHDIV_T, *pPATHDIV_T;
+};
 
-typedef enum _BASEBAND_CONFIG_PHY_REG_PG_VALUE_TYPE {
+enum PHY_REG_PG_TYPE { /* _BASEBAND_CONFIG_PHY_REG_PG_VALUE_TYPE */
 	PHY_REG_PG_RELATIVE_VALUE = 0,
 	PHY_REG_PG_EXACT_VALUE = 1
-} PHY_REG_PG_TYPE;
+};
 
 /*  */
 /*  Antenna detection information from single tone mechanism, added by Roger, 2012.11.27. */
 /*  */
-typedef struct _ANT_DETECTED_INFO {
+struct ANT_DETECTED_INFO {
 	bool bAntDetected;
 	u32 dBForAntA;
 	u32 dBForAntB;
 	u32 dBForAntO;
-} ANT_DETECTED_INFO, *PANT_DETECTED_INFO;
+};
 
 /*  */
 /*  2011/09/22 MH Copy from SD4 defined structure. We use to support PHY DM integration. */
 /*  */
-typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
+struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/* RT_TIMER	FastAntTrainingTimer; */
 	/*  */
 	/* 	Add for different team use temporarily */
@@ -876,7 +876,7 @@ typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 	/*  WHen you use Adapter or priv pointer, you must make sure the pointer is ready. */
 	bool odm_ready;
 
-	PHY_REG_PG_TYPE PhyRegPgValueType;
+	enum PHY_REG_PG_TYPE PhyRegPgValueType;
 	u8 PhyRegPgVersion;
 
 	u64	DebugComponents;
@@ -1109,21 +1109,21 @@ typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 	/*  */
 	/* ODM Structure */
 	/*  */
-	FAT_T DM_FatTable;
+	struct FAT_T DM_FatTable;
 	DIG_T DM_DigTable;
 	PS_T DM_PSTable;
 	struct dynamic_primary_CCA DM_PriCCA;
-	RXHP_T DM_RXHP_Table;
-	RA_T DM_RA_Table;
+	struct RXHP_T DM_RXHP_Table;
+	struct RA_T DM_RA_Table;
 	false_ALARM_STATISTICS FalseAlmCnt;
 	false_ALARM_STATISTICS FlaseAlmCntBuddyAdapter;
-	SWAT_T DM_SWAT_Table;
+	struct SWAT_T DM_SWAT_Table;
 	bool RSSI_test;
 	CFO_TRACKING DM_CfoTrack;
 
 	EDCA_T DM_EDCA_Table;
 	u32 WMMEDCA_BE;
-	PATHDIV_T DM_PathDiv;
+	struct PATHDIV_T DM_PathDiv;
 	/*  Copy from SD4 structure */
 	/*  */
 	/*  ================================================== */
@@ -1158,11 +1158,11 @@ typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 	/* for rate adaptive, in fact,  88c/92c fw will handle this */
 	u8 bUseRAMask;
 
-	ODM_RATE_ADAPTIVE RateAdaptive;
+	struct ODM_RATE_ADAPTIVE RateAdaptive;
 
-	ANT_DETECTED_INFO AntDetectedInfo; /*  Antenna detected information for RSSI tool */
+	struct ANT_DETECTED_INFO AntDetectedInfo; /*  Antenna detected information for RSSI tool */
 
-	ODM_RF_CAL_T RFCalibrateInfo;
+	struct ODM_RF_CAL_T RFCalibrateInfo;
 
 	/*  */
 	/*  TX power tracking */
@@ -1204,11 +1204,11 @@ typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 	#if (BEAMFORMING_SUPPORT == 1)
 	RT_BEAMFORMING_INFO BeamformingInfo;
 	#endif
-} DM_ODM_T, *PDM_ODM_T; /*  DM_Dynamic_Mechanism_Structure */
+};
 
 #define ODM_RF_PATH_MAX 2
 
-typedef enum _ODM_RF_RADIO_PATH {
+enum ODM_RF_RADIO_PATH_E {
 	ODM_RF_PATH_A = 0,   /* Radio Path A */
 	ODM_RF_PATH_B = 1,   /* Radio Path B */
 	ODM_RF_PATH_C = 2,   /* Radio Path C */
@@ -1224,16 +1224,16 @@ typedef enum _ODM_RF_RADIO_PATH {
 	ODM_RF_PATH_BCD,
 	ODM_RF_PATH_ABCD,
 	/*   ODM_RF_PATH_MAX,    Max RF number 90 support */
-} ODM_RF_RADIO_PATH_E, *PODM_RF_RADIO_PATH_E;
+};
 
- typedef enum _ODM_RF_CONTENT {
+ enum ODM_RF_CONTENT {
 	odm_radioa_txt = 0x1000,
 	odm_radiob_txt = 0x1001,
 	odm_radioc_txt = 0x1002,
 	odm_radiod_txt = 0x1003
-} ODM_RF_CONTENT;
+};
 
-typedef enum _ODM_BB_Config_Type {
+enum ODM_BB_Config_Type {
 	CONFIG_BB_PHY_REG,
 	CONFIG_BB_AGC_TAB,
 	CONFIG_BB_AGC_TAB_2G,
@@ -1241,14 +1241,14 @@ typedef enum _ODM_BB_Config_Type {
 	CONFIG_BB_PHY_REG_PG,
 	CONFIG_BB_PHY_REG_MP,
 	CONFIG_BB_AGC_TAB_DIFF,
-} ODM_BB_Config_Type, *PODM_BB_Config_Type;
+};
 
-typedef enum _ODM_RF_Config_Type {
+enum ODM_RF_Config_Type {
 	CONFIG_RF_RADIO,
 	CONFIG_RF_TXPWR_LMT,
-} ODM_RF_Config_Type, *PODM_RF_Config_Type;
+};
 
-typedef enum _ODM_FW_Config_Type {
+enum ODM_FW_Config_Type {
 	CONFIG_FW_NIC,
 	CONFIG_FW_NIC_2,
 	CONFIG_FW_AP,
@@ -1256,10 +1256,10 @@ typedef enum _ODM_FW_Config_Type {
 	CONFIG_FW_WoWLAN_2,
 	CONFIG_FW_AP_WoWLAN,
 	CONFIG_FW_BT,
-} ODM_FW_Config_Type;
+};
 
 /*  Status code */
-typedef enum _RT_STATUS {
+enum RT_STATUS {
 	RT_STATUS_SUCCESS,
 	RT_STATUS_FAILURE,
 	RT_STATUS_PENDING,
@@ -1268,7 +1268,7 @@ typedef enum _RT_STATUS {
 	RT_STATUS_INVALID_PARAMETER,
 	RT_STATUS_NOT_SUPPORT,
 	RT_STATUS_OS_API_FAILED,
-} RT_STATUS, *PRT_STATUS;
+};
 
 #ifdef REMOVE_PACK
 #pragma pack()
@@ -1316,26 +1316,26 @@ typedef enum _RT_STATUS {
 /* 3 BB Power Save */
 /* 3 =========================================================== */
 
-typedef enum tag_1R_CCA_Type_Definition {
+enum DM_1R_CCA_E { /* tag_1R_CCA_Type_Definition */
 	CCA_1R = 0,
 	CCA_2R = 1,
 	CCA_MAX = 2,
-} DM_1R_CCA_E;
+};
 
-typedef enum tag_RF_Type_Definition {
+enum DM_RF_E { /* tag_RF_Type_Definition */
 	RF_Save = 0,
 	RF_Normal = 1,
 	RF_MAX = 2,
-} DM_RF_E;
+};
 
 /* 3 =========================================================== */
 /* 3 Antenna Diversity */
 /* 3 =========================================================== */
-typedef enum tag_SW_Antenna_Switch_Definition {
+enum DM_SWAS_E { /* tag_SW_Antenna_Switch_Definition */
 	Antenna_A = 1,
 	Antenna_B = 2,
 	Antenna_MAX = 3,
-} DM_SWAS_E;
+};
 
 /*  Maximal number of antenna detection mechanism needs to perform, added by Roger, 2011.12.28. */
 #define	MAX_ANTENNA_DETECTION_CNT	10
@@ -1368,10 +1368,10 @@ extern  u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE];
 /* Remove BB power saving by Yuchen */
 
 #define dm_CheckTXPowerTracking ODM_TXPowerTrackingCheck
-void ODM_TXPowerTrackingCheck(PDM_ODM_T pDM_Odm);
+void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm);
 
 bool ODM_RAStateCheck(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	s32	RSSI,
 	bool bForceUpdate,
 	u8 *pRATRState
@@ -1379,13 +1379,13 @@ bool ODM_RAStateCheck(
 
 #define dm_SWAW_RSSI_Check	ODM_SwAntDivChkPerPktRssi
 void ODM_SwAntDivChkPerPktRssi(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u8 StationID,
 	struct odm_phy_info *pPhyInfo
 );
 
 u32 ODM_Get_Rate_Bitmap(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u32 macid,
 	u32 ra_mask,
 	u8 rssi_level
@@ -1395,38 +1395,38 @@ u32 ODM_Get_Rate_Bitmap(
 BEAMFORMING_CAP Beamforming_GetEntryBeamCapByMacId(PMGNT_INFO pMgntInfo, u8 MacId);
 #endif
 
-void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm);
+void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm);
 
-void ODM_DMInit(PDM_ODM_T pDM_Odm);
+void ODM_DMInit(struct DM_ODM_T * pDM_Odm);
 
-void ODM_DMWatchdog(PDM_ODM_T pDM_Odm); /*  For common use in the future */
+void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm); /*  For common use in the future */
 
-void ODM_CmnInfoInit(PDM_ODM_T pDM_Odm, ODM_CMNINFO_E CmnInfo, u32 Value);
+void ODM_CmnInfoInit(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value);
 
-void ODM_CmnInfoHook(PDM_ODM_T pDM_Odm, ODM_CMNINFO_E CmnInfo, void *pValue);
+void ODM_CmnInfoHook(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue);
 
 void ODM_CmnInfoPtrArrayHook(
-	PDM_ODM_T pDM_Odm,
-	ODM_CMNINFO_E CmnInfo,
+	struct DM_ODM_T * pDM_Odm,
+	enum ODM_CMNINFO_E CmnInfo,
 	u16 Index,
 	void *pValue
 );
 
-void ODM_CmnInfoUpdate(PDM_ODM_T pDM_Odm, u32 CmnInfo, u64 Value);
+void ODM_CmnInfoUpdate(struct DM_ODM_T * pDM_Odm, u32 CmnInfo, u64 Value);
 
-void ODM_InitAllTimers(PDM_ODM_T pDM_Odm);
+void ODM_InitAllTimers(struct DM_ODM_T * pDM_Odm);
 
-void ODM_CancelAllTimers(PDM_ODM_T pDM_Odm);
+void ODM_CancelAllTimers(struct DM_ODM_T * pDM_Odm);
 
-void ODM_ReleaseAllTimers(PDM_ODM_T pDM_Odm);
+void ODM_ReleaseAllTimers(struct DM_ODM_T * pDM_Odm);
 
 void ODM_AntselStatistics_88C(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u8 MacId,
 	u32 PWDBAll,
 	bool isCCKrate
 );
 
-void ODM_DynamicARFBSelect(PDM_ODM_T pDM_Odm, u8 rate, bool Collision_State);
+void ODM_DynamicARFBSelect(struct DM_ODM_T * pDM_Odm, u8 rate, bool Collision_State);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index 3ea1972545e5..f1dd2df03730 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -9,7 +9,7 @@
 
 static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->CrystalCap == CrystalCap)
@@ -39,7 +39,7 @@ static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 
 static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
@@ -49,7 +49,7 @@ static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 
 static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->bATCStatus == ATCStatus)
@@ -67,7 +67,7 @@ static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
 static bool odm_GetATCStatus(void *pDM_VOID)
 {
 	bool ATCStatus;
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	ATCStatus = (bool)PHY_QueryBBReg(
 		pDM_Odm->Adapter,
@@ -79,7 +79,7 @@ static bool odm_GetATCStatus(void *pDM_VOID)
 
 void ODM_CfoTrackingReset(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
@@ -91,7 +91,7 @@ void ODM_CfoTrackingReset(void *pDM_VOID)
 
 void ODM_CfoTrackingInit(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap =
@@ -118,7 +118,7 @@ void ODM_CfoTrackingInit(void *pDM_VOID)
 
 void ODM_CfoTracking(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	int CFO_kHz_A, CFO_kHz_B, CFO_ave = 0;
 	int CFO_ave_diff;
@@ -297,7 +297,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 
 void ODM_ParsingCFO(void *pDM_VOID, void *pPktinfo_VOID, s8 *pcfotail)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct odm_packet_info *pPktinfo = pPktinfo_VOID;
 	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	u8 i;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index 40fe43c62c45..6b8b6da6dbcc 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -11,7 +11,7 @@
 
 void odm_NHMCounterStatisticsInit(void *pDM_VOID)
 {
-	PDM_ODM_T		pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T *		pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/* PHY parameters initialize for n series */
 	rtw_write16(pDM_Odm->Adapter, ODM_REG_NHM_TIMER_11N+2, 0x2710);	/* 0x894[31:16]= 0x2710	Time duration for NHM unit: 4us, 0x2710 =40ms */
@@ -27,7 +27,7 @@ void odm_NHMCounterStatisticsInit(void *pDM_VOID)
 
 void odm_NHMCounterStatistics(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/*  Get NHM report */
 	odm_GetNHMCounterStatistics(pDM_Odm);
@@ -38,7 +38,7 @@ void odm_NHMCounterStatistics(void *pDM_VOID)
 
 void odm_GetNHMCounterStatistics(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	u32 value32 = 0;
 
 	value32 = PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG_NHM_CNT_11N, bMaskDWord);
@@ -48,7 +48,7 @@ void odm_GetNHMCounterStatistics(void *pDM_VOID)
 
 void odm_NHMCounterStatisticsReset(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 0);
 	PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 1);
@@ -56,7 +56,7 @@ void odm_NHMCounterStatisticsReset(void *pDM_VOID)
 
 void odm_NHMBBInit(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	pDM_Odm->adaptivity_flag = 0;
 	pDM_Odm->tolerance_cnt = 3;
@@ -69,7 +69,7 @@ void odm_NHMBBInit(void *pDM_VOID)
 /*  */
 void odm_NHMBB(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	/* u8 test_status; */
 	/* Pfalse_ALARM_STATISTICS pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt); */
 
@@ -133,7 +133,7 @@ void odm_NHMBB(void *pDM_VOID)
 
 void odm_SearchPwdBLowerBound(void *pDM_VOID, u8 IGI_target)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	u32 value32 = 0;
 	u8 cnt, IGI;
 	bool bAdjust = true;
@@ -205,7 +205,7 @@ void odm_SearchPwdBLowerBound(void *pDM_VOID, u8 IGI_target)
 
 void odm_AdaptivityInit(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	if (pDM_Odm->Carrier_Sense_enable == false)
 		pDM_Odm->TH_L2H_ini = 0xf7; /*  -7 */
@@ -233,7 +233,7 @@ void odm_AdaptivityInit(void *pDM_VOID)
 
 void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	s8 TH_L2H_dmc, TH_H2L_dmc;
 	s8 Diff, IGI_target;
 	bool EDCCA_State = false;
@@ -322,7 +322,7 @@ void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 
 void ODM_Write_DIG(void *pDM_VOID, u8 CurrentIGI)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	if (pDM_DigTable->bStopDIG) {
@@ -362,7 +362,7 @@ void odm_PauseDIG(
 	u8 IGIValue
 )
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 	static bool bPaused;
 
@@ -435,7 +435,7 @@ void odm_PauseDIG(
 
 bool odm_DigAbort(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/* SupportAbility */
 	if (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT)) {
@@ -466,7 +466,7 @@ bool odm_DigAbort(void *pDM_VOID)
 
 void odm_DIGInit(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	pDM_DigTable->bStopDIG = false;
@@ -504,7 +504,7 @@ void odm_DIGInit(void *pDM_VOID)
 
 void odm_DIG(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/*  Common parameters */
 	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
@@ -823,7 +823,7 @@ void odm_DIG(void *pDM_VOID)
 
 void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	Pfalse_ALARM_STATISTICS pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 
 	u8 RSSI_Lower = DM_DIG_MIN_NIC;   /* 0x1E or 0x1C */
@@ -892,7 +892,7 @@ void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 
 void odm_FalseAlarmCounterStatistics(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	Pfalse_ALARM_STATISTICS FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
 	u32 ret_value;
 
@@ -1062,7 +1062,7 @@ void odm_FAThresholdCheck(
 	u32 *dm_FA_thres
 )
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	if (pDM_Odm->bLinked && (bPerformance || bDFSBand)) {
 		/*  For NIC */
@@ -1078,7 +1078,7 @@ void odm_FAThresholdCheck(
 
 u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 	Pfalse_ALARM_STATISTICS pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
 	u8 rx_gain_range_min = pDM_DigTable->rx_gain_range_min;
@@ -1134,7 +1134,7 @@ u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 
 void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	Pfalse_ALARM_STATISTICS FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
 	u8 CurCCK_CCAThres;
 
@@ -1195,7 +1195,7 @@ void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 
 void ODM_Write_CCK_CCA_Thres(void *pDM_VOID, u8 CurCCK_CCAThres)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	/* modify by Guo.Mingzhi 2012-01-03 */
diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
index e18c9d65eee2..cc0bf4c1c777 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
@@ -9,7 +9,7 @@
 
 void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	pPS_T pDM_PSTable = &pDM_Odm->DM_PSTable;
 
 	pDM_PSTable->PreCCAState = CCA_MAX;
@@ -22,7 +22,7 @@ void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 
 void ODM_RF_Saving(void *pDM_VOID, u8 bForceInNormal)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	pPS_T pDM_PSTable = &pDM_Odm->DM_PSTable;
 	u8 Rssi_Up_bound = 30;
 	u8 Rssi_Low_bound = 25;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c b/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
index 17f90f4cc1ad..adb57e9af408 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
@@ -9,7 +9,7 @@
 
 void odm_DynamicTxPowerInit(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
diff --git a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
index b7ebce7a6ff9..61c447b00ff7 100644
--- a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
+++ b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
@@ -31,7 +31,7 @@ static u32 edca_setting_DL[HT_IOT_PEER_MAX] = {
 
 void ODM_EdcaTurboInit(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct adapter *Adapter = pDM_Odm->Adapter;
 
 	pDM_Odm->DM_EDCA_Table.bCurrentTurboEDCA = false;
@@ -58,7 +58,7 @@ void odm_EdcaTurboCheck(void *pDM_VOID)
 	 *  operate at the same time. In stage2/3, we need to prove universal
 	 *  interface and merge all HW dynamic mechanism.
 	 */
-	PDM_ODM_T		pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T *		pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
 		     ("odm_EdcaTurboCheck ========================>\n"));
@@ -73,7 +73,7 @@ void odm_EdcaTurboCheck(void *pDM_VOID)
 
 void odm_EdcaTurboCheckCE(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct dvobj_priv *pdvobjpriv = adapter_to_dvobj(Adapter);
 	struct recv_priv *precvpriv = &(Adapter->recvpriv);
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 9c190b1024d8..308f65ee7c99 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -23,7 +23,7 @@ static u8 odm_QueryRxPwrPercentage(s8 AntPower)
 
 }
 
-s32 odm_SignalScaleMapping(PDM_ODM_T pDM_Odm, s32 CurrSig)
+s32 odm_SignalScaleMapping(struct DM_ODM_T * pDM_Odm, s32 CurrSig)
 {
 	s32 RetSig = 0;
 
@@ -77,7 +77,7 @@ static u8 odm_EVMdbToPercentage(s8 Value)
 }
 
 static void odm_RxPhyStatus92CSeries_Parsing(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -247,7 +247,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 }
 
 static void odm_Process_RSSIForDM(
-	PDM_ODM_T pDM_Odm, struct odm_phy_info *pPhyInfo, struct odm_packet_info *pPktinfo
+	struct DM_ODM_T * pDM_Odm, struct odm_phy_info *pPhyInfo, struct odm_packet_info *pPktinfo
 )
 {
 
@@ -401,7 +401,7 @@ static void odm_Process_RSSIForDM(
 /*  Endianness before calling this API */
 /*  */
 static void ODM_PhyStatusQuery_92CSeries(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -415,7 +415,7 @@ static void ODM_PhyStatusQuery_92CSeries(
 }
 
 void ODM_PhyStatusQuery(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -431,9 +431,9 @@ void ODM_PhyStatusQuery(
 /*  */
 
 HAL_STATUS ODM_ConfigRFWithHeaderFile(
-	PDM_ODM_T pDM_Odm,
-	ODM_RF_Config_Type ConfigType,
-	ODM_RF_RADIO_PATH_E eRFPath
+	struct DM_ODM_T * pDM_Odm,
+	enum ODM_RF_Config_Type ConfigType,
+	enum ODM_RF_RADIO_PATH_E eRFPath
 )
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
@@ -450,7 +450,7 @@ HAL_STATUS ODM_ConfigRFWithHeaderFile(
 	return HAL_STATUS_SUCCESS;
 }
 
-HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(PDM_ODM_T pDM_Odm)
+HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 				 ("===>ODM_ConfigRFWithTxPwrTrackHeaderFile (%s)\n", (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
@@ -465,7 +465,7 @@ HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(PDM_ODM_T pDM_Odm)
 }
 
 HAL_STATUS ODM_ConfigBBWithHeaderFile(
-	PDM_ODM_T pDM_Odm, ODM_BB_Config_Type ConfigType
+	struct DM_ODM_T * pDM_Odm, enum ODM_BB_Config_Type ConfigType
 )
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
index 945366bc37ce..2e2ffbf31f89 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
@@ -122,31 +122,31 @@ typedef struct _Phy_Status_Rpt_8812 {
 
 
 void ODM_PhyStatusQuery(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
 );
 
-HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(PDM_ODM_T pDM_Odm);
+HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm);
 
 HAL_STATUS ODM_ConfigRFWithHeaderFile(
-	PDM_ODM_T pDM_Odm,
-	ODM_RF_Config_Type ConfigType,
-	ODM_RF_RADIO_PATH_E eRFPath
+	struct DM_ODM_T * pDM_Odm,
+	enum ODM_RF_Config_Type ConfigType,
+	enum ODM_RF_RADIO_PATH_E eRFPath
 );
 
 HAL_STATUS ODM_ConfigBBWithHeaderFile(
-	PDM_ODM_T pDM_Odm, ODM_BB_Config_Type ConfigType
+	struct DM_ODM_T * pDM_Odm, enum ODM_BB_Config_Type ConfigType
 );
 
 HAL_STATUS ODM_ConfigFWWithHeaderFile(
-	PDM_ODM_T pDM_Odm,
-	ODM_FW_Config_Type ConfigType,
+	struct DM_ODM_T * pDM_Odm,
+	enum ODM_FW_Config_Type ConfigType,
 	u8 *pFirmware,
 	u32 *pSize
 );
 
-s32 odm_SignalScaleMapping(PDM_ODM_T pDM_Odm, s32 CurrSig);
+s32 odm_SignalScaleMapping(struct DM_ODM_T * pDM_Odm, s32 CurrSig);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
index 6ca799816c08..7743540b7817 100644
--- a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
+++ b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c
@@ -19,7 +19,7 @@
 #define ValidCnt				5
 
 static s16 odm_InbandNoise_Monitor_NSeries(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u8 bPauseDIG,
 	u8 IGIValue,
 	u32 max_time
diff --git a/drivers/staging/rtl8723bs/hal/odm_PathDiv.c b/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
index 4d22360934f6..e04676533815 100644
--- a/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
+++ b/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
@@ -9,7 +9,7 @@
 
 void odm_PathDiversityInit(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_PATH_DIV))
 		ODM_RT_TRACE(
@@ -22,7 +22,7 @@ void odm_PathDiversityInit(void *pDM_VOID)
 
 void odm_PathDiversity(void *pDM_VOID)
 {
-	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
+	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_PATH_DIV))
 		ODM_RT_TRACE(
diff --git a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
index 39f989bf3410..84b77a5c2a44 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
+++ b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
@@ -8,10 +8,10 @@
 #include "odm_precomp.h"
 
 void odm_ConfigRFReg_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u32 Addr,
 	u32 Data,
-	ODM_RF_RADIO_PATH_E RF_PATH,
+	enum ODM_RF_RADIO_PATH_E RF_PATH,
 	u32 RegAddr
 )
 {
@@ -106,7 +106,7 @@ void odm_ConfigRFReg_8723B(
 }
 
 
-void odm_ConfigRF_RadioA_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u32 Data)
+void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u32 Data)
 {
 	u32  content = 0x1000; /*  RF_Content: radioa_txt */
 	u32 maskforPhySet = (u32)(content&0xE000);
@@ -131,7 +131,7 @@ void odm_ConfigRF_RadioA_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u32 Data)
 	);
 }
 
-void odm_ConfigMAC_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u8 Data)
+void odm_ConfigMAC_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u8 Data)
 {
 	rtw_write8(pDM_Odm->Adapter, Addr, Data);
 	ODM_RT_TRACE(
@@ -147,7 +147,7 @@ void odm_ConfigMAC_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u8 Data)
 }
 
 void odm_ConfigBB_AGC_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u32 Addr,
 	u32 Bitmask,
 	u32 Data
@@ -170,7 +170,7 @@ void odm_ConfigBB_AGC_8723B(
 }
 
 void odm_ConfigBB_PHY_REG_PG_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u32 Band,
 	u32 RfPath,
 	u32 TxNum,
@@ -198,7 +198,7 @@ void odm_ConfigBB_PHY_REG_PG_8723B(
 }
 
 void odm_ConfigBB_PHY_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u32 Addr,
 	u32 Bitmask,
 	u32 Data
@@ -226,7 +226,7 @@ void odm_ConfigBB_PHY_8723B(
 }
 
 void odm_ConfigBB_TXPWR_LMT_8723B(
-	PDM_ODM_T pDM_Odm,
+	struct DM_ODM_T * pDM_Odm,
 	u8 *Regulation,
 	u8 *Band,
 	u8 *Bandwidth,
diff --git a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
index 07b585950cf9..d7747100a917 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
+++ b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
@@ -7,24 +7,24 @@
 #ifndef __INC_ODM_REGCONFIG_H_8723B
 #define __INC_ODM_REGCONFIG_H_8723B
 
-void odm_ConfigRFReg_8723B(PDM_ODM_T pDM_Odm,
+void odm_ConfigRFReg_8723B(struct DM_ODM_T * pDM_Odm,
 			   u32 Addr,
 			   u32 Data,
-			   ODM_RF_RADIO_PATH_E RF_PATH,
+			   enum ODM_RF_RADIO_PATH_E RF_PATH,
 			   u32 RegAddr
 );
 
-void odm_ConfigRF_RadioA_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u32 Data);
+void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u32 Data);
 
-void odm_ConfigMAC_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u8 Data);
+void odm_ConfigMAC_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u8 Data);
 
-void odm_ConfigBB_AGC_8723B(PDM_ODM_T pDM_Odm,
+void odm_ConfigBB_AGC_8723B(struct DM_ODM_T * pDM_Odm,
 			    u32 Addr,
 			    u32 Bitmask,
 			    u32 Data
 );
 
-void odm_ConfigBB_PHY_REG_PG_8723B(PDM_ODM_T pDM_Odm,
+void odm_ConfigBB_PHY_REG_PG_8723B(struct DM_ODM_T * pDM_Odm,
 				   u32 Band,
 				   u32 RfPath,
 				   u32 TxNum,
@@ -33,13 +33,13 @@ void odm_ConfigBB_PHY_REG_PG_8723B(PDM_ODM_T pDM_Odm,
 				   u32 Data
 );
 
-void odm_ConfigBB_PHY_8723B(PDM_ODM_T pDM_Odm,
+void odm_ConfigBB_PHY_8723B(struct DM_ODM_T * pDM_Odm,
 			    u32 Addr,
 			    u32 Bitmask,
 			    u32 Data
 );
 
-void odm_ConfigBB_TXPWR_LMT_8723B(PDM_ODM_T pDM_Odm,
+void odm_ConfigBB_TXPWR_LMT_8723B(struct DM_ODM_T * pDM_Odm,
 				  u8 *Regulation,
 				  u8 *Band,
 				  u8 *Bandwidth,
diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.c b/drivers/staging/rtl8723bs/hal/odm_debug.c
index b92422c8fb8e..050aae37494e 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.c
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.c
@@ -7,7 +7,7 @@
 
 #include "odm_precomp.h"
 
-void ODM_InitDebugSetting(PDM_ODM_T pDM_Odm)
+void ODM_InitDebugSetting(struct DM_ODM_T * pDM_Odm)
 {
 	pDM_Odm->DebugLevel = ODM_DBG_LOUD;
 
diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.h b/drivers/staging/rtl8723bs/hal/odm_debug.h
index a7381173d1a3..adb63ecc0b3e 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.h
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.h
@@ -162,6 +162,6 @@
 	no_printk("%s %p", title_str, ptr)
 #endif
 
-void ODM_InitDebugSetting(PDM_ODM_T pDM_Odm);
+void ODM_InitDebugSetting(struct DM_ODM_T * pDM_Odm);
 
 #endif	/*  __ODM_DBG_H__ */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 650fbedd34e8..9df5b1240de2 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -25,7 +25,7 @@ static void Init_ODM_ComInfo_8723b(struct adapter *Adapter)
 {
 
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	PDM_ODM_T pDM_Odm = &(pHalData->odmpriv);
+	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 	u8 cut_ver, fab_ver;
 
@@ -74,7 +74,7 @@ static void Update_ODM_ComInfo_8723b(struct adapter *Adapter)
 	struct dvobj_priv *dvobj = adapter_to_dvobj(Adapter);
 	struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(Adapter);
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	PDM_ODM_T pDM_Odm = &(pHalData->odmpriv);
+	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 	int i;
 	u8 zero = 0;
@@ -129,7 +129,7 @@ void rtl8723b_InitHalDm(struct adapter *Adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	PDM_ODM_T pDM_Odm = &(pHalData->odmpriv);
+	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);
 
 	pdmpriv->DM_Type = DM_Type_ByDriver;
 	pdmpriv->DMFlag = DYNAMIC_FUNC_DISABLE;
@@ -203,7 +203,7 @@ void rtl8723b_hal_dm_in_lps(struct adapter *padapter)
 	u32 PWDB_rssi = 0;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct sta_info *psta = NULL;
 
@@ -229,7 +229,7 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
 	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct sta_priv *pstapriv = &Adapter->stapriv;
 	struct sta_info *psta = NULL;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 22365926a9f8..d67eb83e4011 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -594,8 +594,8 @@ u8 PHY_GetTxPowerIndex(
 void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 Channel)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
-	pFAT_T pDM_FatTable = &pDM_Odm->DM_FatTable;
+	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct FAT_T * pDM_FatTable = &pDM_Odm->DM_FatTable;
 	u8 RFPath = ODM_RF_PATH_A;
 
 	if (pHalData->AntDivCfg) {/*  antenna diversity Enable */
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index fa5d70016f05..04efd09fc628 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -431,7 +431,7 @@ struct hal_com_data {
 	u32 		sdio_tx_max_len[SDIO_MAX_TX_QUEUE];/*  H, N, L, used for sdio tx aggregation max length per queue */
 
 	struct dm_priv dmpriv;
-	DM_ODM_T		odmpriv;
+	struct DM_ODM_T		odmpriv;
 
 	/*  For bluetooth co-existance */
 	BT_COEXIST		bt_coexist;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
