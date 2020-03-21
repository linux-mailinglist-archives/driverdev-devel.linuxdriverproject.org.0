Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 522B218E528
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:24:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF64587872;
	Sat, 21 Mar 2020 22:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A-FYz8rR4G93; Sat, 21 Mar 2020 22:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D7F687898;
	Sat, 21 Mar 2020 22:24:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4F701BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A1826203A3
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXq0ztYNm1Xp for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:24:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 23ECF20335
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:24:27 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id 7so5066959pgr.2
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UUW8XP/KDrV3Nf5I8So1L9B3/7J7B+exBPy8n5BY8u4=;
 b=KKbY/PI7v1SVgnHytnL/fZjEuA1iRGJTZUjH44NdpTrgrRAhCiimFvq1dIyeJQFaln
 zDULdVJ47kF0GhQ7ZKtA5+ohF3v4ekLZ+EFQgfy3nL9hh38sWaZBPSBUymZwrS3lvIRH
 S+0lo//+epgOo/q7WC/oczR/hcnG7Eczp4Et/xwNzbNndNadJ1Ii5qbFmNXtITEzHlEB
 S8ZCPXizJA+m8kD0DHsbo15A/Rfhph2qNzPlZGGJhO3QJfxYPcglwQ6ztRfMsjfZLpjJ
 iQ+gPe+AChgdaCbgQsWCAfMloIY4/lmcvuNzfpC6JEcpSHSkWADe5W5Hb68G/wkoYxHn
 afzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UUW8XP/KDrV3Nf5I8So1L9B3/7J7B+exBPy8n5BY8u4=;
 b=DK2HdlPKAPTp1HJVfwRHprJbsAC6cVLpchLVCq2PwXf6J32hHHWK27B4GXSQjGaPiu
 yPskb0LQ429y/mhRosb7o5NxI102RQA5ZmjBrI2q0VDMsKrvvEWy/KnrFQK2WEpeUKKh
 N9hJYkcsogQhVNOAaPu0U0prSiiuLnpVUcKcsdHJxTu+TPAfO2tYWMVeHLqH1BO67Y2k
 mluRHpKHiiPFpYLiFpUJ/lPRqxaCFMNE1Y1BUMbQZhdT4N2dMvWrsOxXw1Udw7U41IXb
 DGzfhoJKYrxAVi1rQh5AEhXRvuw7Ib6fIAKKrsnnI+Kd4VqpHheteTp6SoBj61l+At6N
 rdpg==
X-Gm-Message-State: ANhLgQ2Y++12nNUZ0IgObpDpEGL8w36Oe5OdkU2wfHJSVahfGVB+VvOu
 Ww3zTBop0MjfW7n6HC+2bHw=
X-Google-Smtp-Source: ADFU+vvQakQlngHXGdU6NFUl7vKTwUPjvszEDKKsDXcwkXMGJxTGu/ItZT5BgzsgdcXdv5dVvu/voA==
X-Received: by 2002:a63:ec12:: with SMTP id j18mr14511541pgh.137.1584829466536; 
 Sat, 21 Mar 2020 15:24:26 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id y123sm9044088pfb.13.2020.03.21.15.24.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:24:26 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 04/11] Staging: rtl8188eu: phy: Add space
 around operators
Date: Sun, 22 Mar 2020 03:54:20 +0530
Message-Id: <9ae02593b7645c9b1b5fa4fb86623466fa70ef19.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/phy.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff phy_old.o phy.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/phy.c | 138 ++++++++++++++--------------
 1 file changed, 69 insertions(+), 69 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index afaf9e55195a..b9025815b682 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
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
@@ -102,7 +102,7 @@ static void rf_serial_write(struct adapter *adapt,
 	struct bb_reg_def *phyreg = &adapt->HalData->PHYRegDef[rfpath];
 
 	offset &= 0xff;
-	data_and_addr = ((offset<<20) | (data&0x000fffff)) & 0x0fffffff;
+	data_and_addr = ((offset << 20) | (data & 0x000fffff)) & 0x0fffffff;
 	phy_set_bb_reg(adapt, phyreg->rf3wireOffset, bMaskDWord, data_and_addr);
 }
 
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
@@ -205,7 +205,7 @@ static void phy_set_bw_mode_callback(struct adapter *adapt)
 	/* Set MAC register */
 
 	reg_bw_opmode = usb_read8(adapt, REG_BWOPMODE);
