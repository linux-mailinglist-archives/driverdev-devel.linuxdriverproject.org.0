Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C2D232551
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 21:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 697DF24BEF;
	Wed, 29 Jul 2020 19:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id evnu1t2gm+5P; Wed, 29 Jul 2020 19:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 88A9320497;
	Wed, 29 Jul 2020 19:22:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EC591BF328
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 19:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6296184FB9
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 19:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LtEcfeX6roSw for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 19:22:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 130AB85258
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 19:22:06 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id f193so3072018pfa.12
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 12:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sxdfgFg/+YKF2vVbSCxbDEow+54W6Crwq1vgBu5NBEs=;
 b=luCydVO9DWb8AUtr2HzSKMOCmL4a6u5HHJ8WUXnbsPvghNMRuqUjH8IvhTSeWJ9v8t
 lebJddla/iyAPy9GmxWlYtGhwhpqAKbt3XjBCHRe/ZP7KHrum6GkVqXlvjTSSFou5KPk
 pJZhA56FClTffQw9gBJ+KfHzh+q7YtsxJqBZXQsBLsyimz7jUGt2DW/1SrIdZ37u4OJ3
 1JFeTTmNl/Gj1vTczhkuUsUsx2xAo9kVM6UA1US3KKZKegiYxBmoJD+Agxm4Tv7qCd8Z
 xIaoazZaqfFqepWqc7Aa4Nu7Q4J+57ISA4srXQrHdzM923IoBy873FaBieqEBEmRVbon
 KTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sxdfgFg/+YKF2vVbSCxbDEow+54W6Crwq1vgBu5NBEs=;
 b=a1qu2y9E7v1hU4xdErgsYR/9/yMqYyOtiieAyDV2Fn4ecbyoNttIEHLz8ovWCLm5mf
 +ZZzK13caahsgcswELiLTPyKLFfut37fg0AAkOpPC+Mc5Gp9oml7gq87ZxHKGkp4Arcr
 HFAZeaSxt9so00mu1DnUAOU0/gpc/ll3O8Yvh4sZZuw+ay5ZDfbh2WLCgu4OOc2+Nm75
 nDKL2uqkFTECxUCsBAMou2wP0ymlpAP2w8UhLo0UcZrax/AStKLLoGcB/sRD+Qm7qQyy
 asTtdL5UK9zbbyr4uJA5w+gdYk7CIeLfzg+VgLCMzFNgtV8LgyW2kzq9VBOxM6ah35cZ
 vgAw==
X-Gm-Message-State: AOAM530otQzkIZEaue/LRrlHA6U/4kZhZbCvoILigG6k4OwFYI0y5iNX
 xsE8MovzIPMSapc6w3Bzt34=
X-Google-Smtp-Source: ABdhPJyKiyRtOMcLkIJ0dDVgMCU3eDC6dC8GyPT1NQ2lR8sKkgj0IpIhsGZmgOklXEg9n0wu6RL3Ag==
X-Received: by 2002:a63:1408:: with SMTP id u8mr31585696pgl.282.1596050525566; 
 Wed, 29 Jul 2020 12:22:05 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id hg7sm599431pjb.24.2020.07.29.12.22.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 12:22:04 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 2/3] staging: rtl8723bs: Clean up function declations
Date: Thu, 30 Jul 2020 00:51:35 +0530
Message-Id: <20200729192136.23828-3-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200729192136.23828-1-aditya.jainadityajain.jain@gmail.com>
References: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
 <20200729192136.23828-1-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, joe@perches.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up multiline function declartions in hal_phy_cfg.h
to improve code readablility

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 .../staging/rtl8723bs/include/hal_phy_cfg.h   | 110 +++++-------------
 1 file changed, 29 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 7e48abc4c760..0eb3e57f4082 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -25,37 +25,16 @@
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
-struct adapter *Adapter,
-u8 		eRFPath,
-u32 			RegAddr,
-u32 			BitMask
-	);
-
-void
-PHY_SetRFReg_8723B(
-struct adapter *Adapter,
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
@@ -64,56 +43,25 @@ int PHY_RFConfig8723B(struct adapter *Adapter);
 
 s32 PHY_MACConfig8723B(struct adapter *padapter);
 
-void
-PHY_SetTxPowerIndex(
-struct adapter *Adapter,
-u32 				PowerIndex,
-u8 			RFPath,
-u8 			Rate
-	);
-
-u8
-PHY_GetTxPowerIndex(
-struct adapter *padapter,
-u8 			RFPath,
-u8 			Rate,
-enum CHANNEL_WIDTH		BandWidth,
-u8 			Channel
-	);
-
-void
-PHY_GetTxPowerLevel8723B(
-struct adapter *Adapter,
-	s32 *powerlevel
-	);
-
-void
-PHY_SetTxPowerLevel8723B(
-struct adapter *Adapter,
-u8 	channel
-	);
-
-void
-PHY_SetBWMode8723B(
-struct adapter *Adapter,
-enum CHANNEL_WIDTH			Bandwidth,	/*  20M or 40M */
-unsigned char 			Offset		/*  Upper, Lower, or Don't care */
-);
-
-void
-PHY_SwChnl8723B(/*  Call after initialization */
-struct adapter *Adapter,
-u8 channel
-	);
-
-void
-PHY_SetSwChnlBWMode8723B(
-struct adapter *Adapter,
-u8 			channel,
-enum CHANNEL_WIDTH		Bandwidth,
-u8 			Offset40,
-u8 			Offset80
-);
+void PHY_SetTxPowerIndex(struct adapter *Adapter, u32 PowerIndex,
+			 u8 RFPath, u8 Rate);
+
+u8 PHY_GetTxPowerIndex(struct adapter *padapter, u8 RFPath, u8 Rate,
+			enum CHANNEL_WIDTH BandWidth, u8 Channel);
+
+void PHY_GetTxPowerLevel8723B(struct adapter *Adapter, s32 *powerlevel);
+
+void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 channel);
+
+void PHY_SetBWMode8723B(struct adapter *Adapter, enum CHANNEL_WIDTH Bandwidth,
+			unsigned char Offset);
+
+/*  Call after initialization */
+void PHY_SwChnl8723B(struct adapter *Adapter, u8 channel);
+
+void PHY_SetSwChnlBWMode8723B(struct adapter *Adapter, u8 channel,
+				enum CHANNEL_WIDTH Bandwidth,
+				u8 Offset40, u8 Offset80);
 
 /*--------------------------Exported Function prototype End---------------------*/
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
