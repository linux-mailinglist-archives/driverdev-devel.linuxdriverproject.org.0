Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C34E33FB04
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:24:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3214143290;
	Wed, 17 Mar 2021 22:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5fvx7D16HfFO; Wed, 17 Mar 2021 22:24:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 697BA43061;
	Wed, 17 Mar 2021 22:24:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F53F1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C8324EDDA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RRpnNXQNN_Vq for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D21B4EDD3
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:31 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id hq27so817465ejc.9
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=og2bHizLAKwqg/nR+8C5bQNiUlC/kQatPyqWV2sZ304=;
 b=kx10S9D6hDSXnRXHI7n77gOqsJrlsNgW39iJdFSJA+u6NVf7bcV5GRUMwEsWisVdqQ
 owNcug7ps9sfGRRiH98HnSXBA2pt3rSbg4NAFPoJgAxiGCTBWgPRiktmijxmS960ugFT
 YcGC5U87I6tdrGPmlpJI8SNTBhj6opGakdE1PB66BqDZCxap8xY+Sv+WZAg5bNikvXiS
 aFUuXM1jSPa3uLb/nOeyy00jA+b+d0mOpL5dMKEsb2t0k20ezr1YZq75rCt/GEc3r20A
 qtxyoB4k3XnPXjGs4R7iaEngV0kdq+Y+w8YpNGe2A9VuimWMhgiI57Is4ica8z8vt4IF
 DGXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=og2bHizLAKwqg/nR+8C5bQNiUlC/kQatPyqWV2sZ304=;
 b=W1Jl+1ixuggZxfJsqZQVzKuaKIAmWA7vB+bT4d6/eztzwrOhBdWSN5FAeCArEkApNV
 8lLY/INvaldp/61s+kX8aB2dKsacwi8dUQlgFWVkcQAskVuZa0DB1JMHA03CoL2NNhWc
 LvJ43bswj/qMsz3r+Q1mLP4io3N4SeXC/qDErBU+92bSTxibZ1UPUIdMSuTo10WoWMgh
 d5cFQb6dleoWTJc0z7YQPg4mJDGcLvE3cWA7jwPnpERQ+IRDV9TNS1uoYGUfUVY/eHvX
 wuaAcd8VQKKViMarkIVL4h3Ln8bRYNJzchKHvuWU+jFWXTerqtbdJlXjet1J+8eGv8KA
 UnTg==
X-Gm-Message-State: AOAM5306j2pcrcTyCYpMAhmtGVLPwXg8FFY4yRwChpY/0KzUYOUWQjAS
 ZSMfMvj1j4usudIC/xWDxEeKBXHq+JA=
X-Google-Smtp-Source: ABdhPJzVi3tyiF6KQYWc0UvC9SOlyDLLNoPH5rrFCxIyP4QgDjUpzmt+fvIgFwGXVnOQbh2Sqo5/nA==
X-Received: by 2002:a17:906:5689:: with SMTP id
 am9mr36368818ejc.298.1616019689576; 
 Wed, 17 Mar 2021 15:21:29 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:29 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 16/43] Staging: rtl8723bs: fix names in HalVerDef.h
Date: Wed, 17 Mar 2021 23:21:03 +0100
Message-Id: <20210317222130.29528-17-marcocesati@gmail.com>
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
in include/HalVerDef.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c       |  2 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  4 +-
 drivers/staging/rtl8723bs/include/HalVerDef.h | 50 +++++++++----------
 drivers/staging/rtl8723bs/include/hal_com.h   |  2 +-
 drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
 5 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 32e6b8233341..1e66f749fd40 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -38,7 +38,7 @@ void rtw_hal_data_deinit(struct adapter *padapter)
 }
 
 
