Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D786511F157
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 11:10:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26F1C87F86;
	Sat, 14 Dec 2019 10:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NFT1JwyNCv21; Sat, 14 Dec 2019 10:10:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E488387F08;
	Sat, 14 Dec 2019 10:10:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFFF41BF2FF
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 10:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB02D85BFB
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 10:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mygokou3qWlk for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 10:10:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4FE6F85533
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 10:10:27 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id d16so1400171wre.10
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 02:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O1zOZQ/Qburv+0hIyltZc8FcnmyHVsj2OQR3H3WEl/k=;
 b=uFckBCIC/rQVdFUCs5eA5EV7t2Or8A7ky2RlHwQeaKvDMJ4FGNgee6rNKdWFq4H7lN
 s2QBxcTY3/7pcwe4wcKRBIv1omR59zuhdyBLZC1snoPKob55xuuPwfx11ITt41rKMoLU
 Q85pyYc/pTxnXxsMzbmPR6BqeyDQpcWENRidpsMs27J/R5n2elKBUP61Wqm8VvBmMbAY
 UV3I5PKHu8WD+V7C8nVWSX1rmJap9ugoAze0pcMmGySffAiIB1FtquzB4g6If10/rcQj
 cGaRYayZmOpF8T46YM8V12twtrAjLTsdymHKAeSLeYtBy62a0lN7lvnHE+U/IHznOoAd
 9/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O1zOZQ/Qburv+0hIyltZc8FcnmyHVsj2OQR3H3WEl/k=;
 b=CMIspVN6ti+of3ddxaStftCW6PbaJeEjqu3cs04Z21hoaI0Y1kz5U7esPEYGeLCznE
 kHbPV/zDQPfSOb84vvb/4/pr/lwmShQqtv3FZWkoSM/K7cOkN0OL3zxwE9kfNFO4ZDlV
 oq0uTwHi2AO3dghLVCuSTmcPZ6+D0qAO/UI/m354NxJl0gK3BK7hwMiSpaxo7fQaafTg
 7/dnDeZ90G2agjZiI0vSrcLGwIv65D7KVFPPvwOWc6ofk3KQB+mOljUdyLJBjhWeYpuD
 gCie3ZCm9ekmWnO3wGKD8qpjTf/T0YI/5ncrdV2lO0u1o513/XTNUaQbbKMM+w2cgmAF
 u/GQ==
X-Gm-Message-State: APjAAAXLzHZj5f1l24fdOqylZGmimuSDffWUvXUCoRn7ZMUKRh8PByr1
 6OUXEKRpiqqwKGsGL+/XVjI=
X-Google-Smtp-Source: APXvYqx98XKB/OERHNowFyKGvUMjaYsbCjQVAubJv1Ta+K5qt2HJ8NclTh12Zrl5xOam77ZIaiK+1A==
X-Received: by 2002:adf:9144:: with SMTP id j62mr17182493wrj.168.1576318225518; 
 Sat, 14 Dec 2019 02:10:25 -0800 (PST)
Received: from localhost.localdomain
 (ipservice-092-219-207-064.092.219.pools.vodafone-ip.de. [92.219.207.64])
 by smtp.gmail.com with ESMTPSA id n3sm13844189wmc.27.2019.12.14.02.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 02:10:25 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: add spaces around operators in
 rtw_mlme_ext.c
Date: Sat, 14 Dec 2019 11:09:55 +0100
Message-Id: <20191214100955.16670-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191214100955.16670-1-straube.linux@gmail.com>
References: <20191214100955.16670-1-straube.linux@gmail.com>
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

Add missing spaces around operators to improve readability and clear
checkpatch issues.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 113 +++++++++---------
 1 file changed, 57 insertions(+), 56 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index e122ef165085..16cb5b31a31d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -291,7 +291,7 @@ static int update_hidden_ssid(u8 *ies, u32 ies_len, u8 hidden_ssid_mode)
 			remain_len = ies_len - (next_ie - ies);
 
 			ssid_ie[1] = 0;
