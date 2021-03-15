Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512FF33C385
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:08:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD08B43101;
	Mon, 15 Mar 2021 17:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acg3vTEV3Ikq; Mon, 15 Mar 2021 17:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24EF541503;
	Mon, 15 Mar 2021 17:08:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A5B131BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95CF8430C0
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 89lkoxbpKyNy for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C291340170
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:18 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id o19so18234607edc.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=xnsxyNKifvtdQAKzjtpQNQJiilPOkLw9oUfFFWUEyJk=;
 b=UdD5PQSKzms0E96+cLas4fhwL9I+HB0SX0UpMfVgyYNhqIZptWctAZvmepaNc6ZCoL
 9pl+mSESDpuMmJFOY1iKSXIc/LoWmJ6gmsU2JgEqh8oiel3ZNuOYmC1u7ZJ8FNgGByCb
 ksLHd8WIkeAoT+/S4xrOSix6r1LsCEx1wMQWs3Du/dqGHC5IWD74yOlO42PDjpQRDTpD
 fODSwVKmG+pevzX21tL1222jFTCp9OLoH/HPSkbxSBkbHuw9kiP8WepxPfQrSyZZHvUx
 wPyKHt+42ndXHKonzddhChVs8oUuhBsMcs9QjqKMoORBzMdP4WJC1BRVwqyZaLX3HbRP
 vgOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xnsxyNKifvtdQAKzjtpQNQJiilPOkLw9oUfFFWUEyJk=;
 b=D+BNRI2/JGoHjyDVjmzUh3Wq+iDoH4VKK/1zL5TR3+A7psmXEcYmt4a/Hw7v/v9w1J
 Gu9gXDlUK/nG4QlI6+/w3QjF6BEbHScuMm+IUzoni8q/lQK57yn432J6GT8Iyh8cO/O0
 Rg4J2rRwEbuG+50WhvH8cfmc7rlXvzKdDlUlisPJ3r8D/piZGts2kgd2fAJxteBRSSDl
 YFzRGoBkotMbp1hlgSIgMqQ0xbAgQPR6PtoijG63vEACWhZ+sF6IMhmyDMaQyiffMma2
 uQ7/FEen9a+1HJmYjxmMDpznEU5pCxngQCfB0Ixt0XeiCAvYffz2CDAhDu0FdxTibc0i
 iNfg==
X-Gm-Message-State: AOAM5331JQtg2FPlukI8yHS5zWzbcSbpMj2IH8Q/JXebutYNw1EyNa33
 zMtQz35BYUjd/qXHF2yuOXDEsn7mepM=
X-Google-Smtp-Source: ABdhPJyPTwF9kxBZXl/wrQR/cFsREQ8GX2h8wPjunfyHtYFrANO9AyKrOAsRTMBbYP+9dG51FQqBQg==
X-Received: by 2002:aa7:da97:: with SMTP id q23mr30596519eds.180.1615827977002; 
 Mon, 15 Mar 2021 10:06:17 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:16 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 11/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_RF.c
Date: Mon, 15 Mar 2021 18:05:32 +0100
Message-Id: <20210315170618.2566-12-marcocesati@gmail.com>
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
    #12: FILE: ./hal/HalHWImg8723B_RF.c:12:
    +	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #124: FILE: ./hal/HalHWImg8723B_RF.c:124:
    +	struct DM_ODM_T * pDM_Odm, const u32  Condition1, const u32 Condition2

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #262: FILE: ./hal/HalHWImg8723B_RF.c:262:
    +void ODM_ReadAndConfig_MP_8723B_RadioA(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #423: FILE: ./hal/HalHWImg8723B_RF.c:423:
    +void ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #425: FILE: ./hal/HalHWImg8723B_RF.c:425:
    +	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #758: FILE: ./hal/HalHWImg8723B_RF.c:758:
    +void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(struct DM_ODM_T * pDM_Odm)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
index 963a08fc9032..5f78a64ca737 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct DM_ODM_T *pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -121,7 +121,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	struct DM_ODM_T * pDM_Odm, const u32  Condition1, const u32 Condition2
+	struct DM_ODM_T *pDM_Odm, const u32  Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -259,7 +259,7 @@ static u32 Array_MP_8723B_RadioA[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_RadioA(struct DM_ODM_T * pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_RadioA(struct DM_ODM_T *pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_RadioA);
@@ -420,9 +420,9 @@ static u8 gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B[] = {
 	8,  8,  9,  9,  9, 10, 10, 11, 11, 12, 12, 13, 14, 15
 };
 
-void ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(struct DM_ODM_T * pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(struct DM_ODM_T *pDM_Odm)
 {
-	struct ODM_RF_CAL_T * pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
+	struct ODM_RF_CAL_T *pRFCalibrateInfo = &pDM_Odm->RFCalibrateInfo;
 
 	ODM_RT_TRACE(
 		pDM_Odm,
@@ -755,7 +755,7 @@ static u8 *Array_MP_8723B_TXPWR_LMT[] = {
 	"MKK", "2.4G", "40M", "HT", "2T", "14", "63"
 };
 
-void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(struct DM_ODM_T * pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(struct DM_ODM_T *pDM_Odm)
 {
 	u32 i = 0;
 	u8 **Array = Array_MP_8723B_TXPWR_LMT;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
