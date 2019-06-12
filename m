Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B19B432D9
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7643881A8;
	Thu, 13 Jun 2019 05:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lm+X1je3P5j; Thu, 13 Jun 2019 05:42:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58FC087FCF;
	Thu, 13 Jun 2019 05:42:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E8381BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4B7F887FA4
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vwv9fjsGAc0p for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F40BA87E5D
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:27 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 81so11064367pfy.13
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=od4FAH4w5GlchuD8PAy6ywDmMlI7jH54vj2g3Rmu/Gc=;
 b=Q+BNhPcFjtKs5uTKDXDmUqiiF6F/BXB6Tf7+Y3oQofSsrY3IGZYtIQ7z1nvsbhJYjO
 1ThwjIK6dnE8KqiyViVvgRQbb0QYN5RmTYDmDVucZiESKSFCPPY4DxDnkf+veSzWBV1H
 xcTbZ2EHGga0lLZJk21Vj/tAbPrrkjzHdBuZpGiAtB3CkAVRdsHo9nG1HsyuM1JsxUse
 RH1ynt0tSV8xtsbXOYupqHsn4a2Bui5n8Al+TyDlwhmBH38FIcVXkScbdaeRsNMkVetC
 BfnnpSL5LGVSON0IvHYgNpXCPcVMPZa1a9q4nXonD9mDSnJry2N3X8pzuy1hFKrRmW0D
 bGHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=od4FAH4w5GlchuD8PAy6ywDmMlI7jH54vj2g3Rmu/Gc=;
 b=WCUvbgDGhZwNU3HFutYgQGof7uQWLA56VEa5HFucV9gfViPXHi2T9XoPGoeoPLcdQe
 dNylJmGl6UISrz58tbHSuMjF7b6Cdnm1ptgDDRc4hg4jugGoRzzWMGqebjs8Gk6Bz5Kx
 mosHjYvzUls1NpWUjuliqtICtc5bXfee2kz3x4CDYjul3td6O5gNb94WUULfFS/dpOoo
 IlCJ3zorZlhrFd9ZfPBMzQ7nbuIQ5P82+I1ya8wNIhlfiQGYvrayLDvbMVtpvffRlOX9
 /NPX8Rynt+MzZDn6+TD3YRbfqBTmglbbCoXttmN7KlToUe+bwJ4ZdEwwk2tn0JtPWuLa
 oNsw==
X-Gm-Message-State: APjAAAXpXZuaM+Mp6rPKOtKnPqXRkxrdJLzhDDvNs8pn94GTTENIDhIa
 3hqBLn42dGfFNqygDVlSyGMjkSyr
X-Google-Smtp-Source: APXvYqxAKDQ8joirFQu3Iegosp9k+PfJ7I+qdE1osr0De0RrLRZOeVPFBgs0CBn4nPofflhaCA61YQ==
X-Received: by 2002:a62:e801:: with SMTP id c1mr67269756pfi.41.1560404547739; 
 Wed, 12 Jun 2019 22:42:27 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:27 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 11/11] staging: rtl8723bs: Remove rtw_btcoex_Initialize()
Date: Wed, 12 Jun 2019 23:34:39 +0530
Message-Id: <20190612180439.7101-11-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190612180439.7101-1-nishkadg.linux@gmail.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_Initialize as the only thing it does is call
hal_btcoex_Initialize.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 6 ------
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c   | 3 ++-
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 8944db15863d..1f3f8cbb3d66 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -9,12 +9,6 @@
 #include <rtw_btcoex.h>
 #include <hal_btcoex.h>
 
-
-void rtw_btcoex_Initialize(struct adapter *padapter)
-{
-	hal_btcoex_Initialize(padapter);
-}
-
 void rtw_btcoex_PowerOnSetting(struct adapter *padapter)
 {
 	hal_btcoex_PowerOnSetting(padapter);
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 53f49c6b2fcd..03877d854c03 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -15,7 +15,6 @@
 #define	PACKET_ARP				2
 #define	PACKET_EAPOL			3
 
-void rtw_btcoex_Initialize(struct adapter *);
 void rtw_btcoex_PowerOnSetting(struct adapter *padapter);
 void rtw_btcoex_HAL_Initialize(struct adapter *padapter, u8 bWifiOnly);
 void rtw_btcoex_IpsNotify(struct adapter *, u8 type);
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 16245e2ab89b..101a22ff5d13 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -8,6 +8,7 @@
 
 #include <drv_types.h>
 #include <rtw_debug.h>
+#include <hal_btcoex.h>
 #include <linux/jiffies.h>
 
 #ifndef dev_to_sdio_func
@@ -378,7 +379,7 @@ static struct adapter *rtw_sdio_if1_init(struct dvobj_priv *dvobj, const struct
 
 	rtw_hal_chip_configure(padapter);
 
-	rtw_btcoex_Initialize(padapter);
+	hal_btcoex_Initialize(padapter);
 
 	/* 3 6. read efuse/eeprom data */
 	rtw_hal_read_chip_info(padapter);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
