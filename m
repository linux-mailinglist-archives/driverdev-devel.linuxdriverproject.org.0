Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 846052D21AD
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:07:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DB2A87BDB;
	Tue,  8 Dec 2020 04:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ww5eIEAvujPR; Tue,  8 Dec 2020 04:07:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95E1687695;
	Tue,  8 Dec 2020 04:07:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 478AE1BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 43B2D879D2
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7k8i_2NAZpH7 for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34045879AE
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:40 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id q137so15636555iod.9
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Tg7EqaEqlCHiBnS4fcUrI7H2461EM76bzDVeFFF6TU=;
 b=sQpnzPgiazEGenvgQO3P+uvUO0hrkx4dPUl0Jp4b4ifN0pt3qz7MA6KmnXU6Jexr6s
 CouZ91LaVCBlBtSp6YpuR9oHqLq+D5/gHHW0SzDLQwO5kadiRVh/Df3sIW7wYqNkhR/N
 KhXmU21iSAOocJnGMsOaMrnsR3b0hM9AOuROvOAgUgguAJS6GRcK5/w2k9Yi+FynoSEi
 wqYX3I2tHLoxwMqd7BtSy8j88KQSCdhYrz1erWBq2S0usoTDRjeolRR2VDjCbU5EDkb7
 uAcmRuErnAW+Hg+kgaT9NjDS969dtRjsk5j3WdJaQN0AjFiW0Xgynbsr1PwooxPqMFgz
 /1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Tg7EqaEqlCHiBnS4fcUrI7H2461EM76bzDVeFFF6TU=;
 b=oEQLh0l64Ai4LFW+r736OstIhaclPioqXMc7wx8G1zWCWZvPr/D5+b+lBrHvfnZVh/
 2BlGr72u3wJ6R3HVa447KkYVC+howgkqRR5U3aCCPIHlNWktccOJJC6rXWKExmVqCPKr
 j507ue8yKMswG8sfOkvY7JYK7KgYDFFnbgIYVlnx0PYrlzLB5j7u1OmA/be334AaNg7o
 TKosK7bnU9cOVinf7weEGRcp3naKCmTXsWjI+Hwboaen+tWlKU4hcvmioPpJm9nJPqr0
 SqlGyD7Pr9oJpzRfDZjqmNYChrbIsgFWvI1NTI6pdrh4GV3zor1ADFEKKJySIDj0mtji
 Rg9g==
X-Gm-Message-State: AOAM5330qvNbNA0TbU0wBdlIe5wbm7460KJtya753srd71kRr/HWXZpD
 9tCCTIPmjkX76tqvhNmRHjk=
X-Google-Smtp-Source: ABdhPJyQ4SJcxpGL141ddC6MslAcyEGa8RtydBpo6ANbYO9vsH2FCI9ZMipP+lGDS4LH67GDc/1X8Q==
X-Received: by 2002:a02:7f41:: with SMTP id r62mr24493700jac.17.1607400459483; 
 Mon, 07 Dec 2020 20:07:39 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:38 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 01/21] staging: rtl8723bs: use WLAN_EID_HT_CAPABILITY
Date: Mon,  7 Dec 2020 22:07:13 -0600
Message-Id: <20201208040733.379197-2-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208040733.379197-1-ross.schm.dev@gmail.com>
References: <20201208040733.379197-1-ross.schm.dev@gmail.com>
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

Replace unique WLAN_EID_HT_CAP, _HT_CAPABILITY_IE_, and EID_HTCapability
with kernel provided WLAN_EID_HT_CAPABILITY from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c        |  8 ++++----
 drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme.c      |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c  | 14 +++++++-------
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c |  2 +-
 drivers/staging/rtl8723bs/include/ieee80211.h  |  1 -
 drivers/staging/rtl8723bs/include/wifi.h       |  1 -
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c |  6 +++---
 9 files changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 04d5852d0d3e..87605d425a31 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1172,7 +1172,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* parsing HT_CAP_IE */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_HT_CAPABILITY_IE_,
+		WLAN_EID_HT_CAPABILITY,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1774,7 +1774,7 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 
 		break;
 
-	case _HT_CAPABILITY_IE_:
+	case WLAN_EID_HT_CAPABILITY:
 
 		update_bcn_htcap_ie(padapter);
 
