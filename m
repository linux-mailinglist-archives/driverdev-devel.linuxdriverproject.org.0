Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB11D20C069
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 11:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91673882C4;
	Sat, 27 Jun 2020 09:08:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2y9wJOyFWMfq; Sat, 27 Jun 2020 09:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 04D2288152;
	Sat, 27 Jun 2020 09:08:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52A081BF473
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 09:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F0D786B1D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 09:08:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rczIgjkpgV-i for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 09:08:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 900F086AC8
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 09:08:40 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id z15so445057wrl.8
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 02:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b0gGZe3gZ//gmqSMXzy9TEXdlGp8pcUVKTxCt0nv9Hw=;
 b=pb2O6YIRl4UdPZ0S9HyBQ0t+HRlqSOCybgRuvzH/FCPwRrQ4xl8TUNzYxM3NMbm6jj
 mF6VMJCREoTtv3Ez+3C7Yo9h7dLMAll3cxfQafbb/yUwnOkviyyiAus4WjZw4leo0lhV
 lFziH6CzSqECC6rwkkvBjpDLe4XkiQDYnd3+4PAQQJwyJ1cpzYVnY9MDLJhdB+Pkxlpf
 KrhQIJJJXxevTZHhlrT0lIZLMY/Qom2Yh5ysq0F9VIF7Wsz+7Y0D2e3OQNXMWWDaajhE
 7RR22Ap/0wlbRd1PGk2VeoD/2E2OsQTiFt0Mxjle8HxfqdH3PGP9rsp5aqbo2B2Nc1VN
 rJJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b0gGZe3gZ//gmqSMXzy9TEXdlGp8pcUVKTxCt0nv9Hw=;
 b=ioWs8LRZ0t0PtvoI/u3hmIz+iyCIAUUlQVZ88yJh3//1lqnpHjVcrJLrl95FvxgUQP
 r6WynEz8b7eL8COTfRhgDM5FHXJD/VTAnjpzU73NDuHJHaAJCut0DHojZDlEnXR+WaoU
 xmpEeyK/rNy81qqP3JHU1scyAJEFigYv4FH/zi4RuS8rz5Mg7VttzxQiLrQHZwNEWROU
 4Y0MI5AhRQUa1ezBew/3PG+J8WzhUCLmG1a3wU5ssmro4eLalZZXll9v+YAeFzwTY0pR
 dQcTXYJ5LGxiUUGkEIBxpHNpHBIsQkMDqtyEUUwrQYPkqUkEZokDEqYAWR0ehZ6ni8wg
 lxXw==
X-Gm-Message-State: AOAM53004/GNMCrvfNPzGdpB18nNHhPXNIfS9+TbTI4zt1hMjORvLNsT
 XEEtK6ELZZhUontzhgN0huA=
X-Google-Smtp-Source: ABdhPJz7KmZTykmVw2I0vPcVlJ2dHwhw9rY96r0pOe/r5rw7BWHvN06KyBv4XS8VqgmZJK0L/QmbGg==
X-Received: by 2002:adf:fe85:: with SMTP id l5mr7327566wrr.333.1593248918712; 
 Sat, 27 Jun 2020 02:08:38 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-142-088.002.204.pools.vodafone-ip.de. [2.204.142.88])
 by smtp.gmail.com with ESMTPSA id c6sm19832475wma.15.2020.06.27.02.08.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 02:08:38 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove blank lines in header files
Date: Sat, 27 Jun 2020 11:06:00 +0200
Message-Id: <20200627090600.21354-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove blank lines in header files to clear checkpatch issues.
CHECK: Please don't use multiple blank lines

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/include/drv_types.h     |  1 -
 drivers/staging/rtl8188eu/include/hal_com.h       |  1 -
 drivers/staging/rtl8188eu/include/ieee80211.h     | 11 -----------
 drivers/staging/rtl8188eu/include/odm.h           |  4 ----
 drivers/staging/rtl8188eu/include/odm_debug.h     |  2 --
 drivers/staging/rtl8188eu/include/pwrseq.h        |  3 ---
 drivers/staging/rtl8188eu/include/pwrseqcmd.h     |  1 -
 drivers/staging/rtl8188eu/include/recv_osdep.h    |  2 --
 drivers/staging/rtl8188eu/include/rtl8188e_hal.h  |  5 -----
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h |  1 -
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h |  1 -
 drivers/staging/rtl8188eu/include/rtw_debug.h     |  1 -
 drivers/staging/rtl8188eu/include/rtw_ioctl.h     |  2 --
 drivers/staging/rtl8188eu/include/rtw_ioctl_set.h |  1 -
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h  |  3 ---
 drivers/staging/rtl8188eu/include/rtw_recv.h      |  3 ---
 drivers/staging/rtl8188eu/include/rtw_rf.h        |  1 -
 drivers/staging/rtl8188eu/include/rtw_security.h  |  3 ---
 drivers/staging/rtl8188eu/include/rtw_xmit.h      |  1 -
 drivers/staging/rtl8188eu/include/wifi.h          |  5 -----
 drivers/staging/rtl8188eu/include/wlan_bssdef.h   |  3 ---
 21 files changed, 55 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/drv_types.h b/drivers/staging/rtl8188eu/include/drv_types.h
