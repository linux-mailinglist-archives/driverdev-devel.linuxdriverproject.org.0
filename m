Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E965733876A
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:32:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 822176FACA;
	Fri, 12 Mar 2021 08:32:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yBg5XxlcHHJn; Fri, 12 Mar 2021 08:32:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 715316F593;
	Fri, 12 Mar 2021 08:32:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D8ED11BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D64534150B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KC5LO429Uuf6 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE4DB43251
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:10 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id j7so1273584wrd.1
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=3LWDlBFI8uKbVIczS0+E4BgDZYzYCH/wwh3wZ4gMlj8=;
 b=tXMmG5BGWyos4DCNqZzGizKInQQSl2gX41I5o1KMxsxTdyaujjqGsnb+nS3mkej8ED
 rEFRMTtnhTcnb77oPY7SQCXCgH+rl0JLBSMLCJU25MxK0k3XUKCOO1vuMOa/13bEJEKP
 UDGoxblkaIHmFRwYboogw4pOnBzV/8G6/orILPOJiGD2YtEDFiunEg7+1I6rqyW4JSXj
 Bbgz09xxVnwVD+c/1jcMPQcbGvYyH3jwPW8s5s5+PZ/O1C4e9WwIIQVLeqXvIgh0D+Z8
 2le5bOt1hkMQ/ZTTJlV4Z/2pjZQ50DIJ2Iq5jEGLtZ2fBrrI6FobDdIfnJW1TpzKDnOM
 HULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3LWDlBFI8uKbVIczS0+E4BgDZYzYCH/wwh3wZ4gMlj8=;
 b=k/LALxIX/czOOBIjqHI6g7uqVLv7ylsm0OAPD+s3iGezQgWh785MfYD/OdQdLEpO1U
 2H7OKovKHtRoJYf637463bwnwK5ZMR0tHVDyNNZo/JlwJKHJXHJIp516fFhE52sW7lTs
 92KTlLAX1MMXN2Jh/9JDVTM4rtr3Aa7OPCX7GV3d9qb8ORzlrx8ctDr6vDpGsNhQA+cf
 Ozc4UC0uH+ad4N2aMuYdKE6P7fm9Ht2uxYdV27TAjB0XNDw4AHOuUgeAZxoWAmMEqVQL
 hHcZZdHJWJjAg0m4fgUvaARykuLZWOc+u12x4oqDynW+jj1Ge0jDf66JGBAA0ms2CJUL
 p6wA==
X-Gm-Message-State: AOAM530nKk2+X9tRNkPAclBWyAyyz/oO2CgXXFka4kiu9CKTl6478583
 V+LBC3FwETPvNPfxsFDNOyXz/jG71mg=
X-Google-Smtp-Source: ABdhPJwqtJISDqIPIUQGYdDTm2cJb5d60VKfMkU6R8reu3yLXB5CFaTRhfYkGenmHeUzzUHnZ9o48w==
X-Received: by 2002:a05:6000:1107:: with SMTP id
 z7mr12280109wrw.415.1615537628951; 
 Fri, 12 Mar 2021 00:27:08 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:08 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 31/33] staging: rtl8723bs: remove typedefs in odm_DIG.h
