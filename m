Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CEF9C5D4
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 21:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E9D7880C2;
	Sun, 25 Aug 2019 19:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zrqXpw3w-BRN; Sun, 25 Aug 2019 19:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C076A87FB5;
	Sun, 25 Aug 2019 19:38:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4883A1BF86C
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 19:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 452EB86E33
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 19:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LmrhdEEu+P1S for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 19:38:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B9F986DA8
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 19:38:54 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c81so10169044pfc.11
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 12:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=SJal4KLRm7B2LQ42jpG39oGCWo7bSLLR7JP0RI7lapM=;
 b=soVFj+bxubEBJv0fPQjxQRpBAsW58B7GaVnkthXUlZCcRjKe8np+vEs8vObGSuXE5q
 9xlZ+vA6hfQaKhyn+4Kyo2+iNNxniYJYgVQxBtV+fOOhEDbAJCIKEfzngdoP07e41Lxa
 njQ7Nt0uueKuYZhTtwAwzxVyc6Uom94bdxPKSbEhI1XX/en/xOKsCYPKhfJJ/penV6zn
 KMIjHUmuOzuiCk0KHqJ6ZL0UQ74jkr3Zk0UOBKxUNAGGqmQq7bNBuVPxzzFnynf6vRM9
 8v0QSv07Z3+kmohtsyYrmOWHIiexpVrgdtKqwaiDnAcgjgA6y1V9o5faPie+3Eu39Q8H
 kMMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SJal4KLRm7B2LQ42jpG39oGCWo7bSLLR7JP0RI7lapM=;
 b=Jjk6gtDDNaD7cmx2sGwoVnJSdUnIM2DzWXpQGwGHR4D0BkIjJoUz7RzO+w1XEip5db
 HsXrch8yBDZ9j51lvzRbTUqMNutRuF2sXGa0Nv4a7n8tWXs88oiqJBMqsF/+GbID7bO3
 u5eLUdOmWQUM7vlG2SeTW1tg8t1waSWOgbuwTioTVanq0nXxwcFkAcl3pUqQKDPd4hQ3
 rDeKQ8pUXpnQWIiSA9OLTCbDM4vrr3CVTSbvvgKg8lUfSF+OZhTl5lUrlbZmuGAQtAuE
 CF8iJ/s3ETG2jKLj05Aw4l1MhG5czsYHYAVifIVelzTn/f5eCXh7nwhhhKR8D7dz5FB0
 dMyg==
X-Gm-Message-State: APjAAAUu3Gpd1ix22zy+K/cxMRsV6YEgELzVeeoDupDAlJXu69utqvf/
 Ia+KCVrlcBxnGkNUNutZgtFq+2NCElqcRA==
X-Google-Smtp-Source: APXvYqwcjKzDPrF3+bwac1pqn7RwMRGWs+TO2iYfOmobNQBkWkKzm+5H35I9ZfbArLZLvMK9Ea8KDg==
X-Received: by 2002:a62:db86:: with SMTP id
 f128mr16142429pfg.159.1566761933924; 
 Sun, 25 Aug 2019 12:38:53 -0700 (PDT)
Received: from localhost.localdomain ([117.197.254.111])
 by smtp.gmail.com with ESMTPSA id w1sm8241835pjt.30.2019.08.25.12.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 12:38:53 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: Fix spacing style issues
Date: Mon, 26 Aug 2019 01:08:35 +0530
Message-Id: <20190825193835.28848-1-sylphrenadin@gmail.com>
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
	CHECK: Blank lines aren't necessary before a close brace '}'
	CHECK: Please use a blank line after function/struct/union/enum declarations
	CHECK: No space is necessary after a cast
	CHECK: Please don't use multiple blank lines
	CHECK: Please don't use multiple blank lines

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 38 +++++++++++-------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 0bedf88525cd..b169460b9f26 100644
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
@@ -79,10 +79,10 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
 		default:
 				RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown Bandwidth: %#X\n", Bandwidth);
 				break;
-
 		}
 	}
 }
+
 /*--------------------------------------------------------------------------
  * Overview:    Interface to config 8256
  * Input:       struct net_device*	dev
@@ -101,6 +101,7 @@ void phy_rf8256_config(struct net_device *dev)
 	/* Config BB and RF */
 	phy_rf8256_config_para_file(dev);
 }
+
 /*--------------------------------------------------------------------------
  * Overview:    Interface to config 8256
  * Input:       struct net_device*	dev
@@ -137,12 +138,12 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
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
@@ -151,7 +152,7 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 		rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, b3WireAddressLength, 0x0);	/* Set 0 to 4 bits for Z-serial and set 1 to 6 bits for 8258 */
 		rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, b3WireDataLength, 0x0);	/* Set 0 to 12 bits for Z-serial and 8258, and set 1 to 14 bits for ??? */
 
-		rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e) eRFPath, 0x0, bMask12Bits, 0xbf);
+		rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x0, bMask12Bits, 0xbf);
 
 		/* Check RF block (for FPGA platform only)----
 		 * TODO: this function should be removed on ASIC , Emily 2007.2.2
@@ -207,7 +208,7 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 			break;
 		case RF90_PATH_B:
 		case RF90_PATH_D:
-			rtl8192_setBBreg(dev, pPhyReg->rfintfs, bRFSI_RFENV<<16, u4RegValue);
+			rtl8192_setBBreg(dev, pPhyReg->rfintfs, bRFSI_RFENV << 16, u4RegValue);
 			break;
 		}
 
@@ -215,7 +216,6 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 			RT_TRACE(COMP_ERR, "phy_rf8256_config_para_file():Radio[%d] Fail!!", eRFPath);
 			goto phy_RF8256_Config_ParaFile_Fail;
 		}
-
 	}
 
 	RT_TRACE(COMP_PHY, "PHY Initialization Success\n");
@@ -225,11 +225,11 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 	RT_TRACE(COMP_ERR, "PHY Initialization failed\n");
 }
 
-
 void phy_set_rf8256_cck_tx_power(struct net_device *dev, u8 powerlevel)
 {
 	u32	TxAGC = 0;
 	struct r8192_priv *priv = ieee80211_priv(dev);
+
 	TxAGC = powerlevel;
 
 	if (priv->bDynamicTxLowPower) {
@@ -244,7 +244,6 @@ void phy_set_rf8256_cck_tx_power(struct net_device *dev, u8 powerlevel)
 	rtl8192_setBBreg(dev, rTxAGC_CCK_Mcs32, bTxAGCRateCCK, TxAGC);
 }
 
-
 void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -255,16 +254,16 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
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
@@ -278,7 +277,7 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 
 		/* for tx power track */
 		if (index == 3) {
-			writeVal_tmp = (byte3<<24) | (byte2<<16) | (byte1<<8) | byte0;
+			writeVal_tmp = (byte3 << 24) | (byte2 << 16) | (byte1 << 8) | byte0;
 			priv->Pwr_Track = writeVal_tmp;
 		}
 
@@ -288,10 +287,9 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 			 */
 			writeVal = 0x03030303;
 		} else {
-			writeVal = (byte3<<24) | (byte2<<16) | (byte1<<8) | byte0;
+			writeVal = (byte3 << 24) | (byte2 << 16) | (byte1 << 8) | byte0;
 		}
 		rtl8192_setBBreg(dev, RegOffset[index], 0x7f7f7f7f, writeVal);
 	}
 	return;
-
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