index 35c0946bc65d..0a3acb378d6d 100644
--- a/drivers/staging/rtl8188eu/include/drv_types.h
+++ b/drivers/staging/rtl8188eu/include/drv_types.h
@@ -10,7 +10,6 @@
 
 ------------------------------------------------------------------------------*/
 
-
 #ifndef __DRV_TYPES_H__
 #define __DRV_TYPES_H__
 
diff --git a/drivers/staging/rtl8188eu/include/hal_com.h b/drivers/staging/rtl8188eu/include/hal_com.h
index 93cbbe7ba1fd..542e6e93ff8e 100644
--- a/drivers/staging/rtl8188eu/include/hal_com.h
+++ b/drivers/staging/rtl8188eu/include/hal_com.h
@@ -137,7 +137,6 @@
 #include "HalVerDef.h"
 void dump_chip_info(struct HAL_VERSION	ChipVersion);
 
-
 /* return the final channel plan decision */
 u8 hal_com_get_channel_plan(u8 hw_channel_plan, u8 sw_channel_plan,
 			    u8 def_channel_plan, bool load_fail);
diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 75f0ebe0faf5..83218e7ec0a9 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -90,7 +90,6 @@ enum {
 #define IEEE_CRYPT_ERR_TX_KEY_SET_FAILED		6
 #define IEEE_CRYPT_ERR_CARD_CONF_FAILED		7
 
-
 #define	IEEE_CRYPT_ALG_NAME_LEN			16
 
 #define WPA_CIPHER_NONE		BIT(0)
@@ -99,8 +98,6 @@ enum {
 #define WPA_CIPHER_TKIP		BIT(3)
 #define WPA_CIPHER_CCMP		BIT(4)
 
-
-
 #define WPA_SELECTOR_LEN 4
 extern u8 RTW_WPA_OUI_TYPE[];
 extern u8 WPA_AUTH_KEY_MGMT_NONE[];
@@ -113,7 +110,6 @@ extern u8 WPA_CIPHER_SUITE_WRAP[];
 extern u8 WPA_CIPHER_SUITE_CCMP[];
 extern u8 WPA_CIPHER_SUITE_WEP104[];
 
-
 #define RSN_HEADER_LEN 4
 #define RSN_SELECTOR_LEN 4
 
@@ -192,7 +188,6 @@ enum NETWORK_TYPE {
 #define IsSupportedTxMCS(NetType)				\
 	((NetType) & (WIRELESS_11_24N | WIRELESS_11_5N) ? true : false)
 
-
 struct ieee_param {
 	u32 cmd;
 	u8 sta_addr[ETH_ALEN];
@@ -270,11 +265,9 @@ struct sta_data {
  * WEP IV and ICV. (this interpretation suggested by Ramiro Barreiro)
  */
 
-
 #define IEEE80211_HLEN			30
 #define IEEE80211_FRAME_LEN		(IEEE80211_DATA_LEN + IEEE80211_HLEN)
 
-
 /* this is stolen from ipw2200 driver */
 #define IEEE_IBSS_MAC_HASH_SIZE 31
 
@@ -297,7 +290,6 @@ enum eap_type {
 #define RTW_IEEE80211_SCTL_FRAG	0x000F
 #define RTW_IEEE80211_SCTL_SEQ	0xFFF0
 
-
 #define RTW_ERP_INFO_NON_ERP_PRESENT BIT(0)
 #define RTW_ERP_INFO_USE_PROTECTION BIT(1)
 #define RTW_ERP_INFO_BARKER_PREAMBLE_MODE BIT(2)
@@ -354,7 +346,6 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_CCK_RATE_LEN			4
 #define IEEE80211_NUM_OFDM_RATESLEN	8
 
-
 #define IEEE80211_CCK_RATE_1MB			0x02
 #define IEEE80211_CCK_RATE_2MB			0x04
 #define IEEE80211_CCK_RATE_5MB			0x0B
@@ -613,7 +604,6 @@ enum rtw_ieee80211_back_parties {
 #define WME_TSPEC_DIRECTION_DOWNLINK 1
 #define WME_TSPEC_DIRECTION_BI_DIRECTIONAL 3
 
-
 #define OUI_BROADCOM 0x00904c /* Broadcom (Epigram) */
 
 #define VENDOR_HT_CAPAB_OUI_TYPE 0x33 /* 00-90-4c:0x33 */
@@ -758,7 +748,6 @@ uint	rtw_get_rateset_len(u8	*rateset);
 struct registry_priv;
 int rtw_generate_ie(struct registry_priv *pregistrypriv);
 
-
 int rtw_get_bit_value_from_ieee_value(u8 val);
 
 bool rtw_is_cckrates_included(u8 *rate);
diff --git a/drivers/staging/rtl8188eu/include/odm.h b/drivers/staging/rtl8188eu/include/odm.h
index 9d39fe13626a..c6b6ba191e1b 100644
--- a/drivers/staging/rtl8188eu/include/odm.h
+++ b/drivers/staging/rtl8188eu/include/odm.h
@@ -5,7 +5,6 @@
  *
  ******************************************************************************/
 
-
 #ifndef	__HALDMOUTSRC_H__
 #define __HALDMOUTSRC_H__
 
@@ -41,7 +40,6 @@
 #define		DPK_DELTA_MAPPING_NUM	13
 #define		index_mapping_HP_NUM	15
 
-
 /*  */
 /* 3 PSD Handler */
 /* 3============================================================ */
@@ -913,7 +911,6 @@ enum dm_dig_op {
 
 #define		DM_SCAN_RSSI_TH		0x14 /* scan return issue for LC */
 
-
 #define		DM_false_ALARM_THRESH_LOW	400
 #define		DM_false_ALARM_THRESH_HIGH	1000
 
@@ -991,7 +988,6 @@ enum dm_dig_op {
 /* 3 BB Power Save */
 /* 3=========================================================== */
 
-
 enum dm_1r_cca {
 	CCA_1R = 0,
 	CCA_2R = 1,
diff --git a/drivers/staging/rtl8188eu/include/odm_debug.h b/drivers/staging/rtl8188eu/include/odm_debug.h
index 7ab2483bdacc..857c64b8d2f4 100644
--- a/drivers/staging/rtl8188eu/include/odm_debug.h
+++ b/drivers/staging/rtl8188eu/include/odm_debug.h
@@ -5,11 +5,9 @@
  *
  ******************************************************************************/
 
-
 #ifndef	__ODM_DBG_H__
 #define __ODM_DBG_H__
 
-
 /*  */
 /*	Define the debug levels */
 /*  */
diff --git a/drivers/staging/rtl8188eu/include/pwrseq.h b/drivers/staging/rtl8188eu/include/pwrseq.h
index aa58db5fbd80..c4b76064476f 100644
--- a/drivers/staging/rtl8188eu/include/pwrseq.h
+++ b/drivers/staging/rtl8188eu/include/pwrseq.h
@@ -43,7 +43,6 @@
 #define RTL8188E_TRANS_LPS_TO_ACT_STEPS		15
 #define RTL8188E_TRANS_END_STEPS		1
 
-
 #define RTL8188E_TRANS_CARDEMU_TO_ACT					\
 	/* format
 	 * { offset, cut_msk, cmd, msk, value
@@ -179,7 +178,6 @@
 	{0x0553, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(5), BIT(5)}, \
 	/*Respond TxOK to scheduler*/
 
-
 #define RTL8188E_TRANS_LPS_TO_ACT					\
 	/* format
 	 * { offset, cut_msk, cmd, msk,
@@ -213,7 +211,6 @@
 	 */								\
 	{0xFFFF, PWR_CUT_ALL_MSK, PWR_CMD_END, 0, 0},
 
-
 extern struct wl_pwr_cfg rtl8188E_power_on_flow
 		[RTL8188E_TRANS_CARDEMU_TO_ACT_STEPS + RTL8188E_TRANS_END_STEPS];
 extern struct wl_pwr_cfg rtl8188E_radio_off_flow
diff --git a/drivers/staging/rtl8188eu/include/pwrseqcmd.h b/drivers/staging/rtl8188eu/include/pwrseqcmd.h
index 8c73322a0314..05f117e2a105 100644
--- a/drivers/staging/rtl8188eu/include/pwrseqcmd.h
+++ b/drivers/staging/rtl8188eu/include/pwrseqcmd.h
@@ -27,7 +27,6 @@
 #define PWR_CUT_G_MSK		BIT(7)
 #define PWR_CUT_ALL_MSK		0xFF
 
-
 enum pwrseq_cmd_delat_unit {
 	PWRSEQ_DELAY_US,
 	PWRSEQ_DELAY_MS,
diff --git a/drivers/staging/rtl8188eu/include/recv_osdep.h b/drivers/staging/rtl8188eu/include/recv_osdep.h
index d2341521cc8e..3b771702810d 100644
--- a/drivers/staging/rtl8188eu/include/recv_osdep.h
+++ b/drivers/staging/rtl8188eu/include/recv_osdep.h
@@ -10,11 +10,9 @@
 #include <osdep_service.h>
 #include <drv_types.h>
 
-
 int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter);
 void _rtw_free_recv_priv(struct recv_priv *precvpriv);
 
-
 s32  rtw_recv_entry(struct recv_frame *precv_frame);
 int rtw_recv_indicatepkt(struct adapter *adapter,
 			 struct recv_frame *recv_frame);
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
index eb4655ecf6e0..ba7c98712934 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
@@ -7,7 +7,6 @@
 #ifndef __RTL8188E_HAL_H__
 #define __RTL8188E_HAL_H__
 
-
 /* include HAL Related header after HAL Related compiling flags */
 #include "rtl8188e_spec.h"
 #include "hal8188e_phy_reg.h"
@@ -78,7 +77,6 @@ enum usb_rx_agg_mode {
 
 #define MAX_TX_REPORT_BUFFER_SIZE		0x0400 /*  1k */
 
-
 /*  BK, BE, VI, VO, HCCA, MANAGEMENT, COMMAND, HIGH, BEACON. */
 #define MAX_TX_QUEUE			9
 
@@ -246,7 +244,6 @@ struct hal_data_8188e {
 	u8	CurrentBW2024GTxPwrIdx;
 	u8	CurrentBW4024GTxPwrIdx;
 
-
 	/*  Read/write are allow for following hardware information variables */
 	u8	framesync;
 	u32	framesyncC34;
@@ -285,7 +282,6 @@ struct hal_data_8188e {
 	u8	AntDivCfg;
 	u8	TRxAntDivType;
 
-
 	u8	bDumpRxPkt;/* for debug */
 	u8	bDumpTxPkt;/* for debug */
 	u8	FwRsvdPageStartOffset; /* Reserve page start offset except
@@ -335,7 +331,6 @@ void Hal_GetChnlGroup88E(u8 chnl, u8 *group);
 void _8051Reset88E(struct adapter *padapter);
 void rtl8188e_InitializeFirmwareVars(struct adapter *padapter);
 
-
 s32 InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy);
 
 /*  EFuse */
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
index be30c9434a29..55cce1f6bd77 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
@@ -18,7 +18,6 @@
 #define RXPKT_BUF_SELECT		0xA5
 #define DISABLE_TRXPKT_BUF_ACCESS	0x0
 
-
 /*	0x0000h ~ 0x00FFh	System Configuration */
 #define REG_SYS_ISO_CTRL		0x0000
 #define REG_SYS_FUNC_EN			0x0002
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
index c6c2ad20d9cf..49884cceb349 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
@@ -50,7 +50,6 @@
 #define FSG		BIT(27)
 #define OWN		BIT(31)
 
-
 /* OFFSET 4 */
 #define PKT_OFFSET_SZ		0
 #define QSEL_SHT		8
diff --git a/drivers/staging/rtl8188eu/include/rtw_debug.h b/drivers/staging/rtl8188eu/include/rtw_debug.h
index 9840e596feaa..1fdf16124a0d 100644
--- a/drivers/staging/rtl8188eu/include/rtw_debug.h
+++ b/drivers/staging/rtl8188eu/include/rtw_debug.h
@@ -21,7 +21,6 @@
 #define _drv_info_			8
 #define	_drv_debug_			9
 
-
 #define _module_rtl871x_xmit_c_		BIT(0)
 #define _module_xmit_osdep_c_		BIT(1)
 #define _module_rtl871x_recv_c_		BIT(2)
diff --git a/drivers/staging/rtl8188eu/include/rtw_ioctl.h b/drivers/staging/rtl8188eu/include/rtw_ioctl.h
index 5d773c84f11b..f681f9ebeafe 100644
--- a/drivers/staging/rtl8188eu/include/rtw_ioctl.h
+++ b/drivers/staging/rtl8188eu/include/rtw_ioctl.h
@@ -10,7 +10,6 @@
 #include <osdep_service.h>
 #include <drv_types.h>
 
-
 #ifndef OID_802_11_CAPABILITY
 	#define OID_802_11_CAPABILITY	0x0d010122
 #endif
@@ -19,7 +18,6 @@
 	#define OID_802_11_PMKID	0x0d010123
 #endif
 
-
 /*  For DDK-defined OIDs */
 #define OID_NDIS_SEG1	0x00010100
 #define OID_NDIS_SEG2	0x00010200
diff --git a/drivers/staging/rtl8188eu/include/rtw_ioctl_set.h b/drivers/staging/rtl8188eu/include/rtw_ioctl_set.h
index 0be99f6d75ba..7078f8252fa0 100644
--- a/drivers/staging/rtl8188eu/include/rtw_ioctl_set.h
+++ b/drivers/staging/rtl8188eu/include/rtw_ioctl_set.h
@@ -9,7 +9,6 @@
 
 #include <drv_types.h>
 
-
 typedef u8 NDIS_802_11_PMKID_VALUE[16];
 
 u8 rtw_set_802_11_authentication_mode(struct adapter *adapt,
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index d70780c8fd62..565bfe46256c 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -11,7 +11,6 @@
 #include <drv_types.h>
 #include <wlan_bssdef.h>
 
-
 /*	Commented by Albert 20101105 */
 /*	Increase the SURVEY_TO value from 100 to 150  ( 100ms to 150ms ) */
 /*	The Realtek 8188CE SoftAP will spend around 100ms to send the probe response after receiving the probe request. */
@@ -66,7 +65,6 @@
 #define _HW_STATE_STATION_	0x02
 #define _HW_STATE_AP_			0x03
 
-
 #define		_1M_RATE_	0
 #define		_2M_RATE_	1
 #define		_5M_RATE_	2
@@ -681,7 +679,6 @@ enum rtw_c2h_event {
 	MAX_C2HEVT
 };
 
-
 #ifdef _RTW_MLME_EXT_C_
 
 static struct fwevent wlanevents[] = {
diff --git a/drivers/staging/rtl8188eu/include/rtw_recv.h b/drivers/staging/rtl8188eu/include/rtw_recv.h
index 8fc500496f92..e383cb119e1b 100644
--- a/drivers/staging/rtl8188eu/include/rtw_recv.h
+++ b/drivers/staging/rtl8188eu/include/rtw_recv.h
@@ -10,7 +10,6 @@
 #include <osdep_service.h>
 #include <drv_types.h>
 
-
 #define NR_RECVFRAME 256
 
 #define RXFRAME_ALIGN	8
@@ -127,7 +126,6 @@ struct rx_pkt_attrib {
 	struct phy_info phy_info;
 };
 
-
 /* These definition is used for Rx packet reordering. */
 #define SN_LESS(a, b)		(((a - b) & 0x800) != 0)
 #define SN_EQUAL(a, b)	(a == b)
@@ -254,7 +252,6 @@ static inline s32 translate_percentage_to_dbm(u32 sig_stren_index)
 	return power;
 }
 
-
 struct sta_info;
 
 void _rtw_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv);
diff --git a/drivers/staging/rtl8188eu/include/rtw_rf.h b/drivers/staging/rtl8188eu/include/rtw_rf.h
index c3847cf16ec1..aabacb41bdde 100644
--- a/drivers/staging/rtl8188eu/include/rtw_rf.h
+++ b/drivers/staging/rtl8188eu/include/rtw_rf.h
@@ -114,5 +114,4 @@ enum rt_rf_type_def {
 
 u32 rtw_ch2freq(u32 ch);
 
-
 #endif /* _RTL8711_RF_H_ */
diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index f8d9151fe6e3..b6f7f693d33a 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -37,7 +37,6 @@ enum {
 	ENCRYP_PROTOCOL_MAX
 };
 
-
 #ifndef Ndis802_11AuthModeWPA2
 #define Ndis802_11AuthModeWPA2 (Ndis802_11AuthModeWPANone + 1)
 #endif
@@ -209,7 +208,6 @@ do {									\
 	}								\
 } while (0)
 
-
 #define GET_TKIP_PN(iv, dot11txpn)					\
 do {									\
 	dot11txpn._byte_.TSC0 = iv[2];					\
@@ -220,7 +218,6 @@ do {									\
 	dot11txpn._byte_.TSC5 = iv[7];					\
 } while (0)
 
-
 #define ROL32(A, n)	(((A) << (n)) | (((A)>>(32-(n)))  & ((1UL << (n)) - 1)))
 #define ROR32(A, n)	ROL32((A), 32-(n))
 
diff --git a/drivers/staging/rtl8188eu/include/rtw_xmit.h b/drivers/staging/rtl8188eu/include/rtw_xmit.h
index b9f11ef327e7..12d16e98176a 100644
--- a/drivers/staging/rtl8188eu/include/rtw_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtw_xmit.h
@@ -46,7 +46,6 @@ do {\
 	dot11txpn.val = (dot11txpn.val == 0xffffff) ? 0 : (dot11txpn.val+1);\
 } while (0)
 
-
 #define TKIP_IV(pattrib_iv, dot11txpn, keyidx)\
 do {\
 	pattrib_iv[0] = dot11txpn._byte_.TSC1;\
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index d059240b836f..667055796b66 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -160,7 +160,6 @@ enum WIFI_REG_DOMAIN {
 
 #define get_tofr_ds(pframe)	((GetToDs(pframe) << 1) | GetFrDs(pframe))
 
-
 #define SetMFrag(pbuf)	\
 	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_FRAG_)
 
@@ -231,7 +230,6 @@ enum WIFI_REG_DOMAIN {
 #define SetDuration(pbuf, dur) \
 	*(__le16 *)((size_t)(pbuf) + 2) = cpu_to_le16(0xffff & (dur))
 
-
 #define SetPriority(pbuf, tid)	\
 	*(__le16 *)(pbuf) |= cpu_to_le16(tid & 0xf)
 
@@ -384,7 +382,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define _HT_ADD_INFO_IE_	61 /* _HT_EXTRA_INFO_IE_ */
 #define _WAPI_IE_		68
 
-
 #define	EID_BSSCoexistence	72 /*  20/40 BSS Coexistence */
 #define	EID_BSSIntolerantChlReport	73
 #define _RIC_Descriptor_IE_	75
@@ -452,7 +449,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define _WMM_IE_Length_				7  /*  for WMM STA */
 #define _WMM_Para_Element_Length_		24
 
-
 /*-----------------------------------------------------------------------------
 				Below is the definition for 802.11n
 ------------------------------------------------------------------------------*/
@@ -553,7 +549,6 @@ enum ht_cap_ampdu_factor {
  */
 #define IEEE80211_MIN_AMPDU_BUF 0x8
 
-
 #define OP_MODE_PURE                    0
 #define OP_MODE_MAY_BE_LEGACY_STAS      1
 #define OP_MODE_20MHZ_HT_STA_ASSOCED    2
diff --git a/drivers/staging/rtl8188eu/include/wlan_bssdef.h b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
index 8462c9c2fd39..1b6435cd5390 100644
--- a/drivers/staging/rtl8188eu/include/wlan_bssdef.h
+++ b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
@@ -7,7 +7,6 @@
 #ifndef __WLAN_BSSDEF_H__
 #define __WLAN_BSSDEF_H__
 
-
 #define MAX_IE_SZ			768
 
 #define NDIS_802_11_LENGTH_SSID         32
@@ -62,8 +61,6 @@ struct ndis_802_11_fixed_ie {
 	u16  Capabilities;
 };
 
-
-
 struct ndis_802_11_var_ie {
 	u8  ElementID;
 	u8  Length;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
