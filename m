Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C7D33C3AA
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:11:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BE2A6F56D;
	Mon, 15 Mar 2021 17:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lseYcIRyglg8; Mon, 15 Mar 2021 17:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C8E7605A5;
	Mon, 15 Mar 2021 17:11:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08EF01BF387
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB363430C0
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uX9o-Z-ZFRmg for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2443C41503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:32 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id u4so18199972edv.9
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=F8AFQHvLpvisE52HY7YdYkoUV0OJeeH5D5KVKruQqVQ=;
 b=g3WtrJyhWukXTMsD5GnAyTB5EIGc+Lw33p1D62vMLO5nFJchFhpGXVTnHY5MCXhJd4
 5mPE6XzDzDwnIkUyTZFS3wpZ+6d5oRWFoT6gNWydCNchMSwbaTHOjYd69XBfpi2fWayL
 9Wh1XSNU2HF65+aEZKYvmNsgYlff8zyYWodLOf50Q95vRMBxgrs5+AqTijknZ0lwWk5z
 pIZsOaJnU0neQLsbhzJyueYxKs2UXF8UsKR7wybRqic8nIEoJSWTaoWDqzsaS/BrK40p
 4sCsbDKFZ3O456ZL2+VZ+aDzrSgBbrvQvOVUBSpHkcTTQy0UPfpdc+K6f9HoWJDY1lFC
 1cug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F8AFQHvLpvisE52HY7YdYkoUV0OJeeH5D5KVKruQqVQ=;
 b=dtOITH7Cti2ucmFxocO1Od+nuY/aOxa2WPLeQhIcyqBhthEuQfKC9X1G1tQUNn7Afd
 2DEGAsBh+9edrTz0tC4Sjfkp/WTXBTPm/t1rxgoLVHlQhpzPWrLj+YLh7hf0rT9Eemvq
 qnssoO6mA5xFt/CjLokwxlNgcspwlr2SfbGevni+nf4Tg1UPSSlNftddnIarQxTZm0us
 3bKXfyqwHfdgjVJhW/EHOdlMN0v+sFsY9OJL5N9oBUGmra6LZ2xWURBUmK5rj+2/fZwg
 EiY+TVmOdNqnqQ5OHC8RY4v3+/qsvLZIcbtg2Y7bgR5fZ+V4+hwMCCUx2FgvBRXmtAGY
 1uKQ==
X-Gm-Message-State: AOAM532hLwAqo0LjJo0gM/4pWlIHAQktAJyeJnAMlSqGR8AzfmhGYnOo
 hjCgMQJS7XDCW9bTmIaZRwM=
X-Google-Smtp-Source: ABdhPJzS0C8b/PRXATFlXKVpGHJPteuPupQsk9pZGKDZXB882u/FBlZS7nXncIftipa6BhUSqho10A==
X-Received: by 2002:aa7:d954:: with SMTP id l20mr31166487eds.1.1615827990360; 
 Mon, 15 Mar 2021 10:06:30 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:30 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 27/57] Staging: rtl8723bs: fix spaces in odm_HWConfig.c
Date: Mon, 15 Mar 2021 18:05:48 +0100
Message-Id: <20210315170618.2566-28-marcocesati@gmail.com>
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
    #26: FILE: ./hal/odm_HWConfig.c:26:
    +s32 odm_SignalScaleMapping(struct DM_ODM_T * pDM_Odm, s32 CurrSig)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #80: FILE: ./hal/odm_HWConfig.c:80:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #93: FILE: ./hal/odm_HWConfig.c:93:
    +	struct PHY_STATUS_RPT_8192CD_T * pPhyStaRpt = (struct PHY_STATUS_RPT_8192CD_T *)pPhyStatus;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #250: FILE: ./hal/odm_HWConfig.c:250:
    +	struct DM_ODM_T * pDM_Odm, struct odm_phy_info *pPhyInfo, struct odm_packet_info *pPktinfo

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #404: FILE: ./hal/odm_HWConfig.c:404:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #418: FILE: ./hal/odm_HWConfig.c:418:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #434: FILE: ./hal/odm_HWConfig.c:434:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #453: FILE: ./hal/odm_HWConfig.c:453:
    +enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #468: FILE: ./hal/odm_HWConfig.c:468:
    +	struct DM_ODM_T * pDM_Odm, enum ODM_BB_Config_Type ConfigType

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index de63e4a2932e..13f1d1cbd6b5 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -23,7 +23,7 @@ static u8 odm_QueryRxPwrPercentage(s8 AntPower)
 
 }
 
-s32 odm_SignalScaleMapping(struct DM_ODM_T * pDM_Odm, s32 CurrSig)
+s32 odm_SignalScaleMapping(struct DM_ODM_T *pDM_Odm, s32 CurrSig)
 {
 	s32 RetSig = 0;
 
@@ -77,7 +77,7 @@ static u8 odm_EVMdbToPercentage(s8 Value)
 }
 
 static void odm_RxPhyStatus92CSeries_Parsing(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -90,7 +90,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 	bool isCCKrate = false;
 	u8 rf_rx_num = 0;
 	u8 LNA_idx, VGA_idx;
-	struct PHY_STATUS_RPT_8192CD_T * pPhyStaRpt = (struct PHY_STATUS_RPT_8192CD_T *)pPhyStatus;
+	struct PHY_STATUS_RPT_8192CD_T *pPhyStaRpt = (struct PHY_STATUS_RPT_8192CD_T *)pPhyStatus;
 
 	isCCKrate = pPktinfo->data_rate <= DESC_RATE11M;
 	pPhyInfo->rx_mimo_signal_quality[ODM_RF_PATH_A] = -1;
@@ -247,7 +247,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 }
 
 static void odm_Process_RSSIForDM(
-	struct DM_ODM_T * pDM_Odm, struct odm_phy_info *pPhyInfo, struct odm_packet_info *pPktinfo
+	struct DM_ODM_T *pDM_Odm, struct odm_phy_info *pPhyInfo, struct odm_packet_info *pPktinfo
 )
 {
 
@@ -401,7 +401,7 @@ static void odm_Process_RSSIForDM(
 /*  Endianness before calling this API */
 /*  */
 static void ODM_PhyStatusQuery_92CSeries(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -415,7 +415,7 @@ static void ODM_PhyStatusQuery_92CSeries(
 }
 
 void ODM_PhyStatusQuery(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
@@ -431,7 +431,7 @@ void ODM_PhyStatusQuery(
 /*  */
 
 enum HAL_STATUS ODM_ConfigRFWithHeaderFile(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	enum ODM_RF_Config_Type ConfigType,
 	enum ODM_RF_RADIO_PATH_E eRFPath
 )
@@ -450,7 +450,7 @@ enum HAL_STATUS ODM_ConfigRFWithHeaderFile(
 	return HAL_STATUS_SUCCESS;
 }
 
-enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm)
+enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 				 ("===>ODM_ConfigRFWithTxPwrTrackHeaderFile (%s)\n", (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
@@ -465,7 +465,7 @@ enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm)
 }
 
 enum HAL_STATUS ODM_ConfigBBWithHeaderFile(
-	struct DM_ODM_T * pDM_Odm, enum ODM_BB_Config_Type ConfigType
+	struct DM_ODM_T *pDM_Odm, enum ODM_BB_Config_Type ConfigType
 )
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
