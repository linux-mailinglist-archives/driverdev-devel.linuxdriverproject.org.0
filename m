Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBF733874B
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:28:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33BE44150B;
	Fri, 12 Mar 2021 08:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2zR_N1x7bWQk; Fri, 12 Mar 2021 08:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FAA842C27;
	Fri, 12 Mar 2021 08:28:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2DE1BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89E8D4150B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VzLjkIS0Ypj3 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 918B04150C
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:54 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 n11-20020a05600c4f8bb029010e5cf86347so4120514wmq.1
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O5C3IBPO3ErDi3Z22TEjHUL3Dh7OmZwfCsF0TzBKA5U=;
 b=nw5BKZxkm6/6KJ8emTLWwa/UrIU53/uD2tQ+LWc1dpVwIEVHX3hbwMbBCYzXyDA7ln
 6A8Qk5qOuvaK8ZBNpnPhxKfrsPS8ybug4RzfXiuu8dXa52Wl3imgvGCB3p4Vsz4+fpak
 i8S5BahPwTcIg314Pg66xKjB7IGUCqXSHYk3xHcfRVOPnv5adaUtnDFg97w6Jj/m2pzc
 kP2UmnOJHbeBhrsdFNkEUB3JLtEBZtWEoLzLYvUHXhlnjEOa5cfojTJruqek4Vn/VV2z
 a3JhGzylafVZi9+jKS2EVETZMk6ow7C6izxyH18ELBTDu67EQi2vZ2NG4s74CW+EYBhi
 bemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O5C3IBPO3ErDi3Z22TEjHUL3Dh7OmZwfCsF0TzBKA5U=;
 b=KdzFJ9Hwg83ADhhfMt5qkVo3RlcoCkppMxR+gIP4xWIB+OWSprcjkuoX56/2f8oSVC
 CSBWwnuVJm+yXkYwleEwJArTGkmzklwB6fGzHlsEOr7rZS0Z9TVvht1DWXigCMQ+NhVt
 yv9GL0X97imjnnxtXkldFxJNHij3hI5IY3vwWcvePaykqjTNH2EhgZo0SBW28XA6YO+1
 wBMRbQrJRkivcedkMayLhjMPLjVV5eH8lA/QYAKafD2+KoTAw1dpimaMlsyCqyPOAzQ+
 ESndPsBI6Kx93xR/TFlo/w8QQbdgvx5RntmQdlhlX7wRrCXFbwFSL9SMneMPqZS6r2MD
 ihjw==
X-Gm-Message-State: AOAM532cX0VaMBAZBEAacc81u8KbBqXnw4JH4p0qUJI2k0xpNtwV1zqs
 4hzPuNXPfe4w+GDdkPGDOZQ=
X-Google-Smtp-Source: ABdhPJx+vkspCjdsSxRx1LTS7M/v3H0sPEPwS3THYvvtl0FQC3rvzBYnDmVjRJBtQSvXQHOWJdstkQ==
X-Received: by 2002:a05:600c:2106:: with SMTP id
 u6mr12032623wml.55.1615537612834; 
 Fri, 12 Mar 2021 00:26:52 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:52 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 09/33] staging: rtl8723bs: remove typedefs in odm_types.h
