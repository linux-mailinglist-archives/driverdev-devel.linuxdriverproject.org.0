Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A39F1DFE47
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 12:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F16A586934;
	Sun, 24 May 2020 10:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id poKuJnOD8DI2; Sun, 24 May 2020 10:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF2A286931;
	Sun, 24 May 2020 10:17:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C3A51BF41D
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 10:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 267B220410
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 10:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8eLVzIMqHdIh for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 10:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 31CAE20343
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 10:17:28 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id u12so9480718wmd.3
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 03:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eOcAVw3WZJieXwB4DiqXh5Y9KuUxyuAgDULNchWs2PU=;
 b=hzL0+W/AF1i4IJSy1JF1cAJ23MpUuV9jY/U7zBK0L4wdsDc7t5uGUw+K/OCLsLHDio
 zrC4+6H/xjHOI5pmNBtVP1EqPUQecKUdf+ishS4C9TUeL+8pBrdQ6FlX1ZXYJtMfheOY
 IkBv7yM6KiGPOlIftlxwOr15t2Q+MbpBKoWsIi7ol08Jz1ZILyCqbdqB9Fbq2ePtT/CN
 mVYDtO1Ji/cw+JyAxibSJfm1zCCfHolNWZ9HtgyC5koz0jXik76xSJj/2UEdjgqBj+VP
 2LxfS9E/8efxAZxyGaCpqV3FGAowJo8Zi09FQUdw3d8fMKlMTguCFmXqRKByEaw0I+3D
 ODPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eOcAVw3WZJieXwB4DiqXh5Y9KuUxyuAgDULNchWs2PU=;
 b=uLcu0M7CqvKMhks5qZPAoHwaZAKX28+BHn8Q2OIZ7Q5WER3QzWk2sNPUkBf4NQKAzE
 nXbu8gnZhQww9zGATCF6rUI0j4/gkL2lDdH3CB7yZN+dPUYzw5tD9hOyDijkfcR1feJH
 he9YIDSajW6q5fMHnMK2qDgjl++FMozwpFcRXR1FsxHoq6T6kXzAdW6FzBRmwBBmCXnV
 vKePHnuq6pJh4ytrn6jgA/UszPmK+8SU9hPZMp5QP0KV6VbEd701gauu3hUbj4s1KJRF
 4oiIGKAzSVTUem0FTaQ3KOwALYXGsT+6DKKMjtYXomPsjv5n7S+eQMTHrbOpxOHa1XWL
 G0Jg==
X-Gm-Message-State: AOAM533NpHtVwnNlY1AODappiydDX8F3fzWhl74lFszotPBIeL89NZ83
 HJJQUac8vyxT29Vza0vBSjs=
X-Google-Smtp-Source: ABdhPJwMB/mbnH5AbZExAt3LlayIWmdR7walb5ixZfgyALYp8AuG7orpvP6OUiPaUKZ5vifNz+BIiw==
X-Received: by 2002:a1c:acc8:: with SMTP id
 v191mr21852638wme.154.1590315446501; 
 Sun, 24 May 2020 03:17:26 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-159.178.006.pools.vodafone-ip.de. [178.6.252.159])
 by smtp.gmail.com with ESMTPSA id o6sm3819058wrp.3.2020.05.24.03.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 03:17:25 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/2] staging: rtl8188eu: clean up some declarations
Date: Sun, 24 May 2020 12:15:13 +0200
Message-Id: <20200524101514.20557-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up some array declarations in phy_iq_calibrate() to reduce
indentation and clear line over 80 characters checkpatch warnings.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
v1 -> v2
Added patch that makes arrays static const.

 drivers/staging/rtl8188eu/hal/phy.c | 33 +++++++++++++++--------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 5eca3625d5a8..a0522d6764d6 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -953,25 +953,26 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 	u32 i;
 	u8 path_a_ok, path_b_ok;
 	u32 adda_reg[IQK_ADDA_REG_NUM] = {
-					  rFPGA0_XCD_SwitchControl, rBlue_Tooth,
-					  rRx_Wait_CCA, rTx_CCK_RFON,
-					  rTx_CCK_BBON, rTx_OFDM_RFON,
-					  rTx_OFDM_BBON, rTx_To_Rx,
-					  rTx_To_Tx, rRx_CCK,
-					  rRx_OFDM, rRx_Wait_RIFS,
-					  rRx_TO_Rx, rStandby,
-					  rSleep, rPMPD_ANAEN};
-
+		rFPGA0_XCD_SwitchControl, rBlue_Tooth,
+		rRx_Wait_CCA, rTx_CCK_RFON,
+		rTx_CCK_BBON, rTx_OFDM_RFON,
+		rTx_OFDM_BBON, rTx_To_Rx,
+		rTx_To_Tx, rRx_CCK,
+		rRx_OFDM, rRx_Wait_RIFS,
+		rRx_TO_Rx, rStandby,
+		rSleep, rPMPD_ANAEN
+	};
 	u32 iqk_mac_reg[IQK_MAC_REG_NUM] = {
-					    REG_TXPAUSE, REG_BCN_CTRL,
-					    REG_BCN_CTRL_1, REG_GPIO_MUXCFG};
-
+		REG_TXPAUSE, REG_BCN_CTRL,
+		REG_BCN_CTRL_1, REG_GPIO_MUXCFG
+	};
 	/* since 92C & 92D have the different define in IQK_BB_REG */
 	u32 iqk_bb_reg_92c[IQK_BB_REG_NUM] = {
-					      rOFDM0_TRxPathEnable, rOFDM0_TRMuxPar,
-					      rFPGA0_XCD_RFInterfaceSW, rConfig_AntA, rConfig_AntB,
-					      rFPGA0_XAB_RFInterfaceSW, rFPGA0_XA_RFInterfaceOE,
-					      rFPGA0_XB_RFInterfaceOE, rFPGA0_RFMOD};
+		rOFDM0_TRxPathEnable, rOFDM0_TRMuxPar,
+		rFPGA0_XCD_RFInterfaceSW, rConfig_AntA, rConfig_AntB,
+		rFPGA0_XAB_RFInterfaceSW, rFPGA0_XA_RFInterfaceOE,
+		rFPGA0_XB_RFInterfaceOE, rFPGA0_RFMOD
+	};
 
 	u32 retry_count = 9;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