-void dump_chip_info(struct HAL_VERSION	ChipVersion)
+void dump_chip_info(struct hal_version	ChipVersion)
 {
 	char buf[128];
 	size_t cnt = 0;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 9c30024fa984..44bbffab0c02 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -1872,10 +1872,10 @@ static bool Hal_EfusePgPacketWrite_BT(
 	return true;
 }
 
-static struct HAL_VERSION ReadChipVersion8723B(struct adapter *padapter)
+static struct hal_version ReadChipVersion8723B(struct adapter *padapter)
 {
 	u32 value32;
-	struct HAL_VERSION ChipVersion;
+	struct hal_version ChipVersion;
 	struct hal_com_data *pHalData;
 
 /* YJ, TODO, move read chip type here */
diff --git a/drivers/staging/rtl8723bs/include/HalVerDef.h b/drivers/staging/rtl8723bs/include/HalVerDef.h
index 11055147a2a2..bab226f77b24 100644
--- a/drivers/staging/rtl8723bs/include/HalVerDef.h
+++ b/drivers/staging/rtl8723bs/include/HalVerDef.h
@@ -7,8 +7,8 @@
 #ifndef __HAL_VERSION_DEF_H__
 #define __HAL_VERSION_DEF_H__
 
-/*  HAL_IC_TYPE_E */
-enum HAL_IC_TYPE_E { /* tag_HAL_IC_Type_Definition */
+/*  hal_ic_type_e */
+enum hal_ic_type_e { /* tag_HAL_IC_Type_Definition */
 	CHIP_8192S	=	0,
 	CHIP_8188C	=	1,
 	CHIP_8192C	=	2,
@@ -21,15 +21,15 @@ enum HAL_IC_TYPE_E { /* tag_HAL_IC_Type_Definition */
 	CHIP_8192E	=	9,
 };
 
-/* HAL_CHIP_TYPE_E */
-enum HAL_CHIP_TYPE_E { /* tag_HAL_CHIP_Type_Definition */
+/* hal_chip_type_e */
+enum hal_chip_type_e { /* tag_HAL_CHIP_Type_Definition */
 	TEST_CHIP		=	0,
 	NORMAL_CHIP	=	1,
 	FPGA			=	2,
 };
 
-/* HAL_CUT_VERSION_E */
-enum HAL_CUT_VERSION_E { /* tag_HAL_Cut_Version_Definition */
+/* hal_cut_version_e */
+enum hal_cut_version_e { /* tag_HAL_Cut_Version_Definition */
 	A_CUT_VERSION		=	0,
 	B_CUT_VERSION		=	1,
 	C_CUT_VERSION		=	2,
@@ -44,13 +44,13 @@ enum HAL_CUT_VERSION_E { /* tag_HAL_Cut_Version_Definition */
 };
 
 /*  HAL_Manufacturer */
-enum HAL_VENDOR_E { /* tag_HAL_Manufacturer_Version_Definition */
+enum hal_vendor_e { /* tag_HAL_Manufacturer_Version_Definition */
 	CHIP_VENDOR_TSMC	=	0,
 	CHIP_VENDOR_UMC		=	1,
 	CHIP_VENDOR_SMIC	=	2,
 };
 
-enum HAL_RF_TYPE_E { /* tag_HAL_RF_Type_Definition */
+enum hal_rf_type_e { /* tag_HAL_RF_Type_Definition */
 	RF_TYPE_1T1R	=	0,
 	RF_TYPE_1T2R	=	1,
 	RF_TYPE_2T2R	=	2,
@@ -61,36 +61,36 @@ enum HAL_RF_TYPE_E { /* tag_HAL_RF_Type_Definition */
 	RF_TYPE_4T4R	=	7,
 };
 
-struct HAL_VERSION { /* tag_HAL_VERSION */
-	enum HAL_IC_TYPE_E		ICType;
-	enum HAL_CHIP_TYPE_E		ChipType;
-	enum HAL_CUT_VERSION_E	CUTVersion;
-	enum HAL_VENDOR_E		VendorType;
-	enum HAL_RF_TYPE_E		RFType;
+struct hal_version { /* tag_HAL_VERSION */
+	enum hal_ic_type_e		ICType;
+	enum hal_chip_type_e		ChipType;
+	enum hal_cut_version_e	CUTVersion;
+	enum hal_vendor_e		VendorType;
+	enum hal_rf_type_e		RFType;
 	u8 			ROMVer;
 };
 
 /* VERSION_8192C			VersionID; */
-/* HAL_VERSION			VersionID; */
+/* hal_version			VersionID; */
 
 /*  Get element */
-#define GET_CVID_IC_TYPE(version)			((enum HAL_IC_TYPE_E)((version).ICType))
-#define GET_CVID_CHIP_TYPE(version)			((enum HAL_CHIP_TYPE_E)((version).ChipType))
-#define GET_CVID_RF_TYPE(version)			((enum HAL_RF_TYPE_E)((version).RFType))
-#define GET_CVID_MANUFACTUER(version)		((enum HAL_VENDOR_E)((version).VendorType))
-#define GET_CVID_CUT_VERSION(version)		((enum HAL_CUT_VERSION_E)((version).CUTVersion))
+#define GET_CVID_IC_TYPE(version)			((enum hal_ic_type_e)((version).ICType))
+#define GET_CVID_CHIP_TYPE(version)			((enum hal_chip_type_e)((version).ChipType))
+#define GET_CVID_RF_TYPE(version)			((enum hal_rf_type_e)((version).RFType))
+#define GET_CVID_MANUFACTUER(version)		((enum hal_vendor_e)((version).VendorType))
+#define GET_CVID_CUT_VERSION(version)		((enum hal_cut_version_e)((version).CUTVersion))
 #define GET_CVID_ROM_VERSION(version)		(((version).ROMVer) & ROM_VERSION_MASK)
 
 /*  */
 /* Common Macro. -- */
 /*  */
-/* HAL_VERSION VersionID */
+/* hal_version VersionID */
 
-/* HAL_CHIP_TYPE_E */
+/* hal_chip_type_e */
 #define IS_TEST_CHIP(version)			((GET_CVID_CHIP_TYPE(version) == TEST_CHIP) ? true : false)
 #define IS_NORMAL_CHIP(version)			((GET_CVID_CHIP_TYPE(version) == NORMAL_CHIP) ? true : false)
 
-/* HAL_CUT_VERSION_E */
+/* hal_cut_version_e */
 #define IS_A_CUT(version)				((GET_CVID_CUT_VERSION(version) == A_CUT_VERSION) ? true : false)
 #define IS_B_CUT(version)				((GET_CVID_CUT_VERSION(version) == B_CUT_VERSION) ? true : false)
 #define IS_C_CUT(version)				((GET_CVID_CUT_VERSION(version) == C_CUT_VERSION) ? true : false)
@@ -100,12 +100,12 @@ struct HAL_VERSION { /* tag_HAL_VERSION */
 #define IS_J_CUT(version)				((GET_CVID_CUT_VERSION(version) == J_CUT_VERSION) ? true : false)
 #define IS_K_CUT(version)				((GET_CVID_CUT_VERSION(version) == K_CUT_VERSION) ? true : false)
 
-/* HAL_VENDOR_E */
+/* hal_vendor_e */
 #define IS_CHIP_VENDOR_TSMC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_TSMC) ? true : false)
 #define IS_CHIP_VENDOR_UMC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_UMC) ? true : false)
 #define IS_CHIP_VENDOR_SMIC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_SMIC) ? true : false)
 
-/* HAL_RF_TYPE_E */
+/* hal_rf_type_e */
 #define IS_1T1R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_1T1R) ? true : false)
 #define IS_1T2R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_1T2R) ? true : false)
 #define IS_2T2R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_2T2R) ? true : false)
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index 18a72feb8b69..28451385dec3 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -193,7 +193,7 @@ enum firmware_source {
 u8 rtw_hal_data_init(struct adapter *padapter);
 void rtw_hal_data_deinit(struct adapter *padapter);
 
-void dump_chip_info(struct HAL_VERSION	ChipVersion);
+void dump_chip_info(struct hal_version	ChipVersion);
 
 u8 /* return the final channel plan decision */
 hal_com_config_channel_plan(
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 8e75a334c60b..5f7cad83ce1c 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -176,7 +176,7 @@ struct dm_priv {
 
 
 struct hal_com_data {
-	struct HAL_VERSION VersionID;
+	struct hal_version VersionID;
 	enum RT_MULTI_FUNC MultiFunc; /*  For multi-function consideration. */
 	enum RT_POLARITY_CTL PolarityCtl; /*  For Wifi PDn Polarity control. */
 	enum RT_REGULATOR_MODE	RegulatorMode; /*  switching regulator or LDO */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
