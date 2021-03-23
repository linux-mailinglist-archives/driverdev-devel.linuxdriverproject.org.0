Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D08FD345EC7
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:59:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7679583112;
	Tue, 23 Mar 2021 12:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEHpUCJk4nK2; Tue, 23 Mar 2021 12:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44B738269C;
	Tue, 23 Mar 2021 12:59:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E67001BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB5A3404BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLgfm7qwIO44 for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9D2C404BD
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:25 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id l4so26910529ejc.10
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/RZb5y2mcXWOriV2aIKnnnV987YxvFF79Xbj51zrWWI=;
 b=WtsHF0D79vzEbL9j/yXkg8suRp35Bad+aSPxdcBQHsVArxAUtiSrS7Mt7WL4F3EPb8
 nsDCQZ+4MAqfKCL02fPImAvylw7Z5a32ZDE40szCs1S45jZWVI3Xh3J/ZQ8CMgj5p/fj
 s8N/LgpBA3RZnO8ffStDOQsHTdMRBFVZ4DOfwL6B8oZGLQ19bLWs3V3+0p+V6XXonOtJ
 /rtLk/JxSUBTxyTT+yEQgZSDCUsHXDpqbdztwPV3UNiHYXOMzipntItsmzOSwkXxaZ9W
 4HyCu1J9cYf5WiXWPuYqYghT81epqeUUqTMO0UD3FJMfE4zNl5bGV09xAsob04ezm1//
 jNdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/RZb5y2mcXWOriV2aIKnnnV987YxvFF79Xbj51zrWWI=;
 b=cwJp6OjpOuTtmalF3I7xsK3uA8x7zlssaSLlDPRT4PN4IrqIJVr/bj+DxGk/85dGNF
 yDykg27nmbK8cEiGSLUV8IZ7uPN9AuKgnIJXHRp4ne87ntPE3gJKEdK0BaVErU0Hi5XI
 5xR+SiG6M95GvBKluyS2iOpLPuUujom6SocxsJojn2BLXZljzu0JOsw1t6AHCN7Xyj9E
 PISEsplIYl1rhxWXmwuZteKbk1VTywvyt5i5cqvIbhcODq8g7a7J8GKCkXwyZCc+2T7V
 5WF5aRsdViVNOd4Nj6sV9vdxkUyYZasdOTOwChXQ/ylnjH2aQC1f4iUURbpN+JhkJxbQ
 nDLg==
X-Gm-Message-State: AOAM531KLI+1j6fwiznG4hXjDu60CuO5LYh3/3Uf4+KgtGpZUXwaNYMW
 x0JvU8Dep+Mn0746xTwEg2I=
X-Google-Smtp-Source: ABdhPJyoXfPWnCh3pO/l5llpcZ9vAEnriy1pzN5wuUwUt7hriDtfVoFxHQSvLEZAxqZPcBTBBll0jQ==
X-Received: by 2002:a17:907:e88:: with SMTP id
 ho8mr4913026ejc.199.1616504303517; 
 Tue, 23 Mar 2021 05:58:23 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id bj7sm11554145ejb.28.2021.03.23.05.58.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:23 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 5/9] staging: rtl8723bs: remove function prototypes in
 hal/odm.c
Date: Tue, 23 Mar 2021 13:56:32 +0100
Message-Id: <9a92a2f29c2c9fb3c386a3c1d0d25f628845c563.1616503354.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616503354.git.fabioaiuto83@gmail.com>
References: <cover.1616503354.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch issues:

WARNING: externs should be avoided in .c files
285: FILE: drivers/staging/rtl8723bs/hal/odm.c:285:
+void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
287: FILE: drivers/staging/rtl8723bs/hal/odm.c:287:
+void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
289: FILE: drivers/staging/rtl8723bs/hal/odm.c:289:
+void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
291: FILE: drivers/staging/rtl8723bs/hal/odm.c:291:
+void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
305: FILE: drivers/staging/rtl8723bs/hal/odm.c:305:
+void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
309: FILE: drivers/staging/rtl8723bs/hal/odm.c:309:
+void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
311: FILE: drivers/staging/rtl8723bs/hal/odm.c:311:
+void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
313: FILE: drivers/staging/rtl8723bs/hal/odm.c:313:
+void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
315: FILE: drivers/staging/rtl8723bs/hal/odm.c:315:
+void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
317: FILE: drivers/staging/rtl8723bs/hal/odm.c:317:
+void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
--
WARNING: externs should be avoided in .c files
321: FILE: drivers/staging/rtl8723bs/hal/odm.c:321:
+void odm_GlobalAdapterCheck(void);
--
WARNING: externs should be avoided in .c files
323: FILE: drivers/staging/rtl8723bs/hal/odm.c:323:
+void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
325: FILE: drivers/staging/rtl8723bs/hal/odm.c:325:
+void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
327: FILE: drivers/staging/rtl8723bs/hal/odm.c:327:
+void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
330: FILE: drivers/staging/rtl8723bs/hal/odm.c:330:
+void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
338: FILE: drivers/staging/rtl8723bs/hal/odm.c:338:
+void odm_InitHybridAntDiv(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
340: FILE: drivers/staging/rtl8723bs/hal/odm.c:340:
+bool odm_StaDefAntSel(
--
WARNING: externs should be avoided in .c files
349: FILE: drivers/staging/rtl8723bs/hal/odm.c:349:
+void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm, u8 Ant, bool bDualPath);
--
WARNING: externs should be avoided in .c files
353: FILE: drivers/staging/rtl8723bs/hal/odm.c:353:
+void odm_HwAntDiv(struct dm_odm_t *pDM_Odm);

removed function prototypes  and made staics where needed
in hal/odm.c

moved function definition in file to let the compiler work

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.c | 1717 +++++++++++++--------------
 1 file changed, 824 insertions(+), 893 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index 49d552105a65..3d92eee3a840 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -279,1126 +279,1057 @@ u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE] = {
 	0x3FE  /*  36, +6.0dB */
 };
 
-/*  Local Function predefine. */
-
-/* START------------COMMON INFO RELATED--------------- */
-void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm);
-
-void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm);
+/* Remove Edca by Yu Chen */
 
-void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm);
 
-void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm);
+#define RxDefaultAnt1		0x65a9
+#define RxDefaultAnt2		0x569a
 
-/* END------------COMMON INFO RELATED--------------- */
+static void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm)
+{
+	pDM_Odm->bCckHighPower = (bool) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(CCK_RPT_FORMAT, pDM_Odm), ODM_BIT(CCK_RPT_FORMAT, pDM_Odm));
+	pDM_Odm->RFPathRxEnable = (u8) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(BB_RX_PATH, pDM_Odm), ODM_BIT(BB_RX_PATH, pDM_Odm));
 
-/* START---------------DIG--------------------------- */
+	ODM_InitDebugSetting(pDM_Odm);
 
-/* Remove by Yuchen */
+	pDM_Odm->TxRate = 0xFF;
+}
 
-/* END---------------DIG--------------------------- */
+static void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm)
+{
+	u8 EntryCnt = 0;
+	u8 i;
+	PSTA_INFO_T	pEntry;
 
-/* START-------BB POWER SAVE----------------------- */
-/* Remove BB power Saving by YuChen */
-/* END---------BB POWER SAVE----------------------- */
+	if (*(pDM_Odm->pBandWidth) == ODM_BW40M) {
+		if (*(pDM_Odm->pSecChOffset) == 1)
+			pDM_Odm->ControlChannel = *(pDM_Odm->pChannel)-2;
+		else if (*(pDM_Odm->pSecChOffset) == 2)
+			pDM_Odm->ControlChannel = *(pDM_Odm->pChannel)+2;
+	} else
+		pDM_Odm->ControlChannel = *(pDM_Odm->pChannel);
 
-void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm);
+	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
+		pEntry = pDM_Odm->pODM_StaInfo[i];
+		if (IS_STA_VALID(pEntry))
+			EntryCnt++;
+	}
 
-/* Remove by YuChen */
+	if (EntryCnt == 1)
+		pDM_Odm->bOneEntryOnly = true;
+	else
+		pDM_Odm->bOneEntryOnly = false;
+}
 
-void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm);
+static void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm)
+{
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoInit_Debug ==>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportPlatform =%d\n", pDM_Odm->SupportPlatform));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportAbility = 0x%x\n", pDM_Odm->SupportAbility));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportInterface =%d\n", pDM_Odm->SupportInterface));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportICType = 0x%x\n", pDM_Odm->SupportICType));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("CutVersion =%d\n", pDM_Odm->CutVersion));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("FabVersion =%d\n", pDM_Odm->FabVersion));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("RFType =%d\n", pDM_Odm->RFType));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("BoardType =%d\n", pDM_Odm->BoardType));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtLNA =%d\n", pDM_Odm->ExtLNA));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtPA =%d\n", pDM_Odm->ExtPA));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtTRSW =%d\n", pDM_Odm->ExtTRSW));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("PatchID =%d\n", pDM_Odm->PatchID));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bInHctTest =%d\n", pDM_Odm->bInHctTest));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bWIFITest =%d\n", pDM_Odm->bWIFITest));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bDualMacSmartConcurrent =%d\n", pDM_Odm->bDualMacSmartConcurrent));
 
-void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm);
+}
 
-void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm);
+static void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm)
+{
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_BasicDbgMsg ==>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bLinked = %d, RSSI_Min = %d,\n",
+		pDM_Odm->bLinked, pDM_Odm->RSSI_Min));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("RxRate = 0x%x, RSSI_A = %d, RSSI_B = %d\n",
+		pDM_Odm->RxRate, pDM_Odm->RSSI_A, pDM_Odm->RSSI_B));
+}
 
-void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm);
+/* 3 ============================================================ */
+/* 3 RATR MASK */
+/* 3 ============================================================ */
+/* 3 ============================================================ */
+/* 3 Rate Adaptive */
+/* 3 ============================================================ */
 
-void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
+static void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm)
+{
+	struct odm_rate_adaptive *pOdmRA = &pDM_Odm->RateAdaptive;
 
+	pOdmRA->Type = DM_Type_ByDriver;
+	if (pOdmRA->Type == DM_Type_ByDriver)
+		pDM_Odm->bUseRAMask = true;
+	else
+		pDM_Odm->bUseRAMask = false;
 
+	pOdmRA->RATRState = DM_RATR_STA_INIT;
+	pOdmRA->LdpcThres = 35;
+	pOdmRA->bUseLdpc = false;
+	pOdmRA->HighRSSIThresh = 50;
+	pOdmRA->LowRSSIThresh = 20;
+}
 
