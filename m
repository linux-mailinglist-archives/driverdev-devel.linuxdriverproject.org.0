Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B03D33C38B
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:09:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3E9A47CA5;
	Mon, 15 Mar 2021 17:09:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wxc-VEJuFHVm; Mon, 15 Mar 2021 17:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8748047A73;
	Mon, 15 Mar 2021 17:09:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1792C1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 032054DD08
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZ5TZOQ1E2qW for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 24C304D751
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:22 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id p7so56190348eju.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=pohi1yQT0GnPpYWo9nJC16Ur1dXUpSV1nXosHWE2UME=;
 b=q7dg7EsnN2RO4GL0X0V5fE+WUTjq73g0CCiQyFLnmhTLgoDYRzsHtcHZra1JVJbFxo
 0hmtsB9+YNRvDY5BLTI8zLm3ebJbh4U5L0N3jTtH2qEVkfab52eaHir7tCBaOnBor64y
 TGTt7xdagxFg+1hm4eqpoq1umaQ1omrhM9r71kqZoQIJiKacmJRZGRFr2uhvIRYXhf25
 qp6z/fugssVOaIYdiJOYNa3W0jdy3H643dE5dV2coDxnJumEBHYldSwpSiVvn852l5Xi
 FNyO3Kq1JGZQOq72dHsmVIxcuc8spxSoGtT/DoEC1FEJ0dD5UWvYFNWR+GlGfz6/svTy
 8r0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pohi1yQT0GnPpYWo9nJC16Ur1dXUpSV1nXosHWE2UME=;
 b=dsS2ASoWpwal4MBMc4/WEamO1jZhzrgLLZF20J1ukfHxyVecutS2mRew8IOcx/S1Vo
 7B8oS1S1ekNxKyB6aCLthRfZ6dTeEaTrx6EvZUSvf0+4S8DwJx0y8xWaEOjqusIqsCZ9
 HRf0YOyKNJ4XoRIqAlBDjoOeXjAk1VjtWabzFxlQyHHnc/T8XL0XOdhw9yWgkJMPQlnC
 WlriG2QYvO8yn3NsnKBvFSA2lRyyFr6V8yUPAH5KSuw6v4UCOZ/t/w7Ha3fvBjQzqpev
 GwdO8qG1NfFxSygQSbI2GEnENHDOYrqcUWfvPoQT+ZpYLk6pGbln/YEZmX3Ux2TR3Ex7
 XS2A==
X-Gm-Message-State: AOAM532c9E2dAABtvhoG2GHtztO4EaBo4+nMVfz2l3wFTcpaPp7adDfC
 /JHhMYmzX5a7Ye0xnS9uvP8=
X-Google-Smtp-Source: ABdhPJyuzE58PIGjji3zNQ1gkIWh9I+Lc20Jmo6rs1Y/Dc6yxxHRlM8iWwvQ4H+npPrg7P64RG6ecg==
X-Received: by 2002:a17:906:12db:: with SMTP id
 l27mr24451201ejb.500.1615827980248; 
 Mon, 15 Mar 2021 10:06:20 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:20 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 15/57] Staging: rtl8723bs: fix spaces in HalPhyRf_8723B.c
