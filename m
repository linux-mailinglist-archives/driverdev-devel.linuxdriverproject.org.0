Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1102D21B0
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:07:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBD4587B4F;
	Tue,  8 Dec 2020 04:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxPTArljyZ8Y; Tue,  8 Dec 2020 04:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 808ED87B17;
	Tue,  8 Dec 2020 04:07:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DB831BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 94E1587695
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D1ZpQuWMq9VN for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 400EF87681
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:41 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id q1so14358969ilt.6
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bQfYQOHOYiw5gTqUH3QfEc5M2sDfdhx7Mvo0vFAWlp8=;
 b=B/Ywdh0aBqFNhlcSa6MwHQiY6ECEqw5vZjXNRB1fkZnXcMblQPTLsStZj1oufNRIc0
 N1VHHbTWbeju3byMCiGQF+JYbE4zdKoJCsyBO5FiCc+6h0t3f56KWbSjE67C+xUDsmi0
 RdiruPC6IZeAmEHZ18aO9+USANwYAFNvmbr5RX9YIbwnj6+ZI5B/dQOLD2g5x6U5GxZg
 mLVEFf1jQHlbTgFONRkflATQJTeTZirl4ZpRMXDSlPq9VJ+fJx38zkh4vgLF/bB60eWO
 Ms5GWXE+WnnudE6N5cSCE7m4Bhjc4yU/NP4XI2rawOvtBvaFDd1vIm8LbP6TA5WCcCnt
 j01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bQfYQOHOYiw5gTqUH3QfEc5M2sDfdhx7Mvo0vFAWlp8=;
 b=Tl1L/QosqXruy0X0GsqIa6b0fZR2YRD+Jb3eK6j86My63MbGThQmv4lvHgHl4nvv8g
 fVK8FeksGKlpme/vbL8Jui8xc5xX4WpGtymto2B6iE/IkBESefiqHBg1SX2aCb1lkCrI
 Jt+OLm17QQebYkZDxS5Mza9B7Z7fgu+RLDXUYOhzo2N/53yd3V53fH8xPPB3lNWwh7mU
 MBoAw/pzMvw0pF9I5A9rQrOblBjibRvgHpi3TuPPLszlcBNIU/mSYhEXyLI3++rnJTgi
 4EFW4mW2iDNTJkWwJ/IKOsYdCgxhqBzcbtOhAzHhp0lp/u5B/tIT4P+il8h6CXEqPEl2
 VIcA==
X-Gm-Message-State: AOAM5312Erf5UnxxU8BES/KtYc0asFgfc363qKamEdZDpAVyY+au4bWV
 TZ62sIgqQZjHlCNCqDaCNHg=
X-Google-Smtp-Source: ABdhPJzjV6gPglgenwB059H3nYfVJ6SZISlCnWxXsG3MDyI5cmItfgLctugCu8Gf7Id8jZwUvUqjyg==
X-Received: by 2002:a92:a153:: with SMTP id v80mr24903386ili.66.1607400460536; 
 Mon, 07 Dec 2020 20:07:40 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:39 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 02/21] staging: rtl8723bs: use WLAN_EID_VENDOR_SPECIFIC
Date: Mon,  7 Dec 2020 22:07:14 -0600
Message-Id: <20201208040733.379197-3-ross.schm.dev@gmail.com>
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

Replace unique WLAN_EID_GENERIC, _WPA_IE_ID_, _SSN_IE_1_, and
_VENDOR_SPECIFIC_IE_ macros with kernel provided WLAN_EID_VENDOR_SPECIFIC
from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |  6 +++---
 .../staging/rtl8723bs/core/rtw_ieee80211.c    | 12 +++++------
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  6 +++---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 20 +++++++++----------
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  6 +++---
 drivers/staging/rtl8723bs/include/ieee80211.h |  1 -
 .../staging/rtl8723bs/include/rtw_security.h  |  1 -
 drivers/staging/rtl8723bs/include/wifi.h      |  2 --
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  4 ++--
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |  8 ++++----
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |  2 +-
 11 files changed, 32 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 87605d425a31..c8953b442734 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1110,7 +1110,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	for (p = ie + _BEACON_IE_OFFSET_; ; p += (ie_len + 2)) {
 		p = rtw_get_ie(
 			p,
-			_SSN_IE_1_,
+			WLAN_EID_VENDOR_SPECIFIC,
 			&ie_len,
 			(pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2))
 		);
