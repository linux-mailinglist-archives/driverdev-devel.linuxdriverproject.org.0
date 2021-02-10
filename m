Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA66C316FC3
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 20:13:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65C126F6DA
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 19:13:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a4Ky2CQZ64qc for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 19:13:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3AE196F6D0; Wed, 10 Feb 2021 19:13:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B7826F6AA;
	Wed, 10 Feb 2021 19:11:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CD211BF403
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ECFDB6009C
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hB36c8g-LCTG for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 19:11:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 167386F6DE; Wed, 10 Feb 2021 19:11:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 51A256E278
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 19:10:47 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id o21so1839998pgn.12
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 11:10:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=apP6vPHtZ/byOI9JkoWyzBvNccVIWgODF5J1FHxccfc=;
 b=BQjknr/wNwOtwVO9GV7bnFRnCwWuKux+Uj4bDRS5SkL9xu7hpc2W+3Z0PdCK4YN3KM
 atiSPAcSRVm8MnhhDO48HCrdU/IcOWLq7D/l6vxlPHhtlFfuosOKDzIXaMU6shxpb/vP
 UIq7YSSQCCsUzU3d49NFNpMN+LSXHUwjopLrc4k7U2+agd1Jm7HLGjqinoqT3Gr3lzKE
 Gy8NYg8x2O0EHDZKKovbcHG4zcf04ntu08a/Z5n8AaytV/6sAR2E1xmoCJ0HChHi+Jjh
 iilxdoQ0l/8Gc4Ntf4cdp6KxxsD2CEeWbaXVyPnptDyMgaDdnwaiTrPf0jujlVCNM3RO
 Kktw==
X-Gm-Message-State: AOAM532IdiLhAfHsqLZ9aJL6s885vDrwwU+3pL/Lth/nEDU5KhR/praR
 6f/xMxqmXSUymdB7tw2mqWw=
X-Google-Smtp-Source: ABdhPJzwMnttxLo+fBQTFxTLln6BqfK0wHx596x6z8FRjfRlXUHPhYuRHdhPMWJs/Ozq2olKcVn3mw==
X-Received: by 2002:a62:1547:0:b029:1de:256e:413f with SMTP id
 68-20020a6215470000b02901de256e413fmr4471745pfv.17.1612984246474; 
 Wed, 10 Feb 2021 11:10:46 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.38])
 by smtp.gmail.com with ESMTPSA id o124sm3308716pfg.108.2021.02.10.11.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 11:10:45 -0800 (PST)
Date: Thu, 11 Feb 2021 00:40:41 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] staging: rtl8723bs: remove obsolete commented out code
Message-ID: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix some checkpatch "Block comments use * on subsequent lines"
warnings and remove obsolete code

Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: karthik alapati <mail@karthek.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 44 ++++---------------
 1 file changed, 9 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 1fd504181..3d22bd304 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -57,8 +57,6 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 	return 0;
 #endif
 
-	/* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_QueryBBReg(): RegAddr(%#lx), BitMask(%#lx)\n", RegAddr, BitMask)); */
-
 	OriginalValue = rtw_read32(Adapter, RegAddr);
 	BitShift = phy_CalculateBitShift(BitMask);
 
