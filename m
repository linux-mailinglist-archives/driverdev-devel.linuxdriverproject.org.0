Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6B426D46A
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 09:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1302B86FC5;
	Thu, 17 Sep 2020 07:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j_zT14OK-bx7; Thu, 17 Sep 2020 07:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F9A286F8E;
	Thu, 17 Sep 2020 07:17:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A76C1BF2F2
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 07:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0746786F80
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 07:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id csZnUhmCkmVv for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 07:17:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6C9B186F78
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 07:17:12 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id k15so826396wrn.10
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 00:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7tNETdKrKKC4EeIiwJmoRhdNqEytWTikJ3McwzcmerE=;
 b=I66YaWyB15sQjUXcE47A1q6Niy/N5S5HvyXB03UwSD0T2DFKdWqofPeQUH058xmZcV
 WV6LqBFagrO+SZTKOdn4HReWhkDZfyOxWi8z1d8wXUuZDzIrvdn9OvL7f24N4OA1/Hls
 Dczcf8pCRClcUKIprTY0cD0zuV5nCuKZmQZ50dC8Ejr+V40AySVKcTQ3M2WImj+5DsOk
 7xhx6pf95sXAsDuJH6elh9o/SmMBfKeHQOO8l8jkk5nJ4zYL5ONPAlSr1XuM3f3k/h6O
 m4uMIf5boULWdPDMwyUmOgZgNbNXFQkXk55SXoZLISU5mqpSUqK67CIP+CsClMCvKPum
 jELA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7tNETdKrKKC4EeIiwJmoRhdNqEytWTikJ3McwzcmerE=;
 b=G4eDuxPsOxCduKSZRdn2Pnra+Yq52AfnqXaVKWiTqrsEk2Xa1i8sCXRk7VrxuLydt3
 vayMUtATFW6zcgC1WiaOAR1g4nlaT0DdEuJpiHwwpRrEQYHfvPTa4t8qZhDimZFBaAf2
 kI1hJnX+7S3TUQtyfUF6xU6l+EjVc9pgwvoPfRte2UjafF0c9jkHJWdhT7nwMX1pWaaD
 YEsUhVd5xlUEpe/uv3OWYce9qlGK5Z9iby1ET5I8WbYzFcnbFT5FvfcXG93boVQMFyRJ
 BpA91rUbzYRP7uzgNsN9swF0BT///xu3iR9PoHo/vqWgltWkyU0n3M212jFu/vBsM1/5
 P5mg==
X-Gm-Message-State: AOAM531W7YDj3TjKItBrJDjFMGkjZafnbOXW+VpBmpMtBKeJ22TfN3N8
 /LKV9csEZs7RPkH7Iy3PiXM=
X-Google-Smtp-Source: ABdhPJyhRB7fP3ty0zffYHi4zxHR4rArZnsLu1SH0PzJW0AIzUezTQYgQ73k9WxW/nBPCmCjQOu/lA==
X-Received: by 2002:adf:a4cc:: with SMTP id h12mr25160854wrb.123.1600327030585; 
 Thu, 17 Sep 2020 00:17:10 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-088-070-028-140.088.070.pools.vodafone-ip.de. [88.70.28.140])
 by smtp.gmail.com with ESMTPSA id t6sm41696271wre.30.2020.09.17.00.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 00:17:09 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: use __func__ in hal directory
Date: Thu, 17 Sep 2020 09:13:29 +0200
Message-Id: <20200917071330.31740-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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

Use __func__ instead of hardcoded function names to clear
checkpatch warnings.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/hal_intf.c      |  4 +-
 drivers/staging/rtl8188eu/hal/odm.c           | 60 +++++++++----------
 drivers/staging/rtl8188eu/hal/phy.c           |  2 +-
 drivers/staging/rtl8188eu/hal/pwrseqcmd.c     | 25 ++++----
 .../staging/rtl8188eu/hal/rtl8188e_hal_init.c |  2 +-
 .../staging/rtl8188eu/hal/rtl8188eu_xmit.c    |  2 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c   |  5 +-
 7 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/hal_intf.c b/drivers/staging/rtl8188eu/hal/hal_intf.c