-	reg_prsr_rsc = usb_read8(adapt, REG_RRSR+2);
+	reg_prsr_rsc = usb_read8(adapt, REG_RRSR + 2);
 
 	switch (hal_data->CurrentChannelBW) {
 	case HT_CHANNEL_WIDTH_20:
@@ -215,9 +215,9 @@ static void phy_set_bw_mode_callback(struct adapter *adapt)
 	case HT_CHANNEL_WIDTH_40:
 		reg_bw_opmode &= ~BW_OPMODE_20MHZ;
 		usb_write8(adapt, REG_BWOPMODE, reg_bw_opmode);
-		reg_prsr_rsc = (reg_prsr_rsc&0x90) |
-			       (hal_data->nCur40MhzPrimeSC<<5);
-		usb_write8(adapt, REG_RRSR+2, reg_prsr_rsc);
+		reg_prsr_rsc = (reg_prsr_rsc & 0x90) |
+			       (hal_data->nCur40MhzPrimeSC << 5);
+		usb_write8(adapt, REG_RRSR + 2, reg_prsr_rsc);
 		break;
 	default:
 		break;
@@ -236,7 +236,7 @@ static void phy_set_bw_mode_callback(struct adapter *adapt)
 		 * These settings are required only for 40MHz
 		 */
 		phy_set_bb_reg(adapt, rCCK0_System, bCCKSideBand,
-		    (hal_data->nCur40MhzPrimeSC>>1));
+		    (hal_data->nCur40MhzPrimeSC >> 1));
 		phy_set_bb_reg(adapt, rOFDM1_LSTF, 0xC00,
 			       hal_data->nCur40MhzPrimeSC);
 		phy_set_bb_reg(adapt, 0x818, (BIT(26) | BIT(27)),
@@ -337,8 +337,8 @@ void rtl88eu_dm_txpower_track_adjust(struct odm_dm_struct *dm_odm, u8 type,
 	if (pwr_value >= ODM_TXPWRTRACK_MAX_IDX_88E && *direction == 1)
 		pwr_value = ODM_TXPWRTRACK_MAX_IDX_88E;
 
-	*out_write_val = pwr_value | (pwr_value<<8) | (pwr_value<<16) |
-			 (pwr_value<<24);
+	*out_write_val = pwr_value | (pwr_value << 8) | (pwr_value << 16) |
+			 (pwr_value << 24);
 }
 
 static void dm_txpwr_track_setpwr(struct odm_dm_struct *dm_odm)
@@ -389,9 +389,9 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 
 	if (thermal_val) {
 		/* Query OFDM path A default setting */
-		ele_d = phy_query_bb_reg(adapt, rOFDM0_XATxIQImbalance, bMaskDWord)&bMaskOFDM_D;
+		ele_d = phy_query_bb_reg(adapt, rOFDM0_XATxIQImbalance, bMaskDWord) & bMaskOFDM_D;
 		for (i = 0; i < OFDM_TABLE_SIZE_92D; i++) {
-			if (ele_d == (OFDMSwingTable[i]&bMaskOFDM_D)) {
+			if (ele_d == (OFDMSwingTable[i] & bMaskOFDM_D)) {
 				ofdm_index_old[0] = (u8)i;
 				dm_odm->BbSwingIdxOfdmBase = (u8)i;
 				break;
@@ -472,18 +472,18 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 				}
 			}
 			if (offset >= index_mapping_NUM_88E)
-				offset = index_mapping_NUM_88E-1;
+				offset = index_mapping_NUM_88E - 1;
 
 			/* Updating ofdm_index values with new OFDM / CCK offset */
 			ofdm_index[0] = dm_odm->RFCalibrateInfo.OFDM_index[0] + ofdm_index_mapping[j][offset];
-			if (ofdm_index[0] > OFDM_TABLE_SIZE_92D-1)
-				ofdm_index[0] = OFDM_TABLE_SIZE_92D-1;
+			if (ofdm_index[0] > OFDM_TABLE_SIZE_92D - 1)
+				ofdm_index[0] = OFDM_TABLE_SIZE_92D - 1;
 			else if (ofdm_index[0] < ofdm_min_index)
 				ofdm_index[0] = ofdm_min_index;
 
 			cck_index = dm_odm->RFCalibrateInfo.CCK_index + ofdm_index_mapping[j][offset];
-			if (cck_index > CCK_TABLE_SIZE-1)
-				cck_index = CCK_TABLE_SIZE-1;
+			if (cck_index > CCK_TABLE_SIZE - 1)
+				cck_index = CCK_TABLE_SIZE - 1;
 			else if (cck_index < 0)
 				cck_index = 0;
 
@@ -548,8 +548,8 @@ static u8 phy_path_a_iqk(struct adapter *adapt, bool config_pathb)
 	reg_e9c = phy_query_bb_reg(adapt, rTx_Power_After_IQK_A, bMaskDWord);
 
 	if (!(reg_eac & BIT(28)) &&
-	    (((reg_e94 & 0x03FF0000)>>16) != 0x142) &&
-	    (((reg_e9c & 0x03FF0000)>>16) != 0x42))
+	    (((reg_e94 & 0x03FF0000) >> 16) != 0x142) &&
+	    (((reg_e9c & 0x03FF0000) >> 16) != 0x42))
 		result |= 0x01;
 	return result;
 }
@@ -600,13 +600,13 @@ static u8 phy_path_a_rx_iqk(struct adapter *adapt, bool configPathB)
 	reg_e9c = phy_query_bb_reg(adapt, rTx_Power_After_IQK_A, bMaskDWord);
 
 	if (!(reg_eac & BIT(28)) &&
-	    (((reg_e94 & 0x03FF0000)>>16) != 0x142) &&
-	    (((reg_e9c & 0x03FF0000)>>16) != 0x42))
+	    (((reg_e94 & 0x03FF0000) >> 16) != 0x142) &&
+	    (((reg_e9c & 0x03FF0000) >> 16) != 0x42))
 		result |= 0x01;
 	else					/* if Tx not OK, ignore Rx */
 		return result;
 
