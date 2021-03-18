Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE3B3408DA
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:28:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67D556FAD0;
	Thu, 18 Mar 2021 15:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AionH8q22QFQ; Thu, 18 Mar 2021 15:28:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA7C16064D;
	Thu, 18 Mar 2021 15:28:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CACE1BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B72E6FA27
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHrZmLmyxsI9 for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 610246064D
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:03 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id e9so5973191wrw.10
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gD0XPk1OJXjVtF656u9g3SevBYs7zy6UJ7aTHOt1giA=;
 b=mzR2Gk7t2RJfJIOCdVFxQFsgAu7/0IYBiP2Gk56zJEgwqToXIqAzb5NLS2Q+OezgBh
 VD0KHwaZ80WPzvYtBrUdjv+GjsPo2qdSHr1h+laGeZrysTqqnyUymAQP7QzPIdZNNeBn
 +wc1dVl/uO5LX54q8Lvrw4vkVR2B6sBZfS0yaFB1PlgGjtHe5+H4Mvfen2+TSmytxpKx
 91FSzGDmRGdLybM6IaQfnzokPzzXzy2ee/n5xjqBUCDKbaveZO+g666tgk/wazrbJZv1
 QJHXmkCUNKeZkiEHBfkGiddX8awniFO1B+JzEaV3ISQv8mXsLutUmkHlvlqqESCnxiNn
 dEeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gD0XPk1OJXjVtF656u9g3SevBYs7zy6UJ7aTHOt1giA=;
 b=cwqI+f6wABxFoNDIHkkWFBtlNI6mBrV6Vg/leV2t4NROEN43w3FIwQjSIeSAK81LNw
 qqP2GGnVx92osHPObXSCU3d7WHoAU/1AbHBEbdNxnYyvvvVvim9R2kpTpqsEa0lNQT6u
 1/G+kOR/sYaH6YoFWq/Wc6q/1ufAQnZqn2O5WiZ1TPcUX+HyXuASi5Nrk25TyNC1IeF6
 KSMQmfAFlR4L5zoylXbA4Ljfgh9rN67QgGhKfxFpxYUC55NSFkotrqxJyddEixGWGwpy
 HNUiUoOtWYInzveeBQtcuG6LY0YR3GanUwnBVctLFftTj9GnjuBOPNmh0FMG6lBpiWUo
 vwsA==
X-Gm-Message-State: AOAM531+/on/nvRZNH3IBVjFmLyCfYm5oHPxPBsVC/XH9aOFGn3nsW1D
 tfAwd3zhjr0rgg4D9h8xxO44P6bw1il8IQ==
X-Google-Smtp-Source: ABdhPJz56A48NXwgZLp+Cg1NMQH0ToB1PEt6tRHWGGHAHhPhwwKAa2IRLVzF6ufa88+GBr5T3E9erg==
X-Received: by 2002:adf:e5c8:: with SMTP id a8mr10542345wrn.352.1616081221744; 
 Thu, 18 Mar 2021 08:27:01 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id z7sm3494135wrt.70.2021.03.18.08.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:01 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/15] staging: rtl8723bs: remove unnecessary logging in
 hal/hal_com_phycfg.c
Date: Thu, 18 Mar 2021 16:26:02 +0100
Message-Id: <20210318152610.16758-8-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
201: FILE: drivers/staging/rtl8723bs/hal/hal_com_phycfg.c:201:
+	/* DBG_871X("===>%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
265: FILE: drivers/staging/rtl8723bs/hal/hal_com_phycfg.c:265:
+	/* DBG_871X("<===%s\n", __func__); */

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 7405f9229117..20d81198f316 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -198,8 +198,6 @@ struct adapter *padapter
 {
 	u8 path, base;
 
-	/* DBG_871X("===>%s\n", __func__); */
-
 	for (path = ODM_RF_PATH_A; path <= ODM_RF_PATH_B; ++path) {
 		base = PHY_GetTxPowerByRate(padapter, BAND_ON_2_4G, path, RF_1TX, MGN_11M);
 		phy_SetTxPowerByRateBase(padapter, BAND_ON_2_4G, path, CCK, RF_1TX, base);
@@ -261,8 +259,6 @@ struct adapter *padapter
 		phy_SetTxPowerByRateBase(padapter, BAND_ON_5G, path, VHT_3SSMCS0_3SSMCS9, RF_3TX, base);
 		/* DBG_871X("Power index base of 5G path %d 3Tx VHT3SS = > 0x%x\n", path, base); */
 	}
-
-	/* DBG_871X("<===%s\n", __func__); */
 }
 
 u8 PHY_GetRateSectionIndexOfTxPowerByRate(
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
