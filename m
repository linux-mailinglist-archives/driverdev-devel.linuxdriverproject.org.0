Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F052733FB14
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:26:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AB2984172;
	Wed, 17 Mar 2021 22:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxBU6bovjRDk; Wed, 17 Mar 2021 22:26:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6DBF83E65;
	Wed, 17 Mar 2021 22:26:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 564BE1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 530D4430A8
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rHZYLVEqBDn1 for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6913843096
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:40 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id w18so4248859edc.0
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=E/BJ98OA3vv2Q2zXMo2smXN94OSBqZ5MXRTqLce+1xk=;
 b=VmKWk2IejyQMshqJW0y9PQh03LEsuYcg/vsIsP2qm6iIWjHgUvXxz5qvCdETTjUFwt
 fCEV+ipfG7rwtqeyYXAYz15a8OEaWbu0x4MJKZXA2UjtrVlTyGWYpwMDIaiGmrPuwVCr
 a0dyn4Mz+MF4QZslItI3z3iPoVul8e34vcY2aylZGvwFyLHtgBTimRCDrtYyEyGy90lq
 FiG55M0cyxbujmDc1L0pZhEIN3fhj7w7+q/vbMEyAcRN//AmtclMR+7eg1EVZpVCMhD9
 vW9EjF8Xy6c7mvCT3bEplzNLyh6+pr8ChMVk7FfyswNr76QDKEWZr7xcYh3N/+zIlEVc
 to6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E/BJ98OA3vv2Q2zXMo2smXN94OSBqZ5MXRTqLce+1xk=;
 b=rSpJQxpDP4dEvi7SRgc/T9VZmhCm75iVxLiy+wQM2ejin3mys0ExTBFiXmWdzNtCHp
 xEIk5Cq5iyJYJRPUYznIGTSVFzpKcJwHy6g83FyzYJl6YUXjkLK14HhX2B9afhk2q8rc
 WzG+s0I+6Ui+bhanqA6jeno+X+h10oLJlC/0gmPHmMd6zk0Q9RNPqKjWQMKIsS64rgU5
 MLvQyTmqvpw/VGwJ07OwoYBYX+7bHllaJ8v3IBaITwemQiewMsaeMyRy2qiiLX+0aLco
 jtepi0JvL+chVfIhp6NVhX9AQsXfpd8c+0Cjs9+ImnRkGuP4fPQvQQZyI4KpPTDx+9V7
 9VXQ==
X-Gm-Message-State: AOAM532BEYgtgk5RJUO9gBserERIdJTFR07HMR+qMlx2uzvsSwJbiJW6
 FJEVJW2rBH6DgLoXPvlVAmQMjiJAnt0=
X-Google-Smtp-Source: ABdhPJyHojyxcGQBHnhBQPfnzbg2TO6eyGt6d50gfCMf6qFpuY9vGLwWWd9CAPAHfgKLYLcaNOtFww==
X-Received: by 2002:aa7:db53:: with SMTP id n19mr45975400edt.330.1616019698685; 
 Wed, 17 Mar 2021 15:21:38 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:38 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 28/43] Staging: rtl8723bs: fix names in rtw_efuse.h