-void odm_GlobalAdapterCheck(void);
+u32 ODM_Get_Rate_Bitmap(
+	struct dm_odm_t *pDM_Odm,
+	u32 macid,
+	u32 ra_mask,
+	u8 rssi_level
+)
+{
+	PSTA_INFO_T	pEntry;
+	u32 rate_bitmap = 0;
+	u8 WirelessMode;
 
-void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm);
+	pEntry = pDM_Odm->pODM_StaInfo[macid];
+	if (!IS_STA_VALID(pEntry))
+		return ra_mask;
 
-void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm);
+	WirelessMode = pEntry->wireless_mode;
 
-void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm);
+	switch (WirelessMode) {
+	case ODM_WM_B:
+		if (ra_mask & 0x0000000c)		/* 11M or 5.5M enable */
+			rate_bitmap = 0x0000000d;
+		else
+			rate_bitmap = 0x0000000f;
+		break;
 
+	case (ODM_WM_G):
+	case (ODM_WM_A):
+		if (rssi_level == DM_RATR_STA_HIGH)
+			rate_bitmap = 0x00000f00;
+		else
+			rate_bitmap = 0x00000ff0;
+		break;
 
-void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm);
+	case (ODM_WM_B|ODM_WM_G):
+		if (rssi_level == DM_RATR_STA_HIGH)
+			rate_bitmap = 0x00000f00;
+		else if (rssi_level == DM_RATR_STA_MIDDLE)
+			rate_bitmap = 0x00000ff0;
+		else
+			rate_bitmap = 0x00000ff5;
+		break;
 
-/* Remove Edca by Yu Chen */
+	case (ODM_WM_B|ODM_WM_G|ODM_WM_N24G):
+	case (ODM_WM_B|ODM_WM_N24G):
+	case (ODM_WM_G|ODM_WM_N24G):
+	case (ODM_WM_A|ODM_WM_N5G):
+		if (pDM_Odm->RFType == ODM_1T2R || pDM_Odm->RFType == ODM_1T1R) {
+			if (rssi_level == DM_RATR_STA_HIGH)
+				rate_bitmap = 0x000f0000;
+			else if (rssi_level == DM_RATR_STA_MIDDLE)
+				rate_bitmap = 0x000ff000;
+			else {
+				if (*(pDM_Odm->pBandWidth) == ODM_BW40M)
+					rate_bitmap = 0x000ff015;
+				else
+					rate_bitmap = 0x000ff005;
+			}
+		} else {
+			if (rssi_level == DM_RATR_STA_HIGH)
+				rate_bitmap = 0x0f8f0000;
+			else if (rssi_level == DM_RATR_STA_MIDDLE)
+				rate_bitmap = 0x0f8ff000;
+			else {
+				if (*(pDM_Odm->pBandWidth) == ODM_BW40M)
+					rate_bitmap = 0x0f8ff015;
+				else
+					rate_bitmap = 0x0f8ff005;
+			}
+		}
+		break;
 
+	case (ODM_WM_AC|ODM_WM_G):
+		if (rssi_level == 1)
+			rate_bitmap = 0xfc3f0000;
+		else if (rssi_level == 2)
+			rate_bitmap = 0xfffff000;
+		else
+			rate_bitmap = 0xffffffff;
+		break;
 
-#define RxDefaultAnt1		0x65a9
-#define RxDefaultAnt2		0x569a
+	case (ODM_WM_AC|ODM_WM_A):
 
-void odm_InitHybridAntDiv(struct dm_odm_t *pDM_Odm);
+		if (pDM_Odm->RFType == RF_1T1R) {
+			if (rssi_level == 1)				/*  add by Gary for ac-series */
+				rate_bitmap = 0x003f8000;
+			else if (rssi_level == 2)
+				rate_bitmap = 0x003ff000;
+			else
+				rate_bitmap = 0x003ff010;
+		} else {
+			if (rssi_level == 1)				/*  add by Gary for ac-series */
+				rate_bitmap = 0xfe3f8000;       /*  VHT 2SS MCS3~9 */
+			else if (rssi_level == 2)
+				rate_bitmap = 0xfffff000;       /*  VHT 2SS MCS0~9 */
+			else
+				rate_bitmap = 0xfffff010;       /*  All */
+		}
+		break;
 
-bool odm_StaDefAntSel(
-	struct dm_odm_t *pDM_Odm,
-	u32 OFDM_Ant1_Cnt,
-	u32 OFDM_Ant2_Cnt,
-	u32 CCK_Ant1_Cnt,
-	u32 CCK_Ant2_Cnt,
-	u8 *pDefAnt
-);
+	default:
+		if (pDM_Odm->RFType == RF_1T2R)
+			rate_bitmap = 0x000fffff;
+		else
+			rate_bitmap = 0x0fffffff;
+		break;
+	}
 
-void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm, u8 Ant, bool bDualPath);
+	/* printk("%s ==> rssi_level:0x%02x, WirelessMode:0x%02x, rate_bitmap:0x%08x\n", __func__, rssi_level, WirelessMode, rate_bitmap); */
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, (" ==> rssi_level:0x%02x, WirelessMode:0x%02x, rate_bitmap:0x%08x\n", rssi_level, WirelessMode, rate_bitmap));
 
+	return ra_mask & rate_bitmap;
 
+}
 
-void odm_HwAntDiv(struct dm_odm_t *pDM_Odm);
+static void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm)
+{
+	u8 i;
+	struct adapter *padapter =  pDM_Odm->Adapter;
 
+	if (padapter->bDriverStopped) {
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("<---- odm_RefreshRateAdaptiveMask(): driver is going to unload\n"));
+		return;
+	}
 
-/*  */
-/* 3 Export Interface */
-/*  */
+	if (!pDM_Odm->bUseRAMask) {
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("<---- odm_RefreshRateAdaptiveMask(): driver does not control rate adaptive mask\n"));
+		return;
+	}
 
-/*  */
-/*  2011/09/21 MH Add to describe different team necessary resource allocate?? */
-/*  */
-void ODM_DMInit(struct dm_odm_t *pDM_Odm)
-{
+	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
+		PSTA_INFO_T pstat = pDM_Odm->pODM_StaInfo[i];
 
-	odm_CommonInfoSelfInit(pDM_Odm);
-	odm_CmnInfoInit_Debug(pDM_Odm);
-	odm_DIGInit(pDM_Odm);
-	odm_NHMCounterStatisticsInit(pDM_Odm);
-	odm_AdaptivityInit(pDM_Odm);
-	odm_RateAdaptiveMaskInit(pDM_Odm);
-	ODM_CfoTrackingInit(pDM_Odm);
-	ODM_EdcaTurboInit(pDM_Odm);
-	odm_RSSIMonitorInit(pDM_Odm);
-	odm_TXPowerTrackingInit(pDM_Odm);
+		if (IS_STA_VALID(pstat)) {
+			if (IS_MCAST(pstat->hwaddr))  /* if (psta->mac_id == 1) */
+				continue;
 
-	ODM_ClearTxPowerTrackingState(pDM_Odm);
+			if (true == ODM_RAStateCheck(pDM_Odm, pstat->rssi_stat.UndecoratedSmoothedPWDB, false, &pstat->rssi_level)) {
+				ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("RSSI:%d, RSSI_LEVEL:%d\n", pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level));
+				/* printk("RSSI:%d, RSSI_LEVEL:%d\n", pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level); */
+				rtw_hal_update_ra_mask(pstat, pstat->rssi_level);
+			}
 
-	if (*(pDM_Odm->mp_mode) != 1)
-		odm_PathDiversityInit(pDM_Odm);
+		}
+	}
+}
 
-	odm_DynamicBBPowerSavingInit(pDM_Odm);
-	odm_DynamicTxPowerInit(pDM_Odm);
+/*-----------------------------------------------------------------------------
+* Function:	odm_RefreshRateAdaptiveMask()
+*
+* Overview:	Update rate table mask according to rssi
+*
+* Input:		NONE
+*
+* Output:		NONE
+*
+* Return:		NONE
+*
+* Revised History:
+*When		Who		Remark
+*05/27/2009	hpfan	Create Version 0.
+*
+* --------------------------------------------------------------------------
+*/
+static void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm)
+{
 
-	odm_SwAntDetectInit(pDM_Odm);
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask()---------->\n"));
+	if (!(pDM_Odm->SupportAbility & ODM_BB_RA_MASK)) {
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask(): Return cos not supported\n"));
+		return;
+	}
+	odm_RefreshRateAdaptiveMaskCE(pDM_Odm);
 }
 
-/*  */
-/*  2011/09/20 MH This is the entry pointer for all team to execute HW out source DM. */
-/*  You can not add any dummy function here, be care, you can only use DM structure */
-/*  to perform any new ODM_DM. */
-/*  */
-void ODM_DMWatchdog(struct dm_odm_t *pDM_Odm)
+/*  Return Value: bool */
+/*  - true: RATRState is changed. */
+bool ODM_RAStateCheck(
+	struct dm_odm_t *pDM_Odm,
+	s32 RSSI,
+	bool bForceUpdate,
+	u8 *pRATRState
+)
 {
-	odm_CommonInfoSelfUpdate(pDM_Odm);
-	odm_BasicDbgMessage(pDM_Odm);
-	odm_FalseAlarmCounterStatistics(pDM_Odm);
-	odm_NHMCounterStatistics(pDM_Odm);
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): RSSI = 0x%x\n", pDM_Odm->RSSI_Min));
+	struct odm_rate_adaptive *pRA = &pDM_Odm->RateAdaptive;
+	const u8 GoUpGap = 5;
+	u8 HighRSSIThreshForRA = pRA->HighRSSIThresh;
+	u8 LowRSSIThreshForRA = pRA->LowRSSIThresh;
+	u8 RATRState;
 
-	odm_RSSIMonitorCheck(pDM_Odm);
+	/*  Threshold Adjustment: */
+	/*  when RSSI state trends to go up one or two levels, make sure RSSI is high enough. */
+	/*  Here GoUpGap is added to solve the boundary's level alternation issue. */
+	switch (*pRATRState) {
+	case DM_RATR_STA_INIT:
+	case DM_RATR_STA_HIGH:
+		break;
 
-	/* For CE Platform(SPRD or Tablet) */
-	/* 8723A or 8189ES platform */
-	/* NeilChen--2012--08--24-- */
-	/* Fix Leave LPS issue */
-	if ((adapter_to_pwrctl(pDM_Odm->Adapter)->pwr_mode != PS_MODE_ACTIVE) /*  in LPS mode */
-		/*  */
-		/* (pDM_Odm->SupportICType & (ODM_RTL8723A))|| */
-		/* (pDM_Odm->SupportICType & (ODM_RTL8188E) &&(&&(((pDM_Odm->SupportInterface  == ODM_ITRF_SDIO))) */
-		/*  */
-	) {
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("----Step1: odm_DIG is in LPS mode\n"));
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("---Step2: 8723AS is in LPS mode\n"));
-			odm_DIGbyRSSI_LPS(pDM_Odm);
-	} else
-		odm_DIG(pDM_Odm);
+	case DM_RATR_STA_MIDDLE:
+		HighRSSIThreshForRA += GoUpGap;
+		break;
 