@@ -1146,7 +1146,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		for (p = ie + _BEACON_IE_OFFSET_; ; p += (ie_len + 2)) {
 			p = rtw_get_ie(
 				p,
-				_VENDOR_SPECIFIC_IE_,
+				WLAN_EID_VENDOR_SPECIFIC,
 				&ie_len,
 				(pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2))
 			);
@@ -1792,7 +1792,7 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 
 		break;
 
-	case _VENDOR_SPECIFIC_IE_:
+	case WLAN_EID_VENDOR_SPECIFIC:
 
 		update_bcn_vendor_spec_ie(padapter, oui);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 23ba4160ab21..86a5114d1241 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -383,7 +383,7 @@ unsigned char *rtw_get_wpa_ie(unsigned char *pie, int *wpa_ie_len, int limit)
 	__le16 le_tmp;
 
 	while (1) {
-		pbuf = rtw_get_ie(pbuf, _WPA_IE_ID_, &len, limit_new);
+		pbuf = rtw_get_ie(pbuf, WLAN_EID_VENDOR_SPECIFIC, &len, limit_new);
 
 		if (pbuf) {
 			/* check if oui matches... */
@@ -471,7 +471,7 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 		return _FAIL;
 	}
 
-	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie+1) != (u8)(wpa_ie_len - 2)) ||
+	if ((*wpa_ie != WLAN_EID_VENDOR_SPECIFIC) || (*(wpa_ie+1) != (u8)(wpa_ie_len - 2)) ||
 	   (memcmp(wpa_ie+2, RTW_WPA_OUI_TYPE, WPA_SELECTOR_LEN))) {
 		return _FAIL;
 	}
