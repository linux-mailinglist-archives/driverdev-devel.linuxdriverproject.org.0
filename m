Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5761C22ABC7
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 11:31:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C2F624C4F;
	Thu, 23 Jul 2020 09:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mUqgzpeja-MG; Thu, 23 Jul 2020 09:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3ACE2279E9;
	Thu, 23 Jul 2020 09:30:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E2461BF3D0
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 09:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0614A890F5
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 09:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPD3FSYMq0Uy for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 09:30:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D2A184EED
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 09:30:55 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id l6so2310931plt.7
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 02:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jy49RGvFi9V2zEEWbx5ylZtw7pvUYuCJdfLZjYAbNXE=;
 b=bmJIt6i7H+iDKhEBkadP7TFpmtnYhRCBjZGl9W5wod5FQrZrYiH55zFRkhgU0WNKlj
 SsMDv1lY9UViefkgZOq6uTnSyU4EaUkQBsA2Oh98LrC15vjEHjLeU2qLVJwWVnL+/F/r
 RHY8GA4h8wGs7JE7uNUIvzmvhdWQ2bsbSQHg+Bo4ig16vMQodJeLdsB9FNm4gqPjzUdk
 p0P8YtVlqq8lTc/DEy+geXxF9EaxZAVXogS2D8zcaQHJ98wolAp27PtKfMlZyXLGfdPQ
 WUCPcm+Pzxp8jiUpaP7iBJvKUhGcyWEJBjSdJsgYumo7UeHKdiG9V7HKZj8foBRWpTbO
 Sjrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jy49RGvFi9V2zEEWbx5ylZtw7pvUYuCJdfLZjYAbNXE=;
 b=Ip/+8Dx7ycnJgNIu/ud5hCHzwnXhqi29QWhhbAQFfbPJ2KeOAuDsaM/XBPGJwcmlbs
 nR9kGvsDaUDu1ThrZ2SaTbTkfF53jxb86P2ExvI8bidGZCjkNnYPShCBH1oDhZM/5Jed
 pJDkwmNye6IuUPHbgimrtHMVdf1rCN/jPWQKroElZwBlo+p7ap5Tfyx4nbkF2MMIyYpR
 HMCThcbmiW/pxKte7+9auy7nvbxSQbNz5YduJ2LX2evhSLKRWIxICjLoc3Y6AQkxusOr
 KZWj1EGuZC3OMSbOAUZz2cpGEAf2xPViCFXKR3SX2RlKSOsfmjj+vKuisTR26MAW491A
 USuw==
X-Gm-Message-State: AOAM5316deV4ny2mh1/rupWcQlvsEVDc3/uZPUqIFvnXGA7g2Y57elXw
 aG2wz8UOJvSTyEAi34fVk3wUWipvRHK2aA==
X-Google-Smtp-Source: ABdhPJyj+05P8GgpWqf2RVRK4RUcXNVM3o+GKs3Tawhqpp1tqVbIxXB8Kb8sXQYcplwAdLd3MhU3FA==
X-Received: by 2002:a17:90a:d42:: with SMTP id 2mr258442pju.15.1595496654314; 
 Thu, 23 Jul 2020 02:30:54 -0700 (PDT)
Received: from localhost.localdomain ([125.77.114.125])
 by smtp.gmail.com with ESMTPSA id c71sm2521421pje.32.2020.07.23.02.30.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 02:30:53 -0700 (PDT)
From: Fox Chen <foxhlchen@gmail.com>
To: gregkh@linuxfoundation.org, luk@wybcz.pl, linux@rasmusvillemoes.dk,
 hdegoede@redhat.com, ndesaulniers@google.com,
 miguel.ojeda.sandonis@gmail.com, kai.heng.feng@canonical.com,
 nishkadg.linux@gmail.com, joseespiriki@gmail.com, straube.linux@gmail.com,
 pterjan@google.com, dan.carpenter@oracle.com
Subject: [PATCH] staging: rtl8723bs: Cleanup open brace issues
Date: Thu, 23 Jul 2020 17:30:02 +0800
Message-Id: <20200723093002.6175-1-foxhlchen@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Fox Chen <foxhlchen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This cleans up open brace issues reported by checkpatch.pl