@@ -94,8 +92,6 @@ void PHY_SetBBReg_8723B(
 	return;
 #endif
 
-	/* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_SetBBReg(): RegAddr(%#lx), BitMask(%#lx), Data(%#lx)\n", RegAddr, BitMask, Data)); */
-
 	if (BitMask != bMaskDWord) { /* if not "double word" write */
 		OriginalValue = rtw_read32(Adapter, RegAddr);
 		BitShift = phy_CalculateBitShift(BitMask);
@@ -159,13 +155,9 @@ static u32 phy_RFSerialRead_8723B(
 	if (RfPiEnable) {
 		/*  Read from BBreg8b8, 12 bits for 8190, 20bits for T65 RF */
 		retValue = PHY_QueryBBReg(Adapter, pPhyReg->rfLSSIReadBackPi|MaskforPhySet, bLSSIReadBackData);
-
-		/* RT_DISP(FINIT, INIT_RF, ("Readback from RF-PI : 0x%x\n", retValue)); */
 	} else {
 		/* Read from BBreg8a0, 12 bits for 8190, 20 bits for T65 RF */
 		retValue = PHY_QueryBBReg(Adapter, pPhyReg->rfLSSIReadBack|MaskforPhySet, bLSSIReadBackData);
-
-		/* RT_DISP(FINIT, INIT_RF, ("Readback from RF-SI : 0x%x\n", retValue)); */
 	}
 	return retValue;
 
@@ -230,15 +222,13 @@ static void phy_RFSerialWrite_8723B(
 	/*  */
 	/*  Put write addr in [5:0]  and write data in [31:16] */
 	/*  */
-	/* DataAndAddr = (Data<<16) | (NewOffset&0x3f); */
-	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;	/*  T65 RF */
+	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;
+	/*  T65 RF */
 
 	/*  */
 	/*  Write Operation */
 	/*  */
 	PHY_SetBBReg(Adapter, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);
-	/* RTPRINT(FPHY, PHY_RFW, ("RFW-%d Addr[0x%lx]= 0x%lx\n", eRFPath, pPhyReg->rf3wireOffset, DataAndAddr)); */
-
 }
 
 
@@ -473,7 +463,6 @@ int PHY_RFConfig8723B(struct adapter *Adapter)
 	rtStatus = PHY_RF6052_Config8723B(Adapter);
 
 	phy_LCK_8723B(Adapter);
-	/* PHY_BB8723B_Config_1T(Adapter); */
 
 	return rtStatus;
 }
@@ -580,8 +569,6 @@ u8 PHY_GetTxPowerIndex(
 	s8 txPower = 0, powerDiffByRate = 0, limit = 0;
 	bool bIn24G = false;
 
-	/* DBG_871X("===>%s\n", __func__); */
-
 	txPower = (s8) PHY_GetTxPowerIndexBase(padapter, RFPath, Rate, BandWidth, Channel, &bIn24G);
 	powerDiffByRate = PHY_GetTxPowerByRate(padapter, BAND_ON_2_4G, ODM_RF_PATH_A, RF_1TX, Rate);
 
@@ -603,7 +590,6 @@ u8 PHY_GetTxPowerIndex(
 	if (txPower > MAX_POWER_INDEX)
 		txPower = MAX_POWER_INDEX;
 
-	/* DBG_871X("Final Tx Power(RF-%c, Channel: %d) = %d(0x%X)\n", ((RFPath == 0)?'A':'B'), Channel, txPower, txPower)); */
 	return (u8) txPower;
 }
 
@@ -750,8 +736,6 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
 
 		PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);
 
-/* 			PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
-
 		PHY_SetBBReg(Adapter, rOFDM0_TxPseudoNoiseWgt, (BIT31|BIT30), 0x0);
 		break;
 
@@ -761,20 +745,20 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
 
 		PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x1);
 
-		/*  Set Control channel to upper or lower. These settings are required only for 40MHz */
+		/**
+		 * Set Control channel to upper or lower. These settings are required only
+		 * for 40MHz
+		 */
 		PHY_SetBBReg(Adapter, rCCK0_System, bCCKSideBand, (pHalData->nCur40MhzPrimeSC>>1));
 
 		PHY_SetBBReg(Adapter, rOFDM1_LSTF, 0xC00, pHalData->nCur40MhzPrimeSC);
 
-/* PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 0); */
-
 		PHY_SetBBReg(Adapter, 0x818, (BIT26|BIT27), (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
 
 		break;
 
 	default:
-		/*RT_TRACE(COMP_DBG, DBG_LOUD, ("phy_SetBWMode8723B(): unknown Bandwidth: %#X\n"\
-					, pHalData->CurrentChannelBW));*/
+
 		break;
 	}
 
@@ -787,10 +771,8 @@ static void phy_SwChnl8723B(struct adapter *padapter)
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 	u8 channelToSW = pHalData->CurrentChannel;
 
-	if (pHalData->rf_chip == RF_PSEUDO_11N) {
-		/* RT_TRACE(COMP_MLME, DBG_LOUD, ("phy_SwChnl8723B: return for PSEUDO\n")); */
+	if (pHalData->rf_chip == RF_PSEUDO_11N)
 		return;
-	}
 	pHalData->RfRegChnlVal[0] = ((pHalData->RfRegChnlVal[0] & 0xfffff00) | channelToSW);
 	PHY_SetRFReg(padapter, ODM_RF_PATH_A, RF_CHNLBW, 0x3FF, pHalData->RfRegChnlVal[0]);
 	PHY_SetRFReg(padapter, ODM_RF_PATH_B, RF_CHNLBW, 0x3FF, pHalData->RfRegChnlVal[0]);
@@ -802,7 +784,6 @@ static void phy_SwChnlAndSetBwMode8723B(struct adapter *Adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 
-	/* RT_TRACE(COMP_SCAN, DBG_LOUD, ("phy_SwChnlAndSetBwMode8723B(): bSwChnl %d, bSetChnlBW %d\n", pHalData->bSwChnl, pHalData->bSetChnlBW)); */
 	if (Adapter->bNotifyChannelChange) {
 		DBG_871X("[%s] bSwChnl =%d, ch =%d, bSetChnlBW =%d, bw =%d\n",
 			__func__,
@@ -847,8 +828,6 @@ static void PHY_HandleSwChnlAndSetBW8723B(
 	u8 tmpnCur80MhzPrimeSC = pHalData->nCur80MhzPrimeSC;
 	u8 tmpCenterFrequencyIndex1 = pHalData->CurrentCenterFrequencyIndex1;
 
-	/* DBG_871X("=> PHY_HandleSwChnlAndSetBW8812: bSwitchChannel %d, bSetBandWidth %d\n", bSwitchChannel, bSetBandWidth); */
-
 	/* check is swchnl or setbw */
 	if (!bSwitchChannel && !bSetBandWidth) {
 		DBG_871X("PHY_HandleSwChnlAndSetBW8812:  not switch channel and not set bandwidth\n");
@@ -857,7 +836,6 @@ static void PHY_HandleSwChnlAndSetBW8723B(
 
 	/* skip change for channel or bandwidth is the same */
 	if (bSwitchChannel) {
-		/* if (pHalData->CurrentChannel != ChannelNum) */
 		{
 			if (HAL_IsLegalChannel(Adapter, ChannelNum))
 				pHalData->bSwChnl = true;
@@ -867,10 +845,8 @@ static void PHY_HandleSwChnlAndSetBW8723B(
 	if (bSetBandWidth)
 		pHalData->bSetChnlBW = true;
 
-	if (!pHalData->bSetChnlBW && !pHalData->bSwChnl) {
-		/* DBG_871X("<= PHY_HandleSwChnlAndSetBW8812: bSwChnl %d, bSetChnlBW %d\n", pHalData->bSwChnl, pHalData->bSetChnlBW); */
+	if (!pHalData->bSetChnlBW && !pHalData->bSwChnl)
 		return;
-	}
 
 
 	if (pHalData->bSwChnl) {
@@ -929,9 +905,7 @@ void PHY_SetSwChnlBWMode8723B(
 	u8 Offset80
 )
 {
-	/* DBG_871X("%s() ===>\n", __func__); */
 
 	PHY_HandleSwChnlAndSetBW8723B(Adapter, true, true, channel, Bandwidth, Offset40, Offset80, channel);
 
-	/* DBG_871X("<==%s()\n", __func__); */
 }
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
