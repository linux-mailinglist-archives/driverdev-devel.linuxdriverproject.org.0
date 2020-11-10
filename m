Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7392ACE5A
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 106DF871B2;
	Tue, 10 Nov 2020 04:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id co-56vzshzJi; Tue, 10 Nov 2020 04:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC74A87450;
	Tue, 10 Nov 2020 04:10:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D55FA1BF34E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CECEE86797
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9XMMbZqQRImL for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65CFD84CE1
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:24 +0000 (UTC)
Received: by mail-io1-f48.google.com with SMTP id p7so12333569ioo.6
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x1tD0r/dgyq/Z6q0jsnOSA6a5omqa8a2F5KDD/vWS+Q=;
 b=d9EXsAgtRV2KT1o0oCyI5rz+EvmQKpP0cVac0d5JbvLIx06PKGmnr/qTk4ca2hcgU0
 VNKeaG93XeSiT8hZpew6GRp8eRXwiphG1/bGZ2yrQNgBxn0dXx5Q2ypPQChbsMuAnTJK
 na6pLlXBoqc64bkGTYzfrtvTNnkH7m05rjVfvx8Iqkx/iW542qcQueHRHj1JVXcL7kAi
 CvrKow3u++y7yAZpBMhWaNJAaE8knTWEekaaR9jhjqltzIcQtNBFxLT8xz/1OS3s/nLm
 WqA2RdDnIkDDRJh4fdtwj5aLL8Vc2WfMOzkdE5n8pErDFUM0jyByxiMExTyHUMcTz9Of
 bpEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x1tD0r/dgyq/Z6q0jsnOSA6a5omqa8a2F5KDD/vWS+Q=;
 b=ZZAviUzr6PhNSyAWZ1JGk4JLQkpdHgiU/4iTIB4kJp429L/OGPnbrYBG1A5i3ihoCW
 D7xPQUaHSGRuFneH99uNfrMj/X6NG6U30eBDsqzwhXXNmE7khUTa95OEkH7OQaskg2zm
 fz2RW/H6VXUrYxcbwGzZLTWynW6v62hjoPsx5M4ONBemkMFIa2it6XpcReuVer3CiUtY
 pLB0OMopAtqc8PxIPeMj+AUH5WwD42JGfOt7xQpUfo7GO4fmTJs+nMc87/VNupibD0Yg
 /eS7h/3/VOkIobCoSkRqkVbwic44vx8d94oSOrCl2uPtUaehg9cbc0zUs3+tFA4XJOQM
 689w==
X-Gm-Message-State: AOAM533MKEOlXDs87sNiI8q+IUwVBq8JeyFCfGYYjc3MLr3LiQhM7LYR
 1DiXeRKubewdiTsWCgZXq14=
X-Google-Smtp-Source: ABdhPJxmGMlbO0FPQwbHNADRiesZfyX/kZNEExNitbM+bRk3Premx0SLPgpwG+G5RajwAtFeGJYGUQ==
X-Received: by 2002:a6b:b28d:: with SMTP id b135mr12027150iof.95.1604981423568; 
 Mon, 09 Nov 2020 20:10:23 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:22 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/10] staging: rtl8723bs: clean up open ended lines
Date: Mon,  9 Nov 2020 22:10:02 -0600
Message-Id: <20201110041008.15847-4-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201110041008.15847-1-ross.schm.dev@gmail.com>
References: <20201110041008.15847-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move declarations to fix coding style issues and clear checkpatch
checks.

CHECK: Lines should not end with a '('

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c    |  44 +--
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  13 +-
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |  10 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  16 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |   7 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c     |  38 +--
 drivers/staging/rtl8723bs/core/rtw_security.c | 261 ++++++------------
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c  |  42 ++-
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |  17 +-
 9 files changed, 147 insertions(+), 301 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index 8794638468e6..32ca10f01413 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -303,12 +303,7 @@ bool		bPseudoTest)
 }
 
 /*  11/16/2008 MH Write one byte to reald Efuse. */
