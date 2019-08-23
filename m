Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D3C9B46E
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2019 18:24:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3798F86E14;
	Fri, 23 Aug 2019 16:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NalT969yhzrC; Fri, 23 Aug 2019 16:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EB3486E07;
	Fri, 23 Aug 2019 16:24:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C1F01BF263
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2019 16:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58B3488585
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2019 16:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zLiitQFxY11M for <devel@linuxdriverproject.org>;
 Fri, 23 Aug 2019 16:24:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender-of-o52.zoho.com (sender-of-o52.zoho.com [135.84.80.217])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 358D9885C6
 for <devel@driverdev.osuosl.org>; Fri, 23 Aug 2019 16:24:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566577459; cv=none; d=zoho.com; s=zohoarc; 
 b=d44TyERSDniRgfkarAZXKficKhfoK9cxRKWY5DpkAJ68NvF7h5Ky3mtVWGO3g2pkYQAb6yq/jG6YG+jvqGsMWNbbt2TP35gZvZstDhSu4fufEPcMBD0/jxYGR53gCuGGxMztXvBrzj/Cw0A84E2IQHg7+7uvGjEqL4q44zF+/CA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566577459;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=oTEca0+JkMwmTD2K3n6tenNXccXxTKkMAL8MDDry6+c=; 
 b=hFjzJ++tR91MvvFdt+Fkozp3JXMQfx67GhqmF2nMZeELL02qv+gKI8uYS5PX0x3jqhMPYNRtVvnGHeljFy+nob7g1S3iVGDlB9nRLbP1hsjYZafUMPocxaFD4fVfUMZhJZ29O2IxSWwxrIaoK5Ki1wZ6fuKeO+l0JMQF1+mXFxM=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566577459; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=13989; bh=oTEca0+JkMwmTD2K3n6tenNXccXxTKkMAL8MDDry6+c=;
 b=CpwXQj1G2/dWJuSd2tVlwWEDDLydCXbndDMWVS7N8RAnzJPKo/V0Q7cO8mfXTpKT
 OB99WeCCgXEzsgw/qN/ZNXtkati+P2fdZLd4fVvmDRhoXAKb+g9ITBwcqN5GFntUJ89
 Cxkt+WfevKuB8/D2huwqR2V3Zh12JAbF//bGuhwc=
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2]) by
 mx.zohomail.com with SMTPS id 1566577455386750.6789979443778;
 Fri, 23 Aug 2019 09:24:15 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190823162410.10038-1-stephen@brennan.io>
Subject: [PATCH] staging: rtl8192u: remove code under TO_DO_LIST
Date: Fri, 23 Aug 2019 09:24:10 -0700
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Several blocks of code are guarded by #ifdef TO_DO_LIST. If this is
defined, compilation fails. No machinery exists to define this, and no
documenation on the in-progress feature exists. Since this code is dead,
let's delete it.

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---

Sorry, I know you're giving a keynote right now Greg :)

 .../staging/rtl8192u/ieee80211/ieee80211.h    |   2 -
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c |  21 ----
 .../rtl8192u/ieee80211/rtl819x_HTProc.c       |   4 -
 .../rtl8192u/ieee80211/rtl819x_TSProc.c       |   4 -
 drivers/staging/rtl8192u/r8192U_core.c        | 101 +-----------------
 drivers/staging/rtl8192u/r819xU_phy.c         |  59 ----------
 6 files changed, 4 insertions(+), 187 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index daebbbd8f4dd..9576b647f6b1 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1649,10 +1649,8 @@ struct ieee80211_device {
 	struct list_head		Rx_TS_Pending_List;
 	struct list_head		Rx_TS_Unused_List;
 	struct rx_ts_record		RxTsRecord[TOTAL_TS_NUM];
-//#ifdef TO_DO_LIST
 	struct rx_reorder_entry	RxReorderEntry[128];
 	struct list_head		RxReorder_Unused_List;
-//#endif
 	// Qos related. Added by Annie, 2005-11-01.
 //	PSTA_QOS			pStaQos;
 	u8				ForcedPriority;		// Force per-packet priority 1~7. (default: 0, not to force it.)
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index e76bdedc8409..140e3cb66a2e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -302,13 +302,6 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 	if (is_multicast_ether_addr(hdr->addr1))
 		return;
 	//check packet and mode later
-#ifdef TO_DO_LIST
-	if (pTcb->PacketLength >= 4096)
-		return;
-	// For RTL819X, if pairwisekey = wep/tkip, we don't aggrregation.
-	if (!Adapter->HalFunc.GetNmodeSupportBySecCfgHandler(Adapter))
-		return;
-#endif
 	if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
 		return;
 	}
