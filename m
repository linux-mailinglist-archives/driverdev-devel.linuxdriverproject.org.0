Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E2F33FB1F
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:28:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEAA743283;
	Wed, 17 Mar 2021 22:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oT36JzIFIReF; Wed, 17 Mar 2021 22:27:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8989C4327B;
	Wed, 17 Mar 2021 22:27:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAD7B1BF9C6
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD6614309B
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4ASXU-m7Gk4 for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D2344327F
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:43 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id y6so4223971eds.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=RBSantjennyZuMDjP+6z106o78QPybwJ3/cl+d2IgBQ=;
 b=PP+h4CwWKvcrlTnoGe7/PGcBuWrMv3xCGk3y6m4y6H2DfvV7OxDhNUYwLH3/YyRNhe
 93PqvXGII6ZaN20kqyaSGZ7fNHPLKJvNPMrBL0VINa+9AL/yZ7UPB60iVvubZrc8S3DB
 gkD0rSQLLDRIzYeY1Ba2Cjlb91j6ai9i4lLPiYZkmCNTwZI+HXFKzkePDJ6DmHmSopEU
 YIJ74eZi8KGU5knVP2D2T7ctvjVdeC0uHFcxCOQo154eMKHL6pVK9aCRDdDOEYbzMGtb
 F6i4df9CigF/sgRJf8gOHAPUq6ppbb/eg6M8Ue5LKbFtqR/+NCrH0XMQcBk9XWwGyMSs
 n+2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RBSantjennyZuMDjP+6z106o78QPybwJ3/cl+d2IgBQ=;
 b=FWi0rCuQSXFqyki73KY6hFM0AXMPaBDlE2G9vaVzRLksZsgXJZqGodpZ5v+k2M9dZQ
 dgJXfmgsnmyQBxwztxU+Fz7zIEYVROUGuPsqm+hPJ6egCGlLpS2ESniGyPl4npVZRRMh
 p9tri9+pb4Km8+5Ja6AYYO5hQvM4zM1w2GKvF2M3cOFTKrivW3IURqYY8wFkbexX3o2G
 Y2OrxEZZpa/nAh29+w6krBP8d6pV7OZ6Dcf8qf0/v5PDWNK4CovbmBh5BgyN+YdIw6C8
 s/uxGS7zu5HO6W6AMOrl5cWcO3l6SaHU4muV7iySvr2jPzD1mgqB6IxxNOyoVhgJ44DR
 t46g==
X-Gm-Message-State: AOAM530SvyiYIWRAlMTCpC3XSvr3AUe/VqntrltnOusjW3X6coQJxt46
 4yzgphkrjRyZ1RB/aVg8sBg=
X-Google-Smtp-Source: ABdhPJz0rvHXp3d48gVY9gGbUDf5ulS7bzI2UyiTDw9qWg4LR+AdOCEtftB7u1FsDo6FI4CnSwwkeA==
X-Received: by 2002:aa7:cb4d:: with SMTP id w13mr44952842edt.249.1616019701278; 
 Wed, 17 Mar 2021 15:21:41 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:41 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 31/43] Staging: rtl8723bs: fix names in HalBtcOutSrc.h
