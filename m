Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA1015B48F
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Feb 2020 00:16:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C30BC2094E;
	Wed, 12 Feb 2020 23:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b+oJ5rYldZoW; Wed, 12 Feb 2020 23:16:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9464020486;
	Wed, 12 Feb 2020 23:16:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 232271BF325
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 23:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 137A787E0B
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 23:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veFDYU16TxtH for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 23:16:14 +0000 (UTC)
X-Greylist: delayed 00:07:34 by SQLgrey-1.7.6
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 48E9987DB2
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 23:16:14 +0000 (UTC)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id F0185F93;
 Wed, 12 Feb 2020 18:08:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Wed, 12 Feb 2020 18:08:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wybcz.pl; h=date
 :from:to:cc:subject:message-id:mime-version:content-type; s=fm2;
 bh=jEZRtOEMp8HGOWg4NdYQjZjh3JKzfl0cGFI4DrEA4aQ=; b=o7uVU+PeoHbx
 Dlrf7uuoQRpn9QG9e+ydUDOcKzaOeTwkwgGEqhh+pDA3IfRkMpFcc1Dtm7nGr5qr
 ggs2abIbT8TD9UpzbgBNnAyEi7ugKW5a+0B2Tr93fiKDZ6SVNFiAt3854Y/GSJMP
 qwtxmKTmFLdfQCeYJCAsDCS6JCrVKC4BmofDmAWm2cTUsN7GW4vjaS6dh3SRxSdF
 5K0d9bLJOsscnX72oaQpO9gl/XpAzjxmKeVcu22Fnnz40AFH+r5cGus4kyfQtvC5
 NG7kdrpy0b09hT5E7CpNvPkZFF4rRg4xya/W/O3Rmi2Y9xMnn9RHta29xhsquZCn
 U3lk/c96Hw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=jEZRtOEMp8HGOWg4NdYQjZjh3JKzf
 l0cGFI4DrEA4aQ=; b=BN1FLhCOY/zRRLJiOUM9/ESmovsb8X8kRGyK+NTBL6EJN
 me0xIX9IRT5R4XohRxf27DYCsySXm9EaLRdBCsE5lbmT30I9w/fk+HR7SgL9/5eK
 Q2+NUn7K+S0gZl8duWx7nO7Y6o+DKvrr8tp0rOTGZnK5prMvOUnDD+JEmvp7sqec
 VlIkJCLSP25TEMsr+FqZV8qSOI5i0KknTmXwuwsOZ9uxAC8wPGk5c1H4wvhyCWnK
 kwD3BpGBXPSM5qbVd2DzUmaevM3QqHWSbpyfYTXq61p77nZ8oqFzKgHBIuNWI7TP
 7locMBrr8T488Y8ByEjgMGB1lQrYM8XHAWGplFsYQ==
X-ME-Sender: <xms:doVEXrSll2UtkbxUguHktGr8du1QI9MkGZef9w-mg-g1XW0Bq1QfFw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieejgddtiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkgggtugesthdtredttddtvdenucfhrhhomhepnfhukhgrshiiucfu
 iigtiigvshhnhicuoehluhhkseifhigstgiirdhplheqnecukfhppeelgedrudejvddrvd
 egtddruddvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehluhhkseifhigstgiirdhplh
X-ME-Proxy: <xmx:d4VEXhA7hvul0xu-SkOkGXATZA6J0sV3wJ0x4dSia6JiBZiCJXIPJw>
 <xmx:d4VEXr1yosVmb6iPTit9pfU240IsVL6w-kGCFmabmkz6KbkTTGpHsQ>
 <xmx:d4VEXvWxe9T2gZWaudR3XoWqV3swDnOWui-xk1PCS3SFK2yXh_OAaA>
 <xmx:d4VEXpQVX3jSHKVqO0YAuvWy52kVhVzZTX3f1PLGp_n2DF4njQ-Mig>
Received: from zoidberg.wybcz.pl (94-172-240-120.dynamic.chello.pl
 [94.172.240.120])
 by mail.messagingengine.com (Postfix) with ESMTPA id BD650328005A;
 Wed, 12 Feb 2020 18:08:37 -0500 (EST)
Date: Thu, 13 Feb 2020 00:08:34 +0100
From: Lukasz Szczesny <luk@wybcz.pl>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: rtl8723bs: Fix spacing issues
Message-ID: <20200212230834.GA294323@localhost>
MIME-Version: 1.0
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes spacing issues reported by checkpatch.

Signed-off-by: Lukasz Szczesny <luk@wybcz.pl>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   2 +-
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h  |   6 +-
 drivers/staging/rtl8723bs/hal/odm.h           |   2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |   2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |   4 +-
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    |   2 +-
 drivers/staging/rtl8723bs/include/HalVerDef.h |  32 +-
 drivers/staging/rtl8723bs/include/cmd_osdep.h |   4 +-
 drivers/staging/rtl8723bs/include/drv_types.h |  10 +-
 drivers/staging/rtl8723bs/include/hal_com.h   |  98 +++---
 .../staging/rtl8723bs/include/hal_com_h2c.h   |   8 +-
 .../rtl8723bs/include/hal_com_phycfg.h        |   2 +-
 .../staging/rtl8723bs/include/hal_com_reg.h   |  14 +-
 drivers/staging/rtl8723bs/include/hal_intf.h  |   2 +-
 drivers/staging/rtl8723bs/include/hal_phy.h   |   2 +-
 .../staging/rtl8723bs/include/hal_phy_cfg.h   |   4 +-
 .../staging/rtl8723bs/include/hal_pwr_seq.h   |   4 +-
 drivers/staging/rtl8723bs/include/ieee80211.h |  22 +-
 .../staging/rtl8723bs/include/osdep_intf.h    |   2 +-
 .../staging/rtl8723bs/include/osdep_service.h |  10 +-
 .../rtl8723bs/include/osdep_service_linux.h   |   2 +-
 .../staging/rtl8723bs/include/recv_osdep.h    |   4 +-
 .../staging/rtl8723bs/include/rtl8723b_cmd.h  |   2 +-
 .../staging/rtl8723bs/include/rtl8723b_rf.h   |   2 +-
 .../staging/rtl8723bs/include/rtl8723b_xmit.h |   2 +-
 .../staging/rtl8723bs/include/rtw_byteorder.h |   2 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   | 112 +++----
 drivers/staging/rtl8723bs/include/rtw_debug.h |  28 +-
 .../staging/rtl8723bs/include/rtw_eeprom.h    |   2 +-
 drivers/staging/rtl8723bs/include/rtw_efuse.h |   8 +-
 drivers/staging/rtl8723bs/include/rtw_event.h |   2 +-
 drivers/staging/rtl8723bs/include/rtw_ht.h    |  12 +-
 drivers/staging/rtl8723bs/include/rtw_io.h    |   6 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h  |  66 ++---
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  40 +--
 drivers/staging/rtl8723bs/include/rtw_mp.h    |  16 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h  |  18 +-
 .../staging/rtl8723bs/include/rtw_security.h  |  30 +-
 drivers/staging/rtl8723bs/include/rtw_xmit.h  |  26 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |   8 +-
 drivers/staging/rtl8723bs/include/wifi.h      |   8 +-
 .../staging/rtl8723bs/include/xmit_osdep.h    |   4 +-
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 124 ++++----
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 280 +++++++++---------
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |   6 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  12 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |   8 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |  12 +-
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c |   6 +-
 49 files changed, 540 insertions(+), 540 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 13a9b54b4561..61a9bf61b976 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -201,7 +201,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 	return res;
 }
 
-static void c2h_wk_callback(_workitem *work);
+static void c2h_wk_callback(_workitem * work);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
diff --git a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
index 7150d54d49ab..c758d143c57f 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
@@ -44,14 +44,14 @@
 #define BTC_ANT_WIFI_AT_CPL_MAIN	0
 #define BTC_ANT_WIFI_AT_CPL_AUX		1
 
-typedef enum _BTC_POWERSAVE_TYPE{
+typedef enum _BTC_POWERSAVE_TYPE {
 	BTC_PS_WIFI_NATIVE	= 0,	/*  wifi original power save behavior */
 	BTC_PS_LPS_ON		= 1,
 	BTC_PS_LPS_OFF		= 2,
 	BTC_PS_MAX
 } BTC_POWERSAVE_TYPE, *PBTC_POWERSAVE_TYPE;
 
-typedef enum _BTC_BT_REG_TYPE{
+typedef enum _BTC_BT_REG_TYPE {
 	BTC_BT_REG_RF		= 0,
 	BTC_BT_REG_MODEM	= 1,
 	BTC_BT_REG_BLUEWIZE	= 2,
@@ -60,7 +60,7 @@ typedef enum _BTC_BT_REG_TYPE{
 	BTC_BT_REG_MAX
 } BTC_BT_REG_TYPE, *PBTC_BT_REG_TYPE;
 
-typedef enum _BTC_CHIP_INTERFACE{
+typedef enum _BTC_CHIP_INTERFACE {
 	BTC_INTF_UNKNOWN	= 0,
 	BTC_INTF_PCI		= 1,
 	BTC_INTF_USB		= 2,
diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index fba3b9e1491b..b77d1fe33a28 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -849,7 +849,7 @@ typedef struct _ODM_PATH_DIVERSITY_ {
 	u32 PathB_Cnt[ODM_ASSOCIATE_ENTRY_NUM];
 } PATHDIV_T, *pPATHDIV_T;
 
-typedef enum _BASEBAND_CONFIG_PHY_REG_PG_VALUE_TYPE{
+typedef enum _BASEBAND_CONFIG_PHY_REG_PG_VALUE_TYPE {
 	PHY_REG_PG_RELATIVE_VALUE = 0,
 	PHY_REG_PG_EXACT_VALUE = 1
 } PHY_REG_PG_TYPE;
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 71919a3d81ab..9950934c3ab3 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -106,7 +106,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 		/*  (2)PWDB, Average PWDB cacluated by hardware (for rate adaptive) */
 		/*  */
 
-		cck_agc_rpt =  pPhyStaRpt->cck_agc_rpt_ofdm_cfosho_a ;
+		cck_agc_rpt = pPhyStaRpt->cck_agc_rpt_ofdm_cfosho_a;
 
 		/* 2011.11.28 LukeLee: 88E use different LNA & VGA gain table */
 		/* The RSSI formula should be modified according to the gain table */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 71b5a50b6ef6..a69e8ae16565 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -146,7 +146,7 @@ static void ConstructBeacon(struct adapter *padapter, u8 *pframe, u32 *pLength)
 	SetFrameSubType(pframe, WIFI_BEACON);
 
 	pframe += sizeof(struct ieee80211_hdr_3addr);
-	pktlen = sizeof (struct ieee80211_hdr_3addr);
+	pktlen = sizeof(struct ieee80211_hdr_3addr);
 
 	/* timestamp will be inserted by hardware */
 	pframe += 8;
@@ -1652,7 +1652,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 
 	TotalPacketLen = BufIndex-TxDescLen + 256; /* extension memory for FW */
 #else
-	TotalPacketLen = BufIndex-TxDescLen + sizeof (union pn48); /* IV len */
+	TotalPacketLen = BufIndex - TxDescLen + sizeof(union pn48); /* IV len */
 #endif /* CONFIG_GTK_OL */
 	} else
 #endif /* CONFIG_WOWLAN */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index b6d56cfb0a19..44799c4a9f35 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -282,7 +282,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 
 				/*  check xmit_buf size enough or not */
 				txlen = txdesc_size + rtw_wlan_pkt_size(pxmitframe);
-				if(	!pxmitbuf ||
+				if (!pxmitbuf ||
 					((_RND(pxmitbuf->len, 8) + txlen) > max_xmit_len) ||
 					(k >= (rtw_hal_sdio_max_txoqt_free_space(padapter) - 1))
 				) {
diff --git a/drivers/staging/rtl8723bs/include/HalVerDef.h b/drivers/staging/rtl8723bs/include/HalVerDef.h
index 160f34efbfd5..c548fb126683 100644
--- a/drivers/staging/rtl8723bs/include/HalVerDef.h
+++ b/drivers/staging/rtl8723bs/include/HalVerDef.h
@@ -20,7 +20,7 @@ typedef enum tag_HAL_IC_Type_Definition
 	CHIP_8821	=	7,
 	CHIP_8723B	=	8,
 	CHIP_8192E	=	9,
-}HAL_IC_TYPE_E;
+} HAL_IC_TYPE_E;
 
 /* HAL_CHIP_TYPE_E */
 typedef enum tag_HAL_CHIP_Type_Definition
@@ -28,7 +28,7 @@ typedef enum tag_HAL_CHIP_Type_Definition
 	TEST_CHIP		=	0,
 	NORMAL_CHIP	=	1,
 	FPGA			=	2,
-}HAL_CHIP_TYPE_E;
+} HAL_CHIP_TYPE_E;
 
 /* HAL_CUT_VERSION_E */
 typedef enum tag_HAL_Cut_Version_Definition
@@ -44,7 +44,7 @@ typedef enum tag_HAL_Cut_Version_Definition
 	I_CUT_VERSION		=	8,
 	J_CUT_VERSION		=	9,
 	K_CUT_VERSION		=	10,
-}HAL_CUT_VERSION_E;
+} HAL_CUT_VERSION_E;
 
 /*  HAL_Manufacturer */
 typedef enum tag_HAL_Manufacturer_Version_Definition
@@ -52,7 +52,7 @@ typedef enum tag_HAL_Manufacturer_Version_Definition
 	CHIP_VENDOR_TSMC	=	0,
 	CHIP_VENDOR_UMC		=	1,
 	CHIP_VENDOR_SMIC	=	2,
-}HAL_VENDOR_E;
+} HAL_VENDOR_E;
 
 typedef enum tag_HAL_RF_Type_Definition
 {
@@ -64,7 +64,7 @@ typedef enum tag_HAL_RF_Type_Definition
 	RF_TYPE_3T3R	=	5,
 	RF_TYPE_3T4R	=	6,
 	RF_TYPE_4T4R	=	7,
-}HAL_RF_TYPE_E;
+} HAL_RF_TYPE_E;
 
 typedef	struct tag_HAL_VERSION
 {
@@ -74,14 +74,14 @@ typedef	struct tag_HAL_VERSION
 	HAL_VENDOR_E		VendorType;
 	HAL_RF_TYPE_E		RFType;
 	u8 			ROMVer;
-}HAL_VERSION,*PHAL_VERSION;
+} HAL_VERSION, *PHAL_VERSION;
 
 /* VERSION_8192C			VersionID; */
 /* HAL_VERSION			VersionID; */
 
 /*  Get element */
-#define GET_CVID_IC_TYPE(version)			((HAL_IC_TYPE_E)((version).ICType)	)
-#define GET_CVID_CHIP_TYPE(version)			((HAL_CHIP_TYPE_E)((version).ChipType)	)
+#define GET_CVID_IC_TYPE(version)			((HAL_IC_TYPE_E)((version).ICType))
+#define GET_CVID_CHIP_TYPE(version)			((HAL_CHIP_TYPE_E)((version).ChipType))
 #define GET_CVID_RF_TYPE(version)			((HAL_RF_TYPE_E)((version).RFType))
 #define GET_CVID_MANUFACTUER(version)		((HAL_VENDOR_E)((version).VendorType))
 #define GET_CVID_CUT_VERSION(version)		((HAL_CUT_VERSION_E)((version).CUTVersion))
@@ -93,8 +93,8 @@ typedef	struct tag_HAL_VERSION
 /* HAL_VERSION VersionID */
 
 /* HAL_CHIP_TYPE_E */
-#define IS_TEST_CHIP(version)			((GET_CVID_CHIP_TYPE(version) ==TEST_CHIP)? true: false)
-#define IS_NORMAL_CHIP(version)			((GET_CVID_CHIP_TYPE(version) ==NORMAL_CHIP)? true: false)
+#define IS_TEST_CHIP(version)			((GET_CVID_CHIP_TYPE(version) == TEST_CHIP) ? true : false)
+#define IS_NORMAL_CHIP(version)			((GET_CVID_CHIP_TYPE(version) == NORMAL_CHIP) ? true : false)
 
 /* HAL_CUT_VERSION_E */
 #define IS_A_CUT(version)				((GET_CVID_CUT_VERSION(version) == A_CUT_VERSION) ? true : false)
@@ -107,13 +107,13 @@ typedef	struct tag_HAL_VERSION
 #define IS_K_CUT(version)				((GET_CVID_CUT_VERSION(version) == K_CUT_VERSION) ? true : false)
 
 /* HAL_VENDOR_E */
-#define IS_CHIP_VENDOR_TSMC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_TSMC)? true: false)
-#define IS_CHIP_VENDOR_UMC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_UMC)? true: false)
-#define IS_CHIP_VENDOR_SMIC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_SMIC)? true: false)
+#define IS_CHIP_VENDOR_TSMC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_TSMC) ? true : false)
+#define IS_CHIP_VENDOR_UMC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_UMC) ? true : false)
+#define IS_CHIP_VENDOR_SMIC(version)	((GET_CVID_MANUFACTUER(version) == CHIP_VENDOR_SMIC) ? true : false)
 
 /* HAL_RF_TYPE_E */
-#define IS_1T1R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_1T1R)? true : false)
-#define IS_1T2R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_1T2R)? true : false)
-#define IS_2T2R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_2T2R)? true : false)
+#define IS_1T1R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_1T1R) ? true : false)
+#define IS_1T2R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_1T2R) ? true : false)
+#define IS_2T2R(version)					((GET_CVID_RF_TYPE(version) == RF_TYPE_2T2R) ? true : false)
 
 #endif
diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
index d3af9f44ad59..5506f513dc01 100644
--- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
+++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
@@ -10,8 +10,8 @@
 
 int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv);
-extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
-extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
+extern void _rtw_free_evt_priv(struct	evt_priv *pevtpriv);
+extern void _rtw_free_cmd_priv(struct	cmd_priv *pcmdpriv);
 int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
 extern struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue);
 
diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 6ec9087f2eb1..dba75216cbfe 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -77,7 +77,7 @@ enum _NIC_VERSION {
 #define SPEC_DEV_ID_RF_CONFIG_2T2R BIT(4)
 #define SPEC_DEV_ID_ASSIGN_IFNAME BIT(5)
 
-struct specific_device_id{
+struct specific_device_id {
 
 	u32 	flags;
 
@@ -151,8 +151,8 @@ struct registry_priv
 
 	u8 lowrate_two_xmit;
 
-	u8 rf_config ;
-	u8 low_power ;
+	u8 rf_config;
+	u8 low_power;
 
 	u8 wifi_spec;/*  !turbo_mode */
 
@@ -498,11 +498,11 @@ enum ADAPTER_TYPE {
 	MAX_ADAPTER = 0xFF,
 };
 
-typedef enum _DRIVER_STATE{
+typedef enum _DRIVER_STATE {
 	DRIVER_NORMAL = 0,
 	DRIVER_DISAPPEAR = 1,
 	DRIVER_REPLACE_DONGLE = 2,
-}DRIVER_STATE;
+} DRIVER_STATE;
 
 struct adapter {
 	int	DriverState;/*  for disable driver using module, use dongle to replace module. */
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index f5c3ce5da70c..a46626d0509a 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -111,54 +111,54 @@
 #define DESC_RATEVHTSS4MCS9		0x53
 
 #define HDATA_RATE(rate)\
-(rate ==DESC_RATE1M)?"CCK_1M":\
-(rate ==DESC_RATE2M)?"CCK_2M":\
-(rate ==DESC_RATE5_5M)?"CCK5_5M":\
-(rate ==DESC_RATE11M)?"CCK_11M":\
-(rate ==DESC_RATE6M)?"OFDM_6M":\
-(rate ==DESC_RATE9M)?"OFDM_9M":\
-(rate ==DESC_RATE12M)?"OFDM_12M":\
-(rate ==DESC_RATE18M)?"OFDM_18M":\
-(rate ==DESC_RATE24M)?"OFDM_24M":\
-(rate ==DESC_RATE36M)?"OFDM_36M":\
-(rate ==DESC_RATE48M)?"OFDM_48M":\
-(rate ==DESC_RATE54M)?"OFDM_54M":\
-(rate ==DESC_RATEMCS0)?"MCS0":\
-(rate ==DESC_RATEMCS1)?"MCS1":\
-(rate ==DESC_RATEMCS2)?"MCS2":\
-(rate ==DESC_RATEMCS3)?"MCS3":\
-(rate ==DESC_RATEMCS4)?"MCS4":\
-(rate ==DESC_RATEMCS5)?"MCS5":\
-(rate ==DESC_RATEMCS6)?"MCS6":\
-(rate ==DESC_RATEMCS7)?"MCS7":\
-(rate ==DESC_RATEMCS8)?"MCS8":\
-(rate ==DESC_RATEMCS9)?"MCS9":\
-(rate ==DESC_RATEMCS10)?"MCS10":\
-(rate ==DESC_RATEMCS11)?"MCS11":\
-(rate ==DESC_RATEMCS12)?"MCS12":\
-(rate ==DESC_RATEMCS13)?"MCS13":\
-(rate ==DESC_RATEMCS14)?"MCS14":\
-(rate ==DESC_RATEMCS15)?"MCS15":\
-(rate ==DESC_RATEVHTSS1MCS0)?"VHTSS1MCS0":\
-(rate ==DESC_RATEVHTSS1MCS1)?"VHTSS1MCS1":\
-(rate ==DESC_RATEVHTSS1MCS2)?"VHTSS1MCS2":\
-(rate ==DESC_RATEVHTSS1MCS3)?"VHTSS1MCS3":\
-(rate ==DESC_RATEVHTSS1MCS4)?"VHTSS1MCS4":\
-(rate ==DESC_RATEVHTSS1MCS5)?"VHTSS1MCS5":\
-(rate ==DESC_RATEVHTSS1MCS6)?"VHTSS1MCS6":\
-(rate ==DESC_RATEVHTSS1MCS7)?"VHTSS1MCS7":\
-(rate ==DESC_RATEVHTSS1MCS8)?"VHTSS1MCS8":\
-(rate ==DESC_RATEVHTSS1MCS9)?"VHTSS1MCS9":\
-(rate ==DESC_RATEVHTSS2MCS0)?"VHTSS2MCS0":\
-(rate ==DESC_RATEVHTSS2MCS1)?"VHTSS2MCS1":\
-(rate ==DESC_RATEVHTSS2MCS2)?"VHTSS2MCS2":\
-(rate ==DESC_RATEVHTSS2MCS3)?"VHTSS2MCS3":\
-(rate ==DESC_RATEVHTSS2MCS4)?"VHTSS2MCS4":\
-(rate ==DESC_RATEVHTSS2MCS5)?"VHTSS2MCS5":\
-(rate ==DESC_RATEVHTSS2MCS6)?"VHTSS2MCS6":\
-(rate ==DESC_RATEVHTSS2MCS7)?"VHTSS2MCS7":\
-(rate ==DESC_RATEVHTSS2MCS8)?"VHTSS2MCS8":\
-(rate ==DESC_RATEVHTSS2MCS9)?"VHTSS2MCS9":"UNKNOW"
+(rate == DESC_RATE1M) ? "CCK_1M" : \
+(rate == DESC_RATE2M) ? "CCK_2M" : \
+(rate == DESC_RATE5_5M) ? "CCK5_5M" : \
+(rate == DESC_RATE11M) ? "CCK_11M" : \
+(rate == DESC_RATE6M) ? "OFDM_6M" : \
+(rate == DESC_RATE9M) ? "OFDM_9M" : \
+(rate == DESC_RATE12M) ? "OFDM_12M" : \
+(rate == DESC_RATE18M) ? "OFDM_18M" : \
+(rate == DESC_RATE24M) ? "OFDM_24M" : \
+(rate == DESC_RATE36M) ? "OFDM_36M" : \
+(rate == DESC_RATE48M) ? "OFDM_48M" : \
+(rate == DESC_RATE54M) ? "OFDM_54M" : \
+(rate == DESC_RATEMCS0) ? "MCS0" : \
+(rate == DESC_RATEMCS1) ? "MCS1" : \
+(rate == DESC_RATEMCS2) ? "MCS2" : \
+(rate == DESC_RATEMCS3) ? "MCS3" : \
+(rate == DESC_RATEMCS4) ? "MCS4" : \
+(rate == DESC_RATEMCS5) ? "MCS5" : \
+(rate == DESC_RATEMCS6) ? "MCS6" : \
+(rate == DESC_RATEMCS7) ? "MCS7" : \
+(rate == DESC_RATEMCS8) ? "MCS8" : \
+(rate == DESC_RATEMCS9) ? "MCS9" : \
+(rate == DESC_RATEMCS10) ? "MCS10" : \
+(rate == DESC_RATEMCS11) ? "MCS11" : \
+(rate == DESC_RATEMCS12) ? "MCS12" : \
+(rate == DESC_RATEMCS13) ? "MCS13" : \
+(rate == DESC_RATEMCS14) ? "MCS14" : \
+(rate == DESC_RATEMCS15) ? "MCS15" : \
+(rate == DESC_RATEVHTSS1MCS0) ? "VHTSS1MCS0" : \
+(rate == DESC_RATEVHTSS1MCS1) ? "VHTSS1MCS1" : \
+(rate == DESC_RATEVHTSS1MCS2) ? "VHTSS1MCS2" : \
+(rate == DESC_RATEVHTSS1MCS3) ? "VHTSS1MCS3" : \
+(rate == DESC_RATEVHTSS1MCS4) ? "VHTSS1MCS4" : \
+(rate == DESC_RATEVHTSS1MCS5) ? "VHTSS1MCS5" : \
+(rate == DESC_RATEVHTSS1MCS6) ? "VHTSS1MCS6" : \
+(rate == DESC_RATEVHTSS1MCS7) ? "VHTSS1MCS7" : \
+(rate == DESC_RATEVHTSS1MCS8) ? "VHTSS1MCS8" : \
+(rate == DESC_RATEVHTSS1MCS9) ? "VHTSS1MCS9" : \
+(rate == DESC_RATEVHTSS2MCS0) ? "VHTSS2MCS0" : \
+(rate == DESC_RATEVHTSS2MCS1) ? "VHTSS2MCS1" : \
+(rate == DESC_RATEVHTSS2MCS2) ? "VHTSS2MCS2" : \
+(rate == DESC_RATEVHTSS2MCS3) ? "VHTSS2MCS3" : \
+(rate == DESC_RATEVHTSS2MCS4) ? "VHTSS2MCS4" : \
+(rate == DESC_RATEVHTSS2MCS5) ? "VHTSS2MCS5" : \
+(rate == DESC_RATEVHTSS2MCS6) ? "VHTSS2MCS6" : \
+(rate == DESC_RATEVHTSS2MCS7) ? "VHTSS2MCS7" : \
+(rate == DESC_RATEVHTSS2MCS8) ? "VHTSS2MCS8" : \
+(rate == DESC_RATEVHTSS2MCS9) ? "VHTSS2MCS9" : "UNKNOW"
 
 
 enum{
@@ -235,7 +235,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf);
 u8 rtw_get_mgntframe_raid(struct adapter *adapter, unsigned char network_type);
 void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *psta);
 
-void hw_var_port_switch (struct adapter *adapter);
+void hw_var_port_switch(struct adapter *adapter);
 
 void SetHwReg(struct adapter *padapter, u8 variable, u8 *val);
 void GetHwReg(struct adapter *padapter, u8 variable, u8 *val);
diff --git a/drivers/staging/rtl8723bs/include/hal_com_h2c.h b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
index 7dbae5e2050e..b951bc288b89 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_h2c.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
@@ -11,7 +11,7 @@
 /*     H2C CMD DEFINITION    ------------------------------------------------ */
 /*  */
 /*  88e, 8723b, 8812, 8821, 92e use the same FW code base */
-enum h2c_cmd{
+enum h2c_cmd {
 	/* Common Class: 000 */
 	H2C_RSVD_PAGE = 0x00,
 	H2C_MEDIA_STATUS_RPT = 0x01,
@@ -96,9 +96,9 @@ enum h2c_cmd{
 #define H2C_PROBERSP_RSVDPAGE_LEN	5
 
 #ifdef CONFIG_WOWLAN
-#define eqMacAddr(a, b)		(((a)[0]==(b)[0] && (a)[1]==(b)[1] && (a)[2]==(b)[2] && (a)[3]==(b)[3] && (a)[4]==(b)[4] && (a)[5]==(b)[5]) ? 1:0)
-#define cpMacAddr(des, src)	((des)[0]=(src)[0], (des)[1]=(src)[1], (des)[2]=(src)[2], (des)[3]=(src)[3], (des)[4]=(src)[4], (des)[5]=(src)[5])
-#define cpIpAddr(des, src)	((des)[0]=(src)[0], (des)[1]=(src)[1], (des)[2]=(src)[2], (des)[3]=(src)[3])
+#define eqMacAddr(a, b)		(((a)[0] == (b)[0] && (a)[1] == (b)[1] && (a)[2] == (b)[2] && (a)[3] == (b)[3] && (a)[4] == (b)[4] && (a)[5] == (b)[5]) ? 1 : 0)
+#define cpMacAddr(des, src)	((des)[0] = (src)[0], (des)[1] = (src)[1], (des)[2] = (src)[2], (des)[3] = (src)[3], (des)[4] = (src)[4], (des)[5] = (src)[5])
+#define cpIpAddr(des, src)	((des)[0] = (src)[0], (des)[1] = (src)[1], (des)[2] = (src)[2], (des)[3] = (src)[3])
 
 /*  */
 /*  ARP packet */
diff --git a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
index e9a3006a3e20..9fff4aa36546 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
@@ -177,7 +177,7 @@ u8 		Channel,
 	bool		*bIn24G
 	);
 
-s8 phy_get_tx_pwr_lmt (struct adapter *adapter, u32 RegPwrTblSel,
+s8 phy_get_tx_pwr_lmt(struct adapter *adapter, u32 RegPwrTblSel,
 			enum BAND_TYPE Band, enum CHANNEL_WIDTH Bandwidth,
 u8 		RfPath,
 u8 		DataRate,
diff --git a/drivers/staging/rtl8723bs/include/hal_com_reg.h b/drivers/staging/rtl8723bs/include/hal_com_reg.h
index 31a187b35810..37fa59a352d6 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_reg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_reg.h
@@ -707,13 +707,13 @@ Default: 00b.
 
 
 /*  ALL CCK Rate */
-#define	RATE_ALL_CCK				RATR_1M|RATR_2M|RATR_55M|RATR_11M
-#define	RATE_ALL_OFDM_AG			RATR_6M|RATR_9M|RATR_12M|RATR_18M|RATR_24M|\
-						RATR_36M|RATR_48M|RATR_54M
-#define	RATE_ALL_OFDM_1SS			RATR_MCS0|RATR_MCS1|RATR_MCS2|RATR_MCS3 |\
-						RATR_MCS4|RATR_MCS5|RATR_MCS6	|RATR_MCS7
-#define	RATE_ALL_OFDM_2SS			RATR_MCS8|RATR_MCS9	|RATR_MCS10|RATR_MCS11|\
-						RATR_MCS12|RATR_MCS13|RATR_MCS14|RATR_MCS15
+#define	RATE_ALL_CCK				RATR_1M | RATR_2M | RATR_55M | RATR_11M
+#define	RATE_ALL_OFDM_AG			RATR_6M | RATR_9M | RATR_12M | RATR_18M | RATR_24M |\
+						RATR_36M | RATR_48M | RATR_54M
+#define	RATE_ALL_OFDM_1SS			RATR_MCS0 | RATR_MCS1 | RATR_MCS2 | RATR_MCS3 |\
+						RATR_MCS4 | RATR_MCS5 | RATR_MCS6 | RATR_MCS7
+#define	RATE_ALL_OFDM_2SS			RATR_MCS8 | RATR_MCS9 | RATR_MCS10 | RATR_MCS11 |\
+						RATR_MCS12 | RATR_MCS13 | RATR_MCS14 | RATR_MCS15
 
 #define RATE_BITMAP_ALL			0xFFFFF
 
diff --git a/drivers/staging/rtl8723bs/include/hal_intf.h b/drivers/staging/rtl8723bs/include/hal_intf.h
index 24926ebaf950..1de5acaef8ff 100644
--- a/drivers/staging/rtl8723bs/include/hal_intf.h
+++ b/drivers/staging/rtl8723bs/include/hal_intf.h
@@ -296,7 +296,7 @@ enum wowlan_subcode {
 	WOWLAN_AP_DISABLE		= 13
 };
 
-struct wowlan_ioctl_param{
+struct wowlan_ioctl_param {
 	unsigned int subcode;
 	unsigned int subcode_value;
 	unsigned int wakeup_reason;
diff --git a/drivers/staging/rtl8723bs/include/hal_phy.h b/drivers/staging/rtl8723bs/include/hal_phy.h
index c6b9bf139ef6..ed0caa0574e3 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy.h
@@ -25,7 +25,7 @@
 #define	RF6052_MAX_REG_92C			0x7F
 
 #define	RF6052_MAX_REG	\
-		(RF6052_MAX_REG_88E > RF6052_MAX_REG_92C) ? RF6052_MAX_REG_88E: RF6052_MAX_REG_92C
+		(RF6052_MAX_REG_88E > RF6052_MAX_REG_92C) ? RF6052_MAX_REG_88E : RF6052_MAX_REG_92C
 
 #define GET_RF6052_REAL_MAX_REG(_Adapter)	RF6052_MAX_REG_92C
 
diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index b40868b2e76f..419ddb0733aa 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -58,9 +58,9 @@ u32 			Data
 	);
 
 /* MAC/BB/RF HAL config */
-int PHY_BBConfig8723B(struct adapter *Adapter	);
+int PHY_BBConfig8723B(struct adapter *Adapter);
 
-int PHY_RFConfig8723B(struct adapter *Adapter	);
+int PHY_RFConfig8723B(struct adapter *Adapter);
 
 s32 PHY_MACConfig8723B(struct adapter *padapter);
 
diff --git a/drivers/staging/rtl8723bs/include/hal_pwr_seq.h b/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
index 130a94879805..28aca047dce6 100644
--- a/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
+++ b/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
@@ -46,9 +46,9 @@
 	{0x0001, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_USB_MSK|PWR_INTF_SDIO_MSK, PWR_BASEADDR_MAC, PWR_CMD_DELAY, 1, PWRSEQ_DELAY_MS},/*Delay 1ms*/   \
 	{0x0000, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_USB_MSK|PWR_INTF_SDIO_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, BIT5, 0}, /*0x00[5] = 1b'0 release analog Ips to digital , 1:isolation*/   \
 	{0x0005, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_ALL_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, (BIT4|BIT3|BIT2), 0},/* disable SW LPS 0x04[10]= 0 and WLSUS_EN 0x04[11]= 0*/	\
-	{0x0075, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_PCI_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, BIT0 , BIT0},/* Disable USB suspend */	\
+	{0x0075, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_PCI_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, BIT0, BIT0},/* Disable USB suspend */	\
 	{0x0006, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_ALL_MSK, PWR_BASEADDR_MAC, PWR_CMD_POLLING, BIT1, BIT1},/* wait till 0x04[17] = 1    power ready*/	\
-	{0x0075, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_PCI_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, BIT0 , 0},/* Enable USB suspend */	\
+	{0x0075, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_PCI_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, BIT0, 0},/* Enable USB suspend */	\
 	{0x0006, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_ALL_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, BIT0, BIT0},/* release WLON reset  0x04[16]= 1*/	\
 	{0x0005, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_ALL_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, BIT7, 0},/* disable HWPDN 0x04[15]= 0*/	\
 	{0x0005, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_ALL_MSK, PWR_BASEADDR_MAC, PWR_CMD_WRITE, (BIT4|BIT3), 0},/* disable WL suspend*/	\
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 2110552b8e59..7243e656d589 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -98,8 +98,8 @@ enum {
 
 
 #define WPA_SELECTOR_LEN 4
-extern u8 RTW_WPA_OUI_TYPE[] ;
-extern u16 RTW_WPA_VERSION ;
+extern u8 RTW_WPA_OUI_TYPE[];
+extern u16 RTW_WPA_VERSION;
 extern u8 WPA_AUTH_KEY_MGMT_NONE[];
 extern u8 WPA_AUTH_KEY_MGMT_UNSPEC_802_1X[];
 extern u8 WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X[];
@@ -139,7 +139,7 @@ typedef enum _RATEID_IDX_ {
 	RATEID_IDX_VHT_1SS = 10,
 } RATEID_IDX, *PRATEID_IDX;
 
-typedef enum _RATR_TABLE_MODE{
+typedef enum _RATR_TABLE_MODE {
 	RATR_INX_WIRELESS_NGB = 0,	/*  BGN 40 Mhz 2SS 1SS */
 	RATR_INX_WIRELESS_NG = 1,		/*  GN or N */
 	RATR_INX_WIRELESS_NB = 2,		/*  BGN 20 Mhz 2SS 1SS  or BN */
@@ -149,7 +149,7 @@ typedef enum _RATR_TABLE_MODE{
 	RATR_INX_WIRELESS_B = 6,
 	RATR_INX_WIRELESS_MC = 7,
 	RATR_INX_WIRELESS_AC_N = 8,
-}RATR_TABLE_MODE, *PRATR_TABLE_MODE;
+} RATR_TABLE_MODE, *PRATR_TABLE_MODE;
 
 
 enum NETWORK_TYPE
@@ -248,7 +248,7 @@ struct ieee_param_ex {
 	u8 data[0];
 };
 
-struct sta_data{
+struct sta_data {
 	u16 aid;
 	u16 capability;
 	int flags;
@@ -439,7 +439,7 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_OFDM_SHIFT_MASK_A         4
 
 
-enum MGN_RATE{
+enum MGN_RATE {
 	MGN_1M		= 0x02,
 	MGN_2M		= 0x04,
 	MGN_5_5M	= 0x0B,
@@ -906,7 +906,7 @@ enum rtw_ieee80211_spectrum_mgmt_actioncode {
 	RTW_WLAN_ACTION_SPCT_EXT_CHL_SWITCH = 5,
 };
 
-enum _PUBLIC_ACTION{
+enum _PUBLIC_ACTION {
 	ACT_PUBLIC_BSSCOEXIST = 0, /*  20/40 BSS Coexistence */
 	ACT_PUBLIC_DSE_ENABLE = 1,
 	ACT_PUBLIC_DSE_DEENABLE = 2,
@@ -953,7 +953,7 @@ enum rtw_ieee80211_back_parties {
 };
 
 /* VHT features action code */
-enum rtw_ieee80211_vht_actioncode{
+enum rtw_ieee80211_vht_actioncode {
 	RTW_WLAN_ACTION_VHT_COMPRESSED_BEAMFORMING = 0,
        RTW_WLAN_ACTION_VHT_GROUPID_MANAGEMENT = 1,
        RTW_WLAN_ACTION_VHT_OPMODE_NOTIFICATION = 2,
@@ -1128,7 +1128,7 @@ u8 *rtw_get_ie(u8*pbuf, sint index, sint *len, sint limit);
 u8 *rtw_get_ie_ex(u8 *in_ie, uint in_len, u8 eid, u8 *oui, u8 oui_len, u8 *ie, uint *ielen);
 int rtw_ies_remove_ie(u8 *ies, uint *ies_len, uint offset, u8 eid, u8 *oui, u8 oui_len);
 
-void rtw_set_supported_rate(u8 *SupportedRates, uint mode) ;
+void rtw_set_supported_rate(u8 *SupportedRates, uint mode);
 
 unsigned char *rtw_get_wpa_ie(unsigned char *pie, int *wpa_ie_len, int limit);
 unsigned char *rtw_get_wpa2_ie(unsigned char *pie, int *rsn_ie_len, int limit);
@@ -1142,8 +1142,8 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 
 u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen);
 u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen);
-u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id , u8 *buf_attr, u32 *len_attr);
-u8 *rtw_get_wps_attr_content(u8 *wps_ie, uint wps_ielen, u16 target_attr_id , u8 *buf_content, uint *len_content);
+u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_attr, u32 *len_attr);
+u8 *rtw_get_wps_attr_content(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_content, uint *len_content);
 
 /**
  * for_each_ie - iterate over continuous IEs
diff --git a/drivers/staging/rtl8723bs/include/osdep_intf.h b/drivers/staging/rtl8723bs/include/osdep_intf.h
index fa16139fcce6..c59c1384944b 100644
--- a/drivers/staging/rtl8723bs/include/osdep_intf.h
+++ b/drivers/staging/rtl8723bs/include/osdep_intf.h
@@ -50,7 +50,7 @@ void rtw_reset_drv_sw(struct adapter *padapter);
 void rtw_dev_unload(struct adapter *padapter);
 
 u32 rtw_start_drv_threads(struct adapter *padapter);
-void rtw_stop_drv_threads (struct adapter *padapter);
+void rtw_stop_drv_threads(struct adapter *padapter);
 void rtw_cancel_all_timer(struct adapter *padapter);
 
 int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index a40cf7b60a69..5f681899bbec 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -80,7 +80,7 @@ enum mstat_f {
 #define mstat_tf_idx(flags) ((flags)&0xff)
 #define mstat_ff_idx(flags) (((flags)&0xff00) >> 8)
 
-typedef enum mstat_status{
+typedef enum mstat_status {
 	MSTAT_ALLOC_SUCCESS = 0,
 	MSTAT_ALLOC_FAIL,
 	MSTAT_FREE
@@ -117,7 +117,7 @@ static inline void thread_enter(char *name)
 
 static inline void flush_signals_thread(void)
 {
-	if (signal_pending (current))
+	if (signal_pending(current))
 	{
 		flush_signals(current);
 	}
@@ -134,14 +134,14 @@ static inline int rtw_bug_check(void *parg1, void *parg2, void *parg3, void *par
 }
 
 #define _RND(sz, r) ((((sz)+((r)-1))/(r))*(r))
-#define RND4(x)	(((x >> 2) + (((x & 3) == 0) ?  0: 1)) << 2)
+#define RND4(x)	(((x >> 2) + (((x & 3) == 0) ?  0 : 1)) << 2)
 
 static inline u32 _RND4(u32 sz)
 {
 
 	u32 val;
 
-	val = ((sz >> 2) + ((sz & 3) ? 1: 0)) << 2;
+	val = ((sz >> 2) + ((sz & 3) ? 1 : 0)) << 2;
 
 	return val;
 
@@ -152,7 +152,7 @@ static inline u32 _RND8(u32 sz)
 
 	u32 val;
 
-	val = ((sz >> 3) + ((sz & 7) ? 1: 0)) << 3;
+	val = ((sz >> 3) + ((sz & 7) ? 1 : 0)) << 3;
 
 	return val;
 
diff --git a/drivers/staging/rtl8723bs/include/osdep_service_linux.h b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
index a2d9de866c4b..1710fa3eeb71 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service_linux.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
@@ -80,7 +80,7 @@ static inline struct list_head	*get_list_head(struct __queue	*queue)
 
 static inline void _set_timer(_timer *ptimer, u32 delay_time)
 {
-	mod_timer(ptimer , (jiffies+(delay_time*HZ/1000)));
+	mod_timer(ptimer, (jiffies + (delay_time * HZ / 1000)));
 }
 
 static inline void _cancel_timer(_timer *ptimer, u8 *bcancelled)
diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index 1056f615d0f9..e85aafc93f6d 100644
--- a/drivers/staging/rtl8723bs/include/recv_osdep.h
+++ b/drivers/staging/rtl8723bs/include/recv_osdep.h
@@ -9,7 +9,7 @@
 
 
 extern sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter);
-extern void _rtw_free_recv_priv (struct recv_priv *precvpriv);
+extern void _rtw_free_recv_priv(struct recv_priv *precvpriv);
 
 
 extern s32  rtw_recv_entry(union recv_frame *precv_frame);
@@ -19,7 +19,7 @@ extern void rtw_recv_returnpacket(_nic_hdl cnxt, _pkt *preturnedpkt);
 extern void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup);
 
 int	rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter);
-void rtw_free_recv_priv (struct recv_priv *precvpriv);
+void rtw_free_recv_priv(struct recv_priv *precvpriv);
 
 
 void rtw_os_recv_resource_alloc(struct adapter *padapter, union recv_frame *precvframe);
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h b/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
index ecfd2d383ac2..3bfb0e9be582 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
@@ -11,7 +11,7 @@
 /*     H2C CMD DEFINITION    ------------------------------------------------ */
 /*  */
 
-enum h2c_cmd_8723B{
+enum h2c_cmd_8723B {
 	/* Common Class: 000 */
 	H2C_8723B_RSVD_PAGE = 0x00,
 	H2C_8723B_MEDIA_STATUS_RPT = 0x01,
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_rf.h b/drivers/staging/rtl8723bs/include/rtl8723b_rf.h
index 987b9f12a4f4..d712c6d36a08 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_rf.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_rf.h
@@ -8,7 +8,7 @@
 #define __RTL8723B_RF_H__
 
 
-int	PHY_RF6052_Config8723B(struct adapter *Adapter	);
+int	PHY_RF6052_Config8723B(struct adapter *Adapter);
 
 void
 PHY_RF6052SetBandwidth8723B(struct adapter *Adapter,
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
index 23a6069c3e5d..320ca65e5faa 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
@@ -176,7 +176,7 @@ typedef struct txdesc_8723b
 	u32 txbf_path:1;
 	u32 seq:12;
 	u32 final_data_rate:8;
-}TXDESC_8723B, *PTXDESC_8723B;
+} TXDESC_8723B, *PTXDESC_8723B;
 
 #ifndef __INC_HAL8723BDESC_H
 #define __INC_HAL8723BDESC_H
diff --git a/drivers/staging/rtl8723bs/include/rtw_byteorder.h b/drivers/staging/rtl8723bs/include/rtw_byteorder.h
index f76fbfbed4c7..c3a65f971793 100644
--- a/drivers/staging/rtl8723bs/include/rtw_byteorder.h
+++ b/drivers/staging/rtl8723bs/include/rtw_byteorder.h
@@ -7,7 +7,7 @@
 #ifndef _RTL871X_BYTEORDER_H_
 #define _RTL871X_BYTEORDER_H_
 
-#if defined (__LITTLE_ENDIAN)
+#if defined(__LITTLE_ENDIAN)
 #include <linux/byteorder/little_endian.h>
 #else
 #  include <linux/byteorder/big_endian.h>
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index b83824ca2e31..3e025a652e38 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -75,7 +75,7 @@ do {\
 	INIT_LIST_HEAD(&pcmd->list);\
 	pcmd->cmdcode = code;\
 	pcmd->parmbuf = (u8 *)(pparm);\
-	pcmd->cmdsz = sizeof (*pparm);\
+	pcmd->cmdsz = sizeof(*pparm);\
 	pcmd->rsp = NULL;\
 	pcmd->rspsz = 0;\
 } while (0)
@@ -129,9 +129,9 @@ extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
 void rtw_stop_cmd_thread(struct adapter *adapter);
 int rtw_cmd_thread(void *context);
 
-extern void rtw_free_cmd_priv (struct cmd_priv *pcmdpriv);
+extern void rtw_free_cmd_priv(struct cmd_priv *pcmdpriv);
 
-extern void rtw_free_evt_priv (struct evt_priv *pevtpriv);
+extern void rtw_free_evt_priv(struct evt_priv *pevtpriv);
 extern void rtw_evt_notify_isr(struct evt_priv *pevtpriv);
 
 enum rtw_drvextra_cmd_id
@@ -163,10 +163,10 @@ enum LPS_CTRL_TYPE
 {
 	LPS_CTRL_SCAN = 0,
 	LPS_CTRL_JOINBSS = 1,
-	LPS_CTRL_CONNECT =2,
-	LPS_CTRL_DISCONNECT =3,
-	LPS_CTRL_SPECIAL_PACKET =4,
-	LPS_CTRL_LEAVE =5,
+	LPS_CTRL_CONNECT = 2,
+	LPS_CTRL_DISCONNECT = 3,
+	LPS_CTRL_SPECIAL_PACKET = 4,
+	LPS_CTRL_LEAVE = 5,
 	LPS_CTRL_TRAFFIC_BUSY = 6,
 };
 
@@ -692,40 +692,40 @@ struct getratable_rsp {
 
 
 /* to get TX, RX retry count */
-struct gettxretrycnt_parm{
+struct gettxretrycnt_parm {
 	unsigned int rsvd;
 };
-struct gettxretrycnt_rsp{
+struct gettxretrycnt_rsp {
 	unsigned long tx_retrycnt;
 };
 
-struct getrxretrycnt_parm{
+struct getrxretrycnt_parm {
 	unsigned int rsvd;
 };
-struct getrxretrycnt_rsp{
+struct getrxretrycnt_rsp {
 	unsigned long rx_retrycnt;
 };
 
 /* to get BCNOK, BCNERR count */
-struct getbcnokcnt_parm{
+struct getbcnokcnt_parm {
 	unsigned int rsvd;
 };
-struct getbcnokcnt_rsp{
+struct getbcnokcnt_rsp {
 	unsigned long  bcnokcnt;
 };
 
-struct getbcnerrcnt_parm{
+struct getbcnerrcnt_parm {
 	unsigned int rsvd;
 };
-struct getbcnerrcnt_rsp{
+struct getbcnerrcnt_rsp {
 	unsigned long bcnerrcnt;
 };
 
 /*  to get current TX power level */
-struct getcurtxpwrlevel_parm{
+struct getcurtxpwrlevel_parm {
 	unsigned int rsvd;
 };
-struct getcurtxpwrlevel_rsp{
+struct getcurtxpwrlevel_rsp {
 	unsigned short tx_power;
 };
 
@@ -883,56 +883,56 @@ struct _cmd_callback {
 
 enum rtw_h2c_cmd
 {
-	GEN_CMD_CODE(_Read_MACREG) ,	/*0*/
-	GEN_CMD_CODE(_Write_MACREG) ,
-	GEN_CMD_CODE(_Read_BBREG) ,
-	GEN_CMD_CODE(_Write_BBREG) ,
-	GEN_CMD_CODE(_Read_RFREG) ,
-	GEN_CMD_CODE(_Write_RFREG) , /*5*/
-	GEN_CMD_CODE(_Read_EEPROM) ,
-	GEN_CMD_CODE(_Write_EEPROM) ,
-	GEN_CMD_CODE(_Read_EFUSE) ,
-	GEN_CMD_CODE(_Write_EFUSE) ,
-
-	GEN_CMD_CODE(_Read_CAM) ,	/*10*/
-	GEN_CMD_CODE(_Write_CAM) ,
+	GEN_CMD_CODE(_Read_MACREG),	/*0*/
+	GEN_CMD_CODE(_Write_MACREG),
+	GEN_CMD_CODE(_Read_BBREG),
+	GEN_CMD_CODE(_Write_BBREG),
+	GEN_CMD_CODE(_Read_RFREG),
+	GEN_CMD_CODE(_Write_RFREG), /*5*/
+	GEN_CMD_CODE(_Read_EEPROM),
+	GEN_CMD_CODE(_Write_EEPROM),
+	GEN_CMD_CODE(_Read_EFUSE),
+	GEN_CMD_CODE(_Write_EFUSE),
+
+	GEN_CMD_CODE(_Read_CAM),	/*10*/
+	GEN_CMD_CODE(_Write_CAM),
 	GEN_CMD_CODE(_setBCNITV),
 	GEN_CMD_CODE(_setMBIDCFG),
 	GEN_CMD_CODE(_JoinBss),   /*14*/
-	GEN_CMD_CODE(_DisConnect) , /*15*/
-	GEN_CMD_CODE(_CreateBss) ,
-	GEN_CMD_CODE(_SetOpMode) ,
+	GEN_CMD_CODE(_DisConnect), /*15*/
+	GEN_CMD_CODE(_CreateBss),
+	GEN_CMD_CODE(_SetOpMode),
 	GEN_CMD_CODE(_SiteSurvey),  /*18*/
-	GEN_CMD_CODE(_SetAuth) ,
-
-	GEN_CMD_CODE(_SetKey) ,	/*20*/
-	GEN_CMD_CODE(_SetStaKey) ,
-	GEN_CMD_CODE(_SetAssocSta) ,
-	GEN_CMD_CODE(_DelAssocSta) ,
-	GEN_CMD_CODE(_SetStaPwrState) ,
-	GEN_CMD_CODE(_SetBasicRate) , /*25*/
-	GEN_CMD_CODE(_GetBasicRate) ,
-	GEN_CMD_CODE(_SetDataRate) ,
-	GEN_CMD_CODE(_GetDataRate) ,
-	GEN_CMD_CODE(_SetPhyInfo) ,
-
-	GEN_CMD_CODE(_GetPhyInfo) ,	/*30*/
-	GEN_CMD_CODE(_SetPhy) ,
-	GEN_CMD_CODE(_GetPhy) ,
-	GEN_CMD_CODE(_readRssi) ,
-	GEN_CMD_CODE(_readGain) ,
-	GEN_CMD_CODE(_SetAtim) , /*35*/
-	GEN_CMD_CODE(_SetPwrMode) ,
+	GEN_CMD_CODE(_SetAuth),
+
+	GEN_CMD_CODE(_SetKey),	/*20*/
+	GEN_CMD_CODE(_SetStaKey),
+	GEN_CMD_CODE(_SetAssocSta),
+	GEN_CMD_CODE(_DelAssocSta),
+	GEN_CMD_CODE(_SetStaPwrState),
+	GEN_CMD_CODE(_SetBasicRate), /*25*/
+	GEN_CMD_CODE(_GetBasicRate),
+	GEN_CMD_CODE(_SetDataRate),
+	GEN_CMD_CODE(_GetDataRate),
+	GEN_CMD_CODE(_SetPhyInfo),
+
+	GEN_CMD_CODE(_GetPhyInfo),	/*30*/
+	GEN_CMD_CODE(_SetPhy),
+	GEN_CMD_CODE(_GetPhy),
+	GEN_CMD_CODE(_readRssi),
+	GEN_CMD_CODE(_readGain),
+	GEN_CMD_CODE(_SetAtim), /*35*/
+	GEN_CMD_CODE(_SetPwrMode),
 	GEN_CMD_CODE(_JoinbssRpt),
-	GEN_CMD_CODE(_SetRaTable) ,
-	GEN_CMD_CODE(_GetRaTable) ,
+	GEN_CMD_CODE(_SetRaTable),
+	GEN_CMD_CODE(_GetRaTable),
 
 	GEN_CMD_CODE(_GetCCXReport), /*40*/
 	GEN_CMD_CODE(_GetDTMReport),
 	GEN_CMD_CODE(_GetTXRateStatistics),
 	GEN_CMD_CODE(_SetUsbSuspend),
 	GEN_CMD_CODE(_SetH2cLbk),
-	GEN_CMD_CODE(_AddBAReq) , /*45*/
+	GEN_CMD_CODE(_AddBAReq), /*45*/
 	GEN_CMD_CODE(_SetChannel), /*46*/
 	GEN_CMD_CODE(_SetTxPower),
 	GEN_CMD_CODE(_SwitchAntenna),
diff --git a/drivers/staging/rtl8723bs/include/rtw_debug.h b/drivers/staging/rtl8723bs/include/rtw_debug.h
index 22fc5d730d7b..c90adfb87261 100644
--- a/drivers/staging/rtl8723bs/include/rtw_debug.h
+++ b/drivers/staging/rtl8723bs/include/rtw_debug.h
@@ -131,13 +131,13 @@
 	#define	_MODULE_DEFINE_	_module_efuse_
 #endif
 
-#define RT_TRACE(_Comp, _Level, Fmt) do{}while (0)
-#define RT_PRINT_DATA(_Comp, _Level, _TitleString, _HexData, _HexDataLen) do{}while (0)
+#define RT_TRACE(_Comp, _Level, Fmt) do {} while (0)
+#define RT_PRINT_DATA(_Comp, _Level, _TitleString, _HexData, _HexDataLen) do {} while (0)
 
 #define DBG_871X(x, ...) do {} while (0)
 #define MSG_8192C(x, ...) do {} while (0)
-#define DBG_8192C(x,...) do {} while (0)
-#define DBG_871X_LEVEL(x,...) do {} while (0)
+#define DBG_8192C(x, ...) do {} while (0)
+#define DBG_871X_LEVEL(x, ...) do {} while (0)
 
 #undef _dbgdump
 
@@ -161,8 +161,8 @@
 				_dbgdump(DRIVER_PREFIX"ERROR " fmt, ##arg);\
 			else \
 				_dbgdump(DRIVER_PREFIX fmt, ##arg);\
-		}\
-	}while (0)
+		} \
+	} while (0)
 
 /* without driver-defined prefix */
 #undef _DBG_871X_LEVEL
@@ -173,8 +173,8 @@
 				_dbgdump("ERROR " fmt, ##arg);\
 			else \
 				_dbgdump(fmt, ##arg);\
-		}\
-	}while (0)
+		} \
+	} while (0)
 
 #define RTW_DBGDUMP NULL /* 'stream' for _dbgdump */
 
@@ -203,17 +203,17 @@
 	#undef DBG_871X
 	#define DBG_871X(...)     do {\
 		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
-	}while (0)
+	} while (0)
 
 	#undef MSG_8192C
 	#define MSG_8192C(...)     do {\
 		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
-	}while (0)
+	} while (0)
 
 	#undef DBG_8192C
 	#define DBG_8192C(...)     do {\
 		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
-	}while (0)
+	} while (0)
 #endif /* defined(_dbgdump) */
 #endif /* DEBUG */
 
@@ -227,8 +227,8 @@
 		if ((_Comp & GlobalDebugComponents) && (_Level <= GlobalDebugLevel)) {\
 			_dbgdump("%s [0x%08x,%d]", DRIVER_PREFIX, (unsigned int)_Comp, _Level);\
 			_dbgdump Fmt;\
-		}\
-	}while (0)
+		} \
+	} while (0)
 
 #endif /* defined(_dbgdump) && defined(_MODULE_DEFINE_) */
 
@@ -242,7 +242,7 @@
 			u8 *ptr = (u8 *)_HexData;				\
 			_dbgdump("%s", DRIVER_PREFIX);						\
 			_dbgdump(_TitleString);						\
-			for (__i = 0; __i<(int)_HexDataLen; __i++)				\
+			for (__i = 0; __i < (int)_HexDataLen; __i++)				\
 			{								\
 				_dbgdump("%02X%s", ptr[__i], (((__i + 1) % 4) == 0)?"  ":" ");	\
 				if (((__i + 1) % 16) == 0)	_dbgdump("\n");			\
diff --git a/drivers/staging/rtl8723bs/include/rtw_eeprom.h b/drivers/staging/rtl8723bs/include/rtw_eeprom.h
index 1fcd79fa1c21..704c6461333a 100644
--- a/drivers/staging/rtl8723bs/include/rtw_eeprom.h
+++ b/drivers/staging/rtl8723bs/include/rtw_eeprom.h
@@ -91,7 +91,7 @@ typedef enum _RT_CUSTOMER_ID
 	RT_CID_819x_ALPHA_Dlink = 44,/* add by ylb 20121012 for customer led for alpha */
 	RT_CID_WNC_NEC = 45,/* add by page for NEC */
 	RT_CID_DNI_BUFFALO = 46,/* add by page for NEC */
-}RT_CUSTOMER_ID, *PRT_CUSTOMER_ID;
+} RT_CUSTOMER_ID, *PRT_CUSTOMER_ID;
 
 struct eeprom_priv
 {
diff --git a/drivers/staging/rtl8723bs/include/rtw_efuse.h b/drivers/staging/rtl8723bs/include/rtw_efuse.h
index 9d9a5a3e336d..4abcbbc8f513 100644
--- a/drivers/staging/rtl8723bs/include/rtw_efuse.h
+++ b/drivers/staging/rtl8723bs/include/rtw_efuse.h
@@ -57,15 +57,15 @@ enum _EFUSE_DEF_TYPE {
 #define		EFUSE_MAX_WORD_UNIT			4
 
 /*------------------------------Define structure----------------------------*/
-typedef struct PG_PKT_STRUCT_A{
+typedef struct PG_PKT_STRUCT_A {
 	u8 offset;
 	u8 word_en;
 	u8 data[8];
 	u8 word_cnts;
-}PGPKT_STRUCT,*PPGPKT_STRUCT;
+} PGPKT_STRUCT, *PPGPKT_STRUCT;
 
 /*------------------------------Define structure----------------------------*/
-typedef struct _EFUSE_HAL{
+typedef struct _EFUSE_HAL {
 	u8 fakeEfuseBank;
 	u32 fakeEfuseUsedBytes;
 	u8 fakeEfuseContent[EFUSE_MAX_HW_SIZE];
@@ -82,7 +82,7 @@ typedef struct _EFUSE_HAL{
 	u8 fakeBTEfuseContent[EFUSE_MAX_BT_BANK][EFUSE_MAX_HW_SIZE];
 	u8 fakeBTEfuseInitMap[EFUSE_BT_MAX_MAP_LEN];
 	u8 fakeBTEfuseModifiedMap[EFUSE_BT_MAX_MAP_LEN];
-}EFUSE_HAL, *PEFUSE_HAL;
+} EFUSE_HAL, *PEFUSE_HAL;
 
 
 /*------------------------Export global variable----------------------------*/
diff --git a/drivers/staging/rtl8723bs/include/rtw_event.h b/drivers/staging/rtl8723bs/include/rtw_event.h
index ee80aa21eb10..aeaabab780e5 100644
--- a/drivers/staging/rtl8723bs/include/rtw_event.h
+++ b/drivers/staging/rtl8723bs/include/rtw_event.h
@@ -82,7 +82,7 @@ struct fwevent {
 
 #define C2HEVENT_SZ			32
 
-struct event_node{
+struct event_node {
 	unsigned char *node;
 	unsigned char evt_code;
 	unsigned short evt_sz;
diff --git a/drivers/staging/rtl8723bs/include/rtw_ht.h b/drivers/staging/rtl8723bs/include/rtw_ht.h
index 952c804dd0fd..4c224c128327 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ht.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ht.h
@@ -38,7 +38,7 @@ struct ht_priv
 
 };
 
-typedef enum AGGRE_SIZE{
+typedef enum AGGRE_SIZE {
 	HT_AGG_SIZE_8K = 0,
 	HT_AGG_SIZE_16K = 1,
 	HT_AGG_SIZE_32K = 2,
@@ -47,9 +47,9 @@ typedef enum AGGRE_SIZE{
 	VHT_AGG_SIZE_256K = 5,
 	VHT_AGG_SIZE_512K = 6,
 	VHT_AGG_SIZE_1024K = 7,
-}AGGRE_SIZE_E, *PAGGRE_SIZE_E;
+} AGGRE_SIZE_E, *PAGGRE_SIZE_E;
 
-typedef enum _RT_HT_INF0_CAP{
+typedef enum _RT_HT_INF0_CAP {
 	RT_HT_CAP_USE_TURBO_AGGR = 0x01,
 	RT_HT_CAP_USE_LONG_PREAMBLE = 0x02,
 	RT_HT_CAP_USE_AMPDU = 0x04,
@@ -58,13 +58,13 @@ typedef enum _RT_HT_INF0_CAP{
 	RT_HT_CAP_USE_92SE = 0x20,
 	RT_HT_CAP_USE_88C_92C = 0x40,
 	RT_HT_CAP_USE_AP_CLIENT_MODE = 0x80,	/*  AP team request to reserve this bit, by Emily */
-}RT_HT_INF0_CAPBILITY, *PRT_HT_INF0_CAPBILITY;
+} RT_HT_INF0_CAPBILITY, *PRT_HT_INF0_CAPBILITY;
 
-typedef enum _RT_HT_INF1_CAP{
+typedef enum _RT_HT_INF1_CAP {
 	RT_HT_CAP_USE_VIDEO_CLIENT = 0x01,
 	RT_HT_CAP_USE_JAGUAR_BCUT = 0x02,
 	RT_HT_CAP_USE_JAGUAR_CCUT = 0x04,
-}RT_HT_INF1_CAPBILITY, *PRT_HT_INF1_CAPBILITY;
+} RT_HT_INF1_CAPBILITY, *PRT_HT_INF1_CAPBILITY;
 
 #define	LDPC_HT_ENABLE_RX			BIT0
 #define	LDPC_HT_ENABLE_TX			BIT1
diff --git a/drivers/staging/rtl8723bs/include/rtw_io.h b/drivers/staging/rtl8723bs/include/rtw_io.h
index 99d104b3647a..2581b5165d1b 100644
--- a/drivers/staging/rtl8723bs/include/rtw_io.h
+++ b/drivers/staging/rtl8723bs/include/rtw_io.h
@@ -168,7 +168,7 @@ struct reg_protocol_rd {
 
 	u32 Byte2Access : 1;
 	u32 Byte1Access : 1;
-	u32 BurstMode :1 ;
+	u32 BurstMode :1;
 	u32 FixOrContinuous : 1;
 
 	u32 Reserved4 : 16;
@@ -224,7 +224,7 @@ struct reg_protocol_wt {
 
 	u32 Byte2Access : 1;
 	u32 Byte1Access : 1;
-	u32 BurstMode :1 ;
+	u32 BurstMode :1;
 	u32 FixOrContinuous : 1;
 
 	u32 Reserved4 : 16;
@@ -259,7 +259,7 @@ struct io_queue {
 	struct	intf_hdl	intf;
 };
 
-struct io_priv{
+struct io_priv {
 
 	struct adapter *padapter;
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 362737b83c3a..227f84b4ef2e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -85,7 +85,7 @@ typedef enum _RT_SCAN_TYPE {
 	SCAN_PASSIVE,
 	SCAN_ACTIVE,
 	SCAN_MIX,
-}RT_SCAN_TYPE, *PRT_SCAN_TYPE;
+} RT_SCAN_TYPE, *PRT_SCAN_TYPE;
 
 enum  _BAND {
 	GHZ24_50 = 0,
@@ -135,7 +135,7 @@ struct sitesurvey_ctrl {
 	_timer	sitesurvey_ctrl_timer;
 };
 
-typedef struct _RT_LINK_DETECT_T{
+typedef struct _RT_LINK_DETECT_T {
 	u32 			NumTxOkInPeriod;
 	u32 			NumRxOkInPeriod;
 	u32 			NumRxUnicastOkInPeriod;
@@ -148,62 +148,62 @@ typedef struct _RT_LINK_DETECT_T{
 	/* u8 TrafficBusyState; */
 	u8 TrafficTransitionCount;
 	u32 LowPowerTransitionCount;
-}RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
+} RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
 
 struct profile_info {
 	u8 ssidlen;
-	u8 ssid[ WLAN_SSID_MAXLEN ];
-	u8 peermac[ ETH_ALEN ];
+	u8 ssid[WLAN_SSID_MAXLEN];
+	u8 peermac[ETH_ALEN];
 };
 
-struct tx_invite_req_info{
+struct tx_invite_req_info {
 	u8 			token;
 	u8 			benable;
-	u8 			go_ssid[ WLAN_SSID_MAXLEN ];
+	u8			go_ssid[WLAN_SSID_MAXLEN];
 	u8 			ssidlen;
-	u8 			go_bssid[ ETH_ALEN ];
-	u8 			peer_macaddr[ ETH_ALEN ];
+	u8			go_bssid[ETH_ALEN];
+	u8			peer_macaddr[ETH_ALEN];
 	u8 			operating_ch;	/* 	This information will be set by using the p2p_set op_ch =x */
 	u8 			peer_ch;		/* 	The listen channel for peer P2P device */
 
 };
 
-struct tx_invite_resp_info{
+struct tx_invite_resp_info {
 	u8 			token;	/* 	Used to record the dialog token of p2p invitation request frame. */
 };
 
-struct tx_provdisc_req_info{
+struct tx_provdisc_req_info {
 	u16 				wps_config_method_request;	/* 	Used when sending the provisioning request frame */
 	u16 				peer_channel_num[2];		/* 	The channel number which the receiver stands. */
 	struct ndis_802_11_ssid	ssid;
-	u8 			peerDevAddr[ ETH_ALEN ];		/* 	Peer device address */
-	u8 			peerIFAddr[ ETH_ALEN ];		/* 	Peer interface address */
+	u8			peerDevAddr[ETH_ALEN];		/*	Peer device address */
+	u8			peerIFAddr[ETH_ALEN];		/*	Peer interface address */
 	u8 			benable;					/* 	This provision discovery request frame is trigger to send or not */
 };
 
-struct rx_provdisc_req_info{	/* When peer device issue prov_disc_req first, we should store the following informations */
-	u8 			peerDevAddr[ ETH_ALEN ];		/* 	Peer device address */
+struct rx_provdisc_req_info {	/* When peer device issue prov_disc_req first, we should store the following informations */
+	u8			peerDevAddr[ETH_ALEN];		/*	Peer device address */
 	u8 			strconfig_method_desc_of_prov_disc_req[4];	/* 	description for the config method located in the provisioning discovery request frame. */
 																	/* 	The UI must know this information to know which config method the remote p2p device is requiring. */
 };
 
-struct tx_nego_req_info{
+struct tx_nego_req_info {
 	u16 				peer_channel_num[2];		/* 	The channel number which the receiver stands. */
-	u8 			peerDevAddr[ ETH_ALEN ];		/* 	Peer device address */
+	u8			peerDevAddr[ETH_ALEN];		/*	Peer device address */
 	u8 			benable;					/* 	This negoitation request frame is trigger to send or not */
 };
 
-struct group_id_info{
-	u8 			go_device_addr[ ETH_ALEN ];	/* 	The GO's device address of this P2P group */
-	u8 			ssid[ WLAN_SSID_MAXLEN ];	/* 	The SSID of this P2P group */
+struct group_id_info {
+	u8			go_device_addr[ETH_ALEN];	/*	The GO's device address of this P2P group */
+	u8			ssid[WLAN_SSID_MAXLEN];	/*	The SSID of this P2P group */
 };
 
-struct scan_limit_info{
+struct scan_limit_info {
 	u8 			scan_op_ch_only;			/* 	When this flag is set, the driver should just scan the operation channel */
 	u8 			operation_ch[2];				/* 	Store the operation channel of invitation request frame */
 };
 
-struct cfg80211_wifidirect_info{
+struct cfg80211_wifidirect_info {
 	_timer					remain_on_ch_timer;
 	u8 				restore_channel;
 	struct ieee80211_channel	remain_on_ch_channel;
@@ -213,7 +213,7 @@ struct cfg80211_wifidirect_info{
 	unsigned long last_ro_ch_time; /* this will be updated at the beginning and end of ro_ch */
 };
 
-struct wifidirect_info{
+struct wifidirect_info {
 	struct adapter *			padapter;
 	_timer					find_phase_timer;
 	_timer					restore_p2p_state_timer;
@@ -225,7 +225,7 @@ struct wifidirect_info{
 	struct tx_provdisc_req_info tx_prov_disc_info;
 	struct rx_provdisc_req_info rx_prov_disc_info;
 	struct tx_invite_req_info invitereq_info;
-	struct profile_info 		profileinfo[ P2P_MAX_PERSISTENT_GROUP_NUM ];	/* 	Store the profile information of persistent group */
+	struct profile_info		profileinfo[P2P_MAX_PERSISTENT_GROUP_NUM];	/*	Store the profile information of persistent group */
 	struct tx_invite_resp_info inviteresp_info;
 	struct tx_nego_req_info nego_req_info;
 	struct group_id_info 	groupid_info;	/* 	Store the group id information when doing the group negotiation handshake. */
@@ -243,17 +243,17 @@ struct wifidirect_info{
 	u8 				support_rate[8];
 	u8 				p2p_wildcard_ssid[P2P_WILDCARD_SSID_LEN];
 	u8 				intent;		/* 	should only include the intent value. */
-	u8 				p2p_peer_interface_addr[ ETH_ALEN ];
-	u8 				p2p_peer_device_addr[ ETH_ALEN ];
+	u8				p2p_peer_interface_addr[ETH_ALEN];
+	u8				p2p_peer_device_addr[ETH_ALEN];
 	u8 				peer_intent;	/* 	Included the intent value and tie breaker value. */
-	u8 				device_name[ WPS_MAX_DEVICE_NAME_LEN ];	/* 	Device name for displaying on searching device screen */
+	u8				device_name[WPS_MAX_DEVICE_NAME_LEN];	/*	Device name for displaying on searching device screen */
 	u8 				device_name_len;
 	u8 				profileindex;	/* 	Used to point to the index of profileinfo array */
 	u8 				peer_operating_ch;
 	u8 				find_phase_state_exchange_cnt;
 	u16 					device_password_id_for_nego;	/* 	The device password ID for group negotation */
 	u8 				negotiation_dialog_token;
-	u8 				nego_ssid[ WLAN_SSID_MAXLEN ];	/* 	SSID information for group negotitation */
+	u8				nego_ssid[WLAN_SSID_MAXLEN];	/*	SSID information for group negotitation */
 	u8 				nego_ssidlen;
 	u8 				p2p_group_ssid[WLAN_SSID_MAXLEN];
 	u8 				p2p_group_ssid_len;
@@ -287,13 +287,13 @@ struct wifidirect_info{
 	u8 				driver_interface;			/* 	Indicate DRIVER_WEXT or DRIVER_CFG80211 */
 };
 
-struct tdls_ss_record{	/* signal strength record */
+struct tdls_ss_record {	/* signal strength record */
 	u8 macaddr[ETH_ALEN];
 	u8 rx_pwd_ba11;
 	u8 is_tdls_sta;	/*  true: direct link sta, false: else */
 };
 
-struct tdls_info{
+struct tdls_info {
 	u8 			ap_prohibited;
 	u8 			link_established;
 	u8 			sta_cnt;
@@ -489,7 +489,7 @@ int event_thread(void *context);
 extern void rtw_free_network_queue(struct adapter *adapter, u8 isfreeall);
 extern int rtw_init_mlme_priv(struct adapter *adapter);/*  (struct mlme_priv *pmlmepriv); */
 
-extern void rtw_free_mlme_priv (struct mlme_priv *pmlmepriv);
+extern void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv);
 
 
 extern sint rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv);
@@ -526,7 +526,7 @@ static inline void set_fwstate(struct mlme_priv *pmlmepriv, sint state)
 {
 	pmlmepriv->fw_state |= state;
 	/* FOR HW integration */
-	if (_FW_UNDER_SURVEY ==state) {
+	if (_FW_UNDER_SURVEY == state) {
 		pmlmepriv->bScanInProcess = true;
 	}
 }
@@ -535,7 +535,7 @@ static inline void _clr_fwstate_(struct mlme_priv *pmlmepriv, sint state)
 {
 	pmlmepriv->fw_state &= ~state;
 	/* FOR HW integration */
-	if (_FW_UNDER_SURVEY ==state) {
+	if (_FW_UNDER_SURVEY == state) {
 		pmlmepriv->bScanInProcess = false;
 	}
 }
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 73e8ec09b6e1..6c1ed6211c7e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -182,7 +182,7 @@ typedef enum _RT_CHANNEL_DOMAIN
 	/*  Add new channel plan above this line =============== */
 	RT_CHANNEL_DOMAIN_MAX,
 	RT_CHANNEL_DOMAIN_REALTEK_DEFINE = 0x7F,
-}RT_CHANNEL_DOMAIN, *PRT_CHANNEL_DOMAIN;
+} RT_CHANNEL_DOMAIN, *PRT_CHANNEL_DOMAIN;
 
 typedef enum _RT_CHANNEL_DOMAIN_2G
 {
@@ -195,7 +195,7 @@ typedef enum _RT_CHANNEL_DOMAIN_2G
 	RT_CHANNEL_DOMAIN_2G_NULL = 0x06,
 	/*  Add new channel plan above this line =============== */
 	RT_CHANNEL_DOMAIN_2G_MAX,
-}RT_CHANNEL_DOMAIN_2G, *PRT_CHANNEL_DOMAIN_2G;
+} RT_CHANNEL_DOMAIN_2G, *PRT_CHANNEL_DOMAIN_2G;
 
 typedef enum _RT_CHANNEL_DOMAIN_5G
 {
@@ -237,33 +237,33 @@ typedef enum _RT_CHANNEL_DOMAIN_5G
 	RT_CHANNEL_DOMAIN_5G_JAPAN_NO_DFS = 0x21,
 	RT_CHANNEL_DOMAIN_5G_FCC4_NO_DFS = 0x22,
 	RT_CHANNEL_DOMAIN_5G_MAX,
-}RT_CHANNEL_DOMAIN_5G, *PRT_CHANNEL_DOMAIN_5G;
+} RT_CHANNEL_DOMAIN_5G, *PRT_CHANNEL_DOMAIN_5G;
 
-#define rtw_is_channel_plan_valid(chplan) (chplan<RT_CHANNEL_DOMAIN_MAX || chplan == RT_CHANNEL_DOMAIN_REALTEK_DEFINE)
+#define rtw_is_channel_plan_valid(chplan) (chplan < RT_CHANNEL_DOMAIN_MAX || chplan == RT_CHANNEL_DOMAIN_REALTEK_DEFINE)
 
 typedef struct _RT_CHANNEL_PLAN
 {
 	unsigned char Channel[MAX_CHANNEL_NUM];
 	unsigned char Len;
-}RT_CHANNEL_PLAN, *PRT_CHANNEL_PLAN;
+} RT_CHANNEL_PLAN, *PRT_CHANNEL_PLAN;
 
 typedef struct _RT_CHANNEL_PLAN_2G
 {
 	unsigned char Channel[MAX_CHANNEL_NUM_2G];
 	unsigned char Len;
-}RT_CHANNEL_PLAN_2G, *PRT_CHANNEL_PLAN_2G;
+} RT_CHANNEL_PLAN_2G, *PRT_CHANNEL_PLAN_2G;
 
 typedef struct _RT_CHANNEL_PLAN_5G
 {
 	unsigned char Channel[MAX_CHANNEL_NUM_5G];
 	unsigned char Len;
-}RT_CHANNEL_PLAN_5G, *PRT_CHANNEL_PLAN_5G;
+} RT_CHANNEL_PLAN_5G, *PRT_CHANNEL_PLAN_5G;
 
 typedef struct _RT_CHANNEL_PLAN_MAP
 {
 	unsigned char Index2G;
 	unsigned char Index5G;
-}RT_CHANNEL_PLAN_MAP, *PRT_CHANNEL_PLAN_MAP;
+} RT_CHANNEL_PLAN_MAP, *PRT_CHANNEL_PLAN_MAP;
 
 enum Associated_AP
 {
@@ -299,7 +299,7 @@ typedef enum _HT_IOT_PEER
 	HT_IOT_PEER_REALTEK_JAGUAR_BCUTAP = 16,
 	HT_IOT_PEER_REALTEK_JAGUAR_CCUTAP = 17,
 	HT_IOT_PEER_MAX					= 18
-}HT_IOT_PEER_E, *PHTIOT_PEER_E;
+} HT_IOT_PEER_E, *PHTIOT_PEER_E;
 
 
 enum SCAN_STATE
@@ -353,7 +353,7 @@ struct	ss_res
 #define	WIFI_FW_ASSOC_STATE			0x00002000
 #define	WIFI_FW_ASSOC_SUCCESS		0x00004000
 
-#define	WIFI_FW_LINKING_STATE		(WIFI_FW_AUTH_NULL | WIFI_FW_AUTH_STATE | WIFI_FW_AUTH_SUCCESS |WIFI_FW_ASSOC_STATE)
+#define	WIFI_FW_LINKING_STATE		(WIFI_FW_AUTH_NULL | WIFI_FW_AUTH_STATE | WIFI_FW_AUTH_SUCCESS | WIFI_FW_ASSOC_STATE)
 
 struct FW_Sta_Info
 {
@@ -434,7 +434,7 @@ typedef struct _RT_CHANNEL_INFO
 {
 	u8 		ChannelNum;		/*  The channel number. */
 	RT_SCAN_TYPE	ScanType;		/*  Scan type such as passive or active scan. */
-}RT_CHANNEL_INFO, *PRT_CHANNEL_INFO;
+} RT_CHANNEL_INFO, *PRT_CHANNEL_INFO;
 
 int rtw_ch_set_search_ch(RT_CHANNEL_INFO *ch_set, const u32 ch);
 bool rtw_mlme_band_check(struct adapter *adapter, const u32 ch);
@@ -537,7 +537,7 @@ struct mlme_ext_priv
 void init_mlme_default_rate_set(struct adapter *padapter);
 void init_mlme_ext_priv(struct adapter *padapter);
 int init_hw_mlme_ext(struct adapter *padapter);
-void free_mlme_ext_priv (struct mlme_ext_priv *pmlmeext);
+void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext);
 extern void init_mlme_ext_timer(struct adapter *padapter);
 extern void init_addba_retry_timer(struct adapter *padapter, struct sta_info *psta);
 extern struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv);
@@ -571,7 +571,7 @@ void SelectChannel(struct adapter *padapter, unsigned char channel);
 
 unsigned int decide_wait_for_beacon_timeout(unsigned int bcn_interval);
 
-void read_cam(struct adapter *padapter , u8 entry, u8 *get_key);
+void read_cam(struct adapter *padapter, u8 entry, u8 *get_key);
 
 /* modify HW only */
 void _write_cam(struct adapter *padapter, u8 entry, u16 ctrl, u8 *mac, u8 *key);
@@ -708,8 +708,8 @@ void linked_status_chk(struct adapter *padapter);
 
 void _linked_info_dump(struct adapter *padapter);
 
-void survey_timer_hdl (struct timer_list *t);
-void link_timer_hdl (struct timer_list *t);
+void survey_timer_hdl(struct timer_list *t);
+void link_timer_hdl(struct timer_list *t);
 void addba_timer_hdl(struct timer_list *t);
 void sa_query_timer_hdl(struct timer_list *t);
 /* void reauth_timer_hdl(struct adapter *padapter); */
@@ -802,8 +802,8 @@ struct C2HEvent_Header
 	unsigned int rsvd;
 };
 
-void rtw_dummy_event_callback(struct adapter *adapter , u8 *pbuf);
-void rtw_fwdbg_event_callback(struct adapter *adapter , u8 *pbuf);
+void rtw_dummy_event_callback(struct adapter *adapter, u8 *pbuf);
+void rtw_fwdbg_event_callback(struct adapter *adapter, u8 *pbuf);
 
 enum rtw_c2h_event
 {
@@ -818,10 +818,10 @@ enum rtw_c2h_event
 	GEN_EVT_CODE(_Survey),	 /*8*/
 	GEN_EVT_CODE(_SurveyDone),	 /*9*/
 
-	GEN_EVT_CODE(_JoinBss) , /*10*/
+	GEN_EVT_CODE(_JoinBss), /*10*/
 	GEN_EVT_CODE(_AddSTA),
 	GEN_EVT_CODE(_DelSTA),
-	GEN_EVT_CODE(_AtimDone) ,
+	GEN_EVT_CODE(_AtimDone),
 	GEN_EVT_CODE(_TX_Report),
 	GEN_EVT_CODE(_CCX_Report),			/*15*/
 	GEN_EVT_CODE(_DTM_Report),
@@ -851,7 +851,7 @@ static struct fwevent wlanevents[] =
 	{0, NULL},
 	{0, NULL},
 	{0, &rtw_survey_event_callback},		/*8*/
-	{sizeof (struct surveydone_event), &rtw_surveydone_event_callback},	/*9*/
+	{sizeof(struct surveydone_event), &rtw_surveydone_event_callback},	/*9*/
 
 	{0, &rtw_joinbss_event_callback},		/*10*/
 	{sizeof(struct stassoc_event), &rtw_stassoc_event_callback},
diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index bb3970d58573..e5a801b40582 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -154,7 +154,7 @@ typedef struct _MPT_CONTEXT
 	u32 		mptOutLen;
     u8          mptOutBuf[100];
 
-}MPT_CONTEXT, *PMPT_CONTEXT;
+} MPT_CONTEXT, *PMPT_CONTEXT;
 /* endif */
 
 /* E-Fuse */
@@ -276,7 +276,7 @@ typedef struct _IOCMD_STRUCT_ {
 	u8 cmdclass;
 	u16 value;
 	u8 index;
-}IOCMD_STRUCT;
+} IOCMD_STRUCT;
 
 struct rf_reg_param {
 	u32 path;
@@ -315,7 +315,7 @@ extern u8 mpdatarate[NumRates];
 /* MP set force data rate base on the definition. */
 enum MPT_RATE_INDEX {
 	/* CCK rate. */
-	MPT_RATE_1M = 0 ,	/* 0 */
+	MPT_RATE_1M = 0,	/* 0 */
 	MPT_RATE_2M,
 	MPT_RATE_55M,
 	MPT_RATE_11M,	/* 3 */
@@ -473,9 +473,9 @@ void Hal_SetBandwidth(struct adapter *padapter);
 
 void Hal_SetTxPower(struct adapter *padapter);
 void Hal_SetCarrierSuppressionTx(struct adapter *padapter, u8 bStart);
-void Hal_SetSingleToneTx (struct adapter *padapter , u8 bStart);
-void Hal_SetSingleCarrierTx (struct adapter *padapter, u8 bStart);
-void Hal_SetContinuousTx (struct adapter *padapter, u8 bStart);
+void Hal_SetSingleToneTx(struct adapter *padapter, u8 bStart);
+void Hal_SetSingleCarrierTx(struct adapter *padapter, u8 bStart);
+void Hal_SetContinuousTx(struct adapter *padapter, u8 bStart);
 void Hal_SetBandwidth(struct adapter *padapter);
 
 void Hal_SetDataRate(struct adapter *padapter);
@@ -494,8 +494,8 @@ void Hal_TriggerRFThermalMeter(struct adapter *padapter);
 u8 Hal_ReadRFThermalMeter(struct adapter *padapter);
 void Hal_SetCCKContinuousTx(struct adapter *padapter, u8 bStart);
 void Hal_SetOFDMContinuousTx(struct adapter *padapter, u8 bStart);
-void Hal_ProSetCrystalCap (struct adapter *padapter , u32 CrystalCapVal);
-void MP_PHY_SetRFPathSwitch(struct adapter *padapter , bool bMain);
+void Hal_ProSetCrystalCap(struct adapter *padapter, u32 CrystalCapVal);
+void MP_PHY_SetRFPathSwitch(struct adapter *padapter, bool bMain);
 u32 mpt_ProQueryCalTxPower(struct adapter *padapter, u8 RfPath);
 void MPT_PwrCtlDM(struct adapter *padapter, u32 bstart);
 u8 MptToMgntRate(u32 MptRateIdx);
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 012d8f54814f..98c3e92245b7 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -187,7 +187,7 @@ struct rx_pkt_attrib	{
 
 
 /* These definition is used for Rx packet reordering. */
-#define SN_LESS(a, b)		(((a-b)&0x800)!= 0)
+#define SN_LESS(a, b)		(((a - b) & 0x800) != 0)
 #define SN_EQUAL(a, b)	(a == b)
 /* define REORDER_WIN_SIZE	128 */
 /* define REORDER_ENTRY_NUM	128 */
@@ -369,12 +369,12 @@ struct recv_frame_hdr
 };
 
 
-union recv_frame{
+union recv_frame {
 	union{
 		struct list_head list;
 		struct recv_frame_hdr hdr;
 		uint mem[RECVFRAME_HDR_ALIGN>>2];
-	}u;
+	} u;
 
 	/* uint mem[MAX_RXSZ>>2]; */
 
@@ -388,8 +388,8 @@ enum RX_PACKET_TYPE {
 	C2H_PACKET
 };
 
-extern union recv_frame *_rtw_alloc_recvframe (struct __queue *pfree_recv_queue);  /* get a free recv_frame from pfree_recv_queue */
-extern union recv_frame *rtw_alloc_recvframe (struct __queue *pfree_recv_queue);  /* get a free recv_frame from pfree_recv_queue */
+extern union recv_frame *_rtw_alloc_recvframe(struct __queue *pfree_recv_queue);  /* get a free recv_frame from pfree_recv_queue */
+extern union recv_frame *rtw_alloc_recvframe(struct __queue *pfree_recv_queue);  /* get a free recv_frame from pfree_recv_queue */
 extern int	 rtw_free_recvframe(union recv_frame *precvframe, struct __queue *pfree_recv_queue);
 
 #define rtw_dequeue_recvframe(queue) rtw_alloc_recvframe(queue)
@@ -401,7 +401,7 @@ u32 rtw_free_uc_swdec_pending_queue(struct adapter *adapter);
 
 sint rtw_enqueue_recvbuf_to_head(struct recv_buf *precvbuf, struct __queue *queue);
 sint rtw_enqueue_recvbuf(struct recv_buf *precvbuf, struct __queue *queue);
-struct recv_buf *rtw_dequeue_recvbuf (struct __queue *queue);
+struct recv_buf *rtw_dequeue_recvbuf(struct __queue *queue);
 
 void rtw_reordering_ctrl_timeout_handler(struct timer_list *t);
 
@@ -444,7 +444,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 		return NULL;
 	}
 
-	precvframe->u.hdr.len -=sz;
+	precvframe->u.hdr.len -= sz;
 
 	return precvframe->u.hdr.rx_data;
 
@@ -471,7 +471,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 		return NULL;
 	}
 
-	precvframe->u.hdr.len +=sz;
+	precvframe->u.hdr.len += sz;
 
 	return precvframe->u.hdr.rx_tail;
 
@@ -497,7 +497,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 		return NULL;
 	}
 
-	precvframe->u.hdr.len -=sz;
+	precvframe->u.hdr.len -= sz;
 
 	return precvframe->u.hdr.rx_tail;
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index bea184452edd..aa60b6f867dd 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -208,7 +208,7 @@ struct sha256_state {
 };
 
 #define GET_ENCRY_ALGO(psecuritypriv, psta, encry_algo, bmcst)\
-do{\
+do {\
 	switch (psecuritypriv->dot11AuthAlgrthm)\
 	{\
 		case dot11AuthAlgrthm_Open:\
@@ -220,18 +220,18 @@ do{\
 			if (bmcst)\
 				encry_algo = (u8)psecuritypriv->dot118021XGrpPrivacy;\
 			else\
-				encry_algo =(u8) psta->dot118021XPrivacy;\
+				encry_algo = (u8)psta->dot118021XPrivacy;\
 			break;\
 	     case dot11AuthAlgrthm_WAPI:\
 		     encry_algo = (u8)psecuritypriv->dot11PrivacyAlgrthm;\
 		     break;\
-	}\
-}while (0)
+	} \
+} while (0)
 
 #define _AES_IV_LEN_ 8
 
 #define SET_ICE_IV_LEN(iv_len, icv_len, encrypt)\
-do{\
+do {\
 	switch (encrypt)\
 	{\
 		case _WEP40_:\
@@ -255,19 +255,19 @@ do{\
 			iv_len = 0;\
 			icv_len = 0;\
 			break;\
-	}\
-}while (0)
+	} \
+} while (0)
 
 
 #define GET_TKIP_PN(iv, dot11txpn)\
-do{\
-	dot11txpn._byte_.TSC0 =iv[2];\
-	dot11txpn._byte_.TSC1 =iv[0];\
-	dot11txpn._byte_.TSC2 =iv[4];\
-	dot11txpn._byte_.TSC3 =iv[5];\
-	dot11txpn._byte_.TSC4 =iv[6];\
-	dot11txpn._byte_.TSC5 =iv[7];\
-}while (0)
+do {\
+	dot11txpn._byte_.TSC0 = iv[2];\
+	dot11txpn._byte_.TSC1 = iv[0];\
+	dot11txpn._byte_.TSC2 = iv[4];\
+	dot11txpn._byte_.TSC3 = iv[5];\
+	dot11txpn._byte_.TSC4 = iv[6];\
+	dot11txpn._byte_.TSC5 = iv[7];\
+} while (0)
 
 
 #define ROL32(A, n)	(((A) << (n)) | (((A)>>(32-(n)))  & ((1UL << (n)) - 1)))
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index ea1396005a13..cd2be0056aa1 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -40,17 +40,17 @@
 #define HW_QUEUE_ENTRY	8
 
 #define WEP_IV(pattrib_iv, dot11txpn, keyidx)\
-do{\
+do {\
 	pattrib_iv[0] = dot11txpn._byte_.TSC0;\
 	pattrib_iv[1] = dot11txpn._byte_.TSC1;\
 	pattrib_iv[2] = dot11txpn._byte_.TSC2;\
 	pattrib_iv[3] = ((keyidx & 0x3)<<6);\
-	dot11txpn.val = (dot11txpn.val == 0xffffff) ? 0: (dot11txpn.val+1);\
-}while (0)
+	dot11txpn.val = (dot11txpn.val == 0xffffff) ? 0 : (dot11txpn.val + 1);\
+} while (0)
 
 
 #define TKIP_IV(pattrib_iv, dot11txpn, keyidx)\
-do{\
+do {\
 	pattrib_iv[0] = dot11txpn._byte_.TSC1;\
 	pattrib_iv[1] = (dot11txpn._byte_.TSC1 | 0x20) & 0x7f;\
 	pattrib_iv[2] = dot11txpn._byte_.TSC0;\
@@ -59,11 +59,11 @@ do{\
 	pattrib_iv[5] = dot11txpn._byte_.TSC3;\
 	pattrib_iv[6] = dot11txpn._byte_.TSC4;\
 	pattrib_iv[7] = dot11txpn._byte_.TSC5;\
-	dot11txpn.val = dot11txpn.val == 0xffffffffffffULL ? 0: (dot11txpn.val+1);\
-}while (0)
+	dot11txpn.val = dot11txpn.val == 0xffffffffffffULL ? 0 : (dot11txpn.val + 1);\
+} while (0)
 
 #define AES_IV(pattrib_iv, dot11txpn, keyidx)\
-do{\
+do {\
 	pattrib_iv[0] = dot11txpn._byte_.TSC0;\
 	pattrib_iv[1] = dot11txpn._byte_.TSC1;\
 	pattrib_iv[2] = 0;\
@@ -72,8 +72,8 @@ do{\
 	pattrib_iv[5] = dot11txpn._byte_.TSC3;\
 	pattrib_iv[6] = dot11txpn._byte_.TSC4;\
 	pattrib_iv[7] = dot11txpn._byte_.TSC5;\
-	dot11txpn.val = dot11txpn.val == 0xffffffffffffULL ? 0: (dot11txpn.val+1);\
-}while (0)
+	dot11txpn.val = dot11txpn.val == 0xffffffffffffULL ? 0 : (dot11txpn.val + 1);\
+} while (0)
 
 
 #define HWXMIT_ENTRY	4
@@ -217,7 +217,7 @@ enum {
 	XMITBUF_CMD = 2,
 };
 
-struct  submit_ctx{
+struct  submit_ctx {
 	unsigned long submit_time; /* */
 	u32 timeout_ms; /* <0: not synchronous, 0: wait forever, >0: up to ms waiting */
 	int status; /* status for operation */
@@ -274,7 +274,7 @@ struct xmit_buf
 	u8 pg_num;
 	u8 agg_num;
 
-#if defined(DBG_XMIT_BUF)|| defined(DBG_XMIT_BUF_EXT)
+#if defined(DBG_XMIT_BUF) || defined(DBG_XMIT_BUF_EXT)
 	u8 no;
 #endif
 
@@ -350,7 +350,7 @@ struct	hw_txqueue	{
 	sint	ac_tag;
 };
 
-struct agg_pkt_info{
+struct agg_pkt_info {
 	u16 offset;
 	u16 pkt_len;
 };
@@ -484,7 +484,7 @@ void rtw_init_hwxmits(struct hw_xmit *phwxmit, sint entry);
 
 
 s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter);
-void _rtw_free_xmit_priv (struct xmit_priv *pxmitpriv);
+void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv);
 
 
 s32 rtw_alloc_hwxmits(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/include/sta_info.h b/drivers/staging/rtl8723bs/include/sta_info.h
index 3acce5630f8e..c9aa3b5097a7 100644
--- a/drivers/staging/rtl8723bs/include/sta_info.h
+++ b/drivers/staging/rtl8723bs/include/sta_info.h
@@ -31,13 +31,13 @@ struct wlan_acl_pool {
 	struct __queue	acl_node_q;
 };
 
-typedef struct _RSSI_STA{
+typedef struct _RSSI_STA {
 	s32	UndecoratedSmoothedPWDB;
 	s32	UndecoratedSmoothedCCK;
 	s32	UndecoratedSmoothedOFDM;
 	u64	PacketMap;
 	u8 ValidBit;
-}RSSI_STA, *PRSSI_STA;
+} RSSI_STA, *PRSSI_STA;
 
 struct	stainfo_stats	{
 
@@ -304,7 +304,7 @@ struct sta_info {
 #define STA_RX_PKTS_DIFF_ARG(sta) \
 	sta->sta_stats.rx_mgnt_pkts - sta->sta_stats.last_rx_mgnt_pkts \
 	, sta->sta_stats.rx_ctrl_pkts - sta->sta_stats.last_rx_ctrl_pkts \
-	, sta->sta_stats.rx_data_pkts -sta->sta_stats.last_rx_data_pkts
+	, sta->sta_stats.rx_data_pkts - sta->sta_stats.last_rx_data_pkts
 
 #define STA_PKTS_FMT "(m:%llu, c:%llu, d:%llu)"
 
@@ -374,7 +374,7 @@ int rtw_stainfo_offset(struct sta_priv *stapriv, struct sta_info *sta);
 struct sta_info *rtw_get_stainfo_by_offset(struct sta_priv *stapriv, int offset);
 
 extern struct sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr);
-extern u32 rtw_free_stainfo(struct adapter *padapter , struct sta_info *psta);
+extern u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta);
 extern void rtw_free_all_stainfo(struct adapter *padapter);
 extern struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr);
 extern u32 rtw_init_bcmc_stainfo(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 2faf83704ff0..88a6e982ce01 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -707,7 +707,7 @@ struct HT_caps_element
 			unsigned char ASEL_caps;
 		} HT_cap_element;
 		unsigned char HT_cap[26];
-	}u;
+	} u;
 } __attribute__ ((packed));
 
 struct HT_info_element
@@ -1102,7 +1102,7 @@ enum P2P_PROTO_WK_ID
 	P2P_PRE_TX_PROVDISC_PROCESS_WK = 2,
 	P2P_PRE_TX_NEGOREQ_PROCESS_WK = 3,
 	P2P_PRE_TX_INVITEREQ_PROCESS_WK = 4,
-	P2P_AP_P2P_CH_SWITCH_PROCESS_WK =5,
+	P2P_AP_P2P_CH_SWITCH_PROCESS_WK = 5,
 	P2P_RO_CH_WK = 6,
 };
 
@@ -1126,8 +1126,8 @@ enum P2P_PROTO_WK_ID
 #define	WFD_DEVINFO_PC_TDLS					0x0080
 #define	WFD_DEVINFO_HDCP_SUPPORT			0x0100
 
-#define IP_MCAST_MAC(mac)		((mac[0]== 0x01) && (mac[1]== 0x00) && (mac[2]== 0x5e))
-#define ICMPV6_MCAST_MAC(mac)	((mac[0]== 0x33) && (mac[1]== 0x33) && (mac[2]!= 0xff))
+#define IP_MCAST_MAC(mac)		((mac[0] == 0x01) && (mac[1] == 0x00) && (mac[2] == 0x5e))
+#define ICMPV6_MCAST_MAC(mac)	((mac[0] == 0x33) && (mac[1] == 0x33) && (mac[2] != 0xff))
 
 /* Regulatroy Domain */
 struct regd_pair_mapping {
diff --git a/drivers/staging/rtl8723bs/include/xmit_osdep.h b/drivers/staging/rtl8723bs/include/xmit_osdep.h
index a61412b54ec0..e9ff274f7474 100644
--- a/drivers/staging/rtl8723bs/include/xmit_osdep.h
+++ b/drivers/staging/rtl8723bs/include/xmit_osdep.h
@@ -35,8 +35,8 @@ void rtw_os_xmit_resource_free(struct adapter *padapter, struct xmit_buf *pxmitb
 
 extern uint rtw_remainder_len(struct pkt_file *pfile);
 extern void _rtw_open_pktfile(_pkt *pkt, struct pkt_file *pfile);
-extern uint _rtw_pktfile_read (struct pkt_file *pfile, u8 *rmem, uint rlen);
-extern sint rtw_endofpktfile (struct pkt_file *pfile);
+extern uint _rtw_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen);
+extern sint rtw_endofpktfile(struct pkt_file *pfile);
 
 extern void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt);
 extern void rtw_os_xmit_complete(struct adapter *padapter, struct xmit_frame *pxframe);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 322cabb97b99..1ba85a43f05a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -254,7 +254,7 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 
 	/* DBG_8192C("%s\n", __func__); */
 
-	bssinf_len = pnetwork->network.IELength+sizeof (struct ieee80211_hdr_3addr);
+	bssinf_len = pnetwork->network.IELength + sizeof(struct ieee80211_hdr_3addr);
 	if (bssinf_len > MAX_BSSINFO_LEN) {
 		DBG_871X("%s IE Length too long > %d byte\n", __func__, MAX_BSSINFO_LEN);
 		goto exit;
@@ -263,7 +263,7 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 	{
 		u16 wapi_len = 0;
 
-		if (rtw_get_wapi_ie(pnetwork->network.IEs, pnetwork->network.IELength, NULL, &wapi_len)>0)
+		if (rtw_get_wapi_ie(pnetwork->network.IEs, pnetwork->network.IELength, NULL, &wapi_len) > 0)
 		{
 			if (wapi_len > 0)
 			{
@@ -286,7 +286,7 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 
 		wpsie = rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wpsielen);
 
-		if (wpsie && wpsielen>0)
+		if (wpsie && wpsielen > 0)
 			psr = rtw_get_wps_attr_content(wpsie,  wpsielen, WPS_ATTR_SELECTED_REGISTRAR, (u8 *)(&sr), NULL);
 
 		if (sr != 0)
@@ -353,7 +353,7 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 
 
 	pbuf += sizeof(struct ieee80211_hdr_3addr);
-	len = sizeof (struct ieee80211_hdr_3addr);
+	len = sizeof(struct ieee80211_hdr_3addr);
 
 	memcpy(pbuf, pnetwork->network.IEs, pnetwork->network.IELength);
 	len += pnetwork->network.IELength;
@@ -402,7 +402,7 @@ int rtw_cfg80211_check_bss(struct adapter *padapter)
 
 	cfg80211_put_bss(padapter->rtw_wdev->wiphy, bss);
 
-	return	(bss!= NULL);
+	return	(bss != NULL);
 }
 
 void rtw_cfg80211_ibss_indicate_connect(struct adapter *padapter)
@@ -424,7 +424,7 @@ void rtw_cfg80211_ibss_indicate_connect(struct adapter *padapter)
 		struct wlan_bssid_ex  *pnetwork = &(padapter->mlmeextpriv.mlmext_info.network);
 		struct wlan_network *scanned = pmlmepriv->cur_network_scanned;
 
-		if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ==true)
+		if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)
 		{
 
 			memcpy(&cur_network->network, pnetwork, sizeof(struct wlan_bssid_ex));
@@ -579,7 +579,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct security_priv* psecuritypriv =&(padapter->securitypriv);
+	struct security_priv* psecuritypriv =  &(padapter->securitypriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	DBG_8192C("%s\n", __func__);
@@ -633,7 +633,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 
 		DBG_8192C("r871x_set_encryption, wep_key_idx =%d, len =%d\n", wep_key_idx, wep_key_len);
 
-		if ((wep_key_idx >= WEP_KEYS) || (wep_key_len<= 0))
+		if ((wep_key_idx >= WEP_KEYS) || (wep_key_len <= 0))
 		{
 			ret = -EINVAL;
 			goto exit;
@@ -673,7 +673,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 	}
 
 
-	if (!psta && check_fwstate(pmlmepriv, WIFI_AP_STATE)) /* group key */ 
+	if (!psta && check_fwstate(pmlmepriv, WIFI_AP_STATE)) /* group key */
 	{
 		if (param->u.crypt.set_tx == 0) /* group key */
 		{
@@ -681,7 +681,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 			{
 				DBG_8192C("%s, set group_key, WEP\n", __func__);
 
-				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 				psecuritypriv->dot118021XGrpPrivacy = _WEP40_;
 				if (param->u.crypt.key_len == 13)
@@ -696,7 +696,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 
 				psecuritypriv->dot118021XGrpPrivacy = _TKIP_;
 
-				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 				/* DEBUG_ERR("set key length :param->u.crypt.key_len =%d\n", param->u.crypt.key_len); */
 				/* set mic key */
@@ -712,7 +712,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 
 				psecuritypriv->dot118021XGrpPrivacy = _AES_;
 
-				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 			}
 			else
 			{
@@ -729,7 +729,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 
 			rtw_ap_set_group_key(padapter, param->u.crypt.key, psecuritypriv->dot118021XGrpPrivacy, param->u.crypt.idx);
 
-			pbcmc_sta =rtw_get_bcmc_stainfo(padapter);
+			pbcmc_sta = rtw_get_bcmc_stainfo(padapter);
 			if (pbcmc_sta)
 			{
 				pbcmc_sta->ieee8021x_blocked = false;
@@ -748,7 +748,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 		{
 			if (param->u.crypt.set_tx == 1) /* pairwise key */
 			{
-				memcpy(psta->dot118021x_UncstKey.skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+				memcpy(psta->dot118021x_UncstKey.skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 				if (strcmp(param->u.crypt.alg, "WEP") == 0)
 				{
@@ -799,7 +799,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 			{
 				if (strcmp(param->u.crypt.alg, "WEP") == 0)
 				{
-					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 					psecuritypriv->dot118021XGrpPrivacy = _WEP40_;
 					if (param->u.crypt.key_len == 13)
@@ -811,7 +811,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 				{
 					psecuritypriv->dot118021XGrpPrivacy = _TKIP_;
 
-					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 					/* DEBUG_ERR("set key length :param->u.crypt.key_len =%d\n", param->u.crypt.key_len); */
 					/* set mic key */
@@ -825,7 +825,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 				{
 					psecuritypriv->dot118021XGrpPrivacy = _AES_;
 
-					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 				}
 				else
 				{
@@ -840,7 +840,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 
 				rtw_ap_set_group_key(padapter, param->u.crypt.key, psecuritypriv->dot118021XGrpPrivacy, param->u.crypt.idx);
 
-				pbcmc_sta =rtw_get_bcmc_stainfo(padapter);
+				pbcmc_sta = rtw_get_bcmc_stainfo(padapter);
 				if (pbcmc_sta)
 				{
 					pbcmc_sta->ieee8021x_blocked = false;
@@ -940,7 +940,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 
 	if (padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) /*  802_1x */
 	{
-		struct sta_info * psta,*pbcmc_sta;
+		struct sta_info * psta, *pbcmc_sta;
 		struct sta_priv * pstapriv = &padapter->stapriv;
 
 		/* DBG_8192C("%s, : dot11AuthAlgrthm == dot11AuthAlgrthm_8021X\n", __func__); */
@@ -959,7 +959,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 					psta->ieee8021x_blocked = false;
 
 
-				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled)||
+				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled) ||
 						(padapter->securitypriv.ndisencryptstatus ==  Ndis802_11Encryption3Enabled))
 				{
 					psta->dot118021XPrivacy = padapter->securitypriv.dot11PrivacyAlgrthm;
@@ -970,7 +970,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 
 					DBG_8192C("%s, : param->u.crypt.set_tx == 1\n", __func__);
 
-					memcpy(psta->dot118021x_UncstKey.skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+					memcpy(psta->dot118021x_UncstKey.skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 					if (strcmp(param->u.crypt.alg, "TKIP") == 0)/* set mic key */
 					{
@@ -978,7 +978,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 						memcpy(psta->dot11tkiptxmickey.skey, &(param->u.crypt.key[16]), 8);
 						memcpy(psta->dot11tkiprxmickey.skey, &(param->u.crypt.key[24]), 8);
 
-						padapter->securitypriv.busetkipkey =false;
+						padapter->securitypriv.busetkipkey = false;
 						/* _set_timer(&padapter->securitypriv.tkip_timer, 50); */
 					}
 
@@ -991,21 +991,21 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 				{
 					if (strcmp(param->u.crypt.alg, "TKIP") == 0 || strcmp(param->u.crypt.alg, "CCMP") == 0)
 					{
-						memcpy(padapter->securitypriv.dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
-						memcpy(padapter->securitypriv.dot118021XGrptxmickey[param->u.crypt.idx].skey,&(param->u.crypt.key[16]), 8);
-						memcpy(padapter->securitypriv.dot118021XGrprxmickey[param->u.crypt.idx].skey,&(param->u.crypt.key[24]), 8);
+						memcpy(padapter->securitypriv.dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
+						memcpy(padapter->securitypriv.dot118021XGrptxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[16]), 8);
+						memcpy(padapter->securitypriv.dot118021XGrprxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[24]), 8);
 	                                        padapter->securitypriv.binstallGrpkey = true;
 						/* DEBUG_ERR((" param->u.crypt.key_len =%d\n", param->u.crypt.key_len)); */
 						DBG_871X(" ~~~~set sta key:groupkey\n");
 
 						padapter->securitypriv.dot118021XGrpKeyid = param->u.crypt.idx;
-						rtw_set_key(padapter,&padapter->securitypriv, param->u.crypt.idx, 1, true);
+						rtw_set_key(padapter, &padapter->securitypriv, param->u.crypt.idx, 1, true);
 					}
 					else if (strcmp(param->u.crypt.alg, "BIP") == 0)
 					{
 						/* DBG_871X("BIP key_len =%d , index =%d @@@@@@@@@@@@@@@@@@\n", param->u.crypt.key_len, param->u.crypt.idx); */
 						/* save the IGTK key, length 16 bytes */
-						memcpy(padapter->securitypriv.dot11wBIPKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+						memcpy(padapter->securitypriv.dot11wBIPKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 						/*DBG_871X("IGTK key below:\n");
 						for (no = 0;no<16;no++)
 							printk(" %02x ", padapter->securitypriv.dot11wBIPKey[param->u.crypt.idx].skey[no]);
@@ -1017,7 +1017,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 				}
 			}
 
-			pbcmc_sta =rtw_get_bcmc_stainfo(padapter);
+			pbcmc_sta = rtw_get_bcmc_stainfo(padapter);
 			if (pbcmc_sta == NULL)
 			{
 				/* DEBUG_ERR(("Set OID_802_11_ADD_KEY: bcmc stainfo is null\n")); */
@@ -1028,7 +1028,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 				if (strcmp(param->u.crypt.alg, "none") != 0)
 					pbcmc_sta->ieee8021x_blocked = false;
 
-				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled)||
+				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled) ||
 						(padapter->securitypriv.ndisencryptstatus ==  Ndis802_11Encryption3Enabled))
 				{
 					pbcmc_sta->dot118021XPrivacy = padapter->securitypriv.dot11PrivacyAlgrthm;
@@ -1270,8 +1270,8 @@ static int cfg80211_rtw_get_station(struct wiphy *wiphy,
 
 	/* for Ad-Hoc/AP mode */
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)
-			||check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)
-			||check_fwstate(pmlmepriv, WIFI_AP_STATE))
+ || check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)
+ || check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		&& check_fwstate(pmlmepriv, _FW_LINKED)
 	)
 	{
@@ -1346,7 +1346,7 @@ static int cfg80211_rtw_change_iface(struct wiphy *wiphy,
 
 	rtw_wdev->iftype = type;
 
-	if (rtw_set_802_11_infrastructure_mode(padapter, networkType) ==false)
+	if (rtw_set_802_11_infrastructure_mode(padapter, networkType) == false)
 	{
 		rtw_wdev->iftype = old_type;
 		ret = -EPERM;
@@ -1464,7 +1464,7 @@ static int rtw_cfg80211_set_probe_req_wpsp2pie(struct adapter *padapter, char *b
 	DBG_8192C("%s, ielen =%d\n", __func__, len);
 #endif
 
-	if (len>0)
+	if (len > 0)
 	{
 		if ((wps_ie = rtw_get_wps_ie(buf, len, NULL, &wps_ielen)))
 		{
@@ -1503,8 +1503,8 @@ static int cfg80211_rtw_scan(struct wiphy *wiphy
 	int ret = 0;
 	struct ndis_802_11_ssid *ssid = NULL;
 	struct rtw_ieee80211_channel ch[RTW_CHANNEL_SCAN_AMOUNT];
-	u8 survey_times =3;
-	u8 survey_times_for_one_ch =6;
+	u8 survey_times = 3;
+	u8 survey_times_for_one_ch = 6;
 	struct cfg80211_ssid *ssids = request->ssids;
 	int j = 0;
 	bool need_indicate_scan_done = false;
@@ -1556,7 +1556,7 @@ static int cfg80211_rtw_scan(struct wiphy *wiphy
 		goto check_need_indicate_scan_done;
 	}
 
-	if (request->ie && request->ie_len>0)
+	if (request->ie && request->ie_len > 0)
 	{
 		rtw_cfg80211_set_probe_req_wpsp2pie(padapter, (u8 *)request->ie, request->ie_len);
 	}
@@ -1610,7 +1610,7 @@ static int cfg80211_rtw_scan(struct wiphy *wiphy
 
 	/* parsing channels, n_channels */
 	memset(ch, 0, sizeof(struct rtw_ieee80211_channel)*RTW_CHANNEL_SCAN_AMOUNT);
-	for (i = 0;i<request->n_channels && i<RTW_CHANNEL_SCAN_AMOUNT;i++) {
+	for (i = 0; i < request->n_channels && i < RTW_CHANNEL_SCAN_AMOUNT; i++) {
 		#ifdef DEBUG_CFG80211
 		DBG_871X(FUNC_ADPT_FMT CHAN_FMT"\n", FUNC_ADPT_ARG(padapter), CHAN_ARG(request->channels[i]));
 		#endif
@@ -1620,12 +1620,12 @@ static int cfg80211_rtw_scan(struct wiphy *wiphy
 
 	spin_lock_bh(&pmlmepriv->lock);
 	if (request->n_channels == 1) {
-		for (i = 1;i<survey_times_for_one_ch;i++)
+		for (i = 1; i < survey_times_for_one_ch; i++)
 			memcpy(&ch[i], &ch[0], sizeof(struct rtw_ieee80211_channel));
 		_status = rtw_sitesurvey_cmd(padapter, ssid, RTW_SSID_SCAN_AMOUNT, ch, survey_times_for_one_ch);
 	} else if (request->n_channels <= 4) {
-		for (j =request->n_channels-1;j>= 0;j--)
-			for (i = 0;i<survey_times;i++)
+		for (j = request->n_channels - 1; j >= 0; j--)
+			for (i = 0; i < survey_times; i++)
 		{
 			memcpy(&ch[j*survey_times+i], &ch[j], sizeof(struct rtw_ieee80211_channel));
 		}
@@ -1699,7 +1699,7 @@ static int rtw_cfg80211_set_auth_type(struct security_priv *psecuritypriv,
 
 		psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open;
 
-		if (psecuritypriv->ndisauthtype>Ndis802_11AuthModeWPA)
+		if (psecuritypriv->ndisauthtype > Ndis802_11AuthModeWPA)
 			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
 
 		break;
@@ -1767,7 +1767,7 @@ static int rtw_cfg80211_set_cipher(struct security_priv *psecuritypriv, u32 ciph
 		psecuritypriv->ndisencryptstatus = ndisencryptstatus;
 
 		/* if (psecuritypriv->dot11PrivacyAlgrthm >= _AES_) */
-		/* 	psecuritypriv->ndisauthtype = Ndis802_11AuthModeWPA2PSK; */
+		/*	psecuritypriv->ndisauthtype = Ndis802_11AuthModeWPA2PSK; */
 	}
 
 	return 0;
@@ -1799,7 +1799,7 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	int wpa_ielen = 0;
 	int wpa2_ielen = 0;
 	u8 *pwpa, *pwpa2;
-	u8 null_addr[]= {0, 0, 0, 0, 0, 0};
+	u8 null_addr[] = {0, 0, 0, 0, 0, 0};
 
 	if (pie == NULL || !ielen) {
 		/* Treat this as normal case, but need to clear WIFI_UNDER_WPS */
@@ -1818,13 +1818,13 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 		goto exit;
 	}
 
-	memcpy(buf, pie , ielen);
+	memcpy(buf, pie, ielen);
 
 	/* dump */
 	{
 		int i;
 		DBG_8192C("set wpa_ie(length:%zu):\n", ielen);
-		for (i = 0;i<ielen;i =i+8)
+		for (i = 0; i < ielen; i = i + 8)
 			DBG_8192C("0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n", buf[i], buf[i+1], buf[i+2], buf[i+3], buf[i+4], buf[i+5], buf[i+6], buf[i+7]);
 	}
 
@@ -1835,12 +1835,12 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	}
 
 	pwpa = rtw_get_wpa_ie(buf, &wpa_ielen, ielen);
-	if (pwpa && wpa_ielen>0)
+	if (pwpa && wpa_ielen > 0)
 	{
 		if (rtw_parse_wpa_ie(pwpa, wpa_ielen+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS)
 		{
 			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
-			padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeWPAPSK;
+			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeWPAPSK;
 			memcpy(padapter->securitypriv.supplicant_ie, &pwpa[0], wpa_ielen+2);
 
 			DBG_8192C("got wpa_ie, wpa_ielen:%u\n", wpa_ielen);
@@ -1848,12 +1848,12 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	}
 
 	pwpa2 = rtw_get_wpa2_ie(buf, &wpa2_ielen, ielen);
-	if (pwpa2 && wpa2_ielen>0)
+	if (pwpa2 && wpa2_ielen > 0)
 	{
 		if (rtw_parse_wpa2_ie(pwpa2, wpa2_ielen+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS)
 		{
 			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
-			padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeWPA2PSK;
+			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeWPA2PSK;
 			memcpy(padapter->securitypriv.supplicant_ie, &pwpa2[0], wpa2_ielen+2);
 
 			DBG_8192C("got wpa2_ie, wpa2_ielen:%u\n", wpa2_ielen);
@@ -1873,7 +1873,7 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	{
 		case WPA_CIPHER_NONE:
 			padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
-			padapter->securitypriv.ndisencryptstatus =Ndis802_11EncryptionDisabled;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11EncryptionDisabled;
 			break;
 		case WPA_CIPHER_WEP40:
 			padapter->securitypriv.dot118021XGrpPrivacy = _WEP40_;
@@ -1897,7 +1897,7 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	{
 		case WPA_CIPHER_NONE:
 			padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
-			padapter->securitypriv.ndisencryptstatus =Ndis802_11EncryptionDisabled;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11EncryptionDisabled;
 			break;
 		case WPA_CIPHER_WEP40:
 			padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
@@ -1924,7 +1924,7 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 		wps_ie = rtw_get_wps_ie(buf, ielen, NULL, &wps_ielen);
 		if (wps_ie && wps_ielen > 0) {
 			DBG_8192C("got wps_ie, wps_ielen:%u\n", wps_ielen);
-			padapter->securitypriv.wps_ie_len = wps_ielen<MAX_WPS_IE_LEN?wps_ielen:MAX_WPS_IE_LEN;
+			padapter->securitypriv.wps_ie_len = wps_ielen < MAX_WPS_IE_LEN ? wps_ielen : MAX_WPS_IE_LEN;
 			memcpy(padapter->securitypriv.wps_ie, wps_ie, padapter->securitypriv.wps_ie_len);
 			set_fwstate(&padapter->mlmepriv, WIFI_UNDER_WPS);
 		} else {
@@ -2027,7 +2027,7 @@ static int cfg80211_rtw_leave_ibss(struct wiphy *wiphy, struct net_device *ndev)
 
 		rtw_wdev->iftype = NL80211_IFTYPE_STATION;
 
-		if (rtw_set_802_11_infrastructure_mode(padapter, Ndis802_11Infrastructure) ==false)
+		if (rtw_set_802_11_infrastructure_mode(padapter, Ndis802_11Infrastructure) == false)
 		{
 			rtw_wdev->iftype = old_type;
 			ret = -EPERM;
@@ -2185,7 +2185,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 
 		if (rtw_set_802_11_add_wep(padapter, pwep) == (u8)_FAIL)
 		{
-			ret = -EOPNOTSUPP ;
+			ret = -EOPNOTSUPP;
 		}
 
 		kfree(pwep);
@@ -2301,7 +2301,7 @@ static int cfg80211_rtw_set_pmksa(struct wiphy *wiphy,
 	u8 index, blInserted = false;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	u8 strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
+	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
@@ -2313,7 +2313,7 @@ static int cfg80211_rtw_set_pmksa(struct wiphy *wiphy,
 	blInserted = false;
 
 	/* overwrite PMKID */
-	for (index = 0 ; index<NUM_PMKID_CACHE; index++)
+	for (index = 0 ; index < NUM_PMKID_CACHE; index++)
 	{
 		if (!memcmp(psecuritypriv->PMKIDList[index].Bssid, (u8 *)pmksa->bssid, ETH_ALEN))
 		{ /*  BSSID is matched, the same AP => rewrite with new PMKID. */
@@ -2337,7 +2337,7 @@ static int cfg80211_rtw_set_pmksa(struct wiphy *wiphy,
 		memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, (u8 *)pmksa->pmkid, WLAN_PMKID_LEN);
 
 		psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
-		psecuritypriv->PMKIDIndex++ ;
+		psecuritypriv->PMKIDIndex++;
 		if (psecuritypriv->PMKIDIndex == 16)
 		{
 			psecuritypriv->PMKIDIndex = 0;
@@ -2357,7 +2357,7 @@ static int cfg80211_rtw_del_pmksa(struct wiphy *wiphy,
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	for (index = 0 ; index<NUM_PMKID_CACHE; index++)
+	for (index = 0 ; index < NUM_PMKID_CACHE; index++)
 	{
 		if (!memcmp(psecuritypriv->PMKIDList[index].Bssid, (u8 *)pmksa->bssid, ETH_ALEN))
 		{ /*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
@@ -2387,7 +2387,7 @@ static int cfg80211_rtw_flush_pmksa(struct wiphy *wiphy,
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	memset(&psecuritypriv->PMKIDList[ 0 ], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+	memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
 	psecuritypriv->PMKIDIndex = 0;
 
 	return 0;
@@ -2575,7 +2575,7 @@ static const struct net_device_ops rtw_cfg80211_monitor_if_ops = {
 	.ndo_start_xmit = rtw_cfg80211_monitor_if_xmit_entry,
 };
 
-static int rtw_cfg80211_add_monitor_if (struct adapter *padapter, char *name, struct net_device **ndev)
+static int rtw_cfg80211_add_monitor_if(struct adapter *padapter, char *name, struct net_device **ndev)
 {
 	int ret = 0;
 	struct net_device* mon_ndev = NULL;
@@ -2734,7 +2734,7 @@ static int rtw_add_beacon(struct adapter *adapter, const u8 *head, size_t head_l
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != true)
 		return -EINVAL;
 
-	if (head_len<24)
+	if (head_len < 24)
 		return -EINVAL;
 
 	pbuf = rtw_zmalloc(head_len+tail_len);
@@ -3276,7 +3276,7 @@ static void rtw_cfg80211_init_ht_capab(struct ieee80211_sta_ht_cap *ht_cap, enum
 
 		ht_cap->mcs.rx_highest = cpu_to_le16(MAX_BIT_RATE_40MHZ_MCS7);
 	}
-	else if ((rf_type == RF_1T2R) || (rf_type ==RF_2T2R))
+	else if ((rf_type == RF_1T2R) || (rf_type == RF_2T2R))
 	{
 		ht_cap->mcs.rx_mask[0] = 0xFF;
 		ht_cap->mcs.rx_mask[1] = 0xFF;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 9b9038e7deb1..c145f629488a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -59,7 +59,7 @@ void rtw_indicate_wx_assoc_event(struct adapter *padapter)
 
 	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 
-	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ==true)
+	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)
 		memcpy(wrqu.ap_addr.sa_data, pnetwork->MacAddress, ETH_ALEN);
 	else
 		memcpy(wrqu.ap_addr.sa_data, pmlmepriv->cur_network.network.MacAddress, ETH_ALEN);
@@ -86,11 +86,11 @@ static char *translate_scan(struct adapter *padapter,
 	u32 ht_ielen = 0;
 	char *custom = NULL;
 	char *p;
-	u16 max_rate = 0, rate, ht_cap =false, vht_cap = false;
+	u16 max_rate = 0, rate, ht_cap = false, vht_cap = false;
 	u32 i = 0;
 	u8 bw_40MHz = 0, short_GI = 0;
 	u16 mcs_rate = 0, vht_data_rate = 0;
-	u8 ie_offset = (pnetwork->network.Reserved[0] == 2? 0:12);
+	u8 ie_offset = (pnetwork->network.Reserved[0] == 2 ? 0 : 12);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	u8 ss, sq;
 
@@ -113,11 +113,11 @@ static char *translate_scan(struct adapter *padapter,
 	} else {
 		p = rtw_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.IELength-12);
 	}
-	if (p && ht_ielen>0) {
+	if (p && ht_ielen > 0) {
 		struct rtw_ieee80211_ht_cap *pht_capie;
 		ht_cap = true;
 		pht_capie = (struct rtw_ieee80211_ht_cap *)(p+2);
-		memcpy(&mcs_rate , pht_capie->supp_mcs_set, 2);
+		memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
 		bw_40MHz = (le16_to_cpu(pht_capie->cap_info) & IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
 		short_GI = (le16_to_cpu(pht_capie->cap_info) & (IEEE80211_HT_CAP_SGI_20 | IEEE80211_HT_CAP_SGI_40)) ? 1 : 0;
 	}
@@ -163,7 +163,7 @@ static char *translate_scan(struct adapter *padapter,
 		cap = le16_to_cpu(le_tmp);
 	}
 
-	if (cap & (WLAN_CAPABILITY_IBSS |WLAN_CAPABILITY_BSS)) {
+	if (cap & (WLAN_CAPABILITY_IBSS | WLAN_CAPABILITY_BSS)) {
 		if (cap & WLAN_CAPABILITY_BSS)
 			iwe.u.mode = IW_MODE_MASTER;
 		else
@@ -172,7 +172,7 @@ static char *translate_scan(struct adapter *padapter,
 		start = iwe_stream_add_event(info, start, stop, &iwe, IW_EV_UINT_LEN);
 	}
 
-	if (pnetwork->network.Configuration.DSConfig<1 /*|| pnetwork->network.Configuration.DSConfig>14*/)
+	if (pnetwork->network.Configuration.DSConfig < 1 /*|| pnetwork->network.Configuration.DSConfig > 14*/)
 		pnetwork->network.Configuration.DSConfig = 1;
 
 	 /* Add frequency/channel */
@@ -198,7 +198,7 @@ static char *translate_scan(struct adapter *padapter,
 		return start;
 	p = custom;
 	p += snprintf(p, MAX_CUSTOM_LEN - (p - custom), " Rates (Mb/s): ");
-	while (pnetwork->network.SupportedRates[i]!= 0) {
+	while (pnetwork->network.SupportedRates[i] != 0) {
 		rate = pnetwork->network.SupportedRates[i]&0x7F;
 		if (rate > max_rate)
 			max_rate = rate;
@@ -239,7 +239,7 @@ static char *translate_scan(struct adapter *padapter,
 		if (!buf)
 			return start;
 		if (wpa_len > 0) {
-			p =buf;
+			p = buf;
 			p += sprintf(p, "wpa_ie =");
 			for (i = 0; i < wpa_len; i++)
 				p += sprintf(p, "%02x", wpa_ie[i]);
@@ -258,7 +258,7 @@ static char *translate_scan(struct adapter *padapter,
 			start = iwe_stream_add_point(info, start, stop, &iwe, buf);
 
 			memset(&iwe, 0, sizeof(iwe));
-			iwe.cmd =IWEVGENIE;
+			iwe.cmd = IWEVGENIE;
 			iwe.u.data.length = wpa_len;
 			start = iwe_stream_add_point(info, start, stop, &iwe, wpa_ie);
 		}
@@ -274,7 +274,7 @@ static char *translate_scan(struct adapter *padapter,
 			start = iwe_stream_add_point(info, start, stop, &iwe, buf);
 
 			memset(&iwe, 0, sizeof(iwe));
-			iwe.cmd =IWEVGENIE;
+			iwe.cmd = IWEVGENIE;
 			iwe.u.data.length = rsn_len;
 			start = iwe_stream_add_point(info, start, stop, &iwe, rsn_ie);
 		}
@@ -298,13 +298,13 @@ static char *translate_scan(struct adapter *padapter,
 		}
 
 		while (cnt < total_ielen) {
-			if (rtw_is_wps_ie(&ie_ptr[cnt], &wps_ielen) && (wps_ielen>2)) {
+			if (rtw_is_wps_ie(&ie_ptr[cnt], &wps_ielen) && (wps_ielen > 2)) {
 				wpsie_ptr = &ie_ptr[cnt];
-				iwe.cmd =IWEVGENIE;
+				iwe.cmd = IWEVGENIE;
 				iwe.u.data.length = (u16)wps_ielen;
 				start = iwe_stream_add_point(info, start, stop, &iwe, wpsie_ptr);
 			}
-			cnt+=ie_ptr[cnt+1]+2; /* goto next */
+			cnt += ie_ptr[cnt + 1] + 2; /* goto next */
 		}
 	}
 
@@ -352,8 +352,8 @@ static char *translate_scan(struct adapter *padapter,
 	#if defined(CONFIG_SIGNAL_DISPLAY_DBM) && defined(CONFIG_BACKGROUND_NOISE_MONITOR)
 	{
 		s16 tmp_noise = 0;
-		rtw_hal_get_odm_var(padapter, HAL_ODM_NOISE_MONITOR,&(pnetwork->network.Configuration.DSConfig), &(tmp_noise));
-		iwe.u.qual.noise = tmp_noise ;
+		rtw_hal_get_odm_var(padapter, HAL_ODM_NOISE_MONITOR, &(pnetwork->network.Configuration.DSConfig), &(tmp_noise));
+		iwe.u.qual.noise = tmp_noise;
 	}
 	#else
 	iwe.u.qual.noise = 0; /*  noise level */
@@ -500,7 +500,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 			DBG_871X("wep, set_tx = 1\n");
 
 			if (rtw_set_802_11_add_wep(padapter, pwep) == (u8)_FAIL)
-				ret = -EOPNOTSUPP ;
+				ret = -EOPNOTSUPP;
 		} else {
 			DBG_871X("wep, set_tx = 0\n");
 
@@ -508,12 +508,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 			/* psecuritypriv->dot11PrivacyKeyIndex =keyid", but can rtw_set_key to fw/cam */
 
 			if (wep_key_idx >= WEP_KEYS) {
-				ret = -EOPNOTSUPP ;
+				ret = -EOPNOTSUPP;
 				goto exit;
 			}
 
 			memcpy(&(psecuritypriv->dot11DefKey[wep_key_idx].skey[0]), pwep->KeyMaterial, pwep->KeyLength);
-			psecuritypriv->dot11DefKeylen[wep_key_idx]=pwep->KeyLength;
+			psecuritypriv->dot11DefKeylen[wep_key_idx] = pwep->KeyLength;
 			rtw_set_key(padapter, psecuritypriv, wep_key_idx, 0, true);
 		}
 
@@ -533,20 +533,20 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 				if (strcmp(param->u.crypt.alg, "none") != 0)
 					psta->ieee8021x_blocked = false;
 
-				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled)||
+				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled) ||
 						(padapter->securitypriv.ndisencryptstatus ==  Ndis802_11Encryption3Enabled)) {
 					psta->dot118021XPrivacy = padapter->securitypriv.dot11PrivacyAlgrthm;
 				}
 
 				if (param->u.crypt.set_tx == 1) { /* pairwise key */
-					memcpy(psta->dot118021x_UncstKey.skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+					memcpy(psta->dot118021x_UncstKey.skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 					if (strcmp(param->u.crypt.alg, "TKIP") == 0) { /* set mic key */
 						/* DEBUG_ERR(("\nset key length :param->u.crypt.key_len =%d\n", param->u.crypt.key_len)); */
 						memcpy(psta->dot11tkiptxmickey.skey, &(param->u.crypt.key[16]), 8);
 						memcpy(psta->dot11tkiprxmickey.skey, &(param->u.crypt.key[24]), 8);
 
-						padapter->securitypriv.busetkipkey =false;
+						padapter->securitypriv.busetkipkey = false;
 						/* _set_timer(&padapter->securitypriv.tkip_timer, 50); */
 					}
 
@@ -556,11 +556,11 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 					rtw_setstakey_cmd(padapter, psta, true, true);
 				} else { /* group key */
 					if (strcmp(param->u.crypt.alg, "TKIP") == 0 || strcmp(param->u.crypt.alg, "CCMP") == 0) {
-						memcpy(padapter->securitypriv.dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+						memcpy(padapter->securitypriv.dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 						/* only TKIP group key need to install this */
 						if (param->u.crypt.key_len > 16) {
-							memcpy(padapter->securitypriv.dot118021XGrptxmickey[param->u.crypt.idx].skey,&(param->u.crypt.key[16]), 8);
-							memcpy(padapter->securitypriv.dot118021XGrprxmickey[param->u.crypt.idx].skey,&(param->u.crypt.key[24]), 8);
+							memcpy(padapter->securitypriv.dot118021XGrptxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[16]), 8);
+							memcpy(padapter->securitypriv.dot118021XGrprxmickey[param->u.crypt.idx].skey, &(param->u.crypt.key[24]), 8);
 						}
 						padapter->securitypriv.binstallGrpkey = true;
 						/* DEBUG_ERR((" param->u.crypt.key_len =%d\n", param->u.crypt.key_len)); */
@@ -568,11 +568,11 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 						padapter->securitypriv.dot118021XGrpKeyid = param->u.crypt.idx;
 
-						rtw_set_key(padapter,&padapter->securitypriv, param->u.crypt.idx, 1, true);
+						rtw_set_key(padapter, &padapter->securitypriv, param->u.crypt.idx, 1, true);
 					} else if (strcmp(param->u.crypt.alg, "BIP") == 0) {
 						/* printk("BIP key_len =%d , index =%d @@@@@@@@@@@@@@@@@@\n", param->u.crypt.key_len, param->u.crypt.idx); */
 						/* save the IGTK key, length 16 bytes */
-						memcpy(padapter->securitypriv.dot11wBIPKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+						memcpy(padapter->securitypriv.dot11wBIPKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 						/*printk("IGTK key below:\n");
 						for (no = 0;no<16;no++)
 							printk(" %02x ", padapter->securitypriv.dot11wBIPKey[param->u.crypt.idx].skey[no]);
@@ -584,7 +584,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 				}
 			}
 
-			pbcmc_sta =rtw_get_bcmc_stainfo(padapter);
+			pbcmc_sta = rtw_get_bcmc_stainfo(padapter);
 			if (pbcmc_sta == NULL) {
 				/* DEBUG_ERR(("Set OID_802_11_ADD_KEY: bcmc stainfo is null\n")); */
 			} else {
@@ -592,7 +592,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 				if (strcmp(param->u.crypt.alg, "none") != 0)
 					pbcmc_sta->ieee8021x_blocked = false;
 
-				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled)||
+				if ((padapter->securitypriv.ndisencryptstatus == Ndis802_11Encryption2Enabled) ||
 						(padapter->securitypriv.ndisencryptstatus ==  Ndis802_11Encryption3Enabled)) {
 					pbcmc_sta->dot118021XPrivacy = padapter->securitypriv.dot11PrivacyAlgrthm;
 				}
@@ -613,7 +613,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 	u8 *buf = NULL;
 	int group_cipher = 0, pairwise_cipher = 0;
 	int ret = 0;
-	u8 null_addr[]= {0, 0, 0, 0, 0, 0};
+	u8 null_addr[] = {0, 0, 0, 0, 0, 0};
 
 	if ((ielen > MAX_WPA_IE_LEN) || (pie == NULL)) {
 		_clr_fwstate_(&padapter->mlmepriv, WIFI_UNDER_WPS);
@@ -630,13 +630,13 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 			goto exit;
 		}
 
-		memcpy(buf, pie , ielen);
+		memcpy(buf, pie, ielen);
 
 		/* dump */
 		{
 			int i;
 			DBG_871X("\n wpa_ie(length:%d):\n", ielen);
-			for (i = 0;i<ielen;i =i+8)
+			for (i = 0; i < ielen; i = i + 8)
 				DBG_871X("0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n", buf[i], buf[i+1], buf[i+2], buf[i+3], buf[i+4], buf[i+5], buf[i+6], buf[i+7]);
 		}
 
@@ -648,13 +648,13 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 
 		if (rtw_parse_wpa_ie(buf, ielen, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
-			padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeWPAPSK;
+			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeWPAPSK;
 			memcpy(padapter->securitypriv.supplicant_ie, &buf[0], ielen);
 		}
 
 		if (rtw_parse_wpa2_ie(buf, ielen, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
-			padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeWPA2PSK;
+			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeWPA2PSK;
 			memcpy(padapter->securitypriv.supplicant_ie, &buf[0], ielen);
 		}
 
@@ -666,7 +666,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 		switch (group_cipher) {
 			case WPA_CIPHER_NONE:
 				padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
-				padapter->securitypriv.ndisencryptstatus =Ndis802_11EncryptionDisabled;
+				padapter->securitypriv.ndisencryptstatus = Ndis802_11EncryptionDisabled;
 				break;
 			case WPA_CIPHER_WEP40:
 				padapter->securitypriv.dot118021XGrpPrivacy = _WEP40_;
@@ -689,7 +689,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 		switch (pairwise_cipher) {
 			case WPA_CIPHER_NONE:
 				padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
-				padapter->securitypriv.ndisencryptstatus =Ndis802_11EncryptionDisabled;
+				padapter->securitypriv.ndisencryptstatus = Ndis802_11EncryptionDisabled;
 				break;
 			case WPA_CIPHER_WEP40:
 				padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
@@ -712,7 +712,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 		_clr_fwstate_(&padapter->mlmepriv, WIFI_UNDER_WPS);
 		{/* set wps_ie */
 			u16 cnt = 0;
-			u8 eid, wps_oui[4]={0x0, 0x50, 0xf2, 0x04};
+			u8 eid, wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 
 			while (cnt < ielen) {
 				eid = buf[cnt];
@@ -762,7 +762,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	u32 ht_ielen = 0;
 	char *p;
-	u8 ht_cap =false, vht_cap =false;
+	u8 ht_cap = false, vht_cap = false;
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 	NDIS_802_11_RATES_EX* prates = NULL;
@@ -772,7 +772,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 	if (check_fwstate(pmlmepriv, _FW_LINKED|WIFI_ADHOC_MASTER_STATE) == true) {
 		/* parsing HT_CAP_IE */
 		p = rtw_get_ie(&pcur_bss->IEs[12], _HT_CAPABILITY_IE_, &ht_ielen, pcur_bss->IELength-12);
-		if (p && ht_ielen>0)
+		if (p && ht_ielen > 0)
 			ht_cap = true;
 
 		prates = &pcur_bss->SupportedRates;
@@ -846,7 +846,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *b)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType ;
+	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType;
 	int ret = 0;
 
 	if (_FAIL == rtw_pwr_wakeup(padapter)) {
@@ -878,7 +878,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 			DBG_871X("set_mode = IW_MODE_INFRA\n");
 			break;
 
-		default :
+		default:
 			ret = -EINVAL;
 			RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("\n Mode: %s is not supported \n", iw_operation_mode[wrqu->mode]));
 			goto exit;
@@ -895,7 +895,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 	}
 */
 
-	if (rtw_set_802_11_infrastructure_mode(padapter, networkType) ==false) {
+	if (rtw_set_802_11_infrastructure_mode(padapter, networkType) == false) {
 
 		ret = -EPERM;
 		goto exit;
@@ -939,8 +939,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	int         intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
         struct iw_pmksa*  pPMK = (struct iw_pmksa *)extra;
-        u8     strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
-        u8     strIssueBssid[ ETH_ALEN ] = { 0x00 };
+        u8     strZeroMacAddress[ETH_ALEN] = { 0x00 };
+        u8     strIssueBssid[ETH_ALEN] = { 0x00 };
 
 	/*
         There are the BSSID information in the bssid.sa_data array.
@@ -960,13 +960,13 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		blInserted = false;
 
 		/* overwrite PMKID */
-		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
+		for (j = 0; j < NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
                                 DBG_871X("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
 
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
-                                psecuritypriv->PMKIDList[ j ].bUsed = true;
+                                psecuritypriv->PMKIDList[j].bUsed = true;
 				psecuritypriv->PMKIDIndex = j+1;
 				blInserted = true;
 				break;
@@ -981,25 +981,25 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	            memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
 		    memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 
-                    psecuritypriv->PMKIDList[ psecuritypriv->PMKIDIndex ].bUsed = true;
-		    psecuritypriv->PMKIDIndex++ ;
+                    psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
+		    psecuritypriv->PMKIDIndex++;
 		    if (psecuritypriv->PMKIDIndex == 16)
 		        psecuritypriv->PMKIDIndex = 0;
 		}
         } else if (pPMK->cmd == IW_PMKSA_REMOVE) {
                 DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
                 intReturn = true;
-		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
+		for (j = 0; j < NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
                                 eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
-                                psecuritypriv->PMKIDList[ j ].bUsed = false;
+                                psecuritypriv->PMKIDList[j].bUsed = false;
 				break;
 			}
 	        }
         } else if (pPMK->cmd == IW_PMKSA_FLUSH) {
             DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
-            memset(&psecuritypriv->PMKIDList[ 0 ], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+            memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
             psecuritypriv->PMKIDIndex = 0;
             intReturn = true;
         }
@@ -1106,11 +1106,11 @@ static int rtw_wx_get_range(struct net_device *dev,
 #define IW_SCAN_CAPA_TIME		0x40
 */
 
-	range->enc_capa = IW_ENC_CAPA_WPA|IW_ENC_CAPA_WPA2|
-			  IW_ENC_CAPA_CIPHER_TKIP|IW_ENC_CAPA_CIPHER_CCMP;
+	range->enc_capa = IW_ENC_CAPA_WPA | IW_ENC_CAPA_WPA2 |
+			  IW_ENC_CAPA_CIPHER_TKIP | IW_ENC_CAPA_CIPHER_CCMP;
 
-	range->scan_capa = IW_SCAN_CAPA_ESSID | IW_SCAN_CAPA_TYPE |IW_SCAN_CAPA_BSSID|
-					IW_SCAN_CAPA_CHANNEL|IW_SCAN_CAPA_MODE|IW_SCAN_CAPA_RATE;
+	range->scan_capa = IW_SCAN_CAPA_ESSID | IW_SCAN_CAPA_TYPE | IW_SCAN_CAPA_BSSID |
+					IW_SCAN_CAPA_CHANNEL | IW_SCAN_CAPA_MODE | IW_SCAN_CAPA_RATE;
 
 	return 0;
 }
@@ -1287,7 +1287,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 		goto exit;
 	}
 
-	if (!padapter->hw_init_completed ) {
+	if (!padapter->hw_init_completed) {
 		ret = -1;
 		goto exit;
 	}
@@ -1330,7 +1330,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 
 	} else if (wrqu->data.length >= WEXT_CSCAN_HEADER_SIZE
 		&& !memcmp(extra, WEXT_CSCAN_HEADER, WEXT_CSCAN_HEADER_SIZE)) {
-		int len = wrqu->data.length -WEXT_CSCAN_HEADER_SIZE;
+		int len = wrqu->data.length - WEXT_CSCAN_HEADER_SIZE;
 		char *pos = extra+WEXT_CSCAN_HEADER_SIZE;
 		char section;
 		char sec_len;
@@ -1339,7 +1339,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 		/* DBG_871X("%s COMBO_SCAN header is recognized\n", __func__); */
 
 		while (len >= 1) {
-			section = *(pos++); len-= 1;
+			section = *(pos++); len -= 1;
 
 			switch (section) {
 				case WEXT_CSCAN_SSID_SECTION:
@@ -1349,9 +1349,9 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 						break;
 					}
 
-					sec_len = *(pos++); len-= 1;
+					sec_len = *(pos++); len -= 1;
 
-					if (sec_len>0 && sec_len<=len) {
+					if (sec_len > 0 && sec_len <= len) {
 						ssid[ssid_index].SsidLength = sec_len;
 						memcpy(ssid[ssid_index].Ssid, pos, ssid[ssid_index].SsidLength);
 						/* DBG_871X("%s COMBO_SCAN with specific ssid:%s, %d\n", __func__ */
@@ -1359,29 +1359,29 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 						ssid_index++;
 					}
 
-					pos+=sec_len; len-=sec_len;
+					pos += sec_len; len -= sec_len;
 					break;
 
 
 				case WEXT_CSCAN_CHANNEL_SECTION:
 					/* DBG_871X("WEXT_CSCAN_CHANNEL_SECTION\n"); */
-					pos+= 1; len-= 1;
+					pos += 1; len -= 1;
 					break;
 				case WEXT_CSCAN_ACTV_DWELL_SECTION:
 					/* DBG_871X("WEXT_CSCAN_ACTV_DWELL_SECTION\n"); */
-					pos+=2; len-=2;
+					pos += 2; len -= 2;
 					break;
 				case WEXT_CSCAN_PASV_DWELL_SECTION:
 					/* DBG_871X("WEXT_CSCAN_PASV_DWELL_SECTION\n"); */
-					pos+=2; len-=2;
+					pos += 2; len -= 2;
 					break;
 				case WEXT_CSCAN_HOME_DWELL_SECTION:
 					/* DBG_871X("WEXT_CSCAN_HOME_DWELL_SECTION\n"); */
-					pos+=2; len-=2;
+					pos += 2; len -= 2;
 					break;
 				case WEXT_CSCAN_TYPE_SECTION:
 					/* DBG_871X("WEXT_CSCAN_TYPE_SECTION\n"); */
-					pos+= 1; len-= 1;
+					pos += 1; len -= 1;
 					break;
 				default:
 					/* DBG_871X("Unknown CSCAN section %c\n", section); */
@@ -1463,7 +1463,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 			&& rtw_mlme_band_check(padapter, pnetwork->network.Configuration.DSConfig) == true
 			&& true == rtw_validate_ssid(&(pnetwork->network.Ssid))) {
 
-			ev =translate_scan(padapter, a, pnetwork, ev, stop);
+			ev = translate_scan(padapter, a, pnetwork, ev, stop);
 		}
 
 		plist = get_next(plist);
@@ -1481,7 +1481,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 	DBG_871X("DBG_IOCTL %s:%d return %d\n", __func__, __LINE__, ret);
 	#endif
 
-	return ret ;
+	return ret;
 
 }
 
@@ -1570,7 +1570,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 				  pnetwork->network.Ssid.Ssid));
 
 			if ((!memcmp(dst_ssid, src_ssid, ndis_ssid.SsidLength)) &&
-				(pnetwork->network.Ssid.SsidLength ==ndis_ssid.SsidLength)) {
+				(pnetwork->network.Ssid.SsidLength == ndis_ssid.SsidLength)) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
 					 ("rtw_wx_set_essid: find match, set infra mode\n"));
 
@@ -1651,7 +1651,7 @@ static int rtw_wx_set_rate(struct net_device *dev,
 	u32 target_rate = wrqu->bitrate.value;
 	u32 fixed = wrqu->bitrate.fixed;
 	u32 ratevalue = 0;
-	u8 mpdatarate[NumRates]={11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0xff};
+	u8 mpdatarate[NumRates] = {11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0xff};
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_set_rate\n"));
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("target_rate = %d, fixed = %d\n", target_rate, fixed));
@@ -1706,8 +1706,8 @@ static int rtw_wx_set_rate(struct net_device *dev,
 
 set_rate:
 
-	for (i = 0; i<NumRates; i++) {
-		if (ratevalue ==mpdatarate[i]) {
+	for (i = 0; i < NumRates; i++) {
+		if (ratevalue == mpdatarate[i]) {
 			datarates[i] = mpdatarate[i];
 			if (fixed == 0)
 				break;
@@ -1855,7 +1855,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 		padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
 		padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_Open; /* open system */
 		authmode = Ndis802_11AuthModeOpen;
-		padapter->securitypriv.ndisauthtype =authmode;
+		padapter->securitypriv.ndisauthtype = authmode;
 
 		goto exit;
 	}
@@ -1881,7 +1881,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 		padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
 		padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
 		authmode = Ndis802_11AuthModeOpen;
-		padapter->securitypriv.ndisauthtype =authmode;
+		padapter->securitypriv.ndisauthtype = authmode;
 	} else if (erq->flags & IW_ENCODE_RESTRICTED) {
 		DBG_871X("rtw_wx_set_enc():IW_ENCODE_RESTRICTED\n");
 		padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
@@ -1891,7 +1891,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 		padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
 		padapter->securitypriv.dot118021XGrpPrivacy = _WEP40_;
 		authmode = Ndis802_11AuthModeShared;
-		padapter->securitypriv.ndisauthtype =authmode;
+		padapter->securitypriv.ndisauthtype = authmode;
 	} else {
 		DBG_871X("rtw_wx_set_enc():erq->flags = 0x%x\n", erq->flags);
 
@@ -1900,7 +1900,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 		padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
 		padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
 		authmode = Ndis802_11AuthModeOpen;
-		padapter->securitypriv.ndisauthtype =authmode;
+		padapter->securitypriv.ndisauthtype = authmode;
 	}
 
 	wep.KeyIndex = key;
@@ -1909,7 +1909,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 
 		wep.Length = wep.KeyLength + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 	} else {
-		wep.KeyLength = 0 ;
+		wep.KeyLength = 0;
 
 		if (keyindex_provided == 1) { /*  set key_id only, no given KeyMaterial(erq->length == 0). */
 			padapter->securitypriv.dot11PrivacyKeyIndex = key;
@@ -2093,7 +2093,7 @@ static int rtw_wx_set_auth(struct net_device *dev,
 			padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
 			padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
 			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_Open; /* open system */
-			padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeOpen;
+			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeOpen;
 		}
 
 		break;
@@ -2181,7 +2181,7 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 		param->u.crypt.set_tx = 0;
 	}
 
-	param->u.crypt.idx = (pencoding->flags&0x00FF) -1 ;
+	param->u.crypt.idx = (pencoding->flags & 0x00FF) - 1;
 
 	if (pext->ext_flags & IW_ENCODE_EXT_RX_SEQ_VALID)
 		memcpy(param->u.crypt.seq, pext->rx_seq, 8);
@@ -2459,7 +2459,7 @@ static int rtw_get_ap_info(struct net_device *dev,
 
 	/* pdata->length = 0;? */
 	pdata->flags = 0;
-	if (pdata->length>=32) {
+	if (pdata->length >= 32) {
 		if (copy_from_user(data, pdata->pointer, 32)) {
 			ret = -EINVAL;
 			goto exit;
@@ -2492,13 +2492,13 @@ static int rtw_get_ap_info(struct net_device *dev,
 			DBG_871X("BSSID:" MAC_FMT "\n", MAC_ARG(bssid));
 
 			pbuf = rtw_get_wpa_ie(&pnetwork->network.IEs[12], &wpa_ielen, pnetwork->network.IELength-12);
-			if (pbuf && (wpa_ielen>0)) {
+			if (pbuf && (wpa_ielen > 0)) {
 				pdata->flags = 1;
 				break;
 			}
 
 			pbuf = rtw_get_wpa2_ie(&pnetwork->network.IEs[12], &wpa_ielen, pnetwork->network.IELength-12);
-			if (pbuf && (wpa_ielen>0)) {
+			if (pbuf && (wpa_ielen > 0)) {
 				pdata->flags = 2;
 				break;
 			}
@@ -2510,7 +2510,7 @@ static int rtw_get_ap_info(struct net_device *dev,
 
 	spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
 
-	if (pdata->length>=34) {
+	if (pdata->length >= 34) {
 		if (copy_to_user((u8 __force __user *)pdata->pointer+32, (u8 *)&pdata->flags, 1)) {
 			ret = -EINVAL;
 			goto exit;
@@ -2541,7 +2541,7 @@ static int rtw_set_pid(struct net_device *dev,
 	selector = *pdata;
 	if (selector < 3 && selector >= 0) {
 		padapter->pid[selector] = *(pdata+1);
-		DBG_871X("%s set pid[%d]=%d\n", __func__, selector , padapter->pid[selector]);
+		DBG_871X("%s set pid[%d]=%d\n", __func__, selector, padapter->pid[selector]);
 	}
 	else
 		DBG_871X("%s selector %d error\n", __func__, selector);
@@ -2563,7 +2563,7 @@ static int rtw_wps_start(struct net_device *dev,
 	u32   u32wps_start = 0;
         unsigned int uintRet = 0;
 
-	if ((true == padapter->bDriverStopped) ||(true ==padapter->bSurpriseRemoved) || (NULL == pdata)) {
+	if ((true == padapter->bDriverStopped) || (true == padapter->bSurpriseRemoved) || (NULL == pdata)) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -2733,8 +2733,8 @@ static int rtw_dbg_port(struct net_device *dev,
 					break;
 				case 0x01: /* dbg mode */
 					padapter->recvpriv.is_signal_dbg = 1;
-					extra_arg = extra_arg>100?100:extra_arg;
-					padapter->recvpriv.signal_strength_dbg =extra_arg;
+					extra_arg = extra_arg > 100 ? 100 : extra_arg;
+					padapter->recvpriv.signal_strength_dbg = extra_arg;
 					break;
 			}
 			break;
@@ -2806,7 +2806,7 @@ static int rtw_dbg_port(struct net_device *dev,
 						DBG_871X("ampdu_enable = %d\n", psta->htpriv.ampdu_enable);
 						DBG_871X("agg_enable_bitmap =%x, candidate_tid_bitmap =%x\n", psta->htpriv.agg_enable_bitmap, psta->htpriv.candidate_tid_bitmap);
 
-						for (i = 0;i<16;i++) {
+						for (i = 0; i < 16; i++) {
 							preorder_ctrl = &psta->recvreorder_ctrl[i];
 							if (preorder_ctrl->enable)
 								DBG_871X("tid =%d, indicate_seq =%d\n", i, preorder_ctrl->indicate_seq);
@@ -2845,7 +2845,7 @@ static int rtw_dbg_port(struct net_device *dev,
 
 						spin_lock_bh(&pstapriv->sta_hash_lock);
 
-						for (i = 0; i< NUM_STA; i++) {
+						for (i = 0; i < NUM_STA; i++) {
 							phead = &(pstapriv->sta_hash[i]);
 							plist = get_next(phead);
 
@@ -2872,7 +2872,7 @@ static int rtw_dbg_port(struct net_device *dev,
 
 
 
-									for (j = 0;j<16;j++) {
+									for (j = 0; j < 16; j++) {
 										preorder_ctrl = &psta->recvreorder_ctrl[j];
 										if (preorder_ctrl->enable)
 											DBG_871X("tid =%d, indicate_seq =%d\n", j, preorder_ctrl->indicate_seq);
@@ -2900,7 +2900,7 @@ static int rtw_dbg_port(struct net_device *dev,
 						DBG_871X("enable driver ctrl vcs = %d\n", extra_arg);
 						padapter->driver_vcs_en = 1;
 
-						if (extra_arg>2)
+						if (extra_arg > 2)
 							padapter->driver_vcs_type = 1;
 						else
 							padapter->driver_vcs_type = extra_arg;
@@ -3048,7 +3048,7 @@ static int rtw_dbg_port(struct net_device *dev,
 
 							if (max_rx_rate < 0xc) { /*  max_rx_rate < MSC0 -> B or G -> disable HT */
 								pregistrypriv->ht_enable = 0;
-								for (i = 0; i<NumRates; i++) {
+								for (i = 0; i < NumRates; i++) {
 									if (pmlmeext->datarate[i] > max_rx_rate)
 										pmlmeext->datarate[i] = 0xff;
 								}
@@ -3057,7 +3057,7 @@ static int rtw_dbg_port(struct net_device *dev,
 							else if (max_rx_rate < 0x1c) { /*  mcs0~mcs15 */
 								u32 mcs_bitmap = 0x0;
 
-								for (i = 0; i<((max_rx_rate+1)-0xc); i++)
+								for (i = 0; i < ((max_rx_rate + 1) - 0xc); i++)
 									mcs_bitmap |= BIT(i);
 
 								set_mcs_rate_by_mask(pmlmeext->default_supported_mcs_set, mcs_bitmap);
@@ -3129,9 +3129,9 @@ static int rtw_dbg_port(struct net_device *dev,
 			                    */
 
 			                    int value;
-			                    DBG_871X("Set GPIO Direction! arg = %d , extra_arg =%d\n", arg , extra_arg);
+			                    DBG_871X("Set GPIO Direction! arg = %d , extra_arg =%d\n", arg, extra_arg);
 			                    value = rtw_config_gpio(dev, arg, extra_arg);
-			                    DBG_871X("Set GPIO Direction %s\n", (value ==-1)?"Fail!!!":"Success");
+			                    DBG_871X("Set GPIO Direction %s\n", (value == -1) ? "Fail!!!" : "Success");
 			                    break;
 					}
 				case 0x27: /* Set GPIO output direction value */
@@ -3142,15 +3142,15 @@ static int rtw_dbg_port(struct net_device *dev,
 						*/
 
 						int value;
-						DBG_871X("Set GPIO Value! arg = %d , extra_arg =%d\n", arg , extra_arg);
+						DBG_871X("Set GPIO Value! arg = %d , extra_arg =%d\n", arg, extra_arg);
 						value = rtw_set_gpio_output_value(dev, arg, extra_arg);
-						DBG_871X("Set GPIO Value %s\n", (value ==-1)?"Fail!!!":"Success");
+						DBG_871X("Set GPIO Value %s\n", (value == -1) ? "Fail!!!" : "Success");
 						break;
 					}
 #endif
 				case 0xaa:
 					{
-						if ((extra_arg & 0x7F)> 0x3F) extra_arg = 0xFF;
+						if ((extra_arg & 0x7F) > 0x3F) extra_arg = 0xFF;
 						DBG_871X("chang data rate to :0x%02x\n", extra_arg);
 						padapter->fix_rate = extra_arg;
 					}
@@ -3161,7 +3161,7 @@ static int rtw_dbg_port(struct net_device *dev,
 							mac_reg_dump(RTW_DBGDUMP, padapter);
 						else if (extra_arg == 1)
 							bb_reg_dump(RTW_DBGDUMP, padapter);
-						else if (extra_arg ==2)
+						else if (extra_arg == 2)
 							rf_reg_dump(RTW_DBGDUMP, padapter);
 					}
 					break;
@@ -3170,8 +3170,8 @@ static int rtw_dbg_port(struct net_device *dev,
 					{
 						u32 odm_flag;
 
-						if (0xf ==extra_arg) {
-							rtw_hal_get_def_var(padapter, HAL_DEF_DBG_DM_FUNC,&odm_flag);
+						if (0xf == extra_arg) {
+							rtw_hal_get_def_var(padapter, HAL_DEF_DBG_DM_FUNC, &odm_flag);
 							DBG_871X(" === DMFlag(0x%08x) ===\n", odm_flag);
 							DBG_871X("extra_arg = 0  - disable all dynamic func\n");
 							DBG_871X("extra_arg = 1  - disable DIG- BIT(0)\n");
@@ -3187,7 +3187,7 @@ static int rtw_dbg_port(struct net_device *dev,
 								extra_arg = 3  - turn on all dynamic func
 							*/
 							rtw_hal_set_def_var(padapter, HAL_DEF_DBG_DM_FUNC, &(extra_arg));
-							rtw_hal_get_def_var(padapter, HAL_DEF_DBG_DM_FUNC,&odm_flag);
+							rtw_hal_get_def_var(padapter, HAL_DEF_DBG_DM_FUNC, &odm_flag);
 							DBG_871X(" === DMFlag(0x%08x) ===\n", odm_flag);
 						}
 					}
@@ -3257,7 +3257,7 @@ static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 		/* ret = ieee80211_wpa_enable(ieee, value); */
 
 		switch ((value)&0xff) {
-		case 1 : /* WPA */
+		case 1: /* WPA */
 			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeWPAPSK; /* WPA_PSK */
 			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
 			break;
@@ -3428,7 +3428,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct security_priv* psecuritypriv =&(padapter->securitypriv);
+	struct security_priv* psecuritypriv = &(padapter->securitypriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	DBG_871X("%s\n", __func__);
@@ -3481,7 +3481,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 		DBG_871X("r871x_set_encryption, wep_key_idx =%d, len =%d\n", wep_key_idx, wep_key_len);
 
-		if ((wep_key_idx >= WEP_KEYS) || (wep_key_len<= 0)) {
+		if ((wep_key_idx >= WEP_KEYS) || (wep_key_len <= 0)) {
 			ret = -EINVAL;
 			goto exit;
 		}
@@ -3523,7 +3523,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 			memcpy(&(psecuritypriv->dot11DefKey[wep_key_idx].skey[0]), pwep->KeyMaterial, pwep->KeyLength);
 
-			psecuritypriv->dot11DefKeylen[wep_key_idx]=pwep->KeyLength;
+			psecuritypriv->dot11DefKeylen[wep_key_idx] = pwep->KeyLength;
 
 			rtw_ap_set_wep_key(padapter, pwep->KeyMaterial, pwep->KeyLength, wep_key_idx, 1);
 		} else {
@@ -3549,7 +3549,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 			if (strcmp(param->u.crypt.alg, "WEP") == 0) {
 				DBG_871X("%s, set group_key, WEP\n", __func__);
 
-				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 				psecuritypriv->dot118021XGrpPrivacy = _WEP40_;
 				if (param->u.crypt.key_len == 13)
@@ -3560,7 +3560,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 				psecuritypriv->dot118021XGrpPrivacy = _TKIP_;
 
-				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 				/* DEBUG_ERR("set key length :param->u.crypt.key_len =%d\n", param->u.crypt.key_len); */
 				/* set mic key */
@@ -3575,7 +3575,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 				psecuritypriv->dot118021XGrpPrivacy = _AES_;
 
-				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 			} else {
 				DBG_871X("%s, set group_key, none\n", __func__);
 
@@ -3590,7 +3590,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 			rtw_ap_set_group_key(padapter, param->u.crypt.key, psecuritypriv->dot118021XGrpPrivacy, param->u.crypt.idx);
 
-			pbcmc_sta =rtw_get_bcmc_stainfo(padapter);
+			pbcmc_sta = rtw_get_bcmc_stainfo(padapter);
 			if (pbcmc_sta) {
 				pbcmc_sta->ieee8021x_blocked = false;
 				pbcmc_sta->dot118021XPrivacy = psecuritypriv->dot118021XGrpPrivacy;/* rx will use bmc_sta's dot118021XPrivacy */
@@ -3604,7 +3604,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	if (psecuritypriv->dot11AuthAlgrthm == dot11AuthAlgrthm_8021X && psta) { /*  psk/802_1x */
 		if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 			if (param->u.crypt.set_tx == 1)	{
-				memcpy(psta->dot118021x_UncstKey.skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+				memcpy(psta->dot118021x_UncstKey.skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 				if (strcmp(param->u.crypt.alg, "WEP") == 0) {
 					DBG_871X("%s, set pairwise key, WEP\n", __func__);
@@ -3641,7 +3641,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 			} else { /* group key??? */
 				if (strcmp(param->u.crypt.alg, "WEP") == 0) {
-					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 					psecuritypriv->dot118021XGrpPrivacy = _WEP40_;
 					if (param->u.crypt.key_len == 13)
@@ -3649,7 +3649,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 				} else if (strcmp(param->u.crypt.alg, "TKIP") == 0) {
 					psecuritypriv->dot118021XGrpPrivacy = _TKIP_;
 
-					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 
 					/* DEBUG_ERR("set key length :param->u.crypt.key_len =%d\n", param->u.crypt.key_len); */
 					/* set mic key */
@@ -3661,7 +3661,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 				} else if (strcmp(param->u.crypt.alg, "CCMP") == 0) {
 					psecuritypriv->dot118021XGrpPrivacy = _AES_;
 
-					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,  param->u.crypt.key, (param->u.crypt.key_len>16 ?16:param->u.crypt.key_len));
+					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey, param->u.crypt.key, (param->u.crypt.key_len > 16 ? 16 : param->u.crypt.key_len));
 				} else {
 					psecuritypriv->dot118021XGrpPrivacy = _NO_PRIVACY_;
 				}
@@ -3674,7 +3674,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 				rtw_ap_set_group_key(padapter, param->u.crypt.key, psecuritypriv->dot118021XGrpPrivacy, param->u.crypt.idx);
 
-				pbcmc_sta =rtw_get_bcmc_stainfo(padapter);
+				pbcmc_sta = rtw_get_bcmc_stainfo(padapter);
 				if (pbcmc_sta) {
 					pbcmc_sta->ieee8021x_blocked = false;
 					pbcmc_sta->dot118021XPrivacy = psecuritypriv->dot118021XGrpPrivacy;/* rx will use bmc_sta's dot118021XPrivacy */
@@ -3706,7 +3706,7 @@ static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int
 
 	memcpy(&pstapriv->max_num_sta, param->u.bcn_ie.reserved, 2);
 
-	if ((pstapriv->max_num_sta>NUM_STA) || (pstapriv->max_num_sta<= 0))
+	if ((pstapriv->max_num_sta > NUM_STA) || (pstapriv->max_num_sta <= 0))
 		pstapriv->max_num_sta = NUM_STA;
 
 
@@ -3831,12 +3831,12 @@ static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 
 	psta = rtw_get_stainfo(pstapriv, param->sta_addr);
 	if (psta) {
-		u8 updated =false;
+		u8 updated = false;
 
 		/* DBG_871X("free psta =%p, aid =%d\n", psta, psta->aid); */
 
 		spin_lock_bh(&pstapriv->asoc_list_lock);
-		if (list_empty(&psta->asoc_list) ==false) {
+		if (list_empty(&psta->asoc_list) == false) {
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
 			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
@@ -3895,12 +3895,12 @@ static int rtw_ioctl_get_sta_data(struct net_device *dev, struct ieee_param *par
 		ht_20mhz_set : BIT(5)
 */
 
-		psta_data->sta_set =((psta->nonerp_set) |
-							(psta->no_short_slot_time_set <<1) |
-							(psta->no_short_preamble_set <<2) |
-							(psta->no_ht_gf_set <<3) |
-							(psta->no_ht_set <<4) |
-							(psta->ht_20mhz_set <<5));
+		psta_data->sta_set = ((psta->nonerp_set) |
+							 (psta->no_short_slot_time_set << 1) |
+							 (psta->no_short_preamble_set << 2) |
+							 (psta->no_ht_gf_set << 3) |
+							 (psta->no_ht_set << 4) |
+							 (psta->ht_20mhz_set << 5));
 
 		psta_data->tx_supp_rates_len =  psta->bssratelen;
 		memcpy(psta_data->tx_supp_rates, psta->bssrateset, psta->bssratelen);
@@ -3969,7 +3969,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param, int len)
 {
 	int ret = 0;
-	unsigned char wps_oui[4]={0x0, 0x50, 0xf2, 0x04};
+	unsigned char wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
@@ -3986,7 +3986,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 	kfree(pmlmepriv->wps_beacon_ie);
 	pmlmepriv->wps_beacon_ie = NULL;
 
-	if (ie_len>0) {
+	if (ie_len > 0) {
 		pmlmepriv->wps_beacon_ie = rtw_malloc(ie_len);
 		pmlmepriv->wps_beacon_ie_len = ie_len;
 		if (pmlmepriv->wps_beacon_ie == NULL) {
@@ -4024,7 +4024,7 @@ static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *par
 	kfree(pmlmepriv->wps_probe_resp_ie);
 	pmlmepriv->wps_probe_resp_ie = NULL;
 
-	if (ie_len>0) {
+	if (ie_len > 0) {
 		pmlmepriv->wps_probe_resp_ie = rtw_malloc(ie_len);
 		pmlmepriv->wps_probe_resp_ie_len = ie_len;
 		if (pmlmepriv->wps_probe_resp_ie == NULL) {
@@ -4057,7 +4057,7 @@ static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *par
 	kfree(pmlmepriv->wps_assoc_resp_ie);
 	pmlmepriv->wps_assoc_resp_ie = NULL;
 
-	if (ie_len>0) {
+	if (ie_len > 0) {
 		pmlmepriv->wps_assoc_resp_ie = rtw_malloc(ie_len);
 		pmlmepriv->wps_assoc_resp_ie_len = ie_len;
 		if (pmlmepriv->wps_assoc_resp_ie == NULL) {
@@ -4357,11 +4357,11 @@ static int rtw_wx_set_priv(struct net_device *dev,
 		struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 		u8 *probereq_wpsie = ext;
 		int probereq_wpsie_len = len;
-		u8 wps_oui[4]={0x0, 0x50, 0xf2, 0x04};
+		u8 wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 
 		if ((_VENDOR_SPECIFIC_IE_ == probereq_wpsie[0]) &&
 			(!memcmp(&probereq_wpsie[2], wps_oui, 4))) {
-			cp_sz = probereq_wpsie_len>MAX_WPS_IE_LEN ? MAX_WPS_IE_LEN:probereq_wpsie_len;
+			cp_sz = probereq_wpsie_len > MAX_WPS_IE_LEN ? MAX_WPS_IE_LEN : probereq_wpsie_len;
 
 			if (pmlmepriv->wps_probe_req_ie) {
 				pmlmepriv->wps_probe_req_ie_len = 0;
@@ -4498,7 +4498,7 @@ static int rtw_test(
 		ret = rtw_hal_fill_h2c_cmd(padapter, param[0], count-1, &param[1]);
 
 		pos = sprintf(extra, "H2C ID = 0x%02x content =", param[0]);
-		for (i = 1; i<count; i++)
+		for (i = 1; i < count; i++)
 			pos += sprintf(extra+pos, "%02x,", param[i]);
 		extra[pos] = 0;
 		pos--;
@@ -4636,14 +4636,14 @@ static const struct iw_priv_args rtw_private_args[] = {
 	},
 	{
 		SIOCIWFIRSTPRIV + 0x11,
-		IW_PRIV_TYPE_CHAR | 1024, IW_PRIV_TYPE_CHAR | IW_PRIV_SIZE_MASK , "p2p_get"
+		IW_PRIV_TYPE_CHAR | 1024, IW_PRIV_TYPE_CHAR | IW_PRIV_SIZE_MASK, "p2p_get"
 	},
 	{
 		SIOCIWFIRSTPRIV + 0x12, 0, 0, "NULL"
 	},
 	{
 		SIOCIWFIRSTPRIV + 0x13,
-		IW_PRIV_TYPE_CHAR | 64, IW_PRIV_TYPE_CHAR | 64 , "p2p_get2"
+		IW_PRIV_TYPE_CHAR | 64, IW_PRIV_TYPE_CHAR | 64, "p2p_get2"
 	},
 	{
 		SIOCIWFIRSTPRIV + 0x14,
@@ -4651,14 +4651,14 @@ static const struct iw_priv_args rtw_private_args[] = {
 	},
 	{
 		SIOCIWFIRSTPRIV + 0x15,
-		IW_PRIV_TYPE_CHAR | 1024, IW_PRIV_TYPE_CHAR | 1024 , "tdls_get"
+		IW_PRIV_TYPE_CHAR | 1024, IW_PRIV_TYPE_CHAR | 1024, "tdls_get"
 	},
 	{
 		SIOCIWFIRSTPRIV + 0x16,
 		IW_PRIV_TYPE_CHAR | 64, 0, "pm_set"
 	},
 
-	{SIOCIWFIRSTPRIV + 0x18, IW_PRIV_TYPE_CHAR | IFNAMSIZ , 0 , "rereg_nd_name"},
+	{SIOCIWFIRSTPRIV + 0x18, IW_PRIV_TYPE_CHAR | IFNAMSIZ, 0, "rereg_nd_name"},
 	{SIOCIWFIRSTPRIV + 0x1A, IW_PRIV_TYPE_CHAR | 1024, 0, "efuse_set"},
 	{SIOCIWFIRSTPRIV + 0x1B, IW_PRIV_TYPE_CHAR | 128, IW_PRIV_TYPE_CHAR | IW_PRIV_SIZE_MASK, "efuse_get"},
 	{
@@ -4667,10 +4667,10 @@ static const struct iw_priv_args rtw_private_args[] = {
 	},
 
 #ifdef CONFIG_WOWLAN
-		{ MP_WOW_ENABLE , IW_PRIV_TYPE_CHAR | 1024, 0, "wow_mode" }, /* set */
+		{ MP_WOW_ENABLE, IW_PRIV_TYPE_CHAR | 1024, 0, "wow_mode" }, /* set */
 #endif
 #ifdef CONFIG_AP_WOWLAN
-		{ MP_AP_WOW_ENABLE , IW_PRIV_TYPE_CHAR | 1024, 0, "ap_wow_mode" }, /* set */
+		{ MP_AP_WOW_ENABLE, IW_PRIV_TYPE_CHAR | 1024, 0, "ap_wow_mode" }, /* set */
 #endif
 };
 
@@ -4721,7 +4721,7 @@ static iw_handler rtw_private_handler[] = {
 static struct iw_statistics *rtw_get_wireless_stats(struct net_device *dev)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct iw_statistics *piwstats =&padapter->iwstats;
+	struct iw_statistics *piwstats = &padapter->iwstats;
 	int tmp_level = 0;
 	int tmp_qual = 0;
 	int tmp_noise = 0;
@@ -4760,10 +4760,10 @@ static struct iw_statistics *rtw_get_wireless_stats(struct net_device *dev)
 			rtw_ps_deny(padapter, PS_DENY_IOCTL);
 			LeaveAllPowerSaveModeDirect(padapter);
 
-			rtw_hal_set_odm_var(padapter, HAL_ODM_NOISE_MONITOR,&info, false);
+			rtw_hal_set_odm_var(padapter, HAL_ODM_NOISE_MONITOR, &info, false);
 			/* ODM_InbandNoise_Monitor(podmpriv, true, 0x20, 100); */
 			rtw_ps_deny_cancel(padapter, PS_DENY_IOCTL);
-			rtw_hal_get_odm_var(padapter, HAL_ODM_NOISE_MONITOR,&(info.chan), &(padapter->recvpriv.noise));
+			rtw_hal_get_odm_var(padapter, HAL_ODM_NOISE_MONITOR, &(info.chan), &(padapter->recvpriv.noise));
 			DBG_871X("chan:%d, noise_level:%d\n", info.chan, padapter->recvpriv.noise);
 		}
 #endif
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index 52a5b3156b28..f121dbfaa029 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -64,7 +64,7 @@ void rtw_os_indicate_scan_done(struct adapter *padapter, bool aborted)
 	indicate_wx_scan_complete_event(padapter);
 }
 
-static RT_PMKID_LIST   backupPMKIDList[ NUM_PMKID_CACHE ];
+static RT_PMKID_LIST   backupPMKIDList[NUM_PMKID_CACHE];
 void rtw_reset_securitypriv(struct adapter *adapter)
 {
 	u8 backupPMKIDIndex = 0;
@@ -83,7 +83,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 		/*  Backup the btkip_countermeasure information. */
 		/*  When the countermeasure is trigger, the driver have to disconnect with AP for 60 seconds. */
 
-		memcpy(&backupPMKIDList[ 0 ], &adapter->securitypriv.PMKIDList[ 0 ], sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memcpy(&backupPMKIDList[0], &adapter->securitypriv.PMKIDList[0], sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		backupPMKIDIndex = adapter->securitypriv.PMKIDIndex;
 		backupTKIPCountermeasure = adapter->securitypriv.btkip_countermeasure;
 		backupTKIPcountermeasure_time = adapter->securitypriv.btkip_countermeasure_time;
@@ -95,7 +95,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 
 		/*  Added by Albert 2009/02/18 */
 		/*  Restore the PMK information to securitypriv structure for the following connection. */
-		memcpy(&adapter->securitypriv.PMKIDList[ 0 ], &backupPMKIDList[ 0 ], sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memcpy(&adapter->securitypriv.PMKIDList[0], &backupPMKIDList[0], sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		adapter->securitypriv.PMKIDIndex = backupPMKIDIndex;
 		adapter->securitypriv.btkip_countermeasure = backupTKIPCountermeasure;
 		adapter->securitypriv.btkip_countermeasure_time = backupTKIPcountermeasure_time;
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 47e984d5b7cb..17e65934fb5b 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -202,8 +202,8 @@ module_param(rtw_tx_pwr_by_rate, int, 0644);
 MODULE_PARM_DESC(rtw_tx_pwr_by_rate, "0:Disable, 1:Enable, 2: Depend on efuse");
 
 int _netdev_open(struct net_device *pnetdev);
-int netdev_open (struct net_device *pnetdev);
-static int netdev_close (struct net_device *pnetdev);
+int netdev_open(struct net_device *pnetdev);
+static int netdev_close(struct net_device *pnetdev);
 
 static void loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 {
@@ -221,7 +221,7 @@ static void loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 	registry_par->channel = (u8)rtw_channel;
 	registry_par->wireless_mode = (u8)rtw_wireless_mode;
 
-	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ;
+	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense;
 	registry_par->vcs_type = (u8)rtw_vcs_type;
 	registry_par->rts_thresh = (u16)rtw_rts_thresh;
 	registry_par->frag_thresh = (u16)rtw_frag_thresh;
@@ -554,7 +554,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
 	return _status;
 }
 
-void rtw_stop_drv_threads (struct adapter *padapter)
+void rtw_stop_drv_threads(struct adapter *padapter)
 {
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));
 
@@ -1154,7 +1154,7 @@ void rtw_dev_unload(struct adapter *padapter)
 				DBG_871X("stop cmdthd timeout\n");
 				break;
 			} else {
-				cnt ++;
+				cnt++;
 				DBG_871X("cmdthd is running(%d)\n", cnt);
 				msleep(10);
 			}
@@ -1799,7 +1799,7 @@ int rtw_resume_common(struct adapter *padapter)
 		pwrpriv->pno_in_resume = false;
 	#endif
 	}
-	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__ , ret,
+	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__, ret,
 		jiffies_to_msecs(jiffies - start_time));
 
 	return ret;
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 643caccc3069..22059bbbed9d 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -197,7 +197,7 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 		key_type |= NL80211_KEYTYPE_PAIRWISE;
 	}
 
-	cfg80211_michael_mic_failure(padapter->pnetdev, (u8 *)&pmlmepriv->assoc_bssid[ 0 ], key_type, -1,
+	cfg80211_michael_mic_failure(padapter->pnetdev, (u8 *)&pmlmepriv->assoc_bssid[0], key_type, -1,
 		NULL, GFP_ATOMIC);
 
 	memset(&ev, 0x00, sizeof(ev));
@@ -208,7 +208,7 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 	}
 
 	ev.src_addr.sa_family = ARPHRD_ETHER;
-	memcpy(ev.src_addr.sa_data, &pmlmepriv->assoc_bssid[ 0 ], ETH_ALEN);
+	memcpy(ev.src_addr.sa_data, &pmlmepriv->assoc_bssid[0], ETH_ALEN);
 
 	memset(&wrqu, 0x00, sizeof(wrqu));
 	wrqu.data.length = sizeof(ev);
@@ -223,7 +223,7 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 
 	DBG_871X("eth rx: got eth_type = 0x%x\n", pattrib->eth_type);
 
-	if (psta && psta->isrc && psta->pid>0) {
+	if (psta && psta->isrc && psta->pid > 0) {
 		u16 rx_pid;
 
 		rx_pid = *(u16*)(skb->data+ETH_HLEN);
@@ -239,7 +239,7 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 			/* DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n", len, ctrl_type); */
 			DBG_871X("eth, RC: len = 0x%x\n", len);
 
-			for (i = 0;i<len;i++)
+			for (i = 0; i < len; i++)
 				DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+4+i));
 				/* DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+6+i)); */
 
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 859f4a0afb95..b093b5629171 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -108,7 +108,7 @@ static void sdio_free_irq(struct dvobj_priv *dvobj)
 			err = sdio_release_irq(func);
 			if (err) {
 				dvobj->drv_dbg.dbg_sdio_free_irq_error_cnt++;
-				DBG_871X_LEVEL(_drv_err_,"%s: sdio_release_irq FAIL(%d)!\n", __func__, err);
+				DBG_871X_LEVEL(_drv_err_, "%s: sdio_release_irq FAIL(%d)!\n", __func__, err);
 			} else
 				dvobj->drv_dbg.dbg_sdio_free_irq_cnt++;
 			sdio_release_host(func);
@@ -324,7 +324,7 @@ static struct adapter *rtw_sdio_if1_init(struct dvobj_priv *dvobj, const struct
 	padapter->dvobj = dvobj;
 	dvobj->if1 = padapter;
 
-	padapter->bDriverStopped =true;
+	padapter->bDriverStopped = true;
 
 	dvobj->padapters = padapter;
 	padapter->iface_id = 0;
@@ -430,7 +430,7 @@ static void rtw_sdio_if1_deinit(struct adapter *if1)
 	rtw_cancel_all_timer(if1);
 
 #ifdef CONFIG_WOWLAN
-	adapter_to_pwrctl(if1)->wowlan_mode =false;
+	adapter_to_pwrctl(if1)->wowlan_mode = false;
 	DBG_871X_LEVEL(_drv_always_, "%s wowlan_mode:%d\n", __func__, adapter_to_pwrctl(if1)->wowlan_mode);
 #endif /* CONFIG_WOWLAN */
 
@@ -500,7 +500,7 @@ static int rtw_drv_init(
 	if (status != _SUCCESS)
 		sdio_dvobj_deinit(func);
 exit:
-	return status == _SUCCESS?0:-ENODEV;
+	return status == _SUCCESS ? 0 : -ENODEV;
 }
 
 static void rtw_dev_remove(struct sdio_func *func)
@@ -548,7 +548,7 @@ extern int pm_netdev_close(struct net_device *pnetdev, u8 bnormal);
 
 static int rtw_sdio_suspend(struct device *dev)
 {
-	struct sdio_func *func =dev_to_sdio_func(dev);
+	struct sdio_func *func = dev_to_sdio_func(dev);
 	struct dvobj_priv *psdpriv = sdio_get_drvdata(func);
 	struct pwrctrl_priv *pwrpriv = dvobj_to_pwrctl(psdpriv);
 	struct adapter *padapter = psdpriv->if1;
@@ -585,7 +585,7 @@ static int rtw_resume_process(struct adapter *padapter)
 
 static int rtw_sdio_resume(struct device *dev)
 {
-	struct sdio_func *func =dev_to_sdio_func(dev);
+	struct sdio_func *func = dev_to_sdio_func(dev);
 	struct dvobj_priv *psdpriv = sdio_get_drvdata(func);
 	struct adapter *padapter = psdpriv->if1;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index 4e81bc13e57d..fec8a8caaa46 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -15,16 +15,16 @@ uint rtw_remainder_len(struct pkt_file *pfile)
 	return (pfile->buf_len - ((SIZE_PTR)(pfile->cur_addr) - (SIZE_PTR)(pfile->buf_start)));
 }
 
-void _rtw_open_pktfile (_pkt *pktptr, struct pkt_file *pfile)
+void _rtw_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
 {
 	pfile->pkt = pktptr;
 	pfile->cur_addr = pfile->buf_start = pktptr->data;
 	pfile->pkt_len = pfile->buf_len = pktptr->len;
 
-	pfile->cur_buffer = pfile->buf_start ;
+	pfile->cur_buffer = pfile->buf_start;
 }
 
-uint _rtw_pktfile_read (struct pkt_file *pfile, u8 *rmem, uint rlen)
+uint _rtw_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen)
 {
 	uint	len = 0;
 
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
