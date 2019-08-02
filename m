Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4DD80214
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 23:00:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5070387EDD;
	Fri,  2 Aug 2019 21:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ybYg6Q+Ef525; Fri,  2 Aug 2019 21:00:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB81987EB5;
	Fri,  2 Aug 2019 21:00:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 491541BF476
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 21:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3DF4686BCF
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 21:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RiIT7ivz8wyq for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 21:00:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5456C86BBB
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 21:00:24 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id d79so55828544qke.11
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 14:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kwE3+6BcTglZ7l+bRUlKAeLgMYqdZqdhQZew+tyQBhc=;
 b=VdzkLE5tcD+dAKnnkMn/COI3GEV/C5NjE6tmJRXRJKWi5GAG0puvA/kPUC50iX7wQq
 m8uJxenXH0BbjwttGAHYOl2uLptkC3NexdiIq78LQldakVzrKcCN8O5Y/ziIZPSFezD7
 64qaA1Y3pjuzdWKzTdLWCWwhK6SI9zsFEpSHSY4OM71aTy7p7tdHhu+87YlMwojHfof/
 jjFKW2w7xz2h60Q5ujQQ7/7ktFAN8OOiYRwcetFS54IRZVuIisb7PxTBncOMrCuq3elE
 Li+ygXFhjaP8i8BOSD1jhOcoP12+vB5IF8JFjd00cmAvif5pGdQHExMlXAS87sc6ZeyI
 +Gaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kwE3+6BcTglZ7l+bRUlKAeLgMYqdZqdhQZew+tyQBhc=;
 b=ueCctDXpBqMT4K1WPFaVW0xBzJCX9ypkpgubImbzz0gt1WBw81+GqmsEjhyoN9uhqw
 jTijkAP46BYCNKAGC+g4moBkZYdScLMScaJVcVcti0cGt5PS6OLQ7PkCcA/qxEgcDosE
 R0ynPfaI1civamoM73c6HvAmmXS6HKrL7CtV6SEJvIKtKsNYM6IRmNJwc+sHgoJ+b4DJ
 Uw9RtSflJkvUO/G8Uabde1WuXBNUtAdGOes1cz5NZLp5e4xO5kgg5QkhCcfIGlQzTTOw
 OUvb3qrRJA1/ZX+T5Az2GkM0un+ztQNho5mwW+skVaV7WFkcgY+kZ8pcz1St5Bnbhxzf
 Grgw==
X-Gm-Message-State: APjAAAV8WV9Zpc0/ALQzivNQPHyobSq1rCtQ1RlyZAb/fTg3WrH880yg
 mZmlN9wvltEmiEs4douuJU4=
X-Google-Smtp-Source: APXvYqxQK78E2PZwOIgAdfjgcQ3w55xhTiXKNqtO/lRNK3LgnMSywCpvG0K93f8iU1aAbCHZjTMi1A==
X-Received: by 2002:ae9:f107:: with SMTP id k7mr28181289qkg.215.1564779623127; 
 Fri, 02 Aug 2019 14:00:23 -0700 (PDT)
Received: from 0366fb520575.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id o50sm2129600qtj.17.2019.08.02.14.00.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 14:00:22 -0700 (PDT)
From: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH] rtl8188eu: hal: phy.c
Date: Fri,  2 Aug 2019 21:00:18 +0000
Message-Id: <20190802210018.29251-1-joseespiriki@gmail.com>
X-Mailer: git-send-email 2.20.1
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

