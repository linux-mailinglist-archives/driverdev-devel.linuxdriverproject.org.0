Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1028918E524
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:23:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 18D5F8788C;
	Sat, 21 Mar 2020 22:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bBEOsUtcyuHm; Sat, 21 Mar 2020 22:23:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5020876E7;
	Sat, 21 Mar 2020 22:23:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3CA31BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F05B988564
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HVqyhto9FMq2 for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:23:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ECF46884BB
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:23:36 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id mj6so4204889pjb.5
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QuTjrbwPSgvBw7KasH82kLdGIg2Chd4cyvMlvYtc5+8=;
 b=O/oClR7LFycFGyWRmdp0FutAkv682n49Tv/ROjxJEk2TGJ+f81Kd4hNCtd4Po5wKJf
 +6QuMqv6Rg04Byb0LbZ00FZNUhgDN1plHdtkWY5eG9kpEHkr2P8Albj5QBLXC5DDSpfu
 MXyzRH/l4qflF/OLPR/doj0oe8jIyF6+5HnsAPg9mSR+fWi5B1SX0rq/0gfBCXRqWue7
 a23oOmCbNEM+qIVfB0W3I6d8kviNNR2CIciNMhTifGSVFvzkeZzZi2nMZfXRKeRRDqlT
 PJ7ppLtVuLYpFwsxc5b5M7+mX2krnDax3SFxte90OtcIUVj/RX3lJHtNaHijVmBdNQcD
 S/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QuTjrbwPSgvBw7KasH82kLdGIg2Chd4cyvMlvYtc5+8=;
 b=PPmKL68/41/MSO7dPkFUGnakZZ6gpbUl9ME56V2NeQvRMNfsVxomSQZMhpL1FeqE22
 a2R0vuEkFS/l/94iPpG/q5u+kiKRbWe6tkhyZ24Sm+uSw29mKJe+RE76dHmVh1Rpy5VM
 qXoukF4kNUTLAOckPvz9/9SB9iOrsUUtnsjxB2OSeSTGxBwRwZPc447bMiIuLM10C/Dc
 XKj6jzOtAsKIPctT3EkYWx6lJUsh//qjQAnplNe/Q0wEoHUYUgpwCU1XuBcykY+vGwNZ
 lkoddXLDI0g/NUmYebQfABQPZNPy96XXa+zW5kM6lL70WCOV3k8mSq+NWNNFps+Eyd7V
 dAow==
X-Gm-Message-State: ANhLgQ2JoS+2G71iVRn0tT1lOSM1dFCjkRvepxvKu6vpbXfAg8MWZdt+
 AGNCM0jqb65URqV980En/jw=
X-Google-Smtp-Source: ADFU+vtS8t3LfWBQYJx/48H+cVA7Xza6bpww15K6hSVoarkZA3CgDyd9+7JWxTam3liu7bHpT+tXRQ==
X-Received: by 2002:a17:902:b710:: with SMTP id
 d16mr14244709pls.293.1584829416342; 
 Sat, 21 Mar 2020 15:23:36 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id f69sm9252124pfa.124.2020.03.21.15.23.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:23:36 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 03/11] Staging: rtl8188eu: odm_hwconfig:
 Add space around operators
