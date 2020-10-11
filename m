Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B00428A70D
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Oct 2020 12:47:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 909ED8777E;
	Sun, 11 Oct 2020 10:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FpEEpCQMIgHs; Sun, 11 Oct 2020 10:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3239873AE;
	Sun, 11 Oct 2020 10:47:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 751231BF616
 for <devel@linuxdriverproject.org>; Sun, 11 Oct 2020 10:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 632B0872E3
 for <devel@linuxdriverproject.org>; Sun, 11 Oct 2020 10:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJAJCgzXbQbB for <devel@linuxdriverproject.org>;
 Sun, 11 Oct 2020 10:47:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 15AD4872DB
 for <devel@driverdev.osuosl.org>; Sun, 11 Oct 2020 10:47:23 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id a23so13202936ljp.5
 for <devel@driverdev.osuosl.org>; Sun, 11 Oct 2020 03:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0HcUONL/k/RDDW+xlS5QvR42tLs/HQiK9UycJ1EcZNk=;
 b=TvfkugkaIOfyxMYVA1x0fkajwdSA7xbf6t837YGunGCY6QksI0o16ZiZQl33B9S7oT
 Hf/wDFwCT7M83ji8lIFibbiHUxkRazviFFHZlZ5/M6h4RiEl3vQzv0hC5UT8vSEvymJB
 PFZEyq9EJGSpGLocLbVvBCS/YdA9aKZM7kaP+L7Z2msxD2sWXXQZT8VaH869aPYZ+0Zm
 zlXGLORf/hfDwY+y6kbsn4/fsHZoKaniTuGkQvBXBR0ySIG7Op/xUVYgXUgrWrypZFEQ
 uaRS9FJW7H/4oD3zFtU9bZw40j9aIOa7vE39UWEpEQhdpBbNVxZ3ILadLIWrvSkk8dMS
 AFEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0HcUONL/k/RDDW+xlS5QvR42tLs/HQiK9UycJ1EcZNk=;
 b=H3zIkYLZBOPXm0/UApVYjyusFzc1b/6e+ayIxJ6ce28zCjMYoiLI2/6dckQxpQNBp2
 shY3Wm/hDKYnccQ7CFcvS09EruvZ7i6fYgNHifw067DIRN0PnQ075GgcE6G4t4d0jlpS
 6ZMHF7/AgjY2mNb6hFosHxDyyJ/t1IxmPH5iP7tfxV2pcoJFwe44yTu7tN6jvZbRY+r4
 CuXcDwO5dAAgM/AaoTmr6oIfIpXDFuXYmiZ538y7iTmjiULxcic6cSSZowixtypkox6C
 iLgbtHUKpU/36lSPEMBz+CbxEgLmM/ZWzgZa25vXDg1icoSQX5qtrqgH0kyi8GrCrTjz
 nj3A==
X-Gm-Message-State: AOAM531vjdtL5jqSQj5mvNEyZ/MSvLc9MHvJjAkPyCLz/uFQq9PVLejk
 6RyDEY13OlDKrJiUq8vQUsE=
X-Google-Smtp-Source: ABdhPJwx8D+HXG6ybmbE7pi90saR0E9SEw+ohFYbVQQRoY7Y8LLwscHEqIwzdDaEzk5Nd9lLd/PCcA==
X-Received: by 2002:a2e:8515:: with SMTP id j21mr2718325lji.419.1602413240670; 
 Sun, 11 Oct 2020 03:47:20 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id u7sm2980518lju.79.2020.10.11.03.47.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Oct 2020 03:47:19 -0700 (PDT)
Received: (nullmailer pid 6087 invoked by uid 1000);
 Sun, 11 Oct 2020 10:52:22 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: r8188eu: use native wireless IE codes from
 linux/ieee80211.h
Date: Sun, 11 Oct 2020 13:50:51 +0300
Message-Id: <20201011105050.5896-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: Arpitha Raghunandan <98.arpi@gmail.com>, devel@driverdev.osuosl.org,
 Ivan Safonov <insafonov@gmail.com>, Brooke Basile <brookebasile@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Simon Fong <simon.fodin@gmail.com>, Fan Fei <ffclaire1224@gmail.com>,
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IE code definitions have been replaced with native ones
to avoid code duplication.

The unobvious substitutions are:
_SSN_IE_1_ -> WLAN_EID_VENDOR_SPECIFIC;
_WPA_IE_ID_ -> WLAN_EID_VENDOR_SPECIFIC;
_WPA2_IE_ID_ -> WLAN_EID_RSN.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c       |  54 ++++----
 drivers/staging/rtl8188eu/core/rtw_cmd.c      |   2 +-
 .../staging/rtl8188eu/core/rtw_ieee80211.c    |  36 +++---
 .../staging/rtl8188eu/core/rtw_ioctl_set.c    |   2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c     |  18 +--
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 122 +++++++++---------
 drivers/staging/rtl8188eu/core/rtw_recv.c     |   4 +-
 .../staging/rtl8188eu/core/rtw_wlan_util.c    |  24 ++--
 drivers/staging/rtl8188eu/core/rtw_xmit.c     |  10 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c  |  10 +-
 .../staging/rtl8188eu/include/rtw_security.h  |   3 -
 drivers/staging/rtl8188eu/include/wifi.h      |  34 -----
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    |  10 +-
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c |   2 +-
 14 files changed, 147 insertions(+), 184 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 2078d87055bf..fa1e34a0d456 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -67,7 +67,7 @@ static void update_BCNTIM(struct adapter *padapter)
 	uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
 
 	/* update TIM IE */
-	p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen,
+	p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, WLAN_EID_TIM, &tim_ielen,
 		       pnetwork_mlmeext->ie_length - _FIXED_IE_LENGTH_);
 	if (p && tim_ielen > 0) {
 		tim_ielen += 2;
@@ -85,7 +85,7 @@ static void update_BCNTIM(struct adapter *padapter)
 		offset += pnetwork_mlmeext->ssid.ssid_length + 2;
 
 		/*  get supported rates len */
-		p = rtw_get_ie(pie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_,
+		p = rtw_get_ie(pie + _BEACON_IE_OFFSET_, WLAN_EID_SUPP_RATES,
 			       &tmp_len, (pnetwork_mlmeext->ie_length -
 					  _BEACON_IE_OFFSET_));
 		if (p)
@@ -109,7 +109,7 @@ static void update_BCNTIM(struct adapter *padapter)
 			memcpy(pbackup_remainder_ie, premainder_ie,
 			       remainder_ielen);
 	}
-	*dst_ie++ = _TIM_IE_;
+	*dst_ie++ = WLAN_EID_TIM;
 
 	if ((pstapriv->tim_bitmap & 0xff00) && (pstapriv->tim_bitmap & 0x00fc))
 		tim_ielen = 5;
@@ -243,7 +243,7 @@ void expire_timeout_chk(struct adapter *padapter)
 					 * for this station
 					 */
 					pstapriv->tim_bitmap |= BIT(psta->aid);
-					update_beacon(padapter, _TIM_IE_, NULL,
+					update_beacon(padapter, WLAN_EID_TIM, NULL,
 						      false);
 
 					if (!pmlmeext->active_keep_alive_check)
@@ -671,7 +671,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	}
 	/* set channel, bwmode */
 	p = rtw_get_ie(pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie),
-		       _HT_ADD_INFO_IE_, &ie_len,
+			WLAN_EID_HT_OPERATION, &ie_len,
 		       pnetwork->ie_length -
 		       sizeof(struct ndis_802_11_fixed_ie));
 	if (p && ie_len) {
@@ -717,7 +717,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	memcpy(pnetwork_mlmeext, pnetwork, pnetwork->Length);
 
 	if (pmlmeext->bstart_bss) {
-		update_beacon(padapter, _TIM_IE_, NULL, false);
+		update_beacon(padapter, WLAN_EID_TIM, NULL, false);
 
 		/* issue beacon frame */
 		if (send_beacon(padapter) == _FAIL)
@@ -788,7 +788,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	cap = get_unaligned_le16(ie);
 
 	/* SSID */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_SSID, &ie_len,
 		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
@@ -799,7 +799,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* channel */
 	channel = 0;
 	pbss_network->Configuration.Length = 0;
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_DS_PARAMS, &ie_len,
 		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
 	if (p && ie_len > 0)
 		channel = *(p + 2);
@@ -808,7 +808,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
 	/*  get supported rates */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_SUPP_RATES, &ie_len,
 		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p) {
 		memcpy(supportRate, p + 2, ie_len);
@@ -816,7 +816,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	}
 
 	/* get ext_supported rates */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_EXT_SUPP_RATES,
 		       &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p) {
 		memcpy(supportRate + supportRateNum, p + 2, ie_len);
@@ -828,7 +828,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
 
 	/* parsing ERP_IE */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_ERP_INFO, &ie_len,
 		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0)
 		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