-	{
-		struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	case DM_RATR_STA_LOW:
+		HighRSSIThreshForRA += GoUpGap;
+		LowRSSIThreshForRA += GoUpGap;
+		break;
 
-		odm_Adaptivity(pDM_Odm, pDM_DigTable->CurIGValue);
+	default:
+		ODM_RT_ASSERT(pDM_Odm, false, ("wrong rssi level setting %d !", *pRATRState));
+		break;
 	}
-	odm_CCKPacketDetectionThresh(pDM_Odm);
 
-	if (*(pDM_Odm->pbPowerSaving) == true)
-		return;
+	/*  Decide RATRState by RSSI. */
+	if (RSSI > HighRSSIThreshForRA)
+		RATRState = DM_RATR_STA_HIGH;
+	else if (RSSI > LowRSSIThreshForRA)
+		RATRState = DM_RATR_STA_MIDDLE;
+	else
+		RATRState = DM_RATR_STA_LOW;
+	/* printk("==>%s, RATRState:0x%02x , RSSI:%d\n", __func__, RATRState, RSSI); */
 
+	if (*pRATRState != RATRState || bForceUpdate) {
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("RSSI Level %d -> %d\n", *pRATRState, RATRState));
+		*pRATRState = RATRState;
+		return true;
+	}
 
-	odm_RefreshRateAdaptiveMask(pDM_Odm);
-	odm_EdcaTurboCheck(pDM_Odm);
-	odm_PathDiversity(pDM_Odm);
-	ODM_CfoTracking(pDM_Odm);
+	return false;
+}
 
-	ODM_TXPowerTrackingCheck(pDM_Odm);
+/*  */
 
-	/* odm_EdcaTurboCheck(pDM_Odm); */
+/* 3 ============================================================ */
+/* 3 RSSI Monitor */
+/* 3 ============================================================ */
 
-	/* 2010.05.30 LukeLee: For CE platform, files in IC subfolders may not be included to be compiled, */
-	/*  so compile flags must be left here to prevent from compile errors */
-	pDM_Odm->PhyDbgInfo.NumQryBeaconPkt = 0;
-}
+static void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm)
+{
+	struct ra_t *pRA_Table = &pDM_Odm->DM_RA_Table;
 
+	pRA_Table->firstconnect = false;
 
-/*  */
-/*  Init /.. Fixed HW value. Only init time. */
-/*  */
-void ODM_CmnInfoInit(struct dm_odm_t *pDM_Odm, enum odm_cmninfo_e CmnInfo, u32 Value)
+}
+
+static void FindMinimumRSSI(struct adapter *padapter)
 {
-	/*  */
-	/*  This section is used for init value */
-	/*  */
-	switch (CmnInfo) {
-	/*  */
-	/*  Fixed ODM value. */
-	/*  */
-	case ODM_CMNINFO_ABILITY:
-		pDM_Odm->SupportAbility = (u32)Value;
-		break;
+	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
+	struct dm_priv *pdmpriv = &pHalData->dmpriv;
+	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
-	case ODM_CMNINFO_RF_TYPE:
-		pDM_Odm->RFType = (u8)Value;
-		break;
+	/* 1 1.Determine the minimum RSSI */
 
-	case ODM_CMNINFO_PLATFORM:
-		pDM_Odm->SupportPlatform = (u8)Value;
-		break;
+	if (
+		(pDM_Odm->bLinked != true) &&
+		(pdmpriv->EntryMinUndecoratedSmoothedPWDB == 0)
+	) {
+		pdmpriv->MinUndecoratedPWDBForDM = 0;
+		/* ODM_RT_TRACE(pDM_Odm, COMP_BB_POWERSAVING, DBG_LOUD, ("Not connected to any\n")); */
+	} else
+		pdmpriv->MinUndecoratedPWDBForDM = pdmpriv->EntryMinUndecoratedSmoothedPWDB;
 
-	case ODM_CMNINFO_INTERFACE:
-		pDM_Odm->SupportInterface = (u8)Value;
-		break;
+	/* DBG_8192C("%s =>MinUndecoratedPWDBForDM(%d)\n", __func__, pdmpriv->MinUndecoratedPWDBForDM); */
+	/* ODM_RT_TRACE(pDM_Odm, COMP_DIG, DBG_LOUD, ("MinUndecoratedPWDBForDM =%d\n", pHalData->MinUndecoratedPWDBForDM)); */
+}
 
-	case ODM_CMNINFO_MP_TEST_CHIP:
-		pDM_Odm->bIsMPChip = (u8)Value;
-		break;
+static void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm)
+{
+	struct adapter *Adapter = pDM_Odm->Adapter;
+	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
+	struct dm_priv *pdmpriv = &pHalData->dmpriv;
+	int i;
+	int tmpEntryMaxPWDB = 0, tmpEntryMinPWDB = 0xff;
+	u8 sta_cnt = 0;
+	u32 PWDB_rssi[NUM_STA] = {0};/* 0~15]:MACID, [16~31]:PWDB_rssi */
+	struct ra_t *pRA_Table = &pDM_Odm->DM_RA_Table;
 
-	case ODM_CMNINFO_IC_TYPE:
-		pDM_Odm->SupportICType = Value;
-		break;
+	if (pDM_Odm->bLinked != true)
+		return;
 
-	case ODM_CMNINFO_CUT_VER:
-		pDM_Odm->CutVersion = (u8)Value;
-		break;
+	pRA_Table->firstconnect = pDM_Odm->bLinked;
 
-	case ODM_CMNINFO_FAB_VER:
-		pDM_Odm->FabVersion = (u8)Value;
-		break;
+	/* if (check_fwstate(&Adapter->mlmepriv, WIFI_AP_STATE|WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE) == true) */
+	{
+		struct sta_info *psta;
 
-	case ODM_CMNINFO_RFE_TYPE:
-		pDM_Odm->RFEType = (u8)Value;
-		break;
+		for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
+			psta = pDM_Odm->pODM_StaInfo[i];
+			if (IS_STA_VALID(psta)) {
+				if (IS_MCAST(psta->hwaddr))  /* if (psta->mac_id == 1) */
+					continue;
 
-	case    ODM_CMNINFO_RF_ANTENNA_TYPE:
-		pDM_Odm->AntDivType = (u8)Value;
-		break;
+				if (psta->rssi_stat.UndecoratedSmoothedPWDB == (-1))
+					continue;
 
-	case ODM_CMNINFO_BOARD_TYPE:
-		pDM_Odm->BoardType = (u8)Value;
-		break;
+				if (psta->rssi_stat.UndecoratedSmoothedPWDB < tmpEntryMinPWDB)
+					tmpEntryMinPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;
 
-	case ODM_CMNINFO_PACKAGE_TYPE:
-		pDM_Odm->PackageType = (u8)Value;
-		break;
+				if (psta->rssi_stat.UndecoratedSmoothedPWDB > tmpEntryMaxPWDB)
+					tmpEntryMaxPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;
 
-	case ODM_CMNINFO_EXT_LNA:
-		pDM_Odm->ExtLNA = (u8)Value;
-		break;
+				if (psta->rssi_stat.UndecoratedSmoothedPWDB != (-1))
+					PWDB_rssi[sta_cnt++] = (psta->mac_id | (psta->rssi_stat.UndecoratedSmoothedPWDB<<16));
+			}
+		}
 
-	case ODM_CMNINFO_5G_EXT_LNA:
-		pDM_Odm->ExtLNA5G = (u8)Value;
-		break;
+		/* printk("%s ==> sta_cnt(%d)\n", __func__, sta_cnt); */
 
-	case ODM_CMNINFO_EXT_PA:
-		pDM_Odm->ExtPA = (u8)Value;
-		break;
+		for (i = 0; i < sta_cnt; i++) {
+			if (PWDB_rssi[i] != (0)) {
+				if (pHalData->fw_ractrl == true)/*  Report every sta's RSSI to FW */
+					rtl8723b_set_rssi_cmd(Adapter, (u8 *)(&PWDB_rssi[i]));
+			}
+		}
+	}
 
-	case ODM_CMNINFO_5G_EXT_PA:
-		pDM_Odm->ExtPA5G = (u8)Value;
-		break;
 
-	case ODM_CMNINFO_GPA:
-		pDM_Odm->TypeGPA = (enum odm_type_gpa_e)Value;
-		break;
-	case ODM_CMNINFO_APA:
-		pDM_Odm->TypeAPA = (enum odm_type_apa_e)Value;
-		break;
-	case ODM_CMNINFO_GLNA:
-		pDM_Odm->TypeGLNA = (enum odm_type_glna_e)Value;
-		break;
-	case ODM_CMNINFO_ALNA:
-		pDM_Odm->TypeALNA = (enum odm_type_alna_e)Value;
-		break;
 
-	case ODM_CMNINFO_EXT_TRSW:
-		pDM_Odm->ExtTRSW = (u8)Value;
-		break;
-	case ODM_CMNINFO_PATCH_ID:
-		pDM_Odm->PatchID = (u8)Value;
-		break;
-	case ODM_CMNINFO_BINHCT_TEST:
-		pDM_Odm->bInHctTest = (bool)Value;
-		break;
-	case ODM_CMNINFO_BWIFI_TEST:
-		pDM_Odm->bWIFITest = (bool)Value;
-		break;
+	if (tmpEntryMaxPWDB != 0)	/*  If associated entry is found */
+		pdmpriv->EntryMaxUndecoratedSmoothedPWDB = tmpEntryMaxPWDB;
+	else
+		pdmpriv->EntryMaxUndecoratedSmoothedPWDB = 0;
 
-	case ODM_CMNINFO_SMART_CONCURRENT:
-		pDM_Odm->bDualMacSmartConcurrent = (bool)Value;
-		break;
+	if (tmpEntryMinPWDB != 0xff) /*  If associated entry is found */
+		pdmpriv->EntryMinUndecoratedSmoothedPWDB = tmpEntryMinPWDB;
+	else
+		pdmpriv->EntryMinUndecoratedSmoothedPWDB = 0;
 
-	/* To remove the compiler warning, must add an empty default statement to handle the other values. */
-	default:
-		/* do nothing */
-		break;
-	}
+	FindMinimumRSSI(Adapter);/* get pdmpriv->MinUndecoratedPWDBForDM */
 
+	pDM_Odm->RSSI_Min = pdmpriv->MinUndecoratedPWDBForDM;
+	/* ODM_CmnInfoUpdate(&pHalData->odmpriv , ODM_CMNINFO_RSSI_MIN, pdmpriv->MinUndecoratedPWDBForDM); */
 }
 