-u8
-efuse_OneByteWrite(
-struct adapter *padapter,
-u16 		addr,
-u8 	data,
-bool		bPseudoTest)
+u8 efuse_OneByteWrite(struct adapter *padapter, u16 addr, u8 data, bool bPseudoTest)
 {
 	u8 tmpidx = 0;
 	u8 bResult = false;
@@ -456,12 +451,7 @@ Efuse_ReadAllMap(
 	u8 efuseType,
 	u8 *Efuse,
 	bool		bPseudoTest);
-void
-Efuse_ReadAllMap(
-	struct adapter *padapter,
-	u8 efuseType,
-	u8 *Efuse,
-	bool		bPseudoTest)
+void Efuse_ReadAllMap(struct adapter *padapter, u8 efuseType, u8 *Efuse, bool bPseudoTest)
 {
 	u16 mapLen = 0;
 
@@ -492,11 +482,7 @@ Efuse_ReadAllMap(
  * 11/12/2008	MHC		Create Version 0.
  *
  *---------------------------------------------------------------------------*/
-static void
-efuse_ShadowRead1Byte(
-struct adapter *padapter,
-u16 	Offset,
-	u8 *Value)
+static void efuse_ShadowRead1Byte(struct adapter *padapter, u16 Offset, u8 *Value)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 
@@ -505,11 +491,7 @@ u16 	Offset,
 }	/*  EFUSE_ShadowRead1Byte */
 
 /* Read Two Bytes */
-static void
-efuse_ShadowRead2Byte(
-struct adapter *padapter,
-u16 	Offset,
-	u16 	*Value)
+static void efuse_ShadowRead2Byte(struct adapter *padapter, u16 Offset, u16 *Value)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 
@@ -519,11 +501,7 @@ u16 	Offset,
 }	/*  EFUSE_ShadowRead2Byte */
 
 /* Read Four Bytes */
-static void
-efuse_ShadowRead4Byte(
-struct adapter *padapter,
-u16 	Offset,
-	u32 	*Value)
+static void efuse_ShadowRead4Byte(struct adapter *padapter, u16 Offset, u32 *Value)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 
@@ -550,10 +528,7 @@ u16 	Offset,
  * 11/13/2008	MHC		Create Version 0.
  *
  *---------------------------------------------------------------------------*/
-void EFUSE_ShadowMapUpdate(
-	struct adapter *padapter,
-	u8 efuseType,
-	bool	bPseudoTest)
+void EFUSE_ShadowMapUpdate(struct adapter *padapter, u8 efuseType, bool bPseudoTest)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 	u16 mapLen = 0;
@@ -586,12 +561,7 @@ void EFUSE_ShadowMapUpdate(
  * 11/12/2008	MHC		Create Version 0.
  *
  *---------------------------------------------------------------------------*/
-void
-EFUSE_ShadowRead(
-	struct adapter *padapter,
-	u8 Type,
-	u16 	Offset,
-	u32 	*Value)
+void EFUSE_ShadowRead(struct adapter *padapter, u8 Type, u16 Offset, u32 *Value)
 {
 	if (Type == 1)
 		efuse_ShadowRead1Byte(padapter, Offset, (u8 *)Value);
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 066dd9cbb60d..8d61be5bd250 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -119,14 +119,11 @@ u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *sourc
 }
 
 /*  rtw_set_ie will update frame length */
-u8 *rtw_set_ie
-(
-	u8 *pbuf,
-	sint index,
-	uint len,
-	u8 *source,
-	uint *frlen /* frame length */
-)
+u8 *rtw_set_ie(u8 *pbuf,
+	       sint index,
+	       uint len,
+	       u8 *source,
+	       uint *frlen) /* frame length */
 {
 	*pbuf = (u8)index;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index e0bab0a71f00..3adeca6f20ec 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -657,12 +657,10 @@ u16 rtw_get_cur_max_rate(struct adapter *adapter)
 	if (IsSupportedHT(psta->wireless_mode)) {
 		rtw_hal_get_hwreg(adapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));
 
-		max_rate = rtw_mcs_rate(
-			rf_type,
-			((psta->bw_mode == CHANNEL_WIDTH_40)?1:0),
-			short_GI,
-			psta->htpriv.ht_cap.mcs.rx_mask
-		);
+		max_rate = rtw_mcs_rate(rf_type,
+					((psta->bw_mode == CHANNEL_WIDTH_40)?1:0),
+					short_GI,
+					psta->htpriv.ht_cap.mcs.rx_mask);
 	} else {
 		while ((pcur_bss->SupportedRates[i] != 0) && (pcur_bss->SupportedRates[i] != 0xFF)) {
 			rate = pcur_bss->SupportedRates[i]&0x7F;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 1a6cae5f9895..e0b0dd226144 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2487,11 +2487,9 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 			int len_diff;
 
 			memcpy(pframe, cur_network->IEs, cur_network->IELength);
-			len_diff = update_hidden_ssid(
-				pframe+_BEACON_IE_OFFSET_
-				, cur_network->IELength-_BEACON_IE_OFFSET_
-				, pmlmeinfo->hidden_ssid_mode
-			);
+			len_diff = update_hidden_ssid(pframe+_BEACON_IE_OFFSET_,
+						      cur_network->IELength-_BEACON_IE_OFFSET_,
+						      pmlmeinfo->hidden_ssid_mode);
 			pframe += (cur_network->IELength+len_diff);
 			pattrib->pktlen += (cur_network->IELength+len_diff);
 		}
@@ -6584,11 +6582,9 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 
 	memcpy(&(ptxBeacon_parm->network), &(pmlmeinfo->network), sizeof(struct wlan_bssid_ex));
 
-	len_diff = update_hidden_ssid(
-		ptxBeacon_parm->network.IEs+_BEACON_IE_OFFSET_
-		, ptxBeacon_parm->network.IELength-_BEACON_IE_OFFSET_
-		, pmlmeinfo->hidden_ssid_mode
-	);
+	len_diff = update_hidden_ssid(ptxBeacon_parm->network.IEs+_BEACON_IE_OFFSET_,
+				      ptxBeacon_parm->network.IELength-_BEACON_IE_OFFSET_,
+				      pmlmeinfo->hidden_ssid_mode);
 	ptxBeacon_parm->network.IELength += len_diff;
 
 	init_h2fwcmd_w_parm_no_rsp(ph2c, ptxBeacon_parm, GEN_CMD_CODE(_TX_Beacon));
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 8fe1d7429760..90e222a9c93b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -672,8 +672,7 @@ void LeaveAllPowerSaveMode(struct adapter *Adapter)
 	}
 }
 
-void LPS_Leave_check(
-	struct adapter *padapter)
+void LPS_Leave_check(struct adapter *padapter)
 {
 	struct pwrctrl_priv *pwrpriv;
 	unsigned long	start_time;
@@ -714,9 +713,7 @@ void LPS_Leave_check(
  *
  * using to update cpwn of drv; and drv willl make a decision to up or down pwr level
  */
-void cpwm_int_hdl(
-	struct adapter *padapter,
-	struct reportpwrstate_parm *preportpwrstate)
+void cpwm_int_hdl(struct adapter *padapter, struct reportpwrstate_parm *preportpwrstate)
 {
 	struct pwrctrl_priv *pwrpriv;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index c854aa3ff992..e1528b51c17e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -765,16 +765,10 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
 	traffic_check_for_leave_lps(padapter, false, 0);
 }
 
-sint sta2sta_data_frame(
-	struct adapter *adapter,
-	union recv_frame *precv_frame,
-	struct sta_info **psta
-);
-sint sta2sta_data_frame(
-	struct adapter *adapter,
-	union recv_frame *precv_frame,
-	struct sta_info **psta
-)
+sint sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+			struct sta_info **psta);
+sint sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+			struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
 	sint ret = _SUCCESS;
@@ -866,14 +860,10 @@ sint sta2sta_data_frame(
 	return ret;
 }
 
-sint ap2sta_data_frame(
-	struct adapter *adapter,
-	union recv_frame *precv_frame,
-	struct sta_info **psta);
-sint ap2sta_data_frame(
-	struct adapter *adapter,
-	union recv_frame *precv_frame,
-	struct sta_info **psta)
+sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+		       struct sta_info **psta);
+sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+		       struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
@@ -1015,14 +1005,10 @@ sint ap2sta_data_frame(
 	return ret;
 }
 
-sint sta2ap_data_frame(
-	struct adapter *adapter,
-	union recv_frame *precv_frame,
-	struct sta_info **psta);
-sint sta2ap_data_frame(
-	struct adapter *adapter,
-	union recv_frame *precv_frame,
-	struct sta_info **psta)
+sint sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+		       struct sta_info **psta);
+sint sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+		       struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 41b80e433cc2..33f5d3c5ac36 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -140,12 +140,7 @@ static u32 arcfour_byte(struct arc4context	*parc4ctx)
 	return state[(sx + sy) & 0xff];
 }
 
