Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2765C338760
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:31:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0A286F9BA;
	Fri, 12 Mar 2021 08:30:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ie58jwc2s-xw; Fri, 12 Mar 2021 08:30:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DF226FA06;
	Fri, 12 Mar 2021 08:30:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E2441BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AC888450D
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBlMqlG7u083 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92157844F8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:03 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 j4-20020a05600c4104b029010c62bc1e20so14648164wmi.3
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=jhHUcse1nKTQmmrbtYHbNi6uzZDxGnUuq57jeXSJrm8=;
 b=csLPpdnsHMS4Pg9M0enX51NWCt8fo+AoTjvG4pAYJqAqbzdYyeKQSLBaDezDs7JQlD
 KJZJ+0JPtbPGtqjjtCwVpj9ouBcT1SO/ra0OgGI9eIivbjRcijC9U9BeLcEXGXL4kvfC
 jW3YzgtP4ACQYPN8LQ5v5WdEADMXtTCb6SzchOOjCBUX09NG8zRd+KET9RieUY2OOFB/
 wUdVSVbV/0c6zA+QCn/HgHDSSy/vZB38tLfmxQJeK612pV5x7WMq5nruDuZDkAbDc2OT
 kFs+1B3Jun3TdHkHdTVor/b5zQsj/dhvclzwXlIQORDv/q3Ni4vdItiR0kcBCVoHOaBE
 6Izg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jhHUcse1nKTQmmrbtYHbNi6uzZDxGnUuq57jeXSJrm8=;
 b=HMnNPY8h40y7EpZi8r4VY0ZSy6ZbqHmkJd1+0UgHxI5o4zvVLjuuzY1fCI8w0GzDB9
 uxcm261YsInU52CxyTgUy1CuKW6YQYJ0GkBgYZk65Rfs+Zb23fS++x5Lmr8oAI0RQBS5
 3wRl41tNDWVhcgw4fcIFag/u2SKlpvNO0OcscSyJOjoUXh1FAUAbTACJXsSlL0M0UWr8
 ZkJXniRb6soT+ycBtzdA/g1V8WtUI9CYjAVlRls+6fb5DzNYeZp1OUDh56/9CWg15sds
 WHykajsR+L1BslajmNN+onaYWs41GbXBDJb8kUATi+qTbaeEoTH70yLeshCiXKTjiYfI
 N2lA==
X-Gm-Message-State: AOAM533NXra+7RkTHGEsGFSjuTjQkT3CJXSKCYKjnvSIa0aG7+3FJU8A
 rF4XxOdUh9pcJBeiJB5qZ+M=
X-Google-Smtp-Source: ABdhPJwQKN4dwk+ieN4vhLGPD5m/5zITv8xsfIfaK+pGIfPTUnVsm6yLTqUt5e6U1gQb8mSN+safZg==
X-Received: by 2002:a7b:c75a:: with SMTP id w26mr12239193wmk.49.1615537621816; 
 Fri, 12 Mar 2021 00:27:01 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:01 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 21/33] staging: rtl8723bs: remove typedefs in HalVerDef.h
