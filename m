Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 466F1137846
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 22:05:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B99D87744;
	Fri, 10 Jan 2020 21:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R58X53SkvkDj; Fri, 10 Jan 2020 21:05:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AA068772E;
	Fri, 10 Jan 2020 21:05:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 896D81BF616
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 21:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 82F94884F4
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 21:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5pntF7CgSK1 for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 21:05:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8C466884F3
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 21:05:28 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id q6so3067608wro.9
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 13:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KLTcmynENrIjf+Qvsvjan+Ya9hbU54HJX9wVwfakaXU=;
 b=DBJoDtW6YuAcbD/Z0pabS32JUMCsaWFrPQ5uzRENE2cIgTfV7B6udReVC9TbPNiHUI
 9y7CdTptGr08ICO/QM/2t/5hiVqJA2kq4/TbPiIXhVSrsD15XC1gibl0LRhz+2Z0IgpZ
 gMypPvFdHdb+w1Yi5EBlv+zaU7gQnMgZ3oEtN/tFjeMxj2u/4p5mcJGCZOsd0Bq+Ot6H
 GOnHVC8ZkPUI18Gw8dEHoQCygeOFvRsOLK4AI0ije69rhyoYA8vMDNCU2QEARhHhgQ5m
 olKxP8/4JcLlk1eMPhf4geempJRivjUTENl1qqsDByu/lsScLYR0WsXQR5Te1qKpFxPj
 ItgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KLTcmynENrIjf+Qvsvjan+Ya9hbU54HJX9wVwfakaXU=;
 b=gTsa9F4WZX82KlBwSaW9ZF8oRLuh1rY5C3Rb7cJ2DHlVzfqNkZfhz+wq9qBhagSUgr
 czOi1Wu/eHsIorTBYBtwlRTzCY7847VZ5MrxXZHxcWRd6e1IOopuSvQglN9G4LDFMPi5
 if/4nnK/B8Xiv6hgBY+BjCE1DCC0sSahduu2dBf8v4ahZMCphJ0Xt3OR1WvY1BurNiQi
 M5ftBcCTPwMCODSpnUYPueNviZkPAGTKJSojxI7BSFU6I2KF0w9xZK2IvtyX9sqDO3mx
 VyKQDN8MHc41w9C2QfRoOapU5/xisCqKt4n61fz6mdVOCKEZGypObI1JxYZVhe08i407
 PhSA==
X-Gm-Message-State: APjAAAWUVKCSJ+IDWVhzdWucIxs1EmwIKgTyc1MxPXh/tcS2nU6djyL0
 g/koIel0oABxJPzy78H5DzU=
X-Google-Smtp-Source: APXvYqzpscMcaksvbCJL3xrRPgDYJ68071VBRJNyS3I2TIL4ZIGd3d4ZhnRP35mktyDpoNtF4ofprg==
X-Received: by 2002:adf:f5cf:: with SMTP id k15mr5465352wrp.182.1578690326891; 
 Fri, 10 Jan 2020 13:05:26 -0800 (PST)
Received: from localhost.localdomain
 (dslb-178-006-252-151.178.006.pools.vodafone-ip.de. [178.6.252.151])
 by smtp.gmail.com with ESMTPSA id n8sm3609958wrx.42.2020.01.10.13.05.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 13:05:26 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove ODM_GetRightChnlPlaceforIQK()
Date: Fri, 10 Jan 2020 22:04:56 +0100
Message-Id: <20200110210456.13178-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function ODM_GetRightChnlPlaceforIQK() returns non-zero values only
for channels > 14. According to the TODO code valid only for 5 GHz
should be removed.

- find and remove remaining code valid only for 5 GHz. Most of the
  obvious ones have been removed, but things like channel > 14 still
  exist.

Remove ODM_GetRightChnlPlaceforIQK() and replace the uses of the
return value with zero.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalPhyRf.c      | 30 -------------------
 drivers/staging/rtl8723bs/hal/HalPhyRf.h      |  8 -----
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    | 11 +++----
 3 files changed, 4 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index beb4002a40e1..357802db9aed 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -622,33 +622,3 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 
 	pDM_Odm->RFCalibrateInfo.TXPowercount = 0;
 }
-
-
-
-
-/* 3 ============================================================ */
-/* 3 IQ Calibration */
-/* 3 ============================================================ */
-
-u8 ODM_GetRightChnlPlaceforIQK(u8 chnl)
-{
-	u8 channel_all[ODM_TARGET_CHNL_NUM_2G_5G] = {
-		1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
-		36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58,
-		60, 62, 64, 100, 102, 104, 106, 108, 110, 112,
-		114, 116, 118, 120, 122, 124, 126, 128, 130, 132,
-		134, 136, 138, 140, 149, 151, 153, 155, 157, 159,
-		161, 163, 165
-	};
-	u8 place = chnl;
-
-
-	if (chnl > 14) {
-		for (place = 14; place < sizeof(channel_all); place++) {
-			if (channel_all[place] == chnl)
-				return place-13;
-		}
-	}
-	return 0;
-
-}
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.h b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
index 3d6f68bc61d7..643fcf37c9ad 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
@@ -44,12 +44,4 @@ void ODM_ClearTxPowerTrackingState(PDM_ODM_T pDM_Odm);
 
 void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter);
 
-
-
-#define ODM_TARGET_CHNL_NUM_2G_5G 59
-
-
-u8 ODM_GetRightChnlPlaceforIQK(u8 chnl);
-
-
 #endif	/*  #ifndef __HAL_PHY_RF_H__ */
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 338dd0b7a6eb..85ea535dd6e9 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -1792,7 +1792,7 @@ void PHY_IQCalibrate_8723B(
 	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 
 	s32 result[4][8];	/* last is final result */
-	u8 i, final_candidate, Indexforchannel;
+	u8 i, final_candidate;
 	bool bPathAOK, bPathBOK;
 	s32 RegE94, RegE9C, RegEA4, RegEAC, RegEB4, RegEBC, RegEC4, RegECC, RegTmp = 0;
 	bool is12simular, is13simular, is23simular;
@@ -1997,17 +1997,14 @@ void PHY_IQCalibrate_8723B(
 			_PHY_PathBFillIQKMatrix8723B(padapter, bPathBOK, result, final_candidate, (RegEC4 == 0));
 	}
 
-	Indexforchannel = ODM_GetRightChnlPlaceforIQK(pHalData->CurrentChannel);
-
 /* To Fix BSOD when final_candidate is 0xff */
 /* by sherry 20120321 */
 	if (final_candidate < 4) {
 		for (i = 0; i < IQK_Matrix_REG_NUM; i++)
-			pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[Indexforchannel].Value[0][i] = result[final_candidate][i];
-		pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[Indexforchannel].bIQKDone = true;
+			pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[0].Value[0][i] = result[final_candidate][i];
+		pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[0].bIQKDone = true;
 	}
-	/* RT_DISP(FINIT, INIT_IQK, ("\nIQK OK Indexforchannel %d.\n", Indexforchannel)); */
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("\nIQK OK Indexforchannel %d.\n", Indexforchannel));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("\nIQK OK Indexforchannel %d.\n", 0));
 
 	_PHY_SaveADDARegisters8723B(padapter, IQK_BB_REG_92C, pDM_Odm->RFCalibrateInfo.IQK_BB_backup_recover, 9);
 
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
