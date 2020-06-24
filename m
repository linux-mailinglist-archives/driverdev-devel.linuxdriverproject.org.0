Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3D82077E7
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 17:50:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B559C8776E;
	Wed, 24 Jun 2020 15:50:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R7Lpa7O86NKs; Wed, 24 Jun 2020 15:50:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2A1186D78;
	Wed, 24 Jun 2020 15:50:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 622681BF369
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5ECF9865C1
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:50:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G0R-a96pEsNc for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 15:50:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B755786C5C
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 15:50:16 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id j10so2033001qtq.11
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 08:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2M1jC4Z3Ev1rIf6Xhy3CoyhBySLuV3vLOpt5jVTNmWI=;
 b=mWQik4El0QL1dD9Hlh4dZmtGlGA6EwXr/vKCKMA4vyEc9VB+RFk8qAaffMqzlrBWjw
 xfBDMEQHdrbSoIR2pnA5LDmfvZGCxAA4dezwBJNT53VitdR/bZGSbNsm+yMUxwIsdsJm
 nspNl/O9Y44OLPXUCbld6tEaS+PffYDvhCvLTbKr+n8NDwfsJ+uZ7oSEYjA5xospe36d
 kWBJsZeUP3b4pCoPR0EepQBLckNetQaQ80AAVM32njmRcu6MsDL81GUfIz6BWsyVQ+ad
 Hy7q90m2lhAfbUeS8lvC4PteJM//kwOhUlbclZ2glLoGfVte3rPiSNSoDSWEAVio4aXx
 MKQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2M1jC4Z3Ev1rIf6Xhy3CoyhBySLuV3vLOpt5jVTNmWI=;
 b=JRN1oZ85y+3wJ+7v+HCirSEwmxjnU/twAHrS72vYyt9msIzHi0YPGwLaiaNunhlOfS
 0xz/g7Tz4xcGo//2ETWXsWLLHHB5oInY51onxz8XhWAoEQSsmhInGQLvgA8Zf52/n0tH
 Pi41+4fL+bc11qJqxaWm1D7A53lYCMaCzVWvJw7AHBZ7M0S/xtjF1W+2CGj5h4Yt074A
 vR/qYlRV6gWpu9vPHZkBFiyNIEMo/+GkmWzwdbGwFwEtujryjZmJmfOOUiPOOclOaBRZ
 LzFGRvZLte3bCEGQ7EEAfHs6UbZW+gbW5PGvvrtiPtBVlKyneV7QPdejJNiYEePFQ8cx
 gtwQ==
X-Gm-Message-State: AOAM5339ZLRwvrx6Hp24pxe9dCvX/sp1iPjlb4L4t22Ody87D6nGXi4f
 6RafdSLlfd240Cpzj4G3jw==
X-Google-Smtp-Source: ABdhPJwSM/YvIA0tWefFheh2GJc8M170SEcfDWYt4UWwwp5AtyoB71wNQsdESgF91CKLcYHWA87L0g==
X-Received: by 2002:ac8:321a:: with SMTP id x26mr27267091qta.61.1593013815469; 
 Wed, 24 Jun 2020 08:50:15 -0700 (PDT)
Received: from PWN.localdomain (c-76-119-149-155.hsd1.ma.comcast.net.
 [76.119.149.155])
 by smtp.gmail.com with ESMTPSA id q189sm1342241qkd.57.2020.06.24.08.50.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jun 2020 08:50:14 -0700 (PDT)
From: Peilin Ye <yepeilin.cs@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] Staging: rtl8188eu: Fix alignment coding style issue
Date: Wed, 24 Jun 2020 08:47:25 -0700
Message-Id: <1593013645-19130-1-git-send-email-yepeilin.cs@gmail.com>
X-Mailer: git-send-email 2.7.4
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
 Peilin Ye <yepeilin.cs@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix "Alignment should match open parenthesis" issues reported by
checkpatch.pl for all files under drivers/staging/rtl8188eu/core.

Line rtw_mlme_ext.c:373 is left overlength for readability.

Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c       |  4 +--
 drivers/staging/rtl8188eu/core/rtw_debug.c     | 20 +++++------
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 17 +++++-----
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c |  2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c      |  4 +--
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  | 46 ++++++++++++--------------
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c   |  2 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c      |  8 ++---
 8 files changed, 50 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index f69e9453ad45..a97d50081071 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -229,7 +229,7 @@ int rtw_cmd_thread(void *context)
  * LOCKED pmlmepriv->lock
  */
 u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid, int ssid_num,
