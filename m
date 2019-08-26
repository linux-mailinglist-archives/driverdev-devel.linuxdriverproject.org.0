Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E14DF9D582
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 20:09:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73ABB8758D;
	Mon, 26 Aug 2019 18:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eyl+C5GaNbxq; Mon, 26 Aug 2019 18:09:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D7258473A;
	Mon, 26 Aug 2019 18:09:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6021BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1AC688810B
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2bxqqynszY8l for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 18:09:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69F05880D9
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 18:09:29 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id w26so12267593pfq.12
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 11:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HXAusLKuGgn/yCGaNAx+EFEPddE05r0hFi505hL6xrs=;
 b=KZWpqhGYLW0qPVnhmXjEcFwn6y6hciduDuLgBkhERrJ69XYEJ5AVG6ofzUXKCy4gbU
 eHCOcFwGT/Gao1OPWaZb09q9JehFKyeubWWbF+yDnxMLS5g6p509ERcKAzmQpwnJ5qOt
 8UCMJgy+hXk8/pbiKB9nbEsIkQDY5Y5IbOwOzfIIY118IBJqaPL/Op1QOjR+ltXju4US
 unzc34OBwqgFIVodSU/5X7HwRu8k4yUtn5GmXxmwNzLwIZoYPYq+Zl4O2hgE7LQonqvd
 8I+TpmowxULVtDqdiebnboL3oOfH7fQzCUbPaQ6RzbfbDxtg/pq9YPt0LbdbwCYh/TOp
 JP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HXAusLKuGgn/yCGaNAx+EFEPddE05r0hFi505hL6xrs=;
 b=Ac6rgumsvH/3RmjcNN20OX/hw+LHEOnYGEiKcNVd/ftu4rMNtuvb41D9dQdtaKeGNt
 eyH1rWcin9G9yNEGhYc2ohCoL/70/KBqbdDqzCTFRg66I4HsaoxTTSmy04PnR2R+YRiq
 VpNK1+S016n3AtL2AVIeIIYLuNDwvK2ujUbgPp2ZpP/L6Wz59NZBTHKR40CiRFdTQdmo
 X2yJS0Ix98leoTmUtpNtPvV+bkToED3mEQmOs7r9XMaFyoyRj40B1dQUMJSXhW1R1qom
 6HMiySic6SyVWplXn4XFnhHoKkt55gCL9IyBR53TvQMawmcdOVS9XihZ7HS9gPoYfcsT
 HaDg==
X-Gm-Message-State: APjAAAVqwdYStbNeusyk3uVOwpHV6TdVUstDh88jL9o7PlI/NwbzHSbc
 GE5n6cTeMr9w9EM2qDzCGxs=
X-Google-Smtp-Source: APXvYqxH+5YPV0xzkr/Tp6fnRAIJxXKHyvkqri0IJUFrsZ6Av7hwFMYCm6g6LfX4jM1R656AP4LeaA==
X-Received: by 2002:a65:680b:: with SMTP id l11mr16469420pgt.35.1566842968973; 
 Mon, 26 Aug 2019 11:09:28 -0700 (PDT)
Received: from localhost.localdomain ([157.41.186.156])
 by smtp.gmail.com with ESMTPSA id e13sm14284231pfl.130.2019.08.26.11.09.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:09:28 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/2] staging: rtl8192u: Add or remove spaces to fix style
 issues