@@ -509,20 +502,6 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
 					struct cb_desc *tcb_desc)
 {
-#ifdef TO_DO_LIST
-	if (!IsDataFrame(pFrame)) {
-		pTcb->bTxDisableRateFallBack = true;
-		pTcb->bTxUseDriverAssingedRate = true;
-		pTcb->RATRIndex = 7;
-		return;
-	}
-
-	if (pMgntInfo->ForcedDataRate != 0) {
-		pTcb->bTxDisableRateFallBack = true;
-		pTcb->bTxUseDriverAssingedRate = true;
-		return;
-	}
-#endif
 	if (ieee->bTxDisableRateFallBack)
 		tcb_desc->bTxDisableRateFallBack = true;
 
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index c73a8058cf87..dba3f2db9f48 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -93,10 +93,6 @@ void HTUpdateDefaultSetting(struct ieee80211_device *ieee)
 	ieee->bTxDisableRateFallBack = 0;
 	ieee->bTxUseDriverAssingedRate = 0;
 
-#ifdef	TO_DO_LIST
-	// 8190 only. Assign duration operation mode to firmware
-	pMgntInfo->bTxEnableFwCalcDur = (BOOLEAN)pNdisCommon->bRegTxEnableFwCalcDur;
-#endif
 	/*
 	 * 8190 only, Realtek proprietary aggregation mode
 	 * Set MPDUDensity=2,   1: Set MPDUDensity=2(32k)  for Realtek AP and set MPDUDensity=0(8k) for others
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index f4e5aa07421f..5cee1031a27c 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -180,14 +180,12 @@ void TSInitialize(struct ieee80211_device *ieee)
 	}
 	// Initialize unused Rx Reorder List.
 	INIT_LIST_HEAD(&ieee->RxReorder_Unused_List);
-//#ifdef TO_DO_LIST
 	for (count = 0; count < REORDER_ENTRY_NUM; count++) {
 		list_add_tail(&pRxReorderEntry->List, &ieee->RxReorder_Unused_List);
 		if (count == (REORDER_ENTRY_NUM - 1))
 			break;
 		pRxReorderEntry = &ieee->RxReorderEntry[count + 1];
 	}
-//#endif
 }
 
 static void AdmitTS(struct ieee80211_device *ieee,
@@ -417,7 +415,6 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 	TsInitDelBA(ieee, pTs, TxRxSelect);
 
 	if (TxRxSelect == RX_DIR) {
-//#ifdef TO_DO_LIST
 		struct rx_reorder_entry	*pRxReorderEntry;
 		struct rx_ts_record     *pRxTS = (struct rx_ts_record *)pTs;
 		if (timer_pending(&pRxTS->rx_pkt_pending_timer))
@@ -445,7 +442,6 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 			spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
 		}
 
-//#endif
 	} else {
 		struct tx_ts_record *pTxTS = (struct tx_ts_record *)pTs;
 		del_timer_sync(&pTxTS->ts_add_ba_timer);
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 569d02240bf5..2821411878ce 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2076,14 +2076,6 @@ static void rtl8192_SetWirelessMode(struct net_device *dev, u8 wireless_mode)
 			wireless_mode = WIRELESS_MODE_B;
 		}
 	}
-#ifdef TO_DO_LIST
-	/* TODO: this function doesn't work well at this time,
-	 * we should wait for FPGA
-	 */
-	ActUpdateChannelAccessSetting(
-			pAdapter, pHalData->CurrentWirelessMode,
-			&pAdapter->MgntInfo.Info8185.ChannelAccessSetting);
-#endif
 	priv->ieee80211->mode = wireless_mode;
 
 	if (wireless_mode == WIRELESS_MODE_N_24G ||
@@ -2159,12 +2151,6 @@ static int rtl8192_init_priv_variable(struct net_device *dev)
 
 	priv->ieee80211->InitialGainHandler = InitialGain819xUsb;
 	priv->card_type = USB;
-#ifdef TO_DO_LIST
-	if (Adapter->bInHctTest) {
-		pHalData->ShortRetryLimit = 7;
-		pHalData->LongRetryLimit = 7;
-	}
-#endif
 	priv->ShortRetryLimit = 0x30;
 	priv->LongRetryLimit = 0x30;
 	priv->EarlyRxThreshold = 7;
@@ -2180,34 +2166,6 @@ static int rtl8192_init_priv_variable(struct net_device *dev)
 		 * TRUE: SW provides them
 		 */
 		(false ? TCR_SAT : 0);
-#ifdef TO_DO_LIST
-	if (Adapter->bInHctTest)
-		pHalData->ReceiveConfig =
-			pHalData->CSMethod |
-			/* accept management/data */
-			RCR_AMF | RCR_ADF |
-			/* accept control frame for SW
-			 * AP needs PS-poll
-			 */
-			RCR_ACF |
-			/* accept BC/MC/UC */
-			RCR_AB | RCR_AM | RCR_APM |
-			/* accept ICV/CRC error
-			 * packet
-			 */
-			RCR_AICV | RCR_ACRC32 |
-			/* Max DMA Burst Size per Tx
-			 * DMA Burst, 7: unlimited.
-			 */
-			((u32)7 << RCR_MXDMA_OFFSET) |
-			/* Rx FIFO Threshold,
-			 * 7: No Rx threshold.
-			 */
-			(pHalData->EarlyRxThreshold << RCR_FIFO_OFFSET) |
-			(pHalData->EarlyRxThreshold == 7 ? RCR_OnlyErlPkt : 0);
-	else
-
-#endif
 	priv->ReceiveConfig	=
 		/* accept management/data */
 		RCR_AMF | RCR_ADF |
@@ -2665,19 +2623,10 @@ static void rtl8192_hwconfig(struct net_device *dev)
 		regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
 		break;
 	case WIRELESS_MODE_AUTO:
-#ifdef TO_DO_LIST
-		if (Adapter->bInHctTest) {
-			regBwOpMode = BW_OPMODE_20MHZ;
-			regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
-			regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
-		} else
-#endif
-		{
-			regBwOpMode = BW_OPMODE_20MHZ;
-			regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG |
-				  RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
-			regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
-		}
+		regBwOpMode = BW_OPMODE_20MHZ;
+		regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG |
+			  RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
+		regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
 		break;
 	case WIRELESS_MODE_N_24G:
 		/* It support CCK rate by default. CCK rate will be filtered
@@ -2848,48 +2797,6 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 	}
 	RT_TRACE(COMP_INIT, "%s():after firmware download\n", __func__);
 
-#ifdef TO_DO_LIST
-	if (Adapter->ResetProgress == RESET_TYPE_NORESET) {
-		if (pMgntInfo->RegRfOff) { /* User disable RF via registry. */
-			RT_TRACE((COMP_INIT | COMP_RF), DBG_LOUD,
-				 ("InitializeAdapter819xUsb(): Turn off RF for RegRfOff ----------\n"));
-			MgntActSet_RF_State(Adapter, eRfOff, RF_CHANGE_BY_SW);
-			/* Those actions will be discard in MgntActSet_RF_State
-			 * because of the same state
-			 */
-			for (eRFPath = 0; eRFPath < pHalData->NumTotalRFPath; eRFPath++)
-				PHY_SetRFReg(Adapter,
-					     (enum rf90_radio_path_e)eRFPath,
-					     0x4, 0xC00, 0x0);
-		} else if (pMgntInfo->RfOffReason > RF_CHANGE_BY_PS) {
-			/* H/W or S/W RF OFF before sleep. */
-			RT_TRACE((COMP_INIT | COMP_RF), DBG_LOUD,
-				 ("InitializeAdapter819xUsb(): Turn off RF for RfOffReason(%d) ----------\n",
-				  pMgntInfo->RfOffReason));
-			MgntActSet_RF_State(Adapter,
-					    eRfOff,
-					    pMgntInfo->RfOffReason);
-		} else {
-			pHalData->eRFPowerState = eRfOn;
-			pMgntInfo->RfOffReason = 0;
-			RT_TRACE((COMP_INIT | COMP_RF), DBG_LOUD,
-				 ("InitializeAdapter819xUsb(): RF is on ----------\n"));
-		}
-	} else {
-		if (pHalData->eRFPowerState == eRfOff) {
-			MgntActSet_RF_State(Adapter,
-					    eRfOff,
-					    pMgntInfo->RfOffReason);
-			/* Those actions will be discard in MgntActSet_RF_State
-			 * because of the same state
-			 */
-			for (eRFPath = 0; eRFPath < pHalData->NumTotalRFPath; eRFPath++)
-				PHY_SetRFReg(Adapter,
-					     (enum rf90_radio_path_e)eRFPath,
-					     0x4, 0xC00, 0x0);
-		}
-	}
-#endif
 	/* config RF. */
 	if (priv->ResetProgress == RESET_TYPE_NORESET) {
 		rtl8192_phy_RFConfig(dev);
diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 5f04afe53d69..c04d8eca0cfb 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -516,16 +516,6 @@ static void rtl8192_phyConfigBB(struct net_device *dev,
 {
 	u32 i;
 
-#ifdef TO_DO_LIST
-	u32 *rtl8192PhyRegArrayTable = NULL, *rtl8192AgcTabArrayTable = NULL;
-
-	if (Adapter->bInHctTest) {
-		PHY_REGArrayLen = PHY_REGArrayLengthDTM;
-		AGCTAB_ArrayLen = AGCTAB_ArrayLengthDTM;
-		Rtl8190PHY_REGArray_Table = Rtl819XPHY_REGArrayDTM;
-		Rtl8190AGCTAB_Array_Table = Rtl819XAGCTAB_ArrayDTM;
-	}
-#endif
 	if (ConfigType == BASEBAND_CONFIG_PHY_REG) {
 		for (i = 0; i < PHY_REG_1T2RArrayLength; i += 2) {
 			rtl8192_setBBreg(dev, Rtl8192UsbPHY_REG_1T2RArray[i],
@@ -1059,10 +1049,6 @@ static void rtl8192_SetTxPowerLevel(struct net_device *dev, u8 channel)
 
 	switch (priv->rf_chip) {
 	case RF_8225:
-#ifdef TO_DO_LIST
-		PHY_SetRF8225CckTxPower(Adapter, powerlevel);
-		PHY_SetRF8225OfdmTxPower(Adapter, powerlevelOFDM24G);
-#endif
 		break;
 
 	case RF_8256:
@@ -1160,48 +1146,6 @@ bool rtl8192_SetRFPowerState(struct net_device *dev,
 		RT_TRACE(COMP_ERR, "Not support rf_chip(%x)\n", priv->rf_chip);
 		break;
 	}
-#ifdef TO_DO_LIST
-	if (bResult) {
-		/* Update current RF state variable. */
-		pHalData->eRFPowerState = eRFPowerState;
-		switch (pHalData->RFChipID) {
-		case RF_8256:
-			switch (pHalData->eRFPowerState) {
-			case eRfOff:
-				/* If Rf off reason is from IPS,
-				 * LED should blink with no link
-				 */
-				if (pMgntInfo->RfOffReason == RF_CHANGE_BY_IPS)
-					Adapter->HalFunc.LedControlHandler(Adapter, LED_CTL_NO_LINK);
-				else
-					/* Turn off LED if RF is not ON. */
-					Adapter->HalFunc.LedControlHandler(Adapter, LED_CTL_POWER_OFF);
-				break;
-
-			case eRfOn:
-				/* Turn on RF we are still linked, which might
-				 * happen when we quickly turn off and on HW RF.
-				 */
-				if (pMgntInfo->bMediaConnect)
-					Adapter->HalFunc.LedControlHandler(Adapter, LED_CTL_LINK);
-				else
-					/* Turn off LED if RF is not ON. */
-					Adapter->HalFunc.LedControlHandler(Adapter, LED_CTL_NO_LINK);
-				break;
-
-			default:
-				break;
-			}
-			break;
-
-		default:
-			RT_TRACE(COMP_RF, DBG_LOUD, "%s(): Unknown RF type\n",
-				 __func__);
-			break;
-		}
-
-	}
-#endif
 	priv->SetRFPowerStateInProgress = false;
 
 	return bResult;
@@ -1628,9 +1572,6 @@ void rtl8192_SetBWModeWorkItem(struct net_device *dev)
 	/* <3> Set RF related register */
 	switch (priv->rf_chip) {
 	case RF_8225:
-#ifdef TO_DO_LIST
-		PHY_SetRF8225Bandwidth(Adapter, pHalData->CurrentChannelBW);
-#endif
 		break;
 
 	case RF_8256:
-- 
2.22.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