@@ -667,7 +667,7 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 
-		if ((authmode == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt+2], &wpa_oui[0], 4))) {
+		if ((authmode == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&in_ie[cnt+2], &wpa_oui[0], 4))) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
 
 				if (wpa_ie) {
@@ -715,7 +715,7 @@ u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
 
 	eid = ie_ptr[0];
 
-	if ((eid == _WPA_IE_ID_) && (!memcmp(&ie_ptr[2], wps_oui, 4))) {
+	if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&ie_ptr[2], wps_oui, 4))) {
 		/* DBG_8192C("==> found WPS_IE.....\n"); */
 		*wps_ielen = ie_ptr[1]+2;
 		match = true;
@@ -749,7 +749,7 @@ u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen)
 	while (cnt < in_len) {
 		eid = in_ie[cnt];
 
-		if ((eid == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt+2], wps_oui, 4))) {
+		if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&in_ie[cnt+2], wps_oui, 4))) {
 			wpsie_ptr = &in_ie[cnt];
 
 			if (wps_ie)
@@ -788,7 +788,7 @@ u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_att
 	if (len_attr)
 		*len_attr = 0;
 
-	if ((wps_ie[0] != _VENDOR_SPECIFIC_IE_) ||
+	if ((wps_ie[0] != WLAN_EID_VENDOR_SPECIFIC) ||
 		(memcmp(wps_ie + 2, wps_oui, 4))) {
 		return attr_ptr;
 	}
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index f32cf36ea949..50129a3e67e0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2359,7 +2359,7 @@ sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in
 	memcpy(out_ie, in_ie, 12);
 	ielength = 12;
 	if ((ndisauthmode == Ndis802_11AuthModeWPA) || (ndisauthmode == Ndis802_11AuthModeWPAPSK))
-			authmode = _WPA_IE_ID_;
+			authmode = WLAN_EID_VENDOR_SPECIFIC;
 	if ((ndisauthmode == Ndis802_11AuthModeWPA2) || (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
 			authmode = _WPA2_IE_ID_;
 
@@ -2367,7 +2367,7 @@ sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in
 		memcpy(out_ie+ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
 
 		ielength += psecuritypriv->wps_ie_len;
-	} else if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {
+	} else if ((authmode == WLAN_EID_VENDOR_SPECIFIC) || (authmode == _WPA2_IE_ID_)) {
 		/* copy RSN or SSN */
 		memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1]+2);
 		/* debug for CONFIG_IEEE80211W
@@ -2574,7 +2574,7 @@ void rtw_build_wmm_ie_ht(struct adapter *padapter, u8 *out_ie, uint *pout_len)
 
 	if (padapter->mlmepriv.qospriv.qos_option == 0) {
 		out_len = *pout_len;
-		pframe = rtw_set_ie(out_ie+out_len, _VENDOR_SPECIFIC_IE_,
+		pframe = rtw_set_ie(out_ie+out_len, WLAN_EID_VENDOR_SPECIFIC,
 							_WMM_IE_Length_, WMM_IE, pout_len);
 
 		padapter->mlmepriv.qospriv.qos_option = 1;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 9024aa9f1a92..11e176f29b4b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -628,7 +628,7 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 		u8 RC_OUI[4] = {0x00, 0xE0, 0x4C, 0x0A};
 		/* EID[1] + EID_LEN[1] + RC_OUI[4] + MAC[6] + PairingID[2] + ChannelNum[2] */
 
-		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, _VENDOR_SPECIFIC_IE_, (int *)&ielen,
+		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, WLAN_EID_VENDOR_SPECIFIC, (int *)&ielen,
 			len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
 
 		if (!p || ielen != 14)
@@ -1445,7 +1445,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	if (pmlmepriv->qospriv.qos_option) {
 		p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
 		for (;;) {
-			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
+			p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 			if (p) {
 				if (!memcmp(p+2, WMM_IE, 6)) {
 
@@ -1692,7 +1692,7 @@ unsigned int OnAssocRsp(struct adapter *padapter, union recv_frame *precv_frame)
 		pIE = (struct ndis_80211_var_ie *)(pframe + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if (!memcmp(pIE->data, WMM_PARA_OUI, 6))	/* WMM */
 				WMM_param_handler(padapter, pIE);
 			break;
@@ -2796,7 +2796,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 		memcpy(&RC_INFO[10], (u8 *)&psta->pid, 2);
 		memcpy(&RC_INFO[12], (u8 *)&cu_ch, 2);
 
-		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, sizeof(RC_INFO), RC_INFO, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, sizeof(RC_INFO), RC_INFO, &pattrib->pktlen);
 	}
 }
 #endif /* CONFIG_AUTO_AP_MODE */
@@ -3188,7 +3188,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 		unsigned char WMM_PARA_IE[] = {0x00, 0x50, 0xf2, 0x02, 0x01, 0x01};
 
 		for (pbuf = ie + _BEACON_IE_OFFSET_; ; pbuf += (ie_len + 2)) {
-			pbuf = rtw_get_ie(pbuf, _VENDOR_SPECIFIC_IE_, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2)));
+			pbuf = rtw_get_ie(pbuf, WLAN_EID_VENDOR_SPECIFIC, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2)));
 			if (pbuf && !memcmp(pbuf+2, WMM_PARA_IE, 6)) {
 				memcpy(pframe, pbuf, ie_len+2);
 				pframe += (ie_len+2);
@@ -3205,7 +3205,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 	}
 
 	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_REALTEK) {
-		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, 6, REALTEK_96B_IE, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, 6, REALTEK_96B_IE, &(pattrib->pktlen));
 	}
 
 	/* add WPS IE ie for wps 2.0 */