-static void arcfour_encrypt(
-	struct arc4context *parc4ctx,
-	u8 *dest,
-	u8 *src,
-	u32 len
-)
+static void arcfour_encrypt(struct arc4context *parc4ctx, u8 *dest, u8 *src, u32 len)
 {
 	u32 i;
 
@@ -882,36 +877,28 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 /*****************************/
 
 static void bitwise_xor(u8 *ina, u8 *inb, u8 *out);
-static void construct_mic_iv(
-	u8 *mic_header1,
-	sint qc_exists,
-	sint a4_exists,
-	u8 *mpdu,
-	uint payload_length,
-	u8 *pn_vector,
-	uint frtype
-);/*  add for CONFIG_IEEE80211W, none 11w also can use */
-static void construct_mic_header1(
-	u8 *mic_header1,
-	sint header_length,
-	u8 *mpdu,
-	uint frtype
-);/*  add for CONFIG_IEEE80211W, none 11w also can use */
-static void construct_mic_header2(
-	u8 *mic_header2,
-	u8 *mpdu,
-	sint a4_exists,
-	sint qc_exists
-);
-static void construct_ctr_preload(
-	u8 *ctr_preload,
-	sint a4_exists,
-	sint qc_exists,
-	u8 *mpdu,
-	u8 *pn_vector,
-	sint c,
-	uint frtype
-);/*  add for CONFIG_IEEE80211W, none 11w also can use */
+static void construct_mic_iv(u8 *mic_header1,
+			     sint qc_exists,
+			     sint a4_exists,
+			     u8 *mpdu,
+			     uint payload_length,
+			     u8 *pn_vector,
+			     uint frtype); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+static void construct_mic_header1(u8 *mic_header1,
+				  sint header_length,
+				  u8 *mpdu,
+				  uint frtype); /* for CONFIG_IEEE80211W, none 11w also can use */
+static void construct_mic_header2(u8 *mic_header2,
+				  u8 *mpdu,
+				  sint a4_exists,
+				  sint qc_exists);
+static void construct_ctr_preload(u8 *ctr_preload,
+				  sint a4_exists,
+				  sint qc_exists,
+				  u8 *mpdu,
+				  u8 *pn_vector,
+				  sint c,
+				  uint frtype); /* for CONFIG_IEEE80211W, none 11w also can use */
 static void xor_128(u8 *a, u8 *b, u8 *out);
 static void xor_32(u8 *a, u8 *b, u8 *out);
 static u8 sbox(u8 a);
@@ -1103,15 +1090,13 @@ static void aes128k128d(u8 *key, u8 *data, u8 *ciphertext)
 /* Baron think the function is construct CCM    */
 /* nonce                                        */
 /************************************************/
-static void construct_mic_iv(
-	u8 *mic_iv,
-	sint qc_exists,
-	sint a4_exists,
-	u8 *mpdu,
-	uint payload_length,
-	u8 *pn_vector,
-	uint frtype/*  add for CONFIG_IEEE80211W, none 11w also can use */
-)
+static void construct_mic_iv(u8 *mic_iv,
+			     sint qc_exists,
+			     sint a4_exists,
+			     u8 *mpdu,
+			     uint payload_length,
+			     u8 *pn_vector,
+			     uint frtype) /* add for CONFIG_IEEE80211W, none 11w also can use */
 {
 		sint i;
 
@@ -1149,12 +1134,10 @@ static void construct_mic_iv(
 /* header fields.                               */
 /* Build AAD SC, A1, A2                           */
 /************************************************/
-static void construct_mic_header1(
-	u8 *mic_header1,
-	sint header_length,
-	u8 *mpdu,
-	uint frtype/*  add for CONFIG_IEEE80211W, none 11w also can use */
-)
+static void construct_mic_header1(u8 *mic_header1,
+				  sint header_length,
+				  u8 *mpdu,
+				  uint frtype) /* for CONFIG_IEEE80211W, none 11w also can use */
 {
 		mic_header1[0] = (u8)((header_length - 2) / 256);
 		mic_header1[1] = (u8)((header_length - 2) % 256);
@@ -1185,12 +1168,10 @@ static void construct_mic_header1(
 /* Builds the last MIC header block from        */
 /* header fields.                               */
 /************************************************/
-static void construct_mic_header2(
-	u8 *mic_header2,
-	u8 *mpdu,
-	sint a4_exists,
-	sint qc_exists
-)
+static void construct_mic_header2(u8 *mic_header2,
+				  u8 *mpdu,
+				  sint a4_exists,
+				  sint qc_exists)
 {
 		sint i;
 
@@ -1233,15 +1214,13 @@ static void construct_mic_header2(
 /* Baron think the function is construct CCM    */
 /* nonce                                        */
 /************************************************/
-static void construct_ctr_preload(
-	u8 *ctr_preload,
-	sint a4_exists,
-	sint qc_exists,
-	u8 *mpdu,
-	u8 *pn_vector,
-	sint c,
-	uint frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
-)
+static void construct_ctr_preload(u8 *ctr_preload,
+				  sint a4_exists,
+				  sint qc_exists,
+				  u8 *mpdu,
+				  u8 *pn_vector,
+				  sint c,
+				  uint frtype) /* for CONFIG_IEEE80211W, none 11w also can use */
 {
 	sint i = 0;
 
@@ -1347,28 +1326,23 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	pn_vector[4] = pframe[hdrlen+6];
 	pn_vector[5] = pframe[hdrlen+7];
 
-	construct_mic_iv(
-			mic_iv,
-			qc_exists,
-			a4_exists,
-			pframe,	 /* message, */
-			plen,
-			pn_vector,
-			frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
-	);
-
-	construct_mic_header1(
-		mic_header1,
-		hdrlen,
-		pframe,	/* message */
-		frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
-	);
-	construct_mic_header2(
-		mic_header2,
-		pframe,	/* message, */
-		a4_exists,
-		qc_exists
-	);
+	construct_mic_iv(mic_iv,
+			 qc_exists,
+			 a4_exists,
+			 pframe,	 /* message, */
+			 plen,
+			 pn_vector,
+			 frtype); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+
+	construct_mic_header1(mic_header1,
+			      hdrlen,
+			      pframe,	/* message */
+			      frtype); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+
+	construct_mic_header2(mic_header2,
+			      pframe,	/* message, */
+			      a4_exists,
+			      qc_exists);
 
 	payload_remainder = plen % 16;
 	num_blocks = plen / 16;
@@ -1410,15 +1384,9 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 
 	payload_index = hdrlen + 8;
 	for (i = 0; i < num_blocks; i++) {
-		construct_ctr_preload(
-			ctr_preload,
-			a4_exists,
-			qc_exists,
-			pframe,	/* message, */
-			pn_vector,
-			i+1,
-			frtype
-		); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, /* message, */
+				      pn_vector, i+1, frtype);
+		/*  add for CONFIG_IEEE80211W, none 11w also can use */
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
 		for (j = 0; j < 16; j++)
@@ -1428,15 +1396,9 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	if (payload_remainder > 0) {
 		/* If there is a short final block, then pad it,*/
 		/* encrypt it and copy the unpadded part back   */
-		construct_ctr_preload(
-			ctr_preload,
-			a4_exists,
-			qc_exists,
-			pframe,	/* message, */
-			pn_vector,
-			num_blocks+1,
-			frtype
-		); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, /* message, */
+				      pn_vector, num_blocks+1, frtype);
+		/*  add for CONFIG_IEEE80211W, none 11w also can use */
 
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
@@ -1450,15 +1412,9 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	}
 
 	/* Encrypt the MIC */
-	construct_ctr_preload(
-		ctr_preload,
-		a4_exists,
-		qc_exists,
-		pframe,	/* message, */
-		pn_vector,
-		0,
-		frtype
-	); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+	construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, /* message, */
+			      pn_vector, 0, frtype);
+	/*  add for CONFIG_IEEE80211W, none 11w also can use */
 
 	for (j = 0; j < 16; j++)
 		padded_buffer[j] = 0x00;
@@ -1613,15 +1569,9 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	if (payload_remainder > 0) {
 		/* If there is a short final block, then pad it,*/
 		/* encrypt it and copy the unpadded part back   */
-		construct_ctr_preload(
-			ctr_preload,
-			a4_exists,
-			qc_exists,
-			pframe,
-			pn_vector,
-			num_blocks+1,
-			frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
-		);
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, pn_vector,
+				      num_blocks+1, frtype);
+		/*  add for CONFIG_IEEE80211W, none 11w also can use */
 
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
@@ -1645,28 +1595,12 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	pn_vector[4] = pframe[hdrlen+6];
 	pn_vector[5] = pframe[hdrlen+7];
 
-	construct_mic_iv(
-		mic_iv,
-		qc_exists,
-		a4_exists,
-		message,
-		plen-8,
-		pn_vector,
-		frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
-	);
-
-	construct_mic_header1(
-		mic_header1,
-		hdrlen,
-		message,
-		frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
-	);
-	construct_mic_header2(
-		mic_header2,
-		message,
-		a4_exists,
-		qc_exists
-	);
+	construct_mic_iv(mic_iv, qc_exists, a4_exists, message, plen-8, pn_vector, frtype);
+	/*  add for CONFIG_IEEE80211W, none 11w also can use */
+
+	construct_mic_header1(mic_header1, hdrlen, message, frtype);
+	/*  add for CONFIG_IEEE80211W, none 11w also can use */
+	construct_mic_header2(mic_header2, message, a4_exists, qc_exists);
 
 	payload_remainder = (plen-8) % 16;
 	num_blocks = (plen-8) / 16;
@@ -1708,15 +1642,9 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 
 	payload_index = hdrlen + 8;
 	for (i = 0; i < num_blocks; i++) {
-		construct_ctr_preload(
-			ctr_preload,
-			a4_exists,
-			qc_exists,
-			message,
-			pn_vector,
-			i+1,
-			frtype
-		); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, message, pn_vector, i+1,
+				      frtype);
+		/*  add for CONFIG_IEEE80211W, none 11w also can use */
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, &message[payload_index], chain_buffer);
 		for (j = 0; j < 16; j++)
@@ -1726,15 +1654,9 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	if (payload_remainder > 0) {
 		/* If there is a short final block, then pad it,*/
 		/* encrypt it and copy the unpadded part back   */
-		construct_ctr_preload(
-			ctr_preload,
-			a4_exists,
-			qc_exists,
-			message,
-			pn_vector,
-			num_blocks+1,
-			frtype
-		); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, message, pn_vector,
+				      num_blocks+1, frtype);
+		/*  add for CONFIG_IEEE80211W, none 11w also can use */
 
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
@@ -1748,15 +1670,8 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	}
 
 	/* Encrypt the MIC */
-	construct_ctr_preload(
-		ctr_preload,
-		a4_exists,
-		qc_exists,
-		message,
-		pn_vector,
-		0,
-		frtype
-	); /*  add for CONFIG_IEEE80211W, none 11w also can use */
+	construct_ctr_preload(ctr_preload, a4_exists, qc_exists, message, pn_vector, 0, frtype);
+	/*  add for CONFIG_IEEE80211W, none 11w also can use */
 
 	for (j = 0; j < 16; j++)
 		padded_buffer[j] = 0x00;
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index 6e9785c21cf8..f0dd4da82bf3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -242,18 +242,15 @@ struct	sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr)
 		for (i = 0; i < 16; i++)
 			memcpy(&psta->sta_recvpriv.rxcache.tid_rxseq[i], &wRxSeqInitialValue, 2);
 
-		RT_TRACE(
-			_module_rtl871x_sta_mgt_c_,
-			_drv_info_, (
-				"alloc number_%d stainfo  with hwaddr = %x %x %x %x %x %x \n",
-				pstapriv->asoc_sta_count,
-				hwaddr[0],
-				hwaddr[1],
-				hwaddr[2],
-				hwaddr[3],
-				hwaddr[4],
-				hwaddr[5]
-			)
+		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
+			 ("alloc number_%d stainfo  with hwaddr = %x %x %x %x %x %x \n",
+			  pstapriv->asoc_sta_count,
+			  hwaddr[0],
+			  hwaddr[1],
+			  hwaddr[2],
+			  hwaddr[3],
+			  hwaddr[4],
+			  hwaddr[5])
 		);
 
 		init_addba_retry_timer(pstapriv->padapter, psta);
@@ -366,18 +363,15 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 	spin_unlock_bh(&pxmitpriv->lock);
 
 	list_del_init(&psta->hash_list);
-	RT_TRACE(
-		_module_rtl871x_sta_mgt_c_,
-		_drv_err_, (
-			"\n free number_%d stainfo  with hwaddr = 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x \n",
-			pstapriv->asoc_sta_count,
-			psta->hwaddr[0],
-			psta->hwaddr[1],
-			psta->hwaddr[2],
-			psta->hwaddr[3],
-			psta->hwaddr[4],
-			psta->hwaddr[5]
-		)
+	RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
+		 ("\n free number_%d stainfo  with hwaddr = 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x \n",
+		  pstapriv->asoc_sta_count,
+		  psta->hwaddr[0],
+		  psta->hwaddr[1],
+		  psta->hwaddr[2],
+		  psta->hwaddr[3],
+		  psta->hwaddr[4],
+		  psta->hwaddr[5])
 	);
 	pstapriv->asoc_sta_count--;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 391bc666f7a6..b69998c5c07e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2586,9 +2586,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	spin_unlock_bh(&pxmitpriv->lock);
 }
 
-void enqueue_pending_xmitbuf(
-	struct xmit_priv *pxmitpriv,
-	struct xmit_buf *pxmitbuf)
+void enqueue_pending_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 {
 	struct __queue *pqueue;
 	struct adapter *pri_adapter = pxmitpriv->adapter;
@@ -2603,9 +2601,7 @@ void enqueue_pending_xmitbuf(
 	complete(&pri_adapter->xmitpriv.xmit_comp);
 }
 
-void enqueue_pending_xmitbuf_to_head(
-	struct xmit_priv *pxmitpriv,
-	struct xmit_buf *pxmitbuf)
+void enqueue_pending_xmitbuf_to_head(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 {
 	struct __queue *pqueue;
 
@@ -2617,8 +2613,7 @@ void enqueue_pending_xmitbuf_to_head(
 	spin_unlock_bh(&pqueue->lock);
 }
 
-struct xmit_buf *dequeue_pending_xmitbuf(
-	struct xmit_priv *pxmitpriv)
+struct xmit_buf *dequeue_pending_xmitbuf(struct xmit_priv *pxmitpriv)
 {
 	struct xmit_buf *pxmitbuf;
 	struct __queue *pqueue;
@@ -2642,8 +2637,7 @@ struct xmit_buf *dequeue_pending_xmitbuf(
 	return pxmitbuf;
 }
 
-struct xmit_buf *dequeue_pending_xmitbuf_under_survey(
-	struct xmit_priv *pxmitpriv)
+struct xmit_buf *dequeue_pending_xmitbuf_under_survey(struct xmit_priv *pxmitpriv)
 {
 	struct xmit_buf *pxmitbuf;
 	struct __queue *pqueue;
@@ -2683,8 +2677,7 @@ struct xmit_buf *dequeue_pending_xmitbuf_under_survey(
 	return pxmitbuf;
 }
 
-sint check_pending_xmitbuf(
-	struct xmit_priv *pxmitpriv)
+sint check_pending_xmitbuf(struct xmit_priv *pxmitpriv)
 {
 	struct __queue *pqueue;
 	sint	ret = false;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
