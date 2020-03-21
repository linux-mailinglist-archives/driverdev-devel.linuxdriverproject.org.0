Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6165A18E521
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:22:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE10986053;
	Sat, 21 Mar 2020 22:22:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jbD1nYoS6jOx; Sat, 21 Mar 2020 22:22:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0F628666C;
	Sat, 21 Mar 2020 22:22:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65AE81BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:22:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6183686637
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UadWKsWJKOAE for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:22:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ACF3E86053
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:22:30 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id h8so5041596pgs.9
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MY+G2hlK5/8tfRjJ5IkhCQI+Jk9ce+VkAcNN6+q6uB4=;
 b=QeMuzZhZDRB/cG2USjSBPOKOTQ8R/Y8haELJnPrcMxW9DLyLQRJ+u14ggPP4nGMHOG
 GY0Tnb8aZLJeZ7Yi2iDgOs7qQLB9lWKM6NTbHHMG3P1IxsusSpAbSjk4mkwLWh6lDUGJ
 evguRC2cARelGunO32+lnTcnDzMNdg+0s24NLF6kLIHs25AGvL8ILJ3lNx1KE+TfyI+A
 k36oOBLtiZuyiqtKaA84f2zLFrZFqx9eF3GmFlS1ZXpx6vVRjnxB4BS+QalwhOWOX74Q
 9HpREU2ExIP89Tt5lpLofnhOLGwzIsro/MGoE60I6bn9Vo0DfVps+I85qAIbCMxMCuRi
 TA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MY+G2hlK5/8tfRjJ5IkhCQI+Jk9ce+VkAcNN6+q6uB4=;
 b=qg9Karkg+/7k3ZlKqwYy9rZ9GITy2gjNEFxefzIYF25IXGw3CwV1yE1Ya0+N8rxuM1
 Y38JlI1UgkLGKcbXXvEtdLiswCqBsJMpre8WSNOrL89w7mN/pVi+JN1mUwanDUqlHqu+
 4D624LPndn2J+EkwerLQzuvkZQZj6sJkoJcTxIUOU5dKrTZD6AO4lXcKN7y2Wsz1QXq/
 swT3nQHYPy6xzNtNaQfuDXzhCwyjGhVBBHRLtKPEYw/p/B2PsYNE4MR0IR927Py5VkGY
 gItiENBV+awWKRu3/YrR/wNE9f7/OlES/vLf+0Aap8KlDcCfv3Mqd2rcWsKcGWOnqGsc
 nubw==
X-Gm-Message-State: ANhLgQ25r7MF9JWIjgDorazmG+0DMifqJp42iq2nTWapiS0UrL6GS9GY
 Pajxhs9st32STpnkYL9rw9Q=
X-Google-Smtp-Source: ADFU+vsvHxooRyLmPJf0tDdU25mV5pe9u3s93VLX7x2zlKuvYbHHSJ9qNReX1SFGIaGc5vu6RKix5A==
X-Received: by 2002:a63:30c4:: with SMTP id
 w187mr15665598pgw.239.1584829350163; 
 Sat, 21 Mar 2020 15:22:30 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id h4sm9288688pfg.177.2020.03.21.15.22.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:22:29 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 02/11] Staging: rtl8188eu: odm: Add space
 around operators
Date: Sun, 22 Mar 2020 03:52:20 +0530
Message-Id: <3ebed98f7e2871bfd2cdded831e121e797e5d253.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/odm.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff odm_old.o odm.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/odm.c | 48 ++++++++++++++---------------
 1 file changed, 24 insertions(+), 24 deletions(-)

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
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