@@ -2052,7 +2052,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (rtw_ht_operation_update(padapter) > 0) {
-		update_beacon(padapter, _HT_CAPABILITY_IE_, NULL, false);
+		update_beacon(padapter, WLAN_EID_HT_CAPABILITY, NULL, false);
 		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
 	}
 
@@ -2116,7 +2116,7 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (rtw_ht_operation_update(padapter) > 0) {
-		update_beacon(padapter, _HT_CAPABILITY_IE_, NULL, false);
+		update_beacon(padapter, WLAN_EID_HT_CAPABILITY, NULL, false);
 		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
 	}
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index f6160f1cca43..1d0a7690acde 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -842,7 +842,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	}
 
 	phtpriv->ht_option = false;
-	ptmp = rtw_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_, &tmp_len, pnetwork->network.IELength-12);
+	ptmp = rtw_get_ie(&pnetwork->network.IEs[12], WLAN_EID_HT_CAPABILITY, &tmp_len, pnetwork->network.IELength-12);
 	if (pregistrypriv->ht_enable && ptmp && tmp_len > 0) {
 		/* 	Added by Albert 2010/06/23 */
 		/* 	For the WEP mode, we will use the bg mode to do the connection to avoid some IOT issue. */
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index e80b957f947f..23ba4160ab21 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -1056,7 +1056,7 @@ ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
 			elems->timeout_int = pos;
 			elems->timeout_int_len = elen;
 			break;
-		case WLAN_EID_HT_CAP:
+		case WLAN_EID_HT_CAPABILITY:
 			elems->ht_capabilities = pos;
 			elems->ht_capabilities_len = elen;
 			break;
@@ -1209,7 +1209,7 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 
 	/* get bwmode and ch_offset */
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 			pht_cap = (struct ieee80211_ht_cap *)(p + 2);
 			pnetwork->BcnInfo.ht_cap_info = le16_to_cpu(pht_cap->cap_info);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index b1737fbeb33f..f32cf36ea949 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2718,7 +2718,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 	else
 		ht_capie.ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&0x00);
 