Signed-off-by: Fox Chen <foxhlchen@gmail.com>
---
 .../staging/rtl8723bs/include/HalPwrSeqCmd.h  |  6 +--
 drivers/staging/rtl8723bs/include/HalVerDef.h | 18 +++----
 drivers/staging/rtl8723bs/include/drv_types.h |  6 +--
 .../rtl8723bs/include/drv_types_sdio.h        |  3 +-
 .../staging/rtl8723bs/include/hal_btcoex.h    |  3 +-
 drivers/staging/rtl8723bs/include/hal_com.h   |  3 +-
 drivers/staging/rtl8723bs/include/ieee80211.h |  3 +-
 .../rtl8723bs/include/ioctl_cfg80211.h        |  3 +-
 .../staging/rtl8723bs/include/rtl8192c_recv.h |  3 +-
 .../staging/rtl8723bs/include/rtl8723b_recv.h |  6 +--
 .../staging/rtl8723bs/include/rtl8723b_xmit.h |  3 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   | 30 ++++-------
 .../staging/rtl8723bs/include/rtw_eeprom.h    |  6 +--
 drivers/staging/rtl8723bs/include/rtw_event.h |  6 +--
 drivers/staging/rtl8723bs/include/rtw_ht.h    |  3 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h  |  6 +--
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  | 51 +++++++------------
 drivers/staging/rtl8723bs/include/rtw_mp.h    | 15 ++----
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   | 12 ++---
 drivers/staging/rtl8723bs/include/rtw_recv.h  | 12 ++---
 .../staging/rtl8723bs/include/rtw_security.h  |  9 ++--
 drivers/staging/rtl8723bs/include/rtw_xmit.h  | 12 ++---
 drivers/staging/rtl8723bs/include/wifi.h      | 24 +++------
 .../staging/rtl8723bs/include/wlan_bssdef.h   |  9 ++--
 24 files changed, 84 insertions(+), 168 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h b/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
index 7040cfc507d8..459f2f9d4bbb 100644
--- a/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
+++ b/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
@@ -82,14 +82,12 @@
 #define	PWR_CUT_ALL_MSK			0xFF
 
 
