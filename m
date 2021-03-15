Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2863D33C393
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:09:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F70F4EB97;
	Mon, 15 Mar 2021 17:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDXs5xIQAkuT; Mon, 15 Mar 2021 17:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96E664B524;
	Mon, 15 Mar 2021 17:09:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D68731BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C65976F504
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqgEburDwdVF for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2FB0E6F52F
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:26 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id ox4so51884898ejb.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=sw+ic8D5YJ7AOPLxJyyh+ADPpBrc7PMhyBmx3j+Dxkg=;
 b=FlgUvcNGRjnXwaIWxu4wRjAGuDxytkbIlReotN+ZZMWA7qbfpJ9OPrn6fl17iiiMTs
 fgJRHbC6EJ0XwXtMPi4Kt4DC1Fkw7FDKDPR7UahwgAaFzFsHL03hvQC7oMk6BEiDV08b
 otw3hx6B2teSQIePmWN29anZQ1+8atpcVFbWEbybsVammC2do0R7bY1cNNxBXaERAQgt
 79aVuKLvkrYXJynhdRzs52AbcVZD8Vjta/vc8E8WYw7kOXlPdTfLeAM05mHE9TpyXXZX
 lmao5orUcxDeH2ln6GYJ2fv0pv0x05F9DXrhCCBO/79tVCpCOYax+iHsJd6mWUq0T31o
 6xuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sw+ic8D5YJ7AOPLxJyyh+ADPpBrc7PMhyBmx3j+Dxkg=;
 b=BCXbtX0ekCjP8SSE7G44nJlpRQd84Xlax7AkaQHkjwCIDswqQ5xscqGaC4SmiYBd/j
 vGWneVhZ4futb5rndPPrbrL0KLchKt6bP7eX1FdgVmrQWNYN/MneYGFrmwPs9Epaz+Hp
 Fw4BoOpuC/FaXMlLq3ga5fofd0mDvFS+ddYUmiKGNjUQ2Ct7oh6p5KBd4bXODwE9FRWb
 /MeX93k8l6kzdH1z1sR5LYJpNKiTu0l+af1dk56zLum/DuUeednVnrdIzbfUEmFg/EZs
 pXaX4DGix+P1QFzBn82tzBtpLmnsH69tR2hMZFRyx+DXFhJVCe1yLEk6XUvOsvnHRz3k
 Qd5Q==
X-Gm-Message-State: AOAM531jY+6x/agzV2AFdRXtz+FWrIfsbJQR2tVhdyzfG0GXbiRVkTlZ
 NKHch5cYbnhBJ1PAOUcXibE=
X-Google-Smtp-Source: ABdhPJyAvVIIM0rTPtr4yGGUqnkN88woq+6zLu0vUYQGEY36AGEvpqNlUVcdL4//opoURtL+KrdJlA==
X-Received: by 2002:a17:906:add7:: with SMTP id
 lb23mr24517723ejb.273.1615827984369; 
 Mon, 15 Mar 2021 10:06:24 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:24 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 20/57] Staging: rtl8723bs: fix spaces in odm.c