-			memcpy(ssid_ie+2, next_ie, remain_len);
+			memcpy(ssid_ie + 2, next_ie, remain_len);
 			len_diff -= ssid_len_ori;
 
 			break;
@@ -363,14 +363,14 @@ static void issue_beacon(struct adapter *padapter, int timeout_ms)
 
 		memcpy(pframe, cur_network->ies, cur_network->ie_length);
 		len_diff = update_hidden_ssid(
-			pframe+_BEACON_IE_OFFSET_
-			, cur_network->ie_length-_BEACON_IE_OFFSET_
+			pframe + _BEACON_IE_OFFSET_
+			, cur_network->ie_length - _BEACON_IE_OFFSET_
 			, pmlmeinfo->hidden_ssid_mode
 			);
-		pframe += (cur_network->ie_length+len_diff);
-		pattrib->pktlen += (cur_network->ie_length+len_diff);
-		wps_ie = rtw_get_wps_ie(pmgntframe->buf_addr+TXDESC_OFFSET+sizeof(struct ieee80211_hdr_3addr)+_BEACON_IE_OFFSET_,
-			pattrib->pktlen-sizeof(struct ieee80211_hdr_3addr)-_BEACON_IE_OFFSET_, NULL, &wps_ielen);
+		pframe += (cur_network->ie_length + len_diff);
+		pattrib->pktlen += (cur_network->ie_length + len_diff);
+		wps_ie = rtw_get_wps_ie(pmgntframe->buf_addr + TXDESC_OFFSET + sizeof(struct ieee80211_hdr_3addr) + _BEACON_IE_OFFSET_,
+			pattrib->pktlen - sizeof(struct ieee80211_hdr_3addr) - _BEACON_IE_OFFSET_, NULL, &wps_ielen);
 		if (wps_ie && wps_ielen > 0)
 			rtw_get_wps_attr_content(wps_ie,  wps_ielen, WPS_ATTR_SELECTED_REGISTRAR, (u8 *)(&sr), NULL);
 		if (sr != 0)
@@ -504,7 +504,7 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 
 #if defined(CONFIG_88EU_AP_MODE)
 	if ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE) {
-		pwps_ie = rtw_get_wps_ie(cur_network->ies+_FIXED_IE_LENGTH_, cur_network->ie_length-_FIXED_IE_LENGTH_, NULL, &wps_ielen);
+		pwps_ie = rtw_get_wps_ie(cur_network->ies + _FIXED_IE_LENGTH_, cur_network->ie_length - _FIXED_IE_LENGTH_, NULL, &wps_ielen);
 
 		/* inerset & update wps_probe_resp_ie */
 		if (pmlmepriv->wps_probe_resp_ie && pwps_ie && wps_ielen > 0) {
@@ -522,13 +522,13 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 			pattrib->pktlen += wps_offset;
 
 			wps_ielen = (uint)pmlmepriv->wps_probe_resp_ie[1];/* to get ie data len */
-			if ((wps_offset+wps_ielen+2) <= MAX_IE_SZ) {
-				memcpy(pframe, pmlmepriv->wps_probe_resp_ie, wps_ielen+2);
-				pframe += wps_ielen+2;
-				pattrib->pktlen += wps_ielen+2;
+			if ((wps_offset + wps_ielen + 2) <= MAX_IE_SZ) {
+				memcpy(pframe, pmlmepriv->wps_probe_resp_ie, wps_ielen + 2);
+				pframe += wps_ielen + 2;
+				pattrib->pktlen += wps_ielen + 2;
 			}
 
-			if ((wps_offset+wps_ielen+2+remainder_ielen) <= MAX_IE_SZ) {
+			if ((wps_offset + wps_ielen + 2 + remainder_ielen) <= MAX_IE_SZ) {
 				memcpy(pframe, premainder_ie, remainder_ielen);
 				pframe += remainder_ielen;
 				pattrib->pktlen += remainder_ielen;
@@ -943,7 +943,7 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, pstat->bssratelen, pstat->bssrateset, &pattrib->pktlen);
 	} else {
 		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, pstat->bssrateset, &pattrib->pktlen);
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, pstat->bssratelen-8, pstat->bssrateset+8, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, pstat->bssratelen - 8, pstat->bssrateset + 8, &pattrib->pktlen);
 	}
 
 	if ((pstat->flags & WLAN_STA_HT) && (pmlmepriv->htpriv.ht_option)) {
@@ -952,17 +952,17 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 		/* FILL HT CAP INFO IE */
 		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_CAPABILITY_IE_, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_));
 		if (pbuf && ie_len > 0) {
-			memcpy(pframe, pbuf, ie_len+2);
-			pframe += (ie_len+2);
-			pattrib->pktlen += (ie_len+2);
+			memcpy(pframe, pbuf, ie_len + 2);
+			pframe += (ie_len + 2);
+			pattrib->pktlen += (ie_len + 2);
 		}
 
 		/* FILL HT ADD INFO IE */
 		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_ADD_INFO_IE_, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_));
 		if (pbuf && ie_len > 0) {
-			memcpy(pframe, pbuf, ie_len+2);
-			pframe += (ie_len+2);
-			pattrib->pktlen += (ie_len+2);
+			memcpy(pframe, pbuf, ie_len + 2);
+			pframe += (ie_len + 2);
+			pattrib->pktlen += (ie_len + 2);
 		}
 	}
 
