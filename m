Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F27B598E3
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9F3E88188;
	Fri, 28 Jun 2019 10:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdjkkDzk5KHh; Fri, 28 Jun 2019 10:58:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D9B6877B1;
	Fri, 28 Jun 2019 10:58:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47E761BF407
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:58:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4573E226CF
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:58:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eh6vy-Wccy0Q for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:58:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id DFC2220457
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:58:55 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w10so2431309pgj.7
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bK7MizbkYQFR8dL7yxDdx3NvbXg+s6BdU05MvgDHUz8=;
 b=cE/XvpBHiS721zVDHIPP0uym4+WyVNobWtz3uYs1H8B7exdh60zXrzBDoXrbA3pZhO
 btSnYqFW8qf4u99EZ/1g6DARuTRZ4R4uLYcp7PXS5UbY0/uYl0LqPdQzbBUPigur7h/Y
 aLb1/Zgt9iScIyetnECPI3vk8vG9/YnCDGpo9t6utVOQF7mbPBdH7TRTCdLjxzm+JhgM
 3ujw02eng1K7w6LZbgHZC3lCluOwrPrONJynlSBGIUWuqI3cnQDl0oPd8mJbe/S1vYN5
 hgvWt3zjuqlpuagzsmv7FUVN6A1WPDYVJVNl+esBSlYk4jAFkmAnrjSH9nZKTr+E/ETt
 LEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bK7MizbkYQFR8dL7yxDdx3NvbXg+s6BdU05MvgDHUz8=;
 b=NdhbV2Dt9MI9rjQIFUWH2AF+D9qNq1dX4muuwzmxnUC8AnAFV6FdDV8c01Wb00qm7I
 iQQ1Wut/G7lz5qoYeFHuKxAk5gl4azPDQ/J6biJi5mEQHtHb8yqhDBaAhb9BbJJ3+RsO
 9EkqFIPhdJlpmJwarQ7lTQQX40Exe7bWA3kCerPBkRF+qSBcw6/y0sW/Knv/l/AwDzfG
 OWSrX2aiq598AfX+rIZiI3MvKPiA591g/K/JbWPcXUrk3YDQXWt3LY1n2tkPwoqhB4/u
 YRF2oA9HfOe4uMFj455iRwj1Sri15F02m1YYrfwGlObdl6MCxOoWqoI/MgWM81xVKXo8
 tAdQ==
X-Gm-Message-State: APjAAAXucQRYuYqWHFkCMTSVRnHa/QkP88VhBFw1Ea++GtM4sXVuVctY
 cHb9cqkeBF4rC/m6X9aXZMc=
X-Google-Smtp-Source: APXvYqx8GwCSsuX3B/q2bNn/zsdaeIAWbezPE23q8axAi4qTfG6it7o5Cg8FbGQ8gBWNRMKbK0hKzw==
X-Received: by 2002:a17:90a:30e4:: with SMTP id
 h91mr11917333pjb.37.1561719535568; 
 Fri, 28 Jun 2019 03:58:55 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.58.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:58:55 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 03/10] staging: rtl8723bs: hal: Remove
 PHY_RFShadowRecorverFlagSetAll()
Date: Fri, 28 Jun 2019 16:28:28 +0530
Message-Id: <20190628105835.6931-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190628105835.6931-1-nishkadg.linux@gmail.com>
References: <20190628105835.6931-1-nishkadg.linux@gmail.com>
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

Remove unused function PHY_RFShadowRecorverFlagSetAll.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_phy.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_phy.c b/drivers/staging/rtl8723bs/hal/hal_phy.c
index 0d21e64b8f04..56ac9aa8a98c 100644
--- a/drivers/staging/rtl8723bs/hal/hal_phy.c
+++ b/drivers/staging/rtl8723bs/hal/hal_phy.c
@@ -179,21 +179,3 @@ void PHY_RFShadowCompareFlagSetAll(IN PADAPTER Adapter)
 	}
 
 }	/* PHY_RFShadowCompareFlagSetAll */
-
-
-void PHY_RFShadowRecorverFlagSetAll(IN PADAPTER Adapter)
-{
-	u8 eRFPath = 0;
-	u32 Offset = 0, maxReg = GET_RF6052_REAL_MAX_REG(Adapter);
-
-	for (eRFPath = 0; eRFPath < RF6052_MAX_PATH; eRFPath++) {
-		for (Offset = 0; Offset < maxReg; Offset++) {
-			/*  2008/11/20 MH For S3S4 test, we only check reg 26/27 now!!!! */
-			if (Offset != 0x26 && Offset != 0x27)
-				PHY_RFShadowRecorverFlagSet(Adapter, eRFPath, Offset, false);
-			else
-				PHY_RFShadowRecorverFlagSet(Adapter, eRFPath, Offset, true);
-		}
-	}
-
-}	/* PHY_RFShadowCompareFlagSetAll */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