Date: Sun, 22 Mar 2020 03:53:30 +0530
Message-Id: <42b670d93cbacd0413207b59f587e0147eb618fb.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/odm_hwconfig.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff odm_hwconfig_old.o odm_hwconfig.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/odm_hwconfig.c | 54 ++++++++++----------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
index d5a9ac51e907..a6f2731b076d 100644
--- a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
+++ b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
@@ -103,33 +103,33 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 		switch (LNA_idx) {
 		case 7:
 			if (VGA_idx <= 27)
-				rx_pwr_all = -100 + 2 * (27-VGA_idx); /* VGA_idx = 27~2 */
+				rx_pwr_all = -100 + 2 * (27 - VGA_idx); /* VGA_idx = 27~2 */
 			else
 				rx_pwr_all = -100;
 			break;
 		case 6:
-			rx_pwr_all = -48 + 2 * (2-VGA_idx); /* VGA_idx = 2~0 */
+			rx_pwr_all = -48 + 2 * (2 - VGA_idx); /* VGA_idx = 2~0 */
 			break;
 		case 5:
-			rx_pwr_all = -42 + 2 * (7-VGA_idx); /* VGA_idx = 7~5 */
+			rx_pwr_all = -42 + 2 * (7 - VGA_idx); /* VGA_idx = 7~5 */
 			break;
 		case 4:
-			rx_pwr_all = -36 + 2 * (7-VGA_idx); /* VGA_idx = 7~4 */
+			rx_pwr_all = -36 + 2 * (7 - VGA_idx); /* VGA_idx = 7~4 */
 			break;
 		case 3:
-			rx_pwr_all = -24 + 2 * (7-VGA_idx); /* VGA_idx = 7~0 */
+			rx_pwr_all = -24 + 2 * (7 - VGA_idx); /* VGA_idx = 7~0 */
 			break;
 		case 2:
 			if (cck_highpwr)
-				rx_pwr_all = -12 + 2 * (5-VGA_idx); /* VGA_idx = 5~0 */
+				rx_pwr_all = -12 + 2 * (5 - VGA_idx); /* VGA_idx = 5~0 */
 			else
-				rx_pwr_all = -6 + 2 * (5-VGA_idx);
+				rx_pwr_all = -6 + 2 * (5 - VGA_idx);
 			break;
 		case 1:
-			rx_pwr_all = 8-2 * VGA_idx;
+			rx_pwr_all = 8 - 2 * VGA_idx;
 			break;
 		case 0:
-			rx_pwr_all = 14-2 * VGA_idx;
+			rx_pwr_all = 14 - 2 * VGA_idx;
 			break;
 		default:
 			break;
@@ -138,7 +138,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 		PWDB_ALL = odm_query_rxpwrpercentage(rx_pwr_all);
 		if (!cck_highpwr) {
 			if (PWDB_ALL >= 80)
-				PWDB_ALL = ((PWDB_ALL-80)<<1) + ((PWDB_ALL-80)>>1) + 80;
+				PWDB_ALL = ((PWDB_ALL - 80) << 1) + ((PWDB_ALL - 80) >> 1) + 80;
 			else if ((PWDB_ALL <= 78) && (PWDB_ALL >= 20))
 				PWDB_ALL += 3;
 			if (PWDB_ALL > 100)
@@ -162,7 +162,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 				else if (SQ_rpt < 20)
 					SQ = 100;
 				else
-					SQ = ((64-SQ_rpt) * 100) / 44;
+					SQ = ((64 - SQ_rpt) * 100) / 44;
 			}
 			pPhyInfo->SignalQuality = SQ;
 			pPhyInfo->RxMIMOSignalQuality[RF_PATH_A] = SQ;
@@ -200,8 +200,8 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 			pPhyInfo->RxMIMOSignalStrength[i] = (u8)RSSI;
 
 			/* Get Rx snr value in DB */
-			pPhyInfo->RxSNR[i] = (s32)(pPhyStaRpt->path_rxsnr[i]/2);
-			dm_odm->PhyDbgInfo.RxSNRdB[i] = (s32)(pPhyStaRpt->path_rxsnr[i]/2);
+			pPhyInfo->RxSNR[i] = (s32)(pPhyStaRpt->path_rxsnr[i] / 2);
+			dm_odm->PhyDbgInfo.RxSNRdB[i] = (s32)(pPhyStaRpt->path_rxsnr[i] / 2);
 		}
 		/*  (2)PWDB, Average PWDB calculated by hardware (for rate adaptive) */
 		rx_pwr_all = (((pPhyStaRpt->cck_sig_qual_ofdm_pwdb_all) >> 1) & 0x7f) - 110;