@@ -846,7 +846,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	pairwise_cipher = 0;
 	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
 	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_RSN, &ie_len,
 		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
@@ -866,7 +866,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psecuritypriv->wpa_group_cipher = _NO_PRIVACY_;
 	psecuritypriv->wpa_pairwise_cipher = _NO_PRIVACY_;
 	for (p = ie + _BEACON_IE_OFFSET_;; p += (ie_len + 2)) {
-		p = rtw_get_ie(p, _SSN_IE_1_, &ie_len,
+		p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len,
 			       pbss_network->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2));
 		if ((p) && (!memcmp(p + 2, OUI1, 4))) {
 			if (rtw_parse_wpa_ie(p, ie_len + 2, &group_cipher,
@@ -891,7 +891,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	pmlmepriv->qospriv.qos_option = 0;
 	if (pregistrypriv->wmm_enable) {
 		for (p = ie + _BEACON_IE_OFFSET_;; p += (ie_len + 2)) {
-			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len,
+			p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len,
 				       pbss_network->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2));
 			if ((p) && !memcmp(p + 2, WMM_PARA_IE, 6)) {
 				pmlmepriv->qospriv.qos_option = 1;
@@ -914,7 +914,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		}
 	}
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_CAPABILITY_IE_, &ie_len,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_HT_CAPABILITY, &ie_len,
 		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		struct ieee80211_ht_cap *pht_cap = (struct ieee80211_ht_cap *)(p + 2);
@@ -938,7 +938,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	}
 
 	/* parsing HT_INFO_IE */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_ADD_INFO_IE_, &ie_len,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_HT_OPERATION, &ie_len,
 		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0)
 		pHT_info_ie = p;
@@ -1128,7 +1128,7 @@ static void update_bcn_erpinfo_ie(struct adapter *padapter)
 		return;
 
 	/* parsing ERP_IE */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &len,
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_ERP_INFO, &len,
 		       (pnetwork->ie_length - _BEACON_IE_OFFSET_));
 	if (p && len > 0) {
 		struct ndis_802_11_var_ie *pIE = (struct ndis_802_11_var_ie *)p;
@@ -1227,13 +1227,13 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 	spin_lock_bh(&pmlmepriv->bcn_update_lock);
 
 	switch (ie_id) {
-	case _TIM_IE_:
+	case WLAN_EID_TIM:
 		update_BCNTIM(padapter);
 		break;
-	case _ERPINFO_IE_:
+	case WLAN_EID_ERP_INFO:
 		update_bcn_erpinfo_ie(padapter);
 		break;
-	case _VENDOR_SPECIFIC_IE_:
+	case WLAN_EID_VENDOR_SPECIFIC:
 		update_bcn_vendor_spec_ie(padapter, oui);
 		break;
 	default:
@@ -1394,7 +1394,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 
 			if (pmlmepriv->num_sta_non_erp == 1) {
 				beacon_updated = true;
-				update_beacon(padapter, _ERPINFO_IE_, NULL, true);
+				update_beacon(padapter, WLAN_EID_ERP_INFO, NULL, true);
 			}
 		}
 	} else {
@@ -1405,7 +1405,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 
 			if (pmlmepriv->num_sta_non_erp == 0) {
 				beacon_updated = true;
-				update_beacon(padapter, _ERPINFO_IE_, NULL, true);
+				update_beacon(padapter, WLAN_EID_ERP_INFO, NULL, true);
 			}
 		}
 	}
@@ -1479,8 +1479,8 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (rtw_ht_operation_update(padapter) > 0) {
-		update_beacon(padapter, _HT_CAPABILITY_IE_, NULL, false);
-		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
+		update_beacon(padapter, WLAN_EID_HT_CAPABILITY, NULL, false);
+		update_beacon(padapter, WLAN_EID_HT_OPERATION, NULL, true);
 	}
 
 	/* update associated stations cap. */
@@ -1513,7 +1513,7 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 		pmlmepriv->num_sta_non_erp--;
 		if (pmlmepriv->num_sta_non_erp == 0) {
 			beacon_updated = true;
-			update_beacon(padapter, _ERPINFO_IE_, NULL, true);
+			update_beacon(padapter, WLAN_EID_ERP_INFO, NULL, true);
 		}
 	}
 
@@ -1543,8 +1543,8 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (rtw_ht_operation_update(padapter) > 0) {
-		update_beacon(padapter, _HT_CAPABILITY_IE_, NULL, false);
-		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
+		update_beacon(padapter, WLAN_EID_HT_CAPABILITY, NULL, false);
+		update_beacon(padapter, WLAN_EID_HT_OPERATION, NULL, true);
 	}
 
 	/* update associated stations cap. */
diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index a2b88ba242d5..1724dfd7edbc 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -1057,7 +1057,7 @@ static void rtw_chk_hi_queue_hdl(struct adapter *padapter)
 			pstapriv->tim_bitmap &= ~BIT(0);
 			pstapriv->sta_dz_bitmap &= ~BIT(0);
 
-			update_beacon(padapter, _TIM_IE_, NULL, false);
+			update_beacon(padapter, WLAN_EID_TIM, NULL, false);
 		} else { /* re check again */
 			rtw_chk_hi_queue_cmd(padapter);
 		}
diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index b80273611fb8..ec5b8be14c2b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -235,7 +235,7 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	ie += 2;
 
 	/* SSID */
-	ie = rtw_set_ie(ie, _SSID_IE_, pdev_network->ssid.ssid_length, pdev_network->ssid.ssid, &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_SSID, pdev_network->ssid.ssid_length, pdev_network->ssid.ssid, &sz);
 
 	/* supported rates */
 	if (pregistrypriv->wireless_mode == WIRELESS_11ABGN)