Date: Wed, 17 Mar 2021 23:21:15 +0100
Message-Id: <20210317222130.29528-29-marcocesati@gmail.com>
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
in include/rtw_efuse.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 28 +++++++++----------
 drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
 drivers/staging/rtl8723bs/include/rtw_efuse.h |  6 ++--
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index f33b084011b5..e0b5a608ec97 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -575,7 +575,7 @@ static u8 hal_EfuseSwitchToBank(
 	u32 value32 = 0;
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
+	struct efuse_hal *pEfuseHal = &pHalData->EfuseHal;
 #endif
 
 
@@ -856,7 +856,7 @@ static void hal_ReadEFuse_WiFi(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
+	struct efuse_hal *pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u8 *efuseTbl = NULL;
 	u16 eFuse_Addr = 0;
@@ -995,7 +995,7 @@ static void hal_ReadEFuse_BT(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
+	struct efuse_hal *pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u8 *efuseTbl;
 	u8 bank;
@@ -1138,7 +1138,7 @@ static u16 hal_EfuseGetCurrentSize_WiFi(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
+	struct efuse_hal *pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u16 efuse_addr = 0;
 	u16 start_addr = 0; /*  for debug */
@@ -1236,7 +1236,7 @@ static u16 hal_EfuseGetCurrentSize_BT(struct adapter *padapter, u8 bPseudoTest)
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
+	struct efuse_hal *pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u16 btusedbytes;
 	u16 efuse_addr;
@@ -1541,7 +1541,7 @@ static void hal_EfuseConstructPGPkt(
 	u8 offset,
 	u8 word_en,
 	u8 *pData,
-	struct PGPKT_STRUCT *pTargetPkt
+	struct pgpkt_struct *pTargetPkt
 )
 {
 	memset(pTargetPkt->data, 0xFF, PGPKT_DATA_SIZE);
@@ -1555,12 +1555,12 @@ static u8 hal_EfusePartialWriteCheck(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT *pTargetPkt,
+	struct pgpkt_struct *pTargetPkt,
 	u8 bPseudoTest
 )
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
+	struct efuse_hal *pEfuseHal = &pHalData->EfuseHal;
 	u8 bRet = false;
 	u16 startAddr = 0, efuse_max_available_len = 0, efuse_max = 0;
 	u8 efuse_data = 0;
@@ -1673,7 +1673,7 @@ static u8 hal_EfusePgPacketWrite1ByteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT *pTargetPkt,
+	struct pgpkt_struct *pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1710,7 +1710,7 @@ static u8 hal_EfusePgPacketWrite2ByteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT *pTargetPkt,
+	struct pgpkt_struct *pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1777,7 +1777,7 @@ static u8 hal_EfusePgPacketWriteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT *pTargetPkt,
+	struct pgpkt_struct *pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1795,7 +1795,7 @@ static u8 hal_EfusePgPacketWriteData(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT *pTargetPkt,
+	struct pgpkt_struct *pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1822,7 +1822,7 @@ static s32 Hal_EfusePgPacketWrite(
 	bool bPseudoTest
 )
 {
-	struct PGPKT_STRUCT targetPkt;
+	struct pgpkt_struct targetPkt;
 	u16 startAddr = 0;
 	u8 efuseType = EFUSE_WIFI;
 
@@ -1851,7 +1851,7 @@ static bool Hal_EfusePgPacketWrite_BT(
 	bool bPseudoTest
 )
 {
-	struct PGPKT_STRUCT targetPkt;
+	struct pgpkt_struct targetPkt;
 	u16 startAddr = 0;
 	u8 efuseType = EFUSE_BT;
 
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 89943217fb42..6a0c5626e19f 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -233,7 +233,7 @@ struct hal_com_data {
 	bool		EepromOrEfuse;
 	u8 		EfuseUsedPercentage;
 	u16 			EfuseUsedBytes;
-	struct EFUSE_HAL		EfuseHal;
+	struct efuse_hal		EfuseHal;
 
 	/* 3 [2.4G] */
 	u8 Index24G_CCK_Base[MAX_RF_PATH][CHANNEL_MAX_NUMBER];
diff --git a/drivers/staging/rtl8723bs/include/rtw_efuse.h b/drivers/staging/rtl8723bs/include/rtw_efuse.h
index 3c6673910574..5bae46ecd9de 100644
--- a/drivers/staging/rtl8723bs/include/rtw_efuse.h
+++ b/drivers/staging/rtl8723bs/include/rtw_efuse.h
@@ -25,7 +25,7 @@
 #define	EFUSE_WIFI				0
 #define	EFUSE_BT				1
 
-enum _EFUSE_DEF_TYPE {
+enum _efuse_def_type {
 	TYPE_EFUSE_MAX_SECTION				= 0,
 	TYPE_EFUSE_REAL_CONTENT_LEN			= 1,
 	TYPE_AVAILABLE_EFUSE_BYTES_BANK		= 2,
@@ -57,7 +57,7 @@ enum _EFUSE_DEF_TYPE {
 #define		EFUSE_MAX_WORD_UNIT			4
 
 /*------------------------------Define structure----------------------------*/
-struct PGPKT_STRUCT {
+struct pgpkt_struct {
 	u8 offset;
 	u8 word_en;
 	u8 data[8];
@@ -65,7 +65,7 @@ struct PGPKT_STRUCT {
 };
 
 /*------------------------------Define structure----------------------------*/
-struct EFUSE_HAL {
+struct efuse_hal {
 	u8 fakeEfuseBank;
 	u32 fakeEfuseUsedBytes;
 	u8 fakeEfuseContent[EFUSE_MAX_HW_SIZE];
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
