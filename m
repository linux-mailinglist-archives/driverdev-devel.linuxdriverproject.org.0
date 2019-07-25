Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175DC744DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C36A688031;
	Thu, 25 Jul 2019 05:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7lga4oHuEzd; Thu, 25 Jul 2019 05:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 469F5840F8;
	Thu, 25 Jul 2019 05:27:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60F051BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F66286C24
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrnfU9mg3Al6 for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:27:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 44AA186C4A
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:27:04 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id i18so22395456pgl.11
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R4tAF0Qc87Ow4Gy/jHkVbPADBfpgCbZTYjKSmEGWCIs=;
 b=hem43Ok7XHo9CfMhqwV2IkQK0kpwtV07yWoN/a9zZYlt4RncVCRIgDSbiZ/8gSOZd1
 6T7F7cwwDlh+pK3lg8y6t45Y1SN8ueSyI6QdQE3KLp79jbI4elmo8NrYDhztLAZRM8lG
 ec5riqPQoNommlPy0+GEC/adHmkP9zeb0X46iTz2F2wyxdW89QUqfiDgqdlo755+wsSo
 AIvBZ4erlxQDuXJ5h3wsuEyZwA5Kqys/xPlZgLemA7/g6q6TvnFJG+Wqz5hTVf2vcriI
 rz6BdkppHeJw/5MHWMBk9nsCrzF/hdW1RxHTfQnRuJltUWIag5Ybwq6zbgL0h7IVf/cG
 U//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R4tAF0Qc87Ow4Gy/jHkVbPADBfpgCbZTYjKSmEGWCIs=;
 b=JmzSQpfwqU+sZfhCR3qSG0fX5CBE8k35ay+tc0fvDFyLLEhFMA4atjtgVTjRt4BEHu
 GSNAmQGWa9klZqap1jPCUXsV0aGVSQAEEfFEA7WiNr9FShYkbw+n8eV2ytUYvwifG5D6
 PYBNi1XggFkn0+hModzkpWCAZSgUXB+ZoSbes1V2w3BOazWZPv0SsZR3DUzJn5DYJeKa
 6NJxgwsu7XFgVpBF1Mz+vTFJqwzbP0cz2jrnb6bo2PNp9V8CaQh+tpawjl1mi4GAdWee
 9P/TtWd7trXMA4JGNXAtBFg2WkeRtSOM5vTuBs0UxZCQnU+EaT+0uauC9C4LD9jCIwaT
 GU3g==
X-Gm-Message-State: APjAAAUSz/gSC3KS/WJ/YmQeftvBvr5LNkIILUd0YcwDcnM0yxSYSBLl
 +82+g4e5qW19JlkbqfJXfUE=
X-Google-Smtp-Source: APXvYqzD7OiYgTO3Bx7KTpz5QBfyOcvQN48+cNXVu6h7K6O7ttNCGtqSBhhSWjqfMw5q7Wh4M+mYCg==
X-Received: by 2002:a17:90a:710c:: with SMTP id
 h12mr89290240pjk.36.1564032423947; 
 Wed, 24 Jul 2019 22:27:03 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.27.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:27:03 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 3/9] staging: rtl8723bs: hal: Replace function
 PHY_GetTxPowerIndex()
Date: Thu, 25 Jul 2019 10:56:39 +0530
Message-Id: <20190725052645.2372-3-nishkadg.linux@gmail.com>
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

Remove function PHY_GetTxPowerIndex as it does nothing except call
PHY_GetTxPowerIndex_8723B.
Rename PHY_GetTxPowerIndex_8723B to PHY_GetTxPowerIndex to maintain
compatibility with call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c     | 11 -----------
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c    |  2 +-
 drivers/staging/rtl8723bs/include/hal_com_phycfg.h |  9 ---------
 drivers/staging/rtl8723bs/include/hal_phy_cfg.h    |  2 +-
 4 files changed, 2 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 7b1e6c4a2e8d..6539bee9b5ba 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -2040,17 +2040,6 @@ void PHY_SetTxPowerLimit(
 	}
 }
 
-u8 PHY_GetTxPowerIndex(
-	struct adapter *padapter,
-	u8 RFPath,
-	u8 Rate,
-	enum CHANNEL_WIDTH BandWidth,
-	u8 Channel
-)
-{
-	return PHY_GetTxPowerIndex_8723B(padapter, RFPath, Rate, BandWidth, Channel);
-}
-
 void Hal_ChannelPlanToRegulation(struct adapter *Adapter, u16 ChannelPlan)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index b02ff10fedbf..cb3ec085faa5 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -668,7 +668,7 @@ void PHY_SetTxPowerIndex(
 	}
 }
 
-u8 PHY_GetTxPowerIndex_8723B(
+u8 PHY_GetTxPowerIndex(
 	struct adapter *padapter,
 	u8 RFPath,
 	u8 Rate,
diff --git a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
index f3521b7ae295..9167f1e7827f 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
@@ -213,15 +213,6 @@ PHY_GetTxPowerTrackingOffset(
 	u8 	RFPath
 	);
 
-u8
-PHY_GetTxPowerIndex(
-struct adapter *		padapter,
-u8 			RFPath,
-u8 			Rate,
-enum CHANNEL_WIDTH		BandWidth,
-u8 			Channel
-	);
-
 void
 Hal_ChannelPlanToRegulation(
 struct adapter *	Adapter,
diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 1ebd7094705f..b40868b2e76f 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -73,7 +73,7 @@ u8 			Rate
 	);
 
 u8
-PHY_GetTxPowerIndex_8723B(
+PHY_GetTxPowerIndex(
 struct adapter *		padapter,
 u8 			RFPath,
 u8 			Rate,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