Fix a lot of checkpath errors of the type:
	-CHECK: spaces preferred around that
	-CHECK: Alignment should match open parenthesis

Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
---
 My second commit to the kernel, I know you ppl don't like these kind of commits
 fixing style-only erros pointed by the checkpath, but I'm doing this just to learn
 Thanks!
 drivers/staging/rtl8188eu/hal/phy.c | 54 ++++++++++++++---------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 51c40abfa..f0d242dec 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -52,7 +52,7 @@ void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
 }
 
 static u32 rf_serial_read(struct adapter *adapt,
-			enum rf_radio_path rfpath, u32 offset)
+			  enum rf_radio_path rfpath, u32 offset)
 {
 	u32 ret = 0;
 	struct bb_reg_def *phyreg = &adapt->HalData->PHYRegDef[rfpath];
@@ -69,10 +69,10 @@ static u32 rf_serial_read(struct adapter *adapt,
 					    bMaskDWord);
 
 	tmplong2 = (tmplong2 & (~bLSSIReadAddress)) |
-		   (offset<<23) | bLSSIReadEdge;
+		   (offset << 23) | bLSSIReadEdge;
 
 	phy_set_bb_reg(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord,
-		       tmplong&(~bLSSIReadEdge));
+		       tmplong & (~bLSSIReadEdge));
 	udelay(10);
 
 	phy_set_bb_reg(adapt, phyreg->rfHSSIPara2, bMaskDWord, tmplong2);
@@ -102,12 +102,12 @@ static void rf_serial_write(struct adapter *adapt,
 	struct bb_reg_def *phyreg = &adapt->HalData->PHYRegDef[rfpath];
 
 	offset &= 0xff;
-	data_and_addr = ((offset<<20) | (data&0x000fffff)) & 0x0fffffff;
+	data_and_addr = ((offset << 20) | (data & 0x000fffff)) & 0x0fffffff;
 	phy_set_bb_reg(adapt, phyreg->rf3wireOffset, bMaskDWord, data_and_addr);
 }
 
 u32 rtw_hal_read_rfreg(struct adapter *adapt, enum rf_radio_path rf_path,
-		     u32 reg_addr, u32 bit_mask)
+		       u32 reg_addr, u32 bit_mask)
 {
 	u32 original_value, bit_shift;
 
@@ -117,7 +117,7 @@ u32 rtw_hal_read_rfreg(struct adapter *adapt, enum rf_radio_path rf_path,
 }
 
 void phy_set_rf_reg(struct adapter *adapt, enum rf_radio_path rf_path,
-		     u32 reg_addr, u32 bit_mask, u32 data)
+		    u32 reg_addr, u32 bit_mask, u32 data)
 {
 	u32 original_value, bit_shift;
 
@@ -143,20 +143,20 @@ static void get_tx_power_index(struct adapter *adapt, u8 channel, u8 *cck_pwr,
 	for (TxCount = 0; TxCount < path_nums; TxCount++) {
 		if (TxCount == RF_PATH_A) {
 			cck_pwr[TxCount] = hal_data->Index24G_CCK_Base[TxCount][index];
-			ofdm_pwr[TxCount] = hal_data->Index24G_BW40_Base[RF_PATH_A][index]+
+			ofdm_pwr[TxCount] = hal_data->Index24G_BW40_Base[RF_PATH_A][index] +
 					    hal_data->OFDM_24G_Diff[TxCount][RF_PATH_A];
 
-			bw20_pwr[TxCount] = hal_data->Index24G_BW40_Base[RF_PATH_A][index]+
+			bw20_pwr[TxCount] = hal_data->Index24G_BW40_Base[RF_PATH_A][index] +
 					    hal_data->BW20_24G_Diff[TxCount][RF_PATH_A];
 			bw40_pwr[TxCount] = hal_data->Index24G_BW40_Base[TxCount][index];
 		} else if (TxCount == RF_PATH_B) {
 			cck_pwr[TxCount] = hal_data->Index24G_CCK_Base[TxCount][index];
-			ofdm_pwr[TxCount] = hal_data->Index24G_BW40_Base[RF_PATH_A][index]+
-			hal_data->BW20_24G_Diff[RF_PATH_A][index]+
+			ofdm_pwr[TxCount] = hal_data->Index24G_BW40_Base[RF_PATH_A][index] +
+			hal_data->BW20_24G_Diff[RF_PATH_A][index] +
 			hal_data->BW20_24G_Diff[TxCount][index];
 
-			bw20_pwr[TxCount] = hal_data->Index24G_BW40_Base[RF_PATH_A][index]+
-			hal_data->BW20_24G_Diff[TxCount][RF_PATH_A]+
+			bw20_pwr[TxCount] = hal_data->Index24G_BW40_Base[RF_PATH_A][index] +
+			hal_data->BW20_24G_Diff[TxCount][RF_PATH_A] +
 			hal_data->BW20_24G_Diff[TxCount][index];
 			bw40_pwr[TxCount] = hal_data->Index24G_BW40_Base[TxCount][index];
 		}
@@ -190,7 +190,7 @@ void phy_set_tx_power_level(struct adapter *adapt, u8 channel)
 
 	rtl88eu_phy_rf6052_set_cck_txpower(adapt, &cck_pwr[0]);
 	rtl88eu_phy_rf6052_set_ofdm_txpower(adapt, &ofdm_pwr[0], &bw20_pwr[0],
-					  &bw40_pwr[0], channel);
+					    &bw40_pwr[0], channel);
 }
 
 static void phy_set_bw_mode_callback(struct adapter *adapt)
@@ -903,13 +903,13 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
 		if (diff > MAX_TOLERANCE) {
 			if ((i == 2 || i == 6) && !sim_bitmap) {
 				if (resulta[c1][i] + resulta[c1][i+1] == 0)
-					final_candidate[(i/4)] = c2;
+					final_candidate[(i / 4)] = c2;
 				else if (resulta[c2][i] + resulta[c2][i+1] == 0)
-					final_candidate[(i/4)] = c1;
+					final_candidate[(i / 4)] = c1;
 				else
-					sim_bitmap = sim_bitmap | (1<<i);
+					sim_bitmap = sim_bitmap | (1 << i);
 			} else {
-				sim_bitmap = sim_bitmap | (1<<i);
+				sim_bitmap = sim_bitmap | (1 << i);
 			}
 		}
 	}
