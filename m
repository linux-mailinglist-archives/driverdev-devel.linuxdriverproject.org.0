Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E141DFE48
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 12:17:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A166D882F2;
	Sun, 24 May 2020 10:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a+60x7dk7m7b; Sun, 24 May 2020 10:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B7902880CB;
	Sun, 24 May 2020 10:17:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D44431BF41D
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 10:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D0DB286933
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 10:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jJt1ntJXCPtc for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 10:17:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B9FB868B4
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 10:17:29 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id u13so4163165wml.1
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 03:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T4m0K3FQ1TJtgciyUpUZis7pwNaXr/vlSjo6f9IEyUI=;
 b=s6V9Ua8aiZsh9BpousyxnCQ3sTeC//ibfu+YqnWX/4NE1dTifzZM49DDgaD9SgHAHW
 mtF+mq9+fEPxcgqM74/WsD8x8QZC6Hu8n735o4BRxuyjBIEv6wJwdToDsaZpm1wMu1rK
 z+eagJfwa9uqifqq0qSe8HFHQXfHRdg+Kpvt9sxSeA/5n/tvhmtTgpAR73Q7mr5Py5kJ
 +SsfmIM9vvg6v8j4zxTTDuqzkzJyyxD0kGlN4azJHSq2ypGG5RnO/o5d/YnVM5MjYwIU
 /xaIytpNmXPsNs5fk8CPLMe0v9UGn0IDWr2gAEPbzWXiJKWP3ZYHVCfH5ILcUTEDWUsP
 Wo1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T4m0K3FQ1TJtgciyUpUZis7pwNaXr/vlSjo6f9IEyUI=;
 b=gYbs8ts9hF7tKYlYu136T8lzN0aIcG+s2tJUW2Y/tcyvLL2IK77+rck/oFEjYyKV4d
 vpv2RMyxEspts+pqv5g+4ldUqxkhwB6m9zJIMz46kyue5g6qGSI2pAHqF3sEgCuWPJAC
 AwNyE6OTdnCSTJF3Qq3fUQY5elN5eYqtyS2eZ+NIcyhUhV2NGo9V+lWwkWlXrjEzBMTU
 GNuwCf5MNPHecKGGlNuWwsfUley6hGqn9oKA+OjgxGzELGWXdvBuoTmHNCd1EcWCbM4Y
 0X1dncbQTmeO2rDSgW6SfKlNfgW1w3yZH7g6L0ZorlOuY/276IO5+k7f8LigWjyvumGB
 zKDw==
X-Gm-Message-State: AOAM5331ebaIsSnGrAPklXLFPZZfqif8jEDm+yR5MZAKDevTpTsinA93
 VJzSNSAi84udFyrrPFjUwD4=
X-Google-Smtp-Source: ABdhPJwtQR2qyH+kWldjz/mQgH5XDqguZsV7ZVgsiWKHaIta9ODhBxa511Qn6El+zbF+yQqYd8BOqg==
X-Received: by 2002:a05:600c:48e:: with SMTP id
 d14mr4192893wme.133.1590315447916; 
 Sun, 24 May 2020 03:17:27 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-159.178.006.pools.vodafone-ip.de. [178.6.252.159])
 by smtp.gmail.com with ESMTPSA id o6sm3819058wrp.3.2020.05.24.03.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 03:17:27 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] staging: rtl8188eu: make some arrays static const
Date: Sun, 24 May 2020 12:15:14 +0200
Message-Id: <20200524101514.20557-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200524101514.20557-1-straube.linux@gmail.com>
References: <20200524101514.20557-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Joe Perches <joe@perches.com>,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make some arrays in phy_iq_calibrate() static const and adjust
the functions that take these arrays as parameters accordingly.
Reduces object file size by 84 bytes (GCC 9.3.1 x86_64).

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index a0522d6764d6..920688fc9e9f 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -786,7 +786,7 @@ static void pathb_fill_iqk(struct adapter *adapt, bool iqkok, s32 result[][8],
 	}
 }
 
