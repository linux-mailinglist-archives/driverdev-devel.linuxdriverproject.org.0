Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55872195DF7
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 19:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03845884A6;
	Fri, 27 Mar 2020 18:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-0ZcmCAQhFX; Fri, 27 Mar 2020 18:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8A0C883FC;
	Fri, 27 Mar 2020 18:54:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94D011BF48B
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 18:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 913FB87553
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 18:54:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsnkSCGMOUp9 for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 18:54:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 135C987551
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 18:54:47 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id s1so12713460wrv.5
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 11:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pQVoDDVU72fMJrsB7qnJUQmdLsKDuGPHskP37tFzfTU=;
 b=AedPcFSSP+ku6vc2e8j3ZcGdzR5aKXc8ocpHjuWcTCKWMJPHYqiJH/Oyp2bd01h76l
 xFZqrvuzMVp/fXMwgselxWpK1fLeo7TPTvrdIi5cC6YDNKncGM8Bf9UuvMafwRYWpFRm
 Fgj+Nlr9UfL7k/JRqxtT7SHRV//j26T1e/ZFNB9sc2YTLvdaiX6YtCi3HOsiN14cLlRO
 DAyXtDTX0R0Ru7jNg9ZZFd0bIqtQFxl4ZFOpO1tDeUShRYs91agnm9YGollCvwNvNhS9
 BAc56NRFT2drXsHuCURiY+FksH13XylJLjBh8UqzijGezPZQLnHttcdE3vo6dMae2rvF
 Yjjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pQVoDDVU72fMJrsB7qnJUQmdLsKDuGPHskP37tFzfTU=;
 b=c5ZYof1J9Nd2NaOlH4KIDt8Go+9BpZEAn3i2XJYtw8jcTZG0V2S736/VPuua5A/fhP
 y7uiRknCXWfAkhG9EqcE3mR0LHyaHjXXoR5GTQg2LZgUDnCAfhmbl6C1euhVBEz2Xve3
 0f4npNjXbjaVtgLfxQWme1kWfLod8h+A21Jyf208RKPPze2oB54KaWRUvEQxj3yJr1hk
 3COoFXMfbhIpJctH+TKd1xyu5e2vT13TieQr6EkBQ3RJHCxrISKxFcLNLYWoqWatATj8
 Rzl20fn3cYggt6z9JR3mPxWqNDi0TY9dLnicKzx6ksBetaW79xcXQAJbCUJYuQ/i0C79
 L0qA==
X-Gm-Message-State: ANhLgQ06JRmUfjm2JMlevWDRjo/ZQo7Z4hQE4EAnnvV+HZ/FQuXPh+uB
 0kcHHUIW8sUFYnzYwDwZ5wc=
X-Google-Smtp-Source: ADFU+vt+KSsJ6xPPttVWJZRCkivzeJ1UxRPpqQ0qoF3YWXH1UQ/jElxhsaBf+wKRotUH7l0U+18Quw==
X-Received: by 2002:adf:f1ce:: with SMTP id z14mr919829wro.68.1585335284970;
 Fri, 27 Mar 2020 11:54:44 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-103.092.219.pools.vodafone-ip.de. [92.219.207.103])
 by smtp.gmail.com with ESMTPSA id v11sm9613938wrm.43.2020.03.27.11.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 11:54:44 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove unnecessary parentheses
Date: Fri, 27 Mar 2020 19:53:11 +0100
Message-Id: <20200327185311.16129-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove all remaining unnecessary parentheses reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8188eu/core/rtw_ieee80211.c    |  4 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  4 +-
 drivers/staging/rtl8188eu/hal/odm.c           | 52 +++++-----
 drivers/staging/rtl8188eu/hal/phy.c           |  8 +-
 drivers/staging/rtl8188eu/hal/rf.c            |  2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c  |  2 +-
 .../staging/rtl8188eu/include/osdep_service.h |  2 +-
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 94 +++++++++----------
 .../staging/rtl8188eu/os_dep/rtw_android.c    |  2 +-
 9 files changed, 85 insertions(+), 85 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index e186982d5908..caf600eba03b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -253,11 +253,11 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	}
 
 	/* DS parameter set */
