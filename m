Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F12F1192DA4
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 17:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8421786BB3;
	Wed, 25 Mar 2020 16:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgF1s4U9ApP0; Wed, 25 Mar 2020 16:02:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9715860C2;
	Wed, 25 Mar 2020 16:02:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 087211BF487
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 16:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7ECC877CE
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 16:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rvMjYBiDiXff for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 16:01:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 72FC287780
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 16:01:56 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id mj6so1205231pjb.5
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 09:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=LOFAOUxZu+LXwGCxYss84+PU0IQxgnGR53zatzJbnkg=;
 b=ekjKyaOX6f3x69YyNvOztOSAYbiwvblMpwCvPchID3vb53LxaJqSy3nxUur/3m0f4I
 z2bI1cJQwkCTnoRwdqVxNSsueuOuwNYGSTMCeZsWrkaMurcCI77Os4nmp1RLHfAfEPzu
 TzoBhDMZ3bGJkRrXj2P/Nhd9VpM97+KoJ4xVf5Se38UPakuuEOXVHBCI4Qzey2UsKoqI
 F6KGj6GzAjf/HjmTBaN/7bEmCiSKZiJscLdI6EBoWzfyn2iAoTkDoQ4d0TOvKhfw+MT/
 fm6S3lrtZhSMRlKkjBbQzSafc8je2z/KrjZmkDfw4zB4ioiE+bGT86RAYkRVlGgJDXom
 HDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=LOFAOUxZu+LXwGCxYss84+PU0IQxgnGR53zatzJbnkg=;
 b=OeiKWrGS3m7aGc3W07HwBe+c6GXhyBdTo6/a3lmn874XMmzHAF+HC4JC7+3igCrfGT
 FoU7MvxCyDDf8ANOZlPGoHYXLrIyY79APbMx6cWVoGPTe3MfcB72kdvUw9zhE6IS46s+
 9dvaqoV0Llb6x67zwqrJZTFk0cNG1jxRRi7J+ocazmY1UqaQvEFaUR30Dq6nBGsNUcHq
 Ab1wnHLDQahjziItlhmxw0QybR2Iea1DXM9YrUeNDO9+QLJ3KobhaWHkrm0NkGJRaLkN
 moIDE4f2rSEsj8OfxSDWh9cydsuOIs51rVnfKEL6wRkelkF+fVVn34h1W4L8AUElrWXK
 KQEQ==
X-Gm-Message-State: ANhLgQ0F0dsEVSYX7B3AgT5/r4+E/JhFanQhEVY6ckcwacu9z3cjMms9
 J8vL6wtSQrULj59G6sFIR6w=
X-Google-Smtp-Source: ADFU+vtS+cCWztE6Wg4+8ZlYPNOlqi3+HVa5hrYGyADt1rrfniSbvJi+cqSzOoy25odMZ3lAbSG3qg==
X-Received: by 2002:a17:902:6945:: with SMTP id
 k5mr3821206plt.61.1585152114866; 
 Wed, 25 Mar 2020 09:01:54 -0700 (PDT)
Received: from localhost.localdomain ([123.136.149.21])
 by smtp.gmail.com with ESMTPSA id y9sm4782954pjj.17.2020.03.25.09.01.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 09:01:52 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com, nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, shreeya.patel23498@gmail.com, Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: hal: Add space
 around operators
Date: Wed, 25 Mar 2020 21:31:42 +0530
Message-Id: <20200325160142.3698-1-shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~staging$ git diff -w drivers/staging/rtl8188eu/hal/
shreeya@Shreeya-Patel:~staging$

shreeya@Shreeya-Patel:~staging/drivers/staging/rtl8188eu/hal$ find . -name 
"*_old.o" -exec sh -c 'old=$0; new=$(echo $old | sed s/_old.o/.o/);
diff $old $new' {} \;
shreeya@Shreeya-Patel:~staging/drivers/staging/rtl8188eu/hal$

Changes in v2:
  - Merge the patch series into a single patch


 drivers/staging/rtl8188eu/hal/hal_com.c       |  22 +--
 drivers/staging/rtl8188eu/hal/odm.c           |  48 +++---
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c  |  54 +++----
 drivers/staging/rtl8188eu/hal/phy.c           | 138 +++++++++---------
 drivers/staging/rtl8188eu/hal/pwrseqcmd.c     |   2 +-
 drivers/staging/rtl8188eu/hal/rf.c            |  60 ++++----
 drivers/staging/rtl8188eu/hal/rf_cfg.c        |   4 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c  |  42 +++---
 .../staging/rtl8188eu/hal/rtl8188e_hal_init.c |  44 +++---
 .../staging/rtl8188eu/hal/rtl8188e_rxdesc.c   |   2 +-
 .../staging/rtl8188eu/hal/rtl8188eu_xmit.c    |  32 ++--
 11 files changed, 224 insertions(+), 224 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/hal_com.c b/drivers/staging/rtl8188eu/hal/hal_com.c
