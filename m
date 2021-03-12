Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCF9338746
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:27:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0ED243251;
	Fri, 12 Mar 2021 08:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgwcRDuqh7JD; Fri, 12 Mar 2021 08:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 182AF4150B;
	Fri, 12 Mar 2021 08:27:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 640F61BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F4C14ED4E
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t9siPSCvRSEa for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F5044ED4D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:51 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 u5-20020a7bcb050000b029010e9316b9d5so11683763wmj.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=onA0iuA1FY+0nw1v6sZ5NGRnS9S6ku0w5OfnT6updD4=;
 b=pC2NvqPmLmqWJPw7IN6qj3eiS10IwAcK+AETAQ0b6QHCYJhUR1Nrpdpz1Sr67SOaY3
 9tlJ83toqWYr2DSQS0hi2LXBXVmzhcyA+QWmvNOiqrTMH84VrmoLTkr5uEEHc5aq/x9I
 7RwjUHmCVZYzGfvaVFGV6G8usbByqMsAdzTyx9K/PLcxrCFr5WKJB+dgicrOWuCQJNGM
 wGZgWGM4ySGe4GF7msU6PKUoLws+LCy4BqhLWJInGs5uoctYzqJrWnSyUIDc5vw+v/yZ
 fcqEDsQ41csgJzPJZdVvf3uQwAzx93Wz3f93Fp+EWMNGtggcF9Garkx1kQir3hp+TxWM
 EGsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=onA0iuA1FY+0nw1v6sZ5NGRnS9S6ku0w5OfnT6updD4=;
 b=XF+1v9zQaNtSe992BvtzklvBAJD7Wf4hmnJ59GqMujxoNtuWHm5X0AMLCtTQKBcron
 jjYZ74EPN2YoDDszDJGdVsv5c0LGD3pPO2tjDvMK1q7+KR8F5cIoP7bm4wyeRS8OgoB5
 znoFdPM8z50e5ENn+UuMZhxiTvGfHNtxX5RdEGlC7cdRPR4dpHWOve6ahbEOAegroLsj
 wtVrdQ8N4sAd2QNxXrGufQhXXVfM9KcFU11H+vqpI/C72bi3UVr3GPBmQW+jbDJk+sAh
 PqyCyfzhmfYSB3OnaE72D6uC/1H9pn6SR6vn2+XrQXm4e+/WrL0hgXUXZ2YuXsBAlOkx
 yNYQ==
X-Gm-Message-State: AOAM533NE144sA/toBN7NNydI9K6yuTvRLnv6DOqAUGKNWjGtreFYYNf
 o3J4DMy/0KVyEEZx5z9HFZ88jsZzCHU=
X-Google-Smtp-Source: ABdhPJymjEEe6/Tuu2ChmQf0s+r3Rj2cDPFsyIImBXVd747VssS8GgYxiL5pmWLSNmfG29lwCIpgjA==
X-Received: by 2002:a1c:4143:: with SMTP id o64mr11907188wma.50.1615537609359; 
 Fri, 12 Mar 2021 00:26:49 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:49 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 04/33] staging: rtl8723bs: remove typedefs in odm_CfoTracking.h
Date: Fri, 12 Mar 2021 09:26:09 +0100
Message-Id: <20210312082638.25512-5-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #15: FILE: hal/odm_CfoTracking.h:15:
    +typedef struct _CFO_TRACKING_ {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h             |  2 +-
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 12 ++++++------
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.h |  4 ++--
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 494792162980..0b8693a9f862 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1119,7 +1119,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	false_ALARM_STATISTICS FlaseAlmCntBuddyAdapter;
 	struct SWAT_T DM_SWAT_Table;
 	bool RSSI_test;
-	CFO_TRACKING DM_CfoTrack;
+	struct CFO_TRACKING DM_CfoTrack;
 
 	EDCA_T DM_EDCA_Table;
 	u32 WMMEDCA_BE;
diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index f1dd2df03730..a70b673bb4be 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -10,7 +10,7 @@
 static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->CrystalCap == CrystalCap)
 		return;
@@ -50,7 +50,7 @@ static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	if (pCfoTrack->bATCStatus == ATCStatus)
 		return;
@@ -80,7 +80,7 @@ static bool odm_GetATCStatus(void *pDM_VOID)
 void ODM_CfoTrackingReset(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
 	pCfoTrack->bAdjust = true;
@@ -92,7 +92,7 @@ void ODM_CfoTrackingReset(void *pDM_VOID)
 void ODM_CfoTrackingInit(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
 
 	pCfoTrack->DefXCap =
 		pCfoTrack->CrystalCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
@@ -119,7 +119,7 @@ void ODM_CfoTrackingInit(void *pDM_VOID)
 void ODM_CfoTracking(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	int CFO_kHz_A, CFO_kHz_B, CFO_ave = 0;
 	int CFO_ave_diff;
 	int CrystalCap = (int)pCfoTrack->CrystalCap;
@@ -299,7 +299,7 @@ void ODM_ParsingCFO(void *pDM_VOID, void *pPktinfo_VOID, s8 *pcfotail)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct odm_packet_info *pPktinfo = pPktinfo_VOID;
-	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
+	struct CFO_TRACKING * pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	u8 i;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_CFO_TRACKING))
diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.h b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.h
index 81db63efe286..3c4e286436b8 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.h
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.h
@@ -12,7 +12,7 @@
 #define		CFO_TH_XTAL_LOW			10		/*  kHz */
 #define		CFO_TH_ATC			80		/*  kHz */
 
-typedef struct _CFO_TRACKING_ {
+struct CFO_TRACKING {
 	bool bATCStatus;
 	bool largeCFOHit;
 	bool bAdjust;
@@ -25,7 +25,7 @@ typedef struct _CFO_TRACKING_ {
 
 	bool bForceXtalCap;
 	bool bReset;
-} CFO_TRACKING, *PCFO_TRACKING;
+};
 
 void ODM_CfoTrackingReset(void *pDM_VOID
 );
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