@@ -248,21 +248,21 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	rateLen = rtw_get_rateset_len(pdev_network->SupportedRates);
 
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, 8, pdev_network->SupportedRates, &sz);
-		/* ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz); */
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, 8, pdev_network->SupportedRates, &sz);
+		/* ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz); */
 	} else {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, rateLen, pdev_network->SupportedRates, &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, rateLen, pdev_network->SupportedRates, &sz);
 	}
 
 	/* DS parameter set */
-	ie = rtw_set_ie(ie, _DSSET_IE_, 1, (u8 *)&pdev_network->Configuration.DSConfig, &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_DS_PARAMS, 1, (u8 *)&pdev_network->Configuration.DSConfig, &sz);
 
 	/* IBSS Parameter Set */
 
-	ie = rtw_set_ie(ie, _IBSS_PARA_IE_, 2, (u8 *)&pdev_network->Configuration.ATIMWindow, &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_IBSS_PARAMS, 2, (u8 *)&pdev_network->Configuration.ATIMWindow, &sz);
 
 	if (rateLen > 8)
-		ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
 
 	return sz;
 }
@@ -277,7 +277,7 @@ unsigned char *rtw_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
 	int limit_new = limit;
 
 	while (1) {
-		pbuf = rtw_get_ie(pbuf, _WPA_IE_ID_, &len, limit_new);
+		pbuf = rtw_get_ie(pbuf, WLAN_EID_VENDOR_SPECIFIC, &len, limit_new);
 
 		if (pbuf) {
 			/* check if oui matches... */
@@ -308,7 +308,7 @@ unsigned char *rtw_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
 
 unsigned char *rtw_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len, int limit)
 {
-	return rtw_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
+	return rtw_get_ie(pie, WLAN_EID_RSN, rsn_ie_len, limit);
 }
 
 int rtw_get_wpa_cipher_suite(u8 *s)
@@ -355,7 +355,7 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 		return _FAIL;
 	}
 
-	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2)) ||
+	if ((*wpa_ie != WLAN_EID_VENDOR_SPECIFIC) || (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2)) ||
 	    (memcmp(wpa_ie + 2, RTW_WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
 		return _FAIL;
 
@@ -422,7 +422,7 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 		return _FAIL;
 	}
 
-	if ((*rsn_ie != _WPA2_IE_ID_) || (*(rsn_ie + 1) != (u8)(rsn_ie_len - 2)))
+	if ((*rsn_ie != WLAN_EID_RSN) || (*(rsn_ie + 1) != (u8)(rsn_ie_len - 2)))
 		return _FAIL;
 
 	pos = rsn_ie;
@@ -493,7 +493,7 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 
-		if ((authmode == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) {
+		if ((authmode == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) {
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
 				 ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n",
 				 sec_idx, in_ie[cnt + 1] + 2));
@@ -512,7 +512,7 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 			*wpa_len = in_ie[cnt + 1] + 2;
 			cnt += in_ie[cnt + 1] + 2;  /* get next */
 		} else {
-			if (authmode == _WPA2_IE_ID_) {
+			if (authmode == WLAN_EID_RSN) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
 					 ("\n get_rsn_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n",
 					 sec_idx, in_ie[cnt + 1] + 2));
@@ -547,7 +547,7 @@ u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
 
 	eid = ie_ptr[0];
 
-	if ((eid == _WPA_IE_ID_) && (!memcmp(&ie_ptr[2], wps_oui, 4))) {
+	if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&ie_ptr[2], wps_oui, 4))) {
 		*wps_ielen = ie_ptr[1] + 2;
 		match = true;
 	}
@@ -580,7 +580,7 @@ u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen)
 	while (cnt < in_len) {
 		eid = in_ie[cnt];
 
-		if ((eid == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt + 2], wps_oui, 4))) {
+		if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&in_ie[cnt + 2], wps_oui, 4))) {
 			wpsie_ptr = &in_ie[cnt];
 
 			if (wps_ie)
@@ -617,7 +617,7 @@ u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_att
 	if (len_attr)
 		*len_attr = 0;
 
-	if ((wps_ie[0] != _VENDOR_SPECIFIC_IE_) ||
+	if ((wps_ie[0] != WLAN_EID_VENDOR_SPECIFIC) ||
 	    (memcmp(wps_ie + 2, wps_oui, 4)))
 		return attr_ptr;
 
@@ -995,7 +995,7 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 
 	/* get bwmode and ch_offset */
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pnetwork->network.ie_length - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, pnetwork->network.ie_length - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 		struct ieee80211_ht_cap *ht_cap =
 			(struct ieee80211_ht_cap *)(p + 2);
@@ -1005,7 +1005,7 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 		pnetwork->BcnInfo.ht_cap_info = 0;
 	}
 	/* parsing HT_INFO_IE */
-	p = rtw_get_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, pnetwork->network.ie_length - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, WLAN_EID_HT_OPERATION, &len, pnetwork->network.ie_length - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 		pht_info = (struct HT_info_element *)(p + 2);
 		pnetwork->BcnInfo.ht_info_infos_0 = pht_info->infos[0];
diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 26e5193cfd6c..1ef32ff900a9 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -549,7 +549,7 @@ u16 rtw_get_cur_max_rate(struct adapter *adapter)
 		return 0;
 
 	if (pmlmeext->cur_wireless_mode & (WIRELESS_11_24N | WIRELESS_11_5N)) {
-		p = rtw_get_ie(&pcur_bss->ies[12], _HT_CAPABILITY_IE_,
+		p = rtw_get_ie(&pcur_bss->ies[12], WLAN_EID_HT_CAPABILITY,
 			       &ht_ielen, pcur_bss->ie_length - 12);
 		if (p && ht_ielen > 0) {
 			/* cur_bwmod is updated by beacon, pmlmeinfo is updated by association response */
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9d12f92994b3..f87dd71934c3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1728,10 +1728,10 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 	ielength = 12;
 	if ((ndisauthmode == Ndis802_11AuthModeWPA) ||
 	    (ndisauthmode == Ndis802_11AuthModeWPAPSK))
-		authmode = _WPA_IE_ID_;
+		authmode = WLAN_EID_VENDOR_SPECIFIC;
 	else if ((ndisauthmode == Ndis802_11AuthModeWPA2) ||
 		 (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
-		authmode = _WPA2_IE_ID_;
+		authmode = WLAN_EID_RSN;
 	else
 		authmode = 0x0;
 
@@ -1739,7 +1739,7 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 		memcpy(out_ie + ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
 
 		ielength += psecuritypriv->wps_ie_len;
-	} else if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {
+	} else if ((authmode == WLAN_EID_VENDOR_SPECIFIC) || (authmode == WLAN_EID_RSN)) {
 		/* copy RSN or SSN */
 		memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1] + 2);
 		ielength += psecuritypriv->supplicant_ie[1] + 2;
@@ -1747,7 +1747,7 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 	}
 
 	iEntry = SecIsInPMKIDList(adapter, pmlmepriv->assoc_bssid);
-	if (iEntry >= 0 && authmode == _WPA2_IE_ID_)
+	if (iEntry >= 0 && authmode == WLAN_EID_RSN)
 		ielength = rtw_append_pmkid(adapter, iEntry, out_ie, ielength);
 
 	return ielength;
@@ -1867,14 +1867,14 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 	phtpriv->ht_option = false;
 
-	p = rtw_get_ie(in_ie + 12, _HT_CAPABILITY_IE_, &ielen, in_len - 12);
+	p = rtw_get_ie(in_ie + 12, WLAN_EID_HT_CAPABILITY, &ielen, in_len - 12);
 
 	if (p && ielen > 0) {
 		struct ieee80211_ht_cap ht_cap;
 
 		if (pqospriv->qos_option == 0) {
 			out_len = *pout_len;
-			rtw_set_ie(out_ie + out_len, _VENDOR_SPECIFIC_IE_,
+			rtw_set_ie(out_ie + out_len, WLAN_EID_VENDOR_SPECIFIC,
 				   _WMM_IE_Length_, WMM_IE, pout_len);
 
 			pqospriv->qos_option = 1;
@@ -1906,16 +1906,16 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		else
 			ht_cap.ampdu_params_info |= IEEE80211_HT_AMPDU_PARM_DENSITY & 0x00;
 
-		rtw_set_ie(out_ie + out_len, _HT_CAPABILITY_IE_,
+		rtw_set_ie(out_ie + out_len, WLAN_EID_HT_CAPABILITY,
 			   sizeof(struct ieee80211_ht_cap),
 			   (unsigned char *)&ht_cap, pout_len);
 
 		phtpriv->ht_option = true;
 
-		p = rtw_get_ie(in_ie + 12, _HT_ADD_INFO_IE_, &ielen, in_len - 12);
+		p = rtw_get_ie(in_ie + 12, WLAN_EID_HT_OPERATION, &ielen, in_len - 12);
 		if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
 			out_len = *pout_len;
-			rtw_set_ie(out_ie + out_len, _HT_ADD_INFO_IE_, ielen, p + 2, pout_len);
+			rtw_set_ie(out_ie + out_len, WLAN_EID_HT_OPERATION, ielen, p + 2, pout_len);
 		}
 	}
 	return phtpriv->ht_option;
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index b3eddcb83cd0..8794907a39f4 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -396,29 +396,29 @@ static void issue_beacon(struct adapter *padapter, int timeout_ms)
 	pattrib->pktlen += 2;
 
 	/*  SSID */
-	pframe = rtw_set_ie(pframe, _SSID_IE_, cur_network->ssid.ssid_length, cur_network->ssid.ssid, &pattrib->pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SSID, cur_network->ssid.ssid_length, cur_network->ssid.ssid, &pattrib->pktlen);
 
 	/*  supported rates... */
 	rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-	pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, min_t(unsigned int, rate_len, 8), cur_network->SupportedRates, &pattrib->pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, min_t(unsigned int, rate_len, 8), cur_network->SupportedRates, &pattrib->pktlen);
 
 	/*  DS parameter set */
-	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&cur_network->Configuration.DSConfig, &pattrib->pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_DS_PARAMS, 1, (unsigned char *)&cur_network->Configuration.DSConfig, &pattrib->pktlen);
 
 	{
 		u8 erpinfo = 0;
 		u32 ATIMWindow;
 		/*  IBSS Parameter Set... */
 		ATIMWindow = 0;
-		pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
 
 		/* ERP IE */
-		pframe = rtw_set_ie(pframe, _ERPINFO_IE_, 1, &erpinfo, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_ERP_INFO, 1, &erpinfo, &pattrib->pktlen);
 	}
 
 	/*  EXTERNDED SUPPORTED RATE */
 	if (rate_len > 8)
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
 	/* todo:HT for adhoc */
 _issue_bcn:
 
@@ -556,14 +556,14 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 		/* below for ad-hoc mode */
 
 		/*  SSID */
-		pframe = rtw_set_ie(pframe, _SSID_IE_, cur_network->ssid.ssid_length, cur_network->ssid.ssid, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SSID, cur_network->ssid.ssid_length, cur_network->ssid.ssid, &pattrib->pktlen);
 
 		/*  supported rates... */
 		rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, min_t(unsigned int, rate_len, 8), cur_network->SupportedRates, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, min_t(unsigned int, rate_len, 8), cur_network->SupportedRates, &pattrib->pktlen);
 
 		/*  DS parameter set */
-		pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&cur_network->Configuration.DSConfig, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_DS_PARAMS, 1, (unsigned char *)&cur_network->Configuration.DSConfig, &pattrib->pktlen);
 
 		if ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) {
 			u8 erpinfo = 0;
@@ -571,15 +571,15 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 			/*  IBSS Parameter Set... */
 			/* ATIMWindow = cur->Configuration.ATIMWindow; */
 			ATIMWindow = 0;
-			pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
 
 			/* ERP IE */
-			pframe = rtw_set_ie(pframe, _ERPINFO_IE_, 1, &erpinfo, &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_ERP_INFO, 1, &erpinfo, &pattrib->pktlen);
 		}
 
 		/*  EXTERNDED SUPPORTED RATE */
 		if (rate_len > 8)
-			pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
 		/* todo:HT for adhoc */
 	}
 
