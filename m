Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E08D233C394
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:10:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87C526F504;
	Mon, 15 Mar 2021 17:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xTH0xeM_5muC; Mon, 15 Mar 2021 17:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1C34605A5;
	Mon, 15 Mar 2021 17:10:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35D3B1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1D6C6F504
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RHF3jJ7KFt1E for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 027316F557
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:26 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id ci14so67357171ejc.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ZOU05KhefGus0wVRdtC2kR2CBJ6q/zRch4wBgEORKk0=;
 b=SuaO8Ga8zK9ye4iptJGXtOqD6rlyP+AaYnfAhpQAUxtWV5uCfHilggOPcsg40fkD7n
 p8YkL0kh+sLhtDfx/uC1Oq28aNBje6qgUIkvAwT1m4X5XuTM/MwTJ9cBTm02Aiz8/Szw
 ZtKyXA2ckDtVZLlMUQ304zzVjpZGiqSUO5Puk/Ylau+FWZy+3gXZ9GK/g46A6DuSH1cC
 HrGVjM1njfnF2rlzTbzZoVWwcs/8B6+waYLHhE9nNJoShkzgShad8zZleadvqTJlCnao
 aPmNOWlDrqOIRfnmWPRHd2WRtpA53tPTij3hKQ5fr79ZyL6JXb+dBzfKiTrrHOSf2k1i
 QQpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZOU05KhefGus0wVRdtC2kR2CBJ6q/zRch4wBgEORKk0=;
 b=tKn1OD2NESuIdzdDvKy8JSgYaToyRlOdTB3/xUsvRIerpjk2tKgvyKIxthGjr8pF9u
 ZBDBXe1CLbpI3iVmiZR5c+Fann/0ZoQ50A81gO0A9wUz8/iq29FS6kIe3N5e8rBUNP13
 Umm/sEarhGmbV6d8rpTsqhPJaiZg4BBjwC3gkxdu2D88CYwuzyGaI1M3ED8hZIBP2yuc
 m2OXbx07+G3Q5luU+U97kaKfSml067mRhpfN43PJ6BPG+G544KkTQ6pDHQEoMqCRPcyd
 9OzY6Hu51m+qz0L3v4M+fEL+xCAjhi1M9AM+aJlolaWZMvtG+8rDyYjscqPfZtXOTH/L
 qXRw==
X-Gm-Message-State: AOAM53082M58V1+HvnLn8MpDgSKfxSH74/JLkZSigmDEGHRpm9FRcx1E
 6k0+Hha18D9Bp1cD4qvC1Ec=
X-Google-Smtp-Source: ABdhPJzAEB42fXqIx5OwDgZIQBnNQfAJ4IpewgWImtH4allyfZ5Law28p/MDAaurrh86f8bcYaJ7eg==
X-Received: by 2002:a17:906:3395:: with SMTP id
 v21mr24738289eja.322.1615827985183; 
 Mon, 15 Mar 2021 10:06:25 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:24 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 21/57] Staging: rtl8723bs: fix spaces in odm.h
