Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 538ED80807
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 21:26:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 923758511F;
	Sat,  3 Aug 2019 19:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0vcUBPmzL8iH; Sat,  3 Aug 2019 19:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FEC685143;
	Sat,  3 Aug 2019 19:26:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34EB51BF31B
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 19:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E4F086804
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 19:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZT7kYVrsjFVm for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 19:26:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F257D86452
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 19:26:02 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id l21so37687792pgm.3
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 12:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=eGBFVR1jGxKuXpKHbuZ6I2B68fzvRmltllGwW6stZ2w=;
 b=J18BHa6mPG9a8olNqD9TY08j2+Kyfm12WOnEyyB+Oncfa9CLMu5TqsUIS8YhnZSI74
 PJeEFsDN/kEOs/bjLgL0vTudQQFq/fmOYxdLJRFyw8OJU2BJyj3ZY7GAgBV4nYL+70ER
 LZpGCJNcVo0eqXCsDLkO26hDD4zeqtCDJ7HOKAcjNdRb7X9FfYi/9D9e79BqXR/OP8zA
 pUxIfrmmlRLFJ6SXMhCfiIFU7ihy0uQO0t0amXaZuel9iD+sQYfvYR/zeSHIV4HjJyBg
 hJ5vpSuX2h5Y5iEs+b7i486Hni66DltIylM1HQBzZiDF/dHZYgwECixxrr3K8ga4fswI
 b07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=eGBFVR1jGxKuXpKHbuZ6I2B68fzvRmltllGwW6stZ2w=;
 b=Lv2j6ycAA2utFTu9/HAWNV3t+LbbT+OfbXZMdyVnhy0OrSA9Se0dz/E4A2Uvl5rSRk
 7CdzjpqJ6tj4GH1vRCmEFgAE2CgfcoxGRAhbpKliuNPhtM7QEPt87U++zeAW4G+vv6oG
 j582QVI0/h7m4u+h/m+cfTkTbOqAbYV2JqIVZyjUtXEcuwOJwnqYwupKHWJJZ+k3/62t
 jBXyhE8VwN5NzlL/7jkDS0zNM3uGjYkXZvEVwSeLF14I+xG9WkMeL769kAElUV0PhSHr
 8fWAf/L8SfQ0Wp9N0HgtyaTv4oxEeaE+fO2wNGt1mWxV80VjvbOzoJ/pFF+3JA8PwfNe
 OKxw==
X-Gm-Message-State: APjAAAU83WZdaHsy9sFh3HN5f1qJgeg36XwdMzhpQ55KCA9xPpAPkBxl
 Zqih2qTuD4QFRJ0J4CrLm28=
X-Google-Smtp-Source: APXvYqxyMHfIqv8zoG1N/bpjfHvBs3uEyh91+0KfEu5pfZS9bV+aNiSRB85w3bFZls7s3bQUsOqQJw==
X-Received: by 2002:a63:c442:: with SMTP id m2mr803925pgg.286.1564860362427;
 Sat, 03 Aug 2019 12:26:02 -0700 (PDT)
Received: from saurav ([123.201.163.103])
 by smtp.gmail.com with ESMTPSA id r6sm32335187pjb.22.2019.08.03.12.25.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 12:26:02 -0700 (PDT)
Date: Sun, 4 Aug 2019 00:55:55 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, saurav.girepunje@gmail.com;,
 nishkadg.linux@gmail.com;, puranjay12@gmail.com;,
 kimbrownkd@gmail.com;, mamtashukla555@gmail.com;,
 hardiksingh.k@gmail.com;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: add spaces around '-', '+',
 '&','|' and '?'