@@ -3350,7 +3350,7 @@ void issue_assocreq(struct adapter *padapter)
 		pIE = (struct ndis_80211_var_ie *)(pmlmeinfo->network.IEs + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if ((!memcmp(pIE->data, RTW_WPA_OUI, 4)) ||
 					(!memcmp(pIE->data, WMM_OUI, 4)) ||
 					(!memcmp(pIE->data, WPS_OUI, 4))) {
@@ -3365,7 +3365,7 @@ void issue_assocreq(struct adapter *padapter)
 					vs_ie_length = 14;
 				}
 
-				pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, vs_ie_length, pIE->data, &(pattrib->pktlen));
+				pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, vs_ie_length, pIE->data, &(pattrib->pktlen));
 			}
 			break;
 
@@ -3393,7 +3393,7 @@ void issue_assocreq(struct adapter *padapter)
 	}
 
 	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_REALTEK)
-		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, 6, REALTEK_96B_IE, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, 6, REALTEK_96B_IE, &(pattrib->pktlen));
 
 
 	pattrib->last_txcmdsz = pattrib->pktlen;
@@ -6173,7 +6173,7 @@ u8 join_cmd_hdl(struct adapter *padapter, u8 *pbuf)
 		pIE = (struct ndis_80211_var_ie *)(pnetwork->IEs + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:/* Get WMM IE. */
+		case WLAN_EID_VENDOR_SPECIFIC:/* Get WMM IE. */
 			if (!memcmp(pIE->data, WMM_OUI, 4))
 				WMM_param_handler(padapter, pIE);
 			break;
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 9659e0db5484..92c4ef01b070 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1466,7 +1466,7 @@ void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, stru
 		pIE = (struct ndis_80211_var_ie *)(pframe + (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN) + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			/* to update WMM parameter set while receiving beacon */
 			if (!memcmp(pIE->data, WMM_PARA_OUI, 6) && pIE->Length == WLAN_WMM_LEN)	/* WMM */
 				if (WMM_param_handler(padapter, pIE))
@@ -1505,7 +1505,7 @@ unsigned int is_ap_in_tkip(struct adapter *padapter)
 			pIE = (struct ndis_80211_var_ie *)(pmlmeinfo->network.IEs + i);
 
 			switch (pIE->ElementID) {
-			case _VENDOR_SPECIFIC_IE_:
+			case WLAN_EID_VENDOR_SPECIFIC:
 				if ((!memcmp(pIE->data, RTW_WPA_OUI, 4)) && (!memcmp((pIE->data + 12), WPA_TKIP_CIPHER, 4)))
 					return true;
 
@@ -1581,7 +1581,7 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 		pIE = (struct ndis_80211_var_ie *)(pframe + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if ((!memcmp(pIE->data, ARTHEROS_OUI1, 3)) || (!memcmp(pIE->data, ARTHEROS_OUI2, 3))) {
 				DBG_871X("link to Artheros AP\n");
 				return HT_IOT_PEER_ATHEROS;
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 7cf32aa7cd88..880d3f0a32fa 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -352,7 +352,6 @@ struct ieee80211_snap_hdr {
 #define WLAN_EID_20_40_BSS_COEXISTENCE 72
 #define WLAN_EID_20_40_BSS_INTOLERANT 73
 #define WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS 74
-#define WLAN_EID_GENERIC (WLAN_EID_VENDOR_SPECIFIC)
 #define WLAN_EID_VHT_OP_MODE_NOTIFY 199
 
 #define IEEE80211_MGMT_HDR_LEN 24
diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index f4a3739651da..67ba62b54b10 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -21,7 +21,6 @@
 
 const char *security_type_str(u8 value);
 
-#define _WPA_IE_ID_	0xdd
 #define _WPA2_IE_ID_	0x30
 
 #define SHA256_MAC_LEN 32
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 47a828de5227..f7d8d0ec827c 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -397,7 +397,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define _SUPPORTED_CH_IE_		36
 #define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
 #define _RSN_IE_2_				48
-#define _SSN_IE_1_					221
 #define _ERPINFO_IE_			42
 #define _EXT_SUPPORTEDRATES_IE_	50
 
@@ -414,7 +413,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define _CH_SWITCH_TIMING_		104
 #define _PTI_BUFFER_STATUS_		106
 #define _EXT_CAP_IE_				127
-#define _VENDOR_SPECIFIC_IE_		221
 
 #define	_RESERVED47_				47
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index fe89fb3d4ddb..bf1417236161 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2702,8 +2702,8 @@ static int rtw_add_beacon(struct adapter *adapter, const u8 *head, size_t head_l
 		DBG_8192C("add bcn, wps_ielen =%d\n", wps_ielen);
 
 	/* pbss_network->IEs will not include p2p_ie, wfd ie */
-	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, _VENDOR_SPECIFIC_IE_, P2P_OUI, 4);
-	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, _VENDOR_SPECIFIC_IE_, WFD_OUI, 4);
+	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, WLAN_EID_VENDOR_SPECIFIC, P2P_OUI, 4);
+	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, WLAN_EID_VENDOR_SPECIFIC, WFD_OUI, 4);
 
 	if (rtw_check_beacon_data(adapter, pbuf,  len) == _SUCCESS) {
 		ret = 0;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e81a953d9c9a..41389e266f54 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -717,7 +717,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 			while (cnt < ielen) {
 				eid = buf[cnt];
 
-				if ((eid == _VENDOR_SPECIFIC_IE_) && (!memcmp(&buf[cnt+2], wps_oui, 4))) {
+				if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&buf[cnt+2], wps_oui, 4))) {
 					DBG_871X("SET WPS_IE\n");
 
 					padapter->securitypriv.wps_ie_len = ((buf[cnt+1]+2) < MAX_WPS_IE_LEN) ? (buf[cnt+1]+2):MAX_WPS_IE_LEN;
@@ -3945,7 +3945,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 
 	psta = rtw_get_stainfo(pstapriv, param->sta_addr);
 	if (psta) {
-		if ((psta->wpa_ie[0] == WLAN_EID_RSN) || (psta->wpa_ie[0] == WLAN_EID_GENERIC)) {
+		if ((psta->wpa_ie[0] == WLAN_EID_RSN) || (psta->wpa_ie[0] == WLAN_EID_VENDOR_SPECIFIC)) {
 			int wpa_ie_len;
 			int copy_len;
 
@@ -3998,7 +3998,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 
 		memcpy(pmlmepriv->wps_beacon_ie, param->u.bcn_ie.buf, ie_len);
 
-		update_beacon(padapter, _VENDOR_SPECIFIC_IE_, wps_oui, true);
+		update_beacon(padapter, WLAN_EID_VENDOR_SPECIFIC, wps_oui, true);
 
 		pmlmeext->bstart_bss = true;
 	}
@@ -4361,7 +4361,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 		int probereq_wpsie_len = len;
 		u8 wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 
-		if ((_VENDOR_SPECIFIC_IE_ == probereq_wpsie[0]) &&
+		if ((WLAN_EID_VENDOR_SPECIFIC == probereq_wpsie[0]) &&
 			(!memcmp(&probereq_wpsie[2], wps_oui, 4))) {
 			cp_sz = probereq_wpsie_len > MAX_WPS_IE_LEN ? MAX_WPS_IE_LEN : probereq_wpsie_len;
 
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index f121dbfaa029..fb2df871c0cb 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -147,7 +147,7 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	RT_TRACE(_module_mlme_osdep_c_, _drv_info_, ("+rtw_report_sec_ie, authmode =%d\n", authmode));
 
 	buff = NULL;
-	if (authmode == _WPA_IE_ID_) {
+	if (authmode == WLAN_EID_VENDOR_SPECIFIC) {
 		RT_TRACE(_module_mlme_osdep_c_, _drv_info_, ("rtw_report_sec_ie, authmode =%d\n", authmode));
 
 		buff = rtw_zmalloc(IW_CUSTOM_MAX);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