Date: Mon, 15 Mar 2021 18:05:42 +0100
Message-Id: <20210315170618.2566-22-marcocesati@gmail.com>
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
    #1371: FILE: ./hal/odm.h:1371:
    +void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1374: FILE: ./hal/odm.h:1374:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1382: FILE: ./hal/odm.h:1382:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1388: FILE: ./hal/odm.h:1388:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1398: FILE: ./hal/odm.h:1398:
    +void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1400: FILE: ./hal/odm.h:1400:
    +void ODM_DMInit(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1402: FILE: ./hal/odm.h:1402:
    +void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm); /*  For common use in the future */

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1404: FILE: ./hal/odm.h:1404:
    +void ODM_CmnInfoInit(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1406: FILE: ./hal/odm.h:1406:
    +void ODM_CmnInfoHook(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1409: FILE: ./hal/odm.h:1409:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1415: FILE: ./hal/odm.h:1415:
    +void ODM_CmnInfoUpdate(struct DM_ODM_T * pDM_Odm, u32 CmnInfo, u64 Value);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1417: FILE: ./hal/odm.h:1417:
    +void ODM_InitAllTimers(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1419: FILE: ./hal/odm.h:1419:
    +void ODM_CancelAllTimers(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1421: FILE: ./hal/odm.h:1421:
    +void ODM_ReleaseAllTimers(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1424: FILE: ./hal/odm.h:1424:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1430: FILE: ./hal/odm.h:1430:
    +void ODM_DynamicARFBSelect(struct DM_ODM_T * pDM_Odm, u8 rate, bool Collision_State);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h | 32 ++++++++++++++---------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 8b8fe2c406f5..8f457b0ea70d 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1368,10 +1368,10 @@ extern  u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE];
 /* Remove BB power saving by Yuchen */
 
 #define dm_CheckTXPowerTracking ODM_TXPowerTrackingCheck
-void ODM_TXPowerTrackingCheck(struct DM_ODM_T * pDM_Odm);
+void ODM_TXPowerTrackingCheck(struct DM_ODM_T *pDM_Odm);
 
 bool ODM_RAStateCheck(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	s32	RSSI,
 	bool bForceUpdate,
 	u8 *pRATRState
@@ -1379,13 +1379,13 @@ bool ODM_RAStateCheck(
 
 #define dm_SWAW_RSSI_Check	ODM_SwAntDivChkPerPktRssi
 void ODM_SwAntDivChkPerPktRssi(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u8 StationID,
 	struct odm_phy_info *pPhyInfo
 );
 
 u32 ODM_Get_Rate_Bitmap(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u32 macid,
 	u32 ra_mask,
 	u8 rssi_level
@@ -1395,38 +1395,38 @@ u32 ODM_Get_Rate_Bitmap(
 BEAMFORMING_CAP Beamforming_GetEntryBeamCapByMacId(PMGNT_INFO pMgntInfo, u8 MacId);
 #endif
 
-void odm_TXPowerTrackingInit(struct DM_ODM_T * pDM_Odm);
+void odm_TXPowerTrackingInit(struct DM_ODM_T *pDM_Odm);
 
-void ODM_DMInit(struct DM_ODM_T * pDM_Odm);
+void ODM_DMInit(struct DM_ODM_T *pDM_Odm);
 
-void ODM_DMWatchdog(struct DM_ODM_T * pDM_Odm); /*  For common use in the future */
+void ODM_DMWatchdog(struct DM_ODM_T *pDM_Odm); /*  For common use in the future */
 
-void ODM_CmnInfoInit(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value);
+void ODM_CmnInfoInit(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, u32 Value);
 
-void ODM_CmnInfoHook(struct DM_ODM_T * pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue);
+void ODM_CmnInfoHook(struct DM_ODM_T *pDM_Odm, enum ODM_CMNINFO_E CmnInfo, void *pValue);
 
 void ODM_CmnInfoPtrArrayHook(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	enum ODM_CMNINFO_E CmnInfo,
 	u16 Index,
 	void *pValue
 );
 
-void ODM_CmnInfoUpdate(struct DM_ODM_T * pDM_Odm, u32 CmnInfo, u64 Value);
+void ODM_CmnInfoUpdate(struct DM_ODM_T *pDM_Odm, u32 CmnInfo, u64 Value);
 
-void ODM_InitAllTimers(struct DM_ODM_T * pDM_Odm);
+void ODM_InitAllTimers(struct DM_ODM_T *pDM_Odm);
 
-void ODM_CancelAllTimers(struct DM_ODM_T * pDM_Odm);
+void ODM_CancelAllTimers(struct DM_ODM_T *pDM_Odm);
 
-void ODM_ReleaseAllTimers(struct DM_ODM_T * pDM_Odm);
+void ODM_ReleaseAllTimers(struct DM_ODM_T *pDM_Odm);
 
 void ODM_AntselStatistics_88C(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u8 MacId,
 	u32 PWDBAll,
 	bool isCCKrate
 );
 
-void ODM_DynamicARFBSelect(struct DM_ODM_T * pDM_Odm, u8 rate, bool Collision_State);
+void ODM_DynamicARFBSelect(struct DM_ODM_T *pDM_Odm, u8 rate, bool Collision_State);
 
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