index 95f1b1431373..ebe19e076ff2 100644
--- a/drivers/staging/rtl8188eu/hal/hal_com.c
+++ b/drivers/staging/rtl8188eu/hal/hal_com.c
@@ -18,26 +18,26 @@ void dump_chip_info(struct HAL_VERSION	chip_vers)
 	uint cnt = 0;
 	char buf[128];
 
-	cnt += sprintf((buf+cnt), "Chip Version Info: CHIP_8188E_");
-	cnt += sprintf((buf+cnt), "%s_", chip_vers.ChipType == NORMAL_CHIP ?
+	cnt += sprintf((buf + cnt), "Chip Version Info: CHIP_8188E_");
+	cnt += sprintf((buf + cnt), "%s_", chip_vers.ChipType == NORMAL_CHIP ?
 		       "Normal_Chip" : "Test_Chip");
-	cnt += sprintf((buf+cnt), "%s_", chip_vers.VendorType == CHIP_VENDOR_TSMC ?
+	cnt += sprintf((buf + cnt), "%s_", chip_vers.VendorType == CHIP_VENDOR_TSMC ?
 		       "TSMC" : "UMC");
 	if (chip_vers.CUTVersion == A_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "A_CUT_");
+		cnt += sprintf((buf + cnt), "A_CUT_");
 	else if (chip_vers.CUTVersion == B_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "B_CUT_");
+		cnt += sprintf((buf + cnt), "B_CUT_");
 	else if (chip_vers.CUTVersion == C_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "C_CUT_");
+		cnt += sprintf((buf + cnt), "C_CUT_");
 	else if (chip_vers.CUTVersion == D_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "D_CUT_");
+		cnt += sprintf((buf + cnt), "D_CUT_");
 	else if (chip_vers.CUTVersion == E_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "E_CUT_");
+		cnt += sprintf((buf + cnt), "E_CUT_");
 	else
-		cnt += sprintf((buf+cnt), "UNKNOWN_CUT(%d)_",
+		cnt += sprintf((buf + cnt), "UNKNOWN_CUT(%d)_",
 			       chip_vers.CUTVersion);
-	cnt += sprintf((buf+cnt), "1T1R_");
-	cnt += sprintf((buf+cnt), "RomVer(0)\n");
+	cnt += sprintf((buf + cnt), "1T1R_");
+	cnt += sprintf((buf + cnt), "RomVer(0)\n");
 
 	pr_info("%s", buf);
 }
diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index 7489491f5aaa..a6eb9798b6f8 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -342,7 +342,7 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 	u8 CurrentIGI = pDM_DigTable->CurIGValue;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG()==>\n"));
-	if ((!(pDM_Odm->SupportAbility&ODM_BB_DIG)) || (!(pDM_Odm->SupportAbility&ODM_BB_FA_CNT))) {
+	if ((!(pDM_Odm->SupportAbility & ODM_BB_DIG)) || (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT))) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD,
 			     ("odm_DIG() Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\n"));
 		return;
@@ -419,7 +419,7 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 		}
 
 		if (pDM_DigTable->LargeFAHit >= 3) {
-			if ((pDM_DigTable->ForbiddenIGI+1) > pDM_DigTable->rx_gain_range_max)
+			if ((pDM_DigTable->ForbiddenIGI + 1) > pDM_DigTable->rx_gain_range_max)
 				pDM_DigTable->rx_gain_range_min = pDM_DigTable->rx_gain_range_max;
 			else
 				pDM_DigTable->rx_gain_range_min = (pDM_DigTable->ForbiddenIGI + 1);
@@ -432,7 +432,7 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 			pDM_DigTable->Recover_cnt--;
 		} else {
 			if (pDM_DigTable->LargeFAHit < 3) {
-				if ((pDM_DigTable->ForbiddenIGI-1) < DIG_Dynamic_MIN) { /* DM_DIG_MIN) */
+				if ((pDM_DigTable->ForbiddenIGI - 1) < DIG_Dynamic_MIN) { /* DM_DIG_MIN) */
 					pDM_DigTable->ForbiddenIGI = DIG_Dynamic_MIN; /* DM_DIG_MIN; */
 					pDM_DigTable->rx_gain_range_min = DIG_Dynamic_MIN; /* DM_DIG_MIN; */
 					ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Normal Case: At Lower Bound\n"));
@@ -518,24 +518,24 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 	phy_set_bb_reg(adapter, ODM_REG_OFDM_FA_RSTD_11N, BIT(31), 1); /* hold page D counter */
 
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE1_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_Fast_Fsync = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_SB_Search_fail = (ret_value & 0xffff0000)>>16;
+	FalseAlmCnt->Cnt_Fast_Fsync = (ret_value & 0xffff);
+	FalseAlmCnt->Cnt_SB_Search_fail = (ret_value & 0xffff0000) >> 16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE2_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_OFDM_CCA = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_Parity_Fail = (ret_value & 0xffff0000)>>16;
+	FalseAlmCnt->Cnt_OFDM_CCA = (ret_value & 0xffff);
+	FalseAlmCnt->Cnt_Parity_Fail = (ret_value & 0xffff0000) >> 16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE3_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_Rate_Illegal = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_Crc8_fail = (ret_value & 0xffff0000)>>16;
+	FalseAlmCnt->Cnt_Rate_Illegal = (ret_value & 0xffff);
+	FalseAlmCnt->Cnt_Crc8_fail = (ret_value & 0xffff0000) >> 16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE4_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_Mcs_fail = (ret_value&0xffff);
+	FalseAlmCnt->Cnt_Mcs_fail = (ret_value & 0xffff);
 
 	FalseAlmCnt->Cnt_Ofdm_fail = FalseAlmCnt->Cnt_Parity_Fail + FalseAlmCnt->Cnt_Rate_Illegal +
 				     FalseAlmCnt->Cnt_Crc8_fail + FalseAlmCnt->Cnt_Mcs_fail +
 				     FalseAlmCnt->Cnt_Fast_Fsync + FalseAlmCnt->Cnt_SB_Search_fail;
 
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_SC_CNT_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_BW_LSC = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_BW_USC = (ret_value & 0xffff0000)>>16;
+	FalseAlmCnt->Cnt_BW_LSC = (ret_value & 0xffff);
+	FalseAlmCnt->Cnt_BW_USC = (ret_value & 0xffff0000) >> 16;
 
 	/* hold cck counter */
 	phy_set_bb_reg(adapter, ODM_REG_CCK_FA_RST_11N, BIT(12), 1);
@@ -544,10 +544,10 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_CCK_FA_LSB_11N, bMaskByte0);
 	FalseAlmCnt->Cnt_Cck_fail = ret_value;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_CCK_FA_MSB_11N, bMaskByte3);
-	FalseAlmCnt->Cnt_Cck_fail +=  (ret_value & 0xff)<<8;
+	FalseAlmCnt->Cnt_Cck_fail +=  (ret_value & 0xff) << 8;
 
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_CCK_CCA_CNT_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_CCK_CCA = ((ret_value&0xFF)<<8) | ((ret_value&0xFF00)>>8);
+	FalseAlmCnt->Cnt_CCK_CCA = ((ret_value & 0xFF) << 8) | ((ret_value & 0xFF00) >> 8);
 
 	FalseAlmCnt->Cnt_all = (FalseAlmCnt->Cnt_Fast_Fsync +
 				FalseAlmCnt->Cnt_SB_Search_fail +
@@ -583,7 +583,7 @@ void odm_CCKPacketDetectionThresh(struct odm_dm_struct *pDM_Odm)
 	u8 CurCCK_CCAThres;
 	struct false_alarm_stats *FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
 
-	if (!(pDM_Odm->SupportAbility & (ODM_BB_CCK_PD|ODM_BB_FA_CNT)))
+	if (!(pDM_Odm->SupportAbility & (ODM_BB_CCK_PD | ODM_BB_FA_CNT)))
 		return;
 	if (pDM_Odm->ExtLNA)
 		return;
@@ -630,10 +630,10 @@ void ODM_RF_Saving(struct odm_dm_struct *pDM_Odm, u8 bForceInNormal)
 		Rssi_Low_bound = 45;
 	}
 	if (pDM_PSTable->initialize == 0) {
-		pDM_PSTable->Reg874 = (phy_query_bb_reg(adapter, 0x874, bMaskDWord)&0x1CC000)>>14;
-		pDM_PSTable->RegC70 = (phy_query_bb_reg(adapter, 0xc70, bMaskDWord) & BIT(3))>>3;
-		pDM_PSTable->Reg85C = (phy_query_bb_reg(adapter, 0x85c, bMaskDWord)&0xFF000000)>>24;
-		pDM_PSTable->RegA74 = (phy_query_bb_reg(adapter, 0xa74, bMaskDWord)&0xF000)>>12;
+		pDM_PSTable->Reg874 = (phy_query_bb_reg(adapter, 0x874, bMaskDWord) & 0x1CC000) >> 14;
+		pDM_PSTable->RegC70 = (phy_query_bb_reg(adapter, 0xc70, bMaskDWord) & BIT(3)) >> 3;
+		pDM_PSTable->Reg85C = (phy_query_bb_reg(adapter, 0x85c, bMaskDWord) & 0xFF000000) >> 24;
+		pDM_PSTable->RegA74 = (phy_query_bb_reg(adapter, 0xa74, bMaskDWord) & 0xF000) >> 12;
 		pDM_PSTable->initialize = 1;
 	}
 
@@ -718,13 +718,13 @@ u32 ODM_Get_Rate_Bitmap(struct odm_dm_struct *pDM_Odm, u32 macid, u32 ra_mask, u
 		else
 			rate_bitmap = 0x0000000f;
 		break;
-	case (ODM_WM_A|ODM_WM_G):
+	case (ODM_WM_A | ODM_WM_G):
 		if (rssi_level == DM_RATR_STA_HIGH)
 			rate_bitmap = 0x00000f00;
 		else
 			rate_bitmap = 0x00000ff0;
 		break;
-	case (ODM_WM_B|ODM_WM_G):
+	case (ODM_WM_B | ODM_WM_G):
 		if (rssi_level == DM_RATR_STA_HIGH)
 			rate_bitmap = 0x00000f00;
 		else if (rssi_level == DM_RATR_STA_MIDDLE)
@@ -732,8 +732,8 @@ u32 ODM_Get_Rate_Bitmap(struct odm_dm_struct *pDM_Odm, u32 macid, u32 ra_mask, u
 		else
 			rate_bitmap = 0x00000ff5;
 		break;
-	case (ODM_WM_B|ODM_WM_G|ODM_WM_N24G):
-	case (ODM_WM_A|ODM_WM_B|ODM_WM_G|ODM_WM_N24G):
+	case (ODM_WM_B | ODM_WM_G | ODM_WM_N24G):
+	case (ODM_WM_A | ODM_WM_B | ODM_WM_G | ODM_WM_N24G):
 		if (rssi_level == DM_RATR_STA_HIGH) {
 			rate_bitmap = 0x000f0000;
 		} else if (rssi_level == DM_RATR_STA_MIDDLE) {
@@ -911,7 +911,7 @@ void odm_RSSIMonitorCheckCE(struct odm_dm_struct *pDM_Odm)
 			if (psta->rssi_stat.UndecoratedSmoothedPWDB > tmpEntryMaxPWDB)
 				tmpEntryMaxPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;
 			if (psta->rssi_stat.UndecoratedSmoothedPWDB != (-1))
-				PWDB_rssi[sta_cnt++] = (psta->mac_id | (psta->rssi_stat.UndecoratedSmoothedPWDB<<16));
+				PWDB_rssi[sta_cnt++] = (psta->mac_id | (psta->rssi_stat.UndecoratedSmoothedPWDB << 16));
 		}
 	}
 
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
diff --git a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
index 249cbc375074..77edd7ad19a1 100644
--- a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
+++ b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
@@ -85,7 +85,7 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 				if (GET_PWR_CFG_VALUE(pwrcfgcmd) == PWRSEQ_DELAY_US)
 					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd));
 				else
-					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd)*1000);
+					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd) * 1000);
 				break;
 			case PWR_CMD_END:
 				/* When this command is parsed, end the process */
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
diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 004e19301eae..0b20e62f9a68 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -143,7 +143,7 @@ static u32 Array_RadioA_1T_8188E[] = {
 #define READ_NEXT_PAIR(v1, v2, i)	\
 do {								\
 	i += 2; v1 = array[i];			\
-	v2 = array[i+1];				\
+	v2 = array[i + 1];				\
 } while (0)
 
 #define RFREG_OFFSET_MASK 0xfffff
@@ -190,7 +190,7 @@ static bool rtl88e_phy_config_rf_with_headerfile(struct adapter *adapt)
 
 	for (i = 0; i < array_len; i += 2) {
 		u32 v1 = array[i];
-		u32 v2 = array[i+1];
+		u32 v2 = array[i + 1];
 
 		if (v1 < 0xCDCDCDCD) {
 			rtl8188e_config_rf_reg(adapt, v1, v2);
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
index 7646167a0b36..371e746915dd 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
@@ -113,24 +113,24 @@ void rtw_hal_add_ra_tid(struct adapter *pAdapter, u32 bitmap, u8 arg, u8 rssi_le
 	struct odm_dm_struct *odmpriv = &pAdapter->HalData->odmpriv;
 	u8 macid, init_rate, raid, shortGIrate = false;
 
-	macid = arg&0x1f;
+	macid = arg & 0x1f;
 
-	raid = (bitmap>>28) & 0x0f;
+	raid = (bitmap >> 28) & 0x0f;
 	bitmap &= 0x0fffffff;
 
 	if (rssi_level != DM_RATR_STA_INIT)
 		bitmap = ODM_Get_Rate_Bitmap(odmpriv, macid, bitmap, rssi_level);
 
-	bitmap |= ((raid<<28)&0xf0000000);
+	bitmap |= ((raid << 28) & 0xf0000000);
 
-	init_rate = get_highest_rate_idx(bitmap&0x0fffffff)&0x3f;
+	init_rate = get_highest_rate_idx(bitmap & 0x0fffffff) & 0x3f;
 
 	shortGIrate = (arg & BIT(5)) ? true : false;
 
 	if (shortGIrate)
 		init_rate |= BIT(6);
 
-	raid = (bitmap>>28) & 0x0f;
+	raid = (bitmap >> 28) & 0x0f;
 
 	bitmap &= 0x0fffffff;
 
@@ -172,7 +172,7 @@ void rtl8188e_set_FwPwrMode_cmd(struct adapter *adapt, u8 Mode)
 		break;
 	}
 
-	H2CSetPwrMode.SmartPS_RLBM = (((pwrpriv->smart_ps<<4)&0xf0) | (RLBM & 0x0f));
+	H2CSetPwrMode.SmartPS_RLBM = (((pwrpriv->smart_ps << 4) & 0xf0) | (RLBM & 0x0f));
 
 	H2CSetPwrMode.AwakeInterval = 1;
 
@@ -239,9 +239,9 @@ static void ConstructBeacon(struct adapter *adapt, u8 *pframe, u32 *pLength)
 	pframe += 2;
 	pktlen += 2;
 
-	if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE) {
+	if ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE) {
 		pktlen += cur_network->ie_length - sizeof(struct ndis_802_11_fixed_ie);
-		memcpy(pframe, cur_network->ies+sizeof(struct ndis_802_11_fixed_ie), pktlen);
+		memcpy(pframe, cur_network->ies + sizeof(struct ndis_802_11_fixed_ie), pktlen);
 
 		goto _ConstructBeacon;
 	}
@@ -258,7 +258,7 @@ static void ConstructBeacon(struct adapter *adapt, u8 *pframe, u32 *pLength)
 	/*  DS parameter set */
 	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pktlen);
 
-	if ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) {
+	if ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) {
 		u32 ATIMWindow;
 		/*  IBSS Parameter Set... */
 		ATIMWindow = 0;
@@ -473,7 +473,7 @@ static void SetFwRsvdPagePkt(struct adapter *adapt, bool bDLFinished)
 	/* 3 (2) ps-poll *1 page */
 	RsvdPageLoc.LocPsPoll = PageNum;
 	ConstructPSPoll(adapt, &ReservedPagePacket[BufIndex], &PSPollLength);
-	rtl8188e_fill_fake_txdesc(adapt, &ReservedPagePacket[BufIndex-TxDescLen], PSPollLength, true, false);
+	rtl8188e_fill_fake_txdesc(adapt, &ReservedPagePacket[BufIndex - TxDescLen], PSPollLength, true, false);
 
 	PageNeed = (u8)PageNum_128(TxDescLen + PSPollLength);
 	PageNum += PageNeed;
@@ -483,7 +483,7 @@ static void SetFwRsvdPagePkt(struct adapter *adapt, bool bDLFinished)
 	/* 3 (3) null data * 1 page */
 	RsvdPageLoc.LocNullData = PageNum;
 	ConstructNullFunctionData(adapt, &ReservedPagePacket[BufIndex], &NullDataLength, pnetwork->MacAddress, false, 0, 0, false);
-	rtl8188e_fill_fake_txdesc(adapt, &ReservedPagePacket[BufIndex-TxDescLen], NullDataLength, false, false);
+	rtl8188e_fill_fake_txdesc(adapt, &ReservedPagePacket[BufIndex - TxDescLen], NullDataLength, false, false);
 
 	PageNeed = (u8)PageNum_128(TxDescLen + NullDataLength);
 	PageNum += PageNeed;
@@ -493,7 +493,7 @@ static void SetFwRsvdPagePkt(struct adapter *adapt, bool bDLFinished)
 	/* 3 (4) probe response * 1page */
 	RsvdPageLoc.LocProbeRsp = PageNum;
 	ConstructProbeRsp(adapt, &ReservedPagePacket[BufIndex], &ProbeRspLength, pnetwork->MacAddress, false);
-	rtl8188e_fill_fake_txdesc(adapt, &ReservedPagePacket[BufIndex-TxDescLen], ProbeRspLength, false, false);
+	rtl8188e_fill_fake_txdesc(adapt, &ReservedPagePacket[BufIndex - TxDescLen], ProbeRspLength, false, false);
 
 	PageNeed = (u8)PageNum_128(TxDescLen + ProbeRspLength);
 	PageNum += PageNeed;
@@ -504,7 +504,7 @@ static void SetFwRsvdPagePkt(struct adapter *adapt, bool bDLFinished)
 	RsvdPageLoc.LocQosNull = PageNum;
 	ConstructNullFunctionData(adapt, &ReservedPagePacket[BufIndex],
 				  &QosNullLength, pnetwork->MacAddress, true, 0, 0, false);
-	rtl8188e_fill_fake_txdesc(adapt, &ReservedPagePacket[BufIndex-TxDescLen], QosNullLength, false, false);
+	rtl8188e_fill_fake_txdesc(adapt, &ReservedPagePacket[BufIndex - TxDescLen], QosNullLength, false, false);
 
 	PageNeed = (u8)PageNum_128(TxDescLen + QosNullLength);
 	PageNum += PageNeed;
@@ -546,17 +546,17 @@ void rtl8188e_set_FwJoinBssReport_cmd(struct adapter *adapt, u8 mstatus)
 	if (mstatus == 1) {
 		/*  We should set AID, correct TSF, HW seq enable before set JoinBssReport to Fw in 88/92C. */
 		/*  Suggested by filen. Added by tynli. */
-		usb_write16(adapt, REG_BCN_PSR_RPT, (0xC000|pmlmeinfo->aid));
+		usb_write16(adapt, REG_BCN_PSR_RPT, (0xC000 | pmlmeinfo->aid));
 		/*  Do not set TSF again here or vWiFi beacon DMA INT will not work. */
 
 		/* Set REG_CR bit 8. DMA beacon by SW. */
 		haldata->RegCR_1 |= BIT(0);
-		usb_write8(adapt,  REG_CR+1, haldata->RegCR_1);
+		usb_write8(adapt,  REG_CR + 1, haldata->RegCR_1);
 
 		/*  Disable Hw protection for a time which revserd for Hw sending beacon. */
 		/*  Fix download reserved page packet fail that access collision with the protection time. */
 		/*  2010.05.11. Added by tynli. */
-		usb_write8(adapt, REG_BCN_CTRL, usb_read8(adapt, REG_BCN_CTRL)&(~BIT(3)));
+		usb_write8(adapt, REG_BCN_CTRL, usb_read8(adapt, REG_BCN_CTRL) & (~BIT(3)));
 		usb_write8(adapt, REG_BCN_CTRL, usb_read8(adapt, REG_BCN_CTRL) | BIT(4));
 
 		if (haldata->RegFwHwTxQCtrl & BIT(6)) {
@@ -565,7 +565,7 @@ void rtl8188e_set_FwJoinBssReport_cmd(struct adapter *adapt, u8 mstatus)
 		}
 
 		/*  Set FWHW_TXQ_CTRL 0x422[6]=0 to tell Hw the packet is not a real beacon frame. */
-		usb_write8(adapt, REG_FWHW_TXQ_CTRL+2, (haldata->RegFwHwTxQCtrl&(~BIT(6))));
+		usb_write8(adapt, REG_FWHW_TXQ_CTRL + 2, (haldata->RegFwHwTxQCtrl & (~BIT(6))));
 		haldata->RegFwHwTxQCtrl &= (~BIT(6));
 
 		/*  Clear beacon valid check bit. */
@@ -582,7 +582,7 @@ void rtl8188e_set_FwJoinBssReport_cmd(struct adapter *adapt, u8 mstatus)
 				/*  check rsvd page download OK. */
 				rtw_hal_get_hwreg(adapt, HW_VAR_BCN_VALID, (u8 *)(&bcn_valid));
 				poll++;
-			} while (!bcn_valid && (poll%10) != 0 && !adapt->bSurpriseRemoved && !adapt->bDriverStopped);
+			} while (!bcn_valid && (poll % 10) != 0 && !adapt->bSurpriseRemoved && !adapt->bDriverStopped);
 		} while (!bcn_valid && DLBcnCount <= 100 && !adapt->bSurpriseRemoved && !adapt->bDriverStopped);
 
 		if (adapt->bSurpriseRemoved || adapt->bDriverStopped)