-
-void ODM_CmnInfoHook(struct dm_odm_t *pDM_Odm, enum odm_cmninfo_e CmnInfo, void *pValue)
+static void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm)
 {
-	/*  */
-	/*  Hook call by reference pointer. */
-	/*  */
-	switch (CmnInfo) {
-	/*  */
-	/*  Dynamic call by reference pointer. */
-	/*  */
-	case ODM_CMNINFO_MAC_PHY_MODE:
-		pDM_Odm->pMacPhyMode = pValue;
-		break;
-
-	case ODM_CMNINFO_TX_UNI:
-		pDM_Odm->pNumTxBytesUnicast = pValue;
-		break;
-
-	case ODM_CMNINFO_RX_UNI:
-		pDM_Odm->pNumRxBytesUnicast = pValue;
-		break;
-
-	case ODM_CMNINFO_WM_MODE:
-		pDM_Odm->pwirelessmode = pValue;
-		break;
+	if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
+		return;
 
-	case ODM_CMNINFO_BAND:
-		pDM_Odm->pBandType = pValue;
-		break;
+	odm_RSSIMonitorCheckCE(pDM_Odm);
 
-	case ODM_CMNINFO_SEC_CHNL_OFFSET:
-		pDM_Odm->pSecChOffset = pValue;
-		break;
+}	/*  odm_RSSIMonitorCheck */
 
-	case ODM_CMNINFO_SEC_MODE:
-		pDM_Odm->pSecurity = pValue;
-		break;
+/* 3 ============================================================ */
+/* 3 SW Antenna Diversity */
+/* 3 ============================================================ */
+static void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm)
+{
+	struct swat_t *pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
 
-	case ODM_CMNINFO_BW:
-		pDM_Odm->pBandWidth = pValue;
-		break;
+	pDM_SWAT_Table->SWAS_NoLink_BK_Reg92c = rtw_read32(pDM_Odm->Adapter, rDPDT_control);
+	pDM_SWAT_Table->PreAntenna = MAIN_ANT;
+	pDM_SWAT_Table->CurAntenna = MAIN_ANT;
+	pDM_SWAT_Table->SWAS_NoLink_State = 0;
+}
 
-	case ODM_CMNINFO_CHNL:
-		pDM_Odm->pChannel = pValue;
-		break;
+/* 3 ============================================================ */
+/* 3 Tx Power Tracking */
+/* 3 ============================================================ */
 
-	case ODM_CMNINFO_DMSP_GET_VALUE:
-		pDM_Odm->pbGetValueFromOtherMac = pValue;
-		break;
+static u8 getSwingIndex(struct dm_odm_t *pDM_Odm)
+{
+	struct adapter *Adapter = pDM_Odm->Adapter;
+	u8 i = 0;
+	u32 bbSwing;
+	u32 swingTableSize;
+	u32 *pSwingTable;
 
-	case ODM_CMNINFO_BUDDY_ADAPTOR:
-		pDM_Odm->pBuddyAdapter = pValue;
-		break;
+	bbSwing = PHY_QueryBBReg(Adapter, rOFDM0_XATxIQImbalance, 0xFFC00000);
 
-	case ODM_CMNINFO_DMSP_IS_MASTER:
-		pDM_Odm->pbMasterOfDMSP = pValue;
-		break;
+	pSwingTable = OFDMSwingTable_New;
+	swingTableSize = OFDM_TABLE_SIZE;
 
-	case ODM_CMNINFO_SCAN:
-		pDM_Odm->pbScanInProcess = pValue;
-		break;
+	for (i = 0; i < swingTableSize; ++i) {
+		u32 tableValue = pSwingTable[i];
 
-	case ODM_CMNINFO_POWER_SAVING:
-		pDM_Odm->pbPowerSaving = pValue;
-		break;
+		if (tableValue >= 0x100000)
+			tableValue >>= 22;
+		if (bbSwing == tableValue)
+			break;
+	}
+	return i;
+}
 
-	case ODM_CMNINFO_ONE_PATH_CCA:
-		pDM_Odm->pOnePathCCA = pValue;
-		break;
+void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm)
+{
+	u8 defaultSwingIndex = getSwingIndex(pDM_Odm);
+	u8 p = 0;
+	struct adapter *Adapter = pDM_Odm->Adapter;
+	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 
-	case ODM_CMNINFO_DRV_STOP:
-		pDM_Odm->pbDriverStopped =  pValue;
-		break;
 
-	case ODM_CMNINFO_PNP_IN:
-		pDM_Odm->pbDriverIsGoingToPnpSetPowerSleep =  pValue;
-		break;
+	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 
-	case ODM_CMNINFO_INIT_ON:
-		pDM_Odm->pinit_adpt_in_progress =  pValue;
-		break;
+	pdmpriv->bTXPowerTracking = true;
+	pdmpriv->TXPowercount = 0;
+	pdmpriv->bTXPowerTrackingInit = false;
 
-	case ODM_CMNINFO_ANT_TEST:
-		pDM_Odm->pAntennaTest =  pValue;
-		break;
+	if (*(pDM_Odm->mp_mode) != 1)
+		pdmpriv->TxPowerTrackControl = true;
+	else
+		pdmpriv->TxPowerTrackControl = false;
 
-	case ODM_CMNINFO_NET_CLOSED:
-		pDM_Odm->pbNet_closed = pValue;
-		break;
 
-	case ODM_CMNINFO_FORCED_RATE:
-		pDM_Odm->pForcedDataRate = pValue;
-		break;
+	/* MSG_8192C("pdmpriv->TxPowerTrackControl = %d\n", pdmpriv->TxPowerTrackControl); */
 
-	case ODM_CMNINFO_FORCED_IGI_LB:
-		pDM_Odm->pu1ForcedIgiLb = pValue;
-		break;
+	/* pDM_Odm->RFCalibrateInfo.TxPowerTrackControl = true; */
+	pDM_Odm->RFCalibrateInfo.ThermalValue = pHalData->EEPROMThermalMeter;
+	pDM_Odm->RFCalibrateInfo.ThermalValue_IQK = pHalData->EEPROMThermalMeter;
+	pDM_Odm->RFCalibrateInfo.ThermalValue_LCK = pHalData->EEPROMThermalMeter;
 
-	case ODM_CMNINFO_MP_MODE:
-		pDM_Odm->mp_mode = pValue;
-		break;
+	/*  The index of "0 dB" in SwingTable. */
+	pDM_Odm->DefaultOfdmIndex = (defaultSwingIndex >= OFDM_TABLE_SIZE) ? 30 : defaultSwingIndex;
+	pDM_Odm->DefaultCckIndex = 20;
 
-	/* case ODM_CMNINFO_RTSTA_AID: */
-	/* pDM_Odm->pAidMap =  (u8 *)pValue; */
-	/* break; */
+	pDM_Odm->BbSwingIdxCckBase = pDM_Odm->DefaultCckIndex;
+	pDM_Odm->RFCalibrateInfo.CCK_index = pDM_Odm->DefaultCckIndex;
 
-	/* case ODM_CMNINFO_BT_COEXIST: */
-	/* pDM_Odm->BTCoexist = (bool *)pValue; */
+	for (p = ODM_RF_PATH_A; p < MAX_RF_PATH; ++p) {
+		pDM_Odm->BbSwingIdxOfdmBase[p] = pDM_Odm->DefaultOfdmIndex;
+		pDM_Odm->RFCalibrateInfo.OFDM_index[p] = pDM_Odm->DefaultOfdmIndex;
+		pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[p] = 0;
+		pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[p] = 0;
+		pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p] = 0;
+	}
 
-	/* case ODM_CMNINFO_STA_STATUS: */
-	/* pDM_Odm->pODM_StaInfo[] = (PSTA_INFO_T)pValue; */
-	/* break; */
+}
 
-	/* case ODM_CMNINFO_PHY_STATUS: */
-	/* pDM_Odm->pPhyInfo = (ODM_PHY_INFO *)pValue; */
-	/* break; */
+void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm)
+{
+	struct adapter *Adapter = pDM_Odm->Adapter;
 
-	/* case ODM_CMNINFO_MAC_STATUS: */
-	/* pDM_Odm->pMacInfo = (struct odm_mac_status_info *)pValue; */
-	/* break; */
-	/* To remove the compiler warning, must add an empty default statement to handle the other values. */
-	default:
-		/* do nothing */
-		break;
-	}
+	if (!(pDM_Odm->SupportAbility & ODM_RF_TX_PWR_TRACK))
+		return;
 
-}
+	if (!pDM_Odm->RFCalibrateInfo.TM_Trigger) { /* at least delay 1 sec */
+		PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_T_METER_NEW, (BIT17 | BIT16), 0x03);
 
+		/* DBG_871X("Trigger Thermal Meter!!\n"); */
 
-void ODM_CmnInfoPtrArrayHook(
-	struct dm_odm_t *pDM_Odm,
-	enum odm_cmninfo_e CmnInfo,
-	u16 Index,
-	void *pValue
-)
-{
-	/*  */
-	/*  Hook call by reference pointer. */
-	/*  */
-	switch (CmnInfo) {
-	/*  */
-	/*  Dynamic call by reference pointer. */
-	/*  */
-	case ODM_CMNINFO_STA_STATUS:
-		pDM_Odm->pODM_StaInfo[Index] = (PSTA_INFO_T)pValue;
-		break;
-	/* To remove the compiler warning, must add an empty default statement to handle the other values. */
-	default:
-		/* do nothing */
-		break;
+		pDM_Odm->RFCalibrateInfo.TM_Trigger = 1;
+		return;
+	} else {
+		/* DBG_871X("Schedule TxPowerTracking direct call!!\n"); */
+		ODM_TXPowerTrackingCallback_ThermalMeter(Adapter);
+		pDM_Odm->RFCalibrateInfo.TM_Trigger = 0;
 	}
-
 }
 
+/*  */
+/* 3 Export Interface */
+/*  */
 
 /*  */
-/*  Update Band/CHannel/.. The values are dynamic but non-per-packet. */
+/*  2011/09/21 MH Add to describe different team necessary resource allocate?? */
 /*  */
