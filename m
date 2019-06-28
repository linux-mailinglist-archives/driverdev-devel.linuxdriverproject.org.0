Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03065598E9
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8694822785;
	Fri, 28 Jun 2019 10:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ne+8K9idtC+d; Fri, 28 Jun 2019 10:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 47E1D22744;
	Fri, 28 Jun 2019 10:59:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E8621BF20B
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3B8FD88183
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ct5spZIL0FCc for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:59:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C38CA87D3D
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:59:09 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id cl9so3040256plb.10
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oE6BIfDrXuashT2ihVbvN26tfloce8YhbSDGnEBQAxM=;
 b=pZrma2/CPbNAW6QXJNof4rDW5M8+GCYNLU3q4rYenTHxHXotdbXFHShB6iLILypjIy
 jprAWQWJPMQ9j/CUosCq1Ipy+mU7j6zYRm3qDf6rcqOiA6gVS/EEWZoi7PcUb2RNp6IA
 vxB6ZHMcczpzpxpV/ku5Q/R/FfG3L4RYJ0WUm0oX+Fcwc0xLsKl1URcVzP96xm4cFUTY
 i5Us1BNZLcWx1o7wRWWUzJty8WyiGGo0AEqzBZbps6ON4ceZga1/IFh/g/16qoAhiWBF
 pxVcViRS9yDd1YNA0sasUjRccJOeYUKBpf7SWfOVvFiMwD8SPRjNabo9KAR2Rwj1xWVy
 DKhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oE6BIfDrXuashT2ihVbvN26tfloce8YhbSDGnEBQAxM=;
 b=QjVue6OB609WEO6dBPmEH87otDs10g2u87FK5nNwvo6b/BFu2+3x9gUWSanhmmlo2O
 8oAF+JUWPx989ecTiMOXz7w8cggZzRZGpj+l5qONE5X/xxz7W7mdeA48VkVsWRy7BnDB
 Qamgm6CBXc+zzbtC0IF3Ae2582Ia73iXPU3u+hIku4NmuFPtQ3/NduZiyX3F0mtcx2oH
 hl/YpRTtDvCMDPzoIOlE645mjsi8OjnPJtD4zIRAVXYeF6NGZj4aHQZKts5tx3SM7xE1
 D52G0JRIlXb7Am6ZMLG+LwCVq7KCvWYHC0/lOAJ7CSjY03ya9awbIuDKxiJt0FhhZxXD
 md/Q==
X-Gm-Message-State: APjAAAWEwyR2tY1rK25RqPxEe9fKycSUxhMt8PuhCmcr7aykOnoy7AEn
 Y/VbZ0yiDK2HEvr2s0dflBw=
X-Google-Smtp-Source: APXvYqyWA4O6CQQjTcOwROfUD2uNmtiBYME/5NE3peUNgNhqsBHRWZfLQw3nyJDQlDguAgG6l/53YQ==
X-Received: by 2002:a17:902:b187:: with SMTP id
 s7mr10690358plr.309.1561719547920; 
 Fri, 28 Jun 2019 03:59:07 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.59.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:59:07 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 09/10] staging: rtl8723bs: Remove rtw_hal_networktype_to_raid()
Date: Fri, 28 Jun 2019 16:28:34 +0530
Message-Id: <20190628105835.6931-9-nishkadg.linux@gmail.com>
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

Change call sites of rtw_hal_networktype_to_raid to instead call
networktype_to_raid_ex as rtw_hal_networktype_to_raid does nothing
except call networktype_to_raid_ex.
Remove now-unused function rtw_hal_networktype_to_raid.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 drivers/staging/rtl8723bs/hal/hal_com.c       | 6 ------
 drivers/staging/rtl8723bs/include/hal_com.h   | 1 -
 5 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index df055b8652e0..7bd5c61b055c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -443,7 +443,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 	}
 
 	psta->wireless_mode = sta_band;
-	psta->raid = rtw_hal_networktype_to_raid(padapter, psta);
+	psta->raid = networktype_to_raid_ex(padapter, psta);
 
 	if (psta->aid < NUM_STA) {
 		u8 arg[4] = {0};
@@ -512,7 +512,7 @@ void update_bmc_sta(struct adapter *padapter)
 		rtw_hal_update_sta_rate_mask(padapter, psta);
 		tx_ra_bitmap = psta->ra_mask;
 
-		psta->raid = rtw_hal_networktype_to_raid(padapter, psta);
+		psta->raid = networktype_to_raid_ex(padapter, psta);
 
 		/* ap mode */
 		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 82ae573925fc..542a5fe33f1d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -1186,7 +1186,7 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 		rtw_hal_update_sta_rate_mask(padapter, psta);
 
 		psta->wireless_mode = pmlmeext->cur_wireless_mode;
-		psta->raid = rtw_hal_networktype_to_raid(padapter, psta);
+		psta->raid = networktype_to_raid_ex(padapter, psta);
 
 
 		/* sta mode */
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 1f09e668c672..69b479ea5872 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -5563,7 +5563,7 @@ void mlmeext_sta_add_event_callback(struct adapter *padapter, struct sta_info *p
 
 	/*  ToDo: HT for Ad-hoc */
 	psta->wireless_mode = rtw_check_network_type(psta->bssrateset, psta->bssratelen, pmlmeext->cur_channel);
-	psta->raid = rtw_hal_networktype_to_raid(padapter, psta);
+	psta->raid = networktype_to_raid_ex(padapter, psta);
 
 	/* rate radaptive */
 	Update_RA_Entry(padapter, psta);
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 2763479f7601..638b12ae6ee9 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -963,12 +963,6 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf)
 	return ret;
 }
 
-
-u8  rtw_hal_networktype_to_raid(struct adapter *adapter, struct sta_info *psta)
-{
-	return networktype_to_raid_ex(adapter, psta);
-}
-
 u8 rtw_get_mgntframe_raid(struct adapter *adapter, unsigned char network_type)
 {
 
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index d1c5b3193043..f5c3ce5da70c 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -232,7 +232,6 @@ void rtw_init_hal_com_default_value(struct adapter * Adapter);
 void c2h_evt_clear(struct adapter *adapter);
 s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf);
 
-u8  rtw_hal_networktype_to_raid(struct adapter *adapter, struct sta_info *psta);
 u8 rtw_get_mgntframe_raid(struct adapter *adapter, unsigned char network_type);
 void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *psta);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
