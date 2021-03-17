Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F058833FB22
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:28:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96EC86FA35;
	Wed, 17 Mar 2021 22:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9LlMRELnmKKa; Wed, 17 Mar 2021 22:28:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDFCF6067F;
	Wed, 17 Mar 2021 22:28:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF9291BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF406430A8
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C50RV5OA3v0V for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F02A14309B
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:48 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id ce10so820508ejb.6
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ZZhBixXl4N7r/onAv0p7gr5truGoEWOXM8xe8bgDTbY=;
 b=YOszNqInMQsK/8FW9RcOtyIXt7FkakFngBRldUREHhK9XS8Epl1OVilhq5bLnmxxYE
 uveF1icBXTj0rHHLHlTdFLQggG8L57eu2ekaDiFoLUZh+dY8yQKJtmkwN3OAKq8NNnoQ
 nVA2tTiQr+8NVbnp+uAghsVkr7tX87a0cqNxlC8D9tHdSkp4ZubSi/2DmnC53usLUqVV
 HXSAYSowp/mu9ymMSqufDoDK7cbgqk321nmi6Mo/WAbYrtFq6WZpG965fykUqJi1SOHN
 okti2WeRV6zQhXhnVph2K0JmGQK2Ms1caHEtBz4Yqsc2mXejHcVhFHdPQ6IMyCompQQq
 QxEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZZhBixXl4N7r/onAv0p7gr5truGoEWOXM8xe8bgDTbY=;
 b=KU8PI8BKfIM/sA0QGIGtmaP9fL6FBT9GM2nxISYgB6zMu2i1GkU1MG+mc9dKe5dEyk
 zwR1ydp2Vv8yve1nsgpsFzXItjXUjNsFlxEOUnXfBF95NBly46q/jU7eImNP+L57MJPR
 KK88sn6FvBA+3NNF7cnnKiGAhHCU9a/9qxuLGgjgnKcraxT4lQtfrWEuve8kIVJ6SEI9
 OgLi9omyM1Ms3FNyYncoSALoruT9TgnmqsNtBK+Bq/0hCPquKCuRQhz+cQ7OohSR0eSh
 vTpDfPja6V15N+YVxN4AuKWWZdo0azSmdXgVNHFuDv1+Qkupm81w+E2jj5XMrslM/axz
 PMDA==
X-Gm-Message-State: AOAM532w6bRyGvtve/JQ+VzJLfbXcKZM6kQ5OYouzOBN9NoDNVGJQj7Q
 sOe5bHGJaS4f5f8F97Wrcco=
X-Google-Smtp-Source: ABdhPJzfUqbeAqSIzZstKRBBrSpqXtZzLmzMgDVq2Cfpc8CIbREPbMNxo30vNTQsS2UjyW9HXtmVIQ==
X-Received: by 2002:a17:907:94c3:: with SMTP id
 dn3mr38016268ejc.280.1616019707204; 
 Wed, 17 Mar 2021 15:21:47 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:47 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 39/43] Staging: rtl8723bs: fix names in HalPhyRf.h
Date: Wed, 17 Mar 2021 23:21:26 +0100
Message-Id: <20210317222130.29528-40-marcocesati@gmail.com>
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
in hal/HalPhyRf.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalPhyRf.c       |  4 ++--
 drivers/staging/rtl8723bs/hal/HalPhyRf.h       | 10 +++++-----
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c |  4 ++--
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h |  4 ++--
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index 08064fd1d941..9599c45997bb 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -23,7 +23,7 @@
 	} while (0)
 
 
-void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct TXPWRTRACK_CFG *pConfig)
+void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct txpwrtrack_cfg *pConfig)
 {
 	ConfigureTxpowerTrack_8723B(pConfig);
 }
@@ -83,7 +83,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 	u8 OFDM_min_index = 0;  /*  OFDM BB Swing should be less than +3.0dB, which is required by Arthur */
 	u8 Indexforchannel = 0; /*  GetRightChnlPlaceforIQK(pHalData->CurrentChannel) */
 
-	struct TXPWRTRACK_CFG c;
+	struct txpwrtrack_cfg c;
 
 
 	/* 4 1. The following TWO tables decide the final index of OFDM/CCK swing table. */
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.h b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
index eaa5bd2811a1..5a07f3c14d80 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
@@ -8,23 +8,23 @@
  #ifndef __HAL_PHY_RF_H__
  #define __HAL_PHY_RF_H__
 
-enum SPUR_CAL_METHOD {
+enum spur_cal_method {
 	PLL_RESET,
 	AFE_PHASE_SEL
 };
 
-enum PWRTRACK_METHOD {
+enum pwrtrack_method {
 	BBSWING,
 	TXAGC,
 	MIX_MODE
 };
 
-typedef void (*FuncSetPwr)(struct DM_ODM_T *, enum PWRTRACK_METHOD, u8, u8);
+typedef void (*FuncSetPwr)(struct DM_ODM_T *, enum pwrtrack_method, u8, u8);
 typedef void (*FuncIQK)(struct DM_ODM_T *, u8, u8, u8);
 typedef void (*FuncLCK)(struct DM_ODM_T *);
 typedef void (*FuncSwing)(struct DM_ODM_T *, u8 **, u8 **, u8 **, u8 **);
 
-struct TXPWRTRACK_CFG {
+struct txpwrtrack_cfg {
 	u8 SwingTableSize_CCK;
 	u8 SwingTableSize_OFDM;
 	u8 Threshold_IQK;
@@ -37,7 +37,7 @@ struct TXPWRTRACK_CFG {
 	FuncSwing GetDeltaSwingTable;
 };
 
-void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct TXPWRTRACK_CFG *pConfig);
+void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct txpwrtrack_cfg *pConfig);
 
 
 void ODM_ClearTxPowerTrackingState(struct DM_ODM_T *pDM_Odm);
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 50aabed8ace6..30cbe125eb4c 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -186,7 +186,7 @@ void DoIQK_8723B(
  *---------------------------------------------------------------------------*/
 void ODM_TxPwrTrackSetPwr_8723B(
 	struct DM_ODM_T *pDM_Odm,
-	enum PWRTRACK_METHOD Method,
+	enum pwrtrack_method Method,
 	u8 RFPath,
 	u8 ChannelMappedIndex
 )
@@ -409,7 +409,7 @@ static void GetDeltaSwingTable_8723B(
 }
 
 
-void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG *pConfig)
+void ConfigureTxpowerTrack_8723B(struct txpwrtrack_cfg *pConfig)
 {
 	pConfig->SwingTableSize_CCK = CCK_TABLE_SIZE;
 	pConfig->SwingTableSize_OFDM = OFDM_TABLE_SIZE;
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
index 5cd65a7cfebc..7b009b11540c 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
@@ -16,7 +16,7 @@
 #define	RF_T_METER_8723B					0x42	/*  */
 
 
-void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG *pConfig);
+void ConfigureTxpowerTrack_8723B(struct txpwrtrack_cfg *pConfig);
 
 void DoIQK_8723B(
 	struct DM_ODM_T *pDM_Odm,
@@ -27,7 +27,7 @@ void DoIQK_8723B(
 
 void ODM_TxPwrTrackSetPwr_8723B(
 	struct DM_ODM_T *pDM_Odm,
-	enum PWRTRACK_METHOD Method,
+	enum pwrtrack_method Method,
 	u8 RFPath,
 	u8 ChannelMappedIndex
 );
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
