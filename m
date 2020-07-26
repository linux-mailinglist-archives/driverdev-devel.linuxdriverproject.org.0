Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F33D922DE10
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 12:53:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6BC187832;
	Sun, 26 Jul 2020 10:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fwUrFravsKRQ; Sun, 26 Jul 2020 10:53:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E70887813;
	Sun, 26 Jul 2020 10:53:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 373E51BF4DD
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 10:53:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1C8D020365
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 10:53:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-fBomlHYJMR for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 10:53:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C50B320243
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 10:53:22 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 1so7580168pfn.9
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 03:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mT3x0356kVRWVeFjxu7KR4BK4J66kBgEfHawKmKvOdY=;
 b=UEMXr2oh28zetGxqfszujUEJM/QhQBAVaJqXfzd+OY6V5gwlCms7u+8d/LoeUQEeFy
 GjnQGqhkF1G2S/MMOzMfUI6h/1XalxhlevR70yIlTaNBgZrcVn2b7NDeNFLZ9r27qxIf
 mlQoR8yOvhtW5smEofqg9910I6qdpRODOeuYDrc3rJ7wBlTq3ncMadh2hYm3ZPlw9KC1
 G36b30DEKSReeOd+jCkH4mbsEuYbnY2B0sa16TC1oBgk434bM2F5iQVLHffVg7LR8BNj
 OMO+99vCKkIaELYnLMSfWY4bAmmAHBWHNV+U5xqynoO9lWTQUDi1F9E/rrlDfjbaDl0X
 yhnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mT3x0356kVRWVeFjxu7KR4BK4J66kBgEfHawKmKvOdY=;
 b=K+JvPe2+5+nnzmr/n58Q5p2uR+6ZW2jeko0plCRCjM3ONDdIXyhhE3Gj+4CuRW5fP9
 doxacQhF2ItEYPdjFZM+uoeSIDTusHZLOl9cYl46kz6aqK5lnYsAzY40Q5LmliSQlf3m
 0kcmgUast/1xJiKXCViW0r9y3P5B/IHiSQbDhvX64msl2QVjWYh1QoNTxjBzL21Ppdlv
 xDs1xWttixAkEjOXikCOfSve45laJPs6Tn7UNPeaB/bJJouIpKNrCi7W3zZUhq1oUOpy
 HDpW+xyRSMK922KRc8HMsJp+Wj6ZkAoMwDY5k6imtnwwFvmehUTWWYqiFllddjZUr/bP
 yCqw==
X-Gm-Message-State: AOAM532e9mcGmM9YE/2rlMIjQBP3i27jXMjnf3kPYjiUGtIKCTcUHcXU
 2FgjgBwOxzqS/AJjkJAw7JA=
X-Google-Smtp-Source: ABdhPJzKwvZis84Ci9mOUHaNSJHVbXXWiUs9KC8kdic9FgKmdAVksNuSk2Vyu0IlY1aRqOOjt5wz1A==
X-Received: by 2002:a63:8949:: with SMTP id v70mr15267297pgd.256.1595760802207; 
 Sun, 26 Jul 2020 03:53:22 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id y22sm10642055pjp.41.2020.07.26.03.53.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 03:53:21 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8723bs: include: Fix coding style issues
Date: Sun, 26 Jul 2020 16:23:02 +0530
Message-Id: <20200726105302.52188-1-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
References: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
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
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleaning messy function declartions and fixing code style
errors in hal_phy_cfg.h as reported by checkpatch.pl

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 .../staging/rtl8723bs/include/hal_phy_cfg.h   | 118 +++++-------------
 1 file changed, 33 insertions(+), 85 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 419ddb0733aa..2f123903279c 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -8,54 +8,31 @@
 #define __INC_HAL8723BPHYCFG_H__
 
 /*--------------------------Define Parameters-------------------------------*/
-#define LOOP_LIMIT				5
-#define MAX_STALL_TIME			50		/* us */
+#define LOOP_LIMIT		5
+#define MAX_STALL_TIME		50	/* us */
 #define AntennaDiversityValue	0x80	/* Adapter->bSoftwareAntennaDiversity ? 0x00:0x80) */
 #define MAX_TXPWR_IDX_NMODE_92S	63
-#define Reset_Cnt_Limit			3
-
-#define MAX_AGGR_NUM	0x07
+#define Reset_Cnt_Limit		3
 
