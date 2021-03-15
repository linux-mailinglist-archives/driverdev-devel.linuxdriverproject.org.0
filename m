Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B03233C3A3
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:10:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E1104E3C5;
	Mon, 15 Mar 2021 17:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MD5H7ieFVbbs; Mon, 15 Mar 2021 17:10:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1750B47489;
	Mon, 15 Mar 2021 17:10:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE4D91BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A101834B6
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mD7rSM_Pxvmy for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBD0183486
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:27 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id p8so67493943ejb.10
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=TM+TDPMBbVhI7kpNroM//635XzXNtISDP6Yzvb5Is0k=;
 b=WFEldDqI53G8Lo11f7p0Liu3b4WXReVxttN/ggxvINGPawznMuJ68tCsrZKSeBKtG8
 HH/jlLCsVWri66a4NGJsh/Vi1snJ/JwKR2NxnDNKKzZikuyUBINSQ8OrB8IKVtbEZlK7
 wYaeFy7uYEmTUnQFnCwQVJ2LoEhBWoVbZVTdrJqOKJTexi+FosPZppU/k90/yHi6Nsst
 snQfFT9rzWSdVkIKfB2feVThIFp9S8vocsVphglJOfq3EOTCBl0XUreKZTogIrdYlULh
 B2OkBI3IV2TkhZ/VCPEi9cyAkqcaH7bGTr+KDnuapX04dW4Kiw54lfGsCGgQWP40A/g4
 OLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TM+TDPMBbVhI7kpNroM//635XzXNtISDP6Yzvb5Is0k=;
 b=CUhiMrU03/1SD1O7H7LO736aJnELd53iYxdjNOU+xjrVk/l2tYcwVVV8BUH4YX41ik
 XA21QMJAc4R6kW7vnROj16PcOViOOQzD71zHqsELSpe79LfvFzK4ZPp6iGaV3IVwsT7m
 0eZvXA9uqRrT03DMgirhQYLVIH9dtfue0gvIxKMaayJ4KcDB2gMdLfDXtQYVPCDyjidm
 k7kgDpg62yFjN8Alrwbcnh4cKrB+nldAxFW3TubotQVVR8R1hH9teFPmRhMMi8W/nSgC
 K440gJvVvZLxvI+Yattd2RKP3vRMFXkZn+L70JmeAhYZAmgy8YyIChNfBFjr+vnxj1lw
 KKYQ==
X-Gm-Message-State: AOAM533wz9QU/Xz6x9j4bkwnrQO6CgokXLQEvs7MuIfKb2QyoYcFWZ9F
 ZdkM3UM46H9iD9pAMUdhK8g=
X-Google-Smtp-Source: ABdhPJxhWpirC+stR5eeY1UI6TrW/AqYTuY1kp+SiLhiqP8Oc/9l64em6CEpvDDVMG13PrrrK4za8A==
X-Received: by 2002:a17:906:b747:: with SMTP id
 fx7mr25401825ejb.474.1615827986037; 
 Mon, 15 Mar 2021 10:06:26 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:25 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 22/57] Staging: rtl8723bs: fix spaces in odm_CfoTracking.c
Date: Mon, 15 Mar 2021 18:05:43 +0100
Message-Id: <20210315170618.2566-23-marcocesati@gmail.com>
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
    #12: FILE: ./hal/odm_CfoTracking.c:12:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #13: FILE: ./hal/odm_CfoTracking.c:13:
    +	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #42: FILE: ./hal/odm_CfoTracking.c:42:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #52: FILE: ./hal/odm_CfoTracking.c:52:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #53: FILE: ./hal/odm_CfoTracking.c:53:
    +	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #70: FILE: ./hal/odm_CfoTracking.c:70:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #82: FILE: ./hal/odm_CfoTracking.c:82:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #83: FILE: ./hal/odm_CfoTracking.c:83:
    +	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #94: FILE: ./hal/odm_CfoTracking.c:94:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #95: FILE: ./hal/odm_CfoTracking.c:95:
    +	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #121: FILE: ./hal/odm_CfoTracking.c:121:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #122: FILE: ./hal/odm_CfoTracking.c:122:
    +	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #300: FILE: ./hal/odm_CfoTracking.c:300:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #302: FILE: ./hal/odm_CfoTracking.c:302:
    +	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/odm_CfoTracking.c   | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index a70b673bb4be..fc059822edd9 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -9,8 +9,8 @@
 
 static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->CrystalCap == CrystalCap)
 		return;
@@ -39,7 +39,7 @@ static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 
 static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
@@ -49,8 +49,8 @@ static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 
 static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->bATCStatus == ATCStatus)
 		return;
@@ -67,7 +67,7 @@ static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
 static bool odm_GetATCStatus(void *pDM_VOID)
 {
 	bool ATCStatus;
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	ATCStatus = (bool)PHY_QueryBBReg(
 		pDM_Odm->Adapter,
@@ -79,8 +79,8 @@ static bool odm_GetATCStatus(void *pDM_VOID)
 
 void ODM_CfoTrackingReset(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
 	pCfoTrack->bAdjust = true;
@@ -91,8 +91,8 @@ void ODM_CfoTrackingReset(void *pDM_VOID)
 
 void ODM_CfoTrackingInit(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap =
 		pCfoTrack->CrystalCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
@@ -118,8 +118,8 @@ void ODM_CfoTrackingInit(void *pDM_VOID)
 
 void ODM_CfoTracking(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	int CFO_kHz_A, CFO_kHz_B, CFO_ave = 0;
 	int CFO_ave_diff;
 	int CrystalCap = (int)pCfoTrack->CrystalCap;
@@ -297,9 +297,9 @@ void ODM_CfoTracking(void *pDM_VOID)
 
 void ODM_ParsingCFO(void *pDM_VOID, void *pPktinfo_VOID, s8 *pcfotail)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct odm_packet_info *pPktinfo = pPktinfo_VOID;
-	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct CFO_TRACKING *pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	u8 i;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_CFO_TRACKING))
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
