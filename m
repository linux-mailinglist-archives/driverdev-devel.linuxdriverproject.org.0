Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9926320250
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 11:12:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B5DD880F4;
	Thu, 16 May 2019 09:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVz-9tqYFaJB; Thu, 16 May 2019 09:12:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C051F880D8;
	Thu, 16 May 2019 09:12:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E16A21BF36C
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 09:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D9BB887248
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 09:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IqtF0EqocE1M for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 09:12:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 30828853FC
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 09:12:18 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d30so1251444pgm.7
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 02:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OccdE+QfFayPvPn8owav85KuJXH6MAaXHJdHteJ7pgA=;
 b=bYJm2JXa7aMLKdnBoDfJEwkVmwrCez1EmTM3HgnKLtY81p8+4QquiPR+5CnQiqR4BB
 i/393nIcQ7S/asmdMbntwn7RTK8E3LIJolRhB8hpLdpsnzaSrSC33D759nIiyCJt8AbM
 HiFt6oZKBEfCm2s5LnTAtmpDg7ZCvAwPIfBDJZRgdZY9hzh+LpFtbTNOqS/YyPtteRaX
 zjJ/Y2/lR39kPyxx9FFYKF46gGnoAdsiIqqRTi0bmAEHz2zcCRAOjJ64gYiJU53v6E8C
 LXvfZN2ix/C6FgaE0S8/i9qq8lxRFdSzDBc06XgoVFfB3VFeOz+CRSvjTRVamG4rzGf3
 LvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OccdE+QfFayPvPn8owav85KuJXH6MAaXHJdHteJ7pgA=;
 b=mnVRKiP12vCuoSsQCot/Kd9F8otW484fhnBlMGQraNgBp06zWJKZmQYEwAmgDwqzXA
 C9l7DH/z/ReoBlHRyc3zTtgYdIdNqtNGFmnC3uA335mFoyFlHCTZMPgNTFkan2kzXVVj
 SaUHFr5eZjHFjiLVcgQ846s8G4Dw9XI2X31y7DqPBG4EBPN0hZMpgfKet56TuzD8fvt7
 m1DoR7eSF+4XzhoCSOmT0neDu059O5DbszeJ9sp3T6CjxmcZe+LMVUa/c3rZkD2rKM/Z
 p4VpfWyRdr2mB4I2V8N8y73aRSUhQTOn1T/FsvYLicdHgI7dMKz2E6qd1WvlyHv9iJnN
 vCAg==
X-Gm-Message-State: APjAAAWJyAY5uxBKNLLiG/W++p8kFg/KMszvH1vliKcaZvAEApB75xxX
 8Romo4dS+T/nq1mgUQZVRHM=
X-Google-Smtp-Source: APXvYqxMilcvxjakOqf2epQh3fz7c3eX75oWlIHAvcNbTbRqFaJ8BGP/K34paZUKRXiaRzwc13N+vg==
X-Received: by 2002:aa7:82cd:: with SMTP id f13mr51674405pfn.203.1557997937580; 
 Thu, 16 May 2019 02:12:17 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:710e:42e:58f3:e6b4:2815:1ae5])
 by smtp.googlemail.com with ESMTPSA id
 q19sm8321918pff.96.2019.05.16.02.12.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 02:12:17 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8723bs: hal: Fix comparison to bool in if
 statements
Date: Thu, 16 May 2019 14:41:40 +0530
Message-Id: <20190516091140.17622-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix following warnings reported by coccicheck:
WARNING: Comparison to bool
by using !x in place of (x == false) and
x in place of (x == true).

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c  | 4 ++--
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c | 2 +-
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c  | 2 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c    | 6 +++---
 drivers/staging/rtl8723bs/hal/hal_com.c           | 2 +-
 drivers/staging/rtl8723bs/hal/odm_DIG.c           | 2 +-
 6 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