-	struct rtw_ieee80211_channel *ch, int ch_num)
+		      struct rtw_ieee80211_channel *ch, int ch_num)
 {
 	u8 res = _FAIL;
 	struct cmd_obj		*ph2c;
@@ -449,7 +449,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 		    (padapter->securitypriv.dot11PrivacyAlgrthm != _TKIP_)) {
 			/* rtw_restructure_ht_ie */
 			rtw_restructure_ht_ie(padapter, &pnetwork->network.ies[0], &psecnetwork->ies[0],
-									pnetwork->network.ie_length, &psecnetwork->ie_length);
+					      pnetwork->network.ie_length, &psecnetwork->ie_length);
 		}
 	}
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_debug.c b/drivers/staging/rtl8188eu/core/rtw_debug.c
index d0e41f2ef1ce..fcc8bd1011e1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_debug.c
+++ b/drivers/staging/rtl8188eu/core/rtw_debug.c
@@ -10,8 +10,8 @@
 #include <usb_ops_linux.h>
 
 int proc_get_drv_version(char *page, char **start,
-			  off_t offset, int count,
-			  int *eof, void *data)
+			 off_t offset, int count,
+			 int *eof, void *data)
 {
 	int len = 0;
 
@@ -22,15 +22,15 @@ int proc_get_drv_version(char *page, char **start,
 }
 
 int proc_get_write_reg(char *page, char **start,
-			  off_t offset, int count,
-			  int *eof, void *data)
+		       off_t offset, int count,
+		       int *eof, void *data)
 {
 	*eof = 1;
 	return 0;
 }
 
 int proc_set_write_reg(struct file *file, const char __user *buffer,
-		unsigned long count, void *data)
+		       unsigned long count, void *data)
 {
 	struct net_device *dev = data;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
@@ -71,8 +71,8 @@ static u32 proc_get_read_addr = 0xeeeeeeee;
 static u32 proc_get_read_len = 0x4;
 
 int proc_get_read_reg(char *page, char **start,
-			  off_t offset, int count,
-			  int *eof, void *data)
+		      off_t offset, int count,
+		      int *eof, void *data)
 {
 	struct net_device *dev = data;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
@@ -104,7 +104,7 @@ int proc_get_read_reg(char *page, char **start,
 }
 
 int proc_set_read_reg(struct file *file, const char __user *buffer,
-		unsigned long count, void *data)
+		      unsigned long count, void *data)
 {
 	char tmp[16];
 	u32 addr, len;
@@ -131,8 +131,8 @@ int proc_set_read_reg(struct file *file, const char __user *buffer,
 }
 
 int proc_get_adapter_state(char *page, char **start,
-			  off_t offset, int count,
-			  int *eof, void *data)
+			   off_t offset, int count,
+			   int *eof, void *data)
 {
 	struct net_device *dev = data;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index caf600eba03b..5630d5d763db 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -675,8 +675,7 @@ u8 *rtw_get_wps_attr_content(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8
 }
 
 static int rtw_ieee802_11_parse_vendor_specific(u8 *pos, uint elen,
-					    struct rtw_ieee802_11_elems *elems,
-					    int show_errors)
+						struct rtw_ieee802_11_elems *elems, int show_errors)
 {
 	unsigned int oui;
 
@@ -766,8 +765,8 @@ static int rtw_ieee802_11_parse_vendor_specific(u8 *pos, uint elen,
  * Returns: Parsing result
  */
 enum parse_res rtw_ieee802_11_parse_elems(u8 *start, uint len,
-				struct rtw_ieee802_11_elems *elems,
-				int show_errors)
+					  struct rtw_ieee802_11_elems *elems,
+					  int show_errors)
 {
 	uint left = len;
 	u8 *pos = start;
@@ -921,8 +920,10 @@ static int rtw_get_cipher_info(struct wlan_network *pnetwork)
 			pnetwork->BcnInfo.pairwise_cipher = pairwise_cipher;
 			pnetwork->BcnInfo.group_cipher = group_cipher;
 			pnetwork->BcnInfo.is_8021x = is8021x;
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->pairwise_cipher: %d, is_8021x is %d",
-				 __func__, pnetwork->BcnInfo.pairwise_cipher, pnetwork->BcnInfo.is_8021x));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
+				 ("%s: pnetwork->pairwise_cipher: %d, is_8021x is %d",
+				  __func__, pnetwork->BcnInfo.pairwise_cipher,
+				  pnetwork->BcnInfo.is_8021x));
 			ret = _SUCCESS;
 		}
 	} else {
@@ -979,9 +980,9 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 			pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WEP;
 	}
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
-		 pnetwork->BcnInfo.encryp_protocol));
+						       pnetwork->BcnInfo.encryp_protocol));
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
-		 pnetwork->BcnInfo.encryp_protocol));
+						       pnetwork->BcnInfo.encryp_protocol));
 	rtw_get_cipher_info(pnetwork);
 
 	/* get bwmode and ch_offset */
diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 7d56767cdff6..7bb26c362b10 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -306,7 +306,7 @@ u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid)
 }
 
 u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
-	enum ndis_802_11_network_infra networktype)
+				      enum ndis_802_11_network_infra networktype)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct wlan_network *cur_network = &pmlmepriv->cur_network;
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9de2d421f6b1..b291ee6ca8f4 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -334,7 +334,7 @@ struct wlan_network *rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 }
 
 void update_network(struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src,
-	struct adapter *padapter, bool update_ie)
+		    struct adapter *padapter, bool update_ie)
 {
 	long rssi_ori = dst->Rssi;
 	u8 sq_smp = src->PhyInfo.SignalQuality;
@@ -646,7 +646,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 			s_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
 			if (s_ret == _SUCCESS) {
 				mod_timer(&pmlmepriv->assoc_timer,
-					jiffies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));
+					  jiffies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 			} else if (s_ret == 2) { /* there is no need to wait for join */
 				_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 				rtw_indicate_connect(adapter);
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 8d035f67ef61..f6b9a39799ce 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -370,7 +370,7 @@ static void issue_beacon(struct adapter *padapter, int timeout_ms)
 		pframe += (cur_network->ie_length + len_diff);
 		pattrib->pktlen += (cur_network->ie_length + len_diff);
 		wps_ie = rtw_get_wps_ie(pmgntframe->buf_addr + TXDESC_OFFSET + sizeof(struct ieee80211_hdr_3addr) + _BEACON_IE_OFFSET_,
-			pattrib->pktlen - sizeof(struct ieee80211_hdr_3addr) - _BEACON_IE_OFFSET_, NULL, &wps_ielen);
+					pattrib->pktlen - sizeof(struct ieee80211_hdr_3addr) - _BEACON_IE_OFFSET_, NULL, &wps_ielen);
 		if (wps_ie && wps_ielen > 0)
 			rtw_get_wps_attr_content(wps_ie,  wps_ielen, WPS_ATTR_SELECTED_REGISTRAR, (u8 *)(&sr), NULL);
 		if (sr != 0)
@@ -1932,12 +1932,12 @@ static void site_survey(struct adapter *padapter)
 				if (pmlmeext->sitesurvey_res.ssid[i].ssid_length) {
 					/* todo: to issue two probe req??? */
 					issue_probereq(padapter,
-					&pmlmeext->sitesurvey_res.ssid[i],
-								NULL, false);
+						       &pmlmeext->sitesurvey_res.ssid[i],
+						       NULL, false);
 					/* msleep(SURVEY_TO>>1); */
 					issue_probereq(padapter,
-					&pmlmeext->sitesurvey_res.ssid[i],
-								NULL, false);
+						       &pmlmeext->sitesurvey_res.ssid[i],
+						       NULL, false);
 				}
 			}
 