index b8fecc952cfc..9585dffc63a3 100644
--- a/drivers/staging/rtl8188eu/hal/hal_intf.c
+++ b/drivers/staging/rtl8188eu/hal/hal_intf.c
@@ -23,7 +23,7 @@ uint rtw_hal_init(struct adapter *adapt)
 			rtw_hal_notch_filter(adapt, 1);
 	} else {
 		adapt->hw_init_completed = false;
-		DBG_88E("rtw_hal_init: hal__init fail\n");
+		DBG_88E("%s: hal__init fail\n", __func__);
 	}
 
 	RT_TRACE(_module_hal_init_c_, _drv_err_,
@@ -41,7 +41,7 @@ uint rtw_hal_deinit(struct adapter *adapt)
 	if (status == _SUCCESS)
 		adapt->hw_init_completed = false;
 	else
-		DBG_88E("\n rtw_hal_deinit: hal_init fail\n");
+		DBG_88E("\n %s: hal_init fail\n", __func__);
 
 	return status;
 }
diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index edc278e5744f..d6c4c7d023d1 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -249,7 +249,7 @@ void odm_CommonInfoSelfUpdate(struct odm_dm_struct *pDM_Odm)
 
 void odm_CmnInfoInit_Debug(struct odm_dm_struct *pDM_Odm)
 {
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoInit_Debug==>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("%s==>\n", __func__));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportPlatform=%d\n", pDM_Odm->SupportPlatform));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportAbility=0x%x\n", pDM_Odm->SupportAbility));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportInterface=%d\n", pDM_Odm->SupportInterface));
@@ -267,7 +267,7 @@ void odm_CmnInfoInit_Debug(struct odm_dm_struct *pDM_Odm)
 
 void odm_CmnInfoHook_Debug(struct odm_dm_struct *pDM_Odm)
 {
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoHook_Debug==>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("%s==>\n", __func__));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pNumTxBytesUnicast=%llu\n", *pDM_Odm->pNumTxBytesUnicast));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pNumRxBytesUnicast=%llu\n", *pDM_Odm->pNumRxBytesUnicast));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("pWirelessMode=0x%x\n", *pDM_Odm->pWirelessMode));
@@ -282,7 +282,7 @@ void odm_CmnInfoHook_Debug(struct odm_dm_struct *pDM_Odm)
 
 void odm_CmnInfoUpdate_Debug(struct odm_dm_struct *pDM_Odm)
 {
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoUpdate_Debug==>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("%s==>\n", __func__));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bWIFI_Direct=%d\n", pDM_Odm->bWIFI_Direct));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bWIFI_Display=%d\n", pDM_Odm->bWIFI_Display));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bLinked=%d\n", pDM_Odm->bLinked));
@@ -339,21 +339,21 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 	u8 dm_dig_max, dm_dig_min;
 	u8 CurrentIGI = pDM_DigTable->CurIGValue;
 
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG()==>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s()==>\n", __func__));
 	if ((!(pDM_Odm->SupportAbility & ODM_BB_DIG)) || (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT))) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD,
-			     ("odm_DIG() Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\n"));
+			     ("%s() Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\n", __func__));
 		return;
 	}
 
 	if (*pDM_Odm->pbScanInProcess) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG() Return: In Scan Progress\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s() Return: In Scan Progress\n", __func__));
 		return;
 	}
 
 	/* add by Neil Chen to avoid PSD is processing */
 	if (!pDM_Odm->bDMInitialGainEnable) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG() Return: PSD is Processing\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s() Return: PSD is Processing\n", __func__));
 		return;
 	}
 
@@ -383,18 +383,18 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 			else
 				DIG_Dynamic_MIN = pDM_Odm->RSSI_Min;
 			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD,
-				     ("odm_DIG() : bOneEntryOnly=true,  DIG_Dynamic_MIN=0x%x\n",
-				     DIG_Dynamic_MIN));
+				     ("%s() : bOneEntryOnly=true,  DIG_Dynamic_MIN=0x%x\n",
+				      __func__, DIG_Dynamic_MIN));
 			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD,
