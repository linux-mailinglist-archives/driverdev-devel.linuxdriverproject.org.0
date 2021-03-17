Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D985433FB23
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:28:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 830CD6FA69;
	Wed, 17 Mar 2021 22:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWgBkKqGBMEn; Wed, 17 Mar 2021 22:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B0586F998;
	Wed, 17 Mar 2021 22:28:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 247601BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F0D94EDE7
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kzD5l8_hVwS6 for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A8F64EDD8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:48 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id h13so4201833eds.5
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=tIufnzTksrsrPsiJmin9noAqFjjtWFJHpFNMv+vJjMI=;
 b=jdFccu/gU6GkunZSQ+MbgxRCf7pYwIc8H2LYd5Uq8IB+F92VpGwHcKMoftNBpK1ysX
 J2Y0ws1I7Kz38ZXqkj7jBgXVkb823m4YLr0NG/KqRIv8xrSPA/P2FId1EQ/NU66eKrzm
 m8uJ/X3CPv8Gc19BYiQoJoLEj4jAAAUlzQ31ncS4py8CiwXqM9I6Ja+4uRQ5uRLCWCYY
 83OSx5t4x43x9SdV1u3Vyle7dSFF4KemCmXz581zcNILcRwoz5MSoLFwqCxq8bCQrKgo
 BIbcnc4cBHe8wVGS2m6lzYMF+m2zUMc7n1aXivog7uqj9hQ+6xYP3ezkgsBwww0Tz7iT
 aZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tIufnzTksrsrPsiJmin9noAqFjjtWFJHpFNMv+vJjMI=;
 b=IJn1j3PwznFkAn1W+lJU2tmKDVljZkrEejBfbdmJV9ClGGSisw/w8ad2ixtmnIxRHC
 Tf2wTVci3oS8sVOenWEiUaMuCu1hSAhuVBOrm5O7J9V2mfJ52K5+tjWOULJ/6yxRqGYG
 EEPXiib2AyubIFetuGR29D0OT7WFTjBtGiA2WS01jfFhKSVBYY/BggiyrPVNUMFMUTPW
 TsShHSw2Sa3uZ501q0pAJDrXvv/ZGe97VlGPwU9nioVzpAB5VaSEG72W9jquSNHorpGJ
 hk5Q+eq6l3uCG3ybhqyfNuGgMsaSy/P07qLYmg+K4E4etHioutKdmF6dLbkxz/DSG14C
 Bkow==
X-Gm-Message-State: AOAM533momeXJpOqemv+hEvJUxRxcUWcyIBc+43RqdGm+Q60yfEqX4fy
 9Qf/RjB+opw78Mqr4HXl+IY=
X-Google-Smtp-Source: ABdhPJwQrq8fSe6Zf8X3gLLJlYXE5XLk0++2xPiST2ypQjfkaSaLRsFCeoXFfscXKgBPNbwJFxcmRA==
X-Received: by 2002:a05:6402:1350:: with SMTP id
 y16mr44585331edw.309.1616019706404; 
 Wed, 17 Mar 2021 15:21:46 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:46 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 38/43] Staging: rtl8723bs: fix names in odm_CfoTracking.h
Date: Wed, 17 Mar 2021 23:21:25 +0100
Message-Id: <20210317222130.29528-39-marcocesati@gmail.com>
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
in hal/odm_CfoTracking.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h             |  2 +-
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 12 ++++++------
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.h |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 1dda34ffdad3..932a5b357877 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1119,7 +1119,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	struct false_ALARM_STATISTICS FlaseAlmCntBuddyAdapter;
 	struct SWAT_T DM_SWAT_Table;
 	bool RSSI_test;
-	struct CFO_TRACKING DM_CfoTrack;
+	struct cfo_tracking DM_CfoTrack;
 
 	struct edca_t DM_EDCA_Table;
 	u32 WMMEDCA_BE;
diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index fc059822edd9..edfdd9101008 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -10,7 +10,7 @@
 static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->CrystalCap == CrystalCap)
 		return;
@@ -50,7 +50,7 @@ static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->bATCStatus == ATCStatus)
 		return;
@@ -80,7 +80,7 @@ static bool odm_GetATCStatus(void *pDM_VOID)
 void ODM_CfoTrackingReset(void *pDM_VOID)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
 	pCfoTrack->bAdjust = true;
@@ -92,7 +92,7 @@ void ODM_CfoTrackingReset(void *pDM_VOID)
 void ODM_CfoTrackingInit(void *pDM_VOID)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap =
 		pCfoTrack->CrystalCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
@@ -119,7 +119,7 @@ void ODM_CfoTrackingInit(void *pDM_VOID)
 void ODM_CfoTracking(void *pDM_VOID)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	int CFO_kHz_A, CFO_kHz_B, CFO_ave = 0;
 	int CFO_ave_diff;
 	int CrystalCap = (int)pCfoTrack->CrystalCap;
@@ -299,7 +299,7 @@ void ODM_ParsingCFO(void *pDM_VOID, void *pPktinfo_VOID, s8 *pcfotail)
 {
 	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct odm_packet_info *pPktinfo = pPktinfo_VOID;
-	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct cfo_tracking *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	u8 i;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_CFO_TRACKING))
diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.h b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.h
index 3c4e286436b8..bb00d8c893bd 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.h
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.h
@@ -12,7 +12,7 @@
 #define		CFO_TH_XTAL_LOW			10		/*  kHz */
 #define		CFO_TH_ATC			80		/*  kHz */
 
-struct CFO_TRACKING {
+struct cfo_tracking {
 	bool bATCStatus;
 	bool largeCFOHit;
 	bool bAdjust;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
