Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3CA9D5C3
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 20:22:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9A4387D35;
	Mon, 26 Aug 2019 18:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3IDJzyXjTm6Y; Mon, 26 Aug 2019 18:22:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 461D58792F;
	Mon, 26 Aug 2019 18:22:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 429031BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F9BD2264C
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 18:22:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 22HHOXJ1jAYv for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 18:22:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4CE332051D
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 18:22:52 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y9so11946062pfl.4
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 11:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=SHKxt76Ys4Al3k25NYReasfhwoBsLDpFKOQv7FETppc=;
 b=J90pB2L7Yv0bKP6PUcIduYUI6TGPKrlfsDf8dMXHR9k6tuZTfwyMTPSI4B3juEt53J
 YHy5jtMNDo4FFjfT4k5WIiAqtT/oKOVxT3mZcDEEJp8Ao9vcXFK5etj4tpduWRayyXRf
 SrUhk90E1yUsI6y4gLDZmnfDztepWm1+lHpDZCZe2YNQXNE8IKcPdolpS3wuws5taymq
 9xubJ1QvD1VlYr5BqEcP1d9xEvBc67hCiFtFgrRtxjaGPO5K4opVNvEHr1kFEEbO0LL1
 r5Is9/u+B97+oCbOdjvfdc4qLr9yMlwMM8tzUrrlfX2qiY/blNOD8/NurbsXmioCglf+
 Po9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SHKxt76Ys4Al3k25NYReasfhwoBsLDpFKOQv7FETppc=;
 b=NO35ZS2oodePaMLddpEN//D+OXj04JY9qS2EkBIf2D7RfpWJgRNlmuUKMp+j187g24
 5nv6TK9liKwRHRRfpeWI6Tg4Tlx/rCUjaECxIc/LnzPNt0uf7OOSmQ6v1MgX0xkm0MhA
 IB6BiY4XoRTdoB8gdkpKCNUve3t4cFKhdsLiqJntCxjExqtoW5CHV1a75M8lTQ7ElFxp
 8ledYs526icF0zry/b1nfUta7aF16tqod7bcpagb28kYtND3U81mJ6niPZxPTWEiAEL+
 8k8i1zfLTD6oqctKE1kPPb/opQvrm0e3iccos6p8JXApiucAZBX03gCWWnHPA10PEGvJ
 twcw==
X-Gm-Message-State: APjAAAXYkRlUGBfw7kS+hqrDJarTxBQ+hE1WkIZCaIZBxXmiLWf9qRcs
 9BHJCsdYPHgP72pLQ0njjPE=
X-Google-Smtp-Source: APXvYqy19KPrFyLFqlyUeyqBeL/L5eZezukyKF1cr0F6vyn6I33u3q03+SSmA2eakOUCZSkexAusaw==
X-Received: by 2002:a17:90a:e28a:: with SMTP id
 d10mr21532335pjz.107.1566843771919; 
 Mon, 26 Aug 2019 11:22:51 -0700 (PDT)
Received: from localhost.localdomain ([157.41.32.240])
 by smtp.gmail.com with ESMTPSA id x16sm15021360pff.99.2019.08.26.11.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:22:51 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] staging: rtl8192u: Add or remove blank lines as
 required
Date: Mon, 26 Aug 2019 23:52:27 +0530
Message-Id: <20190826182227.30738-1-sylphrenadin@gmail.com>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the file r8190_rtl8256.c to avoid the following
checkpatch.pl warnings:
	CHECK: Blank lines aren't necessary before a close brace '}'
	CHECK: Please use a blank line after function/struct/union/enum declarations
	CHECK: Please don't use multiple blank line

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
Changes since v1:
- Split the commit into two patches
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 7c7f8247b27a..b169460b9f26 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -79,10 +79,10 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
 		default:
 				RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown Bandwidth: %#X\n", Bandwidth);
 				break;
-
 		}
 	}
 }
+
 /*--------------------------------------------------------------------------
  * Overview:    Interface to config 8256
  * Input:       struct net_device*	dev
@@ -101,6 +101,7 @@ void phy_rf8256_config(struct net_device *dev)
 	/* Config BB and RF */
 	phy_rf8256_config_para_file(dev);
 }
+
 /*--------------------------------------------------------------------------
  * Overview:    Interface to config 8256
  * Input:       struct net_device*	dev
@@ -215,7 +216,6 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 			RT_TRACE(COMP_ERR, "phy_rf8256_config_para_file():Radio[%d] Fail!!", eRFPath);
 			goto phy_RF8256_Config_ParaFile_Fail;
 		}
-
 	}
 
 	RT_TRACE(COMP_PHY, "PHY Initialization Success\n");
@@ -225,11 +225,11 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 	RT_TRACE(COMP_ERR, "PHY Initialization failed\n");
 }
 
-
 void phy_set_rf8256_cck_tx_power(struct net_device *dev, u8 powerlevel)
 {
 	u32	TxAGC = 0;
 	struct r8192_priv *priv = ieee80211_priv(dev);
+
 	TxAGC = powerlevel;
 
 	if (priv->bDynamicTxLowPower) {
@@ -244,7 +244,6 @@ void phy_set_rf8256_cck_tx_power(struct net_device *dev, u8 powerlevel)
 	rtl8192_setBBreg(dev, rTxAGC_CCK_Mcs32, bTxAGCRateCCK, TxAGC);
 }
 
-
 void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -293,5 +292,4 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 		rtl8192_setBBreg(dev, RegOffset[index], 0x7f7f7f7f, writeVal);
 	}
 	return;
-
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
