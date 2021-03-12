Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F5D338766
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:32:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53B2243259;
	Fri, 12 Mar 2021 08:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVc4H8K1ZmWI; Fri, 12 Mar 2021 08:32:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7B8040025;
	Fri, 12 Mar 2021 08:32:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B6D31BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1540C84521
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UOgb2sPYAAJp for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2ADE38450D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:09 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id 61so1275915wrm.12
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=agk6nOk7UJqnWOXzdDIssrZ4aSuBVxO9oqjwgEMKwWY=;
 b=a+MG5IZCBJMnIrxQw4yUS/eh7ipvgZemkbu/Tk/ns3O0ec2676nwtAu597OYq4U6zq
 qdxBVYplb2J3FnjFQOudR0CXyS2tgsN9z7onaOh4F6bPwb3Aw23t62qfMGRuqPOPVZC8
 /nOmU4s7hR8g94hsund3V/jkNN10DPf6HZ5tmc4F6GcXifOKkcjzEoV+ElFfMbukQLan
 jUxdNxLeFMG3wquqFsBo3ERxK+7hwz/gttoU3sFmAVG2pOK7uzdLpX2/avZn6J5DqUOF
 tFY0kbAX8aAJ2sUnW3DIWhbkyJNy4GfYwr0lzVPfdRsFBuXK1z1FXZzMw7YT1+OkZzox
 pf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=agk6nOk7UJqnWOXzdDIssrZ4aSuBVxO9oqjwgEMKwWY=;
 b=PhSt8PM6Yg1oiem9z3y1jK9RLMPDqPqz5+8hL7qPYQ+XMQZ1EAptHtxB8G1UHFReC4
 ig447picRVrxWq8IYQ4AwdmmfpVrEkUlY30iT+B6aLcz9Imbw9RQPXpl49kw5b9atjHL
 Jde/ukqRWswHxfR20nW2R3HTilZDD8pcDfRqm2dNMVsgysmUoGS8pZOqsaa6Jx/fzoOQ
 J7RbYtQ5+GF40SZ08TPpJnMdunwbKZcej+79eaZXWKMAD566rkZQ4GvIa8kroEOmJ1Rk
 MUZuPQddQTUmECkJ6NhibUI2Q+4xIthWh0+J0vksaxGJhaVS9oOVnq7L5LEsmajTquTA
 fHGg==
X-Gm-Message-State: AOAM5315W4sIcUR1k3VB9gxE/x94lockIJCLueCARN8Aw21pwuMKKrRE
 4WBJtwiNRv6UpcJEyAC9qIk=
X-Google-Smtp-Source: ABdhPJzqbQQkRDGpS0Zd0rW9XZdFffNuzmJb9/Lc25bsn2uj5dblvxYe36lzA1U/PN4VUsgPWzx61Q==
X-Received: by 2002:a05:6000:18a:: with SMTP id
 p10mr12871850wrx.166.1615537627485; 
 Fri, 12 Mar 2021 00:27:07 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:07 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 29/33] staging: rtl8723bs: remove typedefs in rtw_efuse.h
