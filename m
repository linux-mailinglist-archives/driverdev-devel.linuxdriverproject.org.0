Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E96E318B83
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:06:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DFE4586D64;
	Thu, 11 Feb 2021 13:06:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cuupgk6M4gxm; Thu, 11 Feb 2021 13:06:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 183B686E2B;
	Thu, 11 Feb 2021 13:06:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A8761BF3F6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 27A4E86E29
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SZ0HonkcmAol for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:06:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 40FBB86D64
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:06:09 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id lw17so4623669pjb.0
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 05:06:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Xq/j+6bSsQXfsiFmAqfeFgZtMEQEP9FoOV/ecRFhZFk=;
 b=FZ6GpxLnbNINP+aeg90IhL5A1W4CEkhILmrFjodGQzGTrFIBlkPzlpPDkwC+1P5PQF
 XWQ1CbkXmQm4q84yTO/BaOVg5QEkOdRqKVRzSBj0/OH14knT+k7XQHcOalemUzDy4FI5
 oDGcW2I1KrlqglhWolUJiYlA6Dd6MnpnQJM6IkX6Hlo8jdIvsPkz92wCgI6gW+dfEZ0D
 rN547yLrHNyT8BertfxgRk7pgds0tOC8+bqDjjuIV4nWFGr8UQprk9dI04+CWmE9Q0ET
 6eZVEooOzFjwD7whgPouKJhqroK5FBMJP/gKKWTc6gQNnLX/YKOqssWRyXBpkscn7mGB
 cCUA==
X-Gm-Message-State: AOAM531iNkC9pZZwfJLcf6XgsdZTs1TCeYdAdA11Jq/pG1aTaYplWmJt
 Cz7VOQhryaOOlovpCr9igVI=
X-Google-Smtp-Source: ABdhPJxnDkz5EXTwshOh+wcJ4KprvcZQ/Zr8nqdvrhwweLMCohz/WvJzOPvMgcGxOByGnmbFpLaw5Q==
X-Received: by 2002:a17:902:d4c9:b029:e2:ad28:56bb with SMTP id
 o9-20020a170902d4c9b02900e2ad2856bbmr7747993plg.37.1613048768806; 
 Thu, 11 Feb 2021 05:06:08 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.38])
 by smtp.gmail.com with ESMTPSA id n12sm5190018pff.29.2021.02.11.05.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 05:06:08 -0800 (PST)
Date: Thu, 11 Feb 2021 18:36:04 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH v4 2/2] staging: rtl8723bs: remove obsolete commented out code
Message-ID: <485415dbafc32710f1a8e3f7c951868f7738efe9.1613048573.git.mail@karthek.com>
References: <cover.1613048573.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613048573.git.mail@karthek.com>
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

There is a bunch of messy, commented out code.  Just delete it.

Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: karthik alapati <mail@karthek.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 40 +------------------
 1 file changed, 2 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 77132e4ee..22365926a 100644
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
 
@@ -230,15 +222,11 @@ static void phy_RFSerialWrite_8723B(
 	/*  */
 	/*  Put write addr in [5:0]  and write data in [31:16] */
 	/*  */
-	/* DataAndAddr = (Data<<16) | (NewOffset&0x3f); */
 	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;	/*  T65 RF */
-
 	/*  */
 	/*  Write Operation */
 	/*  */
 	PHY_SetBBReg(Adapter, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);
-	/* RTPRINT(FPHY, PHY_RFW, ("RFW-%d Addr[0x%lx]= 0x%lx\n", eRFPath, pPhyReg->rf3wireOffset, DataAndAddr)); */
-
 }
 
 
@@ -473,7 +461,6 @@ int PHY_RFConfig8723B(struct adapter *Adapter)
 	rtStatus = PHY_RF6052_Config8723B(Adapter);
 
 	phy_LCK_8723B(Adapter);
-	/* PHY_BB8723B_Config_1T(Adapter); */
 
 	return rtStatus;
 }