-typedef enum _PWRSEQ_CMD_DELAY_UNIT_
-{
+typedef enum _PWRSEQ_CMD_DELAY_UNIT_ {
 	PWRSEQ_DELAY_US,
 	PWRSEQ_DELAY_MS,
 } PWRSEQ_DELAY_UNIT;
 
-typedef struct _WL_PWR_CFG_
-{
+typedef struct _WL_PWR_CFG_ {
 	u16 offset;
 	u8 cut_msk;
 	u8 fab_msk:4;
diff --git a/drivers/staging/rtl8723bs/include/HalVerDef.h b/drivers/staging/rtl8723bs/include/HalVerDef.h
index c548fb126683..b4744be2cbe1 100644
--- a/drivers/staging/rtl8723bs/include/HalVerDef.h
+++ b/drivers/staging/rtl8723bs/include/HalVerDef.h
@@ -8,8 +8,7 @@
 #define __HAL_VERSION_DEF_H__
 
 /*  HAL_IC_TYPE_E */
-typedef enum tag_HAL_IC_Type_Definition
-{
+typedef enum tag_HAL_IC_Type_Definition {
 	CHIP_8192S	=	0,
 	CHIP_8188C	=	1,
 	CHIP_8192C	=	2,
@@ -23,16 +22,14 @@ typedef enum tag_HAL_IC_Type_Definition
 } HAL_IC_TYPE_E;
 
 /* HAL_CHIP_TYPE_E */
-typedef enum tag_HAL_CHIP_Type_Definition
-{
+typedef enum tag_HAL_CHIP_Type_Definition {
 	TEST_CHIP		=	0,
 	NORMAL_CHIP	=	1,
 	FPGA			=	2,
 } HAL_CHIP_TYPE_E;
 
 /* HAL_CUT_VERSION_E */
-typedef enum tag_HAL_Cut_Version_Definition
-{
+typedef enum tag_HAL_Cut_Version_Definition {
 	A_CUT_VERSION		=	0,
 	B_CUT_VERSION		=	1,
 	C_CUT_VERSION		=	2,
@@ -47,15 +44,13 @@ typedef enum tag_HAL_Cut_Version_Definition
 } HAL_CUT_VERSION_E;
 
 /*  HAL_Manufacturer */
-typedef enum tag_HAL_Manufacturer_Version_Definition
-{
+typedef enum tag_HAL_Manufacturer_Version_Definition {
 	CHIP_VENDOR_TSMC	=	0,
 	CHIP_VENDOR_UMC		=	1,
 	CHIP_VENDOR_SMIC	=	2,
 } HAL_VENDOR_E;
 
-typedef enum tag_HAL_RF_Type_Definition
-{
+typedef enum tag_HAL_RF_Type_Definition {
 	RF_TYPE_1T1R	=	0,
 	RF_TYPE_1T2R	=	1,
 	RF_TYPE_2T2R	=	2,
@@ -66,8 +61,7 @@ typedef enum tag_HAL_RF_Type_Definition
 	RF_TYPE_4T4R	=	7,
 } HAL_RF_TYPE_E;
 
-typedef	struct tag_HAL_VERSION
-{
+typedef	struct tag_HAL_VERSION {
 	HAL_IC_TYPE_E		ICType;
 	HAL_CHIP_TYPE_E		ChipType;
 	HAL_CUT_VERSION_E	CUTVersion;
diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index dba75216cbfe..c73f581aea06 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -86,8 +86,7 @@ struct specific_device_id {
 
 };
 
-struct registry_priv
-{
+struct registry_priv {
 	u8 chip_version;
 	u8 rfintfs;
 	u8 lbkmode;
@@ -418,8 +417,7 @@ struct cam_entry_cache {
 	((u8 *)(x))[6], ((u8 *)(x))[7], ((u8 *)(x))[8], ((u8 *)(x))[9], ((u8 *)(x))[10], ((u8 *)(x))[11], \
 	((u8 *)(x))[12], ((u8 *)(x))[13], ((u8 *)(x))[14], ((u8 *)(x))[15]
 
-struct dvobj_priv
-{
+struct dvobj_priv {
 	/*-------- below is common data --------*/
 	struct adapter *if1; /* PRIMARY_ADAPTER */
 	struct adapter *if2; /* SECONDARY_ADAPTER */
diff --git a/drivers/staging/rtl8723bs/include/drv_types_sdio.h b/drivers/staging/rtl8723bs/include/drv_types_sdio.h
index 09263ad27ce9..5e079838f59c 100644
--- a/drivers/staging/rtl8723bs/include/drv_types_sdio.h
+++ b/drivers/staging/rtl8723bs/include/drv_types_sdio.h
@@ -16,8 +16,7 @@
 	#include <linux/mmc/card.h>
 #endif
 
-struct sdio_data
-{
+struct sdio_data {
 	u8  func_number;
 
 	u8  tx_block_mode;
diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index eb03813fdcb9..29318b49c3ff 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -11,8 +11,7 @@
 
 /*  Some variables can't get from outsrc BT-Coex, */
 /*  so we need to save here */
-typedef struct _BT_COEXIST
-{
+typedef struct _BT_COEXIST {
 	u8 bBtExist;
 	u8 btTotalAntNum;
 	u8 btChipType;
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index a46626d0509a..fe7e2efce0e3 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -288,8 +288,7 @@ void SetHalODMVar(
 	bool					bSet);
 
 #ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-struct noise_info
-{
+struct noise_info {
 	u8 bPauseDIG;
 	u8 IGIValue;
 	u32 max_time;/* ms */
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 7243e656d589..b7c4b1cf204e 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -152,8 +152,7 @@ typedef enum _RATR_TABLE_MODE {
 } RATR_TABLE_MODE, *PRATR_TABLE_MODE;
 
 
-enum NETWORK_TYPE
-{
+enum NETWORK_TYPE {
 	WIRELESS_INVALID = 0,
 	/* Sub-Element */
 	WIRELESS_11B = BIT(0), /*  tx: cck only , rx: cck only, hw: cck */
diff --git a/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h b/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
index 931599d8b08a..44d0a0982659 100644
--- a/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
+++ b/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
@@ -61,8 +61,7 @@ struct rtw_wdev_nego_info {
 		(nego_info)->conf_op_ch = 0; \
 	} while (0)
 
-struct rtw_wdev_priv
-{
+struct rtw_wdev_priv {
 	struct wireless_dev *rtw_wdev;
 
 	struct adapter *padapter;
diff --git a/drivers/staging/rtl8723bs/include/rtl8192c_recv.h b/drivers/staging/rtl8723bs/include/rtl8192c_recv.h
index c77d172de7d0..9664758e21be 100644
--- a/drivers/staging/rtl8723bs/include/rtl8192c_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtl8192c_recv.h
@@ -13,8 +13,7 @@
 
 #define MAX_RECVBUF_SZ (10240)
 
-struct phy_stat
-{
+struct phy_stat {
 	unsigned int phydw0;
 
 	unsigned int phydw1;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_recv.h b/drivers/staging/rtl8723bs/include/rtl8723b_recv.h
index 31ae83f2557f..fad6749af768 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_recv.h
@@ -9,8 +9,7 @@
 
 #include <rtl8192c_recv.h>
 
-typedef struct rxreport_8723b
-{
+typedef struct rxreport_8723b {
 	/* DWORD 0 */
 	u32 pktlen:14;
 	u32 crc32:1;
@@ -82,8 +81,7 @@ typedef struct rxreport_8723b
 	u32 tsfl;
 } RXREPORT, *PRXREPORT;
 
-typedef struct phystatus_8723b
-{
+typedef struct phystatus_8723b {
 	u32 rxgain_a:7;
 	u32 trsw_a:1;
 	u32 rxgain_b:7;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
index 320ca65e5faa..243d36d9bc7b 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
@@ -59,8 +59,7 @@
 /*  */
 /* defined for TX DESC Operation */
 /*  */
-typedef struct txdesc_8723b
-{
+typedef struct txdesc_8723b {
 	/*  Offset 0 */
 	u32 pktlen:16;
 	u32 offset:8;
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index 3e025a652e38..56c77bc7ca81 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -134,8 +134,7 @@ extern void rtw_free_cmd_priv(struct cmd_priv *pcmdpriv);
 extern void rtw_free_evt_priv(struct evt_priv *pevtpriv);
 extern void rtw_evt_notify_isr(struct evt_priv *pevtpriv);
 
-enum rtw_drvextra_cmd_id
-{
+enum rtw_drvextra_cmd_id {
 	NONE_WK_CID,
 	DYNAMIC_CHK_WK_CID,
 	DM_CTRL_WK_CID,
@@ -159,8 +158,7 @@ enum rtw_drvextra_cmd_id
 	MAX_WK_CID
 };
 
-enum LPS_CTRL_TYPE
-{
+enum LPS_CTRL_TYPE {
 	LPS_CTRL_SCAN = 0,
 	LPS_CTRL_JOINBSS = 1,
 	LPS_CTRL_CONNECT = 2,
@@ -530,8 +528,7 @@ struct getrfintfs_parm {
 };
 
 
-struct Tx_Beacon_param
-{
+struct Tx_Beacon_param {
 	struct wlan_bssid_ex network;
 };
 
@@ -754,8 +751,7 @@ struct setassocrspextraie_parm {
 };
 
 
-struct addBaReq_parm
-{
+struct addBaReq_parm {
 	unsigned int tid;
 	u8 addr[ETH_ALEN];
 };
@@ -768,33 +764,28 @@ struct set_ch_parm {
 };
 
 /*H2C Handler index: 59 */
-struct SetChannelPlan_param
-{
+struct SetChannelPlan_param {
 	u8 channel_plan;
 };
 
 /*H2C Handler index: 60 */
-struct LedBlink_param
-{
+struct LedBlink_param {
 	void *pLed;
 };
 
 /*H2C Handler index: 61 */
-struct SetChannelSwitch_param
-{
+struct SetChannelSwitch_param {
 	u8 new_ch_no;
 };
 
 /*H2C Handler index: 62 */
-struct TDLSoption_param
-{
+struct TDLSoption_param {
 	u8 addr[ETH_ALEN];
 	u8 option;
 };
 
 /*H2C Handler index: 64 */
-struct RunInThread_param
-{
+struct RunInThread_param {
 	void (*func)(void*);
 	void *context;
 };
@@ -881,8 +872,7 @@ struct _cmd_callback {
 	void (*callback)(struct adapter  *padapter, struct cmd_obj *cmd);
 };
 
-enum rtw_h2c_cmd
-{
+enum rtw_h2c_cmd {
 	GEN_CMD_CODE(_Read_MACREG),	/*0*/
 	GEN_CMD_CODE(_Write_MACREG),
 	GEN_CMD_CODE(_Read_BBREG),
diff --git a/drivers/staging/rtl8723bs/include/rtw_eeprom.h b/drivers/staging/rtl8723bs/include/rtw_eeprom.h
index 704c6461333a..78f34f6cebb4 100644
--- a/drivers/staging/rtl8723bs/include/rtw_eeprom.h
+++ b/drivers/staging/rtl8723bs/include/rtw_eeprom.h
@@ -42,8 +42,7 @@
 /*  Besides, CustomerID of registry has precedence of that of EEPROM. */
 /*  defined below. 060703, by rcnjko. */
 /*  */
-typedef enum _RT_CUSTOMER_ID
-{
+typedef enum _RT_CUSTOMER_ID {
 	RT_CID_DEFAULT = 0,
 	RT_CID_8187_ALPHA0 = 1,
 	RT_CID_8187_SERCOMM_PS = 2,
@@ -93,8 +92,7 @@ typedef enum _RT_CUSTOMER_ID
 	RT_CID_DNI_BUFFALO = 46,/* add by page for NEC */
 } RT_CUSTOMER_ID, *PRT_CUSTOMER_ID;
 
-struct eeprom_priv
-{
+struct eeprom_priv {
 	u8 bautoload_fail_flag;
 	u8 bloadfile_fail_flag;
 	u8 bloadmac_fail_flag;
diff --git a/drivers/staging/rtl8723bs/include/rtw_event.h b/drivers/staging/rtl8723bs/include/rtw_event.h
index aeaabab780e5..560521c80ace 100644
--- a/drivers/staging/rtl8723bs/include/rtw_event.h
+++ b/drivers/staging/rtl8723bs/include/rtw_event.h
@@ -60,13 +60,11 @@ struct stadel_event {
  int mac_id;
 };
 
-struct addba_event
-{
+struct addba_event {
 	unsigned int tid;
 };
 
-struct wmm_event
-{
+struct wmm_event {
 	unsigned char wmm;
 };
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_ht.h b/drivers/staging/rtl8723bs/include/rtw_ht.h
index 4c224c128327..13489913f40b 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ht.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ht.h
@@ -8,8 +8,7 @@
 #define _RTW_HT_H_
 
 
-struct ht_priv
-{
+struct ht_priv {
 	u8 ht_option;
 	u8 ampdu_enable;/* for enable Tx A-MPDU */
 	u8 tx_amsdu_enable;/* for enable Tx A-MSDU */
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 14e4bce28856..cd98efccb321 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -101,8 +101,7 @@ enum DriverInterface {
 	DRIVER_CFG80211 = 2
 };
 
-enum SCAN_RESULT_TYPE
-{
+enum SCAN_RESULT_TYPE {
 	SCAN_RESULT_P2P_ONLY = 0,		/* 	Will return all the P2P devices. */
 	SCAN_RESULT_ALL = 1,			/* 	Will return all the scanned device, include AP. */
 	SCAN_RESULT_WFD_TYPE = 2		/* 	Will just return the correct WFD device. */
@@ -463,8 +462,7 @@ struct mlme_priv {
 
 void rtw_mlme_reset_auto_scan_int(struct adapter *adapter);
 
-struct hostapd_priv
-{
+struct hostapd_priv {
 	struct adapter *padapter;
 };
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 6c1ed6211c7e..14583799039f 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -115,8 +115,7 @@ extern unsigned char WMM_PARA_OUI[];
 /* 	If you just wnat to customize the acitions(scan period or join actions) about one of the channel plan, */
 /* 	customize them in RT_CHANNEL_INFO in the RT_CHANNEL_LIST. */
 /*  */
-typedef enum _RT_CHANNEL_DOMAIN
-{
+typedef enum _RT_CHANNEL_DOMAIN {
 	/*  old channel plan mapping ===== */
 	RT_CHANNEL_DOMAIN_FCC = 0x00,
 	RT_CHANNEL_DOMAIN_IC = 0x01,
@@ -184,8 +183,7 @@ typedef enum _RT_CHANNEL_DOMAIN
 	RT_CHANNEL_DOMAIN_REALTEK_DEFINE = 0x7F,
 } RT_CHANNEL_DOMAIN, *PRT_CHANNEL_DOMAIN;
 
-typedef enum _RT_CHANNEL_DOMAIN_2G
-{
+typedef enum _RT_CHANNEL_DOMAIN_2G {
 	RT_CHANNEL_DOMAIN_2G_WORLD = 0x00,		/* Worldwird 13 */
 	RT_CHANNEL_DOMAIN_2G_ETSI1 = 0x01,		/* Europe */
 	RT_CHANNEL_DOMAIN_2G_FCC1 = 0x02,		/* US */
@@ -197,8 +195,7 @@ typedef enum _RT_CHANNEL_DOMAIN_2G
 	RT_CHANNEL_DOMAIN_2G_MAX,
 } RT_CHANNEL_DOMAIN_2G, *PRT_CHANNEL_DOMAIN_2G;
 
-typedef enum _RT_CHANNEL_DOMAIN_5G
-{
+typedef enum _RT_CHANNEL_DOMAIN_5G {
 	RT_CHANNEL_DOMAIN_5G_NULL = 0x00,
 	RT_CHANNEL_DOMAIN_5G_ETSI1 = 0x01,		/* Europe */
 	RT_CHANNEL_DOMAIN_5G_ETSI2 = 0x02,		/* Australia, New Zealand */
@@ -241,32 +238,27 @@ typedef enum _RT_CHANNEL_DOMAIN_5G
 
 #define rtw_is_channel_plan_valid(chplan) (chplan < RT_CHANNEL_DOMAIN_MAX || chplan == RT_CHANNEL_DOMAIN_REALTEK_DEFINE)
 
-typedef struct _RT_CHANNEL_PLAN
-{
+typedef struct _RT_CHANNEL_PLAN {
 	unsigned char Channel[MAX_CHANNEL_NUM];
 	unsigned char Len;
 } RT_CHANNEL_PLAN, *PRT_CHANNEL_PLAN;
 
-typedef struct _RT_CHANNEL_PLAN_2G
-{
+typedef struct _RT_CHANNEL_PLAN_2G {
 	unsigned char Channel[MAX_CHANNEL_NUM_2G];
 	unsigned char Len;
 } RT_CHANNEL_PLAN_2G, *PRT_CHANNEL_PLAN_2G;
 
-typedef struct _RT_CHANNEL_PLAN_5G
-{
+typedef struct _RT_CHANNEL_PLAN_5G {
 	unsigned char Channel[MAX_CHANNEL_NUM_5G];
 	unsigned char Len;
 } RT_CHANNEL_PLAN_5G, *PRT_CHANNEL_PLAN_5G;
 
-typedef struct _RT_CHANNEL_PLAN_MAP
-{
+typedef struct _RT_CHANNEL_PLAN_MAP {
 	unsigned char Index2G;
 	unsigned char Index5G;
 } RT_CHANNEL_PLAN_MAP, *PRT_CHANNEL_PLAN_MAP;
 
-enum Associated_AP
-{
+enum Associated_AP {
 	atherosAP	= 0,
 	broadcomAP	= 1,
 	ciscoAP		= 2,
@@ -278,8 +270,7 @@ enum Associated_AP
 	maxAP,
 };
 
-typedef enum _HT_IOT_PEER
-{
+typedef enum _HT_IOT_PEER {
 	HT_IOT_PEER_UNKNOWN			= 0,
 	HT_IOT_PEER_REALTEK			= 1,
 	HT_IOT_PEER_REALTEK_92SE		= 2,
@@ -302,8 +293,7 @@ typedef enum _HT_IOT_PEER
 } HT_IOT_PEER_E, *PHTIOT_PEER_E;
 
 
-enum SCAN_STATE
-{
+enum SCAN_STATE {
 	SCAN_DISABLE = 0,
 	SCAN_START = 1,
 	SCAN_TXNULL = 2,
@@ -324,8 +314,7 @@ struct action_handler {
 	unsigned int (*func)(struct adapter *padapter, union recv_frame *precv_frame);
 };
 
-struct	ss_res
-{
+struct	ss_res {
 	int	state;
 	int	bss_cnt;
 	int	channel_idx;
@@ -355,8 +344,7 @@ struct	ss_res
 
 #define	WIFI_FW_LINKING_STATE		(WIFI_FW_AUTH_NULL | WIFI_FW_AUTH_STATE | WIFI_FW_AUTH_SUCCESS | WIFI_FW_ASSOC_STATE)
 
-struct FW_Sta_Info
-{
+struct FW_Sta_Info {
 	struct sta_info *psta;
 	u32 status;
 	u32 rx_pkt;
@@ -382,8 +370,7 @@ struct FW_Sta_Info
  * 4. Back to channel 1 for 300 milliseconds
  * 5. ... and so on, till survey done.
  */
-struct mlme_ext_info
-{
+struct mlme_ext_info {
 	u32 state;
 	u32 reauth_count;
 	u32 reassoc_count;
@@ -430,8 +417,7 @@ struct mlme_ext_info
 };
 
 /*  The channel information about this channel including joining, scanning, and power constraints. */
-typedef struct _RT_CHANNEL_INFO
-{
+typedef struct _RT_CHANNEL_INFO {
 	u8 		ChannelNum;		/*  The channel number. */
 	RT_SCAN_TYPE	ScanType;		/*  Scan type such as passive or active scan. */
 } RT_CHANNEL_INFO, *PRT_CHANNEL_INFO;
@@ -472,8 +458,7 @@ struct p2p_oper_class_map {
 	enum { BW20, BW40PLUS, BW40MINUS } bw;
 };
 
-struct mlme_ext_priv
-{
+struct mlme_ext_priv {
 	struct adapter	*padapter;
 	u8 mlmeext_init;
 	atomic_t		event_seq;
@@ -786,8 +771,7 @@ u8 run_in_thread_hdl(struct adapter *padapter, u8 *pbuf);
 #define GEN_DRV_CMD_HANDLER(size, cmd)	{size, &cmd ## _hdl},
 #define GEN_MLME_EXT_HANDLER(size, cmd)	{size, cmd},
 
-struct C2HEvent_Header
-{
+struct C2HEvent_Header {
 
 #ifdef __LITTLE_ENDIAN
 
@@ -805,8 +789,7 @@ struct C2HEvent_Header
 void rtw_dummy_event_callback(struct adapter *adapter, u8 *pbuf);
 void rtw_fwdbg_event_callback(struct adapter *adapter, u8 *pbuf);
 
-enum rtw_c2h_event
-{
+enum rtw_c2h_event {
 	GEN_EVT_CODE(_Read_MACREG) = 0, /*0*/
 	GEN_EVT_CODE(_Read_BBREG),
 	GEN_EVT_CODE(_Read_RFREG),
diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index e5a801b40582..4d156eab029c 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -10,8 +10,7 @@
 #define MAX_MP_XMITBUF_SZ	2048
 #define NR_MP_XMITFRAME		8
 
-struct mp_xmit_frame
-{
+struct mp_xmit_frame {
 	struct list_head	list;
 
 	struct pkt_attrib attrib;
@@ -25,8 +24,7 @@ struct mp_xmit_frame
 	uint mem[(MAX_MP_XMITBUF_SZ >> 2)];
 };
 
-struct mp_wiparam
-{
+struct mp_wiparam {
 	u32 bcompleted;
 	u32 act_type;
 	u32 io_offset;
@@ -35,8 +33,7 @@ struct mp_wiparam
 
 typedef void(*wi_act_func)(void* padapter);
 
-struct mp_tx
-{
+struct mp_tx {
 	u8 stop;
 	u32 count, sended;
 	u8 payload;
@@ -54,8 +51,7 @@ struct mp_tx
 #define MP_MAX_LINES_BYTES	256
 
 typedef void (*MPT_WORK_ITEM_HANDLER)(void *Adapter);
-typedef struct _MPT_CONTEXT
-{
+typedef struct _MPT_CONTEXT {
 	/*  Indicate if we have started Mass Production Test. */
 	bool			bMassProdTest;
 
@@ -205,8 +201,7 @@ enum {
 	MP_GET_TXPOWER_INX,
 };
 
-struct mp_priv
-{
+struct mp_priv {
 	struct adapter *papdater;
 
 	/* Testing Flag */
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 2bc922ce5ae1..3d999540e239 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -159,8 +159,7 @@ enum PS_DENY_REASON {
 };
 
 #ifdef CONFIG_PNO_SUPPORT
-struct pno_nlo_info
-{
+struct pno_nlo_info {
 	u32 fast_scan_period;				/* Fast scan period */
 	u32 ssid_num;				/* number of entry */
 	u32 slow_scan_period;			/* slow scan period */
@@ -179,16 +178,14 @@ struct pno_ssid_list {
 	struct pno_ssid	node[MAX_PNO_LIST_COUNT];
 };
 
-struct pno_scan_channel_info
-{
+struct pno_scan_channel_info {
 	u8 channel;
 	u8 tx_power;
 	u8 timeout;
 	u8 active;				/* set 1 means active scan, or pasivite scan. */
 };
 
-struct pno_scan_info
-{
+struct pno_scan_info {
 	u8 enableRFE;			/* Enable RFE */
 	u8 period_scan_time;		/* exclusive with fast_scan_period and slow_scan_period */
 	u8 periodScan;			/* exclusive with fast_scan_period and slow_scan_period */
@@ -202,8 +199,7 @@ struct pno_scan_info
 };
 #endif /* CONFIG_PNO_SUPPORT */
 
-struct pwrctrl_priv
-{
+struct pwrctrl_priv {
 	struct mutex lock;
 	volatile u8 rpwm; /*  requested power state for fw */
 	volatile u8 cpwm; /*  fw current power state. updated when 1. read from HCPWM 2. driver lowers power level */
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index a851b818ef0e..60bf00f35cae 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -40,8 +40,7 @@
 #define MAX_SUBFRAME_COUNT	64
 
 /* for Rx reordering buffer control */
-struct recv_reorder_ctrl
-{
+struct recv_reorder_ctrl {
 	struct adapter	*padapter;
 	u8 enable;
 	u16 indicate_seq;/* wstart_b, init_value = 0xffff */
@@ -112,8 +111,7 @@ struct phy_info {
 };
 
 #ifdef DBG_RX_SIGNAL_DISPLAY_RAW_DATA
-struct rx_raw_rssi
-{
+struct rx_raw_rssi {
 	u8 data_rate;
 	u8 pwdball;
 	s8 pwr_all;
@@ -292,8 +290,7 @@ struct sta_recv_priv {
 };
 
 
-struct recv_buf
-{
+struct recv_buf {
 	struct list_head list;
 
 	_lock recvbuf_lock;
@@ -331,8 +328,7 @@ struct recv_buf
 	len = (unsigned int)(tail - data);
 
 */
-struct recv_frame_hdr
-{
+struct recv_frame_hdr {
 	struct list_head	list;
 #ifndef CONFIG_BSD_RX_USE_MBUF
 	struct sk_buff	 *pkt;
diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index aa60b6f867dd..514c0799c34b 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -87,8 +87,7 @@ union Keytype {
 };
 
 
-typedef struct _RT_PMKID_LIST
-{
+typedef struct _RT_PMKID_LIST {
 	u8 				bUsed;
 	u8 				Bssid[6];
 	u8 				PMKID[16];
@@ -98,8 +97,7 @@ typedef struct _RT_PMKID_LIST
 } RT_PMKID_LIST, *PRT_PMKID_LIST;
 
 
-struct security_priv
-{
+struct security_priv {
 	u32   dot11AuthAlgrthm;		/*  802.11 auth, could be open, shared, 8021x and authswitch */
 	u32   dot11PrivacyAlgrthm;	/*  This specify the privacy for shared auth. algorithm. */
 
@@ -273,8 +271,7 @@ do {\
 #define ROL32(A, n)	(((A) << (n)) | (((A)>>(32-(n)))  & ((1UL << (n)) - 1)))
 #define ROR32(A, n)	ROL32((A), 32-(n))
 
-struct mic_data
-{
+struct mic_data {
 	u32  K0, K1;         /*  Key */
 	u32  L, R;           /*  Current state */
 	u32  M;              /*  Message accumulator (single word) */
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index cd2be0056aa1..196e70865c00 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -137,8 +137,7 @@ struct	hw_xmit	{
 };
 
 /* reduce size */
-struct pkt_attrib
-{
+struct pkt_attrib {
 	u8 type;
 	u8 subtype;
 	u8 bswenc;
@@ -246,8 +245,7 @@ int rtw_sctx_wait(struct submit_ctx *sctx, const char *msg);
 void rtw_sctx_done_err(struct submit_ctx **sctx, int status);
 void rtw_sctx_done(struct submit_ctx **sctx);
 
-struct xmit_buf
-{
+struct xmit_buf {
 	struct list_head	list;
 
 	struct adapter *padapter;
@@ -281,8 +279,7 @@ struct xmit_buf
 };
 
 
-struct xmit_frame
-{
+struct xmit_frame {
 	struct list_head	list;
 
 	struct pkt_attrib attrib;
@@ -314,8 +311,7 @@ struct tx_servq {
 };
 
 
-struct sta_xmit_priv
-{
+struct sta_xmit_priv {
 	_lock	lock;
 	sint	option;
 	sint	apsd_setting;	/* When bit mask is on, the associated edca queue supports APSD. */
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index f75df547a946..3a7dd2ed26a8 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -688,12 +688,9 @@ struct ieee80211_ht_addt_info {
 } __attribute__ ((packed));
 
 
-struct HT_caps_element
-{
-	union
-	{
-		struct
-		{
+struct HT_caps_element {
+	union {
+		struct {
 			__le16	HT_caps_info;
 			unsigned char AMPDU_para;
 			unsigned char MCS_rate[16];
@@ -705,29 +702,25 @@ struct HT_caps_element
 	} u;
 } __attribute__ ((packed));
 
-struct HT_info_element
-{
+struct HT_info_element {
 	unsigned char primary_channel;
 	unsigned char infos[5];
 	unsigned char MCS_rate[16];
 }  __attribute__ ((packed));
 
-struct AC_param
-{
+struct AC_param {
 	unsigned char 	ACI_AIFSN;
 	unsigned char 	CW;
 	__le16	TXOP_limit;
 }  __attribute__ ((packed));
 
-struct WMM_para_element
-{
+struct WMM_para_element {
 	unsigned char 	QoS_info;
 	unsigned char 	reserved;
 	struct AC_param	ac_param[4];
 }  __attribute__ ((packed));
 
-struct ADDBA_request
-{
+struct ADDBA_request {
 	unsigned char 	dialog_token;
 	__le16	BA_para_set;
 	__le16	BA_timeout_value;
@@ -1090,8 +1083,7 @@ enum P2P_WPSINFO {
 
 #define	P2P_PRIVATE_IOCTL_SET_LEN		64
 
-enum P2P_PROTO_WK_ID
-{
+enum P2P_PROTO_WK_ID {
 	P2P_FIND_PHASE_WK = 0,
 	P2P_RESTORE_STATE_WK = 1,
 	P2P_PRE_TX_PROVDISC_PROCESS_WK = 2,
diff --git a/drivers/staging/rtl8723bs/include/wlan_bssdef.h b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
index 723fc5b546ef..ea370b2bb8db 100644
--- a/drivers/staging/rtl8723bs/include/wlan_bssdef.h
+++ b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
@@ -127,8 +127,7 @@ struct ndis_801_11_ai_resfi {
 	u16 AssociationId;
 };
 
-typedef struct _NDIS_802_11_ASSOCIATION_INFORMATION
-{
+typedef struct _NDIS_802_11_ASSOCIATION_INFORMATION {
 	u32                   Length;
 	u16                  AvailableRequestFixedIEs;
 	struct ndis_802_11_ai_reqfi    RequestFixedIEs;
@@ -146,8 +145,7 @@ enum NDIS_802_11_RELOAD_DEFAULTS {
 
 
 /*  Key mapping keys require a BSSID */
-typedef struct _NDIS_802_11_KEY
-{
+typedef struct _NDIS_802_11_KEY {
 	u32           Length;             /*  Length of this structure */
 	u32           KeyIndex;
 	u32           KeyLength;          /*  length of key in bytes */
@@ -156,8 +154,7 @@ typedef struct _NDIS_802_11_KEY
 	u8           KeyMaterial[32];     /*  variable length depending on above field */
 } NDIS_802_11_KEY, *PNDIS_802_11_KEY;
 
-typedef struct _NDIS_802_11_REMOVE_KEY
-{
+typedef struct _NDIS_802_11_REMOVE_KEY {
 	u32                   Length;        /*  Length of this structure */
 	u32                   KeyIndex;
 	NDIS_802_11_MAC_ADDRESS BSSID;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
