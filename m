Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 455B922DD1A
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 10:02:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8541B8794A;
	Sun, 26 Jul 2020 08:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lDUVKMjZ3sYk; Sun, 26 Jul 2020 08:02:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9130487898;
	Sun, 26 Jul 2020 08:02:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D457F1BF5DD
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 08:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF1B987898
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 08:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0AAWefbJXjiS for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 08:02:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8332987896
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 08:02:46 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id t10so1237966plz.10
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 01:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dYKrfpkuYtuN4Vp3wBicq+wnj7FGd9Dpk+b0emDqktc=;
 b=GKOZq2jvqXpFVrX7fzgIYcV5k+gMS4l2jCKOJkM1TBvU9XYh2sZTr9497nDA6VkdDy
 lPB8S+gttfKfwT/puQwBkmRB5SFr+Jr+juE61S8BqG4b9LkYd29DZCcuUWgYiLD0wSJA
 p6IUdl9E2C8lNrSlEe3038dUFQEq7PlikztdfWq52T61dgTvEhvWxQNQWn02y4JF13PD
 Pzsc8OsqELZezRT0MqhzjsU3L+j6N3KfTxSAxY1AwumNEmgQjEmSPIqAfcuEvqnYKe2T
 54Z9j9NHpGfX/6hBRdamyjg2frMEXrILFIWRz5578d+w64z5GPq+nmnVMdaB4h1BMSAn
 kXTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dYKrfpkuYtuN4Vp3wBicq+wnj7FGd9Dpk+b0emDqktc=;
 b=TqULtUfoTvmMenbQx8kblsDrxwriSPooVjziEeFix92sMaZC6KzOqMGCYpOh5E11+x
 mq9jnfddurEcqJZVhtWhvXdXFIZo1oKjr1NXLQd+7CG9XPVEbnNMcki3ffM8VZz3mQg7
 7b2VTQ+H4VCtv35PdTji1LNrPm1xXvFKLzcLTBecM920qmNlcAXZi5tXzfh1YfPZ0aFF
 F9h4EIUWKEXv9z9O0LJNEDFM4SD3fPW40Umdk6abrp6f/uECafIQitFMDu5JsYh2c4Os
 gekPHjXKZYCe67lQ1Xj3sRxRxlRngDFH2KmKq2ekAqL7N6L+4NMI7LzIkthg9HVAPUYA
 NfIA==
X-Gm-Message-State: AOAM530m0Y9vGSgOpuc6PZG8dZWIPBSMaLltJ96uZwC/6AVxNq606DKK
 TPaR6hXtTONxuLhUXL6sSto=
X-Google-Smtp-Source: ABdhPJxgk0aUpcj/s5echwyaxidiIDyMu+dypbH26R8zqWRkTfkjjahVJiitm2CYLcXq2KK0nbFzsw==
X-Received: by 2002:a17:902:bb82:: with SMTP id
 m2mr14567125pls.61.1595750566008; 
 Sun, 26 Jul 2020 01:02:46 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id b18sm10638648pju.10.2020.07.26.01.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 01:02:45 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: include: Fix coding style errors
Date: Sun, 26 Jul 2020 13:32:15 +0530
Message-Id: <20200726080215.41501-1-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
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

Fixing ERROR: "foo *	bar" should be "foo *bar" in hal_phy_cfg.h
as reported by checkpatch.pl

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 .../staging/rtl8723bs/include/hal_phy_cfg.h    | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 419ddb0733aa..fd5f377bad4f 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -42,7 +42,7 @@ u32 	Data
 
 u32
 PHY_QueryRFReg_8723B(
-struct adapter *		Adapter,
+struct adapter 		*Adapter,
 u8 		eRFPath,
 u32 			RegAddr,
 u32 			BitMask
@@ -50,7 +50,7 @@ u32 			BitMask
 
 void
 PHY_SetRFReg_8723B(
-struct adapter *		Adapter,
+struct adapter 		*Adapter,
 u8 		eRFPath,
 u32 			RegAddr,
 u32 			BitMask,
@@ -66,7 +66,7 @@ s32 PHY_MACConfig8723B(struct adapter *padapter);
 
 void
 PHY_SetTxPowerIndex(
-struct adapter *		Adapter,
+struct adapter 			*Adapter,
 u32 				PowerIndex,
 u8 			RFPath,
 u8 			Rate
@@ -74,7 +74,7 @@ u8 			Rate
 
 u8
 PHY_GetTxPowerIndex(
-struct adapter *		padapter,
+struct adapter 			*padapter,
 u8 			RFPath,
 u8 			Rate,
 enum CHANNEL_WIDTH		BandWidth,
@@ -83,19 +83,19 @@ u8 			Channel
 
 void
 PHY_GetTxPowerLevel8723B(
-struct adapter *	Adapter,
-	s32*			powerlevel
+struct adapter 			*Adapter,
+	s32			*powerlevel
 	);
 
 void
 PHY_SetTxPowerLevel8723B(
-struct adapter *	Adapter,
+struct adapter 		*Adapter,
 u8 	channel
 	);
 
 void
 PHY_SetBWMode8723B(
-struct adapter *			Adapter,
+struct adapter 				*Adapter,
 enum CHANNEL_WIDTH			Bandwidth,	/*  20M or 40M */
 unsigned char 			Offset		/*  Upper, Lower, or Don't care */
 );
@@ -108,7 +108,7 @@ u8 channel
 
 void
 PHY_SetSwChnlBWMode8723B(
-struct adapter *		Adapter,
+struct adapter 		*Adapter,
 u8 			channel,
 enum CHANNEL_WIDTH		Bandwidth,
 u8 			Offset40,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
