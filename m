Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CA22D21AE
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:07:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A8AA87CCD;
	Tue,  8 Dec 2020 04:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xuJTe0MZc6aj; Tue,  8 Dec 2020 04:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0FA65879FB;
	Tue,  8 Dec 2020 04:07:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7C441BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A2F3587994
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C6O2Wv3kVuf7 for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5AB1C8768C
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:42 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id c18so6996633iln.10
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ugAwhz6W8+KF2bxtnuIZAtS6zbuaPVOvGIK6GBD/fKM=;
 b=DrlhSvApor9uM97cD6iRnv3+xaHVZ95Pmo9QWksj0HF4CYVr0uHIo2mKbSc62lp4px
 R92NFlpQ8q1Kp8mt1/1+Ew5dIY1LvJS81jLqTUyz+VgcUlsPjM3Hpn/L8oLTrSMX/dgX
 cn3AAcmzdaCqYiXhMWi41iOtw1Yv2WC+3dbTQJh2Nxk/VusVXbaW1nEokN8Kqh/9c/AK
 IXq/EpY2Zf+3m/wGTa2fxufLU1Z493jvbms7OdS2RE+P+nt4UASHlCer4urmYXfd5BYi
 xA9OJJauabe82dLr/wmEHCEi5227aBqmbROeBss0qz87+SHkW+H5QePqgECmZwRvflzw
 3V8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ugAwhz6W8+KF2bxtnuIZAtS6zbuaPVOvGIK6GBD/fKM=;
 b=qr8cbjNPlQOQ1UYbTCOcx/gi+I2K7aWhSQ9gFpjOZ/1+W0Fbon0CRjeHFqltc4YvtW
 knzahVn9/lA+Ji2RYnKz1bho1joCCwiYm7rBli2/iegaZowzc8DPeJnFPyhAYZBbJ9Eg
 D4GUmd9Ybn8Ey9rzNrvK60er1g9ChI93TWb03U1uvcKRcKbcmqY11wmAZ6wAL02B/DkR
 zWzfQ2Co7UsMp3pSSjIO2x9Xrz+U3CqgI3qg25IEMoUQnGSBEOuA3YmSDsEu0+xNcij9
 sngidS+BqQKf6pcUzBHlQjS3UayvWUaAWkK0x+iYuGo8bVe5wigLgUY3Z8Are49I4sKX
 XjyQ==
X-Gm-Message-State: AOAM532obWPMmvWubl4EZA0ipRfwm1xXS8FmioiNUf7xghD1jZILvHyY
 eGAUn1qmu/obDRx8PWbvO4M=
X-Google-Smtp-Source: ABdhPJxSRYXyi7FNxJP6qytezFuH70G3dHIfxi5GvWbmfZZle7FVj2L0wSoTcw3cJ3DHZSYQY1MgYg==
X-Received: by 2002:a92:c5a7:: with SMTP id r7mr25098915ilt.219.1607400461750; 
 Mon, 07 Dec 2020 20:07:41 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:40 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 03/21] staging: rtl8723bs: use WLAN_EID_RSN
Date: Mon,  7 Dec 2020 22:07:15 -0600
Message-Id: <20201208040733.379197-4-ross.schm.dev@gmail.com>
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

Replace unique _WPA2_IE_ID_, EID_WPA2, and _RSN_IE_2_ with kernel provided
WLAN_EID_RSN from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c          | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c   | 6 +++---
 drivers/staging/rtl8723bs/core/rtw_mlme.c        | 8 ++++----
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c   | 2 +-
 drivers/staging/rtl8723bs/include/rtw_security.h | 2 --
 drivers/staging/rtl8723bs/include/wifi.h         | 1 -
 7 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index c8953b442734..7cab9889140e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1080,7 +1080,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_RSN_IE_2_,
+		WLAN_EID_RSN,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1780,7 +1780,7 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 
 		break;
 
-	case _RSN_IE_2_:
+	case WLAN_EID_RSN:
 
 		update_bcn_rsn_ie(padapter);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 86a5114d1241..4ab34d71b09b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -424,7 +424,7 @@ unsigned char *rtw_get_wpa_ie(unsigned char *pie, int *wpa_ie_len, int limit)
 
 unsigned char *rtw_get_wpa2_ie(unsigned char *pie, int *rsn_ie_len, int limit)
 {
-	return rtw_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
+	return rtw_get_ie(pie, WLAN_EID_RSN, rsn_ie_len, limit);
 }
 
 int rtw_get_wpa_cipher_suite(u8 *s)