Date: Mon, 26 Aug 2019 23:39:09 +0530
Message-Id: <20190826180909.27775-1-sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the file r8190_rtl8256.c to avoid the following
checkpatch.pl warnings:
	CHECK: spaces preferred around that '<<' (ctx:VxV)
	CHECK: spaces preferred around that '-' (ctx:VxV)
	CHECK: No space is necessary after a cast

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
Changes since v1:
- Split the commit into two patches
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 30 ++++++++++++------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 0bedf88525cd..7c7f8247b27a 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -42,9 +42,9 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
 
 		switch (Bandwidth) {
 		case HT_CHANNEL_WIDTH_20:
-				if (priv->card_8192_version == VERSION_819XU_A
-					|| priv->card_8192_version
-					== VERSION_819XU_B) { /* 8256 D-cut, E-cut, xiong: consider it later! */
+				if (priv->card_8192_version == VERSION_819XU_A ||
+					priv->card_8192_version ==
+					VERSION_819XU_B) { /* 8256 D-cut, E-cut, xiong: consider it later! */
 					rtl8192_phy_SetRFReg(dev,
 						(enum rf90_radio_path_e)eRFPath,
 						0x0b, bMask12Bits, 0x100); /* phy para:1ba */
@@ -137,12 +137,12 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 			break;
 		case RF90_PATH_B:
 		case RF90_PATH_D:
-			u4RegValue = rtl8192_QueryBBReg(dev, pPhyReg->rfintfs, bRFSI_RFENV<<16);
+			u4RegValue = rtl8192_QueryBBReg(dev, pPhyReg->rfintfs, bRFSI_RFENV << 16);
 			break;
 		}
 
 		/*----Set RF_ENV enable----*/
-		rtl8192_setBBreg(dev, pPhyReg->rfintfe, bRFSI_RFENV<<16, 0x1);
+		rtl8192_setBBreg(dev, pPhyReg->rfintfe, bRFSI_RFENV << 16, 0x1);
 
 		/*----Set RF_ENV output high----*/
 		rtl8192_setBBreg(dev, pPhyReg->rfintfo, bRFSI_RFENV, 0x1);
@@ -151,7 +151,7 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 		rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, b3WireAddressLength, 0x0);	/* Set 0 to 4 bits for Z-serial and set 1 to 6 bits for 8258 */
 		rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, b3WireDataLength, 0x0);	/* Set 0 to 12 bits for Z-serial and 8258, and set 1 to 14 bits for ??? */
 
-		rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e) eRFPath, 0x0, bMask12Bits, 0xbf);
+		rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x0, bMask12Bits, 0xbf);
 
 		/* Check RF block (for FPGA platform only)----
 		 * TODO: this function should be removed on ASIC , Emily 2007.2.2
@@ -207,7 +207,7 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 			break;
 		case RF90_PATH_B:
 		case RF90_PATH_D:
-			rtl8192_setBBreg(dev, pPhyReg->rfintfs, bRFSI_RFENV<<16, u4RegValue);
+			rtl8192_setBBreg(dev, pPhyReg->rfintfs, bRFSI_RFENV << 16, u4RegValue);
 			break;
 		}
 
@@ -255,16 +255,16 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 	u8 byte0, byte1, byte2, byte3;
 
 	powerBase0 = powerlevel + priv->TxPowerDiff;	/* OFDM rates */
-	powerBase0 = (powerBase0<<24) | (powerBase0<<16) | (powerBase0<<8) | powerBase0;
+	powerBase0 = (powerBase0 << 24) | (powerBase0 << 16) | (powerBase0 << 8) | powerBase0;
 	powerBase1 = powerlevel;							/* MCS rates */
-	powerBase1 = (powerBase1<<24) | (powerBase1<<16) | (powerBase1<<8) | powerBase1;
+	powerBase1 = (powerBase1 << 24) | (powerBase1 << 16) | (powerBase1 << 8) | powerBase1;
 
 	for (index = 0; index < 6; index++) {
-		writeVal = priv->MCSTxPowerLevelOriginalOffset[index] + ((index < 2)?powerBase0:powerBase1);
+		writeVal = priv->MCSTxPowerLevelOriginalOffset[index] + ((index < 2) ? powerBase0 : powerBase1);
 		byte0 = (u8)(writeVal & 0x7f);
-		byte1 = (u8)((writeVal & 0x7f00)>>8);
-		byte2 = (u8)((writeVal & 0x7f0000)>>16);
-		byte3 = (u8)((writeVal & 0x7f000000)>>24);
+		byte1 = (u8)((writeVal & 0x7f00) >> 8);
+		byte2 = (u8)((writeVal & 0x7f0000) >> 16);
+		byte3 = (u8)((writeVal & 0x7f000000) >> 24);
 
 		if (byte0 > 0x24)
 			/* Max power index = 0x24 */
@@ -278,7 +278,7 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 
 		/* for tx power track */
 		if (index == 3) {
-			writeVal_tmp = (byte3<<24) | (byte2<<16) | (byte1<<8) | byte0;
+			writeVal_tmp = (byte3 << 24) | (byte2 << 16) | (byte1 << 8) | byte0;
 			priv->Pwr_Track = writeVal_tmp;
 		}
 
@@ -288,7 +288,7 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 			 */
 			writeVal = 0x03030303;
 		} else {
-			writeVal = (byte3<<24) | (byte2<<16) | (byte1<<8) | byte0;
+			writeVal = (byte3 << 24) | (byte2 << 16) | (byte1 << 8) | byte0;
 		}
 		rtl8192_setBBreg(dev, RegOffset[index], 0x7f7f7f7f, writeVal);
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
