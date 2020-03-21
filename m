Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 936C018E52C
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:26:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28DC7878C2;
	Sat, 21 Mar 2020 22:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oi826H35ylIJ; Sat, 21 Mar 2020 22:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4543878AE;
	Sat, 21 Mar 2020 22:26:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F9AC1BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C33B88564
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HuXStzQhQnGk for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:26:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A601884BB
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:26:03 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id b9so4129532pls.12
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CaluLXUXfZxlHtTK/ZZ9nONRZzC/o1xY2RHE9zq/mMc=;
 b=R5+nDK6B32M84RBs9ZC7pCm3tmQhJuz7j6xiXTfvEZ7oSvasgO20t1th9zbt8Ai6oE
 qgUAngIOVTPXFYHKKfJQjuCuI1qu4QasD3PMXTZG+J1ajGwfIXT6JXhOjrJcEyU8VaVl
 H/z3aruOnUu+CM0DqYwYcHqqNRwmj2lFQAT+FiBI/IqBfZFSWi5qejkYWA6W5Uu1OpcT
 QSvwoy3Cq9tbWA4XYuBvlEpF7QqLd+myqUzKn0OJfePrC7x4bUcFaexujov9PAW9rnN4
 fVpVNQJIy6rcJZ4zHrscKr9Onrxwxhiiu8Ks9sN/C5Ymr2Q+OzYALCK7J9qTj1RJ7sfi
 QeZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CaluLXUXfZxlHtTK/ZZ9nONRZzC/o1xY2RHE9zq/mMc=;
 b=gPWAg+pS9kGhZNNC0Kh+0fiMlt0vHuCxd874h5KwZkYRsh8q57eXToc7avPiFuLqbE
 HFwzx456QH9dLwwrrgZVx+v6bSuuvcXLjvF9pvI4johiHLZaE+Jfw/3wN9KUaLFepfSw
 8agcYGl8MGF+lK3sE/ruh6lyyN7VZez8KJBoxA0Ly1Ea3ban6CWfFnA/SfpZRvdXjQM+
 RBEJoj/BUctEuR4Xgn0Gf84gvQZxg7TxxgHfNOd/qGswhwAddxm6FUF07FyXLBjTuiXz
 dOgG/Ai6W6xHiSCxuQ9P+zI+z/kYy9KSq2vizOWTb6c7oCI6G46BIOdhpu9jRa7sWEjw
 7CpQ==
X-Gm-Message-State: ANhLgQ02Ijp85r1KH+DRn8oGlV+5rxm/9VmvuaiONUry5dz07ESL+G9K
 PHXCrca+Qj19LPuZA+yNPMg=
X-Google-Smtp-Source: ADFU+vt3tjDwcYaA2M93w6NMFbXxMHEHC2210FuJGKKM+NTtQMDBpOgAY8mlduMZqoYnhpzbWS7hSg==
X-Received: by 2002:a17:90a:c001:: with SMTP id
 p1mr17306711pjt.86.1584829562738; 
 Sat, 21 Mar 2020 15:26:02 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id nh4sm7955956pjb.39.2020.03.21.15.26.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:26:02 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 06/11] Staging: rtl8188eu: rf: Add space
 around operators
