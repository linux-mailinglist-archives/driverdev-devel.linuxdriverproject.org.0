Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F1C338749
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:28:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B94466FA78;
	Fri, 12 Mar 2021 08:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l-2EGCa-onMe; Fri, 12 Mar 2021 08:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03B136F9BA;
	Fri, 12 Mar 2021 08:28:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A14831BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90F9C4150B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8cPgTSTiMuJ6 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB72D40025
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:53 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 r15-20020a05600c35cfb029010e639ca09eso15251691wmq.1
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4ab4tUe5QfzO2GzkXLEKIi8nTr4LiCNUQDMsgplVq14=;
 b=K821sRgZeMl28XGjDOW1OhF9nUHEKqFZN50WIubDXpBphyReQ78K6o4A1bNQTPyUNB
 bIEUHJYP+faBiHrEw+EGbNHmKAh5OpC/tIy32wg27224TUjqevZrEHFVzZ48n+iZdC8j
 CrVncp7j+rcqpOUfgmwxM9p9nRYcTC+2/HcDMlJDrjRDbKbiIx+NTlaip9UYmcJMXzbB
 xh21PpHTCwKM/HOlk7LemRAtWvX0/lTJew9/KcqfM7cMjP40YxmC/WPg9T/5EcitoXfa
 9FD49lg19eGnMB94w+mgALlGZDuS4E6NY5gY4YXZYTDBT7hPovC+K0E9wPE9dMRn/vTT
 cSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ab4tUe5QfzO2GzkXLEKIi8nTr4LiCNUQDMsgplVq14=;
 b=CUhioQNmleVf0K4sW4XWNBI7b+JpMIfxNzeiGJ4j8FB46vuR7iYIXu8Gm3djYHuD6Y
 KBtDayooLG3sQEVb7GgNF4NF5MAAGna3dVvBx7q3FYx/PyDj3DJ1Oso63+Gl1s5o/pCU
 xO9tdMy1oCWCMrasnYnQAAJaLpniUv+HR1S51FrsxyGZsRnVjOaGUv0qBhon3SgGYnjz
 ckrJCfAGl0sWasrsY7jnvd0DLd7s03Xi111bFF7IrvGGYLHuyrIQ6AHslzJ1C9C39916
 B9V0lUQgCe6KFoP7i2jBItOnbNfPfIC9LOEp+4r6SYA5o4FfCCaYoj9/FlRr+E18Wte1
 XkXQ==
X-Gm-Message-State: AOAM533Num68WSFvRpCgMoac3DAK204qrD0BgU8bPG6lVkDOVNjYZO/8
 Eo4RNTrrN4fGJnLU++9flxI=
X-Google-Smtp-Source: ABdhPJwmifbEls92y7sKPUlufB66386vQ73CIhkv3AZSn9rNu4yR6PEMqvZqDtofeol6US57dz0dnQ==
X-Received: by 2002:a1c:7fd8:: with SMTP id a207mr11644351wmd.40.1615537612075; 
 Fri, 12 Mar 2021 00:26:52 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:51 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 08/33] staging: rtl8723bs: remove typedefs in odm_HWConfig.h
Date: Fri, 12 Mar 2021 09:26:13 +0100
Message-Id: <20210312082638.25512-9-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #33: FILE: hal/odm_HWConfig.h:33:
    +typedef struct _Phy_Rx_AGC_Info {

    WARNING: do not add new typedefs
    #41: FILE: hal/odm_HWConfig.h:41:
    +typedef struct _Phy_Status_Rpt_8192cd {

    WARNING: do not add new typedefs
    #80: FILE: hal/odm_HWConfig.h:80:
    +typedef struct _Phy_Status_Rpt_8812 {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c |  2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h | 14 +++++++-------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 308f65ee7c99..41c33ae96c5a 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -90,7 +90,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 	bool isCCKrate = false;
 	u8 rf_rx_num = 0;
 	u8 LNA_idx, VGA_idx;
-	PPHY_STATUS_RPT_8192CD_T pPhyStaRpt = (PPHY_STATUS_RPT_8192CD_T)pPhyStatus;
+	struct PHY_STATUS_RPT_8192CD_T * pPhyStaRpt = (struct PHY_STATUS_RPT_8192CD_T *)pPhyStatus;
 
 	isCCKrate = pPktinfo->data_rate <= DESC_RATE11M;
 	pPhyInfo->rx_mimo_signal_quality[ODM_RF_PATH_A] = -1;
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
index 2e2ffbf31f89..cd8c51e6b4b5 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
@@ -30,16 +30,16 @@
 /*  structure and define */
 /*  */
 
-typedef struct _Phy_Rx_AGC_Info {
+struct PHY_RX_AGC_INFO_T {
 	#if (ODM_ENDIAN_TYPE == ODM_ENDIAN_LITTLE)
 		u8 gain:7, trsw:1;
 	#else
 		u8 trsw:1, gain:7;
 	#endif
-} PHY_RX_AGC_INFO_T, *pPHY_RX_AGC_INFO_T;
+};
 
-typedef struct _Phy_Status_Rpt_8192cd {
-	PHY_RX_AGC_INFO_T path_agc[2];
+struct PHY_STATUS_RPT_8192CD_T {
+	struct PHY_RX_AGC_INFO_T path_agc[2];
 	u8 ch_corr[2];
 	u8 cck_sig_qual_ofdm_pwdb_all;
 	u8 cck_agc_rpt_ofdm_cfosho_a;
@@ -74,10 +74,10 @@ typedef struct _Phy_Status_Rpt_8192cd {
 	u8 sgi_en:1;
 	u8 antsel_rx_keep_2:1;	/* ex_intf_flg:1; */
 #endif
-} PHY_STATUS_RPT_8192CD_T, *PPHY_STATUS_RPT_8192CD_T;
+};
 
 
-typedef struct _Phy_Status_Rpt_8812 {
+struct PHY_STATUS_RPT_8812_T {
 	/* 2012.05.24 LukeLee: This structure should take big/little endian in consideration later..... */
 
 	/* DWORD 0 */
@@ -118,7 +118,7 @@ typedef struct _Phy_Status_Rpt_8812 {
 	u8 antidx_anta:3;
 	u8 antidx_antb:3;
 	u8 resvd_1:2;
-} PHY_STATUS_RPT_8812_T, *PPHY_STATUS_RPT_8812_T;
+};
 
 
 void ODM_PhyStatusQuery(
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