@@ -973,10 +973,10 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 
 		for (pbuf = ie + _BEACON_IE_OFFSET_;; pbuf += (ie_len + 2)) {
 			pbuf = rtw_get_ie(pbuf, _VENDOR_SPECIFIC_IE_, &ie_len, (pnetwork->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2)));
-			if (pbuf && !memcmp(pbuf+2, WMM_PARA_IE, 6)) {
-				memcpy(pframe, pbuf, ie_len+2);
-				pframe += (ie_len+2);
-				pattrib->pktlen += (ie_len+2);
+			if (pbuf && !memcmp(pbuf + 2, WMM_PARA_IE, 6)) {
+				memcpy(pframe, pbuf, ie_len + 2);
+				pframe += (ie_len + 2);
+				pattrib->pktlen += (ie_len + 2);
 				break;
 			}
 
@@ -1082,8 +1082,8 @@ static void issue_assocreq(struct adapter *padapter)
 		/*  Check if the AP's supported rates are also supported by STA. */
 		for (j = 0; j < sta_bssrate_len; j++) {
 			/*  Avoid the proprietary data rate (22Mbps) of Handlink WSG-4000 AP */
-			if ((pmlmeinfo->network.SupportedRates[i]|IEEE80211_BASIC_RATE_MASK)
-					== (sta_bssrate[j]|IEEE80211_BASIC_RATE_MASK))
+			if ((pmlmeinfo->network.SupportedRates[i] | IEEE80211_BASIC_RATE_MASK)
+					== (sta_bssrate[j] | IEEE80211_BASIC_RATE_MASK))
 				break;
 		}
 
@@ -1874,7 +1874,7 @@ unsigned int send_beacon(struct adapter *padapter)
 			yield();
 			rtw_hal_get_hwreg(padapter, HW_VAR_BCN_VALID, (u8 *)(&bxmitok));
 			poll++;
-		} while ((poll%10) != 0 && !bxmitok && !padapter->bSurpriseRemoved && !padapter->bDriverStopped);
+		} while ((poll % 10) != 0 && !bxmitok && !padapter->bSurpriseRemoved && !padapter->bDriverStopped);
 	} while (!bxmitok && issue < 100 && !padapter->bSurpriseRemoved && !padapter->bDriverStopped);
 
 	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