index bae59e515348..19856e806b1f 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
@@ -299,7 +299,7 @@ void ODM_ReadAndConfig_MP_8723B_AGC_TAB(PDM_ODM_T pDM_Odm)
 				READ_NEXT_PAIR(v1, v2, i);
 			}
 
-			if (bMatched == false) {
+			if (!bMatched) {
 				/*  Condition isn't matched.
 				*   Discard the following (offset, data) pairs.
 				*/
@@ -568,7 +568,7 @@ void ODM_ReadAndConfig_MP_8723B_PHY_REG(PDM_ODM_T pDM_Odm)
 				READ_NEXT_PAIR(v1, v2, i);
 			}
 
-			if (bMatched == false) {
+			if (!bMatched) {
 				/*  Condition isn't matched.
 				*   Discard the following (offset, data) pairs.
 				*/
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
index 3c8e26aba406..b80c5b11796b 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
@@ -270,7 +270,7 @@ void ODM_ReadAndConfig_MP_8723B_MAC_REG(PDM_ODM_T pDM_Odm)
 				READ_NEXT_PAIR(v1, v2, i);
 			}
 
-			if (bMatched == false) {
+			if (!bMatched) {
 				/*  Condition isn't matched. Discard the following (offset, data) pairs. */
 				while (v1 < 0x40000000 && i < ArrayLen-2)
 					READ_NEXT_PAIR(v1, v2, i);
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
index ba42b4d2a9c4..426f68b8f0d2 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
@@ -301,7 +301,7 @@ void ODM_ReadAndConfig_MP_8723B_RadioA(PDM_ODM_T pDM_Odm)
 				READ_NEXT_PAIR(v1, v2, i);
 			}
 
-			if (bMatched == false) {
+			if (!bMatched) {
 				/*  Condition isn't matched.
 				*   Discard the following (offset, data) pairs.
 				*/
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 53d3bdf21a6f..3239d37087c8 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -1292,7 +1292,7 @@ static void _PHY_SaveADDARegisters8723B(
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 
-	if (ODM_CheckPowerStatus(padapter) == false)
+	if (!ODM_CheckPowerStatus(padapter))
 		return;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save ADDA parameters.\n"));
@@ -1363,7 +1363,7 @@ static void _PHY_PathADDAOn8723B(
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("ADDA ON.\n"));
 
 	pathOn = 0x01c00014;
-	if (false == is2T) {
+	if (!is2T) {
 		pathOn = 0x01c00014;
 		PHY_SetBBReg(pDM_Odm->Adapter, ADDAReg[0], bMaskDWord, 0x01c00014);
 	} else {
@@ -1811,7 +1811,7 @@ void PHY_IQCalibrate_8723B(
 	u32 		StartTime;
 	s32			ProgressingTime;
 
-	if (ODM_CheckPowerStatus(padapter) == false)
+	if (!ODM_CheckPowerStatus(padapter))
 		return;
 
 	if (!(pDM_Odm->SupportAbility & ODM_RF_CALIBRATION))
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index e5f1153527b9..2763479f7601 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -125,7 +125,7 @@ u8 hal_com_config_channel_plan(
 	if (0xFF == hw_channel_plan)
 		AutoLoadFail = true;
 
-	if (false == AutoLoadFail) {
+	if (!AutoLoadFail) {
 		u8 hw_chnlPlan;
 
 		hw_chnlPlan = hw_channel_plan & (~EEPROM_CHANNEL_PLAN_BY_HW_MASK);
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index 4fa6cd315cf7..d7d87fafa724 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -525,7 +525,7 @@ void odm_DIG(void *pDM_VOID)
 	bool bDFSBand = false;
 	bool bPerformance = true, bFirstTpTarget = false, bFirstCoverage = false;
 
-	if (odm_DigAbort(pDM_Odm) == true)
+	if (odm_DigAbort(pDM_Odm))
 		return;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG() ===========================>\n\n"));
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