-void ODM_CmnInfoUpdate(struct dm_odm_t *pDM_Odm, u32 CmnInfo, u64 Value)
+void ODM_DMInit(struct dm_odm_t *pDM_Odm)
 {
-	/*  */
-	/*  This init variable may be changed in run time. */
-	/*  */
-	switch (CmnInfo) {
-	case ODM_CMNINFO_LINK_IN_PROGRESS:
-		pDM_Odm->bLinkInProcess = (bool)Value;
-		break;
-
-	case ODM_CMNINFO_ABILITY:
-		pDM_Odm->SupportAbility = (u32)Value;
-		break;
-
-	case ODM_CMNINFO_RF_TYPE:
-		pDM_Odm->RFType = (u8)Value;
-		break;
-
-	case ODM_CMNINFO_WIFI_DIRECT:
-		pDM_Odm->bWIFI_Direct = (bool)Value;
-		break;
 
-	case ODM_CMNINFO_WIFI_DISPLAY:
-		pDM_Odm->bWIFI_Display = (bool)Value;
-		break;
+	odm_CommonInfoSelfInit(pDM_Odm);
+	odm_CmnInfoInit_Debug(pDM_Odm);
+	odm_DIGInit(pDM_Odm);
+	odm_NHMCounterStatisticsInit(pDM_Odm);
+	odm_AdaptivityInit(pDM_Odm);
+	odm_RateAdaptiveMaskInit(pDM_Odm);
+	ODM_CfoTrackingInit(pDM_Odm);
+	ODM_EdcaTurboInit(pDM_Odm);
+	odm_RSSIMonitorInit(pDM_Odm);
+	odm_TXPowerTrackingInit(pDM_Odm);
 
-	case ODM_CMNINFO_LINK:
-		pDM_Odm->bLinked = (bool)Value;
-		break;
+	ODM_ClearTxPowerTrackingState(pDM_Odm);
 
-	case ODM_CMNINFO_STATION_STATE:
-		pDM_Odm->bsta_state = (bool)Value;
-		break;
+	if (*(pDM_Odm->mp_mode) != 1)
+		odm_PathDiversityInit(pDM_Odm);
 
-	case ODM_CMNINFO_RSSI_MIN:
-		pDM_Odm->RSSI_Min = (u8)Value;
-		break;
+	odm_DynamicBBPowerSavingInit(pDM_Odm);
+	odm_DynamicTxPowerInit(pDM_Odm);
 
-	case ODM_CMNINFO_DBG_COMP:
-		pDM_Odm->DebugComponents = Value;
-		break;
+	odm_SwAntDetectInit(pDM_Odm);
+}
 
-	case ODM_CMNINFO_DBG_LEVEL:
-		pDM_Odm->DebugLevel = (u32)Value;
-		break;
-	case ODM_CMNINFO_RA_THRESHOLD_HIGH:
-		pDM_Odm->RateAdaptive.HighRSSIThresh = (u8)Value;
-		break;
-
-	case ODM_CMNINFO_RA_THRESHOLD_LOW:
-		pDM_Odm->RateAdaptive.LowRSSIThresh = (u8)Value;
-		break;
-	/*  The following is for BT HS mode and BT coexist mechanism. */
-	case ODM_CMNINFO_BT_ENABLED:
-		pDM_Odm->bBtEnabled = (bool)Value;
-		break;
-
-	case ODM_CMNINFO_BT_HS_CONNECT_PROCESS:
-		pDM_Odm->bBtConnectProcess = (bool)Value;
-		break;
-
-	case ODM_CMNINFO_BT_HS_RSSI:
-		pDM_Odm->btHsRssi = (u8)Value;
-		break;
-
-	case ODM_CMNINFO_BT_OPERATION:
-		pDM_Odm->bBtHsOperation = (bool)Value;
-		break;
-
-	case ODM_CMNINFO_BT_LIMITED_DIG:
-		pDM_Odm->bBtLimitedDig = (bool)Value;
-		break;
-
-	case ODM_CMNINFO_BT_DISABLE_EDCA:
-		pDM_Odm->bBtDisableEdcaTurbo = (bool)Value;
-		break;
-
-/*
-	case	ODM_CMNINFO_OP_MODE:
-		pDM_Odm->OPMode = (u8)Value;
-		break;
-
-	case	ODM_CMNINFO_WM_MODE:
-		pDM_Odm->WirelessMode = (u8)Value;
-		break;
-
-	case	ODM_CMNINFO_BAND:
-		pDM_Odm->BandType = (u8)Value;
-		break;
-
-	case	ODM_CMNINFO_SEC_CHNL_OFFSET:
-		pDM_Odm->SecChOffset = (u8)Value;
-		break;
-
-	case	ODM_CMNINFO_SEC_MODE:
-		pDM_Odm->Security = (u8)Value;
-		break;
-
-	case	ODM_CMNINFO_BW:
-		pDM_Odm->BandWidth = (u8)Value;
-		break;
-
-	case	ODM_CMNINFO_CHNL:
-		pDM_Odm->Channel = (u8)Value;
-		break;
-*/
-	default:
-		/* do nothing */
-		break;
-	}
-
-
-}
-
-void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm)
+/*  */
+/*  2011/09/20 MH This is the entry pointer for all team to execute HW out source DM. */
+/*  You can not add any dummy function here, be care, you can only use DM structure */
+/*  to perform any new ODM_DM. */
+/*  */
+void ODM_DMWatchdog(struct dm_odm_t *pDM_Odm)
 {
-	pDM_Odm->bCckHighPower = (bool) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(CCK_RPT_FORMAT, pDM_Odm), ODM_BIT(CCK_RPT_FORMAT, pDM_Odm));
-	pDM_Odm->RFPathRxEnable = (u8) PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG(BB_RX_PATH, pDM_Odm), ODM_BIT(BB_RX_PATH, pDM_Odm));
-
-	ODM_InitDebugSetting(pDM_Odm);
-
-	pDM_Odm->TxRate = 0xFF;
-}
+	odm_CommonInfoSelfUpdate(pDM_Odm);
+	odm_BasicDbgMessage(pDM_Odm);
+	odm_FalseAlarmCounterStatistics(pDM_Odm);
+	odm_NHMCounterStatistics(pDM_Odm);
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): RSSI = 0x%x\n", pDM_Odm->RSSI_Min));
 
-void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm)
-{
-	u8 EntryCnt = 0;
-	u8 i;
-	PSTA_INFO_T	pEntry;
+	odm_RSSIMonitorCheck(pDM_Odm);
 
-	if (*(pDM_Odm->pBandWidth) == ODM_BW40M) {
-		if (*(pDM_Odm->pSecChOffset) == 1)
-			pDM_Odm->ControlChannel = *(pDM_Odm->pChannel)-2;
-		else if (*(pDM_Odm->pSecChOffset) == 2)
-			pDM_Odm->ControlChannel = *(pDM_Odm->pChannel)+2;
+	/* For CE Platform(SPRD or Tablet) */
+	/* 8723A or 8189ES platform */
+	/* NeilChen--2012--08--24-- */
+	/* Fix Leave LPS issue */
+	if ((adapter_to_pwrctl(pDM_Odm->Adapter)->pwr_mode != PS_MODE_ACTIVE) /*  in LPS mode */
+		/*  */
+		/* (pDM_Odm->SupportICType & (ODM_RTL8723A))|| */
+		/* (pDM_Odm->SupportICType & (ODM_RTL8188E) &&(&&(((pDM_Odm->SupportInterface  == ODM_ITRF_SDIO))) */
+		/*  */
+	) {
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("----Step1: odm_DIG is in LPS mode\n"));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("---Step2: 8723AS is in LPS mode\n"));
+			odm_DIGbyRSSI_LPS(pDM_Odm);
 	} else
-		pDM_Odm->ControlChannel = *(pDM_Odm->pChannel);
-
-	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
-		pEntry = pDM_Odm->pODM_StaInfo[i];
-		if (IS_STA_VALID(pEntry))
-			EntryCnt++;
-	}
-
-	if (EntryCnt == 1)
-		pDM_Odm->bOneEntryOnly = true;
-	else
-		pDM_Odm->bOneEntryOnly = false;
-}
-
-void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm)
-{
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoInit_Debug ==>\n"));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportPlatform =%d\n", pDM_Odm->SupportPlatform));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportAbility = 0x%x\n", pDM_Odm->SupportAbility));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportInterface =%d\n", pDM_Odm->SupportInterface));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportICType = 0x%x\n", pDM_Odm->SupportICType));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("CutVersion =%d\n", pDM_Odm->CutVersion));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("FabVersion =%d\n", pDM_Odm->FabVersion));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("RFType =%d\n", pDM_Odm->RFType));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("BoardType =%d\n", pDM_Odm->BoardType));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtLNA =%d\n", pDM_Odm->ExtLNA));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtPA =%d\n", pDM_Odm->ExtPA));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtTRSW =%d\n", pDM_Odm->ExtTRSW));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("PatchID =%d\n", pDM_Odm->PatchID));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bInHctTest =%d\n", pDM_Odm->bInHctTest));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bWIFITest =%d\n", pDM_Odm->bWIFITest));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bDualMacSmartConcurrent =%d\n", pDM_Odm->bDualMacSmartConcurrent));
-
-}
-
-void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm)
-{
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_BasicDbgMsg ==>\n"));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bLinked = %d, RSSI_Min = %d,\n",
-		pDM_Odm->bLinked, pDM_Odm->RSSI_Min));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("RxRate = 0x%x, RSSI_A = %d, RSSI_B = %d\n",
-		pDM_Odm->RxRate, pDM_Odm->RSSI_A, pDM_Odm->RSSI_B));
-}
-
-/* 3 ============================================================ */
-/* 3 DIG */
-/* 3 ============================================================ */
-/*-----------------------------------------------------------------------------
- * Function:	odm_DIGInit()
- *
- * Overview:	Set DIG scheme init value.
- *
- * Input:		NONE
- *
- * Output:		NONE
- *
- * Return:		NONE
- *
- * Revised History:
- *When		Who		Remark
- *
- *---------------------------------------------------------------------------
- */
-
-/* Remove DIG by yuchen */
+		odm_DIG(pDM_Odm);
 
-/* Remove DIG and FA check by Yu Chen */
+	{
+		struct dig_t *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
+		odm_Adaptivity(pDM_Odm, pDM_DigTable->CurIGValue);
+	}
+	odm_CCKPacketDetectionThresh(pDM_Odm);
 
-/* 3 ============================================================ */
-/* 3 BB Power Save */
-/* 3 ============================================================ */
+	if (*(pDM_Odm->pbPowerSaving) == true)
+		return;
 
-/* Remove BB power saving by Yuchen */
 
-/* 3 ============================================================ */
-/* 3 RATR MASK */
-/* 3 ============================================================ */
-/* 3 ============================================================ */
-/* 3 Rate Adaptive */
-/* 3 ============================================================ */
+	odm_RefreshRateAdaptiveMask(pDM_Odm);
+	odm_EdcaTurboCheck(pDM_Odm);
+	odm_PathDiversity(pDM_Odm);
+	ODM_CfoTracking(pDM_Odm);
 