Date: Sun, 22 Mar 2020 03:55:56 +0530
Message-Id: <1dcec882b2008ab68a29f587d197e78feecb1559.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rf.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rf_old.o rf.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/rf.c | 60 +++++++++++++++---------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf.c b/drivers/staging/rtl8188eu/hal/rf.c
index 6fe4daea8fd5..00a9f692bb06 100644
--- a/drivers/staging/rtl8188eu/hal/rf.c
+++ b/drivers/staging/rtl8188eu/hal/rf.c
@@ -49,9 +49,9 @@ void rtl88eu_phy_rf6052_set_cck_txpower(struct adapter *adapt, u8 *powerlevel)
 		tx_agc[RF_PATH_B] = 0x3f3f3f3f;
 		for (idx1 = RF_PATH_A; idx1 <= RF_PATH_B; idx1++) {
 			tx_agc[idx1] = powerlevel[idx1] |
-				      (powerlevel[idx1]<<8) |
-				      (powerlevel[idx1]<<16) |
-				      (powerlevel[idx1]<<24);
+				      (powerlevel[idx1] << 8) |
+				      (powerlevel[idx1] << 16) |
+				      (powerlevel[idx1] << 24);
 		}
 	} else {
 		if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_Level1) {
@@ -63,17 +63,17 @@ void rtl88eu_phy_rf6052_set_cck_txpower(struct adapter *adapt, u8 *powerlevel)
 		} else {
 			for (idx1 = RF_PATH_A; idx1 <= RF_PATH_B; idx1++) {
 				tx_agc[idx1] = powerlevel[idx1] |
-					       (powerlevel[idx1]<<8) |
-					       (powerlevel[idx1]<<16) |
-					       (powerlevel[idx1]<<24);
+					       (powerlevel[idx1] << 8) |
+					       (powerlevel[idx1] << 16) |
+					       (powerlevel[idx1] << 24);
 			}
 			if (hal_data->EEPROMRegulatory == 0) {
 				tmpval = hal_data->MCSTxPowerLevelOriginalOffset[0][6] +
-					 (hal_data->MCSTxPowerLevelOriginalOffset[0][7]<<8);
+					 (hal_data->MCSTxPowerLevelOriginalOffset[0][7] << 8);
 				tx_agc[RF_PATH_A] += tmpval;
 
 				tmpval = hal_data->MCSTxPowerLevelOriginalOffset[0][14] +
-					 (hal_data->MCSTxPowerLevelOriginalOffset[0][15]<<24);
+					 (hal_data->MCSTxPowerLevelOriginalOffset[0][15] << 24);
 				tx_agc[RF_PATH_B] += tmpval;
 			}
 		}
@@ -100,15 +100,15 @@ void rtl88eu_phy_rf6052_set_cck_txpower(struct adapter *adapt, u8 *powerlevel)
 	}
 
 	/*  rf-A cck tx power */
-	tmpval = tx_agc[RF_PATH_A]&0xff;
+	tmpval = tx_agc[RF_PATH_A] & 0xff;
 	phy_set_bb_reg(adapt, rTxAGC_A_CCK1_Mcs32, bMaskByte1, tmpval);
-	tmpval = tx_agc[RF_PATH_A]>>8;
+	tmpval = tx_agc[RF_PATH_A] >> 8;
 	phy_set_bb_reg(adapt, rTxAGC_B_CCK11_A_CCK2_11, 0xffffff00, tmpval);
 
 	/*  rf-B cck tx power */
-	tmpval = tx_agc[RF_PATH_B]>>24;
+	tmpval = tx_agc[RF_PATH_B] >> 24;
 	phy_set_bb_reg(adapt, rTxAGC_B_CCK11_A_CCK2_11, bMaskByte0, tmpval);
-	tmpval = tx_agc[RF_PATH_B]&0x00ffffff;
+	tmpval = tx_agc[RF_PATH_B] & 0x00ffffff;
 	phy_set_bb_reg(adapt, rTxAGC_B_CCK1_55_Mcs32, 0xffffff00, tmpval);
 }
 