@@ -600,7 +600,7 @@ void rtl8188e_set_FwJoinBssReport_cmd(struct adapter *adapt, u8 mstatus)
 
 		/*  Enable Bcn */
 		usb_write8(adapt, REG_BCN_CTRL, usb_read8(adapt, REG_BCN_CTRL) | BIT(3));
-		usb_write8(adapt, REG_BCN_CTRL, usb_read8(adapt, REG_BCN_CTRL)&(~BIT(4)));
+		usb_write8(adapt, REG_BCN_CTRL, usb_read8(adapt, REG_BCN_CTRL) & (~BIT(4)));
 
 		/*  To make sure that if there exists an adapter which would like to send beacon. */
 		/*  If exists, the origianl value of 0x422[6] will be 1, we should check this to */
@@ -608,7 +608,7 @@ void rtl8188e_set_FwJoinBssReport_cmd(struct adapter *adapt, u8 mstatus)
 		/*  the beacon cannot be sent by HW. */
 		/*  2010.06.23. Added by tynli. */
 		if (bSendBeacon) {
-			usb_write8(adapt, REG_FWHW_TXQ_CTRL+2, (haldata->RegFwHwTxQCtrl | BIT(6)));
+			usb_write8(adapt, REG_FWHW_TXQ_CTRL + 2, (haldata->RegFwHwTxQCtrl | BIT(6)));
 			haldata->RegFwHwTxQCtrl |= BIT(6);
 		}
 