Date: Wed, 17 Mar 2021 23:21:18 +0100
Message-Id: <20210317222130.29528-32-marcocesati@gmail.com>
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
in hal/HalBtcOutSrc.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 148 +++++++++---------
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.h   |  28 ++--
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.c   | 138 ++++++++--------
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.h   |  28 ++--
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h  | 100 ++++++------
 drivers/staging/rtl8723bs/hal/hal_btcoex.c    | 122 +++++++--------
 6 files changed, 282 insertions(+), 282 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index 9e81dec49712..55d6a97d61dc 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -151,7 +151,7 @@ static u8 halbtc8723b1ant_BtRssiState(
 }
 
 static void halbtc8723b1ant_UpdateRaMask(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u32 disRateMask
+	struct btc_coexist *pBtCoexist, bool bForceExec, u32 disRateMask
 )
 {
 	pCoexDm->curRaMask = disRateMask;
@@ -166,7 +166,7 @@ static void halbtc8723b1ant_UpdateRaMask(
 }
 
 static void halbtc8723b1ant_AutoRateFallbackRetry(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
+	struct btc_coexist *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	bool bWifiUnderBMode = false;
@@ -204,7 +204,7 @@ static void halbtc8723b1ant_AutoRateFallbackRetry(
 }
 
 static void halbtc8723b1ant_RetryLimit(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
+	struct btc_coexist *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	pCoexDm->curRetryLimitType = type;
@@ -231,7 +231,7 @@ static void halbtc8723b1ant_RetryLimit(
 }
 
 static void halbtc8723b1ant_AmpduMaxTime(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
+	struct btc_coexist *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	pCoexDm->curAmpduTimeType = type;
@@ -257,7 +257,7 @@ static void halbtc8723b1ant_AmpduMaxTime(
 }
 
 static void halbtc8723b1ant_LimitedTx(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bForceExec,
 	u8 raMaskType,
 	u8 arfrType,
@@ -285,7 +285,7 @@ static void halbtc8723b1ant_LimitedTx(
 }
 
 static void halbtc8723b1ant_LimitedRx(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bForceExec,
 	bool bRejApAggPkt,
 	bool bBtCtrlAggBufSize,
@@ -314,7 +314,7 @@ static void halbtc8723b1ant_LimitedRx(
 
 }
 
-static void halbtc8723b1ant_QueryBtInfo(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_QueryBtInfo(struct btc_coexist *pBtCoexist)
 {
 	u8 	H2C_Parameter[1] = {0};
 
@@ -331,7 +331,7 @@ static void halbtc8723b1ant_QueryBtInfo(struct BTC_COEXIST *pBtCoexist)
 	pBtCoexist->fBtcFillH2c(pBtCoexist, 0x61, 1, H2C_Parameter);
 }
 
-static void halbtc8723b1ant_MonitorBtCtr(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_MonitorBtCtr(struct btc_coexist *pBtCoexist)
 {
 	u32 regHPTxRx, regLPTxRx, u4Tmp;
 	u32 regHPTx = 0, regHPRx = 0, regLPTx = 0, regLPRx = 0;
@@ -392,7 +392,7 @@ static void halbtc8723b1ant_MonitorBtCtr(struct BTC_COEXIST *pBtCoexist)
 }
 
 
-static void halbtc8723b1ant_MonitorWiFiCtr(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_MonitorWiFiCtr(struct btc_coexist *pBtCoexist)
 {
 	s32	wifiRssi = 0;
 	bool bWifiBusy = false, bWifiUnderBMode = false;
@@ -478,7 +478,7 @@ static void halbtc8723b1ant_MonitorWiFiCtr(struct BTC_COEXIST *pBtCoexist)
 
 }
 
-static bool halbtc8723b1ant_IsWifiStatusChanged(struct BTC_COEXIST *pBtCoexist)
+static bool halbtc8723b1ant_IsWifiStatusChanged(struct btc_coexist *pBtCoexist)
 {
 	static bool	bPreWifiBusy, bPreUnder4way, bPreBtHsOn;
 	bool bWifiBusy = false, bUnder4way = false, bBtHsOn = false;
@@ -513,9 +513,9 @@ static bool halbtc8723b1ant_IsWifiStatusChanged(struct BTC_COEXIST *pBtCoexist)
 	return false;
 }
 
-static void halbtc8723b1ant_UpdateBtLinkInfo(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_UpdateBtLinkInfo(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bBtHsOn = false;
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
@@ -577,9 +577,9 @@ static void halbtc8723b1ant_UpdateBtLinkInfo(struct BTC_COEXIST *pBtCoexist)
 		pBtLinkInfo->bHidOnly = false;
 }
 
-static u8 halbtc8723b1ant_ActionAlgorithm(struct BTC_COEXIST *pBtCoexist)
+static u8 halbtc8723b1ant_ActionAlgorithm(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bBtHsOn = false;
 	u8 algorithm = BT_8723B_1ANT_COEX_ALGO_UNDEFINED;
 	u8 numOfDiffProfile = 0;
@@ -805,7 +805,7 @@ static u8 halbtc8723b1ant_ActionAlgorithm(struct BTC_COEXIST *pBtCoexist)
 }
 
 static void halbtc8723b1ant_SetSwPenaltyTxRateAdaptive(
-	struct BTC_COEXIST *pBtCoexist, bool bLowPenaltyRa
+	struct btc_coexist *pBtCoexist, bool bLowPenaltyRa
 )
 {
 	u8 	H2C_Parameter[6] = {0};
@@ -833,7 +833,7 @@ static void halbtc8723b1ant_SetSwPenaltyTxRateAdaptive(
 }
 
 static void halbtc8723b1ant_LowPenaltyRa(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bLowPenaltyRa
+	struct btc_coexist *pBtCoexist, bool bForceExec, bool bLowPenaltyRa
 )
 {
 	pCoexDm->bCurLowPenaltyRa = bLowPenaltyRa;
@@ -850,7 +850,7 @@ static void halbtc8723b1ant_LowPenaltyRa(
 }
 
 static void halbtc8723b1ant_SetCoexTable(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	u32 val0x6c0,
 	u32 val0x6c4,
 	u32 val0x6c8,
@@ -887,7 +887,7 @@ static void halbtc8723b1ant_SetCoexTable(
 }
 
 static void halbtc8723b1ant_CoexTable(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bForceExec,
 	u32 val0x6c0,
 	u32 val0x6c4,
@@ -930,7 +930,7 @@ static void halbtc8723b1ant_CoexTable(
 }
 
 static void halbtc8723b1ant_CoexTableWithType(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
+	struct btc_coexist *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	BTC_PRINT(
@@ -988,7 +988,7 @@ static void halbtc8723b1ant_CoexTableWithType(
 }
 
 static void halbtc8723b1ant_SetFwIgnoreWlanAct(
-	struct BTC_COEXIST *pBtCoexist, bool bEnable
+	struct btc_coexist *pBtCoexist, bool bEnable
 )
 {
 	u8 H2C_Parameter[1] = {0};
@@ -1009,7 +1009,7 @@ static void halbtc8723b1ant_SetFwIgnoreWlanAct(
 }
 
 static void halbtc8723b1ant_IgnoreWlanAct(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bEnable
+	struct btc_coexist *pBtCoexist, bool bForceExec, bool bEnable
 )
 {
 	BTC_PRINT(
@@ -1043,7 +1043,7 @@ static void halbtc8723b1ant_IgnoreWlanAct(
 }
 
 static void halbtc8723b1ant_SetLpsRpwm(
-	struct BTC_COEXIST *pBtCoexist, u8 lpsVal, u8 rpwmVal
+	struct btc_coexist *pBtCoexist, u8 lpsVal, u8 rpwmVal
 )
 {
 	u8 lps = lpsVal;
@@ -1054,7 +1054,7 @@ static void halbtc8723b1ant_SetLpsRpwm(
 }
 
 static void halbtc8723b1ant_LpsRpwm(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 lpsVal, u8 rpwmVal
+	struct btc_coexist *pBtCoexist, bool bForceExec, u8 lpsVal, u8 rpwmVal
 )
 {
 	BTC_PRINT(
@@ -1105,7 +1105,7 @@ static void halbtc8723b1ant_LpsRpwm(
 }
 
 static void halbtc8723b1ant_SwMechanism(
-	struct BTC_COEXIST *pBtCoexist, bool bLowPenaltyRA
+	struct btc_coexist *pBtCoexist, bool bLowPenaltyRA
 )
 {
 	BTC_PRINT(
@@ -1118,10 +1118,10 @@ static void halbtc8723b1ant_SwMechanism(
 }
 
 static void halbtc8723b1ant_SetAntPath(
-	struct BTC_COEXIST *pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
+	struct btc_coexist *pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
 )
 {
-	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
+	struct btc_board_info *pBoardInfo = &pBtCoexist->boardInfo;
 	u32 fwVer = 0, u4Tmp = 0, cntBtCalChk = 0;
 	bool bPgExtSwitch = false;
 	bool bUseExtSwitch = false;
@@ -1307,7 +1307,7 @@ static void halbtc8723b1ant_SetAntPath(
 }
 
 static void halbtc8723b1ant_SetFwPstdma(
-	struct BTC_COEXIST *pBtCoexist, u8 byte1, u8 byte2, u8 byte3, u8 byte4, u8 byte5
+	struct btc_coexist *pBtCoexist, u8 byte1, u8 byte2, u8 byte3, u8 byte4, u8 byte5
 )
 {
 	u8 H2C_Parameter[5] = {0};
@@ -1361,10 +1361,10 @@ static void halbtc8723b1ant_SetFwPstdma(
 
 
 static void halbtc8723b1ant_PsTdma(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
+	struct btc_coexist *pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
 )
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bWifiBusy = false;
 	u8 rssiAdjustVal = 0;
 	u8 psTdmaByte4Val = 0x50, psTdmaByte0Val = 0x51, psTdmaByte3Val =  0x10;
@@ -1661,7 +1661,7 @@ static void halbtc8723b1ant_PsTdma(
 	pCoexDm->prePsTdma = pCoexDm->curPsTdma;
 }
 
-static bool halbtc8723b1ant_IsCommonAction(struct BTC_COEXIST *pBtCoexist)
+static bool halbtc8723b1ant_IsCommonAction(struct btc_coexist *pBtCoexist)
 {
 	bool bCommon = false, bWifiConnected = false, bWifiBusy = false;
 
@@ -1752,7 +1752,7 @@ static bool halbtc8723b1ant_IsCommonAction(struct BTC_COEXIST *pBtCoexist)
 
 
 static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
-	struct BTC_COEXIST *pBtCoexist, u8 wifiStatus
+	struct btc_coexist *pBtCoexist, u8 wifiStatus
 )
 {
 	static s32 up, dn, m, n, WaitCount;
@@ -1941,7 +1941,7 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 }
 
 static void halbtc8723b1ant_PsTdmaCheckForPowerSaveState(
-	struct BTC_COEXIST *pBtCoexist, bool bNewPsState
+	struct btc_coexist *pBtCoexist, bool bNewPsState
 )
 {
 	u8 lpsMode = 0x0;
@@ -1963,7 +1963,7 @@ static void halbtc8723b1ant_PsTdmaCheckForPowerSaveState(
 }
 
 static void halbtc8723b1ant_PowerSaveState(
-	struct BTC_COEXIST *pBtCoexist, u8 psType, u8 lpsVal, u8 rpwmVal
+	struct btc_coexist *pBtCoexist, u8 psType, u8 lpsVal, u8 rpwmVal
 )
 {
 	bool bLowPwrDisable = false;
@@ -2011,7 +2011,7 @@ static void halbtc8723b1ant_PowerSaveState(
 /* 	Non-Software Coex Mechanism start */
 /*  */
 /*  */
-static void halbtc8723b1ant_ActionWifiMultiPort(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_ActionWifiMultiPort(struct btc_coexist *pBtCoexist)
 {
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2019,15 +2019,15 @@ static void halbtc8723b1ant_ActionWifiMultiPort(struct BTC_COEXIST *pBtCoexist)
 	halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
 }
 
-static void halbtc8723b1ant_ActionHs(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_ActionHs(struct btc_coexist *pBtCoexist)
 {
 	halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 5);
 	halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
 }
 
-static void halbtc8723b1ant_ActionBtInquiry(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_ActionBtInquiry(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bWifiConnected = false;
 	bool bApEnable = false;
 	bool bWifiBusy = false;
@@ -2067,10 +2067,10 @@ static void halbtc8723b1ant_ActionBtInquiry(struct BTC_COEXIST *pBtCoexist)
 }
 
 static void halbtc8723b1ant_ActionBtScoHidOnlyBusy(
-	struct BTC_COEXIST *pBtCoexist, u8 wifiStatus
+	struct btc_coexist *pBtCoexist, u8 wifiStatus
 )
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bWifiConnected = false;
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);
@@ -2087,12 +2087,12 @@ static void halbtc8723b1ant_ActionBtScoHidOnlyBusy(
 }
 
 static void halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
-	struct BTC_COEXIST *pBtCoexist, u8 wifiStatus
+	struct btc_coexist *pBtCoexist, u8 wifiStatus
 )
 {
 	u8 btRssiState;
 
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	btRssiState = halbtc8723b1ant_BtRssiState(2, 28, 0);
 
 	if ((pCoexSta->lowPriorityRx >= 1000) && (pCoexSta->lowPriorityRx != 65535))
@@ -2141,7 +2141,7 @@ static void halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
 	}
 }
 
-static void halbtc8723b1ant_ActionWifiNotConnected(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_ActionWifiNotConnected(struct btc_coexist *pBtCoexist)
 {
 	/*  power save state */
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
@@ -2152,10 +2152,10 @@ static void halbtc8723b1ant_ActionWifiNotConnected(struct BTC_COEXIST *pBtCoexis
 }
 
 static void halbtc8723b1ant_ActionWifiNotConnectedScan(
-	struct BTC_COEXIST *pBtCoexist
+	struct btc_coexist *pBtCoexist
 )
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2186,10 +2186,10 @@ static void halbtc8723b1ant_ActionWifiNotConnectedScan(
 }
 
 static void halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(
-	struct BTC_COEXIST *pBtCoexist
+	struct btc_coexist *pBtCoexist
 )
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2210,9 +2210,9 @@ static void halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(
 	}
 }
 
-static void halbtc8723b1ant_ActionWifiConnectedScan(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_ActionWifiConnectedScan(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2243,10 +2243,10 @@ static void halbtc8723b1ant_ActionWifiConnectedScan(struct BTC_COEXIST *pBtCoexi
 }
 
 static void halbtc8723b1ant_ActionWifiConnectedSpecialPacket(
-	struct BTC_COEXIST *pBtCoexist
+	struct btc_coexist *pBtCoexist
 )
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
@@ -2267,7 +2267,7 @@ static void halbtc8723b1ant_ActionWifiConnectedSpecialPacket(
 	}
 }
 
-static void halbtc8723b1ant_ActionWifiConnected(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_ActionWifiConnected(struct btc_coexist *pBtCoexist)
 {
 	bool bWifiBusy = false;
 	bool bScan = false, bLink = false, bRoam = false;
@@ -2387,7 +2387,7 @@ static void halbtc8723b1ant_ActionWifiConnected(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-static void halbtc8723b1ant_RunSwCoexistMechanism(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_RunSwCoexistMechanism(struct btc_coexist *pBtCoexist)
 {
 	u8 algorithm = 0;
 
@@ -2446,9 +2446,9 @@ static void halbtc8723b1ant_RunSwCoexistMechanism(struct BTC_COEXIST *pBtCoexist
 	}
 }
 
-static void halbtc8723b1ant_RunCoexistMechanism(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_RunCoexistMechanism(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bWifiConnected = false, bBtHsOn = false;
 	bool bIncreaseScanDevNum = false;
 	bool bBtCtrlAggBufSize = false;
@@ -2579,7 +2579,7 @@ static void halbtc8723b1ant_RunCoexistMechanism(struct BTC_COEXIST *pBtCoexist)
 		halbtc8723b1ant_ActionWifiConnected(pBtCoexist);
 }
 
-static void halbtc8723b1ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b1ant_InitCoexDm(struct btc_coexist *pBtCoexist)
 {
 	/*  force to reset coex mechanism */
 
@@ -2593,7 +2593,7 @@ static void halbtc8723b1ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 }
 
 static void halbtc8723b1ant_InitHwConfig(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bBackUp,
 	bool bWifiOnly
 )
@@ -2648,9 +2648,9 @@ static void halbtc8723b1ant_InitHwConfig(
 /*  */
 /*  extern function start with EXhalbtc8723b1ant_ */
 /*  */
-void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b1ant_PowerOnSetting(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
+	struct btc_board_info *pBoardInfo = &pBtCoexist->boardInfo;
 	u8 u1Tmp = 0x0;
 	u16 u2Tmp = 0x0;
 
@@ -2700,12 +2700,12 @@ void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-void EXhalbtc8723b1ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bWifiOnly)
+void EXhalbtc8723b1ant_InitHwConfig(struct btc_coexist *pBtCoexist, bool bWifiOnly)
 {
 	halbtc8723b1ant_InitHwConfig(pBtCoexist, true, bWifiOnly);
 }
 
-void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b1ant_InitCoexDm(struct btc_coexist *pBtCoexist)
 {
 	BTC_PRINT(
 		BTC_MSG_INTERFACE,
@@ -2720,11 +2720,11 @@ void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 	halbtc8723b1ant_QueryBtInfo(pBtCoexist);
 }
 
-void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
-	struct BTC_STACK_INFO *pStackInfo = &pBtCoexist->stackInfo;
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_board_info *pBoardInfo = &pBtCoexist->boardInfo;
+	struct btc_stack_info *pStackInfo = &pBtCoexist->stackInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	u8 *cliBuf = pBtCoexist->cliBuf;
 	u8 u1Tmp[4], i, btInfoExt, psTdmaCase = 0;
 	u16 u2Tmp[4];
@@ -3183,7 +3183,7 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist)
 }
 
 
-void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_IpsNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	if (pBtCoexist->bManualControl ||	pBtCoexist->bStopCoexDm)
 		return;
@@ -3209,7 +3209,7 @@ void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_LpsNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	if (pBtCoexist->bManualControl || pBtCoexist->bStopCoexDm)
 		return;
@@ -3227,7 +3227,7 @@ void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_ScanNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	bool bWifiConnected = false, bBtHsOn = false;
 	u32 wifiLinkStatus = 0;
@@ -3317,7 +3317,7 @@ void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_ConnectNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	bool bWifiConnected = false, bBtHsOn = false;
 	u32 wifiLinkStatus = 0;
@@ -3374,7 +3374,7 @@ void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_MediaStatusNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	u8 H2C_Parameter[3] = {0};
 	u32 wifiBw;
@@ -3444,7 +3444,7 @@ void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type
 	pBtCoexist->fBtcFillH2c(pBtCoexist, 0x66, 3, H2C_Parameter);
 }
 
-void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b1ant_SpecialPacketNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	bool bBtHsOn = false;
 	u32 wifiLinkStatus = 0;
@@ -3533,7 +3533,7 @@ void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 ty
 }
 
 void EXhalbtc8723b1ant_BtInfoNotify(
-	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
+	struct btc_coexist *pBtCoexist, u8 *tmpBuf, u8 length
 )
 {
 	u8 btInfo = 0;
@@ -3698,7 +3698,7 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 	halbtc8723b1ant_RunCoexistMechanism(pBtCoexist);
 }
 
-void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b1ant_HaltNotify(struct btc_coexist *pBtCoexist)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Halt notify\n"));
 
@@ -3713,7 +3713,7 @@ void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST *pBtCoexist)
 	pBtCoexist->bStopCoexDm = true;
 }
 
-void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
+void EXhalbtc8723b1ant_PnpNotify(struct btc_coexist *pBtCoexist, u8 pnpState)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));
 
@@ -3735,7 +3735,7 @@ void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
 	}
 }
 
-void EXhalbtc8723b1ant_Periodical(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b1ant_Periodical(struct btc_coexist *pBtCoexist)
 {
 	static u8 disVerInfoCnt;
 	u32 fwVer = 0, btPatchVer = 0;
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
index b26a169e5088..46d964d3cb06 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
@@ -167,19 +167,19 @@ struct COEX_STA_8723B_1ANT {
 /*  */
 /*  The following is interface which will notify coex module. */
 /*  */
-void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtc8723b1ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bWifiOnly);
-void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_PowerOnSetting(struct btc_coexist *pBtCoexist);
+void EXhalbtc8723b1ant_InitHwConfig(struct btc_coexist *pBtCoexist, bool bWifiOnly);
+void EXhalbtc8723b1ant_InitCoexDm(struct btc_coexist *pBtCoexist);
+void EXhalbtc8723b1ant_IpsNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_LpsNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_ScanNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_ConnectNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_MediaStatusNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_SpecialPacketNotify(struct btc_coexist *pBtCoexist, u8 type);
 void EXhalbtc8723b1ant_BtInfoNotify(
-	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
+	struct btc_coexist *pBtCoexist, u8 *tmpBuf, u8 length
 );
-void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState);
-void EXhalbtc8723b1ant_Periodical(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b1ant_HaltNotify(struct btc_coexist *pBtCoexist);
+void EXhalbtc8723b1ant_PnpNotify(struct btc_coexist *pBtCoexist, u8 pnpState);
+void EXhalbtc8723b1ant_Periodical(struct btc_coexist *pBtCoexist);
+void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist);
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index 8d5f666b2e23..0e1aa204c099 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -108,7 +108,7 @@ static u8 halbtc8723b2ant_BtRssiState(
 }
 
 static u8 halbtc8723b2ant_WifiRssiState(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	u8 index,
 	u8 levelNum,
 	u8 rssiThresh,
@@ -189,7 +189,7 @@ static u8 halbtc8723b2ant_WifiRssiState(
 }
 
 static void halbtc8723b2ant_LimitedRx(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bForceExec,
 	bool bRejApAggPkt,
 	bool bBtCtrlAggBufSize,
@@ -212,7 +212,7 @@ static void halbtc8723b2ant_LimitedRx(
 	pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_AGGREGATE_CTRL, NULL);
 }
 
-static void halbtc8723b2ant_MonitorBtCtr(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_MonitorBtCtr(struct btc_coexist *pBtCoexist)
 {
 	u32 regHPTxRx, regLPTxRx, u4Tmp;
 	u32 regHPTx = 0, regHPRx = 0, regLPTx = 0, regLPRx = 0;
@@ -262,7 +262,7 @@ static void halbtc8723b2ant_MonitorBtCtr(struct BTC_COEXIST *pBtCoexist)
 	pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0xc);
 }
 
-static void halbtc8723b2ant_QueryBtInfo(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_QueryBtInfo(struct btc_coexist *pBtCoexist)
 {
 	u8 	H2C_Parameter[1] = {0};
 
@@ -279,7 +279,7 @@ static void halbtc8723b2ant_QueryBtInfo(struct BTC_COEXIST *pBtCoexist)
 	pBtCoexist->fBtcFillH2c(pBtCoexist, 0x61, 1, H2C_Parameter);
 }
 
-static bool halbtc8723b2ant_IsWifiStatusChanged(struct BTC_COEXIST *pBtCoexist)
+static bool halbtc8723b2ant_IsWifiStatusChanged(struct btc_coexist *pBtCoexist)
 {
 	static bool	bPreWifiBusy, bPreUnder4way, bPreBtHsOn;
 	bool bWifiBusy = false, bUnder4way = false, bBtHsOn = false;
@@ -310,9 +310,9 @@ static bool halbtc8723b2ant_IsWifiStatusChanged(struct BTC_COEXIST *pBtCoexist)
 	return false;
 }
 
-static void halbtc8723b2ant_UpdateBtLinkInfo(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_UpdateBtLinkInfo(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bBtHsOn = false;
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
@@ -374,9 +374,9 @@ static void halbtc8723b2ant_UpdateBtLinkInfo(struct BTC_COEXIST *pBtCoexist)
 		pBtLinkInfo->bHidOnly = false;
 }
 
-static u8 halbtc8723b2ant_ActionAlgorithm(struct BTC_COEXIST *pBtCoexist)
+static u8 halbtc8723b2ant_ActionAlgorithm(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bBtHsOn = false;
 	u8 algorithm = BT_8723B_2ANT_COEX_ALGO_UNDEFINED;
 	u8 numOfDiffProfile = 0;
@@ -549,7 +549,7 @@ static u8 halbtc8723b2ant_ActionAlgorithm(struct BTC_COEXIST *pBtCoexist)
 }
 
 static void halbtc8723b2ant_SetFwDacSwingLevel(
-	struct BTC_COEXIST *pBtCoexist, u8 dacSwingLvl
+	struct btc_coexist *pBtCoexist, u8 dacSwingLvl
 )
 {
 	u8 	H2C_Parameter[1] = {0};
@@ -573,7 +573,7 @@ static void halbtc8723b2ant_SetFwDacSwingLevel(
 }
 
 static void halbtc8723b2ant_SetFwDecBtPwr(
-	struct BTC_COEXIST *pBtCoexist, u8 decBtPwrLvl
+	struct btc_coexist *pBtCoexist, u8 decBtPwrLvl
 )
 {
 	u8 	H2C_Parameter[1] = {0};
@@ -594,7 +594,7 @@ static void halbtc8723b2ant_SetFwDecBtPwr(
 }
 
 static void halbtc8723b2ant_DecBtPwr(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 decBtPwrLvl
+	struct btc_coexist *pBtCoexist, bool bForceExec, u8 decBtPwrLvl
 )
 {
 	BTC_PRINT(
@@ -628,7 +628,7 @@ static void halbtc8723b2ant_DecBtPwr(
 }
 
 static void halbtc8723b2ant_FwDacSwingLvl(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 fwDacSwingLvl
+	struct btc_coexist *pBtCoexist, bool bForceExec, u8 fwDacSwingLvl
 )
 {
 	BTC_PRINT(
@@ -663,7 +663,7 @@ static void halbtc8723b2ant_FwDacSwingLvl(
 }
 
 static void halbtc8723b2ant_SetSwRfRxLpfCorner(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bRxRfShrinkOn
 )
 {
@@ -686,7 +686,7 @@ static void halbtc8723b2ant_SetSwRfRxLpfCorner(
 }
 
 static void halbtc8723b2ant_RfShrink(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bRxRfShrinkOn
+	struct btc_coexist *pBtCoexist, bool bForceExec, bool bRxRfShrinkOn
 )
 {
 	BTC_PRINT(
@@ -720,7 +720,7 @@ static void halbtc8723b2ant_RfShrink(
 }
 
 static void halbtc8723b2ant_SetSwPenaltyTxRateAdaptive(
-	struct BTC_COEXIST *pBtCoexist, bool bLowPenaltyRa
+	struct btc_coexist *pBtCoexist, bool bLowPenaltyRa
 )
 {
 	u8 	H2C_Parameter[6] = {0};
@@ -748,7 +748,7 @@ static void halbtc8723b2ant_SetSwPenaltyTxRateAdaptive(
 }
 
 static void halbtc8723b2ant_LowPenaltyRa(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bLowPenaltyRa
+	struct btc_coexist *pBtCoexist, bool bForceExec, bool bLowPenaltyRa
 )
 {
 	/* return; */
@@ -782,7 +782,7 @@ static void halbtc8723b2ant_LowPenaltyRa(
 	pCoexDm->bPreLowPenaltyRa = pCoexDm->bCurLowPenaltyRa;
 }
 
-static void halbtc8723b2ant_SetDacSwingReg(struct BTC_COEXIST *pBtCoexist, u32 level)
+static void halbtc8723b2ant_SetDacSwingReg(struct btc_coexist *pBtCoexist, u32 level)
 {
 	u8 val = (u8)level;
 
@@ -795,7 +795,7 @@ static void halbtc8723b2ant_SetDacSwingReg(struct BTC_COEXIST *pBtCoexist, u32 l
 }
 
 static void halbtc8723b2ant_SetSwFullTimeDacSwing(
-	struct BTC_COEXIST *pBtCoexist, bool bSwDacSwingOn, u32 swDacSwingLvl
+	struct btc_coexist *pBtCoexist, bool bSwDacSwingOn, u32 swDacSwingLvl
 )
 {
 	if (bSwDacSwingOn)
@@ -806,7 +806,7 @@ static void halbtc8723b2ant_SetSwFullTimeDacSwing(
 
 
 static void halbtc8723b2ant_DacSwing(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bForceExec,
 	bool bDacSwingOn,
 	u32 dacSwingLvl
@@ -850,7 +850,7 @@ static void halbtc8723b2ant_DacSwing(
 }
 
 static void halbtc8723b2ant_SetAgcTable(
-	struct BTC_COEXIST *pBtCoexist, bool bAgcTableEn
+	struct btc_coexist *pBtCoexist, bool bAgcTableEn
 )
 {
 	u8 rssiAdjustVal = 0;
@@ -910,7 +910,7 @@ static void halbtc8723b2ant_SetAgcTable(
 }
 
 static void halbtc8723b2ant_AgcTable(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bAgcTableEn
+	struct btc_coexist *pBtCoexist, bool bForceExec, bool bAgcTableEn
 )
 {
 	BTC_PRINT(
@@ -944,7 +944,7 @@ static void halbtc8723b2ant_AgcTable(
 }
 
 static void halbtc8723b2ant_SetCoexTable(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	u32 val0x6c0,
 	u32 val0x6c4,
 	u32 val0x6c8,
@@ -981,7 +981,7 @@ static void halbtc8723b2ant_SetCoexTable(
 }
 
 static void halbtc8723b2ant_CoexTable(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bForceExec,
 	u32 val0x6c0,
 	u32 val0x6c4,
@@ -1047,7 +1047,7 @@ static void halbtc8723b2ant_CoexTable(
 }
 
 static void halbtc8723b2ant_CoexTableWithType(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
+	struct btc_coexist *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	switch (type) {
@@ -1096,7 +1096,7 @@ static void halbtc8723b2ant_CoexTableWithType(
 }
 
 static void halbtc8723b2ant_SetFwIgnoreWlanAct(
-	struct BTC_COEXIST *pBtCoexist, bool bEnable
+	struct btc_coexist *pBtCoexist, bool bEnable
 )
 {
 	u8 	H2C_Parameter[1] = {0};
@@ -1117,7 +1117,7 @@ static void halbtc8723b2ant_SetFwIgnoreWlanAct(
 }
 
 static void halbtc8723b2ant_IgnoreWlanAct(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bEnable
+	struct btc_coexist *pBtCoexist, bool bForceExec, bool bEnable
 )
 {
 	BTC_PRINT(
@@ -1145,7 +1145,7 @@ static void halbtc8723b2ant_IgnoreWlanAct(
 }
 
 static void halbtc8723b2ant_SetFwPstdma(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	u8 byte1,
 	u8 byte2,
 	u8 byte3,
@@ -1184,7 +1184,7 @@ static void halbtc8723b2ant_SetFwPstdma(
 }
 
 static void halbtc8723b2ant_SwMechanism1(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bShrinkRxLPF,
 	bool bLowPenaltyRA,
 	bool bLimitedDIG,
@@ -1196,7 +1196,7 @@ static void halbtc8723b2ant_SwMechanism1(
 }
 
 static void halbtc8723b2ant_SwMechanism2(
-	struct BTC_COEXIST *pBtCoexist,
+	struct btc_coexist *pBtCoexist,
 	bool bAGCTableShift,
 	bool bADCBackOff,
 	bool bSWDACSwing,
@@ -1208,10 +1208,10 @@ static void halbtc8723b2ant_SwMechanism2(
 }
 
 static void halbtc8723b2ant_SetAntPath(
-	struct BTC_COEXIST *pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
+	struct btc_coexist *pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
 )
 {
-	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
+	struct btc_board_info *pBoardInfo = &pBtCoexist->boardInfo;
 	u32 fwVer = 0, u4Tmp = 0;
 	bool bPgExtSwitch = false;
 	bool bUseExtSwitch = false;
@@ -1302,7 +1302,7 @@ static void halbtc8723b2ant_SetAntPath(
 }
 
 static void halbtc8723b2ant_PsTdma(
-	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
+	struct btc_coexist *pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
 )
 {
 	BTC_PRINT(
@@ -1434,7 +1434,7 @@ static void halbtc8723b2ant_PsTdma(
 	pCoexDm->prePsTdma = pCoexDm->curPsTdma;
 }
 
-static void halbtc8723b2ant_CoexAllOff(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_CoexAllOff(struct btc_coexist *pBtCoexist)
 {
 	/*  fw all off */
 	halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, false, 1);
@@ -1450,7 +1450,7 @@ static void halbtc8723b2ant_CoexAllOff(struct BTC_COEXIST *pBtCoexist)
 	halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
 }
 
-static void halbtc8723b2ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_InitCoexDm(struct btc_coexist *pBtCoexist)
 {
 	/*  force to reset coex mechanism */
 
@@ -1462,7 +1462,7 @@ static void halbtc8723b2ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 	halbtc8723b2ant_SwMechanism2(pBtCoexist, false, false, false, 0x18);
 }
 
-static void halbtc8723b2ant_ActionBtInquiry(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionBtInquiry(struct btc_coexist *pBtCoexist)
 {
 	bool bWifiConnected = false;
 	bool bLowPwrDisable = true;
@@ -1490,7 +1490,7 @@ static void halbtc8723b2ant_ActionBtInquiry(struct BTC_COEXIST *pBtCoexist)
 	halbtc8723b2ant_SetAntPath(pBtCoexist, BTC_ANT_WIFI_AT_AUX, false, false);
 }
 
-static bool halbtc8723b2ant_IsCommonAction(struct BTC_COEXIST *pBtCoexist)
+static bool halbtc8723b2ant_IsCommonAction(struct btc_coexist *pBtCoexist)
 {
 	u8 btRssiState = BTC_RSSI_STATE_HIGH;
 	bool bCommon = false, bWifiConnected = false, bWifiBusy = false;
@@ -1591,7 +1591,7 @@ static bool halbtc8723b2ant_IsCommonAction(struct BTC_COEXIST *pBtCoexist)
 }
 
 static void halbtc8723b2ant_TdmaDurationAdjust(
-	struct BTC_COEXIST *pBtCoexist, bool bScoHid, bool bTxPause, u8 maxInterval
+	struct btc_coexist *pBtCoexist, bool bScoHid, bool bTxPause, u8 maxInterval
 )
 {
 	static s32 up, dn, m, n, WaitCount;
@@ -2041,7 +2041,7 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 }
 
 /*  SCO only or SCO+PAN(HS) */
-static void halbtc8723b2ant_ActionSco(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionSco(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2096,7 +2096,7 @@ static void halbtc8723b2ant_ActionSco(struct BTC_COEXIST *pBtCoexist)
 }
 
 
-static void halbtc8723b2ant_ActionHid(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionHid(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2157,7 +2157,7 @@ static void halbtc8723b2ant_ActionHid(struct BTC_COEXIST *pBtCoexist)
 }
 
 /* A2DP only / PAN(EDR) only/ A2DP+PAN(HS) */
-static void halbtc8723b2ant_ActionA2dp(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionA2dp(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, wifiRssiState1, btRssiState;
 	u32 wifiBw;
@@ -2238,7 +2238,7 @@ static void halbtc8723b2ant_ActionA2dp(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_ActionA2dpPanHs(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionA2dpPanHs(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2288,7 +2288,7 @@ static void halbtc8723b2ant_ActionA2dpPanHs(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_ActionPanEdr(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionPanEdr(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2346,7 +2346,7 @@ static void halbtc8723b2ant_ActionPanEdr(struct BTC_COEXIST *pBtCoexist)
 
 
 /* PAN(HS) only */
-static void halbtc8723b2ant_ActionPanHs(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionPanHs(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2396,7 +2396,7 @@ static void halbtc8723b2ant_ActionPanHs(struct BTC_COEXIST *pBtCoexist)
 }
 
 /* PAN(EDR)+A2DP */
-static void halbtc8723b2ant_ActionPanEdrA2dp(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionPanEdrA2dp(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2457,7 +2457,7 @@ static void halbtc8723b2ant_ActionPanEdrA2dp(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_ActionPanEdrHid(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionPanEdrHid(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2521,7 +2521,7 @@ static void halbtc8723b2ant_ActionPanEdrHid(struct BTC_COEXIST *pBtCoexist)
 }
 
 /*  HID+A2DP+PAN(EDR) */
-static void halbtc8723b2ant_ActionHidA2dpPanEdr(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionHidA2dpPanEdr(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2581,7 +2581,7 @@ static void halbtc8723b2ant_ActionHidA2dpPanEdr(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_ActionHidA2dp(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_ActionHidA2dp(struct btc_coexist *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2656,7 +2656,7 @@ static void halbtc8723b2ant_ActionHidA2dp(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_RunCoexistMechanism(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_RunCoexistMechanism(struct btc_coexist *pBtCoexist)
 {
 	u8 algorithm = 0;
 
@@ -2755,7 +2755,7 @@ static void halbtc8723b2ant_RunCoexistMechanism(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_WifiOffHwCfg(struct BTC_COEXIST *pBtCoexist)
+static void halbtc8723b2ant_WifiOffHwCfg(struct btc_coexist *pBtCoexist)
 {
 	bool bIsInMpMode = false;
 	u8 H2C_Parameter[2] = {0};
@@ -2780,7 +2780,7 @@ static void halbtc8723b2ant_WifiOffHwCfg(struct BTC_COEXIST *pBtCoexist)
 		pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x67, 0x20, 0x1); /* BT select s0/s1 is controlled by WiFi */
 }
 
-static void halbtc8723b2ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bBackUp)
+static void halbtc8723b2ant_InitHwConfig(struct btc_coexist *pBtCoexist, bool bBackUp)
 {
 	u8 u1Tmp = 0;
 
@@ -2814,9 +2814,9 @@ static void halbtc8723b2ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bB
 /*  */
 /*  extern function start with EXhalbtc8723b2ant_ */
 /*  */
-void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b2ant_PowerOnSetting(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
+	struct btc_board_info *pBoardInfo = &pBtCoexist->boardInfo;
 	u8 u1Tmp = 0x4; /* Set BIT2 by default since it's 2ant case */
 	u16 u2Tmp = 0x0;
 
@@ -2866,23 +2866,23 @@ void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
 	}
 }
 
-void EXhalbtc8723b2ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bWifiOnly)
+void EXhalbtc8723b2ant_InitHwConfig(struct btc_coexist *pBtCoexist, bool bWifiOnly)
 {
 	halbtc8723b2ant_InitHwConfig(pBtCoexist, true);
 }
 
-void EXhalbtc8723b2ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b2ant_InitCoexDm(struct btc_coexist *pBtCoexist)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], Coex Mechanism Init!!\n"));
 
 	halbtc8723b2ant_InitCoexDm(pBtCoexist);
 }
 
-void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b2ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 {
-	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
-	struct BTC_STACK_INFO *pStackInfo = &pBtCoexist->stackInfo;
-	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct btc_board_info *pBoardInfo = &pBtCoexist->boardInfo;
+	struct btc_stack_info *pStackInfo = &pBtCoexist->stackInfo;
+	struct btc_bt_link_info *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	u8 *cliBuf = pBtCoexist->cliBuf;
 	u8 u1Tmp[4], i, btInfoExt, psTdmaCase = 0;
 	u32 u4Tmp[4];
@@ -3259,7 +3259,7 @@ void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist)
 }
 
 
-void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_IpsNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	if (BTC_IPS_ENTER == type) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS ENTER notify\n"));
@@ -3276,7 +3276,7 @@ void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_LpsNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	if (BTC_LPS_ENABLE == type) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS ENABLE notify\n"));
@@ -3287,7 +3287,7 @@ void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_ScanNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	if (BTC_SCAN_START == type) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n"));
@@ -3296,7 +3296,7 @@ void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_ConnectNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	if (BTC_ASSOCIATE_START == type) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT START notify\n"));
@@ -3305,7 +3305,7 @@ void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_MediaStatusNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	u8 H2C_Parameter[3] = {0};
 	u32 wifiBw;
@@ -3351,7 +3351,7 @@ void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type
 	pBtCoexist->fBtcFillH2c(pBtCoexist, 0x66, 3, H2C_Parameter);
 }
 
-void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_SpecialPacketNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	if (type == BTC_PACKET_DHCP) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], DHCP Packet notify\n"));
@@ -3359,7 +3359,7 @@ void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 ty
 }
 
 void EXhalbtc8723b2ant_BtInfoNotify(
-	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
+	struct btc_coexist *pBtCoexist, u8 *tmpBuf, u8 length
 )
 {
 	u8 	btInfo = 0;
@@ -3503,7 +3503,7 @@ void EXhalbtc8723b2ant_BtInfoNotify(
 	halbtc8723b2ant_RunCoexistMechanism(pBtCoexist);
 }
 
-void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b2ant_HaltNotify(struct btc_coexist *pBtCoexist)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Halt notify\n"));
 
@@ -3514,7 +3514,7 @@ void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST *pBtCoexist)
 	EXhalbtc8723b2ant_MediaStatusNotify(pBtCoexist, BTC_MEDIA_DISCONNECT);
 }
 
-void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
+void EXhalbtc8723b2ant_PnpNotify(struct btc_coexist *pBtCoexist, u8 pnpState)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));
 
@@ -3528,7 +3528,7 @@ void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
 	}
 }
 
-void EXhalbtc8723b2ant_Periodical(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtc8723b2ant_Periodical(struct btc_coexist *pBtCoexist)
 {
 	static u8 disVerInfoCnt;
 	u32 fwVer = 0, btPatchVer = 0;
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
index f9a885f4ab89..340444017327 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
@@ -129,19 +129,19 @@ struct COEX_STA_8723B_2ANT {
 /*  */
 /*  The following is interface which will notify coex module. */
 /*  */
-void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtc8723b2ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bWifiOnly);
-void EXhalbtc8723b2ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_PowerOnSetting(struct btc_coexist *pBtCoexist);
+void EXhalbtc8723b2ant_InitHwConfig(struct btc_coexist *pBtCoexist, bool bWifiOnly);
+void EXhalbtc8723b2ant_InitCoexDm(struct btc_coexist *pBtCoexist);
+void EXhalbtc8723b2ant_IpsNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_LpsNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_ScanNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_ConnectNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_MediaStatusNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_SpecialPacketNotify(struct btc_coexist *pBtCoexist, u8 type);
 void EXhalbtc8723b2ant_BtInfoNotify(
-	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
+	struct btc_coexist *pBtCoexist, u8 *tmpBuf, u8 length
 );
-void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState);
-void EXhalbtc8723b2ant_Periodical(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b2ant_HaltNotify(struct btc_coexist *pBtCoexist);
+void EXhalbtc8723b2ant_PnpNotify(struct btc_coexist *pBtCoexist, u8 pnpState);
+void EXhalbtc8723b2ant_Periodical(struct btc_coexist *pBtCoexist);
+void EXhalbtc8723b2ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist);
diff --git a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
index 866667134cad..b49dee8b7276 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
@@ -44,14 +44,14 @@
 #define BTC_ANT_WIFI_AT_CPL_MAIN	0
 #define BTC_ANT_WIFI_AT_CPL_AUX		1
 
-enum BTC_POWERSAVE_TYPE {
+enum btc_powersave_type {
 	BTC_PS_WIFI_NATIVE	= 0,	/*  wifi original power save behavior */
 	BTC_PS_LPS_ON		= 1,
 	BTC_PS_LPS_OFF		= 2,
 	BTC_PS_MAX
 };
 
-enum BTC_BT_REG_TYPE {
+enum btc_bt_reg_type {
 	BTC_BT_REG_RF		= 0,
 	BTC_BT_REG_MODEM	= 1,
 	BTC_BT_REG_BLUEWIZE	= 2,
@@ -60,7 +60,7 @@ enum BTC_BT_REG_TYPE {
 	BTC_BT_REG_MAX
 };
 
-enum BTC_CHIP_INTERFACE {
+enum btc_chip_interface {
 	BTC_INTF_UNKNOWN	= 0,
 	BTC_INTF_PCI		= 1,
 	BTC_INTF_USB		= 2,
@@ -68,7 +68,7 @@ enum BTC_CHIP_INTERFACE {
 	BTC_INTF_MAX
 };
 
-enum BTC_CHIP_TYPE {
+enum btc_chip_type {
 	BTC_CHIP_UNDEF		= 0,
 	BTC_CHIP_CSR_BC4	= 1,
 	BTC_CHIP_CSR_BC8	= 2,
@@ -78,7 +78,7 @@ enum BTC_CHIP_TYPE {
 	BTC_CHIP_MAX
 };
 
-enum BTC_MSG_TYPE {
+enum btc_msg_type {
 	BTC_MSG_INTERFACE	= 0x0,
 	BTC_MSG_ALGORITHM	= 0x1,
 	BTC_MSG_MAX
@@ -164,7 +164,7 @@ extern u32 		GLBtcDbgType[];
 			no_printk("%s %p %zu", _TitleString, _HexData, _HexDataLen)
 #endif
 
-struct BTC_BOARD_INFO {
+struct btc_board_info {
 	/*  The following is some board information */
 	u8 btChipType;
 	u8 pgAntNum;	/*  pg ant number */
@@ -174,7 +174,7 @@ struct BTC_BOARD_INFO {
 	/* bool				bBtExist; */
 };
 
-enum BTC_DBG_OPCODE {
+enum btc_dbg_opcode {
 	BTC_DBG_SET_COEX_NORMAL			    = 0x0,
 	BTC_DBG_SET_COEX_WIFI_ONLY		    = 0x1,
 	BTC_DBG_SET_COEX_BT_ONLY		    = 0x2,
@@ -184,7 +184,7 @@ enum BTC_DBG_OPCODE {
 	BTC_DBG_MAX
 };
 
-enum BTC_RSSI_STATE {
+enum btc_rssi_state {
 	BTC_RSSI_STATE_HIGH			    = 0x0,
 	BTC_RSSI_STATE_MEDIUM			= 0x1,
 	BTC_RSSI_STATE_LOW			    = 0x2,
@@ -197,7 +197,7 @@ enum BTC_RSSI_STATE {
 #define BTC_RSSI_MEDIUM(_rssi_)	((_rssi_ == BTC_RSSI_STATE_MEDIUM || _rssi_ == BTC_RSSI_STATE_STAY_MEDIUM) ? true : false)
 #define BTC_RSSI_LOW(_rssi_)	((_rssi_ == BTC_RSSI_STATE_LOW || _rssi_ == BTC_RSSI_STATE_STAY_LOW) ? true : false)
 
-enum BTC_WIFI_ROLE {
+enum btc_wifi_role {
 	BTC_ROLE_STATION			= 0x0,
 	BTC_ROLE_AP					= 0x1,
 	BTC_ROLE_IBSS				= 0x2,
@@ -205,27 +205,27 @@ enum BTC_WIFI_ROLE {
 	BTC_ROLE_MAX
 };
 
-enum BTC_WIFI_BW_MODE {
+enum btc_wifi_bw_mode {
 	BTC_WIFI_BW_LEGACY			= 0x0,
 	BTC_WIFI_BW_HT20			= 0x1,
 	BTC_WIFI_BW_HT40			= 0x2,
 	BTC_WIFI_BW_MAX
 };
 
-enum BTC_WIFI_TRAFFIC_DIR {
+enum btc_wifi_traffic_dir {
 	BTC_WIFI_TRAFFIC_TX			= 0x0,
 	BTC_WIFI_TRAFFIC_RX			= 0x1,
 	BTC_WIFI_TRAFFIC_MAX
 };
 
-enum BTC_WIFI_PNP {
+enum btc_wifi_pnp {
 	BTC_WIFI_PNP_WAKE_UP		= 0x0,
 	BTC_WIFI_PNP_SLEEP			= 0x1,
 	BTC_WIFI_PNP_MAX
 };
 
 /* for 8723b-d cut large current issue */
-enum BT_WIFI_COEX_STATE {
+enum bt_wifi_coex_state {
 	BTC_WIFI_STAT_INIT,
 	BTC_WIFI_STAT_IQK,
 	BTC_WIFI_STAT_NORMAL_OFF,
@@ -236,7 +236,7 @@ enum BT_WIFI_COEX_STATE {
 };
 
 /*  defined for BFP_BTC_GET */
-enum BTC_GET_TYPE {
+enum btc_get_type {
 	/*  type bool */
 	BTC_GET_BL_HS_OPERATION,
 	BTC_GET_BL_HS_CONNECTING,
@@ -278,7 +278,7 @@ enum BTC_GET_TYPE {
 };
 
 /*  defined for BFP_BTC_SET */
-enum BTC_SET_TYPE {
+enum btc_set_type {
 	/*  type bool */
 	BTC_SET_BL_BT_DISABLE,
 	BTC_SET_BL_BT_TRAFFIC_BUSY,
@@ -318,44 +318,44 @@ enum BTC_SET_TYPE {
 	BTC_SET_MAX
 };
 
-enum BTC_DBG_DISP_TYPE {
+enum btc_dbg_disp_type {
 	BTC_DBG_DISP_COEX_STATISTICS		= 0x0,
 	BTC_DBG_DISP_BT_LINK_INFO			= 0x1,
 	BTC_DBG_DISP_FW_PWR_MODE_CMD		= 0x2,
 	BTC_DBG_DISP_MAX
 };
 
-enum BTC_NOTIFY_TYPE_IPS {
+enum btc_notify_type_ips {
 	BTC_IPS_LEAVE						= 0x0,
 	BTC_IPS_ENTER						= 0x1,
 	BTC_IPS_MAX
 };
 
-enum BTC_NOTIFY_TYPE_LPS {
+enum btc_notify_type_lps {
 	BTC_LPS_DISABLE						= 0x0,
 	BTC_LPS_ENABLE						= 0x1,
 	BTC_LPS_MAX
 };
 
-enum BTC_NOTIFY_TYPE_SCAN {
+enum btc_notify_type_scan {
 	BTC_SCAN_FINISH						= 0x0,
 	BTC_SCAN_START						= 0x1,
 	BTC_SCAN_MAX
 };
 
-enum BTC_NOTIFY_TYPE_ASSOCIATE {
+enum btc_notify_type_associate {
 	BTC_ASSOCIATE_FINISH				= 0x0,
 	BTC_ASSOCIATE_START					= 0x1,
 	BTC_ASSOCIATE_MAX
 };
 
-enum BTC_NOTIFY_TYPE_MEDIA_STATUS {
+enum btc_notify_type_media_status {
 	BTC_MEDIA_DISCONNECT				= 0x0,
 	BTC_MEDIA_CONNECT					= 0x1,
 	BTC_MEDIA_MAX
 };
 
-enum BTC_NOTIFY_TYPE_SPECIAL_PACKET {
+enum btc_notify_type_special_packet {
 	BTC_PACKET_UNKNOWN					= 0x0,
 	BTC_PACKET_DHCP						= 0x1,
 	BTC_PACKET_ARP						= 0x2,
@@ -363,7 +363,7 @@ enum BTC_NOTIFY_TYPE_SPECIAL_PACKET {
 	BTC_PACKET_MAX
 };
 
-enum BTC_NOTIFY_TYPE_STACK_OPERATION {
+enum btc_notify_type_stack_operation {
 	BTC_STACK_OP_NONE					= 0x0,
 	BTC_STACK_OP_INQ_PAGE_PAIR_START	= 0x1,
 	BTC_STACK_OP_INQ_PAGE_PAIR_FINISH	= 0x2,
@@ -371,7 +371,7 @@ enum BTC_NOTIFY_TYPE_STACK_OPERATION {
 };
 
 /* Bryant Add */
-enum BTC_ANTENNA_POS {
+enum btc_antenna_pos {
 	BTC_ANTENNA_AT_MAIN_PORT = 0x1,
 	BTC_ANTENNA_AT_AUX_PORT  = 0x2,
 };
@@ -409,7 +409,7 @@ typedef void (*BFP_BTC_SET_BT_REG)(
 typedef u32 (*BFP_BTC_GET_BT_REG)(void *pBtcContext, u8 regType, u32 offset);
 typedef void (*BFP_BTC_DISP_DBG_MSG)(void *pBtCoexist, u8 dispType);
 
-struct BTC_BT_INFO {
+struct btc_bt_info {
 	bool bBtDisabled;
 	u8 rssiAdjustForAgcTableOn;
 	u8 rssiAdjustFor1AntCoexType;
@@ -437,7 +437,7 @@ struct BTC_BT_INFO {
 	u32 raMask;
 };
 
-struct BTC_STACK_INFO {
+struct btc_stack_info {
 	bool bProfileNotified;
 	u16 hciVersion;	/*  stack hci version */
 	u8 numOfLink;
@@ -452,7 +452,7 @@ struct BTC_STACK_INFO {
 	s8 minBtRssi;
 };
 
-struct BTC_BT_LINK_INFO {
+struct btc_bt_link_info {
 	bool bBtLinkExist;
 	bool bScoExist;
 	bool bScoOnly;
@@ -465,7 +465,7 @@ struct BTC_BT_LINK_INFO {
 	bool bSlaveRole;
 };
 
-struct BTC_STATISTICS {
+struct btc_statistics {
 	u32 cntBind;
 	u32 cntPowerOn;
 	u32 cntInitHwConfig;
@@ -484,20 +484,20 @@ struct BTC_STATISTICS {
 	u32 cntDbgCtrl;
 };
 
-struct BTC_COEXIST {
+struct btc_coexist {
 	bool bBinded;		/*  make sure only one adapter can bind the data context */
 	void *Adapter;		/*  default adapter */
-	struct BTC_BOARD_INFO boardInfo;
-	struct BTC_BT_INFO btInfo;		/*  some bt info referenced by non-bt module */
-	struct BTC_STACK_INFO stackInfo;
-	struct BTC_BT_LINK_INFO btLinkInfo;
-	enum BTC_CHIP_INTERFACE chipInterface;
+	struct btc_board_info boardInfo;
+	struct btc_bt_info btInfo;		/*  some bt info referenced by non-bt module */
+	struct btc_stack_info stackInfo;
+	struct btc_bt_link_info btLinkInfo;
+	enum btc_chip_interface chipInterface;
 
 	bool bInitilized;
 	bool bStopCoexDm;
 	bool bManualControl;
 	u8 *cliBuf;
-	struct BTC_STATISTICS statistics;
+	struct btc_statistics statistics;
 	u8 pwrModeVal[10];
 
 	/*  function pointers */
@@ -530,28 +530,28 @@ struct BTC_COEXIST {
 	BFP_BTC_SET_BT_REG fBtcSetBtReg;
 };
 
-extern struct BTC_COEXIST GLBtCoexist;
+extern struct btc_coexist GLBtCoexist;
 
-void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST *pBtCoexist, u8 bWifiOnly);
-void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
-void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 action);
+void EXhalbtcoutsrc_PowerOnSetting(struct btc_coexist *pBtCoexist);
+void EXhalbtcoutsrc_InitHwConfig(struct btc_coexist *pBtCoexist, u8 bWifiOnly);
+void EXhalbtcoutsrc_InitCoexDm(struct btc_coexist *pBtCoexist);
+void EXhalbtcoutsrc_IpsNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtcoutsrc_LpsNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtcoutsrc_ScanNotify(struct btc_coexist *pBtCoexist, u8 type);
+void EXhalbtcoutsrc_ConnectNotify(struct btc_coexist *pBtCoexist, u8 action);
 void EXhalbtcoutsrc_MediaStatusNotify(
-	struct BTC_COEXIST *pBtCoexist, enum rt_media_status mediaStatus
+	struct btc_coexist *pBtCoexist, enum rt_media_status mediaStatus
 );
-void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 pktType);
+void EXhalbtcoutsrc_SpecialPacketNotify(struct btc_coexist *pBtCoexist, u8 pktType);
 void EXhalbtcoutsrc_BtInfoNotify(
-	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
+	struct btc_coexist *pBtCoexist, u8 *tmpBuf, u8 length
 );
-void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST *pBtCoexist);
-void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState);
-void EXhalbtcoutsrc_Periodical(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtcoutsrc_HaltNotify(struct btc_coexist *pBtCoexist);
+void EXhalbtcoutsrc_PnpNotify(struct btc_coexist *pBtCoexist, u8 pnpState);
+void EXhalbtcoutsrc_Periodical(struct btc_coexist *pBtCoexist);
 void EXhalbtcoutsrc_SetChipType(u8 chipType);
 void EXhalbtcoutsrc_SetAntNum(u8 type, u8 antNum);
 void EXhalbtcoutsrc_SetSingleAntPath(u8 singleAntPath);
-void EXhalbtcoutsrc_DisplayBtCoexInfo(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtcoutsrc_DisplayBtCoexInfo(struct btc_coexist *pBtCoexist);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index e524c775307f..e718120457e7 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -13,7 +13,7 @@
 
 /* 		Global variables */
 
-struct BTC_COEXIST GLBtCoexist;
+struct btc_coexist GLBtCoexist;
 static u8 GLBtcWiFiInScanState;
 static u8 GLBtcWiFiInIQKState;
 
@@ -67,7 +67,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
 /*  */
 /* 		Debug related function */
 /*  */
-static u8 halbtcoutsrc_IsBtCoexistAvailable(struct BTC_COEXIST *pBtCoexist)
+static u8 halbtcoutsrc_IsBtCoexistAvailable(struct btc_coexist *pBtCoexist)
 {
 	if (!pBtCoexist->bBinded || !pBtCoexist->Adapter)
 		return false;
@@ -101,7 +101,7 @@ static void halbtcoutsrc_DbgInit(void)
 			0;
 }
 
-static void halbtcoutsrc_LeaveLps(struct BTC_COEXIST *pBtCoexist)
+static void halbtcoutsrc_LeaveLps(struct btc_coexist *pBtCoexist)
 {
 	struct adapter *padapter;
 
@@ -114,7 +114,7 @@ static void halbtcoutsrc_LeaveLps(struct BTC_COEXIST *pBtCoexist)
 	rtw_btcoex_LPS_Leave(padapter);
 }
 
-static void halbtcoutsrc_EnterLps(struct BTC_COEXIST *pBtCoexist)
+static void halbtcoutsrc_EnterLps(struct btc_coexist *pBtCoexist)
 {
 	struct adapter *padapter;
 
@@ -127,7 +127,7 @@ static void halbtcoutsrc_EnterLps(struct BTC_COEXIST *pBtCoexist)
 	rtw_btcoex_LPS_Enter(padapter);
 }
 
-static void halbtcoutsrc_NormalLps(struct BTC_COEXIST *pBtCoexist)
+static void halbtcoutsrc_NormalLps(struct btc_coexist *pBtCoexist)
 {
 	struct adapter *padapter;
 
@@ -149,7 +149,7 @@ static void halbtcoutsrc_NormalLps(struct BTC_COEXIST *pBtCoexist)
  *  Constraint:
  *   1. this function will request pwrctrl->lock
  */
-static void halbtcoutsrc_LeaveLowPower(struct BTC_COEXIST *pBtCoexist)
+static void halbtcoutsrc_LeaveLowPower(struct btc_coexist *pBtCoexist)
 {
 	struct adapter *padapter;
 	s32 ready;
@@ -184,7 +184,7 @@ static void halbtcoutsrc_LeaveLowPower(struct BTC_COEXIST *pBtCoexist)
  *  Constraint:
  *   1. this function will request pwrctrl->lock
  */
-static void halbtcoutsrc_NormalLowPower(struct BTC_COEXIST *pBtCoexist)
+static void halbtcoutsrc_NormalLowPower(struct btc_coexist *pBtCoexist)
 {
 	struct adapter *padapter;
 
@@ -193,7 +193,7 @@ static void halbtcoutsrc_NormalLowPower(struct BTC_COEXIST *pBtCoexist)
 	rtw_unregister_task_alive(padapter, BTCOEX_ALIVE);
 }
 
-static void halbtcoutsrc_DisableLowPower(struct BTC_COEXIST *pBtCoexist, u8 bLowPwrDisable)
+static void halbtcoutsrc_DisableLowPower(struct btc_coexist *pBtCoexist, u8 bLowPwrDisable)
 {
 	pBtCoexist->btInfo.bBtDisableLowPwr = bLowPwrDisable;
 	if (bLowPwrDisable)
@@ -202,7 +202,7 @@ static void halbtcoutsrc_DisableLowPower(struct BTC_COEXIST *pBtCoexist, u8 bLow
 		halbtcoutsrc_NormalLowPower(pBtCoexist);	/*  original 32k low power behavior. */
 }
 
-static void halbtcoutsrc_AggregationCheck(struct BTC_COEXIST *pBtCoexist)
+static void halbtcoutsrc_AggregationCheck(struct btc_coexist *pBtCoexist)
 {
 	struct adapter *padapter;
 	bool bNeedToAct;
@@ -280,7 +280,7 @@ static u32 _halbtcoutsrc_GetWifiLinkStatus(struct adapter *padapter)
 	return portConnectedStatus;
 }
 
-static u32 halbtcoutsrc_GetWifiLinkStatus(struct BTC_COEXIST *pBtCoexist)
+static u32 halbtcoutsrc_GetWifiLinkStatus(struct btc_coexist *pBtCoexist)
 {
 	/*  */
 	/*  return value: */
@@ -308,7 +308,7 @@ static u32 halbtcoutsrc_GetWifiLinkStatus(struct BTC_COEXIST *pBtCoexist)
 	return retVal;
 }
 
-static u32 halbtcoutsrc_GetBtPatchVer(struct BTC_COEXIST *pBtCoexist)
+static u32 halbtcoutsrc_GetBtPatchVer(struct btc_coexist *pBtCoexist)
 {
 	return pBtCoexist->btInfo.btRealFwVer;
 }
@@ -339,7 +339,7 @@ static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
 
 static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 	struct hal_com_data *pHalData;
 	struct mlme_ext_priv *mlmeext;
@@ -349,7 +349,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 	u8 ret;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return false;
 
@@ -507,14 +507,14 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 
 static u8 halbtcoutsrc_Set(void *pBtcContext, u8 setType, void *pInBuf)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 	u8 *pu8;
 	u32 *pU4Tmp;
 	u8 ret;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 	pu8 = pInBuf;
 	pU4Tmp = pInBuf;
@@ -642,7 +642,7 @@ static u8 halbtcoutsrc_Set(void *pBtcContext, u8 setType, void *pInBuf)
 	return ret;
 }
 
-static void halbtcoutsrc_DisplayFwPwrModeCmd(struct BTC_COEXIST *pBtCoexist)
+static void halbtcoutsrc_DisplayFwPwrModeCmd(struct btc_coexist *pBtCoexist)
 {
 	u8 *cliBuf = pBtCoexist->cliBuf;
 
@@ -658,11 +658,11 @@ static void halbtcoutsrc_DisplayFwPwrModeCmd(struct BTC_COEXIST *pBtCoexist)
 /*  */
 static u8 halbtcoutsrc_Read1Byte(void *pBtcContext, u32 RegAddr)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	return rtw_read8(padapter, RegAddr);
@@ -670,11 +670,11 @@ static u8 halbtcoutsrc_Read1Byte(void *pBtcContext, u32 RegAddr)
 
 static u16 halbtcoutsrc_Read2Byte(void *pBtcContext, u32 RegAddr)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	return	rtw_read16(padapter, RegAddr);
@@ -682,11 +682,11 @@ static u16 halbtcoutsrc_Read2Byte(void *pBtcContext, u32 RegAddr)
 
 static u32 halbtcoutsrc_Read4Byte(void *pBtcContext, u32 RegAddr)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	return	rtw_read32(padapter, RegAddr);
@@ -694,11 +694,11 @@ static u32 halbtcoutsrc_Read4Byte(void *pBtcContext, u32 RegAddr)
 
 static void halbtcoutsrc_Write1Byte(void *pBtcContext, u32 RegAddr, u8 Data)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	rtw_write8(padapter, RegAddr, Data);
@@ -706,13 +706,13 @@ static void halbtcoutsrc_Write1Byte(void *pBtcContext, u32 RegAddr, u8 Data)
 
 static void halbtcoutsrc_BitMaskWrite1Byte(void *pBtcContext, u32 regAddr, u8 bitMask, u8 data1b)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 	u8 originalValue, bitShift;
 	u8 i;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 	originalValue = 0;
 	bitShift = 0;
@@ -734,11 +734,11 @@ static void halbtcoutsrc_BitMaskWrite1Byte(void *pBtcContext, u32 regAddr, u8 bi
 
 static void halbtcoutsrc_Write2Byte(void *pBtcContext, u32 RegAddr, u16 Data)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	rtw_write16(padapter, RegAddr, Data);
@@ -746,11 +746,11 @@ static void halbtcoutsrc_Write2Byte(void *pBtcContext, u32 RegAddr, u16 Data)
 
 static void halbtcoutsrc_Write4Byte(void *pBtcContext, u32 RegAddr, u32 Data)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	rtw_write32(padapter, RegAddr, Data);
@@ -758,7 +758,7 @@ static void halbtcoutsrc_Write4Byte(void *pBtcContext, u32 RegAddr, u32 Data)
 
 static void halbtcoutsrc_WriteLocalReg1Byte(void *pBtcContext, u32 RegAddr, u8 Data)
 {
-	struct BTC_COEXIST *pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	struct btc_coexist *pBtCoexist = (struct btc_coexist *)pBtcContext;
 	struct adapter *Adapter = pBtCoexist->Adapter;
 
 	if (BTC_INTF_SDIO == pBtCoexist->chipInterface)
@@ -769,11 +769,11 @@ static void halbtcoutsrc_WriteLocalReg1Byte(void *pBtcContext, u32 RegAddr, u8 D
 
 static void halbtcoutsrc_SetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask, u32 Data)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	PHY_SetBBReg(padapter, RegAddr, BitMask, Data);
@@ -782,11 +782,11 @@ static void halbtcoutsrc_SetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask, u
 
 static u32 halbtcoutsrc_GetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	return PHY_QueryBBReg(padapter, RegAddr, BitMask);
@@ -794,11 +794,11 @@ static u32 halbtcoutsrc_GetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask)
 
 static void halbtcoutsrc_SetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u32 BitMask, u32 Data)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	PHY_SetRFReg(padapter, eRFPath, RegAddr, BitMask, Data);
@@ -806,11 +806,11 @@ static void halbtcoutsrc_SetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u3
 
 static u32 halbtcoutsrc_GetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u32 BitMask)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	return PHY_QueryRFReg(padapter, eRFPath, RegAddr, BitMask);
@@ -818,7 +818,7 @@ static u32 halbtcoutsrc_GetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u32
 
 static void halbtcoutsrc_SetBtReg(void *pBtcContext, u8 RegType, u32 RegAddr, u32 Data)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 	u8 CmdBuffer1[4] = {0};
 	u8 CmdBuffer2[4] = {0};
@@ -827,7 +827,7 @@ static void halbtcoutsrc_SetBtReg(void *pBtcContext, u8 RegType, u32 RegAddr, u3
 	u8 OperVer = 0;
 	u8 ReqNum = 0;
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	CmdBuffer1[0] |= (OperVer & 0x0f);						/* Set OperVer */
@@ -854,11 +854,11 @@ static u32 halbtcoutsrc_GetBtReg(void *pBtcContext, u8 RegType, u32 RegAddr)
 
 static void halbtcoutsrc_FillH2cCmd(void *pBtcContext, u8 elementId, u32 cmdLen, u8 *pCmdBuffer)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 	struct adapter *padapter;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	padapter = pBtCoexist->Adapter;
 
 	rtw_hal_fill_h2c_cmd(padapter, elementId, cmdLen, pCmdBuffer);
@@ -866,10 +866,10 @@ static void halbtcoutsrc_FillH2cCmd(void *pBtcContext, u8 elementId, u32 cmdLen,
 
 static void halbtcoutsrc_DisplayDbgMsg(void *pBtcContext, u8 dispType)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 
 
-	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	pBtCoexist = (struct btc_coexist *)pBtcContext;
 	switch (dispType) {
 	case BTC_DBG_DISP_COEX_STATISTICS:
 		break;
@@ -888,7 +888,7 @@ static void halbtcoutsrc_DisplayDbgMsg(void *pBtcContext, u8 dispType)
 /*  */
 static u8 EXhalbtcoutsrc_BindBtCoexWithAdapter(void *padapter)
 {
-	struct BTC_COEXIST *pBtCoexist = &GLBtCoexist;
+	struct btc_coexist *pBtCoexist = &GLBtCoexist;
 
 	if (pBtCoexist->bBinded)
 		return false;
@@ -914,7 +914,7 @@ static u8 EXhalbtcoutsrc_BindBtCoexWithAdapter(void *padapter)
 
 void hal_btcoex_Initialize(void *padapter)
 {
-	struct BTC_COEXIST *pBtCoexist;
+	struct btc_coexist *pBtCoexist;
 
 	memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
 
@@ -960,7 +960,7 @@ void hal_btcoex_Initialize(void *padapter)
 	GLBtcWiFiInIQKState = false;
 }
 
-void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtcoutsrc_PowerOnSetting(struct btc_coexist *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -972,7 +972,7 @@ void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
 		EXhalbtc8723b1ant_PowerOnSetting(pBtCoexist);
 }
 
-void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST *pBtCoexist, u8 bWifiOnly)
+void EXhalbtcoutsrc_InitHwConfig(struct btc_coexist *pBtCoexist, u8 bWifiOnly)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -985,7 +985,7 @@ void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST *pBtCoexist, u8 bWifiOnly)
 		EXhalbtc8723b1ant_InitHwConfig(pBtCoexist, bWifiOnly);
 }
 
-void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtcoutsrc_InitCoexDm(struct btc_coexist *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1000,7 +1000,7 @@ void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 	pBtCoexist->bInitilized = true;
 }
 
-void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtcoutsrc_IpsNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	u8 ipsType;
 
@@ -1027,7 +1027,7 @@ void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtcoutsrc_LpsNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	u8 lpsType;
 
@@ -1050,7 +1050,7 @@ void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 		EXhalbtc8723b1ant_LpsNotify(pBtCoexist, lpsType);
 }
 
-void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
+void EXhalbtcoutsrc_ScanNotify(struct btc_coexist *pBtCoexist, u8 type)
 {
 	u8 scanType;
 
@@ -1079,7 +1079,7 @@ void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 action)
+void EXhalbtcoutsrc_ConnectNotify(struct btc_coexist *pBtCoexist, u8 action)
 {
 	u8 assoType;
 
@@ -1105,7 +1105,7 @@ void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 action)
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, enum
+void EXhalbtcoutsrc_MediaStatusNotify(struct btc_coexist *pBtCoexist, enum
 	rt_media_status mediaStatus)
 {
 	u8 mStatus;
@@ -1133,7 +1133,7 @@ void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, enum
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 pktType)
+void EXhalbtcoutsrc_SpecialPacketNotify(struct btc_coexist *pBtCoexist, u8 pktType)
 {
 	u8 packetType;
 
@@ -1164,7 +1164,7 @@ void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 pktTy
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_BtInfoNotify(struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length)
+void EXhalbtcoutsrc_BtInfoNotify(struct btc_coexist *pBtCoexist, u8 *tmpBuf, u8 length)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1182,7 +1182,7 @@ void EXhalbtcoutsrc_BtInfoNotify(struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtcoutsrc_HaltNotify(struct btc_coexist *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1195,7 +1195,7 @@ void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST *pBtCoexist)
 	pBtCoexist->bBinded = false;
 }
 
-void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
+void EXhalbtcoutsrc_PnpNotify(struct btc_coexist *pBtCoexist, u8 pnpState)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1211,7 +1211,7 @@ void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
 		EXhalbtc8723b2ant_PnpNotify(pBtCoexist, pnpState);
 }
 
-void EXhalbtcoutsrc_Periodical(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtcoutsrc_Periodical(struct btc_coexist *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1256,7 +1256,7 @@ void EXhalbtcoutsrc_SetSingleAntPath(u8 singleAntPath)
 	GLBtCoexist.boardInfo.singleAntPath = singleAntPath;
 }
 
-void EXhalbtcoutsrc_DisplayBtCoexInfo(struct BTC_COEXIST *pBtCoexist)
+void EXhalbtcoutsrc_DisplayBtCoexInfo(struct btc_coexist *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