@@ -124,9 +124,9 @@ static void getpowerbase88e(struct adapter *adapt, u8 *pwr_level_ofdm,
 	for (i = 0; i < 2; i++) {
 		powerbase0 = pwr_level_ofdm[i];
 
-		powerbase0 = (powerbase0<<24) | (powerbase0<<16) |
-			     (powerbase0<<8) | powerbase0;
-		*(ofdmbase+i) = powerbase0;
+		powerbase0 = (powerbase0 << 24) | (powerbase0 << 16) |
+			     (powerbase0 << 8) | powerbase0;
+		*(ofdmbase + i) = powerbase0;
 	}
 	/* Check HT20 to HT40 diff */
 	if (adapt->HalData->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
@@ -134,8 +134,8 @@ static void getpowerbase88e(struct adapter *adapt, u8 *pwr_level_ofdm,
 	else
 		powerlevel[0] = pwr_level_bw40[0];
 	powerbase1 = powerlevel[0];
-	powerbase1 = (powerbase1<<24) | (powerbase1<<16) |
-		     (powerbase1<<8) | powerbase1;
+	powerbase1 = (powerbase1 << 24) | (powerbase1 << 16) |
+		     (powerbase1 << 8) | powerbase1;
 	*mcs_base = powerbase1;
 }
 static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
@@ -157,7 +157,7 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 		switch (regulatory) {
 		case 0:
 			chnlGroup = 0;
-			write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index+(rf ? 8 : 0)] +
+			write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index + (rf ? 8 : 0)] +
 				((index < 2) ? powerbase0[rf] : powerbase1[rf]);
 			break;
 		case 1: /*  Realtek regulatory */
@@ -167,7 +167,7 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 			if (hal_data->pwrGroupCnt >= hal_data->PGMaxGroup)
 				Hal_GetChnlGroup88E(channel, &chnlGroup);
 
-			write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index+(rf ? 8 : 0)] +
+			write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index + (rf ? 8 : 0)] +
 					((index < 2) ? powerbase0[rf] : powerbase1[rf]);
 			break;
 		case 2:	/*  Better regulatory */
@@ -179,14 +179,14 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 			chnlGroup = 0;
 
 			if (index < 2)
-				pwr_diff = hal_data->TxPwrLegacyHtDiff[rf][channel-1];
+				pwr_diff = hal_data->TxPwrLegacyHtDiff[rf][channel - 1];
 			else if (hal_data->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
-				pwr_diff = hal_data->TxPwrHt20Diff[rf][channel-1];
+				pwr_diff = hal_data->TxPwrHt20Diff[rf][channel - 1];
 
 			if (hal_data->CurrentChannelBW == HT_CHANNEL_WIDTH_40)
-				customer_pwr_limit = hal_data->PwrGroupHT40[rf][channel-1];
+				customer_pwr_limit = hal_data->PwrGroupHT40[rf][channel - 1];
 			else
-				customer_pwr_limit = hal_data->PwrGroupHT20[rf][channel-1];
+				customer_pwr_limit = hal_data->PwrGroupHT20[rf][channel - 1];
 
 			if (pwr_diff >= customer_pwr_limit)
 				pwr_diff = 0;
@@ -200,9 +200,9 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 				if (pwr_diff_limit[i] > pwr_diff)
 					pwr_diff_limit[i] = pwr_diff;
 			}
-			customer_limit = (pwr_diff_limit[3]<<24) |
-					 (pwr_diff_limit[2]<<16) |
-					 (pwr_diff_limit[1]<<8) |
+			customer_limit = (pwr_diff_limit[3] << 24) |
+					 (pwr_diff_limit[2] << 16) |
+					 (pwr_diff_limit[1] << 8) |
 					 (pwr_diff_limit[0]);
 			write_val = customer_limit + ((index < 2) ? powerbase0[rf] : powerbase1[rf]);
 			break;
@@ -221,7 +221,7 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 		else if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_Level2)
 			write_val = 0x00000000;
 
-		*(out_val+rf) = write_val;
+		*(out_val + rf) = write_val;
 	}
 }
 
@@ -240,12 +240,12 @@ static void write_ofdm_pwr_reg(struct adapter *adapt, u8 index, u32 *pvalue)
 	for (rf = 0; rf < 2; rf++) {
 		write_val = pvalue[rf];
 		for (i = 0; i < 4; i++) {
-			pwr_val[i] = (u8)((write_val & (0x7f<<(i*8)))>>(i*8));
+			pwr_val[i] = (u8)((write_val & (0x7f << (i * 8))) >> (i * 8));
 			if (pwr_val[i]  > RF6052_MAX_TX_PWR)
 				pwr_val[i]  = RF6052_MAX_TX_PWR;
 		}
-		write_val = (pwr_val[3]<<24) | (pwr_val[2]<<16) |
-			    (pwr_val[1]<<8) | pwr_val[0];
+		write_val = (pwr_val[3] << 24) | (pwr_val[2] << 16) |
+			    (pwr_val[1] << 8) | pwr_val[0];
 
 		if (rf == 0)
 			regoffset = regoffset_a[index];
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