-				     ("odm_DIG() : pDM_Odm->RSSI_Min=%d\n",
-				     pDM_Odm->RSSI_Min));
+				     ("%s() : pDM_Odm->RSSI_Min=%d\n",
+				      __func__, pDM_Odm->RSSI_Min));
 		} else if (pDM_Odm->SupportAbility & ODM_BB_ANT_DIV) {
 			/* 1 Lower Bound for 88E AntDiv */
 			if (pDM_Odm->AntDivType == CG_TRX_HW_ANTDIV) {
 				DIG_Dynamic_MIN = (u8)pDM_DigTable->AntDiv_RSSI_max;
 				ODM_RT_TRACE(pDM_Odm, ODM_COMP_ANT_DIV, ODM_DBG_LOUD,
-					     ("odm_DIG(): pDM_DigTable->AntDiv_RSSI_max=%d\n",
-					     pDM_DigTable->AntDiv_RSSI_max));
+					     ("%s(): pDM_DigTable->AntDiv_RSSI_max=%d\n",
+					      __func__, pDM_DigTable->AntDiv_RSSI_max));
 			}
 		} else {
 			DIG_Dynamic_MIN = dm_dig_min;
@@ -402,7 +402,7 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 	} else {
 		pDM_DigTable->rx_gain_range_max = dm_dig_max;
 		DIG_Dynamic_MIN = dm_dig_min;
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG() : No Link\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s() : No Link\n", __func__));
 	}
 
 	/* 1 Modify DIG lower bound, deal with abnormally large false alarm */
@@ -433,11 +433,11 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 				if ((pDM_DigTable->ForbiddenIGI - 1) < DIG_Dynamic_MIN) { /* DM_DIG_MIN) */
 					pDM_DigTable->ForbiddenIGI = DIG_Dynamic_MIN; /* DM_DIG_MIN; */
 					pDM_DigTable->rx_gain_range_min = DIG_Dynamic_MIN; /* DM_DIG_MIN; */
-					ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Normal Case: At Lower Bound\n"));
+					ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Normal Case: At Lower Bound\n", __func__));
 				} else {
 					pDM_DigTable->ForbiddenIGI--;
 					pDM_DigTable->rx_gain_range_min = (pDM_DigTable->ForbiddenIGI + 1);
-					ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Normal Case: Approach Lower Bound\n"));
+					ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Normal Case: Approach Lower Bound\n", __func__));
 				}
 			} else {
 				pDM_DigTable->LargeFAHit = 0;
@@ -445,12 +445,12 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 		}
 	}
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD,
-		     ("odm_DIG(): pDM_DigTable->LargeFAHit=%d\n",
-		     pDM_DigTable->LargeFAHit));
+		     ("%s(): pDM_DigTable->LargeFAHit=%d\n",
+		      __func__, pDM_DigTable->LargeFAHit));
 
 	/* 1 Adjust initial gain by false alarm */
 	if (pDM_Odm->bLinked) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): DIG AfterLink\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): DIG AfterLink\n", __func__));
 		if (FirstConnect) {
 			CurrentIGI = pDM_Odm->RSSI_Min;
 			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("DIG: First Connect\n"));
@@ -463,10 +463,10 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 				CurrentIGI = CurrentIGI - 2;/* pDM_DigTable->CurIGValue =pDM_DigTable->PreIGValue-1; */
 		}
 	} else {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): DIG BeforeLink\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): DIG BeforeLink\n", __func__));
 		if (FirstDisConnect) {
 			CurrentIGI = pDM_DigTable->rx_gain_range_min;
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): First DisConnect\n"));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): First DisConnect\n", __func__));
 		} else {
 			/* 2012.03.30 LukeLee: enable DIG before link but with very high thresholds */
 			if (pFalseAlmCnt->Cnt_all > 10000)
@@ -475,10 +475,10 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 				CurrentIGI = CurrentIGI + 1;/* pDM_DigTable->CurIGValue = pDM_DigTable->PreIGValue+1; */
 			else if (pFalseAlmCnt->Cnt_all < 500)
 				CurrentIGI = CurrentIGI - 1;/* pDM_DigTable->CurIGValue =pDM_DigTable->PreIGValue-1; */
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): England DIG\n"));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): England DIG\n", __func__));
 		}
 	}
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): DIG End Adjust IGI\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): DIG End Adjust IGI\n", __func__));
 	/* 1 Check initial gain by upper/lower bound */
 	if (CurrentIGI > pDM_DigTable->rx_gain_range_max)
 		CurrentIGI = pDM_DigTable->rx_gain_range_max;
