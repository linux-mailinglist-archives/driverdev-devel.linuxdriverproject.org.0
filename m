Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBC533C3A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:10:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB8CC4EA47;
	Mon, 15 Mar 2021 17:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Re_QRtv5WoFl; Mon, 15 Mar 2021 17:10:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C7574D500;
	Mon, 15 Mar 2021 17:10:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55A401BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 451694B1F9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZFo-CK1OcVG8 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A580B47489
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:28 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id u4so18199735edv.9
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=cqr7y81dnY9sH+3Nqq2Znr6ymnXfznQqArNhCa3vg/Q=;
 b=NCU5cl+65w/+Ft6HJ4hdO1NgwIaSxiYX9mwdDd5ZWjCUZfrRV455aOp6rzmImitJ0u
 PLkUsRx8FSctdTnGTTnKy4VT8//tzT8AnXR+u1USiZgP2Ga4i6CAcka/q171j3ArsCAl
 xsGQsVMY3PGa0sM/ZN7Bvo/U8x1LjV+e595YeSXqAPSWIpgEPBGvqYGZHLvfrJrDajTn
 oEeN9kXmrfst2ewCZMARDTo52ciUL1wbY9fmhPlqAFPXzq2trxmZLtj8FtgfQH9ZHHqw
 hRQzfuLrslZFT2yzAl1wLjwBiadr3OEVV0dt+agGekWccm4w5u9QqnN2NbzBK6CdqElX
 PDvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cqr7y81dnY9sH+3Nqq2Znr6ymnXfznQqArNhCa3vg/Q=;
 b=ByWlyrGjx/PnvBcNUQQKmgilwN/L21Mq94vxITHSdDNEXrmZzPw/D2yzYbbk8S/UL1
 AuOdBNCpFbw5V2O8YBUTjqsQiKZJkRmTRiRFja+ta2N0WKWhS5Um3F9Vz1sc7HVho24s
 KylojxCfUG7Xp58df64VpxOuS5Aj+wPZVrsN0gEsKLReOh4F9sSdS9vdSTcgMh9BJBzu
 ntc62n9r73a4z/Sz/im/lS4Dk6IJA/rpDpFiuG4bZLiS1uUI1DaSiZBTp74LIah/QkIh
 IjNKphhAZ7ARxtrWkOeJ9PzL87bjc0popPRX6sZ1q8J9yg+XjRmtqWbE+VcKJ/9Y8b/e
 iDDQ==
X-Gm-Message-State: AOAM532WIlXvqAyFFjXPUhDiCUHV3SpGUswglo2XX9Q5sOhlbT42UOTU
 fj5d3+h7kUexykE6nCmDsu4=
X-Google-Smtp-Source: ABdhPJz4de2LVJ+ONJifXmiQVo7bL4zTwqCJnmwLoCw3jB0sVZWvocCK0IHMwHKDVS5QtBp91qXovA==
X-Received: by 2002:aa7:d445:: with SMTP id q5mr30647441edr.382.1615827986906; 
 Mon, 15 Mar 2021 10:06:26 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:26 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 23/57] Staging: rtl8723bs: fix spaces in odm_DIG.c
