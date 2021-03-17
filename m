Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 901DC33FB1B
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F6614EDF1;
	Wed, 17 Mar 2021 22:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1MI8lWoQ2ZHk; Wed, 17 Mar 2021 22:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27CAF4EDDA;
	Wed, 17 Mar 2021 22:27:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 531CE1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 504E56F998
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wmssHmsnYk9W for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92F1060636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:44 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id bx7so4179409edb.12
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4IJ1oEe5HNAu2Il/1sfaQyoH4jtZOPAA2ZWtllAGIwQ=;
 b=W18n0TSAypKC3NDBlWP74BTWTyjQCnMZ/jx1Xa73iW2ojycXYK7J45gQoUmQ1mBqUR
 8TDQCVaWa32EOKMjnNCdz4tpHtpeX8zucGYX3ovYajYIPvGJBY4R/XlXEYhBpvq+OP+o
 4W0gEDr+GIv55G+zUjFAOGWzwq52rZJflzBdV11u3nDA6WY1GTwM/dFyikTqxz9bdW8o
 iToaTIGUiq64UgbJkox3HxQMJC5o2h2OxK1SksipBAmtHLlOUKbz/ogD4aoAMjf6+rNd
 lUpqm/M+hRiQOLBdxvriQGnHG58gDGu7uRUG8RNQjlZyIK4x+JU4AAHPHwUGEm22D4L4
 pEyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4IJ1oEe5HNAu2Il/1sfaQyoH4jtZOPAA2ZWtllAGIwQ=;
 b=CayFIe5lkPffjTUv/8E/JhueqKzJBctE+4aaxbpofGtrFgeITvkxqOqNgqF29oDPrv
 6cedmzhGkZEiv40vxBtfV9RRKEwxzAYXo1s6nOLJYpWcVVibBC1W6SjlH+4u+Babx1gu
 t6m34Ul7j3yU9jQl2BVFHN4pxmkLMrF8Ad0WLbu8WTcVITAg6s/NdO4iFofzXWQqAvxE
 eT0BFU09zFay+6+DV2ZNviLF3+xQ7BXZIMKX82f89J3ffOOYjIab4HEFCDBvArWResb/
 RPjNy08SJlA5S2dpaCBY6be7tEXHKjqOBaKloUjhpt9vp1cXzGjwjWA6BRJwj3nU0lFR
 cTJA==
X-Gm-Message-State: AOAM531hw6AgciRPiRndBRMCFR0FDhokHNIV62Qzdj40l/x2W7Tk3r3g
 xIlPaMJy8Jr0keqWvTb3OOw=
X-Google-Smtp-Source: ABdhPJw7V1oo3yUievFSqgvs93Je1BuwD8OKDCB96kJ6f9Z/McBJwLzcPOu1a74KhqvRfjIAdyIgtQ==
X-Received: by 2002:a05:6402:d07:: with SMTP id
 eb7mr43561487edb.242.1616019702875; 
 Wed, 17 Mar 2021 15:21:42 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:42 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 33/43] Staging: rtl8723bs: fix names in odm_HWConfig.h
Date: Wed, 17 Mar 2021 23:21:20 +0100
Message-Id: <20210317222130.29528-34-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit converts names of structs / enums
in hal/odm_HWConfig.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 56fd583eb283..47237cd636cf 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -90,7 +90,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 	bool isCCKrate = false;
 	u8 rf_rx_num = 0;
 	u8 LNA_idx, VGA_idx;
-	struct PHY_STATUS_RPT_8192CD_T *pPhyStaRpt = (struct PHY_STATUS_RPT_8192CD_T *)pPhyStatus;
+	struct phy_status_rpt_8192cd_t *pPhyStaRpt = (struct phy_status_rpt_8192cd_t *)pPhyStatus;
 
 	isCCKrate = pPktinfo->data_rate <= DESC_RATE11M;
 	pPhyInfo->rx_mimo_signal_quality[ODM_RF_PATH_A] = -1;
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
index deec2e71bd49..10cd4e8b1c9d 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
@@ -30,7 +30,7 @@
 /*  structure and define */
 /*  */
 
-struct PHY_RX_AGC_INFO_T {
+struct phy_rx_agc_info_t {
 	#if (ODM_ENDIAN_TYPE == ODM_ENDIAN_LITTLE)
 		u8 gain:7, trsw:1;
 	#else
@@ -38,8 +38,8 @@ struct PHY_RX_AGC_INFO_T {
 	#endif
 };
 
-struct PHY_STATUS_RPT_8192CD_T {
-	struct PHY_RX_AGC_INFO_T path_agc[2];
+struct phy_status_rpt_8192cd_t {
+	struct phy_rx_agc_info_t path_agc[2];
 	u8 ch_corr[2];
 	u8 cck_sig_qual_ofdm_pwdb_all;
 	u8 cck_agc_rpt_ofdm_cfosho_a;
@@ -77,7 +77,7 @@ struct PHY_STATUS_RPT_8192CD_T {
 };
 
 
-struct PHY_STATUS_RPT_8812_T {
+struct phy_status_rpt_8812_t {
 	/* 2012.05.24 LukeLee: This structure should take big/little endian in consideration later..... */
 
 	/* DWORD 0 */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
