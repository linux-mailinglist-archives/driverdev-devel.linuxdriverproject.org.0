Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3354C13AB51
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 14:45:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB9A386016;
	Tue, 14 Jan 2020 13:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDOqeA+AYEtT; Tue, 14 Jan 2020 13:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 410A185CD0;
	Tue, 14 Jan 2020 13:45:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 816751BF873
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E0B585CD0
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vLfFrHDyHEBR for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 13:45:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 89BCA83F66
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 13:45:09 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id t14so13786041wmi.5
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 05:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H5pgahcKzcsGLYm3HCTp6kuWUGFmaO98tCAh35M9tis=;
 b=F1h05tkYwEuuSjvSlnbzm4t96VPN8YNHCB8meS50nK4gDMe0kaN6xKQGEaCnJZ3T/r
 hIb3mhhPHogJG2n+GuRytmq/YYosk5hEy5A+kP6txRhIhzoinL/sxH2sPGFR7iPLtW1q
 ekP3KPoQJdPhTALkGoxSmSENSNUeVyMJ3CtwiMkEZPzzNglU47YQbQU+ZfW4XOMv4gyb
 26tSF4W0NRHVX7SSbeS3goI8In/XJgk0JW15vGRnkB3bEn3MCS2U5NpHBXiD4/a635YZ
 I9yVpjK4WnVBY34C0s1mX8mf4Mjya2BXKO2FlqQthlWnMtP5t2hnARGPKmVHSH2tAdwt
 RgKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H5pgahcKzcsGLYm3HCTp6kuWUGFmaO98tCAh35M9tis=;
 b=mKFa/IC7jRyp66OqaqFNzs9QSlNoCrP4m64QMW0vpNTVz4VtuCjlcaVmtRPJniU9BF
 9okeKX2TZjNbZxKBqJGN3cbVUoUBcVG5XIa5dGqyzdj++bUWEj++WhJxncspUf8sDNuk
 /HCSjMe/ujtGXwLMMBQ2Y89KZzAY8oV1eM7m1f8avqM+6LnjgGgohhBdGFUGIvk0iUnE
 zGyHYP4luskk4h1s4lXZlmYN01u4o3SwvaKCDzV7MSrnJ7uBJ61kvAxJj7VwNrGLYQZt
 /u19rSXqCfUDqPtrGqqRGuYVnff7bwmo4cucelKhen6cYd/uUyTSZwiqK2W2dgmeoK1o
 WaXQ==
X-Gm-Message-State: APjAAAUd3z/SyjP+8KP4SpyTWbE+/++wD0a9yPNDfP0Oyq0So1p76AQW
 TWmr5f7+QTDTtqVNiWERHII=
X-Google-Smtp-Source: APXvYqx9vqod9rD0/2L4fJTgpjwdJgh7w8NLI6DG2fuKwjp0n36+ytZMdJJ71TzFNprWaRa5t9fUog==
X-Received: by 2002:a1c:e289:: with SMTP id z131mr25829140wmg.18.1579009508086; 
 Tue, 14 Jan 2020 05:45:08 -0800 (PST)
Received: from localhost.localdomain
 (dslb-088-070-028-164.088.070.pools.vodafone-ip.de. [88.70.28.164])
 by smtp.gmail.com with ESMTPSA id x10sm19361333wrp.58.2020.01.14.05.45.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:45:07 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/5] staging: rtl8188eu: cleanup whitespace in rtl8188e_dm.c