@@ -2093,7 +2093,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 
 	p = rtw_get_ie(bssid->ies + ie_offset, _EXT_SUPPORTEDRATES_IE_, &len, bssid->ie_length - ie_offset);
 	if (p) {
-		if (len > (NDIS_802_11_LENGTH_RATES_EX-i)) {
+		if (len > (NDIS_802_11_LENGTH_RATES_EX - i)) {
 			DBG_88E("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
 			return _FAIL;
 		}
@@ -2518,7 +2518,7 @@ static unsigned int OnProbeReq(struct adapter *padapter,
 		return _SUCCESS;
 
 	if (!check_fwstate(pmlmepriv, _FW_LINKED) &&
-	    !check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_AP_STATE))
+	    !check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE | WIFI_AP_STATE))
 		return _SUCCESS;
 
 	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, _SSID_IE_, &ielen,
@@ -2526,7 +2526,7 @@ static unsigned int OnProbeReq(struct adapter *padapter,
 
 	/* check (wildcard) SSID */
 	if (p) {
-		if ((ielen != 0 && memcmp((void *)(p+2), (void *)cur->ssid.ssid, cur->ssid.ssid_length)) ||
+		if ((ielen != 0 && memcmp((void *)(p + 2), (void *)cur->ssid.ssid, cur->ssid.ssid_length)) ||
 		    (ielen == 0 && pmlmeinfo->hidden_ssid_mode))
 			return _SUCCESS;
 
@@ -2583,7 +2583,7 @@ static unsigned int OnBeacon(struct adapter *padapter,
 			}
 
 			/* check the vendor of the assoc AP */
-			pmlmeinfo->assoc_AP_vendor = check_assoc_AP(pframe+sizeof(struct ieee80211_hdr_3addr), len-sizeof(struct ieee80211_hdr_3addr));
+			pmlmeinfo->assoc_AP_vendor = check_assoc_AP(pframe + sizeof(struct ieee80211_hdr_3addr), len - sizeof(struct ieee80211_hdr_3addr));
 
 			/* update TSF Value */
 			update_TSF(pmlmeext, pframe, len);
@@ -2729,7 +2729,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 
 	if ((pstat->auth_seq + 1) != seq) {
 		DBG_88E("(1)auth rejected because out of seq [rx_seq=%d, exp_seq=%d]!\n",
-			seq, pstat->auth_seq+1);
+			seq, pstat->auth_seq + 1);
 		status = _STATS_OUT_OF_AUTH_SEQ_;
 		goto auth_fail;
 	}
@@ -2742,7 +2742,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 			pstat->authalg = algorithm;
 		} else {
 			DBG_88E("(2)auth rejected because out of seq [rx_seq=%d, exp_seq=%d]!\n",
-				seq, pstat->auth_seq+1);
+				seq, pstat->auth_seq + 1);
 			status = _STATS_OUT_OF_AUTH_SEQ_;
 			goto auth_fail;
 		}
@@ -2779,7 +2779,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 			}
 		} else {
 			DBG_88E("(3)auth rejected because out of seq [rx_seq=%d, exp_seq=%d]!\n",
-				seq, pstat->auth_seq+1);
+				seq, pstat->auth_seq + 1);
 			status = _STATS_OUT_OF_AUTH_SEQ_;
 			goto auth_fail;
 		}
