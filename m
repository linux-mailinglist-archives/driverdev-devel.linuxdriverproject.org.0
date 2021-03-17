Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A05533FB1D
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:27:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EB9243285;
	Wed, 17 Mar 2021 22:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5_ZTQIL0ci_e; Wed, 17 Mar 2021 22:27:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 877A9430A8;
	Wed, 17 Mar 2021 22:27:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD0E21BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCEB184150
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7fQKDzWkbK8z for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB3DE840FE
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:45 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id w3so816911ejc.4
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=J4u9rzdH4xx9M71pPAQvA/789dmKkcWfrCDTKG9kWFI=;
 b=Q1RIcyBeob77HXcQix3x+GibgkNXu+YdSbyuxCMQOP1PSARCD5N0s+BRFNfc1gus4e
 3bOXBm0F85c6bOqq3acFtow8rOO8KS6DfqMbkurYkLF+L2TlJguIueWqgnGC/GGfYHwA
 THRKQH2kuubkAk0qWgWE3qi79sN35fFJQ205yz1AlOYw8SrGBPAjqKee13/0+Ptd2J/6
 OFm9f6k0IvD8l5USI8x5eVUWu1F6xajlQUaS86aPgjBv4BtnbrF8T9U1YejUwZaD8yG6
 ypv/EYn+O5APlr+V/F+fC8r4QyygHSffjKwQNVx6sTJ32L9KxmKQwpfE0RBWC9sF4fyV
 PUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J4u9rzdH4xx9M71pPAQvA/789dmKkcWfrCDTKG9kWFI=;
 b=fMPDMmrq8pHUcu4YLKbtgxB+G6jFrGMxUlmimSmQhMRgjXn94T/W8uYrKbFYTmarA+
 F0PU6b9vJXb3rKXdFHVDLLKWpDU8/UpnEywKSz15x8ZTmZnRBN2m1ioTVuo6UP6IicVH
 u37QMBg8tIMYOznogUnbI8L62/vvUybPKm7K/OvLH7O2xa6Y5uYjFYUtuxwcifwIs18T
 W7fXJb+Z6FAaDRYAo2ndZe88/FQO9N1fYWdOkVKNj9vfIXhqFcf84KoJ4zw3xi/GN3HT
 031u4gysqKoGarOe5d0vW6SNRUE49Hvpx2xKU/Gosko5k2P0hTQNm5rxPe/EuDaHatvd
 ai9g==
X-Gm-Message-State: AOAM531bg50ZWIbV6GF0wyFxmllZzpRymmqakegs9guNmEpFzlZO0P4q
 YFt33U2J/ulZO8TgFlScQ4c=
X-Google-Smtp-Source: ABdhPJx02ZkWB6F4/KKy0gTW9TSIknA1HZuL86CLp5HGRtTNCpw+rMocsZ7vpFWoN2FeL5Cv5HEwhA==
X-Received: by 2002:a17:906:fcb2:: with SMTP id
 qw18mr36764849ejb.434.1616019704209; 
 Wed, 17 Mar 2021 15:21:44 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:44 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 35/43] Staging: rtl8723bs: fix names in odm_types.h
Date: Wed, 17 Mar 2021 23:21:22 +0100
Message-Id: <20210317222130.29528-36-marcocesati@gmail.com>
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
in hal/odm_types.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 6 +++---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h | 8 ++++----
 drivers/staging/rtl8723bs/hal/odm_types.h    | 4 ++--
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 47237cd636cf..b1b69459282f 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -421,7 +421,7 @@ void ODM_PhyStatusQuery(
 /*  */
 /*  */
 
-enum HAL_STATUS ODM_ConfigRFWithHeaderFile(
+enum hal_status ODM_ConfigRFWithHeaderFile(
 	struct DM_ODM_T *pDM_Odm,
 	enum ODM_RF_Config_Type ConfigType,
 	enum ODM_RF_RADIO_PATH_E eRFPath
@@ -441,7 +441,7 @@ enum HAL_STATUS ODM_ConfigRFWithHeaderFile(
 	return HAL_STATUS_SUCCESS;
 }
 
-enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm)
+enum hal_status ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 				 ("===>ODM_ConfigRFWithTxPwrTrackHeaderFile (%s)\n", (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
@@ -455,7 +455,7 @@ enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm)
 	return HAL_STATUS_SUCCESS;
 }
 
-enum HAL_STATUS ODM_ConfigBBWithHeaderFile(
+enum hal_status ODM_ConfigBBWithHeaderFile(
 	struct DM_ODM_T *pDM_Odm, enum ODM_BB_Config_Type ConfigType
 )
 {
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
index 10cd4e8b1c9d..184609623f5c 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
@@ -128,19 +128,19 @@ void ODM_PhyStatusQuery(
 	struct odm_packet_info *pPktinfo
 );
 
-enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm);
+enum hal_status ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm);
 
-enum HAL_STATUS ODM_ConfigRFWithHeaderFile(
+enum hal_status ODM_ConfigRFWithHeaderFile(
 	struct DM_ODM_T *pDM_Odm,
 	enum ODM_RF_Config_Type ConfigType,
 	enum ODM_RF_RADIO_PATH_E eRFPath
 );
 
-enum HAL_STATUS ODM_ConfigBBWithHeaderFile(
+enum hal_status ODM_ConfigBBWithHeaderFile(
 	struct DM_ODM_T *pDM_Odm, enum ODM_BB_Config_Type ConfigType
 );
 
-enum HAL_STATUS ODM_ConfigFWWithHeaderFile(
+enum hal_status ODM_ConfigFWWithHeaderFile(
 	struct DM_ODM_T *pDM_Odm,
 	enum ODM_FW_Config_Type ConfigType,
 	u8 *pFirmware,
diff --git a/drivers/staging/rtl8723bs/hal/odm_types.h b/drivers/staging/rtl8723bs/hal/odm_types.h
index 72c7e971ac96..0b1b3e14d451 100644
--- a/drivers/staging/rtl8723bs/hal/odm_types.h
+++ b/drivers/staging/rtl8723bs/hal/odm_types.h
@@ -15,7 +15,7 @@
 
 #define GET_ODM(__padapter)	((PDM_ODM_T)(&((GET_HAL_DATA(__padapter))->odmpriv)))
 
-enum HAL_STATUS {
+enum hal_status {
 	HAL_STATUS_SUCCESS,
 	HAL_STATUS_FAILURE,
 	/*RT_STATUS_PENDING,
@@ -30,7 +30,7 @@ enum HAL_STATUS {
 /*  */
 /*  Declare for ODM spin lock definition temporarily from compile pass. */
 /*  */
-enum RT_SPINLOCK_TYPE {
+enum rt_spinlock_type {
 	RT_TX_SPINLOCK = 1,
 	RT_RX_SPINLOCK = 2,
 	RT_RM_SPINLOCK = 3,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