@@ -280,8 +280,8 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 	if (dm_odm->AntDivType == CG_TRX_SMART_ANTDIV) {
 		if (pDM_FatTable->FAT_State == FAT_TRAINING_STATE) {
 			if (pPktinfo->bPacketToSelf) {
-				antsel_tr_mux = (pDM_FatTable->antsel_rx_keep_2<<2) |
-						(pDM_FatTable->antsel_rx_keep_1<<1) |
+				antsel_tr_mux = (pDM_FatTable->antsel_rx_keep_2 << 2) |
+						(pDM_FatTable->antsel_rx_keep_1 << 1) |
 						pDM_FatTable->antsel_rx_keep_0;
 				pDM_FatTable->antSumRSSI[antsel_tr_mux] += pPhyInfo->RxPWDBAll;
 				pDM_FatTable->antRSSIcnt[antsel_tr_mux]++;
@@ -289,8 +289,8 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 		}
 	} else if ((dm_odm->AntDivType == CG_TRX_HW_ANTDIV) || (dm_odm->AntDivType == CGCS_RX_HW_ANTDIV)) {
 		if (pPktinfo->bPacketToSelf || pPktinfo->bPacketBeacon) {
-			antsel_tr_mux = (pDM_FatTable->antsel_rx_keep_2<<2) |
-					(pDM_FatTable->antsel_rx_keep_1<<1) | pDM_FatTable->antsel_rx_keep_0;
+			antsel_tr_mux = (pDM_FatTable->antsel_rx_keep_2 << 2) |
+					(pDM_FatTable->antsel_rx_keep_1 << 1) | pDM_FatTable->antsel_rx_keep_0;
 			rtl88eu_dm_ant_sel_statistics(dm_odm, antsel_tr_mux, pPktinfo->StationID, pPhyInfo->RxPWDBAll);
 		}
 	}
@@ -328,17 +328,17 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 			} else {
 				if (pPhyInfo->RxPWDBAll > (u32)UndecoratedSmoothedOFDM) {
 					UndecoratedSmoothedOFDM =
-							(((UndecoratedSmoothedOFDM) * (Rx_Smooth_Factor-1)) +
+							(((UndecoratedSmoothedOFDM) * (Rx_Smooth_Factor - 1)) +
 							(RSSI_Ave)) / (Rx_Smooth_Factor);
 					UndecoratedSmoothedOFDM = UndecoratedSmoothedOFDM + 1;
 				} else {
 					UndecoratedSmoothedOFDM =
-							(((UndecoratedSmoothedOFDM) * (Rx_Smooth_Factor-1)) +
+							(((UndecoratedSmoothedOFDM) * (Rx_Smooth_Factor - 1)) +
 							(RSSI_Ave)) / (Rx_Smooth_Factor);
 				}
 			}
 
-			pEntry->rssi_stat.PacketMap = (pEntry->rssi_stat.PacketMap<<1) | BIT(0);
+			pEntry->rssi_stat.PacketMap = (pEntry->rssi_stat.PacketMap << 1) | BIT(0);
 
 		} else {
 			RSSI_Ave = pPhyInfo->RxPWDBAll;
@@ -349,16 +349,16 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 			} else {
 				if (pPhyInfo->RxPWDBAll > (u32)UndecoratedSmoothedCCK) {
 					UndecoratedSmoothedCCK =
-							((UndecoratedSmoothedCCK * (Rx_Smooth_Factor-1)) +
+							((UndecoratedSmoothedCCK * (Rx_Smooth_Factor - 1)) +
 							pPhyInfo->RxPWDBAll) / Rx_Smooth_Factor;
 					UndecoratedSmoothedCCK = UndecoratedSmoothedCCK + 1;
 				} else {
 					UndecoratedSmoothedCCK =
-							((UndecoratedSmoothedCCK * (Rx_Smooth_Factor-1)) +
+							((UndecoratedSmoothedCCK * (Rx_Smooth_Factor - 1)) +
 							pPhyInfo->RxPWDBAll) / Rx_Smooth_Factor;
 				}
 			}
-			pEntry->rssi_stat.PacketMap = pEntry->rssi_stat.PacketMap<<1;
+			pEntry->rssi_stat.PacketMap = pEntry->rssi_stat.PacketMap << 1;
 		}
 		/* 2011.07.28 LukeLee: modified to prevent unstable CCK RSSI */
 		if (pEntry->rssi_stat.ValidBit >= 64)
@@ -367,16 +367,16 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 			pEntry->rssi_stat.ValidBit++;
 
 		for (i = 0; i < pEntry->rssi_stat.ValidBit; i++)
-			OFDM_pkt += (u8)(pEntry->rssi_stat.PacketMap>>i) & BIT(0);
+			OFDM_pkt += (u8)(pEntry->rssi_stat.PacketMap >> i) & BIT(0);
 
 		if (pEntry->rssi_stat.ValidBit == 64) {
 			Weighting = min_t(u32, OFDM_pkt << 4, 64);
-			UndecoratedSmoothedPWDB = (Weighting * UndecoratedSmoothedOFDM + (64-Weighting) * UndecoratedSmoothedCCK)>>6;
+			UndecoratedSmoothedPWDB = (Weighting * UndecoratedSmoothedOFDM + (64 - Weighting) * UndecoratedSmoothedCCK) >> 6;
 		} else {
 			if (pEntry->rssi_stat.ValidBit != 0)
 				UndecoratedSmoothedPWDB = (OFDM_pkt * UndecoratedSmoothedOFDM +
-							  (pEntry->rssi_stat.ValidBit-OFDM_pkt) *
-							  UndecoratedSmoothedCCK)/pEntry->rssi_stat.ValidBit;
+							  (pEntry->rssi_stat.ValidBit - OFDM_pkt) *
+							  UndecoratedSmoothedCCK) / pEntry->rssi_stat.ValidBit;
 			else
 				UndecoratedSmoothedPWDB = 0;
 		}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