-	ie = rtw_set_ie(ie, _DSSET_IE_, 1, (u8 *)&(pdev_network->Configuration.DSConfig), &sz);
+	ie = rtw_set_ie(ie, _DSSET_IE_, 1, (u8 *)&pdev_network->Configuration.DSConfig, &sz);
 
 	/* IBSS Parameter Set */
 
-	ie = rtw_set_ie(ie, _IBSS_PARA_IE_, 2, (u8 *)&(pdev_network->Configuration.ATIMWindow), &sz);
+	ie = rtw_set_ie(ie, _IBSS_PARA_IE_, 2, (u8 *)&pdev_network->Configuration.ATIMWindow, &sz);
 
 	if (rateLen > 8)
 		ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 04897cd48370..bce777e4bf6c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1932,11 +1932,11 @@ static void site_survey(struct adapter *padapter)
 				if (pmlmeext->sitesurvey_res.ssid[i].ssid_length) {
 					/* todo: to issue two probe req??? */
 					issue_probereq(padapter,
-					&(pmlmeext->sitesurvey_res.ssid[i]),
+					&pmlmeext->sitesurvey_res.ssid[i],
 								NULL, false);
 					/* msleep(SURVEY_TO>>1); */
 					issue_probereq(padapter,
-					&(pmlmeext->sitesurvey_res.ssid[i]),
+					&pmlmeext->sitesurvey_res.ssid[i],
 								NULL, false);
 				}
 			}
diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index 698377ea60ee..b3cc40527730 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -193,7 +193,7 @@ void ODM_DMWatchdog(struct odm_dm_struct *pDM_Odm)
 	odm_DIG(pDM_Odm);
 	odm_CCKPacketDetectionThresh(pDM_Odm);
 
-	if (*(pDM_Odm->pbPowerSaving))
+	if (*pDM_Odm->pbPowerSaving)
 		return;
 
 	odm_RefreshRateAdaptiveMask(pDM_Odm);
@@ -229,13 +229,13 @@ void odm_CommonInfoSelfUpdate(struct odm_dm_struct *pDM_Odm)
 	u8 i;
 	struct sta_info *pEntry;
 
-	if (*(pDM_Odm->pBandWidth) == ODM_BW40M) {
-		if (*(pDM_Odm->pSecChOffset) == 1)
-			pDM_Odm->ControlChannel = *(pDM_Odm->pChannel) - 2;
-		else if (*(pDM_Odm->pSecChOffset) == 2)
-			pDM_Odm->ControlChannel = *(pDM_Odm->pChannel) + 2;
+	if (*pDM_Odm->pBandWidth == ODM_BW40M) {
+		if (*pDM_Odm->pSecChOffset == 1)
+			pDM_Odm->ControlChannel = *pDM_Odm->pChannel - 2;
+		else if (*pDM_Odm->pSecChOffset == 2)
+			pDM_Odm->ControlChannel = *pDM_Odm->pChannel + 2;
 	} else {
-		pDM_Odm->ControlChannel = *(pDM_Odm->pChannel);
+		pDM_Odm->ControlChannel = *pDM_Odm->pChannel;
 	}
 
 	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
@@ -270,16 +270,16 @@ void odm_CmnInfoInit_Debug(struct odm_dm_struct *pDM_Odm)
 void odm_CmnInfoHook_Debug(struct odm_dm_struct *pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoHook_Debug==>\n"));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pNumTxBytesUnicast=%llu\n", *(pDM_Odm->pNumTxBytesUnicast)));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pNumRxBytesUnicast=%llu\n", *(pDM_Odm->pNumRxBytesUnicast)));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pWirelessMode=0x%x\n", *(pDM_Odm->pWirelessMode)));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pSecChOffset=%d\n", *(pDM_Odm->pSecChOffset)));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pSecurity=%d\n", *(pDM_Odm->pSecurity)));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pBandWidth=%d\n", *(pDM_Odm->pBandWidth)));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pChannel=%d\n", *(pDM_Odm->pChannel)));