@@ -486,10 +486,10 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 		CurrentIGI = pDM_DigTable->rx_gain_range_min;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD,
-		     ("odm_DIG(): rx_gain_range_max=0x%x, rx_gain_range_min=0x%x\n",
-		     pDM_DigTable->rx_gain_range_max, pDM_DigTable->rx_gain_range_min));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): TotalFA=%d\n", pFalseAlmCnt->Cnt_all));
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): CurIGValue=0x%x\n", CurrentIGI));
+		     ("%s(): rx_gain_range_max=0x%x, rx_gain_range_min=0x%x\n",
+		      __func__, pDM_DigTable->rx_gain_range_max, pDM_DigTable->rx_gain_range_min));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): TotalFA=%d\n", __func__, pFalseAlmCnt->Cnt_all));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): CurIGValue=0x%x\n", __func__, CurrentIGI));
 
 	/* 2 High power RSSI threshold */
 
@@ -557,7 +557,7 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 
 	FalseAlmCnt->Cnt_CCA_all = FalseAlmCnt->Cnt_OFDM_CCA + FalseAlmCnt->Cnt_CCK_CCA;
 
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_FA_CNT, ODM_DBG_LOUD, ("Enter odm_FalseAlarmCounterStatistics\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_FA_CNT, ODM_DBG_LOUD, ("Enter %s\n", __func__));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_FA_CNT, ODM_DBG_LOUD,
 		     ("Cnt_Fast_Fsync=%d, Cnt_SB_Search_fail=%d\n",
 		     FalseAlmCnt->Cnt_Fast_Fsync, FalseAlmCnt->Cnt_SB_Search_fail));
@@ -1015,13 +1015,13 @@ void odm_EdcaTurboCheck(struct odm_dm_struct *pDM_Odm)
 	/*  2011/09/29 MH In HW integration first stage, we provide 4 different handle to operate */
 	/*  at the same time. In the stage2/3, we need to prive universal interface and merge all */
 	/*  HW dynamic mechanism. */
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("odm_EdcaTurboCheck========================>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("%s========================>\n", __func__));
 
 	if (!(pDM_Odm->SupportAbility & ODM_MAC_EDCA_TURBO))
 		return;
 
 	odm_EdcaTurboCheckCE(pDM_Odm);
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("<========================odm_EdcaTurboCheck\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("<========================%s\n", __func__));
 }	/*  odm_CheckEdcaTurbo */
 
 void odm_EdcaTurboCheckCE(struct odm_dm_struct *pDM_Odm)
diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index db6f05b77a70..8d1267bf0848 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -345,7 +345,7 @@ static void dm_txpwr_track_setpwr(struct odm_dm_struct *dm_odm)
 {
 	if (dm_odm->BbSwingFlagOfdm || dm_odm->BbSwingFlagCck) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
-			     ("dm_txpwr_track_setpwr CH=%d\n", *dm_odm->pChannel));
+			     ("%s CH=%d\n", __func__, *dm_odm->pChannel));
 		phy_set_tx_power_level(dm_odm->Adapter, *dm_odm->pChannel);
 		dm_odm->BbSwingFlagOfdm = false;
 		dm_odm->BbSwingFlagCck = false;
diff --git a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
index 77edd7ad19a1..34784943a7d1 100644
--- a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
+++ b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
@@ -26,25 +26,26 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 		pwrcfgcmd = pwrseqcmd[aryidx];
 
 		RT_TRACE(_module_hal_init_c_, _drv_info_,
-			 ("rtl88eu_pwrseqcmdparsing: offset(%#x) cut_msk(%#x)"
+			 ("%s: offset(%#x) cut_msk(%#x)"
 			  " cmd(%#x)"
 			  "msk(%#x) value(%#x)\n",
-			 GET_PWR_CFG_OFFSET(pwrcfgcmd),
-			 GET_PWR_CFG_CUT_MASK(pwrcfgcmd),
-			 GET_PWR_CFG_CMD(pwrcfgcmd),
-			 GET_PWR_CFG_MASK(pwrcfgcmd),
-			 GET_PWR_CFG_VALUE(pwrcfgcmd)));
+			  __func__,
+			  GET_PWR_CFG_OFFSET(pwrcfgcmd),
+			  GET_PWR_CFG_CUT_MASK(pwrcfgcmd),
+			  GET_PWR_CFG_CMD(pwrcfgcmd),
+			  GET_PWR_CFG_MASK(pwrcfgcmd),
+			  GET_PWR_CFG_VALUE(pwrcfgcmd)));
 
 		/* Only Handle the command whose CUT is matched */
 		if (GET_PWR_CFG_CUT_MASK(pwrcfgcmd) & cut_vers) {
 			switch (GET_PWR_CFG_CMD(pwrcfgcmd)) {
 			case PWR_CMD_READ:
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_READ\n"));
+					 ("%s: PWR_CMD_READ\n", __func__));
 				break;
 			case PWR_CMD_WRITE:
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_WRITE\n"));
+					 ("%s: PWR_CMD_WRITE\n", __func__));
 				offset = GET_PWR_CFG_OFFSET(pwrcfgcmd);
 
 				/*  Read the value from system register */
