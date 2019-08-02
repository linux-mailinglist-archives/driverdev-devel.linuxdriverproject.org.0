Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58FE7EC94
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 653EF884A6;
	Fri,  2 Aug 2019 06:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PzoQyntTmNsV; Fri,  2 Aug 2019 06:25:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E72D988427;
	Fri,  2 Aug 2019 06:25:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C5031BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 312B5231E9
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OmNB4fq4V-hx for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:25:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 9575723086
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:25:04 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p184so35473082pfp.7
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Web7OROfv+/0KBRXJSM6EtP0nxkPXpkBAGSRKaKVF+Q=;
 b=m4j6EVz5zN3fAseWZWHLBWFA2rwhkaAcclhZc+PbgXhIowQPbCR7H9HtTPKhWEiKy7
 gipLtzQIKt7g1clTpTKtr90pzESiXZFTtkeiD09yQVXFDuYhBsjLWldcnpgJbRr+CjmX
 Gf/euY6JniAk+nFnXGigoY0O8cT5OF1rLG+HwMda9SreaW+MJUiUVN+x78KuHVWwCcvi
 vYEczsH4c8OyF7/nGd7s5Z2zm+dOOtnwPrqXupVN5RA15s50EBxgsbADXazvwR536zdT
 UyLAhJ3EiODaIkveZGd/O0IByJ5+5W7+NhjaFCDJu7QRWUXFFf3zj8ZQ52nzOztc7P5n
 4htQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Web7OROfv+/0KBRXJSM6EtP0nxkPXpkBAGSRKaKVF+Q=;
 b=MraOg5JGw+jHm4QIX6VDxIWatYX4wSXQOQLeyZlEADZdl27eI1oDJBffwUNWsF7OzP
 JYPBwrqLQD/79hdG9GG7rbBeH9fP49nx/q6oywbnJ9WDfZy1FJuMx1ZtwVqRRWZu0k0S
 9Q1ArR8S+/ywkhdMy9cNDBz4BUufRqtyp7/CFftnROjRCmGxpKw6NbcnuMKn0OUFg6tu
 kdJfHWTLgFZCm99HAgCyg4TkmIjasYL/iNOdchJxplHpKViG5pWb5Ti4yqaPN431uwDB
 G4/VlfulscLhHMwKnB3+UpIB+AOIyMWXuV/x2HoGyhjSvP6S4L1WnXrqp8VhBVLHAVUK
 oTBQ==
X-Gm-Message-State: APjAAAXNbhYM+xx8kYigPuUS8bLX8YtOTrutx22LFhv7BhOqDHI7mUFP
 MgNwKR7KJCBpkbfLS9vLldwt9pqGKZ8=
X-Google-Smtp-Source: APXvYqwjkEFQ194MK3TC4h16WkKRpmDNj4Z6dG1n90jUg0D/0i3/JGChL8BR92d44mw5GiTb7eDcMw==
X-Received: by 2002:a17:90a:bb0c:: with SMTP id
 u12mr2783050pjr.132.1564727104215; 
 Thu, 01 Aug 2019 23:25:04 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id r15sm80249986pfh.121.2019.08.01.23.25.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:25:03 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 4/4] staging: rtl8723bs: Replace hal_btcoex_Initialize()
Date: Fri,  2 Aug 2019 11:54:44 +0530
Message-Id: <20190802062444.30384-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190802062444.30384-1-nishkadg.linux@gmail.com>
References: <20190802062444.30384-1-nishkadg.linux@gmail.com>
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

Remove hal_btcoex_Initialize as all it does is perform a memset and call
EXhalbtcoutsrc_InitlizeVariables.
Rename EXhalbtcoutsrc_InitlizeVariables to hal_btcoex_Initialize and add
the memset of hal_btcoex_Initialize in order to maintain compatibility
with call sites of the latter (EXhalbtcoutsrc is not called anywhere
else except in now-removed old hal_btcoex_Initialize).
Change return type of new hal_btcoex_Initialize from u8 to void and
remove its return statement as the return value of hal_btcoex_Initialize
is never used.
Change the type of function argument at call site to match the function
parameter of new hal_btcoex_Initialize.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h   |  1 -
 drivers/staging/rtl8723bs/hal/hal_btcoex.c     | 16 ++++++----------
 drivers/staging/rtl8723bs/include/hal_btcoex.h |  2 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c   |  2 +-
 4 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
index aad86570b59c..7150d54d49ab 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
@@ -532,7 +532,6 @@ typedef struct _BTC_COEXIST {
 
 extern BTC_COEXIST GLBtCoexist;
 
-u8 EXhalbtcoutsrc_InitlizeVariables(void *Adapter);
 void EXhalbtcoutsrc_PowerOnSetting(PBTC_COEXIST pBtCoexist);
 void EXhalbtcoutsrc_InitHwConfig(PBTC_COEXIST pBtCoexist, u8 bWifiOnly);
 void EXhalbtcoutsrc_InitCoexDm(PBTC_COEXIST pBtCoexist);
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index d2147a65c1cd..19486f0e0ead 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -957,9 +957,13 @@ static u8 EXhalbtcoutsrc_BindBtCoexWithAdapter(void *padapter)
 	return true;
 }
 
-u8 EXhalbtcoutsrc_InitlizeVariables(void *padapter)
+void hal_btcoex_Initialize(void *padapter)
 {
-	PBTC_COEXIST pBtCoexist = &GLBtCoexist;
+	PBTC_COEXIST pBtCoexist;
+
+	memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
+
+	pBtCoexist = &GLBtCoexist;
 
 	/* pBtCoexist->statistics.cntBind++; */
 
@@ -999,8 +1003,6 @@ u8 EXhalbtcoutsrc_InitlizeVariables(void *padapter)
 	GLBtcWiFiInScanState = false;
 
 	GLBtcWiFiInIQKState = false;
-
-	return true;
 }
 
 void EXhalbtcoutsrc_PowerOnSetting(PBTC_COEXIST pBtCoexist)
@@ -1382,12 +1384,6 @@ void hal_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath)
 	EXhalbtcoutsrc_SetSingleAntPath(singleAntPath);
 }
 
-u8 hal_btcoex_Initialize(struct adapter *padapter)
-{
-	memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
-	return EXhalbtcoutsrc_InitlizeVariables((void *)padapter);
-}
-
 void hal_btcoex_PowerOnSetting(struct adapter *padapter)
 {
 	EXhalbtcoutsrc_PowerOnSetting(&GLBtCoexist);
diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index a0b502c34a25..eb03813fdcb9 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -28,7 +28,7 @@ void hal_btcoex_SetChipType(struct adapter *padapter, u8 chipType);
 void hal_btcoex_SetPgAntNum(struct adapter *padapter, u8 antNum);
 void hal_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath);
 
-u8 hal_btcoex_Initialize(struct adapter *padapter);
+void hal_btcoex_Initialize(void *padapter);
 void hal_btcoex_PowerOnSetting(struct adapter *padapter);
 void hal_btcoex_InitHwConfig(struct adapter *padapter, u8 bWifiOnly);
 
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 540a7eed621d..65ffb807eda2 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -371,7 +371,7 @@ static struct adapter *rtw_sdio_if1_init(struct dvobj_priv *dvobj, const struct
 
 	rtw_hal_chip_configure(padapter);
 
-	hal_btcoex_Initialize(padapter);
+	hal_btcoex_Initialize((void *) padapter);
 
 	/* 3 6. read efuse/eeprom data */
 	rtw_hal_read_chip_info(padapter);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