-
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pbScanInProcess=%d\n", *(pDM_Odm->pbScanInProcess)));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pbPowerSaving=%d\n", *(pDM_Odm->pbPowerSaving)));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pNumTxBytesUnicast=%llu\n", *pDM_Odm->pNumTxBytesUnicast));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pNumRxBytesUnicast=%llu\n", *pDM_Odm->pNumRxBytesUnicast));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pWirelessMode=0x%x\n", *pDM_Odm->pWirelessMode));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pSecChOffset=%d\n", *pDM_Odm->pSecChOffset));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pSecurity=%d\n", *pDM_Odm->pSecurity));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pBandWidth=%d\n", *pDM_Odm->pBandWidth));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pChannel=%d\n", *pDM_Odm->pChannel));
+
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pbScanInProcess=%d\n", *pDM_Odm->pbScanInProcess));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pbPowerSaving=%d\n", *pDM_Odm->pbPowerSaving));
 }
 
 void odm_CmnInfoUpdate_Debug(struct odm_dm_struct *pDM_Odm)
@@ -348,7 +348,7 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 		return;
 	}
 
-	if (*(pDM_Odm->pbScanInProcess)) {
+	if (*pDM_Odm->pbScanInProcess) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG() Return: In Scan Progress\n"));
 		return;
 	}
@@ -508,7 +508,7 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 {
 	struct adapter *adapter = pDM_Odm->Adapter;
 	u32 ret_value;
-	struct false_alarm_stats *FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
+	struct false_alarm_stats *FalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT))
 		return;