-static void save_adda_registers(struct adapter *adapt, u32 *addareg,
+static void save_adda_registers(struct adapter *adapt, const u32 *addareg,
 				u32 *backup, u32 register_num)
 {
 	u32 i;
@@ -795,7 +795,7 @@ static void save_adda_registers(struct adapter *adapt, u32 *addareg,
 		backup[i] = phy_query_bb_reg(adapt, addareg[i], bMaskDWord);
 }
 
-static void save_mac_registers(struct adapter *adapt, u32 *mac_reg,
+static void save_mac_registers(struct adapter *adapt, const u32 *mac_reg,
 			       u32 *backup)
 {
 	u32 i;
@@ -806,7 +806,7 @@ static void save_mac_registers(struct adapter *adapt, u32 *mac_reg,
 	backup[i] = usb_read32(adapt, mac_reg[i]);
 }
 
-static void reload_adda_reg(struct adapter *adapt, u32 *adda_reg,
+static void reload_adda_reg(struct adapter *adapt, const u32 *adda_reg,
 			    u32 *backup, u32 regiester_num)
 {
 	u32 i;
@@ -815,8 +815,8 @@ static void reload_adda_reg(struct adapter *adapt, u32 *adda_reg,
 		phy_set_bb_reg(adapt, adda_reg[i], bMaskDWord, backup[i]);
 }
 
-static void reload_mac_registers(struct adapter *adapt,
-				 u32 *mac_reg, u32 *backup)
+static void reload_mac_registers(struct adapter *adapt, const u32 *mac_reg,
+				 u32 *backup)
 {
 	u32 i;
 
@@ -826,7 +826,7 @@ static void reload_mac_registers(struct adapter *adapt,
 	usb_write32(adapt, mac_reg[i], backup[i]);
 }
 
-static void path_adda_on(struct adapter *adapt, u32 *adda_reg,
+static void path_adda_on(struct adapter *adapt, const u32 *adda_reg,
 			 bool is_path_a_on, bool is2t)
 {
 	u32 path_on;
@@ -844,7 +844,8 @@ static void path_adda_on(struct adapter *adapt, u32 *adda_reg,
 		phy_set_bb_reg(adapt, adda_reg[i], bMaskDWord, path_on);
 }
 
-static void mac_setting_calibration(struct adapter *adapt, u32 *mac_reg, u32 *backup)
+static void mac_setting_calibration(struct adapter *adapt, const u32 *mac_reg,
+				    u32 *backup)
 {
 	u32 i = 0;
 
@@ -952,7 +953,7 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 	struct odm_dm_struct *dm_odm = &adapt->HalData->odmpriv;
 	u32 i;
 	u8 path_a_ok, path_b_ok;
-	u32 adda_reg[IQK_ADDA_REG_NUM] = {
+	static const u32 adda_reg[IQK_ADDA_REG_NUM] = {
 		rFPGA0_XCD_SwitchControl, rBlue_Tooth,
 		rRx_Wait_CCA, rTx_CCK_RFON,
 		rTx_CCK_BBON, rTx_OFDM_RFON,
@@ -962,12 +963,12 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 		rRx_TO_Rx, rStandby,
 		rSleep, rPMPD_ANAEN
 	};
-	u32 iqk_mac_reg[IQK_MAC_REG_NUM] = {
+	static const u32 iqk_mac_reg[IQK_MAC_REG_NUM] = {
 		REG_TXPAUSE, REG_BCN_CTRL,
 		REG_BCN_CTRL_1, REG_GPIO_MUXCFG
 	};
 	/* since 92C & 92D have the different define in IQK_BB_REG */
-	u32 iqk_bb_reg_92c[IQK_BB_REG_NUM] = {
+	static const u32 iqk_bb_reg_92c[IQK_BB_REG_NUM] = {
 		rOFDM0_TRxPathEnable, rOFDM0_TRMuxPar,
 		rFPGA0_XCD_RFInterfaceSW, rConfig_AntA, rConfig_AntB,
 		rFPGA0_XAB_RFInterfaceSW, rFPGA0_XA_RFInterfaceOE,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