-	u4tmp = 0x80007C00 | (reg_e94&0x3FF0000)  | ((reg_e9c&0x3FF0000) >> 16);
+	u4tmp = 0x80007C00 | (reg_e94 & 0x3FF0000)  | ((reg_e9c & 0x3FF0000) >> 16);
 	phy_set_bb_reg(adapt, rTx_IQK, bMaskDWord, u4tmp);
 
 	/* 1 RX IQK */
@@ -648,8 +648,8 @@ static u8 phy_path_a_rx_iqk(struct adapter *adapt, bool configPathB)
 	phy_set_rf_reg(adapt, RF_PATH_A, 0xdf, bRFRegOffsetMask, 0x180);
 
 	if (!(reg_eac & BIT(27)) && /* if Tx is OK, check whether Rx is OK */
-	    (((reg_ea4 & 0x03FF0000)>>16) != 0x132) &&
-	    (((reg_eac & 0x03FF0000)>>16) != 0x36))
+	    (((reg_ea4 & 0x03FF0000) >> 16) != 0x132) &&
+	    (((reg_eac & 0x03FF0000) >> 16) != 0x36))
 		result |= 0x02;
 	else
 		ODM_RT_TRACE(dm_odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,
@@ -677,15 +677,15 @@ static u8 phy_path_b_iqk(struct adapter *adapt)
 	regecc = phy_query_bb_reg(adapt, rRx_Power_After_IQK_B_2, bMaskDWord);
 
 	if (!(regeac & BIT(31)) &&
-	    (((regeb4 & 0x03FF0000)>>16) != 0x142) &&
-	    (((regebc & 0x03FF0000)>>16) != 0x42))
+	    (((regeb4 & 0x03FF0000) >> 16) != 0x142) &&
+	    (((regebc & 0x03FF0000) >> 16) != 0x42))
 		result |= 0x01;
 	else
 		return result;
 
 	if (!(regeac & BIT(30)) &&
-	    (((regec4 & 0x03FF0000)>>16) != 0x132) &&
-	    (((regecc & 0x03FF0000)>>16) != 0x36))
+	    (((regec4 & 0x03FF0000) >> 16) != 0x132) &&
+	    (((regecc & 0x03FF0000) >> 16) != 0x36))
 		result |= 0x02;
 	else
 		ODM_RT_TRACE(dm_odm, ODM_COMP_CALIBRATION,
@@ -711,7 +711,7 @@ static void patha_fill_iqk(struct adapter *adapt, bool iqkok, s32 result[][8],
 		tx0_a = (x * oldval_0) >> 8;
 		phy_set_bb_reg(adapt, rOFDM0_XATxIQImbalance, 0x3FF, tx0_a);
 		phy_set_bb_reg(adapt, rOFDM0_ECCAThreshold, BIT(31),
-			       ((x * oldval_0>>7) & 0x1));
+			       ((x * oldval_0 >> 7) & 0x1));
 
 		y = result[final_candidate][1];
 		if ((y & 0x00000200) != 0)
@@ -719,11 +719,11 @@ static void patha_fill_iqk(struct adapter *adapt, bool iqkok, s32 result[][8],
 
 		tx0_c = (y * oldval_0) >> 8;
 		phy_set_bb_reg(adapt, rOFDM0_XCTxAFE, 0xF0000000,
-			       ((tx0_c&0x3C0)>>6));
+			       ((tx0_c & 0x3C0) >> 6));
 		phy_set_bb_reg(adapt, rOFDM0_XATxIQImbalance, 0x003F0000,
-			       (tx0_c&0x3F));
+			       (tx0_c & 0x3F));
 		phy_set_bb_reg(adapt, rOFDM0_ECCAThreshold, BIT(29),
-			       ((y * oldval_0>>7) & 0x1));
+			       ((y * oldval_0 >> 7) & 0x1));
 
 		if (txonly)
 			return;