@@ -581,7 +581,7 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 void odm_CCKPacketDetectionThresh(struct odm_dm_struct *pDM_Odm)
 {
 	u8 CurCCK_CCAThres;
-	struct false_alarm_stats *FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
+	struct false_alarm_stats *FalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 
 	if (!(pDM_Odm->SupportAbility & (ODM_BB_CCK_PD | ODM_BB_FA_CNT)))
 		return;
@@ -739,7 +739,7 @@ u32 ODM_Get_Rate_Bitmap(struct odm_dm_struct *pDM_Odm, u32 macid, u32 ra_mask, u
 		} else if (rssi_level == DM_RATR_STA_MIDDLE) {
 			rate_bitmap = 0x000ff000;
 		} else {
-			if (*(pDM_Odm->pBandWidth) == ODM_BW40M)
+			if (*pDM_Odm->pBandWidth == ODM_BW40M)
 				rate_bitmap = 0x000ff015;
 			else
 				rate_bitmap = 0x000ff005;
@@ -945,7 +945,7 @@ void odm_TXPowerTrackingInit(struct odm_dm_struct *pDM_Odm)
 {
 	pDM_Odm->RFCalibrateInfo.bTXPowerTracking = true;
 	pDM_Odm->RFCalibrateInfo.TXPowercount = 0;
-	if (*(pDM_Odm->mp_mode) != 1)
+	if (*pDM_Odm->mp_mode != 1)
 		pDM_Odm->RFCalibrateInfo.TxPowerTrackControl = true;
 	MSG_88E("pDM_Odm TxPowerTrackControl = %d\n", pDM_Odm->RFCalibrateInfo.TxPowerTrackControl);
 
@@ -1035,11 +1035,11 @@ void odm_EdcaTurboCheckCE(struct odm_dm_struct *pDM_Odm)
 	u64	cur_tx_bytes = 0;
 	u64	cur_rx_bytes = 0;
 	u8	bbtchange = false;
-	struct xmit_priv		*pxmitpriv = &(Adapter->xmitpriv);
-	struct recv_priv		*precvpriv = &(Adapter->recvpriv);
+	struct xmit_priv		*pxmitpriv = &Adapter->xmitpriv;
+	struct recv_priv		*precvpriv = &Adapter->recvpriv;
 	struct registry_priv	*pregpriv = &Adapter->registrypriv;
-	struct mlme_ext_priv	*pmlmeext = &(Adapter->mlmeextpriv);
-	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
+	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
 	if (pregpriv->wifi_spec == 1) /*  (pmlmeinfo->HT_enable == 0)) */
 		goto dm_CheckEdcaTurbo_EXIT;
diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index b9025815b682..5eca3625d5a8 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -345,8 +345,8 @@ static void dm_txpwr_track_setpwr(struct odm_dm_struct *dm_odm)
 {
 	if (dm_odm->BbSwingFlagOfdm || dm_odm->BbSwingFlagCck) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
-			     ("dm_txpwr_track_setpwr CH=%d\n", *(dm_odm->pChannel)));
-		phy_set_tx_power_level(dm_odm->Adapter, *(dm_odm->pChannel));
+			     ("dm_txpwr_track_setpwr CH=%d\n", *dm_odm->pChannel));
+		phy_set_tx_power_level(dm_odm->Adapter, *dm_odm->pChannel);
 		dm_odm->BbSwingFlagOfdm = false;
 		dm_odm->BbSwingFlagCck = false;
 	}
@@ -975,7 +975,7 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 
 	u32 retry_count = 9;
 
-	if (*(dm_odm->mp_mode) == 1)
+	if (*dm_odm->mp_mode == 1)
 		retry_count = 9;
 	else
 		retry_count = 2;
@@ -1320,7 +1320,7 @@ void rtl88eu_phy_lc_calibrate(struct adapter *adapt)
 	if (singletone || carrier_sup)
 		return;
 
-	while (*(dm_odm->pbScanInProcess) && timecount < timeout) {
+	while (*dm_odm->pbScanInProcess && timecount < timeout) {
 		mdelay(50);
 		timecount += 50;
 	}
diff --git a/drivers/staging/rtl8188eu/hal/rf.c b/drivers/staging/rtl8188eu/hal/rf.c
index 00a9f692bb06..6702f263c770 100644
--- a/drivers/staging/rtl8188eu/hal/rf.c
+++ b/drivers/staging/rtl8188eu/hal/rf.c
@@ -79,7 +79,7 @@ void rtl88eu_phy_rf6052_set_cck_txpower(struct adapter *adapt, u8 *powerlevel)
 		}
 	}
 	for (idx1 = RF_PATH_A; idx1 <= RF_PATH_B; idx1++) {
-		ptr = (u8 *)(&(tx_agc[idx1]));
+		ptr = (u8 *)(&tx_agc[idx1]);
 		for (idx2 = 0; idx2 < 4; idx2++) {
 			if (*ptr > RF6052_MAX_TX_PWR)
 				*ptr = RF6052_MAX_TX_PWR;
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
index 371e746915dd..176716d3e903 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
@@ -256,7 +256,7 @@ static void ConstructBeacon(struct adapter *adapt, u8 *pframe, u32 *pLength)
 	pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, min_t(u32, rate_len, 8), cur_network->SupportedRates, &pktlen);
 
 	/*  DS parameter set */
-	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pktlen);
+	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&cur_network->Configuration.DSConfig, &pktlen);
 
 	if ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) {
 		u32 ATIMWindow;
diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index c0114ad79788..0d3e4a6e7e85 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -50,7 +50,7 @@ struct	__queue	{
 
 static inline struct list_head *get_list_head(struct __queue *queue)
 {
-	return &(queue->queue);
+	return &queue->queue;
 }
 
 static inline int rtw_netif_queue_stopped(struct net_device *pnetdev)
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 9a89791720e0..0aff01bb69c3 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -93,7 +93,7 @@ static char *translate_scan(struct adapter *padapter,
 			    struct wlan_network *pnetwork,
 			    char *start, char *stop)
 {
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct iw_event iwe;
 	u16 cap;
 	__le16 le_tmp;
@@ -417,7 +417,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 				ret = -EOPNOTSUPP;
 				goto exit;
 			}
-			memcpy(&(psecuritypriv->dot11DefKey[wep_key_idx].skey[0]), pwep->KeyMaterial, pwep->KeyLength);
+			memcpy(&psecuritypriv->dot11DefKey[wep_key_idx].skey[0], pwep->KeyMaterial, pwep->KeyLength);
 			psecuritypriv->dot11DefKeylen[wep_key_idx] = pwep->KeyLength;
 			rtw_set_key(padapter, psecuritypriv, wep_key_idx, 0);
 		}
@@ -444,8 +444,8 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 					memcpy(psta->dot118021x_UncstKey.skey,  param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 
 					if (strcmp(param->u.crypt.alg, "TKIP") == 0) { /* set mic key */
-						memcpy(psta->dot11tkiptxmickey.skey, &(param->u.crypt.key[16]), 8);
-						memcpy(psta->dot11tkiprxmickey.skey, &(param->u.crypt.key[24]), 8);
+						memcpy(psta->dot11tkiptxmickey.skey, &param->u.crypt.key[16], 8);
+						memcpy(psta->dot11tkiprxmickey.skey, &param->u.crypt.key[24], 8);
 						padapter->securitypriv.busetkipkey = false;
 					}
 
@@ -454,8 +454,8 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 					rtw_setstakey_cmd(padapter, (unsigned char *)psta, true);
 				} else { /* group key */
 					memcpy(padapter->securitypriv.dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16 ));
-					memcpy(padapter->securitypriv.dot118021XGrptxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[16]), 8);
-					memcpy(padapter->securitypriv.dot118021XGrprxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[24]), 8);
+					memcpy(padapter->securitypriv.dot118021XGrptxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[16], 8);
+					memcpy(padapter->securitypriv.dot118021XGrprxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[24], 8);
 					padapter->securitypriv.binstallGrpkey = true;
 					DBG_88E(" ~~~~set sta key:groupkey\n");
 