Date: Mon, 15 Mar 2021 18:05:44 +0100
Message-Id: <20210315170618.2566-24-marcocesati@gmail.com>
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

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #14: FILE: ./hal/odm_DIG.c:14:
    +	struct DM_ODM_T *		pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #30: FILE: ./hal/odm_DIG.c:30:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #41: FILE: ./hal/odm_DIG.c:41:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #51: FILE: ./hal/odm_DIG.c:51:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #59: FILE: ./hal/odm_DIG.c:59:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #72: FILE: ./hal/odm_DIG.c:72:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #136: FILE: ./hal/odm_DIG.c:136:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #208: FILE: ./hal/odm_DIG.c:208:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #236: FILE: ./hal/odm_DIG.c:236:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #325: FILE: ./hal/odm_DIG.c:325:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #326: FILE: ./hal/odm_DIG.c:326:
    +	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #365: FILE: ./hal/odm_DIG.c:365:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #366: FILE: ./hal/odm_DIG.c:366:
    +	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #438: FILE: ./hal/odm_DIG.c:438:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #469: FILE: ./hal/odm_DIG.c:469:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #470: FILE: ./hal/odm_DIG.c:470:
    +	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #507: FILE: ./hal/odm_DIG.c:507:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #510: FILE: ./hal/odm_DIG.c:510:
    +	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #826: FILE: ./hal/odm_DIG.c:826:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #895: FILE: ./hal/odm_DIG.c:895:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #896: FILE: ./hal/odm_DIG.c:896:
    +	struct false_ALARM_STATISTICS * FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1065: FILE: ./hal/odm_DIG.c:1065:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1081: FILE: ./hal/odm_DIG.c:1081:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1082: FILE: ./hal/odm_DIG.c:1082:
    +	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1083: FILE: ./hal/odm_DIG.c:1083:
    +	struct false_ALARM_STATISTICS * pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1137: FILE: ./hal/odm_DIG.c:1137:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1138: FILE: ./hal/odm_DIG.c:1138:
    +	struct false_ALARM_STATISTICS * FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1198: FILE: ./hal/odm_DIG.c:1198:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1199: FILE: ./hal/odm_DIG.c:1199:
    +	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_DIG.c | 60 ++++++++++++-------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index 8179a963d2da..eca34f45aaa3 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -11,7 +11,7 @@
 
 void odm_NHMCounterStatisticsInit(void *pDM_VOID)
 {
-	struct DM_ODM_T *		pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T	*pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/* PHY parameters initialize for n series */
 	rtw_write16(pDM_Odm->Adapter, ODM_REG_NHM_TIMER_11N+2, 0x2710);	/* 0x894[31:16]= 0x2710	Time duration for NHM unit: 4us, 0x2710 =40ms */
@@ -27,7 +27,7 @@ void odm_NHMCounterStatisticsInit(void *pDM_VOID)
 
 void odm_NHMCounterStatistics(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/*  Get NHM report */
 	odm_GetNHMCounterStatistics(pDM_Odm);
@@ -38,7 +38,7 @@ void odm_NHMCounterStatistics(void *pDM_VOID)
 
 void odm_GetNHMCounterStatistics(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	u32 value32 = 0;
 
 	value32 = PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG_NHM_CNT_11N, bMaskDWord);
@@ -48,7 +48,7 @@ void odm_GetNHMCounterStatistics(void *pDM_VOID)
 
 void odm_NHMCounterStatisticsReset(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 0);
 	PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 1);
@@ -56,7 +56,7 @@ void odm_NHMCounterStatisticsReset(void *pDM_VOID)
 
 void odm_NHMBBInit(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	pDM_Odm->adaptivity_flag = 0;
 	pDM_Odm->tolerance_cnt = 3;
@@ -69,9 +69,9 @@ void odm_NHMBBInit(void *pDM_VOID)
 /*  */
 void odm_NHMBB(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	/* u8 test_status; */
-	/* struct false_ALARM_STATISTICS *pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt); */
+	/* struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt; */
 
 	pDM_Odm->NHMCurTxOkcnt =
 		*(pDM_Odm->pNumTxBytesUnicast)-pDM_Odm->NHMLastTxOkcnt;
@@ -133,7 +133,7 @@ void odm_NHMBB(void *pDM_VOID)
 
 void odm_SearchPwdBLowerBound(void *pDM_VOID, u8 IGI_target)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	u32 value32 = 0;
 	u8 cnt, IGI;
 	bool bAdjust = true;
@@ -205,7 +205,7 @@ void odm_SearchPwdBLowerBound(void *pDM_VOID, u8 IGI_target)
 
 void odm_AdaptivityInit(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	if (pDM_Odm->Carrier_Sense_enable == false)
 		pDM_Odm->TH_L2H_ini = 0xf7; /*  -7 */
@@ -233,7 +233,7 @@ void odm_AdaptivityInit(void *pDM_VOID)
 
 void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	s8 TH_L2H_dmc, TH_H2L_dmc;
 	s8 Diff, IGI_target;
 	bool EDCCA_State = false;
@@ -322,8 +322,8 @@ void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 
 void ODM_Write_DIG(void *pDM_VOID, u8 CurrentIGI)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	if (pDM_DigTable->bStopDIG) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("Stop Writing IGI\n"));
@@ -362,8 +362,8 @@ void odm_PauseDIG(
 	u8 IGIValue
 )
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	static bool bPaused;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG() =========>\n"));
@@ -435,7 +435,7 @@ void odm_PauseDIG(
 
 bool odm_DigAbort(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/* SupportAbility */
 	if (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT)) {
@@ -466,8 +466,8 @@ bool odm_DigAbort(void *pDM_VOID)
 
 void odm_DIGInit(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	pDM_DigTable->bStopDIG = false;
 	pDM_DigTable->bPSDInProgress = false;
@@ -504,10 +504,10 @@ void odm_DIGInit(void *pDM_VOID)
 
 void odm_DIG(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	/*  Common parameters */
-	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	bool FirstConnect, FirstDisConnect;
 	u8 DIG_MaxOfMin, DIG_Dynamic_MIN;
@@ -823,7 +823,7 @@ void odm_DIG(void *pDM_VOID)
 
 void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 
 	u8 RSSI_Lower = DM_DIG_MIN_NIC;   /* 0x1E or 0x1C */
@@ -892,8 +892,8 @@ void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 
 void odm_FalseAlarmCounterStatistics(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct false_ALARM_STATISTICS * FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct false_ALARM_STATISTICS *FalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	u32 ret_value;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT))
@@ -1062,7 +1062,7 @@ void odm_FAThresholdCheck(
 	u32 *dm_FA_thres
 )
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	if (pDM_Odm->bLinked && (bPerformance || bDFSBand)) {
 		/*  For NIC */
@@ -1078,9 +1078,9 @@ void odm_FAThresholdCheck(
 
 u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
-	struct false_ALARM_STATISTICS * pFalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct false_ALARM_STATISTICS *pFalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	u8 rx_gain_range_min = pDM_DigTable->rx_gain_range_min;
 
 	if (pFalseAlmCnt->Cnt_all > 10000) {
@@ -1134,8 +1134,8 @@ u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
 
 void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct false_ALARM_STATISTICS * FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct false_ALARM_STATISTICS *FalseAlmCnt = &pDM_Odm->FalseAlmCnt;
 	u8 CurCCK_CCAThres;
 
 
@@ -1195,8 +1195,8 @@ void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 
 void ODM_Write_CCK_CCA_Thres(void *pDM_VOID, u8 CurCCK_CCAThres)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
 
 	/* modify by Guo.Mingzhi 2012-01-03 */
 	if (pDM_DigTable->CurCCK_CCAThres != CurCCK_CCAThres)
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
