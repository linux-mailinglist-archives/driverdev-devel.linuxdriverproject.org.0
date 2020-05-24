Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F081DFDA7
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 10:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 71E808618F;
	Sun, 24 May 2020 08:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Pw97BkHwXfW; Sun, 24 May 2020 08:30:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3EBC385F05;
	Sun, 24 May 2020 08:30:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 669511BF3D2
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 08:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7E21A85D61
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 08:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxnAI2ixQ0ID for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 08:30:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F349985D08
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 08:30:35 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id a2so17529609ejb.10
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 01:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=86C6qQlpj66Vdu46Is+yMMwh5i/kAr5WUUQnyqcq9nw=;
 b=f/2AKCpDmqUEshPrE7Wk4dThtsUXAUuOvBREWBCWtdTJKMWgsKWoKykMtqNery1Ziw
 sjHbcZsbq6dh82xXTDdvHee0IpZrdjv7c/c2RDMtqmT/xLZ8YKoeXMgxPR0RPH2C3KTt
 Oj6zEwI8rXXvdFwD1xkS9kOiJQwXUjA/F1yKyXWnUnfIypca6C/gFigvCdj75W47krr3
 DJf8wtMaq9PWbYt5wBVtb5vQPwwTxnj7Iu4X+hKrmfRNoXMYGGqqjqmpMiUWA2wRLGKh
 O8VHXrmFnNZ/xRTS8q5aKtIQVEQxQFpcoi/hWLWIGHWsA0VlWobTfqCgU5Iiw3oSv18D
 qLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=86C6qQlpj66Vdu46Is+yMMwh5i/kAr5WUUQnyqcq9nw=;
 b=d3sGFb2JLasmHYbD9sS+NnhMPb721mN2iY9PFENDWcwKs1m0pEbip1cSXfLBlcoiX7
 Df/t76NjKjyq182csn63PwH441FC/OyVwqt4a0H6EFRd2jlm+GR71f48h3BC9dZBJbyT
 q036ZvzBHNMGn7WCNO1JoYxzaR4vnZ/DxohTjoJwOFiKiAKmQvm+rj1yU/C2bKSFqcGQ
 /fFBod6pfLgyf++kswZ/++aepbSmn9MaMFFzY6v4SgDCCimWw2qy5KF9Hxlh9OSxdCbq
 1cnHZadyuvZMBhn6TrqOhJYXtI6M/47NR9axV7umgIIsFAoNnl+GXwuEieza794GFm0/
 8m5g==
X-Gm-Message-State: AOAM531KfoWHRsgj6arAXFmHBprjHXDE5Eb/RIX5kQITJ6KsIooaisDw
 gAuvXJD9tzIGJ0orOgbYzI8=
X-Google-Smtp-Source: ABdhPJyDmd1aAO6M8pHpbFtz+KWAKSSM/4ZTyXwcwqhOUmXidYFZDslKjBLQ2fqs4Fi3nQBBO7lFxw==
X-Received: by 2002:a17:906:7e03:: with SMTP id
 e3mr1282041ejr.363.1590309034281; 
 Sun, 24 May 2020 01:30:34 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-177.178.006.pools.vodafone-ip.de. [178.6.252.177])
 by smtp.gmail.com with ESMTPSA id d22sm12430381ejb.15.2020.05.24.01.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 01:30:33 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: clean up some declarations
Date: Sun, 24 May 2020 10:27:48 +0200
Message-Id: <20200524082748.12901-1-straube.linux@gmail.com>
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