Date: Fri, 12 Mar 2021 09:26:26 +0100
Message-Id: <20210312082638.25512-22-marco.cesati@gmail.com>
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
    #11: FILE: include/HalVerDef.h:11:
    +typedef enum tag_HAL_IC_Type_Definition {

    WARNING: do not add new typedefs
    #25: FILE: include/HalVerDef.h:25:
    +typedef enum tag_HAL_CHIP_Type_Definition {

    WARNING: do not add new typedefs
    #32: FILE: include/HalVerDef.h:32:
    +typedef enum tag_HAL_Cut_Version_Definition {

    WARNING: do not add new typedefs
    #47: FILE: include/HalVerDef.h:47:
    +typedef enum tag_HAL_Manufacturer_Version_Definition {

    WARNING: do not add new typedefs
    #53: FILE: include/HalVerDef.h:53:
    +typedef enum tag_HAL_RF_Type_Definition {

    WARNING: do not add new typedefs
    #64: FILE: include/HalVerDef.h:64:
    +typedef	struct tag_HAL_VERSION {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c       |  2 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  4 +-
 drivers/staging/rtl8723bs/include/HalVerDef.h | 44 +++++++++----------
 drivers/staging/rtl8723bs/include/hal_com.h   |  2 +-
 drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
 5 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 34b8354dbc03..9eaf35e8e442 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -38,7 +38,7 @@ void rtw_hal_data_deinit(struct adapter *padapter)
 }
 
 
-void dump_chip_info(HAL_VERSION	ChipVersion)
+void dump_chip_info(struct HAL_VERSION	ChipVersion)
 {
 	char buf[128];
 	size_t cnt = 0;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 26f432ea7012..55c95b38a452 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -1880,10 +1880,10 @@ static bool Hal_EfusePgPacketWrite_BT(
 	return true;
 }
 
-static HAL_VERSION ReadChipVersion8723B(struct adapter *padapter)
+static struct HAL_VERSION ReadChipVersion8723B(struct adapter *padapter)
 {
 	u32 value32;
-	HAL_VERSION ChipVersion;
+	struct HAL_VERSION ChipVersion;
 	struct hal_com_data *pHalData;
 
 /* YJ, TODO, move read chip type here */
diff --git a/drivers/staging/rtl8723bs/include/HalVerDef.h b/drivers/staging/rtl8723bs/include/HalVerDef.h
index b4744be2cbe1..11055147a2a2 100644
--- a/drivers/staging/rtl8723bs/include/HalVerDef.h
+++ b/drivers/staging/rtl8723bs/include/HalVerDef.h
@@ -8,7 +8,7 @@
 #define __HAL_VERSION_DEF_H__
 
 /*  HAL_IC_TYPE_E */
-typedef enum tag_HAL_IC_Type_Definition {
+enum HAL_IC_TYPE_E { /* tag_HAL_IC_Type_Definition */
 	CHIP_8192S	=	0,
 	CHIP_8188C	=	1,
 	CHIP_8192C	=	2,
@@ -19,17 +19,17 @@ typedef enum tag_HAL_IC_Type_Definition {
 	CHIP_8821	=	7,
 	CHIP_8723B	=	8,
 	CHIP_8192E	=	9,
-} HAL_IC_TYPE_E;
+};
 
 /* HAL_CHIP_TYPE_E */
-typedef enum tag_HAL_CHIP_Type_Definition {
+enum HAL_CHIP_TYPE_E { /* tag_HAL_CHIP_Type_Definition */
 	TEST_CHIP		=	0,
 	NORMAL_CHIP	=	1,
 	FPGA			=	2,
-} HAL_CHIP_TYPE_E;
+};
 
 /* HAL_CUT_VERSION_E */
-typedef enum tag_HAL_Cut_Version_Definition {
+enum HAL_CUT_VERSION_E { /* tag_HAL_Cut_Version_Definition */
 	A_CUT_VERSION		=	0,
 	B_CUT_VERSION		=	1,
 	C_CUT_VERSION		=	2,
@@ -41,16 +41,16 @@ typedef enum tag_HAL_Cut_Version_Definition {
 	I_CUT_VERSION		=	8,
 	J_CUT_VERSION		=	9,
 	K_CUT_VERSION		=	10,
-} HAL_CUT_VERSION_E;
+};
 
 /*  HAL_Manufacturer */
-typedef enum tag_HAL_Manufacturer_Version_Definition {
+enum HAL_VENDOR_E { /* tag_HAL_Manufacturer_Version_Definition */
 	CHIP_VENDOR_TSMC	=	0,
 	CHIP_VENDOR_UMC		=	1,
 	CHIP_VENDOR_SMIC	=	2,
-} HAL_VENDOR_E;
+};
 
-typedef enum tag_HAL_RF_Type_Definition {
+enum HAL_RF_TYPE_E { /* tag_HAL_RF_Type_Definition */
 	RF_TYPE_1T1R	=	0,
 	RF_TYPE_1T2R	=	1,
 	RF_TYPE_2T2R	=	2,
@@ -59,26 +59,26 @@ typedef enum tag_HAL_RF_Type_Definition {
 	RF_TYPE_3T3R	=	5,
 	RF_TYPE_3T4R	=	6,
 	RF_TYPE_4T4R	=	7,
-} HAL_RF_TYPE_E;
+};
 
-typedef	struct tag_HAL_VERSION {
-	HAL_IC_TYPE_E		ICType;
-	HAL_CHIP_TYPE_E		ChipType;
-	HAL_CUT_VERSION_E	CUTVersion;
-	HAL_VENDOR_E		VendorType;
-	HAL_RF_TYPE_E		RFType;
+struct HAL_VERSION { /* tag_HAL_VERSION */
+	enum HAL_IC_TYPE_E		ICType;
+	enum HAL_CHIP_TYPE_E		ChipType;
+	enum HAL_CUT_VERSION_E	CUTVersion;
+	enum HAL_VENDOR_E		VendorType;
+	enum HAL_RF_TYPE_E		RFType;
 	u8 			ROMVer;
-} HAL_VERSION, *PHAL_VERSION;
+};
 
 /* VERSION_8192C			VersionID; */
 /* HAL_VERSION			VersionID; */
 
 /*  Get element */
-#define GET_CVID_IC_TYPE(version)			((HAL_IC_TYPE_E)((version).ICType))
-#define GET_CVID_CHIP_TYPE(version)			((HAL_CHIP_TYPE_E)((version).ChipType))
-#define GET_CVID_RF_TYPE(version)			((HAL_RF_TYPE_E)((version).RFType))
-#define GET_CVID_MANUFACTUER(version)		((HAL_VENDOR_E)((version).VendorType))
-#define GET_CVID_CUT_VERSION(version)		((HAL_CUT_VERSION_E)((version).CUTVersion))
+#define GET_CVID_IC_TYPE(version)			((enum HAL_IC_TYPE_E)((version).ICType))
+#define GET_CVID_CHIP_TYPE(version)			((enum HAL_CHIP_TYPE_E)((version).ChipType))
+#define GET_CVID_RF_TYPE(version)			((enum HAL_RF_TYPE_E)((version).RFType))
+#define GET_CVID_MANUFACTUER(version)		((enum HAL_VENDOR_E)((version).VendorType))
+#define GET_CVID_CUT_VERSION(version)		((enum HAL_CUT_VERSION_E)((version).CUTVersion))
 #define GET_CVID_ROM_VERSION(version)		(((version).ROMVer) & ROM_VERSION_MASK)
 
 /*  */
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index 5c4268955275..c4b83eb16326 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -193,7 +193,7 @@ enum FIRMWARE_SOURCE {
 u8 rtw_hal_data_init(struct adapter *padapter);
 void rtw_hal_data_deinit(struct adapter *padapter);
 
-void dump_chip_info(HAL_VERSION	ChipVersion);
+void dump_chip_info(struct HAL_VERSION	ChipVersion);
 
 u8 /* return the final channel plan decision */
 hal_com_config_channel_plan(
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 04efd09fc628..c933dc6cada2 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -176,7 +176,7 @@ struct dm_priv {
 
 
 struct hal_com_data {
-	HAL_VERSION VersionID;
+	struct HAL_VERSION VersionID;
 	enum RT_MULTI_FUNC MultiFunc; /*  For multi-function consideration. */
 	enum RT_POLARITY_CTL PolarityCtl; /*  For Wifi PDn Polarity control. */
 	enum RT_REGULATOR_MODE	RegulatorMode; /*  switching regulator or LDO */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