@@ -544,7 +544,7 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 		return _FAIL;
 	}
 
-	if ((*rsn_ie != _WPA2_IE_ID_) || (*(rsn_ie+1) != (u8)(rsn_ie_len - 2))) {
+	if ((*rsn_ie != WLAN_EID_RSN) || (*(rsn_ie+1) != (u8)(rsn_ie_len - 2))) {
 		return _FAIL;
 	}
 
@@ -683,7 +683,7 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 				*wpa_len = in_ie[cnt+1]+2;
 				cnt += in_ie[cnt+1]+2;  /* get next */
 		} else {
-			if (authmode == _WPA2_IE_ID_) {
+			if (authmode == WLAN_EID_RSN) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n get_rsn_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
 
 				if (rsn_ie) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 50129a3e67e0..1d4e565a314b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -736,7 +736,7 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 	    bselected = false;
 
 		if (psecuritypriv->ndisauthtype == Ndis802_11AuthModeWPA2PSK) {
-			p = rtw_get_ie(pnetwork->network.IEs + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pnetwork->network.IELength - _BEACON_IE_OFFSET_));
+			p = rtw_get_ie(pnetwork->network.IEs + _BEACON_IE_OFFSET_, WLAN_EID_RSN, &ie_len, (pnetwork->network.IELength - _BEACON_IE_OFFSET_));
 			if (p && ie_len > 0)
 				bselected = true;
 			else
@@ -2361,13 +2361,13 @@ sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in
 	if ((ndisauthmode == Ndis802_11AuthModeWPA) || (ndisauthmode == Ndis802_11AuthModeWPAPSK))
 			authmode = WLAN_EID_VENDOR_SPECIFIC;
 	if ((ndisauthmode == Ndis802_11AuthModeWPA2) || (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
-			authmode = _WPA2_IE_ID_;
+			authmode = WLAN_EID_RSN;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
 		memcpy(out_ie+ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
 
 		ielength += psecuritypriv->wps_ie_len;
-	} else if ((authmode == WLAN_EID_VENDOR_SPECIFIC) || (authmode == _WPA2_IE_ID_)) {
+	} else if ((authmode == WLAN_EID_VENDOR_SPECIFIC) || (authmode == WLAN_EID_RSN)) {
 		/* copy RSN or SSN */
 		memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1]+2);
 		/* debug for CONFIG_IEEE80211W
@@ -2386,7 +2386,7 @@ sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in
 	if (iEntry < 0) {
 		return ielength;
 	} else {
-		if (authmode == _WPA2_IE_ID_)
+		if (authmode == WLAN_EID_RSN)
 			ielength = rtw_append_pmkid(adapter, iEntry, out_ie, ielength);
 	}
 	return ielength;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 11e176f29b4b..1fa0be4dbfd5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3369,8 +3369,8 @@ void issue_assocreq(struct adapter *padapter)
 			}
 			break;
 
-		case EID_WPA2:
-			pframe = rtw_set_ie(pframe, EID_WPA2, pIE->Length, pIE->data, &(pattrib->pktlen));
+		case WLAN_EID_RSN:
+			pframe = rtw_set_ie(pframe, WLAN_EID_RSN, pIE->Length, pIE->data, &(pattrib->pktlen));
 			break;
 		case WLAN_EID_HT_CAPABILITY:
 			if (padapter->mlmepriv.htpriv.ht_option) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 92c4ef01b070..c0e435ba2730 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1511,7 +1511,7 @@ unsigned int is_ap_in_tkip(struct adapter *padapter)
 
 				break;
 
-			case _RSN_IE_2_:
+			case WLAN_EID_RSN:
 				if (!memcmp((pIE->data + 8), RSN_TKIP_CIPHER, 4))
 					return true;
 				break;
diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index 67ba62b54b10..85ffd4ec4ce5 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -21,8 +21,6 @@
 
 const char *security_type_str(u8 value);
 
-#define _WPA2_IE_ID_	0x30
-
 #define SHA256_MAC_LEN 32
 #define AES_BLOCK_SIZE 16
 #define AES_PRIV_SIZE (4 * 44)
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index f7d8d0ec827c..5a8c594008aa 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -396,7 +396,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define _CHLGETXT_IE_			16
 #define _SUPPORTED_CH_IE_		36
 #define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
-#define _RSN_IE_2_				48
 #define _ERPINFO_IE_			42
 #define _EXT_SUPPORTEDRATES_IE_	50
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