@@ -620,7 +620,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 	u32 ht_ielen = 0;
 	char *p;
 	u8 ht_cap = false;
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 	NDIS_802_11_RATES_EX *prates = NULL;
 
@@ -669,7 +669,7 @@ static int rtw_wx_get_freq(struct net_device *dev,
 			     union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
@@ -738,7 +738,7 @@ static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *b)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_get_mode\n"));
 
@@ -938,10 +938,10 @@ static int rtw_wx_set_wap(struct net_device *dev,
 	uint ret = 0;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct sockaddr *temp = (struct sockaddr *)awrq;
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct list_head *phead;
 	u8 *dst_bssid, *src_bssid;
-	struct __queue *queue	= &(pmlmepriv->scanned_queue);
+	struct __queue *queue	= &pmlmepriv->scanned_queue;
 	struct	wlan_network	*pnetwork = NULL;
 	enum ndis_802_11_auth_mode	authmode;
 
@@ -1002,7 +1002,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 			    union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
 	wrqu->ap_addr.sa_family = ARPHRD_ETHER;
@@ -1188,8 +1188,8 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 {
 	struct list_head *plist, *phead;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
-	struct __queue *queue	= &(pmlmepriv->scanned_queue);
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
+	struct __queue *queue	= &pmlmepriv->scanned_queue;
 	struct	wlan_network	*pnetwork = NULL;
 	char *ev = extra;
 	char *stop = ev + wrqu->data.length;
@@ -1217,7 +1217,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 			break;
 	}
 
-	spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
+	spin_lock_bh(&pmlmepriv->scanned_queue.lock);
 
 	phead = get_list_head(queue);
 	plist = phead->next;
@@ -1358,7 +1358,7 @@ static int rtw_wx_get_essid(struct net_device *dev,
 {
 	u32 len;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_essid\n"));
@@ -1564,7 +1564,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 	struct ndis_802_11_wep	 wep;
 	enum ndis_802_11_auth_mode authmode;
 
-	struct iw_point *erq = &(wrqu->encoding);
+	struct iw_point *erq = &wrqu->encoding;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
@@ -1675,8 +1675,8 @@ static int rtw_wx_get_enc(struct net_device *dev,
 {
 	uint key;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct iw_point *erq = &(wrqu->encoding);
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct iw_point *erq = &wrqu->encoding;
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
 		if (!check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
@@ -1759,7 +1759,7 @@ static int rtw_wx_set_auth(struct net_device *dev,
 			     union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct iw_param *param = (struct iw_param *)&(wrqu->param);
+	struct iw_param *param = (struct iw_param *)&wrqu->param;
 	int ret = 0;
 
 	switch (param->flags & IW_AUTH_INDEX) {
@@ -2093,7 +2093,7 @@ static int set_group_key(struct adapter *padapter, u8 *key, u8 alg, int keyid)
 	u8 keylen;
 	struct cmd_obj *pcmd;
 	struct setkey_parm *psetkeyparm;
-	struct cmd_priv	*pcmdpriv = &(padapter->cmdpriv);
+	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
 	int res = _SUCCESS;
 
 	DBG_88E("%s\n", __func__);
@@ -2130,7 +2130,7 @@ static int set_group_key(struct adapter *padapter, u8 *key, u8 alg, int keyid)
 		keylen = 16;
 	}
 
-	memcpy(&(psetkeyparm->key[0]), key, keylen);
+	memcpy(&psetkeyparm->key[0], key, keylen);
 
 	pcmd->cmdcode = _SetKey_CMD_;
 	pcmd->parmbuf = (u8 *)psetkeyparm;
@@ -2173,7 +2173,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
-	struct security_priv *psecuritypriv = &(padapter->securitypriv);
+	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	DBG_88E("%s\n", __func__);
@@ -2245,7 +2245,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 			psecuritypriv->dot11PrivacyKeyIndex = wep_key_idx;
 
-			memcpy(&(psecuritypriv->dot11DefKey[wep_key_idx].skey[0]), pwep->KeyMaterial, pwep->KeyLength);
+			memcpy(&psecuritypriv->dot11DefKey[wep_key_idx].skey[0], pwep->KeyMaterial, pwep->KeyLength);
 
 			psecuritypriv->dot11DefKeylen[wep_key_idx] = pwep->KeyLength;
 
@@ -2256,7 +2256,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 			/* don't update "psecuritypriv->dot11PrivacyAlgrthm" and */
 			/* psecuritypriv->dot11PrivacyKeyIndex = keyid", but can rtw_set_key to cam */
 
-			memcpy(&(psecuritypriv->dot11DefKey[wep_key_idx].skey[0]), pwep->KeyMaterial, pwep->KeyLength);
+			memcpy(&psecuritypriv->dot11DefKey[wep_key_idx].skey[0], pwep->KeyMaterial, pwep->KeyLength);
 
 			psecuritypriv->dot11DefKeylen[wep_key_idx] = pwep->KeyLength;
 
@@ -2283,8 +2283,8 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,
 					    param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 				/* set mic key */
-				memcpy(psecuritypriv->dot118021XGrptxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[16]), 8);
-				memcpy(psecuritypriv->dot118021XGrprxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[24]), 8);
+				memcpy(psecuritypriv->dot118021XGrptxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[16], 8);
+				memcpy(psecuritypriv->dot118021XGrprxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[24], 8);
 
 				psecuritypriv->busetkipkey = true;
 			} else if (strcmp(param->u.crypt.alg, "CCMP") == 0) {
@@ -2326,8 +2326,8 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 					psta->dot118021XPrivacy = _TKIP_;
 
 					/* set mic key */
-					memcpy(psta->dot11tkiptxmickey.skey, &(param->u.crypt.key[16]), 8);
-					memcpy(psta->dot11tkiprxmickey.skey, &(param->u.crypt.key[24]), 8);
+					memcpy(psta->dot11tkiptxmickey.skey, &param->u.crypt.key[16], 8);
+					memcpy(psta->dot11tkiprxmickey.skey, &param->u.crypt.key[24], 8);
 
 					psecuritypriv->busetkipkey = true;
 				} else if (strcmp(param->u.crypt.alg, "CCMP") == 0) {
@@ -2357,8 +2357,8 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 						    param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 
 					/* set mic key */
-					memcpy(psecuritypriv->dot118021XGrptxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[16]), 8);
-					memcpy(psecuritypriv->dot118021XGrprxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[24]), 8);
+					memcpy(psecuritypriv->dot118021XGrptxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[16], 8);
+					memcpy(psecuritypriv->dot118021XGrprxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[24], 8);
 
 					psecuritypriv->busetkipkey = true;
 				} else if (strcmp(param->u.crypt.alg, "CCMP") == 0) {
@@ -2398,7 +2398,7 @@ static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int
 {
 	int ret = 0;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	unsigned char *pbuf = param->u.bcn_ie.buf;
 
@@ -2436,7 +2436,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 	int ret = 0;
 	struct sta_info *psta = NULL;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	DBG_88E("rtw_add_sta(aid =%d) =%pM\n", param->u.add_sta.aid, (param->sta_addr));
@@ -2489,7 +2489,7 @@ static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 {
 	struct sta_info *psta = NULL;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	int updated = 0;
 
@@ -2524,7 +2524,7 @@ static int rtw_ioctl_get_sta_data(struct net_device *dev, struct ieee_param *par
 	int ret = 0;
 	struct sta_info *psta = NULL;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct ieee_param_ex *param_ex = (struct ieee_param_ex *)param;
 	struct sta_data *psta_data = (struct sta_data *)param_ex->data;
@@ -2580,7 +2580,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 	int ret = 0;
 	struct sta_info *psta = NULL;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	DBG_88E("rtw_get_sta_wpaie, sta_addr: %pM\n", (param->sta_addr));
@@ -2616,8 +2616,8 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 {
 	unsigned char wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct mlme_ext_priv	*pmlmeext = &(padapter->mlmeextpriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
+	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	int ie_len;
 
 	DBG_88E("%s, len =%d\n", __func__, len);
@@ -2651,7 +2651,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int ie_len;
 
 	DBG_88E("%s, len =%d\n", __func__, len);
@@ -2680,7 +2680,7 @@ static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *par
 static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int ie_len;
 
 	DBG_88E("%s, len =%d\n", __func__, len);
@@ -2710,9 +2710,9 @@ static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *par
 static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param, int len)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct mlme_ext_priv	*pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
+	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	u8 value;
 
@@ -2734,7 +2734,7 @@ static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param,
 static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		return -EINVAL;
@@ -2748,7 +2748,7 @@ static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *p
 static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		return -EINVAL;
@@ -2762,7 +2762,7 @@ static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *para
 static int rtw_ioctl_set_macaddr_acl(struct net_device *dev, struct ieee_param *param, int len)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		return -EINVAL;
@@ -2882,7 +2882,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 	/* added for wps2.0 @20110524 */
 	if (dwrq->flags == 0x8766 && len > 8) {
 		u32 cp_sz;
-		struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 		u8 *probereq_wpsie = ext;
 		int probereq_wpsie_len = len;
 		u8 wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
diff --git a/drivers/staging/rtl8188eu/os_dep/rtw_android.c b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
index daf6db354982..bf86d03820ca 100644
--- a/drivers/staging/rtl8188eu/os_dep/rtw_android.c
+++ b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
@@ -77,7 +77,7 @@ static int rtw_android_get_rssi(struct net_device *net, char *command,
 				int total_len)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(net);
-	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct	wlan_network	*pcur_network = &pmlmepriv->cur_network;
 	int bytes_written = 0;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