-void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm)
-{
-	struct odm_rate_adaptive *pOdmRA = &pDM_Odm->RateAdaptive;
+	ODM_TXPowerTrackingCheck(pDM_Odm);
 
-	pOdmRA->Type = DM_Type_ByDriver;
-	if (pOdmRA->Type == DM_Type_ByDriver)
-		pDM_Odm->bUseRAMask = true;
-	else
-		pDM_Odm->bUseRAMask = false;
+	/* odm_EdcaTurboCheck(pDM_Odm); */
 
-	pOdmRA->RATRState = DM_RATR_STA_INIT;
-	pOdmRA->LdpcThres = 35;
-	pOdmRA->bUseLdpc = false;
-	pOdmRA->HighRSSIThresh = 50;
-	pOdmRA->LowRSSIThresh = 20;
+	/* 2010.05.30 LukeLee: For CE platform, files in IC subfolders may not be included to be compiled, */
+	/*  so compile flags must be left here to prevent from compile errors */
+	pDM_Odm->PhyDbgInfo.NumQryBeaconPkt = 0;
 }
 
-u32 ODM_Get_Rate_Bitmap(
-	struct dm_odm_t *pDM_Odm,
-	u32 macid,
-	u32 ra_mask,
-	u8 rssi_level
-)
-{
-	PSTA_INFO_T	pEntry;
-	u32 rate_bitmap = 0;
-	u8 WirelessMode;
-
-	pEntry = pDM_Odm->pODM_StaInfo[macid];
-	if (!IS_STA_VALID(pEntry))
-		return ra_mask;
-
-	WirelessMode = pEntry->wireless_mode;
 
-	switch (WirelessMode) {
-	case ODM_WM_B:
-		if (ra_mask & 0x0000000c)		/* 11M or 5.5M enable */
-			rate_bitmap = 0x0000000d;
-		else
-			rate_bitmap = 0x0000000f;
+/*  */
+/*  Init /.. Fixed HW value. Only init time. */
+/*  */
+void ODM_CmnInfoInit(struct dm_odm_t *pDM_Odm, enum odm_cmninfo_e CmnInfo, u32 Value)
+{
+	/*  */
+	/*  This section is used for init value */
+	/*  */
+	switch (CmnInfo) {
+	/*  */
+	/*  Fixed ODM value. */
+	/*  */
+	case ODM_CMNINFO_ABILITY:
+		pDM_Odm->SupportAbility = (u32)Value;
 		break;
 
-	case (ODM_WM_G):
-	case (ODM_WM_A):
-		if (rssi_level == DM_RATR_STA_HIGH)
-			rate_bitmap = 0x00000f00;
-		else
-			rate_bitmap = 0x00000ff0;
+	case ODM_CMNINFO_RF_TYPE:
+		pDM_Odm->RFType = (u8)Value;
 		break;
 
-	case (ODM_WM_B|ODM_WM_G):
-		if (rssi_level == DM_RATR_STA_HIGH)
-			rate_bitmap = 0x00000f00;
-		else if (rssi_level == DM_RATR_STA_MIDDLE)
-			rate_bitmap = 0x00000ff0;
-		else
-			rate_bitmap = 0x00000ff5;
+	case ODM_CMNINFO_PLATFORM:
+		pDM_Odm->SupportPlatform = (u8)Value;
 		break;
 
-	case (ODM_WM_B|ODM_WM_G|ODM_WM_N24G):
-	case (ODM_WM_B|ODM_WM_N24G):
-	case (ODM_WM_G|ODM_WM_N24G):
-	case (ODM_WM_A|ODM_WM_N5G):
-		if (pDM_Odm->RFType == ODM_1T2R || pDM_Odm->RFType == ODM_1T1R) {
-			if (rssi_level == DM_RATR_STA_HIGH)
-				rate_bitmap = 0x000f0000;
-			else if (rssi_level == DM_RATR_STA_MIDDLE)
-				rate_bitmap = 0x000ff000;
-			else {
-				if (*(pDM_Odm->pBandWidth) == ODM_BW40M)
-					rate_bitmap = 0x000ff015;
-				else
-					rate_bitmap = 0x000ff005;
-			}
-		} else {
-			if (rssi_level == DM_RATR_STA_HIGH)
-				rate_bitmap = 0x0f8f0000;
-			else if (rssi_level == DM_RATR_STA_MIDDLE)
-				rate_bitmap = 0x0f8ff000;
-			else {
-				if (*(pDM_Odm->pBandWidth) == ODM_BW40M)
-					rate_bitmap = 0x0f8ff015;
-				else
-					rate_bitmap = 0x0f8ff005;
-			}
-		}
+	case ODM_CMNINFO_INTERFACE:
+		pDM_Odm->SupportInterface = (u8)Value;
 		break;
 
-	case (ODM_WM_AC|ODM_WM_G):
-		if (rssi_level == 1)
-			rate_bitmap = 0xfc3f0000;
-		else if (rssi_level == 2)
-			rate_bitmap = 0xfffff000;
-		else
-			rate_bitmap = 0xffffffff;
+	case ODM_CMNINFO_MP_TEST_CHIP:
+		pDM_Odm->bIsMPChip = (u8)Value;
 		break;
 
-	case (ODM_WM_AC|ODM_WM_A):
-
-		if (pDM_Odm->RFType == RF_1T1R) {
-			if (rssi_level == 1)				/*  add by Gary for ac-series */
-				rate_bitmap = 0x003f8000;
-			else if (rssi_level == 2)
-				rate_bitmap = 0x003ff000;
-			else
-				rate_bitmap = 0x003ff010;
-		} else {
-			if (rssi_level == 1)				/*  add by Gary for ac-series */
-				rate_bitmap = 0xfe3f8000;       /*  VHT 2SS MCS3~9 */
-			else if (rssi_level == 2)
-				rate_bitmap = 0xfffff000;       /*  VHT 2SS MCS0~9 */
-			else
-				rate_bitmap = 0xfffff010;       /*  All */
-		}
+	case ODM_CMNINFO_IC_TYPE:
+		pDM_Odm->SupportICType = Value;
 		break;
 
-	default:
-		if (pDM_Odm->RFType == RF_1T2R)
-			rate_bitmap = 0x000fffff;
-		else
-			rate_bitmap = 0x0fffffff;
+	case ODM_CMNINFO_CUT_VER:
+		pDM_Odm->CutVersion = (u8)Value;
 		break;
-	}
-
-	/* printk("%s ==> rssi_level:0x%02x, WirelessMode:0x%02x, rate_bitmap:0x%08x\n", __func__, rssi_level, WirelessMode, rate_bitmap); */
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, (" ==> rssi_level:0x%02x, WirelessMode:0x%02x, rate_bitmap:0x%08x\n", rssi_level, WirelessMode, rate_bitmap));
-
-	return ra_mask & rate_bitmap;
 
-}
-
-/*-----------------------------------------------------------------------------
-* Function:	odm_RefreshRateAdaptiveMask()
-*
-* Overview:	Update rate table mask according to rssi
-*
-* Input:		NONE
-*
-* Output:		NONE
-*
-* Return:		NONE
-*
-* Revised History:
-*When		Who		Remark
-*05/27/2009	hpfan	Create Version 0.
-*
-* --------------------------------------------------------------------------
-*/
-void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm)
-{
-
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask()---------->\n"));
-	if (!(pDM_Odm->SupportAbility & ODM_BB_RA_MASK)) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask(): Return cos not supported\n"));
-		return;
-	}
-	odm_RefreshRateAdaptiveMaskCE(pDM_Odm);
-}
-
-void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm)
-{
-	u8 i;
-	struct adapter *padapter =  pDM_Odm->Adapter;
+	case ODM_CMNINFO_FAB_VER:
+		pDM_Odm->FabVersion = (u8)Value;
+		break;
 
-	if (padapter->bDriverStopped) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("<---- odm_RefreshRateAdaptiveMask(): driver is going to unload\n"));
-		return;
-	}
+	case ODM_CMNINFO_RFE_TYPE:
+		pDM_Odm->RFEType = (u8)Value;
+		break;
 
-	if (!pDM_Odm->bUseRAMask) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("<---- odm_RefreshRateAdaptiveMask(): driver does not control rate adaptive mask\n"));
-		return;
-	}
+	case    ODM_CMNINFO_RF_ANTENNA_TYPE:
+		pDM_Odm->AntDivType = (u8)Value;
+		break;
 
-	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
-		PSTA_INFO_T pstat = pDM_Odm->pODM_StaInfo[i];
+	case ODM_CMNINFO_BOARD_TYPE:
+		pDM_Odm->BoardType = (u8)Value;
+		break;
 
-		if (IS_STA_VALID(pstat)) {
-			if (IS_MCAST(pstat->hwaddr))  /* if (psta->mac_id == 1) */
-				continue;
+	case ODM_CMNINFO_PACKAGE_TYPE:
+		pDM_Odm->PackageType = (u8)Value;
+		break;
 
-			if (true == ODM_RAStateCheck(pDM_Odm, pstat->rssi_stat.UndecoratedSmoothedPWDB, false, &pstat->rssi_level)) {
-				ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("RSSI:%d, RSSI_LEVEL:%d\n", pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level));
-				/* printk("RSSI:%d, RSSI_LEVEL:%d\n", pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level); */
-				rtw_hal_update_ra_mask(pstat, pstat->rssi_level);
-			}
+	case ODM_CMNINFO_EXT_LNA:
+		pDM_Odm->ExtLNA = (u8)Value;
+		break;
 
-		}
-	}
-}
+	case ODM_CMNINFO_5G_EXT_LNA:
+		pDM_Odm->ExtLNA5G = (u8)Value;
+		break;
 