@@ -621,6 +621,6 @@ void rtl8188e_set_FwJoinBssReport_cmd(struct adapter *adapt, u8 mstatus)
 		/*  Do not enable HW DMA BCN or it will cause Pcie interface hang by timing issue. 2011.11.24. by tynli. */
 		/*  Clear CR[8] or beacon packet will not be send to TxBuf anymore. */
 		haldata->RegCR_1 &= (~BIT(0));
-		usb_write8(adapt,  REG_CR+1, haldata->RegCR_1);
+		usb_write8(adapt,  REG_CR + 1, haldata->RegCR_1);
 	}
 }
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
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
index 0a900827c4fc..7d0135fde795 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
@@ -182,7 +182,7 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 			rtl8188e_process_phy_info(padapter, precvframe);
 		}
 	} else if (pkt_info.bPacketToSelf || pkt_info.bPacketBeacon) {
-		if (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE)) {
+		if (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE)) {
 			if (psta)
 				precvframe->psta = psta;
 		}
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index 2808f2b119bf..7d315bd438d4 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -58,12 +58,12 @@ void rtl8188e_fill_fake_txdesc(struct adapter *adapt, u8 *desc, u32 BufferLen, u
 	/* offset 0 */
 	ptxdesc->txdw0 |= cpu_to_le32(OWN | FSG | LSG); /* own, bFirstSeg, bLastSeg; */
 
-	ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE+OFFSET_SZ)<<OFFSET_SHT)&0x00ff0000); /* 32 bytes for TX Desc */
+	ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE + OFFSET_SZ) << OFFSET_SHT) & 0x00ff0000); /* 32 bytes for TX Desc */
 