@@ -2522,7 +2522,7 @@ static unsigned int OnProbeReq(struct adapter *padapter,
 		return _SUCCESS;
 
 	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, _SSID_IE_, &ielen,
-			len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
+		       len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
 
 	/* check (wildcard) SSID */
 	if (p) {
@@ -2759,7 +2759,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 			DBG_88E("checking for challenging txt...\n");
 
 			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + 4 + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, &ie_len,
-					len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_ - 4);
+				       len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_ - 4);
 
 			if (!p || ie_len <= 0) {
 				DBG_88E("auth rejected because challenge failure!(1)\n");
@@ -2853,7 +2853,7 @@ static unsigned int OnAuthClient(struct adapter *padapter,
 		if (pmlmeinfo->auth_algo == dot11AuthAlgrthm_Shared) {
 			/*  legendary shared system */
 			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, &len,
-				pkt_len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_);
+				       pkt_len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_);
 
 			if (!p)
 				goto authclnt_fail;
@@ -2966,7 +2966,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	/*  now we should check all the fields... */
 	/*  checking SSID */
 	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SSID_IE_, &ie_len,
-		pkt_len - WLAN_HDR_A3_LEN - ie_offset);
+		       pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 
 	if (!p || ie_len == 0) {
 		/*  broadcast ssid, however it is not allowed in assocreq */
@@ -2999,7 +2999,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		supportRateNum = ie_len;
 
 		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _EXT_SUPPORTEDRATES_IE_, &ie_len,
-				pkt_len - WLAN_HDR_A3_LEN - ie_offset);
+			       pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 		if (p) {
 			if (supportRateNum <= sizeof(supportRate)) {
 				memcpy(supportRate + supportRateNum,
@@ -3913,8 +3913,7 @@ static void init_mlme_ext_priv_value(struct adapter *padapter)
 }
 
 static int has_channel(struct rt_channel_info *channel_set,
-					   u8 chanset_size,
-					   u8 chan)
+		       u8 chanset_size, u8 chan)
 {
 	int i;
 
@@ -4671,18 +4670,15 @@ void linked_status_chk(struct adapter *padapter)
 			} else {
 				if (rx_chk != _SUCCESS) {
 					if (pmlmeext->retry == 0) {
-						issue_probereq(padapter,
-						&pmlmeinfo->network.ssid,
-						pmlmeinfo->network.MacAddress,
-									false);
-						issue_probereq(padapter,
-						&pmlmeinfo->network.ssid,
-						pmlmeinfo->network.MacAddress,
-									false);
-						issue_probereq(padapter,
-						&pmlmeinfo->network.ssid,
-						pmlmeinfo->network.MacAddress,
-									false);
+						issue_probereq(padapter, &pmlmeinfo->network.ssid,
+							       pmlmeinfo->network.MacAddress,
+							       false);
+						issue_probereq(padapter, &pmlmeinfo->network.ssid,
+							       pmlmeinfo->network.MacAddress,
+							       false);
+						issue_probereq(padapter, &pmlmeinfo->network.ssid,
+							       pmlmeinfo->network.MacAddress,
+							       false);
 					}
 				}
 
@@ -5330,7 +5326,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 	}
 
 	ptxBeacon_parm = kmemdup(&pmlmeinfo->network,
-				sizeof(struct wlan_bssid_ex), GFP_ATOMIC);
+				 sizeof(struct wlan_bssid_ex), GFP_ATOMIC);
 	if (!ptxBeacon_parm) {
 		kfree(ph2c);
 		res = _FAIL;
diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index c000382c96d9..e7777bf3bafb 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -264,7 +264,7 @@ static void pwr_state_check_handler(struct timer_list *t)
 {
 	struct adapter *padapter =
 		from_timer(padapter, t,
-				pwrctrlpriv.pwr_state_check_timer);
+			   pwrctrlpriv.pwr_state_check_timer);
 
 	rtw_ps_cmd(padapter);
 }
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index a036ef104198..d000b812a69b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -67,7 +67,7 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 		INIT_LIST_HEAD(&precvframe->list);
 
 		list_add_tail(&precvframe->list,
-				     &precvpriv->free_recv_queue.queue);
+			      &precvpriv->free_recv_queue.queue);
 
 		precvframe->pkt = NULL;
 
@@ -1192,21 +1192,21 @@ static int validate_recv_frame(struct adapter *adapter,
 		if (_drv_err_ <= GlobalDebugLevel) {
 			pr_info(DRIVER_PREFIX "#############################\n");
 			print_hex_dump(KERN_INFO, DRIVER_PREFIX, DUMP_PREFIX_NONE,
-					16, 1, ptr, 64, false);
+				       16, 1, ptr, 64, false);
 			pr_info(DRIVER_PREFIX "#############################\n");
 		}
 	} else if (bDumpRxPkt == 2) {
 		if ((_drv_err_ <= GlobalDebugLevel) && (type == WIFI_MGT_TYPE)) {
 			pr_info(DRIVER_PREFIX "#############################\n");
 			print_hex_dump(KERN_INFO, DRIVER_PREFIX, DUMP_PREFIX_NONE,
-					16, 1, ptr, 64, false);
+				       16, 1, ptr, 64, false);
 			pr_info(DRIVER_PREFIX "#############################\n");
 		}
 	} else if (bDumpRxPkt == 3) {
 		if ((_drv_err_ <= GlobalDebugLevel) && (type == WIFI_DATA_TYPE)) {
 			pr_info(DRIVER_PREFIX "#############################\n");
 			print_hex_dump(KERN_INFO, DRIVER_PREFIX, DUMP_PREFIX_NONE,
-					16, 1, ptr, 64, false);
+				       16, 1, ptr, 64, false);
 			pr_info(DRIVER_PREFIX "#############################\n");
 		}
 	}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