-/*  Return Value: bool */
-/*  - true: RATRState is changed. */
-bool ODM_RAStateCheck(
-	struct dm_odm_t *pDM_Odm,
-	s32 RSSI,
-	bool bForceUpdate,
-	u8 *pRATRState
-)
-{
-	struct odm_rate_adaptive *pRA = &pDM_Odm->RateAdaptive;
-	const u8 GoUpGap = 5;
-	u8 HighRSSIThreshForRA = pRA->HighRSSIThresh;
-	u8 LowRSSIThreshForRA = pRA->LowRSSIThresh;
-	u8 RATRState;
+	case ODM_CMNINFO_EXT_PA:
+		pDM_Odm->ExtPA = (u8)Value;
+		break;
 
-	/*  Threshold Adjustment: */
-	/*  when RSSI state trends to go up one or two levels, make sure RSSI is high enough. */
-	/*  Here GoUpGap is added to solve the boundary's level alternation issue. */
-	switch (*pRATRState) {
-	case DM_RATR_STA_INIT:
-	case DM_RATR_STA_HIGH:
+	case ODM_CMNINFO_5G_EXT_PA:
+		pDM_Odm->ExtPA5G = (u8)Value;
 		break;
 
-	case DM_RATR_STA_MIDDLE:
-		HighRSSIThreshForRA += GoUpGap;
+	case ODM_CMNINFO_GPA:
+		pDM_Odm->TypeGPA = (enum odm_type_gpa_e)Value;
+		break;
+	case ODM_CMNINFO_APA:
+		pDM_Odm->TypeAPA = (enum odm_type_apa_e)Value;
+		break;
+	case ODM_CMNINFO_GLNA:
+		pDM_Odm->TypeGLNA = (enum odm_type_glna_e)Value;
+		break;
+	case ODM_CMNINFO_ALNA:
+		pDM_Odm->TypeALNA = (enum odm_type_alna_e)Value;
 		break;
 
-	case DM_RATR_STA_LOW:
-		HighRSSIThreshForRA += GoUpGap;
-		LowRSSIThreshForRA += GoUpGap;
+	case ODM_CMNINFO_EXT_TRSW:
+		pDM_Odm->ExtTRSW = (u8)Value;
+		break;
+	case ODM_CMNINFO_PATCH_ID:
+		pDM_Odm->PatchID = (u8)Value;
+		break;
+	case ODM_CMNINFO_BINHCT_TEST:
+		pDM_Odm->bInHctTest = (bool)Value;
+		break;
+	case ODM_CMNINFO_BWIFI_TEST:
+		pDM_Odm->bWIFITest = (bool)Value;
+		break;
+
+	case ODM_CMNINFO_SMART_CONCURRENT:
+		pDM_Odm->bDualMacSmartConcurrent = (bool)Value;
 		break;
 
+	/* To remove the compiler warning, must add an empty default statement to handle the other values. */
 	default:
-		ODM_RT_ASSERT(pDM_Odm, false, ("wrong rssi level setting %d !", *pRATRState));
+		/* do nothing */
 		break;
 	}
 
-	/*  Decide RATRState by RSSI. */
-	if (RSSI > HighRSSIThreshForRA)
-		RATRState = DM_RATR_STA_HIGH;
-	else if (RSSI > LowRSSIThreshForRA)
-		RATRState = DM_RATR_STA_MIDDLE;
-	else
-		RATRState = DM_RATR_STA_LOW;
-	/* printk("==>%s, RATRState:0x%02x , RSSI:%d\n", __func__, RATRState, RSSI); */
+}
 
-	if (*pRATRState != RATRState || bForceUpdate) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("RSSI Level %d -> %d\n", *pRATRState, RATRState));
-		*pRATRState = RATRState;
-		return true;
-	}
 
-	return false;
-}
+void ODM_CmnInfoHook(struct dm_odm_t *pDM_Odm, enum odm_cmninfo_e CmnInfo, void *pValue)
+{
+	/*  */
+	/*  Hook call by reference pointer. */
+	/*  */
+	switch (CmnInfo) {
+	/*  */
+	/*  Dynamic call by reference pointer. */
+	/*  */
+	case ODM_CMNINFO_MAC_PHY_MODE:
+		pDM_Odm->pMacPhyMode = pValue;
+		break;
 
+	case ODM_CMNINFO_TX_UNI:
+		pDM_Odm->pNumTxBytesUnicast = pValue;
+		break;
 
-/*  */
+	case ODM_CMNINFO_RX_UNI:
+		pDM_Odm->pNumRxBytesUnicast = pValue;
+		break;
 
-/* 3 ============================================================ */
-/* 3 Dynamic Tx Power */
-/* 3 ============================================================ */
+	case ODM_CMNINFO_WM_MODE:
+		pDM_Odm->pwirelessmode = pValue;
+		break;
 
-/* Remove BY YuChen */
+	case ODM_CMNINFO_BAND:
+		pDM_Odm->pBandType = pValue;
+		break;
 
-/* 3 ============================================================ */
-/* 3 RSSI Monitor */
-/* 3 ============================================================ */
+	case ODM_CMNINFO_SEC_CHNL_OFFSET:
+		pDM_Odm->pSecChOffset = pValue;
+		break;
 
-void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm)
-{
-	struct ra_t *pRA_Table = &pDM_Odm->DM_RA_Table;
+	case ODM_CMNINFO_SEC_MODE:
+		pDM_Odm->pSecurity = pValue;
+		break;
 
-	pRA_Table->firstconnect = false;
+	case ODM_CMNINFO_BW:
+		pDM_Odm->pBandWidth = pValue;
+		break;
 
-}
+	case ODM_CMNINFO_CHNL:
+		pDM_Odm->pChannel = pValue;
+		break;
 
-void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm)
-{
-	if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
-		return;
+	case ODM_CMNINFO_DMSP_GET_VALUE:
+		pDM_Odm->pbGetValueFromOtherMac = pValue;
+		break;
 
-	odm_RSSIMonitorCheckCE(pDM_Odm);
+	case ODM_CMNINFO_BUDDY_ADAPTOR:
+		pDM_Odm->pBuddyAdapter = pValue;
+		break;
 
-}	/*  odm_RSSIMonitorCheck */
+	case ODM_CMNINFO_DMSP_IS_MASTER:
+		pDM_Odm->pbMasterOfDMSP = pValue;
+		break;
 
-static void FindMinimumRSSI(struct adapter *padapter)
-{
-	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
+	case ODM_CMNINFO_SCAN:
+		pDM_Odm->pbScanInProcess = pValue;
+		break;
 
-	/* 1 1.Determine the minimum RSSI */
+	case ODM_CMNINFO_POWER_SAVING:
+		pDM_Odm->pbPowerSaving = pValue;
+		break;
 
-	if (
-		(pDM_Odm->bLinked != true) &&
-		(pdmpriv->EntryMinUndecoratedSmoothedPWDB == 0)
-	) {
-		pdmpriv->MinUndecoratedPWDBForDM = 0;
-		/* ODM_RT_TRACE(pDM_Odm, COMP_BB_POWERSAVING, DBG_LOUD, ("Not connected to any\n")); */
-	} else
-		pdmpriv->MinUndecoratedPWDBForDM = pdmpriv->EntryMinUndecoratedSmoothedPWDB;
+	case ODM_CMNINFO_ONE_PATH_CCA:
+		pDM_Odm->pOnePathCCA = pValue;
+		break;
 
-	/* DBG_8192C("%s =>MinUndecoratedPWDBForDM(%d)\n", __func__, pdmpriv->MinUndecoratedPWDBForDM); */
-	/* ODM_RT_TRACE(pDM_Odm, COMP_DIG, DBG_LOUD, ("MinUndecoratedPWDBForDM =%d\n", pHalData->MinUndecoratedPWDBForDM)); */
-}
+	case ODM_CMNINFO_DRV_STOP:
+		pDM_Odm->pbDriverStopped =  pValue;
+		break;
 
-void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm)
-{
-	struct adapter *Adapter = pDM_Odm->Adapter;
-	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	int i;
-	int tmpEntryMaxPWDB = 0, tmpEntryMinPWDB = 0xff;
-	u8 sta_cnt = 0;
-	u32 PWDB_rssi[NUM_STA] = {0};/* 0~15]:MACID, [16~31]:PWDB_rssi */
-	struct ra_t *pRA_Table = &pDM_Odm->DM_RA_Table;
+	case ODM_CMNINFO_PNP_IN:
+		pDM_Odm->pbDriverIsGoingToPnpSetPowerSleep =  pValue;
+		break;
 
-	if (pDM_Odm->bLinked != true)
-		return;
+	case ODM_CMNINFO_INIT_ON:
+		pDM_Odm->pinit_adpt_in_progress =  pValue;
+		break;
 
-	pRA_Table->firstconnect = pDM_Odm->bLinked;
+	case ODM_CMNINFO_ANT_TEST:
+		pDM_Odm->pAntennaTest =  pValue;
+		break;
 
-	/* if (check_fwstate(&Adapter->mlmepriv, WIFI_AP_STATE|WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE) == true) */
-	{
-		struct sta_info *psta;
+	case ODM_CMNINFO_NET_CLOSED:
+		pDM_Odm->pbNet_closed = pValue;
+		break;
 
-		for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
-			psta = pDM_Odm->pODM_StaInfo[i];
-			if (IS_STA_VALID(psta)) {
-				if (IS_MCAST(psta->hwaddr))  /* if (psta->mac_id == 1) */
-					continue;
+	case ODM_CMNINFO_FORCED_RATE:
+		pDM_Odm->pForcedDataRate = pValue;
+		break;
 
-				if (psta->rssi_stat.UndecoratedSmoothedPWDB == (-1))
-					continue;
+	case ODM_CMNINFO_FORCED_IGI_LB:
+		pDM_Odm->pu1ForcedIgiLb = pValue;
+		break;
 
-				if (psta->rssi_stat.UndecoratedSmoothedPWDB < tmpEntryMinPWDB)
-					tmpEntryMinPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;
+	case ODM_CMNINFO_MP_MODE:
+		pDM_Odm->mp_mode = pValue;
+		break;
+
+	/* case ODM_CMNINFO_RTSTA_AID: */
+	/* pDM_Odm->pAidMap =  (u8 *)pValue; */
+	/* break; */
+
+	/* case ODM_CMNINFO_BT_COEXIST: */
+	/* pDM_Odm->BTCoexist = (bool *)pValue; */
+
+	/* case ODM_CMNINFO_STA_STATUS: */
+	/* pDM_Odm->pODM_StaInfo[] = (PSTA_INFO_T)pValue; */
+	/* break; */
+
+	/* case ODM_CMNINFO_PHY_STATUS: */
+	/* pDM_Odm->pPhyInfo = (ODM_PHY_INFO *)pValue; */
+	/* break; */
 
-				if (psta->rssi_stat.UndecoratedSmoothedPWDB > tmpEntryMaxPWDB)
-					tmpEntryMaxPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;
+	/* case ODM_CMNINFO_MAC_STATUS: */
+	/* pDM_Odm->pMacInfo = (struct odm_mac_status_info *)pValue; */
+	/* break; */
+	/* To remove the compiler warning, must add an empty default statement to handle the other values. */
+	default:
+		/* do nothing */
+		break;
+	}
 
-				if (psta->rssi_stat.UndecoratedSmoothedPWDB != (-1))
-					PWDB_rssi[sta_cnt++] = (psta->mac_id | (psta->rssi_stat.UndecoratedSmoothedPWDB<<16));
-			}
-		}
+}
 
-		/* printk("%s ==> sta_cnt(%d)\n", __func__, sta_cnt); */
 
