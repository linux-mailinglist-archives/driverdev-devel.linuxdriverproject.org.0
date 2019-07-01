Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D027E5B663
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52BC185D68;
	Mon,  1 Jul 2019 08:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6GjAOOJSKOt7; Mon,  1 Jul 2019 08:11:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53317853D3;
	Mon,  1 Jul 2019 08:11:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 098E61BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 070D6875D8
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OrEIV4mfAvbe for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9142A875BE
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:21 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id s27so5505247pgl.2
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b+LN2Jl7by93Z0rXqJ6vtBVWxvpZwWWrxRLLcu/1GEI=;
 b=qxVuQ7TIUiaM/gGfNA1ePpwgeeNuqOt1jYMKpSmu4RJfnIA2ZO+/YDkzd10gCIWOWJ
 6woHpkaluS0EkoAsQkZfBoZH+lyirit5PHfhxWTNFuE5QkwVBngNKWewRkrWP/dtIYoE
 K92PB7On02ucl3EoUIuY3uqRIcyz0B2Ut9UHiimlDTrLN7d6k36pxiUapbvE3Oc5xkTR
 z8YTc980E4a6Bc0O7OGKDELclT6TxtFHGotCevXvedIHQZSnkKv2aSz7hSeS0+dK8zeV
 ze9lUqdwFKQCAOFnjDzJdFI3tsFMwi1BOb44VN+acll1FSjmCtoiV0+seBKSYJPF6Ly4
 jyrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b+LN2Jl7by93Z0rXqJ6vtBVWxvpZwWWrxRLLcu/1GEI=;
 b=i9UrKgkBAzwxu5tcDQp32E4iEY79gMbIi2T9BiO1Rk0NLT0EI6RcOGVvrmLfba/COD
 hHnh6Kn2jq+q/2EmJmWlcvX/7J+9B73Yn40Mw/Q6vaHguybizmQtaKjbd1vEuCrj96HT
 JdsQe9yA4L69z+QAYtPQxGbCTd2zTd4EZyz5CbZnVIJEXsU942z8eORDXQVUwE/eh6aH
 fZ+RPDsDC/JH/5nO+OZ92GqSjeCSZANzPkc3vIC66HEFtCcFLMRaY27ZIr3t0mDoLaIN
 HFWzo5IaU/DiILnM3j0FKcgB/O1spwNIswscgTt822b5L6puZzf4mZdDN5M9p9Tc8KDX
 lhsQ==
X-Gm-Message-State: APjAAAXQCNE/Ufs/Twit/j3ynqVZdgTsHM7GrqxbskqBA/iRCXYS8nd0
 zwqgavJIiQbvKQgPPKPrSqW1D1pq
X-Google-Smtp-Source: APXvYqy2o4jvBIvVPEyWCAwpdwnS49zeEFbTVmPoRHB/ndY13ParcXTV6Jfr6JOuWo2/4ZOCBUpLeQ==
X-Received: by 2002:a63:e24c:: with SMTP id y12mr20814898pgj.81.1561962201261; 
 Sun, 30 Jun 2019 23:23:21 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:20 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 03/10] staging: rtl8723bs: Remove rtw_btcoex_HAL_Initialize()
Date: Mon,  1 Jul 2019 11:52:57 +0530
Message-Id: <20190701062304.2440-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701062304.2440-1-nishkadg.linux@gmail.com>
References: <20190701062304.2440-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_HAL_Initialize as it does nothing except call
hal_btcoex_InitHwConfig.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/hal/sdio_halinit.c   | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index b9b032816866..ae342014f157 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -9,11 +9,6 @@
 #include <rtw_btcoex.h>
 #include <hal_btcoex.h>
 
-void rtw_btcoex_HAL_Initialize(struct adapter *padapter, u8 bWifiOnly)
-{
-	hal_btcoex_InitHwConfig(padapter, bWifiOnly);
-}
-
 void rtw_btcoex_IpsNotify(struct adapter *padapter, u8 type)
 {
 	hal_btcoex_IpsNotify(padapter, type);
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index c6260a71a533..364c1ced82ef 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -766,7 +766,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 
 		rtw_hal_set_hwreg(padapter, HW_VAR_APFM_ON_MAC, &bMacPwrCtrlOn);
 
-		rtw_btcoex_HAL_Initialize(padapter, false);
+		hal_btcoex_InitHwConfig(padapter, false);
 
 		return _SUCCESS;
 	}
@@ -1011,7 +1011,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	}
 
 	/*  Init BT hw config. */
-	rtw_btcoex_HAL_Initialize(padapter, false);
+	hal_btcoex_InitHwConfig(padapter, false);
 
 	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("-%s\n", __func__));
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 0877a6863f50..1f4fc851effb 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -15,7 +15,6 @@
 #define	PACKET_ARP				2
 #define	PACKET_EAPOL			3
 
-void rtw_btcoex_HAL_Initialize(struct adapter *padapter, u8 bWifiOnly);
 void rtw_btcoex_IpsNotify(struct adapter *, u8 type);
 void rtw_btcoex_LpsNotify(struct adapter *, u8 type);
 void rtw_btcoex_ScanNotify(struct adapter *, u8 type);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