Date: Fri, 12 Mar 2021 09:26:36 +0100
Message-Id: <20210312082638.25512-32-marco.cesati@gmail.com>
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
    #11: FILE: hal/odm_DIG.h:11:
    +typedef struct _Dynamic_Initial_Gain_Threshold_ {

    WARNING: do not add new typedefs
    #62: FILE: hal/odm_DIG.h:62:
    +typedef struct false_ALARM_STATISTICS {

    WARNING: do not add new typedefs
    #80: FILE: hal/odm_DIG.h:80:
    +typedef enum tag_Dynamic_Init_Gain_Operation_Type_Definition {

    WARNING: do not add new typedefs
    #91: FILE: hal/odm_DIG.h:91:
    +typedef enum tag_ODM_PauseDIG_Type {

    WARNING: do not add new typedefs
    #96: FILE: hal/odm_DIG.h:96:
    +typedef enum tag_ODM_PauseCCKPD_Type {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c       |  2 +-
 drivers/staging/rtl8723bs/hal/odm.c           |  2 +-
 drivers/staging/rtl8723bs/hal/odm.h           |  6 ++---
 drivers/staging/rtl8723bs/hal/odm_DIG.c       | 26 +++++++++----------
 drivers/staging/rtl8723bs/hal/odm_DIG.h       | 22 ++++++++--------
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  2 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  2 +-
 7 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 9eaf35e8e442..4a1ca57c2e15 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1172,7 +1172,7 @@ u8 SetHalDefVar(
 			odm->SupportAbility  &= (~DYNAMIC_BB_ANT_DIV);
 		} else if (dm_func == 6) {/* turn on all dynamic func */
 			if (!(odm->SupportAbility  & DYNAMIC_BB_DIG)) {
-				DIG_T	*pDigTable = &odm->DM_DigTable;
+				struct DIG_T	*pDigTable = &odm->DM_DigTable;
 				pDigTable->CurIGValue = rtw_read8(adapter, 0xc50);
 			}
 			dm->DMFlag |= DYNAMIC_FUNC_BT;
diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index 4c8f86fd22a3..4337f3b614f9 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -417,7 +417,7 @@ void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm)
 		odm_DIG(pDM_Odm);
 
 	{
-		pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
+		struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 		odm_Adaptivity(pDM_Odm, pDM_DigTable->CurIGValue);
 	}
diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 52e66d1e466c..2bcb55878b12 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1110,13 +1110,13 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/* ODM Structure */
 	/*  */
 	struct FAT_T DM_FatTable;
-	DIG_T DM_DigTable;
+	struct DIG_T DM_DigTable;
 	PS_T DM_PSTable;
 	struct dynamic_primary_CCA DM_PriCCA;
 	struct RXHP_T DM_RXHP_Table;
 	struct RA_T DM_RA_Table;
-	false_ALARM_STATISTICS FalseAlmCnt;
-	false_ALARM_STATISTICS FlaseAlmCntBuddyAdapter;
+	struct false_ALARM_STATISTICS FalseAlmCnt;
+	struct false_ALARM_STATISTICS FlaseAlmCntBuddyAdapter;
 	struct SWAT_T DM_SWAT_Table;
 	bool RSSI_test;
 	struct CFO_TRACKING DM_CfoTrack;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index 6b8b6da6dbcc..8179a963d2da 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -71,7 +71,7 @@ void odm_NHMBB(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	/* u8 test_status; */
-	/* Pfalse_ALARM_STATISTICS pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt); */
+	/* struct false_ALARM_STATISTICS *pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt); */
 
 	pDM_Odm->NHMCurTxOkcnt =
 		*(pDM_Odm->pNumTxBytesUnicast)-pDM_Odm->NHMLastTxOkcnt;
@@ -323,7 +323,7 @@ void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 void ODM_Write_DIG(void *pDM_VOID, u8 CurrentIGI)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	if (pDM_DigTable->bStopDIG) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("Stop Writing IGI\n"));
@@ -358,12 +358,12 @@ void ODM_Write_DIG(void *pDM_VOID, u8 CurrentIGI)
 
 void odm_PauseDIG(
 	void *pDM_VOID,
-	ODM_Pause_DIG_TYPE PauseType,
+	enum ODM_Pause_DIG_TYPE PauseType,
 	u8 IGIValue
 )
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
 	static bool bPaused;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG() =========>\n"));
@@ -467,7 +467,7 @@ bool odm_DigAbort(void *pDM_VOID)
 void odm_DIGInit(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	pDM_DigTable->bStopDIG = false;
 	pDM_DigTable->bPSDInProgress = false;
@@ -507,8 +507,8 @@ void odm_DIG(void *pDM_VOID)
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/*  Common parameters */
-	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
-	Pfalse_ALARM_STATISTICS pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
+	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	bool FirstConnect, FirstDisConnect;
 	u8 DIG_MaxOfMin, DIG_Dynamic_MIN;
 	u8 dm_dig_max, dm_dig_min;
@@ -824,7 +824,7 @@ void odm_DIG(void *pDM_VOID)
 void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	Pfalse_ALARM_STATISTICS pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
+	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 
 	u8 RSSI_Lower = DM_DIG_MIN_NIC;   /* 0x1E or 0x1C */
 	u8 CurrentIGI = pDM_Odm->RSSI_Min;
@@ -893,7 +893,7 @@ void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 void odm_FalseAlarmCounterStatistics(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	Pfalse_ALARM_STATISTICS FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
+	struct false_ALARM_STATISTICS * FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
 	u32 ret_value;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT))
@@ -1079,8 +1079,8 @@ void odm_FAThresholdCheck(
 u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
-	Pfalse_ALARM_STATISTICS pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
+	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct false_ALARM_STATISTICS * pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
 	u8 rx_gain_range_min = pDM_DigTable->rx_gain_range_min;
 
 	if (pFalseAlmCnt->Cnt_all > 10000) {
@@ -1135,7 +1135,7 @@ u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	Pfalse_ALARM_STATISTICS FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
+	struct false_ALARM_STATISTICS * FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
 	u8 CurCCK_CCAThres;
 
 
@@ -1196,7 +1196,7 @@ void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 void ODM_Write_CCK_CCA_Thres(void *pDM_VOID, u8 CurCCK_CCAThres)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	/* modify by Guo.Mingzhi 2012-01-03 */
 	if (pDM_DigTable->CurCCK_CCAThres != CurCCK_CCAThres)
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.h b/drivers/staging/rtl8723bs/hal/odm_DIG.h
index f6777e97a24a..5a1900d1e8d1 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.h
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.h
@@ -8,7 +8,7 @@
 #ifndef __ODMDIG_H__
 #define __ODMDIG_H__
 
-typedef struct _Dynamic_Initial_Gain_Threshold_ {
+struct DIG_T { /* _Dynamic_Initial_Gain_Threshold_ */
 	bool bStopDIG;
 	bool bPSDInProgress;
 
@@ -57,9 +57,9 @@ typedef struct _Dynamic_Initial_Gain_Threshold_ {
 	u32 RSSI_max;
 
 	u8 *pbP2pLinkInProgress;
-} DIG_T, *pDIG_T;
+};
 
-typedef struct false_ALARM_STATISTICS {
+struct  false_ALARM_STATISTICS {
 	u32 Cnt_Parity_Fail;
 	u32 Cnt_Rate_Illegal;
 	u32 Cnt_Crc8_fail;
@@ -75,9 +75,9 @@ typedef struct false_ALARM_STATISTICS {
 	u32 Cnt_CCA_all;
 	u32 Cnt_BW_USC; /* Gary */
 	u32 Cnt_BW_LSC; /* Gary */
-} false_ALARM_STATISTICS, *Pfalse_ALARM_STATISTICS;
+};
 
-typedef enum tag_Dynamic_Init_Gain_Operation_Type_Definition {
+enum DM_DIG_OP_E { /* tag_Dynamic_Init_Gain_Operation_Type_Definition */
 	DIG_TYPE_THRESH_HIGH = 0,
 	DIG_TYPE_THRESH_LOW = 1,
 	DIG_TYPE_BACKOFF = 2,
@@ -86,17 +86,17 @@ typedef enum tag_Dynamic_Init_Gain_Operation_Type_Definition {
 	DIG_TYPE_ENABLE = 5,
 	DIG_TYPE_DISABLE = 6,
 	DIG_OP_TYPE_MAX
-} DM_DIG_OP_E;
+};
 
-typedef enum tag_ODM_PauseDIG_Type {
+enum ODM_Pause_DIG_TYPE {
 	ODM_PAUSE_DIG = BIT0,
 	ODM_RESUME_DIG = BIT1
-} ODM_Pause_DIG_TYPE;
+};
 
-typedef enum tag_ODM_PauseCCKPD_Type {
+enum ODM_Pause_CCKPD_TYPE {
 	ODM_PAUSE_CCKPD = BIT0,
 	ODM_RESUME_CCKPD = BIT1
-} ODM_Pause_CCKPD_TYPE;
+};
 
 #define		DM_DIG_THRESH_HIGH			40
 #define		DM_DIG_THRESH_LOW			35
@@ -157,7 +157,7 @@ void odm_Adaptivity(void *pDM_VOID, u8 IGI);
 
 void ODM_Write_DIG(void *pDM_VOID, u8 CurrentIGI);
 
-void odm_PauseDIG(void *pDM_VOID, ODM_Pause_DIG_TYPE PauseType, u8 IGIValue);
+void odm_PauseDIG(void *pDM_VOID, enum ODM_Pause_DIG_TYPE PauseType, u8 IGIValue);
 
 void odm_DIGInit(void *pDM_VOID);
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 9df5b1240de2..dce70fff0fae 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -230,7 +230,7 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
-	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct sta_priv *pstapriv = &Adapter->stapriv;
 	struct sta_info *psta = NULL;
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index a8f56eeb576f..0eac9cb11cef 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4066,7 +4066,7 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 
 	case HW_VAR_INITIAL_GAIN:
 		{
-			DIG_T *pDigTable = &pHalData->odmpriv.DM_DigTable;
+			struct DIG_T *pDigTable = &pHalData->odmpriv.DM_DigTable;
 			u32 rx_gain = *(u32 *)val;
 
 			if (rx_gain == 0xff) {/* restore rx gain */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
