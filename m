Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DBA744E2
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 617612207F;
	Thu, 25 Jul 2019 05:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KYkdyYfERao9; Thu, 25 Jul 2019 05:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5A41220477;
	Thu, 25 Jul 2019 05:27:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 15F401BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 01B5E21FFB
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5DOfpkSU5lDz for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:27:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 670C220477
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:27:11 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t132so22384089pgb.9
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G+0LNxFnofEQJuvYUgCFxuQwnY3oFesHiAlbUwStC/I=;
 b=lw+s4TTp2AJW5fbfdKqzQenWrxtga8Xci+INb8uW/8ulPvpMhGRQOGc6KjbrVaupHa
 7O2r1u5SfzXBejnfIB+ZK6HgsFmY3G3AaMHJRrj5kSkakyU9WxivzzO+fAqYyoByCQVT
 riQHuD++DxYZHDDFSi+69tgUBh9MaM1DjJwwr/+ojmUnUYcPhHRhX3gxBu2yYlJ1pZXF
 4gy5GRQ2TixJGYJq+APisxtYwSL/Y3FxS4qDINSrF4PqXzQgmn5fFPvvdNOxJlCgTTnR
 U9o1Rd5gigviDEba2rwGLiN2C6yCKefI7JeZ6uZVb2ZnDvmtrSDr8ZeRYIxe8dAQNxmJ
 p6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G+0LNxFnofEQJuvYUgCFxuQwnY3oFesHiAlbUwStC/I=;
 b=qf4bBJh619MBnaTnxpWCrG/bRm0nG6sTn9gh8xFeS9ocFU7HAj5VfLrHysw2NHfT1r
 MAMKonaxAInYTHhGC+La/S7IMKfZlfTkKEGMSX4h3DCcKhBqp8esp6FaOXkhQ05NfMi3
 mVl7rc5j8c7FlfjJEArEGc20Mr8u+uAQPjn93bLdx0udMa7YzMuml9TiWqRUEt2pjktb
 DcF6CKetrenulxr7ntC5p5e6hR+bnjmh9RR0qhfnmpyozr8sVKIPofCNe1CiD/o0p30V
 uscnYWea7sjDGuCJg7SxHDPO9qE8OMIlfq+CaRWKLyOXMNuN3tcB0pdQYgbR7vVdAxhy
 Y7zQ==
X-Gm-Message-State: APjAAAVCBH0geoq5bnzCVh4XBttR4kJI7dH2DHWEdWUCVJ67suOKm7g+
 SmbmV/r7u/ymhS0+ZKhvSis/LWlH
X-Google-Smtp-Source: APXvYqxndySdB2WFbOs78RpN6lkLEZNK3czwDnBbWO8T9uPOgFUoQEIE9p5z9MyLQsdJGaCQATC3hw==
X-Received: by 2002:a65:57ca:: with SMTP id q10mr87352932pgr.52.1564032431011; 
 Wed, 24 Jul 2019 22:27:11 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.27.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:27:10 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 6/9] staging: rtl8723bs: Replace function
 beacon_timing_control()
Date: Thu, 25 Jul 2019 10:56:42 +0530
Message-Id: <20190725052645.2372-6-nishkadg.linux@gmail.com>
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

Remove function beacon_timing_control as it does nothing except call
rtw_hal_bcn_related_reg_setting.
Rename rtw_hal_bcn_related_reg_setting to beacon_timing_control to
maintain compatibility with call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c   | 5 -----
 drivers/staging/rtl8723bs/hal/hal_intf.c         | 2 +-
 drivers/staging/rtl8723bs/include/hal_intf.h     | 2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
 4 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 76c50377f0fe..d78fbbc98fa2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1996,11 +1996,6 @@ void adaptive_early_32k(struct mlme_ext_priv *pmlmeext, u8 *pframe, uint len)
 	}
 }
 
-void beacon_timing_control(struct adapter *padapter)
-{
-	rtw_hal_bcn_related_reg_setting(padapter);
-}
-
 void rtw_alloc_macid(struct adapter *padapter, struct sta_info *psta)
 {
 	int i;
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index acb25978a46c..7d8f21f32fb9 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -369,7 +369,7 @@ void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
 	}
 }
 
-void rtw_hal_bcn_related_reg_setting(struct adapter *padapter)
+void beacon_timing_control(struct adapter *padapter)
 {
 	if (padapter->HalFunc.SetBeaconRelatedRegistersHandler)
 		padapter->HalFunc.SetBeaconRelatedRegistersHandler(padapter);
diff --git a/drivers/staging/rtl8723bs/include/hal_intf.h b/drivers/staging/rtl8723bs/include/hal_intf.h
index 3a0c3d079d50..24926ebaf950 100644
--- a/drivers/staging/rtl8723bs/include/hal_intf.h
+++ b/drivers/staging/rtl8723bs/include/hal_intf.h
@@ -362,7 +362,7 @@ void rtw_hal_add_ra_tid(struct adapter *padapter, u32 bitmap, u8 *arg, u8 rssi_l
 void rtw_hal_start_thread(struct adapter *padapter);
 void rtw_hal_stop_thread(struct adapter *padapter);
 
-void rtw_hal_bcn_related_reg_setting(struct adapter *padapter);
+void beacon_timing_control(struct adapter *padapter);
 
 u32 rtw_hal_read_bbreg(struct adapter *padapter, u32 RegAddr, u32 BitMask);
 void rtw_hal_write_bbreg(struct adapter *padapter, u32 RegAddr, u32 BitMask, u32 Data);
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 70cd8c0e3641..fd3cf955c9f8 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -650,7 +650,6 @@ void report_del_sta_event(struct adapter *padapter, unsigned char* MacAddr, unsi
 void report_add_sta_event(struct adapter *padapter, unsigned char* MacAddr, int cam_idx);
 void report_wmm_edca_update(struct adapter *padapter);
 
-void beacon_timing_control(struct adapter *padapter);
 u8 chk_bmc_sleepq_cmd(struct adapter *padapter);
 extern u8 set_tx_beacon_cmd(struct adapter *padapter);
 unsigned int setup_beacon_frame(struct adapter *padapter, unsigned char *beacon_frame);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