Date: Mon, 15 Mar 2021 18:05:36 +0100
Message-Id: <20210315170618.2566-16-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #57: FILE: ./hal/HalPhyRf_8723B.c:57:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #138: FILE: ./hal/HalPhyRf_8723B.c:138:
    +static void setCCKFilterCoefficient(struct DM_ODM_T * pDM_Odm, u8 CCKSwingIndex)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #162: FILE: ./hal/HalPhyRf_8723B.c:162:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #188: FILE: ./hal/HalPhyRf_8723B.c:188:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #363: FILE: ./hal/HalPhyRf_8723B.c:363:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #371: FILE: ./hal/HalPhyRf_8723B.c:371:
    +	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #412: FILE: ./hal/HalPhyRf_8723B.c:412:
    +void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG * pConfig)

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #440: FILE: ./hal/HalPhyRf_8723B.c:440:
    +	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #551: FILE: ./hal/HalPhyRf_8723B.c:551:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #765: FILE: ./hal/HalPhyRf_8723B.c:765:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #872: FILE: ./hal/HalPhyRf_8723B.c:872:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1095: FILE: ./hal/HalPhyRf_8723B.c:1095:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1097: FILE: ./hal/HalPhyRf_8723B.c:1097:
    +	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1175: FILE: ./hal/HalPhyRf_8723B.c:1175:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1177: FILE: ./hal/HalPhyRf_8723B.c:1177:
    +	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1250: FILE: ./hal/HalPhyRf_8723B.c:1250:
    +void ODM_SetIQCbyRFpath(struct DM_ODM_T * pDM_Odm, u32 RFpath)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1253: FILE: ./hal/HalPhyRf_8723B.c:1253:
    +	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1295: FILE: ./hal/HalPhyRf_8723B.c:1295:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #1313: FILE: ./hal/HalPhyRf_8723B.c:1313:
    +	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1333: FILE: ./hal/HalPhyRf_8723B.c:1333:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1363: FILE: ./hal/HalPhyRf_8723B.c:1363:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1387: FILE: ./hal/HalPhyRf_8723B.c:1387:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1492: FILE: ./hal/HalPhyRf_8723B.c:1492:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1700: FILE: ./hal/HalPhyRf_8723B.c:1700:
    +static void phy_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm, bool is2T)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1787: FILE: ./hal/HalPhyRf_8723B.c:1787:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1833: FILE: ./hal/HalPhyRf_8723B.c:1833:
    +		struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2041: FILE: ./hal/HalPhyRf_8723B.c:2041:
    +void PHY_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    | 54 +++++++++----------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index dfff2bb56b63..50aabed8ace6 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -54,7 +54,7 @@ static u8 DeltaSwingTableIdx_2GA_P_8188E[] = {
 
 
 static void setIqkMatrix_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u8 OFDM_index,
 	u8 RFPath,
 	s32 IqkResult_X,
@@ -135,7 +135,7 @@ static void setIqkMatrix_8723B(
 }
 
 
-static void setCCKFilterCoefficient(struct DM_ODM_T * pDM_Odm, u8 CCKSwingIndex)
+static void setCCKFilterCoefficient(struct DM_ODM_T *pDM_Odm, u8 CCKSwingIndex)
 {
 	if (!pDM_Odm->RFCalibrateInfo.bCCKinCH14) {
 		rtw_write8(pDM_Odm->Adapter, 0xa22, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][0]);
@@ -159,7 +159,7 @@ static void setCCKFilterCoefficient(struct DM_ODM_T * pDM_Odm, u8 CCKSwingIndex)
 }
 
 void DoIQK_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u8 DeltaThermalIndex,
 	u8 ThermalValue,
 	u8 Threshold
@@ -185,7 +185,7 @@ void DoIQK_8723B(
  *
  *---------------------------------------------------------------------------*/
 void ODM_TxPwrTrackSetPwr_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	enum PWRTRACK_METHOD Method,
 	u8 RFPath,
 	u8 ChannelMappedIndex
@@ -360,7 +360,7 @@ void ODM_TxPwrTrackSetPwr_8723B(
 }
 
 static void GetDeltaSwingTable_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u8 **TemperatureUP_A,
 	u8 **TemperatureDOWN_A,
 	u8 **TemperatureUP_B,
@@ -368,7 +368,7 @@ static void GetDeltaSwingTable_8723B(
 )
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
-	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	u16 rate = *(pDM_Odm->pForcedDataRate);
 	u8 channel = pHalData->CurrentChannel;
@@ -409,7 +409,7 @@ static void GetDeltaSwingTable_8723B(
 }
 
 
-void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG * pConfig)
+void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG *pConfig)
 {
 	pConfig->SwingTableSize_CCK = CCK_TABLE_SIZE;
 	pConfig->SwingTableSize_OFDM = OFDM_TABLE_SIZE;
@@ -437,7 +437,7 @@ static u8 phy_PathA_IQK_8723B(
 	u8 result = 0x00;
 
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	/*  Save RF Path */
 	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord);
@@ -548,7 +548,7 @@ static u8 phy_PathA_RxIQK8723B(
 	u32 regEAC, regE94, regE9C, regEA4, u4tmp, tmp, Path_SEL_BB;
 	u8 result = 0x00;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 /* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A Rx IQK!\n")); */
 
@@ -762,7 +762,7 @@ static u8 phy_PathB_IQK_8723B(struct adapter *padapter)
 	u32 regEAC, regE94, regE9C, tmp, Path_SEL_BB/*, regEC4, regECC, Path_SEL_BB*/;
 	u8 result = 0x00;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path B IQK!\n"));
 
@@ -869,7 +869,7 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	u32 regE94, regE9C, regEA4, regEAC, u4tmp, tmp, Path_SEL_BB;
 	u8 result = 0x00;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 /* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B Rx IQK!\n")); */
 
@@ -1092,9 +1092,9 @@ static void _PHY_PathAFillIQKMatrix8723B(
 	u32 Oldval_0, X, TX0_A, reg;
 	s32 Y, TX0_C;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
-	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path A IQ Calibration %s !\n", (bIQKOK)?"Success":"Failed"));
 
@@ -1172,9 +1172,9 @@ static void _PHY_PathBFillIQKMatrix8723B(
 	u32 Oldval_1, X, TX1_A, reg;
 	s32	Y, TX1_C;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
-	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B IQ Calibration %s !\n", (bIQKOK)?"Success":"Failed"));
 
@@ -1247,10 +1247,10 @@ static void _PHY_PathBFillIQKMatrix8723B(
 /*  */
 /*  MP Already declare in odm.c */
 
-void ODM_SetIQCbyRFpath(struct DM_ODM_T * pDM_Odm, u32 RFpath)
+void ODM_SetIQCbyRFpath(struct DM_ODM_T *pDM_Odm, u32 RFpath)
 {
 
-	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 	if (
 		(pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC80][VAL] != 0x0) &&
@@ -1292,7 +1292,7 @@ static void _PHY_SaveADDARegisters8723B(
 {
 	u32 i;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	if (!ODM_CheckPowerStatus(padapter))
 		return;
@@ -1310,7 +1310,7 @@ static void _PHY_SaveMACRegisters8723B(
 {
 	u32 i;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save MAC parameters.\n"));
 	for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++) {
@@ -1330,7 +1330,7 @@ static void _PHY_ReloadADDARegisters8723B(
 {
 	u32 i;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Reload ADDA power saving parameters !\n"));
 	for (i = 0 ; i < RegiesterNum; i++) {
@@ -1360,7 +1360,7 @@ static void _PHY_PathADDAOn8723B(
 	u32 pathOn;
 	u32 i;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("ADDA ON.\n"));
 
@@ -1384,7 +1384,7 @@ static void _PHY_MACSettingCalibration8723B(
 {
 	u32 i = 0;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("MAC settings for Calibration.\n"));
 
@@ -1489,7 +1489,7 @@ static void phy_IQCalibrate_8723B(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	u32 i;
 	u8 PathAOK, PathBOK;
@@ -1697,7 +1697,7 @@ static void phy_IQCalibrate_8723B(
 }
 
 
-static void phy_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm, bool is2T)
+static void phy_LCCalibrate_8723B(struct DM_ODM_T *pDM_Odm, bool is2T)
 {
 	u8 tmpReg;
 	u32 RF_Amode = 0, RF_Bmode = 0, LC_Cal;
@@ -1784,7 +1784,7 @@ void PHY_IQCalibrate_8723B(
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	s32 result[4][8];	/* last is final result */
 	u8 i, final_candidate;
@@ -1830,7 +1830,7 @@ void PHY_IQCalibrate_8723B(
 	if (bRestore) {
 		u32 offset, data;
 		u8 path, bResult = SUCCESS;
-		struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+		struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 		path = (PHY_QueryBBReg(pDM_Odm->Adapter, rS0S1_PathSwitch, bMaskByte0) == 0x00) ? ODM_RF_PATH_A : ODM_RF_PATH_B;
 
@@ -2038,7 +2038,7 @@ void PHY_IQCalibrate_8723B(
 }
 
 
-void PHY_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm)
+void PHY_LCCalibrate_8723B(struct DM_ODM_T *pDM_Odm)
 {
 	bool		bSingleTone = false, bCarrierSuppression = false;
 	u32 		timeout = 2000, timecount = 0;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