@@ -646,17 +646,17 @@ static int issue_probereq(struct adapter *padapter,
 	pattrib->pktlen = sizeof(struct ieee80211_hdr_3addr);
 
 	if (pssid)
-		pframe = rtw_set_ie(pframe, _SSID_IE_, pssid->ssid_length, pssid->ssid, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SSID, pssid->ssid_length, pssid->ssid, &pattrib->pktlen);
 	else
-		pframe = rtw_set_ie(pframe, _SSID_IE_, 0, NULL, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SSID, 0, NULL, &pattrib->pktlen);
 
 	get_rate_set(padapter, bssrate, &bssrate_len);
 
 	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, bssrate, &pattrib->pktlen);
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, bssrate_len - 8, bssrate + 8, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, bssrate_len - 8, bssrate + 8, &pattrib->pktlen);
 	} else {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, bssrate_len, bssrate, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &pattrib->pktlen);
 	}
 
 	/* add wps_ie for wps2.0 */
@@ -806,7 +806,7 @@ static void issue_auth(struct adapter *padapter, struct sta_info *psta,
 
 		/*  added challenging text... */
 		if ((psta->auth_seq == 2) && (psta->state & WIFI_FW_AUTH_STATE) && (use_shared_key == 1))
-			pframe = rtw_set_ie(pframe, _CHLGETXT_IE_, 128, psta->chg_txt, &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_CHALLENGE, 128, psta->chg_txt, &pattrib->pktlen);
 #endif
 	} else {
 		__le32 le_tmp32;
@@ -848,7 +848,7 @@ static void issue_auth(struct adapter *padapter, struct sta_info *psta,
 
 		/*  then checking to see if sending challenging text... */
 		if ((pmlmeinfo->auth_seq == 3) && (pmlmeinfo->state & WIFI_FW_AUTH_STATE) && (use_shared_key == 1)) {
-			pframe = rtw_set_ie(pframe, _CHLGETXT_IE_, 128, pmlmeinfo->chg_txt, &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_CHALLENGE, 128, pmlmeinfo->chg_txt, &pattrib->pktlen);
 
 			SetPrivacy(fctrl);
 
@@ -934,17 +934,17 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 	pframe = rtw_set_fixed_ie(pframe, _ASOC_ID_, &leval, &pattrib->pktlen);
 
 	if (pstat->bssratelen <= 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, pstat->bssratelen, pstat->bssrateset, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, pstat->bssratelen, pstat->bssrateset, &pattrib->pktlen);
 	} else {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, pstat->bssrateset, &pattrib->pktlen);
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, pstat->bssratelen - 8, pstat->bssrateset + 8, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, pstat->bssrateset, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, pstat->bssratelen - 8, pstat->bssrateset + 8, &pattrib->pktlen);
 	}
 
 	if ((pstat->flags & WLAN_STA_HT) && (pmlmepriv->htpriv.ht_option)) {
 		uint ie_len = 0;
 
 		/* FILL HT CAP INFO IE */
-		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_CAPABILITY_IE_, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_));
+		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_HT_CAPABILITY, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_));
 		if (pbuf && ie_len > 0) {
 			memcpy(pframe, pbuf, ie_len + 2);
 			pframe += (ie_len + 2);
@@ -952,7 +952,7 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 		}
 
 		/* FILL HT ADD INFO IE */
