Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB48B18E533
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 182A286A02;
	Sat, 21 Mar 2020 22:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mk6oRFEcze2j; Sat, 21 Mar 2020 22:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D63788679E;
	Sat, 21 Mar 2020 22:28:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E6A11BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 46679878B0
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bLp-mIOBjRkU for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:28:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 70BF7878AE
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:28:30 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id i13so5393035pfe.3
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FJ7czszs6QJI52MOo7v8xxGTQX047zvU5p3YQaPDb+k=;
 b=de9JvBu2UqzMxj3fuRcgHmsF8hzyM0lXaU4CooF6DJPHUeBi3LCTAal4ol13kbVilZ
 86FsZIrgyzdcrcxUhmW/A3Yd8XalKO0AcuwK4C9qjUYIXiyiIU5ggvCpa3/TIo/B+Yfn
 ylFfxDjVCOQmEi49R/+DOBPx1x+oMVYXsviaRfQr33He2KxH0tnzEBVKkcOhc0ZPDT+S
 1bDuMiUlWZT48OpLLJi3A3lwixRXplyef/AeyATPDmhJe9rhckhseiQGH9OspqXTMTY3
 xBq7vZqcBGu8FTyiHzM8g5VRx4BJzlxWs3LBXZ3ssyLYiQUJ3gTr0y1kzbivvUUqWHcO
 avYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FJ7czszs6QJI52MOo7v8xxGTQX047zvU5p3YQaPDb+k=;
 b=MvKDLGfIHWnYzyyr5GICZM3wdWNFFF1ACICU/CPCZJY7OVjym0S/7zUVdUd74wSwsJ
 aF9bVHpDyKdVeDgXJU1DAaiBMPCYS0iwmjJ93JnoNrelhNJOT3ZjLnxZwzS1O5m1cnsY
 DUtKS8xDsfd8LrqnlXf8Yp4R5gNHLp+MUvK1ULWh+F3M2jKSaHl9LkBkhI7vDLkTSKNm
 wEX2HycRQc9VSmNsGKqPNjFFLxU8HXWg0ydgyeaK7h6Al2rfwF4ELK2l1PVaQGXTlh+f
 Fcv3N2I+ulYbL/rqSrT02oQKNyuMO1IuHSMI791+2XMhItk8u5dl35vDKFbLPrqmVboQ
 NI4g==
X-Gm-Message-State: ANhLgQ3y+y7rQPeaA5eFhtAvDS/OlXXPHNmETZR24AcSwVEcQitaSWoz
 LDPB5bRswr11JHGxZil3jrU=
X-Google-Smtp-Source: ADFU+vuAsXLUZyWdCi00/+gbyfM2ZW5TuFWAHnTtWoqJPja0gR4H4X5dfAtlE4p+62pU3bHb/Ni+Eg==
X-Received: by 2002:a62:7d4e:: with SMTP id y75mr16802146pfc.32.1584829709861; 
 Sat, 21 Mar 2020 15:28:29 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id l13sm2476898pjq.42.2020.03.21.15.28.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:28:29 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 09/11] Staging: rtl8188eu:
 rtl8188e_hal_init: Add space around operators
Date: Sun, 22 Mar 2020 03:58:23 +0530
Message-Id: <7b214cfa7179468b7cd25759612d0f29c7fc9aed.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
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
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rtl8188e_hal_init_old.o rtl8188e_hal_init.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 .../staging/rtl8188eu/hal/rtl8188e_hal_init.c | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 57ae0e83dd3e..740004d71a15 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -22,7 +22,7 @@ void iol_mode_enable(struct adapter *padapter, u8 enable)
 	if (enable) {
 		/* Enable initial offload */
 		reg_0xf0 = usb_read8(padapter, REG_SYS_CFG);
-		usb_write8(padapter, REG_SYS_CFG, reg_0xf0|SW_OFFLOAD_EN);
+		usb_write8(padapter, REG_SYS_CFG, reg_0xf0 | SW_OFFLOAD_EN);
 
 		if (!padapter->bFWReady) {
 			DBG_88E("bFWReady == false call reset 8051...\n");
@@ -42,9 +42,9 @@ s32 iol_execute(struct adapter *padapter, u8 control)
 	u8 reg_0x88 = 0;
 	unsigned long start = 0;
 
-	control = control&0x0f;
+	control = control & 0x0f;
 	reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0);
-	usb_write8(padapter, REG_HMEBOX_E0,  reg_0x88|control);
+	usb_write8(padapter, REG_HMEBOX_E0,  reg_0x88 | control);
 
 	start = jiffies;
 	while ((reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0)) & control &&
@@ -54,7 +54,7 @@ s32 iol_execute(struct adapter *padapter, u8 control)
 
 	reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0);
 	status = (reg_0x88 & control) ? _FAIL : _SUCCESS;
