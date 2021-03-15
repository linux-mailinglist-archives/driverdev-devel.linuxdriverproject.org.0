Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1531E33C38E
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:09:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD73E834F6;
	Mon, 15 Mar 2021 17:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sioeUIZaRRes; Mon, 15 Mar 2021 17:09:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AA0E829EE;
	Mon, 15 Mar 2021 17:09:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 147A41BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0425D4E210
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lo1Hzun3_B0N for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E23C54B1F9
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:23 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id p7so56190497eju.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=s6xBZW3/4IhoAEZBGhtQnXO3+sQM3Vo4xcfl2hEF/XQ=;
 b=FJLmx/r9V07Lm9hVY3uL5h0oa+xF8sF0vGg+h1ftcc3aGjmm2Y/N2vIS2T0iw5wCo5
 7ljnZA8V+2NblpkICSH+DzFIaJ4ZhuxVbjG7XkBclX5oqGnHcDhqZyxKIIhm7ONjgCeL
 qjjutkYNgD3YIWB/Pl4hzeQrY9MhUtzISqqZNycw8f/SJBerI3yhisPyRzeLFnZdBZRp
 xsihOl2K2+kiGUQBApdHcblbZivgBkyKXp54tadU3HLq66Zf7zGKqio286uzJtOyDM6y
 Q88geyUqVA63c5QqTjJdsQyNn5NIEOHOWn6rq8cKekdQdSkUhl/DFYNHIlZC0ltjSIQ/
 RLhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s6xBZW3/4IhoAEZBGhtQnXO3+sQM3Vo4xcfl2hEF/XQ=;
 b=rmT344D28oJJmAIpQc+hLvLCVdkDpzwOp5JaiP1YMQc1+jdd7+zCJ6Z8yO6a37SljY
 hycbnP9ng3YDri3zdedDiZEYq5MoKYvr/qN+Oac8KOB2MNdWvYBEzOvHqOpjNepLPB6w
 oCwfABousvO2umsoiWVQXdR3fjwtb/G3H/SCKHuC0h26iuafQaX0ni6incFLzPC2Zs83
 L7PJD61RncbDN+5x0jEwWUOdd3T3+rUsKYQLWfPylOi1DKShFS2cx6zQ325FHw9WKeTb
 imYE3UqpD540l56XjZBPP4xHLxsbe99W9OjA+sVp5D1VzPviwuTkzxJ5ge6016dQ1oNB
 L1vA==
X-Gm-Message-State: AOAM533Z2R194EJqlaWYQhBfXwpkwgQDrV6ZCIYpeluzkz0PThHXpiQM
 GORA29mc7jfm4FDIUUjtu6g=
X-Google-Smtp-Source: ABdhPJyRZRtlO5lqZobIhn4h9fiBfjPwd0DHtbuuiTcoQq/1NG5tNu4YMvZcnl+gaR6lU6M9DqiBfw==
X-Received: by 2002:a17:906:1d55:: with SMTP id
 o21mr24814065ejh.485.1615827981942; 
 Mon, 15 Mar 2021 10:06:21 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:21 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 17/57] Staging: rtl8723bs: fix spaces in hal_btcoex.c