Date: Fri, 12 Mar 2021 09:26:14 +0100
Message-Id: <20210312082638.25512-10-marco.cesati@gmail.com>
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
    #18: FILE: hal/odm_types.h:18:
    +typedef enum _HAL_STATUS {

    WARNING: do not add new typedefs
    #33: FILE: hal/odm_types.h:33:
    +typedef enum _RT_SPINLOCK_TYPE {

    WARNING: do not add new typedefs
    #77: FILE: hal/odm_types.h:77:
    +   typedef struct timer_list RT_TIMER, *PRT_TIMER;

    WARNING: do not add new typedefs
    #78: FILE: hal/odm_types.h:78:
    +   typedef  void *RT_TIMER_CALL_BACK;

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h          | 18 +++++++++---------
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c |  6 +++---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h |  8 ++++----
 drivers/staging/rtl8723bs/hal/odm_types.h    | 10 ++++------
 4 files changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 0e2868bc405a..52e66d1e466c 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -107,7 +107,7 @@ struct RXHP_T {
 	bool First_time_enter;
 	bool RXHP_enable;
 	u8 TP_Mode;
-	RT_TIMER PSDTimer;
+	struct timer_list PSDTimer;
 };
 
 #define ASSOCIATE_ENTRY_NUM					32 /*  Max size of AsocEntry[]. */
@@ -169,8 +169,8 @@ struct SWAT_T { /* _SW_Antenna_Switch_ */
 	u8 TrafficLoad;
 	u8 Train_time;
 	u8 Train_time_flag;
-	RT_TIMER SwAntennaSwitchTimer;
-	RT_TIMER SwAntennaSwitchTimer_8723B;
+	struct timer_list SwAntennaSwitchTimer;
+	struct timer_list SwAntennaSwitchTimer_8723B;
 	u32 PktCnt_SWAntDivByCtrlFrame;
 	bool bSWAntDivByCtrlFrame;
 };
@@ -868,7 +868,7 @@ struct ANT_DETECTED_INFO {
 /*  2011/09/22 MH Copy from SD4 defined structure. We use to support PHY DM integration. */
 /*  */
 struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
-	/* RT_TIMER	FastAntTrainingTimer; */
+	/* struct timer_list	FastAntTrainingTimer; */
 	/*  */
 	/* 	Add for different team use temporarily */
 	/*  */
@@ -1146,14 +1146,14 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 
 	/* PSD */
 	bool bUserAssignLevel;
-	RT_TIMER PSDTimer;
+	struct timer_list PSDTimer;
 	u8 RSSI_BT;			/* come from BT */
 	bool bPSDinProcess;
 	bool bPSDactive;
 	bool bDMInitialGainEnable;
 
 	/* MPT DIG */
-	RT_TIMER MPT_DIGTimer;
+	struct timer_list MPT_DIGTimer;
 
 	/* for rate adaptive, in fact,  88c/92c fw will handle this */
 	u8 bUseRAMask;
@@ -1194,10 +1194,10 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/*  */
 
 	/*  ODM relative time. */
-	RT_TIMER PathDivSwitchTimer;
+	struct timer_list PathDivSwitchTimer;
 	/* 2011.09.27 add for Path Diversity */
-	RT_TIMER CCKPathDiversityTimer;
-	RT_TIMER FastAntTrainingTimer;
+	struct timer_list CCKPathDiversityTimer;
+	struct timer_list FastAntTrainingTimer;
 
 	/*  ODM relative workitem. */
 
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 41c33ae96c5a..de63e4a2932e 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -430,7 +430,7 @@ void ODM_PhyStatusQuery(
 /*  */
 /*  */
 
-HAL_STATUS ODM_ConfigRFWithHeaderFile(
+enum HAL_STATUS ODM_ConfigRFWithHeaderFile(
 	struct DM_ODM_T * pDM_Odm,
 	enum ODM_RF_Config_Type ConfigType,
 	enum ODM_RF_RADIO_PATH_E eRFPath
@@ -450,7 +450,7 @@ HAL_STATUS ODM_ConfigRFWithHeaderFile(
 	return HAL_STATUS_SUCCESS;
 }
 
-HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm)
+enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 				 ("===>ODM_ConfigRFWithTxPwrTrackHeaderFile (%s)\n", (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
@@ -464,7 +464,7 @@ HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm)
 	return HAL_STATUS_SUCCESS;
 }
 
-HAL_STATUS ODM_ConfigBBWithHeaderFile(
+enum HAL_STATUS ODM_ConfigBBWithHeaderFile(
 	struct DM_ODM_T * pDM_Odm, enum ODM_BB_Config_Type ConfigType
 )
 {
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
index cd8c51e6b4b5..d4d53839a3f9 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
@@ -128,19 +128,19 @@ void ODM_PhyStatusQuery(
 	struct odm_packet_info *pPktinfo
 );
 
-HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm);
+enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm);
 
-HAL_STATUS ODM_ConfigRFWithHeaderFile(
+enum HAL_STATUS ODM_ConfigRFWithHeaderFile(
 	struct DM_ODM_T * pDM_Odm,
 	enum ODM_RF_Config_Type ConfigType,
 	enum ODM_RF_RADIO_PATH_E eRFPath
 );
 
-HAL_STATUS ODM_ConfigBBWithHeaderFile(
+enum HAL_STATUS ODM_ConfigBBWithHeaderFile(
 	struct DM_ODM_T * pDM_Odm, enum ODM_BB_Config_Type ConfigType
 );
 
-HAL_STATUS ODM_ConfigFWWithHeaderFile(
+enum HAL_STATUS ODM_ConfigFWWithHeaderFile(
 	struct DM_ODM_T * pDM_Odm,
 	enum ODM_FW_Config_Type ConfigType,
 	u8 *pFirmware,
diff --git a/drivers/staging/rtl8723bs/hal/odm_types.h b/drivers/staging/rtl8723bs/hal/odm_types.h
index c79fc1813c3f..72c7e971ac96 100644
--- a/drivers/staging/rtl8723bs/hal/odm_types.h
+++ b/drivers/staging/rtl8723bs/hal/odm_types.h
@@ -15,7 +15,7 @@
 
 #define GET_ODM(__padapter)	((PDM_ODM_T)(&((GET_HAL_DATA(__padapter))->odmpriv)))
 
-typedef enum _HAL_STATUS {
+enum HAL_STATUS {
 	HAL_STATUS_SUCCESS,
 	HAL_STATUS_FAILURE,
 	/*RT_STATUS_PENDING,
@@ -24,13 +24,13 @@ typedef enum _HAL_STATUS {
 	RT_STATUS_INVALID_PARAMETER,
 	RT_STATUS_NOT_SUPPORT,
 	RT_STATUS_OS_API_FAILED,*/
-} HAL_STATUS, *PHAL_STATUS;
+};
 
 
 /*  */
 /*  Declare for ODM spin lock definition temporarily from compile pass. */
 /*  */
-typedef enum _RT_SPINLOCK_TYPE {
+enum RT_SPINLOCK_TYPE {
 	RT_TX_SPINLOCK = 1,
 	RT_RX_SPINLOCK = 2,
 	RT_RM_SPINLOCK = 3,
@@ -66,7 +66,7 @@ typedef enum _RT_SPINLOCK_TYPE {
 	RT_PENDED_OID_SPINLOCK = 39,
 	RT_CHNLLIST_SPINLOCK = 40,
 	RT_INDIC_SPINLOCK = 41,	/* protect indication */
-} RT_SPINLOCK_TYPE;
+};
 
 	#if defined(__LITTLE_ENDIAN)
 		#define	ODM_ENDIAN_TYPE			ODM_ENDIAN_LITTLE
@@ -74,8 +74,6 @@ typedef enum _RT_SPINLOCK_TYPE {
 		#define	ODM_ENDIAN_TYPE			ODM_ENDIAN_BIG
 	#endif
 
-	typedef struct timer_list		RT_TIMER, *PRT_TIMER;
-	typedef  void *RT_TIMER_CALL_BACK;
 	#define	STA_INFO_T			struct sta_info
 	#define	PSTA_INFO_T		struct sta_info *
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