+#define MAX_AGGR_NUM 0x07
 
 /*--------------------------Define Parameters End-------------------------------*/
 
-
 /*------------------------------Define structure----------------------------*/
 
 /*------------------------------Define structure End----------------------------*/
 
 /*--------------------------Exported Function prototype---------------------*/
-u32
-PHY_QueryBBReg_8723B(
-struct adapter *Adapter,
-u32 	RegAddr,
-u32 	BitMask
-	);
-
-void
-PHY_SetBBReg_8723B(
-struct adapter *Adapter,
-u32 	RegAddr,
-u32 	BitMask,
-u32 	Data
-	);
-
-u32
-PHY_QueryRFReg_8723B(
-struct adapter *		Adapter,
-u8 		eRFPath,
-u32 			RegAddr,
-u32 			BitMask
-	);
-
-void
-PHY_SetRFReg_8723B(
-struct adapter *		Adapter,
-u8 		eRFPath,
-u32 			RegAddr,
-u32 			BitMask,
-u32 			Data
-	);
+u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask);
+
+void PHY_SetBBReg_8723B(struct adapter *Adapter, u32 RegAddr,
+			u32 BitMask, u32 Data);
+
+u32 PHY_QueryRFReg_8723B(struct adapter *Adapter, u8 eRFPath,
+			 u32 RegAddr, u32 BitMask);
+
+void PHY_SetRFReg_8723B(struct adapter *Adapter, u8 eRFPath,
+			u32 RegAddr, u32 BitMask, u32 Data);
 
 /* MAC/BB/RF HAL config */
 int PHY_BBConfig8723B(struct adapter *Adapter);
@@ -64,57 +41,28 @@ int PHY_RFConfig8723B(struct adapter *Adapter);
 
 s32 PHY_MACConfig8723B(struct adapter *padapter);
 
-void
-PHY_SetTxPowerIndex(
-struct adapter *		Adapter,
-u32 				PowerIndex,
-u8 			RFPath,
-u8 			Rate
-	);
-
-u8
-PHY_GetTxPowerIndex(
-struct adapter *		padapter,
-u8 			RFPath,
-u8 			Rate,
-enum CHANNEL_WIDTH		BandWidth,
-u8 			Channel
-	);
-
-void
-PHY_GetTxPowerLevel8723B(
-struct adapter *	Adapter,
-	s32*			powerlevel
-	);
-
-void
-PHY_SetTxPowerLevel8723B(
-struct adapter *	Adapter,
-u8 	channel
-	);
-
-void
-PHY_SetBWMode8723B(
-struct adapter *			Adapter,
-enum CHANNEL_WIDTH			Bandwidth,	/*  20M or 40M */
-unsigned char 			Offset		/*  Upper, Lower, or Don't care */
-);
+void PHY_SetTxPowerIndex(struct adapter *Adapter, u32 PowerIndex,
+			 u8 RFPath, u8 Rate);
 
-void
-PHY_SwChnl8723B(/*  Call after initialization */
-struct adapter *Adapter,
-u8 channel
-	);
-
-void
-PHY_SetSwChnlBWMode8723B(
-struct adapter *		Adapter,
-u8 			channel,
-enum CHANNEL_WIDTH		Bandwidth,
-u8 			Offset40,
-u8 			Offset80
+u8 PHY_GetTxPowerIndex(struct adapter *padapter, u8 RFPath, u8 Rate,
+			enum CHANNEL_WIDTH BandWidth, u8 Channel);
+
+void PHY_GetTxPowerLevel8723B(struct adapter *Adapter, s32 *powerlevel);
+
+void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 channel);
+
+void PHY_SetBWMode8723B(struct adapter *Adapter,
+			enum CHANNEL_WIDTH Bandwidth,	/*  20M or 40M */
+			unsigned char Offset	/*  Upper, Lower, or Don't care */
 );
 
+/*  Call after initialization */
+void PHY_SwChnl8723B(struct adapter *Adapter, u8 channel);
+
+void PHY_SetSwChnlBWMode8723B(struct adapter *Adapter, u8 channel,
+				enum CHANNEL_WIDTH Bandwidth,
+				u8 Offset40, u8 Offset80);
+
 /*--------------------------Exported Function prototype End---------------------*/
 
 #endif
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