Date: Tue, 14 Jan 2020 14:44:22 +0100
Message-Id: <20200114134422.13598-5-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114134422.13598-1-straube.linux@gmail.com>
References: <20200114134422.13598-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace tabs with spaces and/or remove spaces to use typical kernel
horizontal whitespace.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 44 ++++++++++-----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 5348db2725a1..241f55b92808 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -21,7 +21,7 @@
 /*  Initialize GPIO setting registers */
 static void dm_InitGPIOSetting(struct adapter *Adapter)
 {
-	u8	tmp1byte;
+	u8 tmp1byte;
 
 	tmp1byte = usb_read8(Adapter, REG_GPIO_MUXCFG);
 	tmp1byte &= (GPIOSEL_GPIO | ~GPIOSEL_ENBT);
@@ -35,7 +35,7 @@ static void dm_InitGPIOSetting(struct adapter *Adapter)
 static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 {
 	struct hal_data_8188e *hal_data = Adapter->HalData;
-	struct dm_priv	*pdmpriv = &hal_data->dmpriv;
+	struct dm_priv *pdmpriv = &hal_data->dmpriv;
 	struct odm_dm_struct *dm_odm = &hal_data->odmpriv;
 
 	/*  Init Value */
@@ -59,38 +59,38 @@ static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;
 
-	pdmpriv->InitODMFlag =	ODM_RF_CALIBRATION |
-				ODM_RF_TX_PWR_TRACK;
+	pdmpriv->InitODMFlag = ODM_RF_CALIBRATION |
+			       ODM_RF_TX_PWR_TRACK;
 
 	dm_odm->SupportAbility = pdmpriv->InitODMFlag;
 }
 
 static void Update_ODM_ComInfo_88E(struct adapter *Adapter)
 {
-	struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
-	struct mlme_priv	*pmlmepriv = &Adapter->mlmepriv;
+	struct mlme_ext_priv *pmlmeext = &Adapter->mlmeextpriv;
+	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 	struct pwrctrl_priv *pwrctrlpriv = &Adapter->pwrctrlpriv;
 	struct hal_data_8188e *hal_data = Adapter->HalData;
 	struct odm_dm_struct *dm_odm = &hal_data->odmpriv;
-	struct dm_priv	*pdmpriv = &hal_data->dmpriv;
+	struct dm_priv *pdmpriv = &hal_data->dmpriv;
 	int i;
 
-	pdmpriv->InitODMFlag =	ODM_BB_DIG |
-				ODM_BB_RA_MASK |
-				ODM_BB_DYNAMIC_TXPWR |
-				ODM_BB_FA_CNT |
-				ODM_BB_RSSI_MONITOR |
-				ODM_BB_CCK_PD |
-				ODM_BB_PWR_SAVE |
-				ODM_MAC_EDCA_TURBO |
-				ODM_RF_CALIBRATION |
-				ODM_RF_TX_PWR_TRACK;
+	pdmpriv->InitODMFlag = ODM_BB_DIG |
+			       ODM_BB_RA_MASK |
+			       ODM_BB_DYNAMIC_TXPWR |
+			       ODM_BB_FA_CNT |
+			       ODM_BB_RSSI_MONITOR |
+			       ODM_BB_CCK_PD |
+			       ODM_BB_PWR_SAVE |
+			       ODM_MAC_EDCA_TURBO |
+			       ODM_RF_CALIBRATION |
+			       ODM_RF_TX_PWR_TRACK;
 	if (hal_data->AntDivCfg)
 		pdmpriv->InitODMFlag |= ODM_BB_ANT_DIV;
 
 	if (Adapter->registrypriv.mp_mode == 1) {
-		pdmpriv->InitODMFlag =	ODM_RF_CALIBRATION |
-					ODM_RF_TX_PWR_TRACK;
+		pdmpriv->InitODMFlag = ODM_RF_CALIBRATION |
+				       ODM_RF_TX_PWR_TRACK;
 	}
 
 	dm_odm->SupportAbility = pdmpriv->InitODMFlag;
@@ -123,7 +123,7 @@ static void Update_ODM_ComInfo_88E(struct adapter *Adapter)
 
 void rtl8188e_InitHalDm(struct adapter *Adapter)
 {
-	struct dm_priv	*pdmpriv = &Adapter->HalData->dmpriv;
+	struct dm_priv *pdmpriv = &Adapter->HalData->dmpriv;
 	struct odm_dm_struct *dm_odm = &Adapter->HalData->odmpriv;
 
 	dm_InitGPIOSetting(Adapter);
@@ -167,7 +167,7 @@ void rtw_hal_dm_watchdog(struct adapter *Adapter)
 
 void rtw_hal_dm_init(struct adapter *Adapter)
 {
-	struct dm_priv	*pdmpriv = &Adapter->HalData->dmpriv;
+	struct dm_priv *pdmpriv = &Adapter->HalData->dmpriv;
 	struct odm_dm_struct *podmpriv = &Adapter->HalData->odmpriv;
 
 	memset(pdmpriv, 0, sizeof(struct dm_priv));
@@ -185,7 +185,7 @@ void rtw_hal_antdiv_rssi_compared(struct adapter *Adapter,
 		/* select optimum_antenna for before linked => For antenna
 		 * diversity
 		 */
-		if (dst->Rssi >=  src->Rssi) {/* keep org parameter */
+		if (dst->Rssi >= src->Rssi) {/* keep org parameter */
 			src->Rssi = dst->Rssi;
 			src->PhyInfo.Optimum_antenna =
 				dst->PhyInfo.Optimum_antenna;
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