@@ -59,7 +60,7 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 				break;
 			case PWR_CMD_POLLING:
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_POLLING\n"));
+					 ("%s: PWR_CMD_POLLING\n", __func__));
 
 				poll_bit = false;
 				offset = GET_PWR_CFG_OFFSET(pwrcfgcmd);
@@ -81,7 +82,7 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 				break;
 			case PWR_CMD_DELAY:
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_DELAY\n"));
+					 ("%s: PWR_CMD_DELAY\n", __func__));
 				if (GET_PWR_CFG_VALUE(pwrcfgcmd) == PWRSEQ_DELAY_US)
 					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd));
 				else
@@ -90,11 +91,11 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 			case PWR_CMD_END:
 				/* When this command is parsed, end the process */
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_END\n"));
+					 ("%s: PWR_CMD_END\n", __func__));
 				return true;
 			default:
 				RT_TRACE(_module_hal_init_c_, _drv_err_,
-					 ("rtl88eu_pwrseqcmdparsing: Unknown CMD!!\n"));
+					 ("%s: Unknown CMD!!\n", __func__));
 				break;
 			}
 		}
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 2baef9a285c0..e640c2256ab9 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -95,7 +95,7 @@ void _8051Reset88E(struct adapter *padapter)
 	u1bTmp = usb_read8(padapter, REG_SYS_FUNC_EN + 1);
 	usb_write8(padapter, REG_SYS_FUNC_EN + 1, u1bTmp & (~BIT(2)));
 	usb_write8(padapter, REG_SYS_FUNC_EN + 1, u1bTmp | (BIT(2)));
-	DBG_88E("=====> _8051Reset88E(): 8051 reset success .\n");
+	DBG_88E("=====> %s(): 8051 reset success .\n", __func__);
 }
 
 void rtl8188e_InitializeFirmwareVars(struct adapter *padapter)
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index 52023551ab30..2866283c211d 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -346,7 +346,7 @@ static s32 rtw_dump_xframe(struct adapter *adapt, struct xmit_frame *pxmitframe)
 		rtw_issue_addbareq_cmd(adapt, pxmitframe);
 	mem_addr = pxmitframe->buf_addr;
 
-	RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_dump_xframe()\n"));
+	RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("%s()\n", __func__));
 
 	for (t = 0; t < pattrib->nr_frags; t++) {
 		if (inner_ret != _SUCCESS && ret == _SUCCESS)
diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 114638f6f719..c25b2275266c 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -876,7 +876,7 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 {
 	u8 val8;
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("CardDisableRTL8188EU\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("%s\n", __func__));
 
 	/* Stop Tx Report Timer. 0x4EC[Bit1]=b'0 */
 	val8 = usb_read8(Adapter, REG_TX_RPT_CTRL);
@@ -1038,8 +1038,7 @@ static void Hal_EfuseParseMACAddr_8188EU(struct adapter *adapt, u8 *hwinfo, bool
 		memcpy(eeprom->mac_addr, &hwinfo[EEPROM_MAC_ADDR_88EU], ETH_ALEN);
 	}
 	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_,
-		 ("Hal_EfuseParseMACAddr_8188EU: Permanent Address = %pM\n",
-		 eeprom->mac_addr));
+		 ("%s: Permanent Address = %pM\n", __func__, eeprom->mac_addr));
 }
 
 static void readAdapterInfo_8188EU(struct adapter *adapt)
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