-	ptxdesc->txdw0 |= cpu_to_le32(BufferLen&0x0000ffff); /*  Buffer size + command header */
+	ptxdesc->txdw0 |= cpu_to_le32(BufferLen & 0x0000ffff); /*  Buffer size + command header */
 
 	/* offset 4 */
-	ptxdesc->txdw1 |= cpu_to_le32((QSLT_MGNT<<QSEL_SHT)&0x00001f00); /*  Fixed queue of Mgnt queue */
+	ptxdesc->txdw1 |= cpu_to_le32((QSLT_MGNT << QSEL_SHT) & 0x00001f00); /*  Fixed queue of Mgnt queue */
 
 	/* Set NAVUSEHDR to prevent Ps-poll AId filed to be changed to error vlaue by Hw. */
 	if (ispspoll) {
@@ -91,16 +91,16 @@ static void fill_txdesc_sectype(struct pkt_attrib *pattrib, struct tx_desc *ptxd
 		/* SEC_TYPE : 0:NO_ENC,1:WEP40/TKIP,2:WAPI,3:AES */
 		case _WEP40_:
 		case _WEP104_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x01<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x01 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _TKIP_:
 		case _TKIP_WTMIC_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x01<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x01 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _AES_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x03<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x03 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _NO_PRIVACY_:
@@ -127,7 +127,7 @@ static void fill_txdesc_vcs(struct pkt_attrib *pattrib, __le32 *pdw)
 		*pdw |= cpu_to_le32(HW_RTS_EN);
 		/*  Set RTS BW */
 		if (pattrib->ht_en) {
-			*pdw |= (pattrib->bwmode&HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(27)) : 0;
+			*pdw |= (pattrib->bwmode & HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(27)) : 0;
 
 			if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
 				*pdw |= cpu_to_le32((0x01 << 28) & 0x30000000);
@@ -144,7 +144,7 @@ static void fill_txdesc_vcs(struct pkt_attrib *pattrib, __le32 *pdw)
 static void fill_txdesc_phy(struct pkt_attrib *pattrib, __le32 *pdw)
 {
 	if (pattrib->ht_en) {
-		*pdw |= (pattrib->bwmode&HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(25)) : 0;
+		*pdw |= (pattrib->bwmode & HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(25)) : 0;
 
 		if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
 			*pdw |= cpu_to_le32((0x01 << DATA_SC_SHT) & 0x003f0000);
@@ -171,7 +171,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 
 	if (adapt->registrypriv.mp_mode == 0) {
 		if ((!bagg_pkt) && (urb_zero_packet_chk(adapt, sz) == 0)) {
-			ptxdesc = (struct tx_desc *)(pmem+PACKET_OFFSET_SZ);
+			ptxdesc = (struct tx_desc *)(pmem + PACKET_OFFSET_SZ);
 			pull = 1;
 		}
 	}
@@ -263,11 +263,11 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 				ptxdesc->txdw4 |= cpu_to_le32(BIT(24));/*  DATA_SHORT */
 			ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
 		}
-	} else if ((pxmitframe->frame_tag&0x0f) == MGNT_FRAMETAG) {
+	} else if ((pxmitframe->frame_tag & 0x0f) == MGNT_FRAMETAG) {
 		/* offset 4 */
 		ptxdesc->txdw1 |= cpu_to_le32(pattrib->mac_id & 0x3f);
 
-		qsel = (uint)(pattrib->qsel&0x0000001f);
+		qsel = (uint)(pattrib->qsel & 0x0000001f);
 		ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);
 
 		ptxdesc->txdw1 |= cpu_to_le32((pattrib->raid << RATE_ID_SHT) & 0x000f0000);
@@ -278,7 +278,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 			ptxdesc->txdw2 |= cpu_to_le32(BIT(19));
 
 		/* offset 12 */
-		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum<<SEQ_SHT)&0x0FFF0000);
+		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum << SEQ_SHT) & 0x0FFF0000);
 
 		/* offset 20 */
 		ptxdesc->txdw5 |= cpu_to_le32(RTY_LMT_EN);/* retry limit enable */