@@ -757,7 +757,7 @@ static void pathb_fill_iqk(struct adapter *adapt, bool iqkok, s32 result[][8],
 		phy_set_bb_reg(adapt, rOFDM0_XBTxIQImbalance, 0x3FF, tx1_a);
 
 		phy_set_bb_reg(adapt, rOFDM0_ECCAThreshold, BIT(27),
-			       ((x * oldval_1>>7) & 0x1));
+			       ((x * oldval_1 >> 7) & 0x1));
 
 		y = result[final_candidate][5];
 		if ((y & 0x00000200) != 0)
@@ -766,11 +766,11 @@ static void pathb_fill_iqk(struct adapter *adapt, bool iqkok, s32 result[][8],
 		tx1_c = (y * oldval_1) >> 8;
 
 		phy_set_bb_reg(adapt, rOFDM0_XDTxAFE, 0xF0000000,
-			       ((tx1_c&0x3C0)>>6));
+			       ((tx1_c & 0x3C0) >> 6));
 		phy_set_bb_reg(adapt, rOFDM0_XBTxIQImbalance, 0x003F0000,
-			       (tx1_c&0x3F));
+			       (tx1_c & 0x3F));
 		phy_set_bb_reg(adapt, rOFDM0_ECCAThreshold, BIT(25),
-			       ((y * oldval_1>>7) & 0x1));
+			       ((y * oldval_1 >> 7) & 0x1));
 
 		if (txonly)
 			return;
@@ -851,9 +851,9 @@ static void mac_setting_calibration(struct adapter *adapt, u32 *mac_reg, u32 *ba
 	usb_write8(adapt, mac_reg[i], 0x3F);
 
 	for (i = 1; i < (IQK_MAC_REG_NUM - 1); i++)
-		usb_write8(adapt, mac_reg[i], (u8)(backup[i]&(~BIT(3))));
+		usb_write8(adapt, mac_reg[i], (u8)(backup[i] & (~BIT(3))));
 
-	usb_write8(adapt, mac_reg[i], (u8)(backup[i]&(~BIT(5))));
+	usb_write8(adapt, mac_reg[i], (u8)(backup[i] & (~BIT(5))));
 }
 
 static void path_a_standby(struct adapter *adapt)