@@ -1074,19 +1074,19 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 			path_b_ok = phy_path_b_iqk(adapt);
 			if (path_b_ok == 0x03) {
 				result[t][4] = (phy_query_bb_reg(adapt, rTx_Power_Before_IQK_B,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord)&0x3FF0000) >> 16;
 				result[t][5] = (phy_query_bb_reg(adapt, rTx_Power_After_IQK_B,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord)&0x3FF0000) >> 16;
 				result[t][6] = (phy_query_bb_reg(adapt, rRx_Power_Before_IQK_B_2,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord)&0x3FF0000) >> 16;
 				result[t][7] = (phy_query_bb_reg(adapt, rRx_Power_After_IQK_B_2,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord)&0x3FF0000) >> 16;
 				break;
 			} else if (i == (retry_count - 1) && path_b_ok == 0x01) {	/* Tx IQK OK */
 				result[t][4] = (phy_query_bb_reg(adapt, rTx_Power_Before_IQK_B,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord)&0x3FF0000) >> 16;
 				result[t][5] = (phy_query_bb_reg(adapt, rTx_Power_After_IQK_B,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord)&0x3FF0000) >> 16;
 			}
 		}
 
@@ -1158,12 +1158,12 @@ static void phy_lc_calibrate(struct adapter *adapt, bool is2t)
 		/* 2. Set RF mode = standby mode */
 		/* Path-A */
 		phy_set_rf_reg(adapt, RF_PATH_A, RF_AC, bMask12Bits,
-			       (rf_a_mode&0x8FFFF)|0x10000);
+			       (rf_a_mode&0x8FFFF) | 0x10000);
 
 		/* Path-B */
 		if (is2t)
 			phy_set_rf_reg(adapt, RF_PATH_B, RF_AC, bMask12Bits,
-				       (rf_b_mode&0x8FFFF)|0x10000);
+				       (rf_b_mode&0x8FFFF) | 0x10000);
 	}
 
 	/* 3. Read RF reg18 */
@@ -1171,12 +1171,12 @@ static void phy_lc_calibrate(struct adapter *adapt, bool is2t)
 
 	/* 4. Set LC calibration begin bit15 */
 	phy_set_rf_reg(adapt, RF_PATH_A, RF_CHNLBW, bMask12Bits,
-		       lc_cal|0x08000);
+		       lc_cal | 0x08000);
 
 	msleep(100);
 
 	/* Restore original situation */
-	if ((tmpreg&0x70) != 0) {
+	if ((tmpreg & 0x70) != 0) {
 		/* Deal with continuous TX case */
 		/* Path-A */
 		usb_write8(adapt, 0xd03, tmpreg);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