-		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_ADD_INFO_IE_, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_));
+		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_HT_OPERATION, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_));
 		if (pbuf && ie_len > 0) {
 			memcpy(pframe, pbuf, ie_len + 2);
 			pframe += (ie_len + 2);
@@ -966,7 +966,7 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 		unsigned char WMM_PARA_IE[] = {0x00, 0x50, 0xf2, 0x02, 0x01, 0x01};
 
 		for (pbuf = ie + _BEACON_IE_OFFSET_;; pbuf += (ie_len + 2)) {
-			pbuf = rtw_get_ie(pbuf, _VENDOR_SPECIFIC_IE_, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2)));
+			pbuf = rtw_get_ie(pbuf, WLAN_EID_VENDOR_SPECIFIC, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2)));
 			if (pbuf && !memcmp(pbuf + 2, WMM_PARA_IE, 6)) {
 				memcpy(pframe, pbuf, ie_len + 2);
 				pframe += (ie_len + 2);
@@ -980,7 +980,7 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 	}
 
 	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_REALTEK)
-		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, 6, REALTEK_96B_IE, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, 6, REALTEK_96B_IE, &pattrib->pktlen);
 
 	/* add WPS IE ie for wps 2.0 */
 	if (pmlmepriv->wps_assoc_resp_ie && pmlmepriv->wps_assoc_resp_ie_len > 0) {
@@ -1053,7 +1053,7 @@ static void issue_assocreq(struct adapter *padapter)
 	pattrib->pktlen += 2;
 
 	/* SSID */
-	pframe = rtw_set_ie(pframe, _SSID_IE_,  pmlmeinfo->network.ssid.ssid_length, pmlmeinfo->network.ssid.ssid, &pattrib->pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SSID,  pmlmeinfo->network.ssid.ssid_length, pmlmeinfo->network.ssid.ssid, &pattrib->pktlen);
 
 	/* supported rate & extended supported rate */
 
@@ -1100,20 +1100,20 @@ static void issue_assocreq(struct adapter *padapter)
 	}
 
 	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, bssrate, &pattrib->pktlen);
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, bssrate_len - 8, bssrate + 8, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, bssrate_len - 8, bssrate + 8, &pattrib->pktlen);
 	} else {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, bssrate_len, bssrate, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &pattrib->pktlen);
 	}
 
 	/* RSN */
-	p = rtw_get_ie((pmlmeinfo->network.ies + sizeof(struct ndis_802_11_fixed_ie)), _RSN_IE_2_, &ie_len, (pmlmeinfo->network.ie_length - sizeof(struct ndis_802_11_fixed_ie)));
+	p = rtw_get_ie((pmlmeinfo->network.ies + sizeof(struct ndis_802_11_fixed_ie)), WLAN_EID_RSN, &ie_len, (pmlmeinfo->network.ie_length - sizeof(struct ndis_802_11_fixed_ie)));
 	if (p)
-		pframe = rtw_set_ie(pframe, _RSN_IE_2_, ie_len, p + 2, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_RSN, ie_len, p + 2, &pattrib->pktlen);
 
 	/* HT caps */
 	if (padapter->mlmepriv.htpriv.ht_option) {
-		p = rtw_get_ie((pmlmeinfo->network.ies + sizeof(struct ndis_802_11_fixed_ie)), _HT_CAPABILITY_IE_, &ie_len, (pmlmeinfo->network.ie_length - sizeof(struct ndis_802_11_fixed_ie)));
+		p = rtw_get_ie((pmlmeinfo->network.ies + sizeof(struct ndis_802_11_fixed_ie)), WLAN_EID_HT_CAPABILITY, &ie_len, (pmlmeinfo->network.ie_length - sizeof(struct ndis_802_11_fixed_ie)));
 		if (p && !is_ap_in_tkip(padapter)) {
 			memcpy(&pmlmeinfo->HT_caps, p + 2, sizeof(struct ieee80211_ht_cap));
 
@@ -1129,7 +1129,7 @@ static void issue_assocreq(struct adapter *padapter)
 			if (pregpriv->rx_stbc)
 				pmlmeinfo->HT_caps.cap_info |= cpu_to_le16(0x0100);/* RX STBC One spatial stream */
 			memcpy((u8 *)&pmlmeinfo->HT_caps.mcs, MCS_rate_1R, 16);
-			pframe = rtw_set_ie(pframe, _HT_CAPABILITY_IE_, ie_len, (u8 *)(&pmlmeinfo->HT_caps), &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_HT_CAPABILITY, ie_len, (u8 *)(&pmlmeinfo->HT_caps), &pattrib->pktlen);
 		}
 	}
 
@@ -1138,7 +1138,7 @@ static void issue_assocreq(struct adapter *padapter)
 		pIE = (struct ndis_802_11_var_ie *)(pmlmeinfo->network.ies + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if ((!memcmp(pIE->data, RTW_WPA_OUI, 4)) ||
 			    (!memcmp(pIE->data, WMM_OUI, 4)) ||
 			    (!memcmp(pIE->data, WPS_OUI, 4))) {
@@ -1149,7 +1149,7 @@ static void issue_assocreq(struct adapter *padapter)
 					if (!memcmp(pIE->data, WPS_OUI, 4))
 						pIE->Length = 14;
 				}
-				pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, pIE->Length, pIE->data, &pattrib->pktlen);
+				pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, pIE->Length, pIE->data, &pattrib->pktlen);
 			}
 			break;
 		default:
@@ -1158,7 +1158,7 @@ static void issue_assocreq(struct adapter *padapter)
 	}
 
 	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_REALTEK)
-		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, 6, REALTEK_96B_IE, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, 6, REALTEK_96B_IE, &pattrib->pktlen);
 
 	pattrib->last_txcmdsz = pattrib->pktlen;
 	dump_mgntframe(padapter, pmgntframe);
@@ -1749,7 +1749,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 
 		iedata |= BIT(2);/* 20 MHz BSS Width Request */
 
-		pframe = rtw_set_ie(pframe, EID_BSSCoexistence,  1, &iedata, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_BSS_COEX_2040,  1, &iedata, &pattrib->pktlen);
 	}
 
 	/*  */
@@ -1773,7 +1773,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 
 			pbss_network = &pnetwork->network;
 