-	if (reg_0x88 & control<<4)
+	if (reg_0x88 & control << 4)
 		status = _FAIL;
 	return status;
 }
@@ -64,7 +64,7 @@ static s32 iol_InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
 	s32 rst = _SUCCESS;
 
 	iol_mode_enable(padapter, 1);
-	usb_write8(padapter, REG_TDECTRL+1, txpktbuf_bndy);
+	usb_write8(padapter, REG_TDECTRL + 1, txpktbuf_bndy);
 	rst = iol_execute(padapter, CMD_INIT_LLT);
 	iol_mode_enable(padapter, 0);
 	return rst;
@@ -92,9 +92,9 @@ void _8051Reset88E(struct adapter *padapter)
 {
 	u8 u1bTmp;
 
-	u1bTmp = usb_read8(padapter, REG_SYS_FUNC_EN+1);
-	usb_write8(padapter, REG_SYS_FUNC_EN+1, u1bTmp&(~BIT(2)));
-	usb_write8(padapter, REG_SYS_FUNC_EN+1, u1bTmp|(BIT(2)));
+	u1bTmp = usb_read8(padapter, REG_SYS_FUNC_EN + 1);
+	usb_write8(padapter, REG_SYS_FUNC_EN + 1, u1bTmp & (~BIT(2)));
+	usb_write8(padapter, REG_SYS_FUNC_EN + 1, u1bTmp | (BIT(2)));
 	DBG_88E("=====> _8051Reset88E(): 8051 reset success .\n");
 }
 
@@ -122,7 +122,7 @@ void rtw_hal_read_chip_version(struct adapter *padapter)
 	value32 = usb_read32(padapter, REG_SYS_CFG);
 	ChipVersion.ChipType = ((value32 & RTL_ID) ? TEST_CHIP : NORMAL_CHIP);
 	ChipVersion.VendorType = ((value32 & VENDOR_ID) ? CHIP_VENDOR_UMC : CHIP_VENDOR_TSMC);
-	ChipVersion.CUTVersion = (value32 & CHIP_VER_RTL_MASK)>>CHIP_VER_RTL_SHIFT; /*  IC version (CUT) */
+	ChipVersion.CUTVersion = (value32 & CHIP_VER_RTL_MASK) >> CHIP_VER_RTL_SHIFT; /*  IC version (CUT) */
 
 	dump_chip_info(ChipVersion);
 
@@ -163,10 +163,10 @@ void rtw_hal_notch_filter(struct adapter *adapter, bool enable)
 {
 	if (enable) {
 		DBG_88E("Enable notch filter\n");
-		usb_write8(adapter, rOFDM0_RxDSP+1, usb_read8(adapter, rOFDM0_RxDSP+1) | BIT(1));
+		usb_write8(adapter, rOFDM0_RxDSP + 1, usb_read8(adapter, rOFDM0_RxDSP + 1) | BIT(1));
 	} else {
 		DBG_88E("Disable notch filter\n");
-		usb_write8(adapter, rOFDM0_RxDSP+1, usb_read8(adapter, rOFDM0_RxDSP+1) & ~BIT(1));
+		usb_write8(adapter, rOFDM0_RxDSP + 1, usb_read8(adapter, rOFDM0_RxDSP + 1) & ~BIT(1));
 	}
 }
 
@@ -308,7 +308,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 			if (pwrInfo24G->IndexCCK_Base[rfPath][group] == 0xFF)
 				pwrInfo24G->IndexCCK_Base[rfPath][group] = EEPROM_DEFAULT_24G_INDEX;
 		}
