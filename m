Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 262F733C3BB
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:13:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8003D4310D;
	Mon, 15 Mar 2021 17:13:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s1KLwepWYsrs; Mon, 15 Mar 2021 17:13:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C70C430E8;
	Mon, 15 Mar 2021 17:13:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 688F31BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5826D430B9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mRx_4PQGF3pr for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D72A41503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:39 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id e19so67606195ejt.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=gmzAJn8uRv/tlhkqVLQkuS5LCgXzj39VnsRvH9LHesM=;
 b=TJAKMcsYX4HnXEILUNQxPCPIe1p1g6/KdZNm+Ixf0w4x4wTVtGYZaBBN+c3XRP0X8M
 tMMBJXTiJ70XL0+T/45csfcAI+y/3oYgVPjfvmMSwJbH1s3VSf/ey5j7DiR8ImeU3zGy
 SJ4scAfBPg+bNdFbBqsdrrL1UgT8Q56iy/7mwphISeeKXSSJGqZZEvWxKLGFQ78+dSAE
 yuxiYHEjNASFCS6VUBgYB8QpGbhXC2W/YL9wSeKxHzptmcxrG04SvfgoK8/G1oRMbCt5
 90mGO3l78if+VoEGcyRHFDo0MzRQMDlr29HBmY690oKRj2NdPkAWwTDtO3yyvwvAVoVq
 Yfvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gmzAJn8uRv/tlhkqVLQkuS5LCgXzj39VnsRvH9LHesM=;
 b=Voz6bqm64t5HDTMgQscTyW03pewHsHpWim1GmYgsYNrEBdc3eK4OhD8H18WwtsSNax
 5844MQkCglb4frpgIwZ2nmzjlzjTeqe00DlH6y4uOIXwbnSYx2bnuJEpKSYfBJVwe7ga
 2DrPlPybcZxTDIck1Or6khh1vA2OP8Zsdq0ayZfAa2LEyNAjXRr7h6mG22CQ/I97kJJ4
 xUcGu8fy1lwU8gEPtjb9ApCypBiv8MSQoLQkcANImN8nAEGY1WP+2oTTD/Thxcf20L6X
 uYNAXNdYDuQ9Z8E/7snZtwCKPdsmCsE8IlCzfUxabESe3zHH8AQ15NjvM7D6qMW+nYVq
 gGWQ==
X-Gm-Message-State: AOAM531Xbk5GOGLgZEBOHJx7LN/RbGHjeJzKeu60MQiTGSB1z82ZV2Bp
 MzohZX/ErA+x84ObBOBLhdBYHC8zpus=
X-Google-Smtp-Source: ABdhPJx98PtFfQrD893o27Goz8bu1MAz8ocwSTd6R+NR7f7ccelGsYogYqCy6isZG3MUOQyDQo/jEQ==
X-Received: by 2002:a17:906:1f93:: with SMTP id
 t19mr25356189ejr.443.1615827997744; 
 Mon, 15 Mar 2021 10:06:37 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:37 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 36/57] Staging: rtl8723bs: fix spaces in rtl8723b_hal_init.c
Date: Mon, 15 Mar 2021 18:05:57 +0100
Message-Id: <20210315170618.2566-37-marcocesati@gmail.com>
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
    #586: FILE: ./hal/rtl8723b_hal_init.c:586:
    +	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #867: FILE: ./hal/rtl8723b_hal_init.c:867:
    +	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1006: FILE: ./hal/rtl8723b_hal_init.c:1006:
    +	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #1149: FILE: ./hal/rtl8723b_hal_init.c:1149:
    +	struct EFUSE_HAL *		pEfuseHal = &pHalData->EfuseHal;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1247: FILE: ./hal/rtl8723b_hal_init.c:1247:
    +	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1552: FILE: ./hal/rtl8723b_hal_init.c:1552:
    +	struct PGPKT_STRUCT * pTargetPkt

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1566: FILE: ./hal/rtl8723b_hal_init.c:1566:
    +	struct PGPKT_STRUCT * pTargetPkt,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1571: FILE: ./hal/rtl8723b_hal_init.c:1571:
    +	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1684: FILE: ./hal/rtl8723b_hal_init.c:1684:
    +	struct PGPKT_STRUCT * pTargetPkt,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1721: FILE: ./hal/rtl8723b_hal_init.c:1721:
    +	struct PGPKT_STRUCT * pTargetPkt,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1788: FILE: ./hal/rtl8723b_hal_init.c:1788:
    +	struct PGPKT_STRUCT * pTargetPkt,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1806: FILE: ./hal/rtl8723b_hal_init.c:1806:
    +	struct PGPKT_STRUCT * pTargetPkt,

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 0eac9cb11cef..189c4a796b33 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -583,7 +583,7 @@ static u8 hal_EfuseSwitchToBank(
 	u32 value32 = 0;
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
 #endif
 
 
@@ -864,7 +864,7 @@ static void hal_ReadEFuse_WiFi(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u8 *efuseTbl = NULL;
 	u16 eFuse_Addr = 0;
@@ -1003,7 +1003,7 @@ static void hal_ReadEFuse_BT(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u8 *efuseTbl;
 	u8 bank;
@@ -1146,7 +1146,7 @@ static u16 hal_EfuseGetCurrentSize_WiFi(
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL *		pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u16 efuse_addr = 0;
 	u16 start_addr = 0; /*  for debug */
@@ -1244,7 +1244,7 @@ static u16 hal_EfuseGetCurrentSize_BT(struct adapter *padapter, u8 bPseudoTest)
 {
 #ifdef HAL_EFUSE_MEMORY
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
 #endif
 	u16 btusedbytes;
 	u16 efuse_addr;
@@ -1549,7 +1549,7 @@ static void hal_EfuseConstructPGPkt(
 	u8 offset,
 	u8 word_en,
 	u8 *pData,
-	struct PGPKT_STRUCT * pTargetPkt
+	struct PGPKT_STRUCT *pTargetPkt
 )
 {
 	memset(pTargetPkt->data, 0xFF, PGPKT_DATA_SIZE);
@@ -1563,12 +1563,12 @@ static u8 hal_EfusePartialWriteCheck(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT * pTargetPkt,
+	struct PGPKT_STRUCT *pTargetPkt,
 	u8 bPseudoTest
 )
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct EFUSE_HAL * pEfuseHal = &pHalData->EfuseHal;
+	struct EFUSE_HAL *pEfuseHal = &pHalData->EfuseHal;
 	u8 bRet = false;
 	u16 startAddr = 0, efuse_max_available_len = 0, efuse_max = 0;
 	u8 efuse_data = 0;
@@ -1681,7 +1681,7 @@ static u8 hal_EfusePgPacketWrite1ByteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT * pTargetPkt,
+	struct PGPKT_STRUCT *pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1718,7 +1718,7 @@ static u8 hal_EfusePgPacketWrite2ByteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT * pTargetPkt,
+	struct PGPKT_STRUCT *pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1785,7 +1785,7 @@ static u8 hal_EfusePgPacketWriteHeader(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT * pTargetPkt,
+	struct PGPKT_STRUCT *pTargetPkt,
 	u8 bPseudoTest
 )
 {
@@ -1803,7 +1803,7 @@ static u8 hal_EfusePgPacketWriteData(
 	struct adapter *padapter,
 	u8 efuseType,
 	u16 *pAddr,
-	struct PGPKT_STRUCT * pTargetPkt,
+	struct PGPKT_STRUCT *pTargetPkt,
 	u8 bPseudoTest
 )
 {
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