-			p = rtw_get_ie(pbss_network->ies + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pbss_network->ie_length - _FIXED_IE_LENGTH_);
+			p = rtw_get_ie(pbss_network->ies + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, pbss_network->ie_length - _FIXED_IE_LENGTH_);
 			if (!p || len == 0) { /* non-HT */
 				if (pbss_network->Configuration.DSConfig <= 0)
 					continue;
@@ -1804,7 +1804,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 					}
 				}
 
-				pframe = rtw_set_ie(pframe, EID_BSSIntolerantChlReport, k, InfoContent, &pattrib->pktlen);
+				pframe = rtw_set_ie(pframe, WLAN_EID_BSS_INTOLERANT_CHL_REPORT, k, InfoContent, &pattrib->pktlen);
 			}
 		}
 	}
@@ -2054,7 +2054,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 	rtw_hal_get_def_var(padapter, HAL_DEF_CURRENT_ANTENNA,  &bssid->PhyInfo.Optimum_antenna);
 
 	/*  checking SSID */
-	p = rtw_get_ie(bssid->ies + ie_offset, _SSID_IE_, &len, bssid->ie_length - ie_offset);
+	p = rtw_get_ie(bssid->ies + ie_offset, WLAN_EID_SSID, &len, bssid->ie_length - ie_offset);
 	if (!p) {
 		DBG_88E("marc: cannot find SSID for survey event\n");
 		return _FAIL;
@@ -2075,7 +2075,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 
 	/* checking rate info... */
 	i = 0;
-	p = rtw_get_ie(bssid->ies + ie_offset, _SUPPORTEDRATES_IE_, &len, bssid->ie_length - ie_offset);
+	p = rtw_get_ie(bssid->ies + ie_offset, WLAN_EID_SUPP_RATES, &len, bssid->ie_length - ie_offset);
 	if (p) {
 		if (len > NDIS_802_11_LENGTH_RATES_EX) {
 			DBG_88E("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
@@ -2085,7 +2085,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 		i = len;
 	}
 
-	p = rtw_get_ie(bssid->ies + ie_offset, _EXT_SUPPORTEDRATES_IE_, &len, bssid->ie_length - ie_offset);
+	p = rtw_get_ie(bssid->ies + ie_offset, WLAN_EID_EXT_SUPP_RATES, &len, bssid->ie_length - ie_offset);
 	if (p) {
 		if (len > (NDIS_802_11_LENGTH_RATES_EX - i)) {
 			DBG_88E("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
@@ -2101,7 +2101,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 		return _FAIL;
 
 	/*  Checking for DSConfig */
-	p = rtw_get_ie(bssid->ies + ie_offset, _DSSET_IE_, &len, bssid->ie_length - ie_offset);
+	p = rtw_get_ie(bssid->ies + ie_offset, WLAN_EID_DS_PARAMS, &len, bssid->ie_length - ie_offset);
 
 	bssid->Configuration.DSConfig = 0;
 	bssid->Configuration.Length = 0;
@@ -2110,7 +2110,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 		bssid->Configuration.DSConfig = *(p + 2);
 	} else {/*  In 5G, some ap do not have DSSET IE */
 		/*  checking HT info for channel */
-		p = rtw_get_ie(bssid->ies + ie_offset, _HT_ADD_INFO_IE_, &len, bssid->ie_length - ie_offset);
+		p = rtw_get_ie(bssid->ies + ie_offset, WLAN_EID_HT_OPERATION, &len, bssid->ie_length - ie_offset);
 		if (p) {
 			struct HT_info_element *HT_info = (struct HT_info_element *)(p + 2);
 
@@ -2152,7 +2152,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 	if ((pregistrypriv->wifi_spec == 1) && (!pmlmeinfo->bwmode_updated)) {
 		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-		p = rtw_get_ie(bssid->ies + ie_offset, _HT_CAPABILITY_IE_, &len, bssid->ie_length - ie_offset);
+		p = rtw_get_ie(bssid->ies + ie_offset, WLAN_EID_HT_CAPABILITY, &len, bssid->ie_length - ie_offset);
 		if (p && len > 0) {
 			struct ieee80211_ht_cap *pHT_caps =
 				(struct ieee80211_ht_cap *)(p + 2);
@@ -2370,7 +2370,7 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 		u8 noc; /*  number of channel */
 		u8 j, k;
 
-		ie = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _COUNTRY_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
+		ie = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, WLAN_EID_COUNTRY, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
 		if (!ie)
 			return;
 		if (len < 6)
@@ -2515,7 +2515,7 @@ static unsigned int OnProbeReq(struct adapter *padapter,
 	    !check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE | WIFI_AP_STATE))
 		return _SUCCESS;
 
-	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, _SSID_IE_, &ielen,
+	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, WLAN_EID_SSID, &ielen,
 		       len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
 
 	/* check (wildcard) SSID */
@@ -2752,7 +2752,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 			/* checking for challenging txt... */
 			DBG_88E("checking for challenging txt...\n");
 
-			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + 4 + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, &ie_len,
+			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + 4 + _AUTH_IE_OFFSET_, WLAN_EID_CHALLENGE, &ie_len,
 				       len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_ - 4);
 
 			if (!p || ie_len <= 0) {
@@ -2846,7 +2846,7 @@ static unsigned int OnAuthClient(struct adapter *padapter,
 	if (seq == 2) {
 		if (pmlmeinfo->auth_algo == dot11AuthAlgrthm_Shared) {
 			/*  legendary shared system */
-			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, &len,
+			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _AUTH_IE_OFFSET_, WLAN_EID_CHALLENGE, &len,
 				       pkt_len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_);
 
 			if (!p)
@@ -2959,7 +2959,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 
 	/*  now we should check all the fields... */
 	/*  checking SSID */
-	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SSID_IE_, &ie_len,
+	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, WLAN_EID_SSID, &ie_len,
 		       pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 
 	if (!p || ie_len == 0) {
@@ -2979,7 +2979,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		goto OnAssocReqFail;
 
 	/*  check if the supported rate is ok */
-	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SUPPORTEDRATES_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
+	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, WLAN_EID_SUPP_RATES, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 	if (!p) {
 		DBG_88E("Rx a sta assoc-req which supported rate is empty!\n");
 		/*  use our own rate set as statoin used */
@@ -2992,7 +2992,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
 
-		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _EXT_SUPPORTEDRATES_IE_, &ie_len,
+		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, WLAN_EID_EXT_SUPP_RATES, &ie_len,
 			       pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 		if (p) {
 			if (supportRateNum <= sizeof(supportRate)) {
@@ -3139,7 +3139,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	if (pmlmepriv->qospriv.qos_option) {
 		p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
 		for (;;) {
-			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
+			p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 			if (p) {
 				if (!memcmp(p + 2, WMM_IE, 6)) {
 					pstat->flags |= WLAN_STA_WME;
@@ -3369,17 +3369,17 @@ static unsigned int OnAssocRsp(struct adapter *padapter,
 		pIE = (struct ndis_802_11_var_ie *)(pframe + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if (!memcmp(pIE->data, WMM_PARA_OUI, 6)) /* WMM */
 				WMM_param_handler(padapter, pIE);
 			break;
-		case _HT_CAPABILITY_IE_:	/* HT caps */
+		case WLAN_EID_HT_CAPABILITY:	/* HT caps */
 			HT_caps_handler(padapter, pIE);
 			break;
-		case _HT_EXTRA_INFO_IE_:	/* HT info */
+		case WLAN_EID_HT_OPERATION:	/* HT info */
 			HT_info_handler(padapter, pIE);
 			break;
-		case _ERPINFO_IE_:
+		case WLAN_EID_ERP_INFO:
 			ERP_IE_handler(padapter, pIE);
 		default:
 			break;
@@ -4964,14 +4964,14 @@ u8 join_cmd_hdl(struct adapter *padapter, u8 *pbuf)
 		pIE = (struct ndis_802_11_var_ie *)(pnetwork->ies + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:/* Get WMM IE. */
+		case WLAN_EID_VENDOR_SPECIFIC:/* Get WMM IE. */
 			if (!memcmp(pIE->data, WMM_OUI, 4))
 				pmlmeinfo->WMM_enable = 1;
 			break;
-		case _HT_CAPABILITY_IE_:	/* Get HT Cap IE. */
+		case WLAN_EID_HT_CAPABILITY:	/* Get HT Cap IE. */
 			pmlmeinfo->HT_caps_enable = 1;
 			break;
-		case _HT_EXTRA_INFO_IE_:	/* Get HT Info IE. */
+		case WLAN_EID_HT_OPERATION:	/* Get HT Info IE. */
 			pmlmeinfo->HT_info_enable = 1;
 
 			/* spec case only for cisco's ap because cisco's ap issue assoc rsp using mcs rate @40MHz or @20MHz */
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 5fe7a0458dd2..36bcbe635cf4 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -944,7 +944,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 
 					/* update BCN for TIM IE */
 					/* update_BCNTIM(padapter); */
-					update_beacon(padapter, _TIM_IE_, NULL, false);
+					update_beacon(padapter, WLAN_EID_TIM, NULL, false);
 				}
 			} else {
 				if (pstapriv->tim_bitmap & BIT(psta->aid)) {
@@ -962,7 +962,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 
 					/* update BCN for TIM IE */
 					/* update_BCNTIM(padapter); */
-					update_beacon(padapter, _TIM_IE_, NULL, false);
+					update_beacon(padapter, WLAN_EID_TIM, NULL, false);
 				}
 			}
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 26f128836a5e..7015db16dcf8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -831,7 +831,7 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 
 	/* check bw and channel offset */
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 		struct ieee80211_ht_cap *ht_cap =
 			(struct ieee80211_ht_cap *)(p + 2);
@@ -841,7 +841,7 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 		ht_cap_info = 0;
 	}
 	/* parsing HT_INFO_IE */
-	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, WLAN_EID_HT_OPERATION, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 		pht_info = (struct HT_info_element *)(p + 2);
 		ht_info_infos_0 = pht_info->infos[0];
@@ -863,11 +863,11 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 	}
 
 	/* Checking for channel */
-	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _DSSET_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, WLAN_EID_DS_PARAMS, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
 	if (p) {
 		bcn_channel = *(p + 2);
 	} else {/* In 5G, some ap do not have DSSET IE checking HT info for channel */
-		p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
+		p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, WLAN_EID_HT_OPERATION, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
 		if (pht_info) {
 			bcn_channel = pht_info->primary_channel;
 		} else { /* we don't find channel IE, so don't check it */
@@ -883,7 +883,7 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 
 	/* checking SSID */
 	ssid_len = 0;
-	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _SSID_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, WLAN_EID_SSID, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
 	if (p) {
 		ssid_len = *(p + 1);
 		if (ssid_len > NDIS_802_11_LENGTH_SSID)
@@ -994,10 +994,10 @@ void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, stru
 		pIE = (struct ndis_802_11_var_ie *)(pframe + (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN) + i);
 
 		switch (pIE->ElementID) {
-		case _HT_EXTRA_INFO_IE_:	/* HT info */
+		case WLAN_EID_HT_OPERATION:	/* HT info */
 			bwmode_update_check(padapter, pIE);
 			break;
-		case _ERPINFO_IE_:
+		case WLAN_EID_ERP_INFO:
 			ERP_IE_handler(padapter, pIE);
 			VCS_update(padapter, psta);
 			break;
@@ -1022,11 +1022,11 @@ unsigned int is_ap_in_tkip(struct adapter *padapter)
 			pIE = (struct ndis_802_11_var_ie *)(pmlmeinfo->network.ies + i);
 
 			switch (pIE->ElementID) {
-			case _VENDOR_SPECIFIC_IE_:
+			case WLAN_EID_VENDOR_SPECIFIC:
 				if ((!memcmp(pIE->data, RTW_WPA_OUI, 4)) && (!memcmp((pIE->data + 12), WPA_TKIP_CIPHER, 4)))
 					return true;
 				break;
-			case _RSN_IE_2_:
+			case WLAN_EID_RSN:
 				if (!memcmp((pIE->data + 8), RSN_TKIP_CIPHER, 4))
 					return true;
 			default:
@@ -1188,7 +1188,7 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 		pIE = (struct ndis_802_11_var_ie *)(pframe + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if ((!memcmp(pIE->data, ARTHEROS_OUI1, 3)) ||
 			    (!memcmp(pIE->data, ARTHEROS_OUI2, 3))) {
 				DBG_88E("link to Artheros AP\n");
@@ -1374,7 +1374,7 @@ int update_sta_support_rate(struct adapter *padapter, u8 *pvar_ie, uint var_ie_l
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
-	pIE = (struct ndis_802_11_var_ie *)rtw_get_ie(pvar_ie, _SUPPORTEDRATES_IE_, &ie_len, var_ie_len);
+	pIE = (struct ndis_802_11_var_ie *)rtw_get_ie(pvar_ie, WLAN_EID_SUPP_RATES, &ie_len, var_ie_len);
 	if (!pIE)
 		return _FAIL;
 	if (ie_len > NDIS_802_11_LENGTH_RATES_EX)
@@ -1383,7 +1383,7 @@ int update_sta_support_rate(struct adapter *padapter, u8 *pvar_ie, uint var_ie_l
 	memcpy(pmlmeinfo->FW_sta_info[cam_idx].SupportedRates, pIE->data, ie_len);
 	supportRateNum = ie_len;
 
-	pIE = (struct ndis_802_11_var_ie *)rtw_get_ie(pvar_ie, _EXT_SUPPORTEDRATES_IE_, &ie_len, var_ie_len);
+	pIE = (struct ndis_802_11_var_ie *)rtw_get_ie(pvar_ie, WLAN_EID_EXT_SUPP_RATES, &ie_len, var_ie_len);
 	if (pIE) {
 		if (supportRateNum + ie_len > NDIS_802_11_LENGTH_RATES_EX)
 			return _FAIL;
diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 314790fea1ae..317355f830cb 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1099,7 +1099,7 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 		break;
 	case AUTO_VCS:
 	default:
-		perp = rtw_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
+		perp = rtw_get_ie(ie, WLAN_EID_ERP_INFO, &erp_len, ie_len);
 		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
 		} else {
@@ -1670,7 +1670,7 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
 			pstapriv->tim_bitmap |= BIT(0);/*  */
 			pstapriv->sta_dz_bitmap |= BIT(0);
 
-			update_beacon(padapter, _TIM_IE_, NULL, false);/* tx bc/mc packets after update bcn */
+			update_beacon(padapter, WLAN_EID_TIM, NULL, false);/* tx bc/mc packets after update bcn */
 
 			ret = true;
 		}
@@ -1721,7 +1721,7 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
 
 				if (psta->sleepq_len == 1) {
 					/* update BCN for TIM IE */
-					update_beacon(padapter, _TIM_IE_, NULL, false);
+					update_beacon(padapter, WLAN_EID_TIM, NULL, false);
 				}
 			}
 			ret = true;
@@ -1930,7 +1930,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (update_mask)
-		update_beacon(padapter, _TIM_IE_, NULL, false);
+		update_beacon(padapter, WLAN_EID_TIM, NULL, false);
 }
 
 void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *psta)
@@ -1995,7 +1995,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 			pstapriv->tim_bitmap &= ~BIT(psta->aid);
 
 			/* update BCN for TIM IE */
-			update_beacon(padapter, _TIM_IE_, NULL, false);
+			update_beacon(padapter, WLAN_EID_TIM, NULL, false);
 		}
 	}
 
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
index 176716d3e903..3a0e3d41a404 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
@@ -249,27 +249,27 @@ static void ConstructBeacon(struct adapter *adapt, u8 *pframe, u32 *pLength)
 	/* below for ad-hoc mode */
 
 	/*  SSID */
-	pframe = rtw_set_ie(pframe, _SSID_IE_, cur_network->ssid.ssid_length, cur_network->ssid.ssid, &pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SSID, cur_network->ssid.ssid_length, cur_network->ssid.ssid, &pktlen);
 
 	/*  supported rates... */
 	rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-	pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, min_t(u32, rate_len, 8), cur_network->SupportedRates, &pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, min_t(u32, rate_len, 8), cur_network->SupportedRates, &pktlen);
 
 	/*  DS parameter set */
-	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&cur_network->Configuration.DSConfig, &pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_DS_PARAMS, 1, (unsigned char *)&cur_network->Configuration.DSConfig, &pktlen);
 
 	if ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) {
 		u32 ATIMWindow;
 		/*  IBSS Parameter Set... */
 		ATIMWindow = 0;
-		pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pktlen);
 	}
 
 	/* todo: ERP IE */
 
 	/*  EXTERNDED SUPPORTED RATE */
 	if (rate_len > 8)
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pktlen);
 
 	/* todo:HT for adhoc */
 
diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index d08a8d8adccf..fbb72c570239 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -21,9 +21,6 @@
 
 #define is_wep_enc(alg) (((alg) == _WEP40_) || ((alg) == _WEP104_))
 
-#define _WPA_IE_ID_	0xdd
-#define _WPA2_IE_ID_	0x30
-
 #define SHA256_MAC_LEN 32
 #define AES_BLOCK_SIZE 16
 #define AES_PRIV_SIZE (4 * 44)
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index 757c582ba4d9..1895f81e09b5 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -330,40 +330,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _FIXED_IE_LENGTH_	_BEACON_IE_OFFSET_
 
-#define _SSID_IE_		0
-#define _SUPPORTEDRATES_IE_	1
-#define _DSSET_IE_		3
-#define _TIM_IE_		5
-#define _IBSS_PARA_IE_		6
-#define _COUNTRY_IE_		7
-#define _CHLGETXT_IE_		16
-#define _SUPPORTED_CH_IE_	36
-#define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
-#define _RSN_IE_2_		48
-#define _SSN_IE_1_		221
-#define _ERPINFO_IE_		42
-#define _EXT_SUPPORTEDRATES_IE_	50
-
-#define _HT_CAPABILITY_IE_	45
-#define _FTIE_			55
-#define _TIMEOUT_ITVL_IE_	56
-#define _SRC_IE_		59
-#define _HT_EXTRA_INFO_IE_	61
-#define _HT_ADD_INFO_IE_	61 /* _HT_EXTRA_INFO_IE_ */
-#define _WAPI_IE_		68
-
-#define	EID_BSSCoexistence	72 /*  20/40 BSS Coexistence */
-#define	EID_BSSIntolerantChlReport	73
-#define _RIC_Descriptor_IE_	75
-
-#define _LINK_ID_IE_		101
-#define _CH_SWITCH_TIMING_	104
-#define _PTI_BUFFER_STATUS_	106
-#define _EXT_CAP_IE_		127
-#define _VENDOR_SPECIFIC_IE_	221
-
-#define	_RESERVED47_		47
-
 /* ---------------------------------------------------------------------------
 					Below is the fixed elements...
 -----------------------------------------------------------------------------*/
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 8e10462f1fbe..6ac904ceb95e 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -120,7 +120,7 @@ static char *translate_scan(struct adapter *padapter,
 	start = iwe_stream_add_point(info, start, stop, &iwe, pnetwork->network.ssid.ssid);
 
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(&pnetwork->network.ies[12], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.ie_length - 12);
+	p = rtw_get_ie(&pnetwork->network.ies[12], WLAN_EID_HT_CAPABILITY, &ht_ielen, pnetwork->network.ie_length - 12);
 
 	if (p && ht_ielen > 0) {
 		struct ieee80211_ht_cap *pht_capie;
@@ -587,7 +587,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 
 			while (cnt < ielen) {
 				eid = buf[cnt];
-				if ((eid == _VENDOR_SPECIFIC_IE_) && (!memcmp(&buf[cnt + 2], wps_oui, 4))) {
+				if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&buf[cnt + 2], wps_oui, 4))) {
 					DBG_88E("SET WPS_IE\n");
 
 					padapter->securitypriv.wps_ie_len = min(buf[cnt + 1] + 2, MAX_WPA_IE_LEN << 2);
@@ -629,7 +629,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
 		/* parsing HT_CAP_IE */
-		p = rtw_get_ie(&pcur_bss->ies[12], _HT_CAPABILITY_IE_, &ht_ielen, pcur_bss->ie_length - 12);
+		p = rtw_get_ie(&pcur_bss->ies[12], WLAN_EID_HT_CAPABILITY, &ht_ielen, pcur_bss->ie_length - 12);
 		if (p && ht_ielen > 0)
 			ht_cap = true;
 
@@ -2633,7 +2633,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 
 		memcpy(pmlmepriv->wps_beacon_ie, param->u.bcn_ie.buf, ie_len);
 
-		update_beacon(padapter, _VENDOR_SPECIFIC_IE_, wps_oui, true);
+		update_beacon(padapter, WLAN_EID_VENDOR_SPECIFIC, wps_oui, true);
 
 		pmlmeext->bstart_bss = true;
 	}
@@ -2874,7 +2874,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 		int probereq_wpsie_len = len;
 		u8 wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 
-		if ((probereq_wpsie[0] == _VENDOR_SPECIFIC_IE_) &&
+		if ((probereq_wpsie[0] == WLAN_EID_VENDOR_SPECIFIC) &&
 		    (!memcmp(&probereq_wpsie[2], wps_oui, 4))) {
 			cp_sz = min(probereq_wpsie_len, MAX_WPS_IE_LEN);
 
diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index 321b2c46479c..df53b7d52618 100644
--- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
@@ -90,7 +90,7 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
 		 ("+%s, authmode=%d\n", __func__, authmode));
 	buff = NULL;
-	if (authmode == _WPA_IE_ID_) {
+	if (authmode == WLAN_EID_VENDOR_SPECIFIC) {
 		RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
 			 ("%s, authmode=%d\n", __func__, authmode));
 		buff = rtw_malloc(IW_CUSTOM_MAX);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