@@ -288,7 +288,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 			ptxdesc->txdw5 |= cpu_to_le32(0x00300000);/* retry limit = 12 */
 
 		ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
-	} else if ((pxmitframe->frame_tag&0x0f) == TXAGG_FRAMETAG) {
+	} else if ((pxmitframe->frame_tag & 0x0f) == TXAGG_FRAMETAG) {
 		DBG_88E("pxmitframe->frame_tag == TXAGG_FRAMETAG\n");
 	} else {
 		DBG_88E("pxmitframe->frame_tag = %d\n", pxmitframe->frame_tag);
@@ -301,7 +301,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 		/* offset 8 */
 
 		/* offset 12 */
-		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum<<SEQ_SHT)&0x0fff0000);
+		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum << SEQ_SHT) & 0x0fff0000);
 
 		/* offset 20 */
 		ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
@@ -466,7 +466,7 @@ bool rtl8188eu_xmitframe_complete(struct adapter *adapt,
 
 	/* 3 2. aggregate same priority and same DA(AP or STA) frames */
 	pfirstframe = pxmitframe;
-	len = xmitframe_need_length(pfirstframe) + TXDESC_SIZE + (pfirstframe->pkt_offset*PACKET_OFFSET_SZ);
+	len = xmitframe_need_length(pfirstframe) + TXDESC_SIZE + (pfirstframe->pkt_offset * PACKET_OFFSET_SZ);
 	pbuf_tail = len;
 	pbuf = round_up(pbuf_tail, 8);
 
@@ -517,7 +517,7 @@ bool rtl8188eu_xmitframe_complete(struct adapter *adapt,
 		pxmitframe->agg_num = 0; /*  not first frame of aggregation */
 		pxmitframe->pkt_offset = 0; /*  not first frame of aggregation, no need to reserve offset */
 
-		len = xmitframe_need_length(pxmitframe) + TXDESC_SIZE + (pxmitframe->pkt_offset*PACKET_OFFSET_SZ);
+		len = xmitframe_need_length(pxmitframe) + TXDESC_SIZE + (pxmitframe->pkt_offset * PACKET_OFFSET_SZ);
 
 		if (round_up(pbuf + len, 8) > MAX_XMITBUF_SZ) {
 			pxmitframe->agg_num = 1;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