@@ -902,22 +902,22 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
 
 		if (diff > MAX_TOLERANCE) {
 			if ((i == 2 || i == 6) && !sim_bitmap) {
-				if (resulta[c1][i] + resulta[c1][i+1] == 0)
-					final_candidate[(i/4)] = c2;
-				else if (resulta[c2][i] + resulta[c2][i+1] == 0)
-					final_candidate[(i/4)] = c1;
+				if (resulta[c1][i] + resulta[c1][i + 1] == 0)
+					final_candidate[(i / 4)] = c2;
+				else if (resulta[c2][i] + resulta[c2][i + 1] == 0)
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
 
 	if (sim_bitmap == 0) {
-		for (i = 0; i < (bound/4); i++) {
+		for (i = 0; i < (bound / 4); i++) {
 			if (final_candidate[i] != 0xFF) {
-				for (j = i*4; j < (i+1)*4-2; j++)
+				for (j = i * 4; j < (i + 1) * 4 - 2; j++)
 					resulta[3][j] = resulta[final_candidate[i]][j];
 				result = false;
 			}
@@ -1038,9 +1038,9 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 		path_a_ok = phy_path_a_iqk(adapt, is2t);
 		if (path_a_ok == 0x01) {
 				result[t][0] = (phy_query_bb_reg(adapt, rTx_Power_Before_IQK_A,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 				result[t][1] = (phy_query_bb_reg(adapt, rTx_Power_After_IQK_A,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 			break;
 		}
 	}
@@ -1049,9 +1049,9 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 		path_a_ok = phy_path_a_rx_iqk(adapt, is2t);
 		if (path_a_ok == 0x03) {
 				result[t][2] = (phy_query_bb_reg(adapt, rRx_Power_Before_IQK_A_2,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 				result[t][3] = (phy_query_bb_reg(adapt, rRx_Power_After_IQK_A_2,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 			break;
 		}
 		ODM_RT_TRACE(dm_odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,
@@ -1073,19 +1073,19 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 			path_b_ok = phy_path_b_iqk(adapt);
 			if (path_b_ok == 0x03) {
 				result[t][4] = (phy_query_bb_reg(adapt, rTx_Power_Before_IQK_B,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 				result[t][5] = (phy_query_bb_reg(adapt, rTx_Power_After_IQK_B,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 				result[t][6] = (phy_query_bb_reg(adapt, rRx_Power_Before_IQK_B_2,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 				result[t][7] = (phy_query_bb_reg(adapt, rRx_Power_After_IQK_B_2,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 				break;
 			} else if (i == (retry_count - 1) && path_b_ok == 0x01) {	/* Tx IQK OK */
 				result[t][4] = (phy_query_bb_reg(adapt, rTx_Power_Before_IQK_B,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 				result[t][5] = (phy_query_bb_reg(adapt, rTx_Power_After_IQK_B,
-								 bMaskDWord)&0x3FF0000)>>16;
+								 bMaskDWord) & 0x3FF0000) >> 16;
 			}
 		}
 
@@ -1138,12 +1138,12 @@ static void phy_lc_calibrate(struct adapter *adapt, bool is2t)
 	/* Check continuous TX and Packet TX */
 	tmpreg = usb_read8(adapt, 0xd03);
 
-	if ((tmpreg&0x70) != 0)
-		usb_write8(adapt, 0xd03, tmpreg&0x8F);
+	if ((tmpreg & 0x70) != 0)
+		usb_write8(adapt, 0xd03, tmpreg & 0x8F);
 	else
 		usb_write8(adapt, REG_TXPAUSE, 0xFF);
 
-	if ((tmpreg&0x70) != 0) {
+	if ((tmpreg & 0x70) != 0) {
 		/* 1. Read original RF mode */
 		/* Path-A */
 		rf_a_mode = rtw_hal_read_rfreg(adapt, RF_PATH_A, RF_AC,
@@ -1157,12 +1157,12 @@ static void phy_lc_calibrate(struct adapter *adapt, bool is2t)
 		/* 2. Set RF mode = standby mode */
 		/* Path-A */
 		phy_set_rf_reg(adapt, RF_PATH_A, RF_AC, bMask12Bits,
-			       (rf_a_mode&0x8FFFF)|0x10000);
+			       (rf_a_mode & 0x8FFFF) | 0x10000);
 
 		/* Path-B */
 		if (is2t)
 			phy_set_rf_reg(adapt, RF_PATH_B, RF_AC, bMask12Bits,
-				       (rf_b_mode&0x8FFFF)|0x10000);
+				       (rf_b_mode & 0x8FFFF) | 0x10000);
 	}
 
 	/* 3. Read RF reg18 */
@@ -1170,12 +1170,12 @@ static void phy_lc_calibrate(struct adapter *adapt, bool is2t)
 
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
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