Message-ID: <20190803192551.GA24041@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add spaces around '-', '+', '&','|' and '?' to improve readability
and follow kernel coding style in rtw_ap.c

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 88 ++++++++++++-------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 45a745696af6..02f5478845b4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -83,7 +83,7 @@ static void update_BCNTIM(struct adapter *padapter)
 		if (p != NULL && tim_ielen > 0) {
 			tim_ielen += 2;
 
-			premainder_ie = p+tim_ielen;
+			premainder_ie = p + tim_ielen;
 
 			tim_ie_offset = (sint)(p - pie);
 
@@ -105,7 +105,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
 			if (p != NULL)
-				offset += tmp_len+2;
+				offset += tmp_len + 2;
 
 			/*  get supported rates len */
 			p = rtw_get_ie(
@@ -114,7 +114,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
 			if (p !=  NULL)
-				offset += tmp_len+2;
+				offset += tmp_len + 2;
 
 			/* DS Parameter Set IE, len =3 */
 			offset += 3;
@@ -135,7 +135,7 @@ static void update_BCNTIM(struct adapter *padapter)
 
 		*dst_ie++ = _TIM_IE_;
 
-		if ((pstapriv->tim_bitmap&0xff00) && (pstapriv->tim_bitmap&0x00fe))
+		if ((pstapriv->tim_bitmap & 0xff00) && (pstapriv->tim_bitmap & 0x00fe))
 			tim_ielen = 5;
 		else
 			tim_ielen = 4;
@@ -145,7 +145,7 @@ static void update_BCNTIM(struct adapter *padapter)
 		*dst_ie++ = 0;/* DTIM count */
 		*dst_ie++ = 1;/* DTIM period */
 
-		if (pstapriv->tim_bitmap&BIT(0))/* for bc/mc frames */
+		if (pstapriv->tim_bitmap & BIT(0))/* for bc/mc frames */
 			*dst_ie++ = BIT(0);/* bitmap ctrl */
 		else
 			*dst_ie++ = 0;
@@ -153,7 +153,7 @@ static void update_BCNTIM(struct adapter *padapter)
 		if (tim_ielen == 4) {
 			__le16 pvb;
 
-			if (pstapriv->tim_bitmap&0xff00)
+			if (pstapriv->tim_bitmap & 0xff00)
 				pvb = cpu_to_le16(pstapriv->tim_bitmap >> 8);
 			else
 				pvb = tim_bitmap_le;
@@ -188,8 +188,8 @@ u8 chk_sta_is_alive(struct sta_info *psta)
 		/*  STA_RX_PKTS_ARG(psta) */
 		, STA_RX_PKTS_DIFF_ARG(psta)
 		, psta->expire_to
-		, psta->state&WIFI_SLEEP_STATE?"PS, ":""
-		, psta->state&WIFI_STA_ALIVE_CHK_STATE?"SAC, ":""
+		, psta->state & WIFI_SLEEP_STATE ? "PS, " : ""
+		, psta->state & WIFI_STA_ALIVE_CHK_STATE ? "SAC, " : ""
 		, psta->sleepq_len
 	);
 	#endif
@@ -325,10 +325,10 @@ void expire_timeout_chk(struct adapter *padapter)
 			updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
 		} else {
 			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
-			if (psta->sleepq_len > (NR_XMITFRAME/pstapriv->asoc_list_cnt)
+			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt)
 				&& padapter->xmitpriv.free_xmitframe_cnt < ((
-					NR_XMITFRAME/pstapriv->asoc_list_cnt
-				)/2)
+					NR_XMITFRAME / pstapriv->asoc_list_cnt
+				) / 2)
 			) {
 				DBG_871X(
 					"%s sta:"MAC_FMT", sleepq_len:%u, free_xmitframe_cnt:%u, asoc_list_cnt:%u, clear sleep_q\n",
@@ -586,8 +586,8 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 		phtpriv_sta->ampdu_enable = phtpriv_ap->ampdu_enable;
 
 		phtpriv_sta->rx_ampdu_min_spacing = (
-			phtpriv_sta->ht_cap.ampdu_params_info&IEEE80211_HT_CAP_AMPDU_DENSITY
-		)>>2;
+			phtpriv_sta->ht_cap.ampdu_params_info & IEEE80211_HT_CAP_AMPDU_DENSITY
+		) >> 2;
 
 		/*  bwmode */
 		if ((
@@ -782,8 +782,8 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	/* check if there is wps ie, */
 	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating hostapd, */
 	/* and at first time the security ie (RSN/WPA IE) will not include in beacon. */
-	if (!rtw_get_wps_ie(pnetwork->IEs+_FIXED_IE_LENGTH_,
-			    pnetwork->IELength-_FIXED_IE_LENGTH_, NULL, NULL))
+	if (!rtw_get_wps_ie(pnetwork->IEs + _FIXED_IE_LENGTH_,
+			    pnetwork->IELength - _FIXED_IE_LENGTH_, NULL, NULL))
 		pmlmeext->bstart_bss = true;
 
 	/* todo: update wmm, ht cap */
@@ -861,7 +861,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		(pnetwork->IELength - sizeof(struct ndis_802_11_fix_ie))
 	);
 	if (p && ie_len) {
-		pht_info = (struct HT_info_element *)(p+2);
+		pht_info = (struct HT_info_element *)(p + 2);
 
 		if (cur_channel > 14) {
 			if ((pregpriv->bw_mode & 0xf0) > 0)
@@ -1037,7 +1037,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
 	if (p !=  NULL) {
-		memcpy(supportRate, p+2, ie_len);
+		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
 	}
 
@@ -1049,7 +1049,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		pbss_network->IELength - _BEACON_IE_OFFSET_
 	);
 	if (p !=  NULL) {
-		memcpy(supportRate+supportRateNum, p+2, ie_len);
+		memcpy(supportRate + supportRateNum, p + 2, ie_len);
 		supportRateNum += ie_len;
 	}
 
@@ -1088,7 +1088,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	if (p && ie_len > 0) {
 		if (rtw_parse_wpa2_ie(
 			p,
-			ie_len+2,
+			ie_len + 2,
 			&group_cipher,
 			&pairwise_cipher,
 			NULL
@@ -1115,10 +1115,10 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			&ie_len,
 			(pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2))
 		);
-		if ((p) && (!memcmp(p+2, OUI1, 4))) {
+		if ((p) && (!memcmp(p + 2, OUI1, 4))) {
 			if (rtw_parse_wpa_ie(
 				p,
-				ie_len+2,
+				ie_len + 2,
 				&group_cipher,
 				&pairwise_cipher,
 				NULL
@@ -1151,10 +1151,10 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 				&ie_len,
 				(pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2))
 			);
-			if ((p) && !memcmp(p+2, WMM_PARA_IE, 6)) {
+			if ((p) && !memcmp(p + 2, WMM_PARA_IE, 6)) {
 				pmlmepriv->qospriv.qos_option = 1;
 
-				*(p+8) |= BIT(7);/* QoS Info, support U-APSD */
+				*(p + 8) |= BIT(7);/* QoS Info, support U-APSD */
 
 				/* disable all ACM bits since the WMM admission control is not supported */
 				*(p + 10) &= ~BIT(4); /* BE */
@@ -1180,7 +1180,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	if (p && ie_len > 0) {
 		u8 rf_type = 0;
 		u8 max_rx_ampdu_factor = 0;
-		struct rtw_ieee80211_ht_cap *pht_cap = (struct rtw_ieee80211_ht_cap *)(p+2);
+		struct rtw_ieee80211_ht_cap *pht_cap = (struct rtw_ieee80211_ht_cap *)(p + 2);
 
 		pHT_caps_ie = p;
 
@@ -1205,14 +1205,14 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			pht_cap->cap_info &= cpu_to_le16(~(IEEE80211_HT_CAP_RX_STBC_3R));
 
 		pht_cap->ampdu_params_info &= ~(
-			IEEE80211_HT_CAP_AMPDU_FACTOR|IEEE80211_HT_CAP_AMPDU_DENSITY
+			IEEE80211_HT_CAP_AMPDU_FACTOR | IEEE80211_HT_CAP_AMPDU_DENSITY
 		);
 
 		if ((psecuritypriv->wpa_pairwise_cipher & WPA_CIPHER_CCMP) ||
 			(psecuritypriv->wpa2_pairwise_cipher & WPA_CIPHER_CCMP)) {
-			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&(0x07<<2));
+			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY & (0x07 << 2));
 		} else {
-			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&0x00);
+			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY & 0x00);
 		}
 
 		rtw_hal_get_def_var(
@@ -1230,7 +1230,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			pht_cap->supp_mcs_set[1] = 0x0;
 		}
 
-		memcpy(&pmlmepriv->htpriv.ht_cap, p+2, ie_len);
+		memcpy(&pmlmepriv->htpriv.ht_cap, p + 2, ie_len);
 	}
 
 	/* parsing HT_INFO_IE */
@@ -1265,8 +1265,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	pmlmepriv->htpriv.ht_option = false;
 
-	if ((psecuritypriv->wpa2_pairwise_cipher&WPA_CIPHER_TKIP) ||
-		      (psecuritypriv->wpa_pairwise_cipher&WPA_CIPHER_TKIP)) {
+	if ((psecuritypriv->wpa2_pairwise_cipher & WPA_CIPHER_TKIP) ||
+		      (psecuritypriv->wpa_pairwise_cipher & WPA_CIPHER_TKIP)) {
 		/* todo: */
 		/* ht_cap = false; */
 	}
@@ -1341,7 +1341,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 		MAC_ARG(addr)
 	);
 
-	if ((NUM_ACL-1) < pacl_list->num)
+	if ((NUM_ACL - 1) < pacl_list->num)
 		return (-1);
 
 	spin_lock_bh(&(pacl_node_q->lock));
@@ -1454,7 +1454,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 
 	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
 	if (psetstakey_para == NULL) {
-		kfree((u8 *) ph2c);
+		kfree((u8 *)ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1604,10 +1604,10 @@ static void update_bcn_erpinfo_ie(struct adapter *padapter)
 		struct ndis_80211_var_ie *pIE = (struct ndis_80211_var_ie *)p;
 
 		if (pmlmepriv->num_sta_non_erp == 1)
-			pIE->data[0] |= RTW_ERP_INFO_NON_ERP_PRESENT|RTW_ERP_INFO_USE_PROTECTION;
+			pIE->data[0] |= RTW_ERP_INFO_NON_ERP_PRESENT | RTW_ERP_INFO_USE_PROTECTION;
 		else
 			pIE->data[0] &= ~(
-				RTW_ERP_INFO_NON_ERP_PRESENT|RTW_ERP_INFO_USE_PROTECTION
+				RTW_ERP_INFO_NON_ERP_PRESENT | RTW_ERP_INFO_USE_PROTECTION
 			);
 
 		if (pmlmepriv->num_sta_no_short_preamble > 0)
@@ -1662,8 +1662,8 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	DBG_871X("%s\n", __func__);
 
 	pwps_ie = rtw_get_wps_ie(
-		ie+_FIXED_IE_LENGTH_,
-		ielen-_FIXED_IE_LENGTH_,
+		ie + _FIXED_IE_LENGTH_,
+		ielen - _FIXED_IE_LENGTH_,
 		NULL,
 		&wps_ielen
 	);
@@ -1675,7 +1675,7 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	if (pwps_ie_src == NULL)
 		return;
 
-	wps_offset = (uint)(pwps_ie-ie);
+	wps_offset = (uint)(pwps_ie - ie);
 
 	premainder_ie = pwps_ie + wps_ielen;
 
@@ -1688,22 +1688,22 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	}
 
 	wps_ielen = (uint)pwps_ie_src[1];/* to get ie data len */
-	if ((wps_offset+wps_ielen+2+remainder_ielen) <= MAX_IE_SZ) {
-		memcpy(pwps_ie, pwps_ie_src, wps_ielen+2);
+	if ((wps_offset + wps_ielen + 2 + remainder_ielen) <= MAX_IE_SZ) {
+		memcpy(pwps_ie, pwps_ie_src, wps_ielen + 2);
 		pwps_ie += (wps_ielen+2);
 
 		if (pbackup_remainder_ie)
 			memcpy(pwps_ie, pbackup_remainder_ie, remainder_ielen);
 
 		/* update IELength */
-		pnetwork->IELength = wps_offset + (wps_ielen+2) + remainder_ielen;
+		pnetwork->IELength = wps_offset + (wps_ielen + 2) + remainder_ielen;
 	}
 
 	kfree(pbackup_remainder_ie);
 
 	/*  deal with the case without set_tx_beacon_cmd() in update_beacon() */
 #if defined(CONFIG_INTERRUPT_BASED_TXBCN)
-	if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE) {
+	if ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE) {
 		u8 sr = 0;
 
 		rtw_get_wps_attr_content(
@@ -2196,7 +2196,7 @@ void rtw_sta_flush(struct adapter *padapter)
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(padapter->pnetdev));
 
-	if ((pmlmeinfo->state&0x03) != WIFI_FW_AP_STATE)
+	if ((pmlmeinfo->state & 0x03) != WIFI_FW_AP_STATE)
 		return;
 
 	spin_lock_bh(&pstapriv->asoc_list_lock);
@@ -2230,7 +2230,7 @@ void sta_info_update(struct adapter *padapter, struct sta_info *psta)
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
 	/* update wmm cap. */
-	if (WLAN_STA_WME&flags)
+	if (WLAN_STA_WME & flags)
 		psta->qos_option = 1;
 	else
 		psta->qos_option = 0;
@@ -2239,7 +2239,7 @@ void sta_info_update(struct adapter *padapter, struct sta_info *psta)
 		psta->qos_option = 0;
 
 	/* update 802.11n ht cap. */
-	if (WLAN_STA_HT&flags) {
+	if (WLAN_STA_HT & flags) {
 		psta->htpriv.ht_option = true;
 		psta->qos_option = 1;
 	} else {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