Date: Fri, 12 Mar 2021 09:26:34 +0100
Message-Id: <20210312082638.25512-30-marco.cesati@gmail.com>
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
    #60: FILE: include/rtw_efuse.h:60:
    +typedef struct PG_PKT_STRUCT_A {

    WARNING: do not add new typedefs
    #68: FILE: include/rtw_efuse.h:68:
    +typedef struct _EFUSE_HAL {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 28 +++++++++----------
 drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
 drivers/staging/rtl8723bs/include/rtw_efuse.h |  8 +++---
 3 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 8d4b87131f54..a8f56eeb576f 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -583,7 +583,7 @@ static u8 hal_EfuseSwitchToBank(
 	u32 value32 = 0;
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PEFUSE_HAL pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
 #endif
 
 
@@ -864,7 +864,7 @@ static void hal_ReadEFuse_WiFi(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PEFUSE_HAL pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u8 *efuseTbl = NULL;
 	u16 eFuse_Addr = 0;
@@ -1003,7 +1003,7 @@ static void hal_ReadEFuse_BT(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PEFUSE_HAL pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u8 *efuseTbl;
 	u8 bank;
@@ -1146,7 +1146,7 @@ static u16 hal_EfuseGetCurrentSize_WiFi(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PEFUSE_HAL		pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL *		pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u16 efuse_addr = 0;
 	u16 start_addr = 0; /*  for debug */
@@ -1244,7 +1244,7 @@ static u16 hal_EfuseGetCurrentSize_BT(struct adapter *padapter, u8 bPseudoTest)
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PEFUSE_HAL pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u16 btusedbytes;
 	u16 efuse_addr;
@@ -1549,7 +1549,7 @@ static void hal_EfuseConstructPGPkt(
 	u8 offset,
 	u8 word_en,
 	u8 *pData,
-	PPGPKT_STRUCT pTargetPkt
+	struct PGPKT_STRUCT * pTargetPkt
 )
 {
 	memset(pTargetPkt->data, 0xFF, PGPKT_DATA_SIZE);
@@ -1563,12 +1563,12 @@ static u8 hal_EfusePartialWriteCheck(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	PPGPKT_STRUCT pTargetPkt,
+	struct PGPKT_STRUCT * pTargetPkt,
 	u8 bPseudoTest
 )
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	PEFUSE_HAL pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
 	u8 bRet = false;
 	u16 startAddr = 0, efuse_max_available_len = 0, efuse_max = 0;
 	u8 efuse_data = 0;
@@ -1681,7 +1681,7 @@ static u8 hal_EfusePgPacketWrite1ByteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	PPGPKT_STRUCT pTargetPkt,
+	struct PGPKT_STRUCT * pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1718,7 +1718,7 @@ static u8 hal_EfusePgPacketWrite2ByteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	PPGPKT_STRUCT pTargetPkt,
+	struct PGPKT_STRUCT * pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1785,7 +1785,7 @@ static u8 hal_EfusePgPacketWriteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	PPGPKT_STRUCT pTargetPkt,
+	struct PGPKT_STRUCT * pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1803,7 +1803,7 @@ static u8 hal_EfusePgPacketWriteData(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	PPGPKT_STRUCT pTargetPkt,
+	struct PGPKT_STRUCT * pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1830,7 +1830,7 @@ static s32 Hal_EfusePgPacketWrite(
 	bool bPseudoTest
 )
 {
-	PGPKT_STRUCT targetPkt;
+	struct PGPKT_STRUCT targetPkt;
 	u16 startAddr = 0;
 	u8 efuseType = EFUSE_WIFI;
 
@@ -1859,7 +1859,7 @@ static bool Hal_EfusePgPacketWrite_BT(
 	bool bPseudoTest
 )
 {
-	PGPKT_STRUCT targetPkt;
+	struct PGPKT_STRUCT targetPkt;
 	u16 startAddr = 0;
 	u8 efuseType = EFUSE_BT;
 
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 9c21208765ef..7fa384dd07ac 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -233,7 +233,7 @@ struct hal_com_data {
 	bool		EepromOrEfuse;
 	u8 		EfuseUsedPercentage;
 	u16 			EfuseUsedBytes;
-	EFUSE_HAL		EfuseHal;
+	struct EFUSE_HAL		EfuseHal;
 
 	/* 3 [2.4G] */
 	u8 Index24G_CCK_Base[MAX_RF_PATH][CHANNEL_MAX_NUMBER];
diff --git a/drivers/staging/rtl8723bs/include/rtw_efuse.h b/drivers/staging/rtl8723bs/include/rtw_efuse.h
index 4abcbbc8f513..3c6673910574 100644
--- a/drivers/staging/rtl8723bs/include/rtw_efuse.h
+++ b/drivers/staging/rtl8723bs/include/rtw_efuse.h
@@ -57,15 +57,15 @@ enum _EFUSE_DEF_TYPE {
 #define		EFUSE_MAX_WORD_UNIT			4
 
 /*------------------------------Define structure----------------------------*/
-typedef struct PG_PKT_STRUCT_A {
+struct PGPKT_STRUCT {
 	u8 offset;
 	u8 word_en;
 	u8 data[8];
 	u8 word_cnts;
-} PGPKT_STRUCT, *PPGPKT_STRUCT;
+};
 
 /*------------------------------Define structure----------------------------*/
-typedef struct _EFUSE_HAL {
+struct EFUSE_HAL {
 	u8 fakeEfuseBank;
 	u32 fakeEfuseUsedBytes;
 	u8 fakeEfuseContent[EFUSE_MAX_HW_SIZE];
@@ -82,7 +82,7 @@ typedef struct _EFUSE_HAL {
 	u8 fakeBTEfuseContent[EFUSE_MAX_BT_BANK][EFUSE_MAX_HW_SIZE];
 	u8 fakeBTEfuseInitMap[EFUSE_BT_MAX_MAP_LEN];
 	u8 fakeBTEfuseModifiedMap[EFUSE_BT_MAX_MAP_LEN];
-} EFUSE_HAL, *PEFUSE_HAL;
+};
 
 
 /*------------------------Export global variable----------------------------*/
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