-		for (i = 0; i < sta_cnt; i++) {
-			if (PWDB_rssi[i] != (0)) {
-				if (pHalData->fw_ractrl == true)/*  Report every sta's RSSI to FW */
-					rtl8723b_set_rssi_cmd(Adapter, (u8 *)(&PWDB_rssi[i]));
-			}
-		}
+void ODM_CmnInfoPtrArrayHook(
+	struct dm_odm_t *pDM_Odm,
+	enum odm_cmninfo_e CmnInfo,
+	u16 Index,
+	void *pValue
+)
+{
+	/*  */
+	/*  Hook call by reference pointer. */
+	/*  */
+	switch (CmnInfo) {
+	/*  */
+	/*  Dynamic call by reference pointer. */
+	/*  */
+	case ODM_CMNINFO_STA_STATUS:
+		pDM_Odm->pODM_StaInfo[Index] = (PSTA_INFO_T)pValue;
+		break;
+	/* To remove the compiler warning, must add an empty default statement to handle the other values. */
+	default:
+		/* do nothing */
+		break;
 	}
 
+}
 
 
-	if (tmpEntryMaxPWDB != 0)	/*  If associated entry is found */
-		pdmpriv->EntryMaxUndecoratedSmoothedPWDB = tmpEntryMaxPWDB;
-	else
-		pdmpriv->EntryMaxUndecoratedSmoothedPWDB = 0;
+/*  */
+/*  Update Band/CHannel/.. The values are dynamic but non-per-packet. */
+/*  */
+void ODM_CmnInfoUpdate(struct dm_odm_t *pDM_Odm, u32 CmnInfo, u64 Value)
+{
+	/*  */
+	/*  This init variable may be changed in run time. */
+	/*  */
+	switch (CmnInfo) {
+	case ODM_CMNINFO_LINK_IN_PROGRESS:
+		pDM_Odm->bLinkInProcess = (bool)Value;
+		break;
 
-	if (tmpEntryMinPWDB != 0xff) /*  If associated entry is found */
-		pdmpriv->EntryMinUndecoratedSmoothedPWDB = tmpEntryMinPWDB;
-	else
-		pdmpriv->EntryMinUndecoratedSmoothedPWDB = 0;
+	case ODM_CMNINFO_ABILITY:
+		pDM_Odm->SupportAbility = (u32)Value;
+		break;
 
-	FindMinimumRSSI(Adapter);/* get pdmpriv->MinUndecoratedPWDBForDM */
+	case ODM_CMNINFO_RF_TYPE:
+		pDM_Odm->RFType = (u8)Value;
+		break;
 
-	pDM_Odm->RSSI_Min = pdmpriv->MinUndecoratedPWDBForDM;
-	/* ODM_CmnInfoUpdate(&pHalData->odmpriv , ODM_CMNINFO_RSSI_MIN, pdmpriv->MinUndecoratedPWDBForDM); */
-}
+	case ODM_CMNINFO_WIFI_DIRECT:
+		pDM_Odm->bWIFI_Direct = (bool)Value;
+		break;
 
-/* 3 ============================================================ */
-/* 3 Tx Power Tracking */
-/* 3 ============================================================ */
+	case ODM_CMNINFO_WIFI_DISPLAY:
+		pDM_Odm->bWIFI_Display = (bool)Value;
+		break;
 
-static u8 getSwingIndex(struct dm_odm_t *pDM_Odm)
-{
-	struct adapter *Adapter = pDM_Odm->Adapter;
-	u8 i = 0;
-	u32 bbSwing;
-	u32 swingTableSize;
-	u32 *pSwingTable;
+	case ODM_CMNINFO_LINK:
+		pDM_Odm->bLinked = (bool)Value;
+		break;
 
-	bbSwing = PHY_QueryBBReg(Adapter, rOFDM0_XATxIQImbalance, 0xFFC00000);
+	case ODM_CMNINFO_STATION_STATE:
+		pDM_Odm->bsta_state = (bool)Value;
+		break;
 
-	pSwingTable = OFDMSwingTable_New;
-	swingTableSize = OFDM_TABLE_SIZE;
+	case ODM_CMNINFO_RSSI_MIN:
+		pDM_Odm->RSSI_Min = (u8)Value;
+		break;
 
-	for (i = 0; i < swingTableSize; ++i) {
-		u32 tableValue = pSwingTable[i];
+	case ODM_CMNINFO_DBG_COMP:
+		pDM_Odm->DebugComponents = Value;
+		break;
 
-		if (tableValue >= 0x100000)
-			tableValue >>= 22;
-		if (bbSwing == tableValue)
-			break;
-	}
-	return i;
-}
+	case ODM_CMNINFO_DBG_LEVEL:
+		pDM_Odm->DebugLevel = (u32)Value;
+		break;
+	case ODM_CMNINFO_RA_THRESHOLD_HIGH:
+		pDM_Odm->RateAdaptive.HighRSSIThresh = (u8)Value;
+		break;
 
-void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm)
-{
-	u8 defaultSwingIndex = getSwingIndex(pDM_Odm);
-	u8 p = 0;
-	struct adapter *Adapter = pDM_Odm->Adapter;
-	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
+	case ODM_CMNINFO_RA_THRESHOLD_LOW:
+		pDM_Odm->RateAdaptive.LowRSSIThresh = (u8)Value;
+		break;
+	/*  The following is for BT HS mode and BT coexist mechanism. */
+	case ODM_CMNINFO_BT_ENABLED:
+		pDM_Odm->bBtEnabled = (bool)Value;
+		break;
 
+	case ODM_CMNINFO_BT_HS_CONNECT_PROCESS:
+		pDM_Odm->bBtConnectProcess = (bool)Value;
+		break;
 
-	struct dm_priv *pdmpriv = &pHalData->dmpriv;
+	case ODM_CMNINFO_BT_HS_RSSI:
+		pDM_Odm->btHsRssi = (u8)Value;
+		break;
 
-	pdmpriv->bTXPowerTracking = true;
-	pdmpriv->TXPowercount = 0;
-	pdmpriv->bTXPowerTrackingInit = false;
+	case ODM_CMNINFO_BT_OPERATION:
+		pDM_Odm->bBtHsOperation = (bool)Value;
+		break;
 
-	if (*(pDM_Odm->mp_mode) != 1)
-		pdmpriv->TxPowerTrackControl = true;
-	else
-		pdmpriv->TxPowerTrackControl = false;
+	case ODM_CMNINFO_BT_LIMITED_DIG:
+		pDM_Odm->bBtLimitedDig = (bool)Value;
+		break;
 
+	case ODM_CMNINFO_BT_DISABLE_EDCA:
+		pDM_Odm->bBtDisableEdcaTurbo = (bool)Value;
+		break;
 
-	/* MSG_8192C("pdmpriv->TxPowerTrackControl = %d\n", pdmpriv->TxPowerTrackControl); */
+/*
+	case	ODM_CMNINFO_OP_MODE:
+		pDM_Odm->OPMode = (u8)Value;
+		break;
 
-	/* pDM_Odm->RFCalibrateInfo.TxPowerTrackControl = true; */
-	pDM_Odm->RFCalibrateInfo.ThermalValue = pHalData->EEPROMThermalMeter;
-	pDM_Odm->RFCalibrateInfo.ThermalValue_IQK = pHalData->EEPROMThermalMeter;
-	pDM_Odm->RFCalibrateInfo.ThermalValue_LCK = pHalData->EEPROMThermalMeter;
+	case	ODM_CMNINFO_WM_MODE:
+		pDM_Odm->WirelessMode = (u8)Value;
+		break;
 
-	/*  The index of "0 dB" in SwingTable. */
-	pDM_Odm->DefaultOfdmIndex = (defaultSwingIndex >= OFDM_TABLE_SIZE) ? 30 : defaultSwingIndex;
-	pDM_Odm->DefaultCckIndex = 20;
+	case	ODM_CMNINFO_BAND:
+		pDM_Odm->BandType = (u8)Value;
+		break;
 
-	pDM_Odm->BbSwingIdxCckBase = pDM_Odm->DefaultCckIndex;
-	pDM_Odm->RFCalibrateInfo.CCK_index = pDM_Odm->DefaultCckIndex;
+	case	ODM_CMNINFO_SEC_CHNL_OFFSET:
+		pDM_Odm->SecChOffset = (u8)Value;
+		break;
 
-	for (p = ODM_RF_PATH_A; p < MAX_RF_PATH; ++p) {
-		pDM_Odm->BbSwingIdxOfdmBase[p] = pDM_Odm->DefaultOfdmIndex;
-		pDM_Odm->RFCalibrateInfo.OFDM_index[p] = pDM_Odm->DefaultOfdmIndex;
-		pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[p] = 0;
-		pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[p] = 0;
-		pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p] = 0;
+	case	ODM_CMNINFO_SEC_MODE:
+		pDM_Odm->Security = (u8)Value;
+		break;
+
+	case	ODM_CMNINFO_BW:
+		pDM_Odm->BandWidth = (u8)Value;
+		break;
+
+	case	ODM_CMNINFO_CHNL:
+		pDM_Odm->Channel = (u8)Value;
+		break;
+*/
+	default:
+		/* do nothing */
+		break;
 	}
 
+
 }
 
-void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm)
-{
-	struct adapter *Adapter = pDM_Odm->Adapter;
+/* 3 ============================================================ */
+/* 3 DIG */
+/* 3 ============================================================ */
+/*-----------------------------------------------------------------------------
+ * Function:	odm_DIGInit()
+ *
+ * Overview:	Set DIG scheme init value.
+ *
+ * Input:		NONE
+ *
+ * Output:		NONE
+ *
+ * Return:		NONE
+ *
+ * Revised History:
+ *When		Who		Remark
+ *
+ *---------------------------------------------------------------------------
+ */
 
-	if (!(pDM_Odm->SupportAbility & ODM_RF_TX_PWR_TRACK))
-		return;
+/* Remove DIG by yuchen */
 
-	if (!pDM_Odm->RFCalibrateInfo.TM_Trigger) { /* at least delay 1 sec */
-		PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_T_METER_NEW, (BIT17 | BIT16), 0x03);
+/* Remove DIG and FA check by Yu Chen */
 
-		/* DBG_871X("Trigger Thermal Meter!!\n"); */
+/* 3 ============================================================ */
+/* 3 BB Power Save */
+/* 3 ============================================================ */
 
-		pDM_Odm->RFCalibrateInfo.TM_Trigger = 1;
-		return;
-	} else {
-		/* DBG_871X("Schedule TxPowerTracking direct call!!\n"); */
-		ODM_TXPowerTrackingCallback_ThermalMeter(Adapter);
-		pDM_Odm->RFCalibrateInfo.TM_Trigger = 0;
-	}
-}
+/* Remove BB power saving by Yuchen */
 
 /* 3 ============================================================ */
-/* 3 SW Antenna Diversity */
+/* 3 Dynamic Tx Power */
 /* 3 ============================================================ */
-void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm)
-{
-	struct swat_t *pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
 
-	pDM_SWAT_Table->SWAS_NoLink_BK_Reg92c = rtw_read32(pDM_Odm->Adapter, rDPDT_control);
-	pDM_SWAT_Table->PreAntenna = MAIN_ANT;
-	pDM_SWAT_Table->CurAntenna = MAIN_ANT;
-	pDM_SWAT_Table->SWAS_NoLink_State = 0;
-}
+/* Remove BY YuChen */
+
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