Date: Mon, 15 Mar 2021 18:05:38 +0100
Message-Id: <20210315170618.2566-18-marcocesati@gmail.com>
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
    #70: FILE: ./hal/hal_btcoex.c:70:
    +static u8 halbtcoutsrc_IsBtCoexistAvailable(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #104: FILE: ./hal/hal_btcoex.c:104:
    +static void halbtcoutsrc_LeaveLps(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #117: FILE: ./hal/hal_btcoex.c:117:
    +static void halbtcoutsrc_EnterLps(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #130: FILE: ./hal/hal_btcoex.c:130:
    +static void halbtcoutsrc_NormalLps(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #152: FILE: ./hal/hal_btcoex.c:152:
    +static void halbtcoutsrc_LeaveLowPower(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #187: FILE: ./hal/hal_btcoex.c:187:
    +static void halbtcoutsrc_NormalLowPower(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #196: FILE: ./hal/hal_btcoex.c:196:
    +static void halbtcoutsrc_DisableLowPower(struct BTC_COEXIST * pBtCoexist, u8 bLowPwrDisable)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #205: FILE: ./hal/hal_btcoex.c:205:
    +static void halbtcoutsrc_AggregationCheck(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #283: FILE: ./hal/hal_btcoex.c:283:
    +static u32 halbtcoutsrc_GetWifiLinkStatus(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #311: FILE: ./hal/hal_btcoex.c:311:
    +static u32 halbtcoutsrc_GetBtPatchVer(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #342: FILE: ./hal/hal_btcoex.c:342:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #448: FILE: ./hal/hal_btcoex.c:448:
    +			struct RT_LINK_DETECT_T * plinkinfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #510: FILE: ./hal/hal_btcoex.c:510:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #645: FILE: ./hal/hal_btcoex.c:645:
    +static void halbtcoutsrc_DisplayFwPwrModeCmd(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #661: FILE: ./hal/hal_btcoex.c:661:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #673: FILE: ./hal/hal_btcoex.c:673:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #685: FILE: ./hal/hal_btcoex.c:685:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #697: FILE: ./hal/hal_btcoex.c:697:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #709: FILE: ./hal/hal_btcoex.c:709:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #749: FILE: ./hal/hal_btcoex.c:749:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #761: FILE: ./hal/hal_btcoex.c:761:
    +	struct BTC_COEXIST *	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #772: FILE: ./hal/hal_btcoex.c:772:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #785: FILE: ./hal/hal_btcoex.c:785:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #797: FILE: ./hal/hal_btcoex.c:797:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #809: FILE: ./hal/hal_btcoex.c:809:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #821: FILE: ./hal/hal_btcoex.c:821:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #857: FILE: ./hal/hal_btcoex.c:857:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #869: FILE: ./hal/hal_btcoex.c:869:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #891: FILE: ./hal/hal_btcoex.c:891:
    +	struct BTC_COEXIST *		pBtCoexist = &GLBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #917: FILE: ./hal/hal_btcoex.c:917:
    +	struct BTC_COEXIST * pBtCoexist;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #963: FILE: ./hal/hal_btcoex.c:963:
    +void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #975: FILE: ./hal/hal_btcoex.c:975:
    +void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST * pBtCoexist, u8 bWifiOnly)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #988: FILE: ./hal/hal_btcoex.c:988:
    +void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1003: FILE: ./hal/hal_btcoex.c:1003:
    +void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1030: FILE: ./hal/hal_btcoex.c:1030:
    +void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1053: FILE: ./hal/hal_btcoex.c:1053:
    +void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1082: FILE: ./hal/hal_btcoex.c:1082:
    +void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 action)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1108: FILE: ./hal/hal_btcoex.c:1108:
    +void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, enum RT_MEDIA_STATUS mediaStatus)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1135: FILE: ./hal/hal_btcoex.c:1135:
    +void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 pktType)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1166: FILE: ./hal/hal_btcoex.c:1166:
    +void EXhalbtcoutsrc_BtInfoNotify(struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1184: FILE: ./hal/hal_btcoex.c:1184:
    +void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1197: FILE: ./hal/hal_btcoex.c:1197:
    +void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1213: FILE: ./hal/hal_btcoex.c:1213:
    +void EXhalbtcoutsrc_Periodical(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1258: FILE: ./hal/hal_btcoex.c:1258:
    +void EXhalbtcoutsrc_DisplayBtCoexInfo(struct BTC_COEXIST * pBtCoexist)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 89 +++++++++++-----------
 1 file changed, 45 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 267b93765fe8..fb279b662122 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -67,7 +67,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
 /*  */
 /* 		Debug related function */
 /*  */
-static u8 halbtcoutsrc_IsBtCoexistAvailable(struct BTC_COEXIST * pBtCoexist)
+static u8 halbtcoutsrc_IsBtCoexistAvailable(struct BTC_COEXIST *pBtCoexist)
 {
 	if (!pBtCoexist->bBinded || !pBtCoexist->Adapter)
 		return false;
@@ -101,7 +101,7 @@ static void halbtcoutsrc_DbgInit(void)
 			0;
 }
 
-static void halbtcoutsrc_LeaveLps(struct BTC_COEXIST * pBtCoexist)
+static void halbtcoutsrc_LeaveLps(struct BTC_COEXIST *pBtCoexist)
 {
 	struct adapter *padapter;
 
@@ -114,7 +114,7 @@ static void halbtcoutsrc_LeaveLps(struct BTC_COEXIST * pBtCoexist)
 	rtw_btcoex_LPS_Leave(padapter);
 }
 
-static void halbtcoutsrc_EnterLps(struct BTC_COEXIST * pBtCoexist)
+static void halbtcoutsrc_EnterLps(struct BTC_COEXIST *pBtCoexist)
 {
 	struct adapter *padapter;
 
@@ -127,7 +127,7 @@ static void halbtcoutsrc_EnterLps(struct BTC_COEXIST * pBtCoexist)
 	rtw_btcoex_LPS_Enter(padapter);
 }
 
-static void halbtcoutsrc_NormalLps(struct BTC_COEXIST * pBtCoexist)
+static void halbtcoutsrc_NormalLps(struct BTC_COEXIST *pBtCoexist)
 {
 	struct adapter *padapter;
 
@@ -149,7 +149,7 @@ static void halbtcoutsrc_NormalLps(struct BTC_COEXIST * pBtCoexist)
  *  Constraint:
  *   1. this function will request pwrctrl->lock
  */
-static void halbtcoutsrc_LeaveLowPower(struct BTC_COEXIST * pBtCoexist)
+static void halbtcoutsrc_LeaveLowPower(struct BTC_COEXIST *pBtCoexist)
 {
 	struct adapter *padapter;
 	s32 ready;
@@ -184,7 +184,7 @@ static void halbtcoutsrc_LeaveLowPower(struct BTC_COEXIST * pBtCoexist)
  *  Constraint:
  *   1. this function will request pwrctrl->lock
  */
-static void halbtcoutsrc_NormalLowPower(struct BTC_COEXIST * pBtCoexist)
+static void halbtcoutsrc_NormalLowPower(struct BTC_COEXIST *pBtCoexist)
 {
 	struct adapter *padapter;
 
@@ -193,7 +193,7 @@ static void halbtcoutsrc_NormalLowPower(struct BTC_COEXIST * pBtCoexist)
 	rtw_unregister_task_alive(padapter, BTCOEX_ALIVE);
 }
 
-static void halbtcoutsrc_DisableLowPower(struct BTC_COEXIST * pBtCoexist, u8 bLowPwrDisable)
+static void halbtcoutsrc_DisableLowPower(struct BTC_COEXIST *pBtCoexist, u8 bLowPwrDisable)
 {
 	pBtCoexist->btInfo.bBtDisableLowPwr = bLowPwrDisable;
 	if (bLowPwrDisable)
@@ -202,7 +202,7 @@ static void halbtcoutsrc_DisableLowPower(struct BTC_COEXIST * pBtCoexist, u8 bLo
 		halbtcoutsrc_NormalLowPower(pBtCoexist);	/*  original 32k low power behavior. */
 }
 
-static void halbtcoutsrc_AggregationCheck(struct BTC_COEXIST * pBtCoexist)
+static void halbtcoutsrc_AggregationCheck(struct BTC_COEXIST *pBtCoexist)
 {
 	struct adapter *padapter;
 	bool bNeedToAct;
@@ -280,7 +280,7 @@ static u32 _halbtcoutsrc_GetWifiLinkStatus(struct adapter *padapter)
 	return portConnectedStatus;
 }
 
-static u32 halbtcoutsrc_GetWifiLinkStatus(struct BTC_COEXIST * pBtCoexist)
+static u32 halbtcoutsrc_GetWifiLinkStatus(struct BTC_COEXIST *pBtCoexist)
 {
 	/*  */
 	/*  return value: */
@@ -308,7 +308,7 @@ static u32 halbtcoutsrc_GetWifiLinkStatus(struct BTC_COEXIST * pBtCoexist)
 	return retVal;
 }
 
-static u32 halbtcoutsrc_GetBtPatchVer(struct BTC_COEXIST * pBtCoexist)
+static u32 halbtcoutsrc_GetBtPatchVer(struct BTC_COEXIST *pBtCoexist)
 {
 	return pBtCoexist->btInfo.btRealFwVer;
 }
@@ -339,7 +339,7 @@ static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
 
 static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 	struct hal_com_data *pHalData;
 	struct mlme_ext_priv *mlmeext;
@@ -445,7 +445,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 
 	case BTC_GET_U4_WIFI_TRAFFIC_DIRECTION:
 		{
-			struct RT_LINK_DETECT_T * plinkinfo;
+			struct RT_LINK_DETECT_T *plinkinfo;
 			plinkinfo = &padapter->mlmepriv.LinkDetectInfo;
 
 			if (plinkinfo->NumTxOkInPeriod > plinkinfo->NumRxOkInPeriod)
@@ -507,7 +507,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 
 static u8 halbtcoutsrc_Set(void *pBtcContext, u8 setType, void *pInBuf)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 	u8 *pu8;
 	u32 *pU4Tmp;
@@ -642,7 +642,7 @@ static u8 halbtcoutsrc_Set(void *pBtcContext, u8 setType, void *pInBuf)
 	return ret;
 }
 
-static void halbtcoutsrc_DisplayFwPwrModeCmd(struct BTC_COEXIST * pBtCoexist)
+static void halbtcoutsrc_DisplayFwPwrModeCmd(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 *cliBuf = pBtCoexist->cliBuf;
 
@@ -658,7 +658,7 @@ static void halbtcoutsrc_DisplayFwPwrModeCmd(struct BTC_COEXIST * pBtCoexist)
 /*  */
 static u8 halbtcoutsrc_Read1Byte(void *pBtcContext, u32 RegAddr)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -670,7 +670,7 @@ static u8 halbtcoutsrc_Read1Byte(void *pBtcContext, u32 RegAddr)
 
 static u16 halbtcoutsrc_Read2Byte(void *pBtcContext, u32 RegAddr)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -682,7 +682,7 @@ static u16 halbtcoutsrc_Read2Byte(void *pBtcContext, u32 RegAddr)
 
 static u32 halbtcoutsrc_Read4Byte(void *pBtcContext, u32 RegAddr)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -694,7 +694,7 @@ static u32 halbtcoutsrc_Read4Byte(void *pBtcContext, u32 RegAddr)
 
 static void halbtcoutsrc_Write1Byte(void *pBtcContext, u32 RegAddr, u8 Data)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -706,7 +706,7 @@ static void halbtcoutsrc_Write1Byte(void *pBtcContext, u32 RegAddr, u8 Data)
 
 static void halbtcoutsrc_BitMaskWrite1Byte(void *pBtcContext, u32 regAddr, u8 bitMask, u8 data1b)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 	u8 originalValue, bitShift;
 	u8 i;
@@ -746,7 +746,7 @@ static void halbtcoutsrc_Write2Byte(void *pBtcContext, u32 RegAddr, u16 Data)
 
 static void halbtcoutsrc_Write4Byte(void *pBtcContext, u32 RegAddr, u32 Data)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -758,7 +758,7 @@ static void halbtcoutsrc_Write4Byte(void *pBtcContext, u32 RegAddr, u32 Data)
 
 static void halbtcoutsrc_WriteLocalReg1Byte(void *pBtcContext, u32 RegAddr, u8 Data)
 {
-	struct BTC_COEXIST *	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
+	struct BTC_COEXIST *pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
 	struct adapter *Adapter = pBtCoexist->Adapter;
 
 	if (BTC_INTF_SDIO == pBtCoexist->chipInterface)
@@ -769,7 +769,7 @@ static void halbtcoutsrc_WriteLocalReg1Byte(void *pBtcContext, u32 RegAddr, u8 D
 
 static void halbtcoutsrc_SetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask, u32 Data)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -782,7 +782,7 @@ static void halbtcoutsrc_SetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask, u
 
 static u32 halbtcoutsrc_GetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -794,7 +794,7 @@ static u32 halbtcoutsrc_GetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask)
 
 static void halbtcoutsrc_SetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u32 BitMask, u32 Data)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -806,7 +806,7 @@ static void halbtcoutsrc_SetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u3
 
 static u32 halbtcoutsrc_GetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u32 BitMask)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -818,7 +818,7 @@ static u32 halbtcoutsrc_GetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u32
 
 static void halbtcoutsrc_SetBtReg(void *pBtcContext, u8 RegType, u32 RegAddr, u32 Data)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 	u8 CmdBuffer1[4] = {0};
 	u8 CmdBuffer2[4] = {0};
@@ -854,7 +854,7 @@ static u32 halbtcoutsrc_GetBtReg(void *pBtcContext, u8 RegType, u32 RegAddr)
 
 static void halbtcoutsrc_FillH2cCmd(void *pBtcContext, u8 elementId, u32 cmdLen, u8 *pCmdBuffer)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 	struct adapter *padapter;
 
 
@@ -866,7 +866,7 @@ static void halbtcoutsrc_FillH2cCmd(void *pBtcContext, u8 elementId, u32 cmdLen,
 
 static void halbtcoutsrc_DisplayDbgMsg(void *pBtcContext, u8 dispType)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 
 
 	pBtCoexist = (struct BTC_COEXIST *)pBtcContext;
@@ -888,7 +888,7 @@ static void halbtcoutsrc_DisplayDbgMsg(void *pBtcContext, u8 dispType)
 /*  */
 static u8 EXhalbtcoutsrc_BindBtCoexWithAdapter(void *padapter)
 {
-	struct BTC_COEXIST *		pBtCoexist = &GLBtCoexist;
+	struct BTC_COEXIST *pBtCoexist = &GLBtCoexist;
 
 	if (pBtCoexist->bBinded)
 		return false;
@@ -914,7 +914,7 @@ static u8 EXhalbtcoutsrc_BindBtCoexWithAdapter(void *padapter)
 
 void hal_btcoex_Initialize(void *padapter)
 {
-	struct BTC_COEXIST * pBtCoexist;
+	struct BTC_COEXIST *pBtCoexist;
 
 	memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
 
@@ -960,7 +960,7 @@ void hal_btcoex_Initialize(void *padapter)
 	GLBtcWiFiInIQKState = false;
 }
 
-void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -972,7 +972,7 @@ void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)
 		EXhalbtc8723b1ant_PowerOnSetting(pBtCoexist);
 }
 
-void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST * pBtCoexist, u8 bWifiOnly)
+void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST *pBtCoexist, u8 bWifiOnly)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -985,7 +985,7 @@ void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST * pBtCoexist, u8 bWifiOnly)
 		EXhalbtc8723b1ant_InitHwConfig(pBtCoexist, bWifiOnly);
 }
 
-void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1000,7 +1000,7 @@ void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
 	pBtCoexist->bInitilized = true;
 }
 
-void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	u8 ipsType;
 
@@ -1027,7 +1027,7 @@ void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	u8 lpsType;
 
@@ -1050,7 +1050,7 @@ void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 		EXhalbtc8723b1ant_LpsNotify(pBtCoexist, lpsType);
 }
 
-void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	u8 scanType;
 
@@ -1079,7 +1079,7 @@ void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 action)
+void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 action)
 {
 	u8 assoType;
 
@@ -1105,7 +1105,8 @@ void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 action)
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, enum RT_MEDIA_STATUS mediaStatus)
+void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, enum
+	RT_MEDIA_STATUS mediaStatus)
 {
 	u8 mStatus;
 
@@ -1132,7 +1133,7 @@ void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, enum RT_M
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 pktType)
+void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 pktType)
 {
 	u8 packetType;
 
@@ -1163,7 +1164,7 @@ void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 pktT
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_BtInfoNotify(struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length)
+void EXhalbtcoutsrc_BtInfoNotify(struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1181,7 +1182,7 @@ void EXhalbtcoutsrc_BtInfoNotify(struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1194,7 +1195,7 @@ void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST * pBtCoexist)
 	pBtCoexist->bBinded = false;
 }
 
-void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)
+void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1210,7 +1211,7 @@ void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)
 		EXhalbtc8723b2ant_PnpNotify(pBtCoexist, pnpState);
 }
 
-void EXhalbtcoutsrc_Periodical(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtcoutsrc_Periodical(struct BTC_COEXIST *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
@@ -1255,7 +1256,7 @@ void EXhalbtcoutsrc_SetSingleAntPath(u8 singleAntPath)
 	GLBtCoexist.boardInfo.singleAntPath = singleAntPath;
 }
 
-void EXhalbtcoutsrc_DisplayBtCoexInfo(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtcoutsrc_DisplayBtCoexInfo(struct BTC_COEXIST *pBtCoexist)
 {
 	if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
 		return;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