Date: Mon, 15 Mar 2021 18:05:41 +0100
Message-Id: <20210315170618.2566-21-marcocesati@gmail.com>
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
    #285: FILE: ./hal/odm.c:285:
    +void odm_CommonInfoSelfInit(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #287: FILE: ./hal/odm.c:287:
    +void odm_CommonInfoSelfUpdate(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #289: FILE: ./hal/odm.c:289:
    +void odm_CmnInfoInit_Debug(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #291: FILE: ./hal/odm.c:291:
    +void odm_BasicDbgMessage(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #305: FILE: ./hal/odm.c:305:
    +void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #309: FILE: ./hal/odm.c:309:
    +void odm_RSSIMonitorInit(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #311: FILE: ./hal/odm.c:311:
    +void odm_RSSIMonitorCheckCE(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #313: FILE: ./hal/odm.c:313:
    +void odm_RSSIMonitorCheck(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #315: FILE: ./hal/odm.c:315:
    +void odm_SwAntDetectInit(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #323: FILE: ./hal/odm.c:323:
    +void odm_RefreshRateAdaptiveMask(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #325: FILE: ./hal/odm.c:325:
    +void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #327: FILE: ./hal/odm.c:327:
    +void odm_RateAdaptiveMaskInit(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #330: FILE: ./hal/odm.c:330:
    +void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #338: FILE: ./hal/odm.c:338:
    +void odm_InitHybridAntDiv(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #341: FILE: ./hal/odm.c:341:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #349: FILE: ./hal/odm.c:349:
    +void odm_SetRxIdleAnt(struct DM_ODM_T * pDM_Odm, u8 Ant, bool bDualPath);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #353: FILE: ./hal/odm.c:353:
    +void odm_HwAntDiv(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #363: FILE: ./hal/odm.c:363:
    +void ODM_DMInit(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #393: FILE: ./hal/odm.c:393:
    +void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #420: FILE: ./hal/odm.c:420:
    +		struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #448: FILE: ./hal/odm.c:448:
    +void ODM_CmnInfoInit(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #560: FILE: ./hal/odm.c:560:
    +void ODM_CmnInfoHook(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #689: FILE: ./hal/odm.c:689:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #717: FILE: ./hal/odm.c:717:
    +void ODM_CmnInfoUpdate(struct DM_ODM_T * pDM_Odm, u32 CmnInfo, u64 Value)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #831: FILE: ./hal/odm.c:831:
    +void odm_CommonInfoSelfInit(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #841: FILE: ./hal/odm.c:841:
    +void odm_CommonInfoSelfUpdate(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #867: FILE: ./hal/odm.c:867:
    +void odm_CmnInfoInit_Debug(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #888: FILE: ./hal/odm.c:888:
    +void odm_BasicDbgMessage(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #935: FILE: ./hal/odm.c:935:
    +void odm_RateAdaptiveMaskInit(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #937: FILE: ./hal/odm.c:937:
    +	struct ODM_RATE_ADAPTIVE * pOdmRA = &pDM_Odm->RateAdaptive;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #953: FILE: ./hal/odm.c:953:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1083: FILE: ./hal/odm.c:1083:
    +void odm_RefreshRateAdaptiveMask(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1094: FILE: ./hal/odm.c:1094:
    +void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1131: FILE: ./hal/odm.c:1131:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1137: FILE: ./hal/odm.c:1137:
    +	struct ODM_RATE_ADAPTIVE * pRA = &pDM_Odm->RateAdaptive;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1196: FILE: ./hal/odm.c:1196:
    +void odm_RSSIMonitorInit(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1198: FILE: ./hal/odm.c:1198:
    +	struct RA_T * pRA_Table = &pDM_Odm->DM_RA_Table;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1204: FILE: ./hal/odm.c:1204:
    +void odm_RSSIMonitorCheck(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1217: FILE: ./hal/odm.c:1217:
    +	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1234: FILE: ./hal/odm.c:1234:
    +void odm_RSSIMonitorCheckCE(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1243: FILE: ./hal/odm.c:1243:
    +	struct RA_T * pRA_Table = &pDM_Odm->DM_RA_Table;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1306: FILE: ./hal/odm.c:1306:
    +static u8 getSwingIndex(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1330: FILE: ./hal/odm.c:1330:
    +void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1374: FILE: ./hal/odm.c:1374:
    +void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1398: FILE: ./hal/odm.c:1398:
    +void odm_SwAntDetectInit(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1400: FILE: ./hal/odm.c:1400:
    +	struct SWAT_T * pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.c | 92 ++++++++++++++---------------
 1 file changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index 4337f3b614f9..c7607e7d26c5 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -282,13 +282,13 @@ u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE] = {
 /*  Local Function predefine. */
 
 /* START------------COMMON INFO RELATED--------------- */
-void odm_CommonInfoSelfInit(struct DM_ODM_T * pDM_Odm);
+void odm_CommonInfoSelfInit(struct DM_ODM_T *pDM_Odm);
 
-void odm_CommonInfoSelfUpdate(struct DM_ODM_T * pDM_Odm);
+void odm_CommonInfoSelfUpdate(struct DM_ODM_T *pDM_Odm);
 
-void odm_CmnInfoInit_Debug(struct DM_ODM_T * pDM_Odm);
+void odm_CmnInfoInit_Debug(struct DM_ODM_T *pDM_Odm);
 
-void odm_BasicDbgMessage(struct DM_ODM_T * pDM_Odm);
+void odm_BasicDbgMessage(struct DM_ODM_T *pDM_Odm);
 
 /* END------------COMMON INFO RELATED--------------- */
 
@@ -302,17 +302,17 @@ void odm_BasicDbgMessage(struct DM_ODM_T * pDM_Odm);
 /* Remove BB power Saving by YuChen */
 /* END---------BB POWER SAVE----------------------- */
 
-void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T * pDM_Odm);
+void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T *pDM_Odm);
 
 /* Remove by YuChen */
 
-void odm_RSSIMonitorInit(struct DM_ODM_T * pDM_Odm);
+void odm_RSSIMonitorInit(struct DM_ODM_T *pDM_Odm);
 
-void odm_RSSIMonitorCheckCE(struct DM_ODM_T * pDM_Odm);
+void odm_RSSIMonitorCheckCE(struct DM_ODM_T *pDM_Odm);
 
-void odm_RSSIMonitorCheck(struct DM_ODM_T * pDM_Odm);
+void odm_RSSIMonitorCheck(struct DM_ODM_T *pDM_Odm);
 
-void odm_SwAntDetectInit(struct DM_ODM_T * pDM_Odm);
+void odm_SwAntDetectInit(struct DM_ODM_T *pDM_Odm);
 
 void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
 
@@ -320,14 +320,14 @@ void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
 
 void odm_GlobalAdapterCheck(void);
 
-void odm_RefreshRateAdaptiveMask(struct DM_ODM_T * pDM_Odm);
+void odm_RefreshRateAdaptiveMask(struct DM_ODM_T *pDM_Odm);
 
-void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm);
+void ODM_TXPowerTrackingCheck(struct DM_ODM_T *pDM_Odm);
 
-void odm_RateAdaptiveMaskInit(struct DM_ODM_T * pDM_Odm);
+void odm_RateAdaptiveMaskInit(struct DM_ODM_T *pDM_Odm);
 
 
-void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm);
+void odm_TXPowerTrackingInit(struct DM_ODM_T *pDM_Odm);
 
 /* Remove Edca by Yu Chen */
 
@@ -335,10 +335,10 @@ void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm);
 #define RxDefaultAnt1		0x65a9
 #define RxDefaultAnt2		0x569a
 
-void odm_InitHybridAntDiv(struct DM_ODM_T * pDM_Odm);
+void odm_InitHybridAntDiv(struct DM_ODM_T *pDM_Odm);
 
 bool odm_StaDefAntSel(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u32 OFDM_Ant1_Cnt,
 	u32 OFDM_Ant2_Cnt,
 	u32 CCK_Ant1_Cnt,
@@ -346,11 +346,11 @@ bool odm_StaDefAntSel(
 	u8 *pDefAnt
 );
 
-void odm_SetRxIdleAnt(struct DM_ODM_T * pDM_Odm, u8 Ant, bool bDualPath);
+void odm_SetRxIdleAnt(struct DM_ODM_T *pDM_Odm, u8 Ant, bool bDualPath);
 
 
 
-void odm_HwAntDiv(struct DM_ODM_T * pDM_Odm);
+void odm_HwAntDiv(struct DM_ODM_T *pDM_Odm);
 
 
 /*  */
@@ -360,7 +360,7 @@ void odm_HwAntDiv(struct DM_ODM_T * pDM_Odm);
 /*  */
 /*  2011/09/21 MH Add to describe different team necessary resource allocate?? */
 /*  */
-void ODM_DMInit(struct DM_ODM_T * pDM_Odm)
+void ODM_DMInit(struct DM_ODM_T *pDM_Odm)
 {
 
 	odm_CommonInfoSelfInit(pDM_Odm);
@@ -390,7 +390,7 @@ void ODM_DMInit(struct DM_ODM_T * pDM_Odm)
 /*  You can not add any dummy function here, be care, you can only use DM structure */
 /*  to perform any new ODM_DM. */
 /*  */
-void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm)
+void ODM_DMWatchdog(struct DM_ODM_T *pDM_Odm)
 {
 	odm_CommonInfoSelfUpdate(pDM_Odm);
 	odm_BasicDbgMessage(pDM_Odm);
@@ -417,7 +417,7 @@ void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm)
 		odm_DIG(pDM_Odm);
 
 	{
-		struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+		struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 		odm_Adaptivity(pDM_Odm, pDM_DigTable->CurIGValue);
 	}
@@ -445,7 +445,7 @@ void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm)
 /*  */
 /*  Init /.. Fixed HW value. Only init time. */
 /*  */
-void ODM_CmnInfoInit(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value)
+void ODM_CmnInfoInit(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value)
 {
 	/*  */
 	/*  This section is used for init value */
@@ -557,7 +557,7 @@ void ODM_CmnInfoInit(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32
 }
 
 
-void ODM_CmnInfoHook(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue)
+void ODM_CmnInfoHook(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue)
 {
 	/*  */
 	/*  Hook call by reference pointer. */
@@ -686,7 +686,7 @@ void ODM_CmnInfoHook(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void
 
 
 void ODM_CmnInfoPtrArrayHook(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	enum ODM_CMNINFO_E CmnInfo,
 	u16 Index,
 	void *pValue
@@ -714,7 +714,7 @@ void ODM_CmnInfoPtrArrayHook(
 /*  */
 /*  Update Band/CHannel/.. The values are dynamic but non-per-packet. */
 /*  */
-void ODM_CmnInfoUpdate(struct DM_ODM_T * pDM_Odm, u32 CmnInfo, u64 Value)
+void ODM_CmnInfoUpdate(struct DM_ODM_T *pDM_Odm, u32 CmnInfo, u64 Value)
 {
 	/*  */
 	/*  This init variable may be changed in run time. */
@@ -828,7 +828,7 @@ void ODM_CmnInfoUpdate(struct DM_ODM_T * pDM_Odm, u32 CmnInfo, u64 Value)
 
 }
 
-void odm_CommonInfoSelfInit(struct DM_ODM_T * pDM_Odm)
+void odm_CommonInfoSelfInit(struct DM_ODM_T *pDM_Odm)
 {
 	pDM_Odm->bCckHighPower = (bool) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(CCK_RPT_FORMAT, pDM_Odm), ODM_BIT(CCK_RPT_FORMAT, pDM_Odm));
 	pDM_Odm->RFPathRxEnable = (u8) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(BB_RX_PATH, pDM_Odm), ODM_BIT(BB_RX_PATH, pDM_Odm));
@@ -838,7 +838,7 @@ void odm_CommonInfoSelfInit(struct DM_ODM_T * pDM_Odm)
 	pDM_Odm->TxRate = 0xFF;
 }
 
-void odm_CommonInfoSelfUpdate(struct DM_ODM_T * pDM_Odm)
+void odm_CommonInfoSelfUpdate(struct DM_ODM_T *pDM_Odm)
 {
 	u8 EntryCnt = 0;
 	u8 i;
@@ -864,7 +864,7 @@ void odm_CommonInfoSelfUpdate(struct DM_ODM_T * pDM_Odm)
 		pDM_Odm->bOneEntryOnly = false;
 }
 
-void odm_CmnInfoInit_Debug(struct DM_ODM_T * pDM_Odm)
+void odm_CmnInfoInit_Debug(struct DM_ODM_T *pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoInit_Debug ==>\n"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportPlatform =%d\n", pDM_Odm->SupportPlatform));
@@ -885,7 +885,7 @@ void odm_CmnInfoInit_Debug(struct DM_ODM_T * pDM_Odm)
 
 }
 
-void odm_BasicDbgMessage(struct DM_ODM_T * pDM_Odm)
+void odm_BasicDbgMessage(struct DM_ODM_T *pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_BasicDbgMsg ==>\n"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bLinked = %d, RSSI_Min = %d,\n",
@@ -932,9 +932,9 @@ void odm_BasicDbgMessage(struct DM_ODM_T * pDM_Odm)
 /* 3 Rate Adaptive */
 /* 3 ============================================================ */
 
-void odm_RateAdaptiveMaskInit(struct DM_ODM_T * pDM_Odm)
+void odm_RateAdaptiveMaskInit(struct DM_ODM_T *pDM_Odm)
 {
-	struct ODM_RATE_ADAPTIVE * pOdmRA = &pDM_Odm->RateAdaptive;
+	struct ODM_RATE_ADAPTIVE *pOdmRA = &pDM_Odm->RateAdaptive;
 
 	pOdmRA->Type = DM_Type_ByDriver;
 	if (pOdmRA->Type == DM_Type_ByDriver)
@@ -950,7 +950,7 @@ void odm_RateAdaptiveMaskInit(struct DM_ODM_T * pDM_Odm)
 }
 
 u32 ODM_Get_Rate_Bitmap(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u32 macid,
 	u32 ra_mask,
 	u8 rssi_level
@@ -1080,7 +1080,7 @@ u32 ODM_Get_Rate_Bitmap(
 *
 * --------------------------------------------------------------------------
 */
-void odm_RefreshRateAdaptiveMask(struct DM_ODM_T * pDM_Odm)
+void odm_RefreshRateAdaptiveMask(struct DM_ODM_T *pDM_Odm)
 {
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask()---------->\n"));
@@ -1091,7 +1091,7 @@ void odm_RefreshRateAdaptiveMask(struct DM_ODM_T * pDM_Odm)
 	odm_RefreshRateAdaptiveMaskCE(pDM_Odm);
 }
 
-void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T * pDM_Odm)
+void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T *pDM_Odm)
 {
 	u8 i;
 	struct adapter *padapter =  pDM_Odm->Adapter;
@@ -1128,13 +1128,13 @@ void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T * pDM_Odm)
 /*  Return Value: bool */
 /*  - true: RATRState is changed. */
 bool ODM_RAStateCheck(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	s32 RSSI,
 	bool bForceUpdate,
 	u8 *pRATRState
 )
 {
-	struct ODM_RATE_ADAPTIVE * pRA = &pDM_Odm->RateAdaptive;
+	struct ODM_RATE_ADAPTIVE *pRA = &pDM_Odm->RateAdaptive;
 	const u8 GoUpGap = 5;
 	u8 HighRSSIThreshForRA = pRA->HighRSSIThresh;
 	u8 LowRSSIThreshForRA = pRA->LowRSSIThresh;
@@ -1193,15 +1193,15 @@ bool ODM_RAStateCheck(
 /* 3 RSSI Monitor */
 /* 3 ============================================================ */
 
-void odm_RSSIMonitorInit(struct DM_ODM_T * pDM_Odm)
+void odm_RSSIMonitorInit(struct DM_ODM_T *pDM_Odm)
 {
-	struct RA_T * pRA_Table = &pDM_Odm->DM_RA_Table;
+	struct RA_T *pRA_Table = &pDM_Odm->DM_RA_Table;
 
 	pRA_Table->firstconnect = false;
 
 }
 
-void odm_RSSIMonitorCheck(struct DM_ODM_T * pDM_Odm)
+void odm_RSSIMonitorCheck(struct DM_ODM_T *pDM_Odm)
 {
 	if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
 		return;
@@ -1214,7 +1214,7 @@ static void FindMinimumRSSI(struct adapter *padapter)
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	/* 1 1.Determine the minimum RSSI */
 
@@ -1231,7 +1231,7 @@ static void FindMinimumRSSI(struct adapter *padapter)
 	/* ODM_RT_TRACE(pDM_Odm, COMP_DIG, DBG_LOUD, ("MinUndecoratedPWDBForDM =%d\n", pHalData->MinUndecoratedPWDBForDM)); */
 }
 
-void odm_RSSIMonitorCheckCE(struct DM_ODM_T * pDM_Odm)
+void odm_RSSIMonitorCheckCE(struct DM_ODM_T *pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
@@ -1240,7 +1240,7 @@ void odm_RSSIMonitorCheckCE(struct DM_ODM_T * pDM_Odm)
 	int tmpEntryMaxPWDB = 0, tmpEntryMinPWDB = 0xff;
 	u8 sta_cnt = 0;
 	u32 PWDB_rssi[NUM_STA] = {0};/* 0~15]:MACID, [16~31]:PWDB_rssi */
-	struct RA_T * pRA_Table = &pDM_Odm->DM_RA_Table;
+	struct RA_T *pRA_Table = &pDM_Odm->DM_RA_Table;
 
 	if (pDM_Odm->bLinked != true)
 		return;
@@ -1303,7 +1303,7 @@ void odm_RSSIMonitorCheckCE(struct DM_ODM_T * pDM_Odm)
 /* 3 Tx Power Tracking */
 /* 3 ============================================================ */
 
-static u8 getSwingIndex(struct DM_ODM_T * pDM_Odm)
+static u8 getSwingIndex(struct DM_ODM_T *pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	u8 i = 0;
@@ -1327,7 +1327,7 @@ static u8 getSwingIndex(struct DM_ODM_T * pDM_Odm)
 	return i;
 }
 
-void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm)
+void odm_TXPowerTrackingInit(struct DM_ODM_T *pDM_Odm)
 {
 	u8 defaultSwingIndex = getSwingIndex(pDM_Odm);
 	u8 p = 0;
@@ -1371,7 +1371,7 @@ void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm)
 
 }
 
-void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm)
+void ODM_TXPowerTrackingCheck(struct DM_ODM_T *pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 
@@ -1395,9 +1395,9 @@ void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm)
 /* 3 ============================================================ */
 /* 3 SW Antenna Diversity */
 /* 3 ============================================================ */
-void odm_SwAntDetectInit(struct DM_ODM_T * pDM_Odm)
+void odm_SwAntDetectInit(struct DM_ODM_T *pDM_Odm)
 {
-	struct SWAT_T * pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
+	struct SWAT_T *pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
 
 	pDM_SWAT_Table->SWAS_NoLink_BK_Reg92c = rtw_read32(pDM_Odm->Adapter, rDPDT_control);
 	pDM_SWAT_Table->PreAntenna = MAIN_ANT;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