@@ -2975,7 +2975,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		goto OnAssocReqFail;
 	} else {
 		/*  check if ssid match */
-		if (memcmp((void *)(p+2), cur->ssid.ssid, cur->ssid.ssid_length))
+		if (memcmp((void *)(p + 2), cur->ssid.ssid, cur->ssid.ssid_length))
 			status = _STATS_FAILURE_;
 
 		if (ie_len != cur->ssid.ssid_length)
@@ -2996,14 +2996,15 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		status = _STATS_FAILURE_;
 		goto OnAssocReqFail;
 	} else {
-		memcpy(supportRate, p+2, ie_len);
+		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
 
 		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _EXT_SUPPORTEDRATES_IE_, &ie_len,
 				pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 		if (p) {
 			if (supportRateNum <= sizeof(supportRate)) {
-				memcpy(supportRate+supportRateNum, p+2, ie_len);
+				memcpy(supportRate + supportRateNum,
+				       p + 2, ie_len);
 				supportRateNum += ie_len;
 			}
 		}
@@ -3031,7 +3032,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		wpa_ie = elems.rsn_ie;
 		wpa_ie_len = elems.rsn_ie_len;
 
-		if (rtw_parse_wpa2_ie(wpa_ie-2, wpa_ie_len+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
+		if (rtw_parse_wpa2_ie(wpa_ie - 2, wpa_ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			pstat->dot8021xalg = 1;/* psk,  todo:802.1x */
 			pstat->wpa_psk |= BIT(1);
 
@@ -3052,7 +3053,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		wpa_ie = elems.wpa_ie;
 		wpa_ie_len = elems.wpa_ie_len;
 
-		if (rtw_parse_wpa_ie(wpa_ie-2, wpa_ie_len+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
+		if (rtw_parse_wpa_ie(wpa_ie - 2, wpa_ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			pstat->dot8021xalg = 1;/* psk,  todo:802.1x */
 			pstat->wpa_psk |= BIT(0);
 
@@ -3094,7 +3095,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 
 		/*  AP support WPA/RSN, and sta is going to do WPS, but AP is not ready */
 		/*  that the selected registrar of AP is _FLASE */
-		if ((psecuritypriv->wpa_psk > 0) && (pstat->flags & (WLAN_STA_WPS|WLAN_STA_MAYBE_WPS))) {
+		if ((psecuritypriv->wpa_psk > 0) && (pstat->flags & (WLAN_STA_WPS | WLAN_STA_MAYBE_WPS))) {
 			if (pmlmepriv->wps_beacon_ie) {
 				u8 selected_registrar = 0;
 
@@ -3131,7 +3132,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 			copy_len = min_t(int, wpa_ie_len + 2, sizeof(pstat->wpa_ie));
 		}
 		if (copy_len > 0)
-			memcpy(pstat->wpa_ie, wpa_ie-2, copy_len);
+			memcpy(pstat->wpa_ie, wpa_ie - 2, copy_len);
 	}
 	/*  check if there is WMM IE & support WWM-PS */
 	pstat->flags &= ~WLAN_STA_WME;
@@ -3147,13 +3148,13 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		for (;;) {
 			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 			if (p) {
-				if (!memcmp(p+2, WMM_IE, 6)) {
+				if (!memcmp(p + 2, WMM_IE, 6)) {
 					pstat->flags |= WLAN_STA_WME;
 
 					pstat->qos_option = 1;
-					pstat->qos_info = *(p+8);
+					pstat->qos_info = *(p + 8);
 
-					pstat->max_sp_len = (pstat->qos_info>>5) & 0x3;
+					pstat->max_sp_len = (pstat->qos_info >> 5) & 0x3;
 
 					if ((pstat->qos_info & 0xf) != 0xf)
 						pstat->has_legacy_ac = true;
@@ -3162,22 +3163,22 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 
 					if (pstat->qos_info & 0xf) {
 						if (pstat->qos_info & BIT(0))
-							pstat->uapsd_vo = BIT(0)|BIT(1);
+							pstat->uapsd_vo = BIT(0) | BIT(1);
 						else
 							pstat->uapsd_vo = 0;
 
 						if (pstat->qos_info & BIT(1))
-							pstat->uapsd_vi = BIT(0)|BIT(1);
+							pstat->uapsd_vi = BIT(0) | BIT(1);
 						else
 							pstat->uapsd_vi = 0;
 
 						if (pstat->qos_info & BIT(2))
-							pstat->uapsd_bk = BIT(0)|BIT(1);
+							pstat->uapsd_bk = BIT(0) | BIT(1);
 						else
 							pstat->uapsd_bk = 0;
 
 						if (pstat->qos_info & BIT(3))
-							pstat->uapsd_be = BIT(0)|BIT(1);
+							pstat->uapsd_be = BIT(0) | BIT(1);
 						else
 							pstat->uapsd_be = 0;
 					}
@@ -4515,7 +4516,7 @@ void mlmeext_joinbss_event_callback(struct adapter *padapter, int join_res)
 		/* set per sta rate after updating HT cap. */
 		set_sta_rate(padapter, psta);
 		rtw_hal_set_hwreg(padapter, HW_VAR_TX_RPT_MAX_MACID, (u8 *)&psta->mac_id);
-		media_status = (psta->mac_id<<8)|1; /*   MACID|OPMODE: 1 means connect */
+		media_status = (psta->mac_id << 8) | 1; /*   MACID|OPMODE: 1 means connect */
 		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_MEDIA_STATUS_RPT, (u8 *)&media_status);
 	}
 
@@ -4844,7 +4845,7 @@ u8 setopmode_hdl(struct adapter *padapter, u8 *pbuf)
 		pmlmeinfo->state = WIFI_FW_AP_STATE;
 		type = _HW_STATE_AP_;
 	} else if (psetop->mode == Ndis802_11Infrastructure) {
-		pmlmeinfo->state &= ~(BIT(0)|BIT(1));/*  clear state */
+		pmlmeinfo->state &= ~(BIT(0) | BIT(1));/*  clear state */
 		pmlmeinfo->state |= WIFI_FW_STATION_STATE;/* set to	STATION_STATE */
 		type = _HW_STATE_STATION_;
 	} else if (psetop->mode == Ndis802_11IBSS) {
@@ -5040,7 +5041,7 @@ u8 disconnect_hdl(struct adapter *padapter, unsigned char *pbuf)
 	u8 val8;
 
 	if (is_client_associated_to_ap(padapter))
-		issue_deauth_ex(padapter, pnetwork->MacAddress, WLAN_REASON_DEAUTH_LEAVING, param->deauth_timeout_ms/100, 100);
+		issue_deauth_ex(padapter, pnetwork->MacAddress, WLAN_REASON_DEAUTH_LEAVING, param->deauth_timeout_ms / 100, 100);
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_MLME_DISCONNECT, NULL);
 	rtw_hal_set_hwreg(padapter, HW_VAR_BSSID, null_addr);
@@ -5084,7 +5085,7 @@ static int rtw_scan_ch_decision(struct adapter *padapter,
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 
 	/* clear out first */
-	memset(out, 0, sizeof(struct rtw_ieee80211_channel)*out_num);
+	memset(out, 0, sizeof(struct rtw_ieee80211_channel) * out_num);
 
 	/* acquire channels from in */
 	j = 0;
@@ -5263,7 +5264,7 @@ u8 set_stakey_hdl(struct adapter *padapter, u8 *pbuf)
 
 			DBG_88E("r871x_set_stakey_hdl(): enc_algorithm=%d\n", pparm->algorithm);
 
-			if ((psta->mac_id < 1) || (psta->mac_id > (NUM_STA-4))) {
+			if ((psta->mac_id < 1) || (psta->mac_id > (NUM_STA - 4))) {
 				DBG_88E("r871x_set_stakey_hdl():set_stakey failed, mac_id(aid)=%d\n", psta->mac_id);
 				return H2C_REJECTED;
 			}
@@ -5339,8 +5340,8 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 		goto exit;
 	}
 
-	len_diff = update_hidden_ssid(ptxBeacon_parm->ies+_BEACON_IE_OFFSET_,
-				      ptxBeacon_parm->ie_length-_BEACON_IE_OFFSET_,
+	len_diff = update_hidden_ssid(ptxBeacon_parm->ies + _BEACON_IE_OFFSET_,
+				      ptxBeacon_parm->ie_length - _BEACON_IE_OFFSET_,
 				      pmlmeinfo->hidden_ssid_mode);
 	ptxBeacon_parm->ie_length += len_diff;
 
@@ -5361,7 +5362,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	peventbuf = (uint *)pbuf;
 	evt_sz = (u16)(*peventbuf & 0xffff);
-	evt_code = (u8)((*peventbuf>>16) & 0xff);
+	evt_code = (u8)((*peventbuf >> 16) & 0xff);
 
 	/*  checking if event code is valid */
 	if (evt_code >= MAX_C2HEVT) {
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