-		for (group = 0; group < MAX_CHNL_GROUP_24G-1; group++) {
+		for (group = 0; group < MAX_CHNL_GROUP_24G - 1; group++) {
 			pwrInfo24G->IndexBW40_Base[rfPath][group] =	PROMContent[eeAddr++];
 			if (pwrInfo24G->IndexBW40_Base[rfPath][group] == 0xFF)
 				pwrInfo24G->IndexBW40_Base[rfPath][group] =	EEPROM_DEFAULT_24G_INDEX;
@@ -319,7 +319,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->BW20_Diff[rfPath][TxCount] = EEPROM_DEFAULT_24G_HT20_DIFF;
 				} else {
-					pwrInfo24G->BW20_Diff[rfPath][TxCount] = (PROMContent[eeAddr]&0xf0)>>4;
+					pwrInfo24G->BW20_Diff[rfPath][TxCount] = (PROMContent[eeAddr] & 0xf0) >> 4;
 					if (pwrInfo24G->BW20_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->BW20_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -327,7 +327,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	EEPROM_DEFAULT_24G_OFDM_DIFF;
 				} else {
-					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0x0f);
+					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0x0f);
 					if (pwrInfo24G->OFDM_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->OFDM_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -337,7 +337,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->BW40_Diff[rfPath][TxCount] =	EEPROM_DEFAULT_DIFF;
 				} else {
-					pwrInfo24G->BW40_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0xf0)>>4;
+					pwrInfo24G->BW40_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0xf0) >> 4;
 					if (pwrInfo24G->BW40_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->BW40_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -345,7 +345,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->BW20_Diff[rfPath][TxCount] =	EEPROM_DEFAULT_DIFF;
 				} else {
-					pwrInfo24G->BW20_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0x0f);
+					pwrInfo24G->BW20_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0x0f);
 					if (pwrInfo24G->BW20_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->BW20_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -354,7 +354,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->OFDM_Diff[rfPath][TxCount] = EEPROM_DEFAULT_DIFF;
 				} else {
-					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0xf0)>>4;
+					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0xf0) >> 4;
 					if (pwrInfo24G->OFDM_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->OFDM_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -362,7 +362,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->CCK_Diff[rfPath][TxCount] =	EEPROM_DEFAULT_DIFF;
 				} else {
-					pwrInfo24G->CCK_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0x0f);
+					pwrInfo24G->CCK_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0x0f);
 					if (pwrInfo24G->CCK_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->CCK_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -450,9 +450,9 @@ void Hal_ReadTxPowerInfo88E(struct adapter *padapter, u8 *PROMContent, bool Auto
 
 	/*  2010/10/19 MH Add Regulator recognize for CU. */
 	if (!AutoLoadFail) {
-		pHalData->EEPROMRegulatory = (PROMContent[EEPROM_RF_BOARD_OPTION_88E]&0x7);	/* bit0~2 */
+		pHalData->EEPROMRegulatory = (PROMContent[EEPROM_RF_BOARD_OPTION_88E] & 0x7);	/* bit0~2 */
 		if (PROMContent[EEPROM_RF_BOARD_OPTION_88E] == 0xFF)
-			pHalData->EEPROMRegulatory = (EEPROM_DEFAULT_BOARD_OPTION&0x7);	/* bit0~2 */
+			pHalData->EEPROMRegulatory = (EEPROM_DEFAULT_BOARD_OPTION & 0x7);	/* bit0~2 */
 	} else {
 		pHalData->EEPROMRegulatory = 0;
 	}
@@ -532,9 +532,9 @@ void Hal_ReadAntennaDiversity88E(struct adapter *pAdapter, u8 *PROMContent, bool
 	if (!AutoLoadFail) {
 		/*  Antenna Diversity setting. */
 		if (registry_par->antdiv_cfg == 2) { /*  2:By EFUSE */
-			pHalData->AntDivCfg = (PROMContent[EEPROM_RF_BOARD_OPTION_88E]&0x18)>>3;
+			pHalData->AntDivCfg = (PROMContent[EEPROM_RF_BOARD_OPTION_88E] & 0x18) >> 3;
 			if (PROMContent[EEPROM_RF_BOARD_OPTION_88E] == 0xFF)
-				pHalData->AntDivCfg = (EEPROM_DEFAULT_BOARD_OPTION&0x18)>>3;
+				pHalData->AntDivCfg = (EEPROM_DEFAULT_BOARD_OPTION & 0x18) >> 3;
 		} else {
 			pHalData->AntDivCfg = registry_par->antdiv_cfg;  /*  0:OFF , 1:ON, 2:By EFUSE */
 		}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