-	pframe = rtw_set_ie(out_ie+out_len, _HT_CAPABILITY_IE_,
+	pframe = rtw_set_ie(out_ie+out_len, WLAN_EID_HT_CAPABILITY,
 						sizeof(struct ieee80211_ht_cap), (unsigned char *)&ht_capie, pout_len);
 
 	phtpriv->ht_option = true;
@@ -2768,7 +2768,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 
 	/* check Max Rx A-MPDU Size */
 	len = 0;
-	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_CAPABILITY_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
+	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), WLAN_EID_HT_CAPABILITY, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
 	if (p && len > 0) {
 		pht_capie = (struct ieee80211_ht_cap *)(p+2);
 		max_ampdu_sz = (pht_capie->ampdu_params_info & IEEE80211_HT_CAP_AMPDU_FACTOR);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 632b0f7eeff2..9024aa9f1a92 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1697,7 +1697,7 @@ unsigned int OnAssocRsp(struct adapter *padapter, union recv_frame *precv_frame)
 				WMM_param_handler(padapter, pIE);
 			break;
 
-		case _HT_CAPABILITY_IE_:	/* HT caps */
+		case WLAN_EID_HT_CAPABILITY:	/* HT caps */
 			HT_caps_handler(padapter, pIE);
 			break;
 
@@ -3164,7 +3164,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 
 		/* FILL HT CAP INFO IE */
 		/* p = hostapd_eid_ht_capabilities_info(hapd, p); */
-		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_CAPABILITY_IE_, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_));
+		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_HT_CAPABILITY, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_));
 		if (pbuf && ie_len > 0) {
 			memcpy(pframe, pbuf, ie_len+2);
 			pframe += (ie_len+2);
@@ -3372,11 +3372,11 @@ void issue_assocreq(struct adapter *padapter)
 		case EID_WPA2:
 			pframe = rtw_set_ie(pframe, EID_WPA2, pIE->Length, pIE->data, &(pattrib->pktlen));
 			break;
-		case EID_HTCapability:
+		case WLAN_EID_HT_CAPABILITY:
 			if (padapter->mlmepriv.htpriv.ht_option) {
 				if (!(is_ap_in_tkip(padapter))) {
 					memcpy(&(pmlmeinfo->HT_caps), pIE->data, sizeof(struct HT_caps_element));
-					pframe = rtw_set_ie(pframe, EID_HTCapability, pIE->Length, (u8 *)(&(pmlmeinfo->HT_caps)), &(pattrib->pktlen));
+					pframe = rtw_set_ie(pframe, WLAN_EID_HT_CAPABILITY, pIE->Length, (u8 *)(&(pmlmeinfo->HT_caps)), &(pattrib->pktlen));
 				}
 			}
 			break;
@@ -4125,7 +4125,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 
 			pbss_network = (struct wlan_bssid_ex *)&pnetwork->network;
 
-			p = rtw_get_ie(pbss_network->IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pbss_network->IELength - _FIXED_IE_LENGTH_);
+			p = rtw_get_ie(pbss_network->IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, pbss_network->IELength - _FIXED_IE_LENGTH_);
 			if ((p == NULL) || (len == 0)) {/* non-HT */
 
 				if ((pbss_network->Configuration.DSConfig <= 0) || (pbss_network->Configuration.DSConfig > 14))
@@ -4553,7 +4553,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 	if ((pregistrypriv->wifi_spec == 1) && (false == pmlmeinfo->bwmode_updated)) {
 		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-		p = rtw_get_ie(bssid->IEs + ie_offset, _HT_CAPABILITY_IE_, &len, bssid->IELength - ie_offset);
+		p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_HT_CAPABILITY, &len, bssid->IELength - ie_offset);
 		if (p && len > 0) {
 			struct HT_caps_element	*pHT_caps;
 
@@ -6178,7 +6178,7 @@ u8 join_cmd_hdl(struct adapter *padapter, u8 *pbuf)
 				WMM_param_handler(padapter, pIE);
 			break;
 
-		case _HT_CAPABILITY_IE_:	/* Get HT Cap IE. */
+		case WLAN_EID_HT_CAPABILITY:	/* Get HT Cap IE. */
 			pmlmeinfo->HT_caps_enable = 1;
 			break;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 4bc0bea7e969..9659e0db5484 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1289,7 +1289,7 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 
 	/* check bw and channel offset */
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 			pht_cap = (struct ieee80211_ht_cap *)(p + 2);
 			ht_cap_info = le16_to_cpu(pht_cap->cap_info);
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 79c410cfadba..7cf32aa7cd88 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -349,7 +349,6 @@ struct ieee80211_snap_hdr {
 #define WLAN_REASON_EXPIRATION_CHK 65535
 
 /* EIDs defined by IEEE 802.11h - END */
-#define WLAN_EID_HT_CAP 45
 #define WLAN_EID_20_40_BSS_COEXISTENCE 72
 #define WLAN_EID_20_40_BSS_INTOLERANT 73
 #define WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS 74
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 41de2605c517..47a828de5227 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -401,7 +401,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define _ERPINFO_IE_			42
 #define _EXT_SUPPORTEDRATES_IE_	50
 
-#define _HT_CAPABILITY_IE_			45
 #define _FTIE_						55
 #define _TIMEOUT_ITVL_IE_			56
 #define _SRC_IE_				59
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 1d73df69f737..e81a953d9c9a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -109,9 +109,9 @@ static char *translate_scan(struct adapter *padapter,
 
 	/* parsing HT_CAP_IE */
 	if (pnetwork->network.Reserved[0] == 2) { /*  Probe Request */
-		p = rtw_get_ie(&pnetwork->network.IEs[0], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.IELength);
+		p = rtw_get_ie(&pnetwork->network.IEs[0], WLAN_EID_HT_CAPABILITY, &ht_ielen, pnetwork->network.IELength);
 	} else {
-		p = rtw_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.IELength-12);
+		p = rtw_get_ie(&pnetwork->network.IEs[12], WLAN_EID_HT_CAPABILITY, &ht_ielen, pnetwork->network.IELength-12);
 	}
 	if (p && ht_ielen > 0) {
 		struct ieee80211_ht_cap *pht_capie;
@@ -771,7 +771,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED|WIFI_ADHOC_MASTER_STATE) == true) {
 		/* parsing HT_CAP_IE */
-		p = rtw_get_ie(&pcur_bss->IEs[12], _HT_CAPABILITY_IE_, &ht_ielen, pcur_bss->IELength-12);
+		p = rtw_get_ie(&pcur_bss->IEs[12], WLAN_EID_HT_CAPABILITY, &ht_ielen, pcur_bss->IELength-12);
 		if (p && ht_ielen > 0)
 			ht_cap = true;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