@@ -580,8 +567,6 @@ u8 PHY_GetTxPowerIndex(
 	s8 txPower = 0, powerDiffByRate = 0, limit = 0;
 	bool bIn24G = false;
 
-	/* DBG_871X("===>%s\n", __func__); */
-
 	txPower = (s8) PHY_GetTxPowerIndexBase(padapter, RFPath, Rate, BandWidth, Channel, &bIn24G);
 	powerDiffByRate = PHY_GetTxPowerByRate(padapter, BAND_ON_2_4G, ODM_RF_PATH_A, RF_1TX, Rate);
 
@@ -603,7 +588,6 @@ u8 PHY_GetTxPowerIndex(
 	if (txPower > MAX_POWER_INDEX)
 		txPower = MAX_POWER_INDEX;
 
-	/* DBG_871X("Final Tx Power(RF-%c, Channel: %d) = %d(0x%X)\n", ((RFPath == 0)?'A':'B'), Channel, txPower, txPower)); */
 	return (u8) txPower;
 }
 
@@ -750,8 +734,6 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
 
 		PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);
 
-/* 			PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
-
 		PHY_SetBBReg(Adapter, rOFDM0_TxPseudoNoiseWgt, (BIT31|BIT30), 0x0);
 		break;
 
@@ -766,15 +748,9 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
 
 		PHY_SetBBReg(Adapter, rOFDM1_LSTF, 0xC00, pHalData->nCur40MhzPrimeSC);
 
-/* PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 0); */
-
 		PHY_SetBBReg(Adapter, 0x818, (BIT26|BIT27), (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
-
 		break;
-
 	default:
-		/*RT_TRACE(COMP_DBG, DBG_LOUD, ("phy_SetBWMode8723B(): unknown Bandwidth: %#X\n"\
-					, pHalData->CurrentChannelBW));*/
 		break;
 	}
 
@@ -787,10 +763,8 @@ static void phy_SwChnl8723B(struct adapter *padapter)
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
@@ -802,7 +776,6 @@ static void phy_SwChnlAndSetBwMode8723B(struct adapter *Adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 
-	/* RT_TRACE(COMP_SCAN, DBG_LOUD, ("phy_SwChnlAndSetBwMode8723B(): bSwChnl %d, bSetChnlBW %d\n", pHalData->bSwChnl, pHalData->bSetChnlBW)); */
 	if (Adapter->bNotifyChannelChange) {
 		DBG_871X("[%s] bSwChnl =%d, ch =%d, bSetChnlBW =%d, bw =%d\n",
 			__func__,
@@ -847,8 +820,6 @@ static void PHY_HandleSwChnlAndSetBW8723B(
 	u8 tmpnCur80MhzPrimeSC = pHalData->nCur80MhzPrimeSC;
 	u8 tmpCenterFrequencyIndex1 = pHalData->CurrentCenterFrequencyIndex1;
 
-	/* DBG_871X("=> PHY_HandleSwChnlAndSetBW8812: bSwitchChannel %d, bSetBandWidth %d\n", bSwitchChannel, bSetBandWidth); */
-
 	/* check is swchnl or setbw */
 	if (!bSwitchChannel && !bSetBandWidth) {
 		DBG_871X("PHY_HandleSwChnlAndSetBW8812:  not switch channel and not set bandwidth\n");
@@ -857,7 +828,6 @@ static void PHY_HandleSwChnlAndSetBW8723B(
 
 	/* skip change for channel or bandwidth is the same */
 	if (bSwitchChannel) {
-		/* if (pHalData->CurrentChannel != ChannelNum) */
 		{
 			if (HAL_IsLegalChannel(Adapter, ChannelNum))
 				pHalData->bSwChnl = true;
@@ -867,10 +837,8 @@ static void PHY_HandleSwChnlAndSetBW8723B(
 	if (bSetBandWidth)
 		pHalData->bSetChnlBW = true;
 
-	if (!pHalData->bSetChnlBW && !pHalData->bSwChnl) {
-		/* DBG_871X("<= PHY_HandleSwChnlAndSetBW8812: bSwChnl %d, bSetChnlBW %d\n", pHalData->bSwChnl, pHalData->bSetChnlBW); */
+	if (!pHalData->bSetChnlBW && !pHalData->bSwChnl)
 		return;
-	}
 
 
 	if (pHalData->bSwChnl) {
@@ -929,9 +897,5 @@ void PHY_SetSwChnlBWMode8723B(
 	u8 Offset80
 )
 {
-	/* DBG_871X("%s() ===>\n", __func__); */
-
 	PHY_HandleSwChnlAndSetBW8723B(Adapter, true, true, channel, Bandwidth, Offset40, Offset80, channel);
-
-	/* DBG_871X("<==%s()\n", __func__); */
 }
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
