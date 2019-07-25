Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0525A744DE
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0CA886C18;
	Thu, 25 Jul 2019 05:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKqn1PCDKaio; Thu, 25 Jul 2019 05:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3069486C24;
	Thu, 25 Jul 2019 05:27:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A2591BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 63C5D86C18
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0saGig67HgxJ for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:27:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C521E816CE
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:27:00 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id f17so18119286pfn.6
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NTGxQQoYE7ljzCJwqW1c7gtcpgaeXQc9Sbv7vWrPjws=;
 b=JdXhMWTnWHNFiM4ACHF7pr9HPRh7oX1bLcLaiMsYxLOJJpu3dXUd7yOzyu3ckpv/Ya
 JeKYlsWtieslBcLMJSd7g4IxBrjMQv9DJnqIHj+4Dq25t0LdclP61O75tiS+vzfhqnE7
 ckF6THVjC5AV+8x33wI2pOuQy8NqEePRsWhS+D+Mc0OCxlN5XpY72nOEz4BjTkbC+s7V
 9EpObTx+XCvOLEQE2JgeushydrsOA+eIILH4F8DFAtd4bL0z/lWt71ufBUx1dI85RPEM
 S8qmGFMY0JsZTVklEDQnTh+mVB1Bq9Nrdr0kkF3QEsWhKeLWYS1ci4du9jAl90Z39hHN
 M+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NTGxQQoYE7ljzCJwqW1c7gtcpgaeXQc9Sbv7vWrPjws=;
 b=if10F0G3Ctq1bNUadwajNfzf20fftjMJcY8PMc1YCg+CFE4yEjTuUvDR9/aOxTiFS0
 YpHm41Wlr0fVgmiOD3BUcrUXPgDS/PAnWA5h6it57wEo8vG6DvEljW8TV/V0zzw5opYP
 s3mMzNLmyrzcE/o7hclhiE1vpz1JxBkNiNvsvJR1lazPxmnC1sO64r2XyCIvA0pxSAHO
 tWUuvcZCm7/rUa2IiXVUEJGeB1cM4Istbm5Z5Ja/pAETWQ98Pj0i+EX3OWWdmxH0t0vN
 HJ2pTfG0Hij/y2WmaE8QiCGce4HWn3wObYz58oE1P7Kxmdln487OwqxWfhha7QcUYRc7
 C1eQ==
X-Gm-Message-State: APjAAAXg5CvfqS4BnvZTQZpKcM+HVSXY6C0WlZ49O0K+0sVDciT0qN5s
 AUwUiPU8+YootVDLKU2mXnk31m0K
X-Google-Smtp-Source: APXvYqx64WeJFF1fRVseH8gPwPhkmhYqTV9SHyYObcaNn/UH8cOVl51V1kqad64W8YgxyVTQJSH8Dw==
X-Received: by 2002:a17:90a:25c8:: with SMTP id
 k66mr91426171pje.129.1564032420404; 
 Wed, 24 Jul 2019 22:27:00 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.26.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:27:00 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 2/9] staging: rtl8723bs: hal: Replace function
 PHY_SetTxPowerIndex()
Date: Thu, 25 Jul 2019 10:56:38 +0530
Message-Id: <20190725052645.2372-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190725052645.2372-1-nishkadg.linux@gmail.com>
References: <20190725052645.2372-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function PHY_SetTxPowerIndex as it does nothing except call
PHY_SetTxPowerIndex_8723B.
Rename PHY_SetTxPowerIndex_8723B to PHY_SetTxPowerIndex to maintain
compatibility with call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c     | 7 -------
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c    | 2 +-
 drivers/staging/rtl8723bs/include/hal_com_phycfg.h | 8 --------
 drivers/staging/rtl8723bs/include/hal_phy_cfg.h    | 2 +-
 4 files changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 336764464e7d..7b1e6c4a2e8d 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -2051,13 +2051,6 @@ u8 PHY_GetTxPowerIndex(
 	return PHY_GetTxPowerIndex_8723B(padapter, RFPath, Rate, BandWidth, Channel);
 }
 
-void PHY_SetTxPowerIndex(
-	struct adapter *padapter, u32 PowerIndex, u8 RFPath, u8 Rate
-)
-{
-	PHY_SetTxPowerIndex_8723B(padapter, PowerIndex, RFPath, Rate);
-}
-
 void Hal_ChannelPlanToRegulation(struct adapter *Adapter, u16 ChannelPlan)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 25c75b977666..b02ff10fedbf 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -585,7 +585,7 @@ int PHY_RFConfig8723B(struct adapter *Adapter)
  *                                                                                    <20120830, Kordan>
  **************************************************************************************************************/
 
-void PHY_SetTxPowerIndex_8723B(
+void PHY_SetTxPowerIndex(
 	struct adapter *Adapter,
 	u32 PowerIndex,
 	u8 RFPath,
diff --git a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
index f841546584a7..f3521b7ae295 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
@@ -222,14 +222,6 @@ enum CHANNEL_WIDTH		BandWidth,
 u8 			Channel
 	);
 
-void
-PHY_SetTxPowerIndex(
-struct adapter *	padapter,
-u32 			PowerIndex,
-u8 		RFPath,
-u8 		Rate
-	);
-
 void
 Hal_ChannelPlanToRegulation(
 struct adapter *	Adapter,
diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 640427f407e3..1ebd7094705f 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -65,7 +65,7 @@ int PHY_RFConfig8723B(struct adapter *Adapter	);
 s32 PHY_MACConfig8723B(struct adapter *padapter);
 
 void
-PHY_SetTxPowerIndex_8723B(
+PHY_SetTxPowerIndex(
 struct adapter *		Adapter,
 u32 				PowerIndex,
 u8 			RFPath,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
