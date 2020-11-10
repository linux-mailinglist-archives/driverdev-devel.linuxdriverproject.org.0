Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF152ACE66
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C39EE86246;
	Tue, 10 Nov 2020 04:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cp3UUmSR-G-8; Tue, 10 Nov 2020 04:10:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F67984FB1;
	Tue, 10 Nov 2020 04:10:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 125791BF34E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A2D920385
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x6GfsJvpU9Ei for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D46E2035D
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:25 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id n12so12343513ioc.2
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aHvgYnfps4rq0eW3EyLY7UD98Nf30o01nptViCW0CDY=;
 b=Rx2MJ3vBANk5nL2Lp5ki+HH/Rd0njDNHOD9pAsGRjJXLewQhTYqWBWUvH5lB6oZN8D
 GVk3UZl5zWs+DkypGu+ybuitLP4Z0S7Lt4B2GeT3WzjXbwAJyLsLGSc70JF3YaLCzF3j
 ihaiwAc5ypzTzTMA3PmTh3FGb3wdXabBdV8FERt69yhwA3rF2WovsS1MsgbsnBk3a/aX
 LwAogCN0GqnHAPj+Qt49NT4cAPrvdE8ImivKx2xIqOW/omdpiuds81y6DP+xMokguapH
 h+2bRtf9b/F8hHgazBj9bs2m3d1jxyZVz/Btt9Xmb28+ZYusetAhoZrFvTLUj3SevEB3
 75wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aHvgYnfps4rq0eW3EyLY7UD98Nf30o01nptViCW0CDY=;
 b=mhrUVacEj0qqogceU9gKUG6oF5qVEvLytEhq0w325KhCJXPmBn0mCheT0aFPDxLe1N
 wOHuOVVWkl22lwj975Blc3FNZ0Z8mf0GrAer6ARaH1kvIYoJdp86WU/DvgNr0f0sW1i9
 umnHbORb7bxw0pDUmglhmk1hRgdVDpbWOnHXtYrAMqPSR9OFpyeg17cnpce2ITLhdDRu
 P9zKKunr4qZcA/rAkHhwR5SZJmdcA7/qWoL3kTjaSkvqBgrKnBtXvSXQk+YLMypF7Syh
 I0Y0Jo5dDQCmTCR+CE/nrxd5lYoKdMR7e+2v9CTVjBmP6XENKFmHnNSbz/uaJyjPb9I0
 ngEQ==
X-Gm-Message-State: AOAM532LQvEsCjbbBwomx6u6TFEz3/NbhI4cDTYOzeTFqtIR7U7ia2zv
 Y8CESdUpLNhrVH270JUvmvI=
X-Google-Smtp-Source: ABdhPJxq+5r6rsbGVRnA+BHTxEpxsB0txfJ5N+oR+bIEG1QMeuAp4hoiy+aMouQ3Bq/wkAWw37ZERw==
X-Received: by 2002:a6b:5805:: with SMTP id m5mr12475060iob.1.1604981424596;
 Mon, 09 Nov 2020 20:10:24 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:23 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/10] staging: rtl8723bs: clean up open braces
Date: Mon,  9 Nov 2020 22:10:03 -0600
Message-Id: <20201110041008.15847-5-ross.schm.dev@gmail.com>
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

Move braces to fix coding style issues and clear checkpatch errors.
Some braces are removed for single statements.

ERROR: open brace '{' following function definitions go on the next line
ERROR: that open brace { should be on the previous line

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 167 ++++++------------
 1 file changed, 54 insertions(+), 113 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 736f1a6ac118..385705aafa5c 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1746,8 +1746,7 @@ static int rtw_cfg80211_set_cipher(struct security_priv *psecuritypriv, u32 ciph
 		return -ENOTSUPP;
 	}
 
-	if (ucast)
-	{
+	if (ucast) {
 		psecuritypriv->ndisencryptstatus = ndisencryptstatus;
 
 		/* if (psecuritypriv->dot11PrivacyAlgrthm >= _AES_) */
@@ -1819,10 +1818,8 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	}
 
 	pwpa = rtw_get_wpa_ie(buf, &wpa_ielen, ielen);
-	if (pwpa && wpa_ielen > 0)
-	{
-		if (rtw_parse_wpa_ie(pwpa, wpa_ielen+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS)
-		{
+	if (pwpa && wpa_ielen > 0) {
+		if (rtw_parse_wpa_ie(pwpa, wpa_ielen+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
 			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeWPAPSK;
 			memcpy(padapter->securitypriv.supplicant_ie, &pwpa[0], wpa_ielen+2);
@@ -1832,10 +1829,8 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	}
 
 	pwpa2 = rtw_get_wpa2_ie(buf, &wpa2_ielen, ielen);
-	if (pwpa2 && wpa2_ielen > 0)
-	{
-		if (rtw_parse_wpa2_ie(pwpa2, wpa2_ielen+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS)
-		{
+	if (pwpa2 && wpa2_ielen > 0) {
+		if (rtw_parse_wpa2_ie(pwpa2, wpa2_ielen+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
 			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeWPA2PSK;
 			memcpy(padapter->securitypriv.supplicant_ie, &pwpa2[0], wpa2_ielen+2);
@@ -1845,13 +1840,10 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	}
 
 	if (group_cipher == 0)
-	{
 		group_cipher = WPA_CIPHER_NONE;
-	}
+
 	if (pairwise_cipher == 0)
-	{
 		pairwise_cipher = WPA_CIPHER_NONE;
-	}
 
 	switch (group_cipher)
 	{
@@ -1954,8 +1946,7 @@ static int cfg80211_rtw_join_ibss(struct wiphy *wiphy, struct net_device *ndev,
 		goto exit;
 	}
 
-	if (!params->ssid || !params->ssid_len)
-	{
+	if (!params->ssid || !params->ssid_len) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -1981,8 +1972,7 @@ static int cfg80211_rtw_join_ibss(struct wiphy *wiphy, struct net_device *ndev,
 	ret = rtw_cfg80211_set_auth_type(psecuritypriv, NL80211_AUTHTYPE_OPEN_SYSTEM);
 	rtw_set_802_11_authentication_mode(padapter, psecuritypriv->ndisauthtype);
 
-	if (rtw_set_802_11_ssid(padapter, &ndis_ssid) == false)
-	{
+	if (rtw_set_802_11_ssid(padapter, &ndis_ssid) == false) {
 		ret = -1;
 		goto exit;
 	}
@@ -2004,8 +1994,7 @@ static int cfg80211_rtw_leave_ibss(struct wiphy *wiphy, struct net_device *ndev)
 
 	rtw_set_to_roam(padapter, 0);
 
-	if (check_fwstate(&padapter->mlmepriv, _FW_LINKED))
-	{
+	if (check_fwstate(&padapter->mlmepriv, _FW_LINKED)) {
 		rtw_scan_abort(padapter);
 		LeaveAllPowerSaveMode(padapter);
 
@@ -2041,8 +2030,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 		sme->privacy, sme->key, sme->key_len, sme->key_idx);
 
 
-	if (adapter_wdev_data(padapter)->block == true)
-	{
+	if (adapter_wdev_data(padapter)->block == true) {
 		ret = -EBUSY;
 		DBG_871X("%s wdev_priv.block is set\n", __func__);
 		goto exit;
@@ -2059,8 +2047,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 		goto exit;
 	}
 
-	if (!sme->ssid || !sme->ssid_len)
-	{
+	if (!sme->ssid || !sme->ssid_len) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -2119,10 +2106,8 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 	}
 
 	/* For WEP Shared auth */
-	if ((psecuritypriv->dot11AuthAlgrthm == dot11AuthAlgrthm_Shared
-		|| psecuritypriv->dot11AuthAlgrthm == dot11AuthAlgrthm_Auto) && sme->key
-	)
-	{
+	if ((psecuritypriv->dot11AuthAlgrthm == dot11AuthAlgrthm_Shared ||
+	    psecuritypriv->dot11AuthAlgrthm == dot11AuthAlgrthm_Auto) && sme->key) {
 		u32 wep_key_idx, wep_key_len, wep_total_len;
 		struct ndis_802_11_wep	 *pwep = NULL;
 		DBG_871X("%s(): Shared/Auto WEP\n", __func__);
@@ -2135,8 +2120,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 			goto exit;
 		}
 
-		if (wep_key_len > 0)
-		{
+		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 			pwep = rtw_malloc(wep_total_len);
@@ -2151,13 +2135,11 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
-			if (wep_key_len == 13)
-			{
+			if (wep_key_len == 13) {
 				padapter->securitypriv.dot11PrivacyAlgrthm = _WEP104_;
 				padapter->securitypriv.dot118021XGrpPrivacy = _WEP104_;
 			}
-		}
-		else {
+		} else {
 			ret = -EINVAL;
 			goto exit;
 		}
@@ -2168,9 +2150,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 		memcpy(pwep->KeyMaterial,  (void *)sme->key, pwep->KeyLength);
 
 		if (rtw_set_802_11_add_wep(padapter, pwep) == (u8)_FAIL)
-		{
 			ret = -EOPNOTSUPP;
-		}
 
 		kfree(pwep);
 
@@ -2290,17 +2270,14 @@ static int cfg80211_rtw_set_pmksa(struct wiphy *wiphy,
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
 	if (!memcmp((u8 *)pmksa->bssid, strZeroMacAddress, ETH_ALEN))
-	{
 		return -EINVAL;
-	}
 
 	blInserted = false;
 
 	/* overwrite PMKID */
-	for (index = 0 ; index < NUM_PMKID_CACHE; index++)
-	{
-		if (!memcmp(psecuritypriv->PMKIDList[index].Bssid, (u8 *)pmksa->bssid, ETH_ALEN))
-		{ /*  BSSID is matched, the same AP => rewrite with new PMKID. */
+	for (index = 0 ; index < NUM_PMKID_CACHE; index++) {
+		if (!memcmp(psecuritypriv->PMKIDList[index].Bssid, (u8 *)pmksa->bssid, ETH_ALEN)) {
+			/*  BSSID is matched, the same AP => rewrite with new PMKID. */
 			DBG_871X(FUNC_NDEV_FMT" BSSID exists in the PMKList.\n", FUNC_NDEV_ARG(ndev));
 
 			memcpy(psecuritypriv->PMKIDList[index].PMKID, (u8 *)pmksa->pmkid, WLAN_PMKID_LEN);
@@ -2311,8 +2288,7 @@ static int cfg80211_rtw_set_pmksa(struct wiphy *wiphy,
 		}
 	}
 
-	if (!blInserted)
-	{
+	if (!blInserted) {
 		/*  Find a new entry */
 		DBG_871X(FUNC_NDEV_FMT" Use the new entry index = %d for this PMKID.\n",
 			FUNC_NDEV_ARG(ndev), psecuritypriv->PMKIDIndex);
@@ -2323,9 +2299,7 @@ static int cfg80211_rtw_set_pmksa(struct wiphy *wiphy,
 		psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
 		psecuritypriv->PMKIDIndex++;
 		if (psecuritypriv->PMKIDIndex == 16)
-		{
 			psecuritypriv->PMKIDIndex = 0;
-		}
 	}
 
 	return 0;
@@ -2341,10 +2315,12 @@ static int cfg80211_rtw_del_pmksa(struct wiphy *wiphy,
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	for (index = 0 ; index < NUM_PMKID_CACHE; index++)
-	{
-		if (!memcmp(psecuritypriv->PMKIDList[index].Bssid, (u8 *)pmksa->bssid, ETH_ALEN))
-		{ /*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
+	for (index = 0 ; index < NUM_PMKID_CACHE; index++) {
+		if (!memcmp(psecuritypriv->PMKIDList[index].Bssid, (u8 *)pmksa->bssid, ETH_ALEN)) {
+			/*
+			 * BSSID is matched, the same AP => Remove this PMKID information
+			 * and reset it.
+			 */
 			eth_zero_addr(psecuritypriv->PMKIDList[index].Bssid);
 			memset(psecuritypriv->PMKIDList[index].PMKID, 0x00, WLAN_PMKID_LEN);
 			psecuritypriv->PMKIDList[index].bUsed = false;
@@ -2353,8 +2329,7 @@ static int cfg80211_rtw_del_pmksa(struct wiphy *wiphy,
 		}
 	}
 
-	if (false == bMatched)
-	{
+	if (false == bMatched) {
 		DBG_871X(FUNC_NDEV_FMT" do not have matched BSSID\n"
 			, FUNC_NDEV_ARG(ndev));
 		return -EINVAL;
@@ -2441,8 +2416,7 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 	if (unlikely(skb->len < rtap_len))
 		goto fail;
 
-	if (rtap_len != 14)
-	{
+	if (rtap_len != 14) {
 		DBG_8192C("radiotap len (should be 14): %d\n", rtap_len);
 		goto fail;
 	}
@@ -2478,11 +2452,8 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 		/* Use the real net device to transmit the packet */
 		return _rtw_xmit_entry(skb, padapter->pnetdev);
 
-	}
-	else if ((frame_control & (IEEE80211_FCTL_FTYPE|IEEE80211_FCTL_STYPE))
-		== (IEEE80211_FTYPE_MGMT|IEEE80211_STYPE_ACTION)
-	)
-	{
+	} else if ((frame_control & (IEEE80211_FCTL_FTYPE|IEEE80211_FCTL_STYPE)) ==
+		   (IEEE80211_FTYPE_MGMT|IEEE80211_STYPE_ACTION)) {
 		/* only for action frames */
 		struct xmit_frame		*pmgntframe;
 		struct pkt_attrib	*pattrib;
@@ -2511,9 +2482,7 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 
 		/* starting alloc mgmt frame to dump it */
 		if ((pmgntframe = alloc_mgtxmitframe(pxmitpriv)) == NULL)
-		{
 			goto fail;
-		}
 
 		/* update attribute */
 		pattrib = &pmgntframe->attrib;
@@ -2538,9 +2507,7 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 
 		dump_mgntframe(padapter, pmgntframe);
 
-	}
-	else
-	{
+	} else {
 		DBG_8192C("frame_control = 0x%x\n", frame_control & (IEEE80211_FCTL_FTYPE|IEEE80211_FCTL_STYPE));
 	}
 
@@ -2738,12 +2705,9 @@ static int rtw_add_beacon(struct adapter *adapter, const u8 *head, size_t head_l
 	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, _VENDOR_SPECIFIC_IE_, P2P_OUI, 4);
 	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, _VENDOR_SPECIFIC_IE_, WFD_OUI, 4);
 
-	if (rtw_check_beacon_data(adapter, pbuf,  len) == _SUCCESS)
-	{
+	if (rtw_check_beacon_data(adapter, pbuf,  len) == _SUCCESS) {
 		ret = 0;
-	}
-	else
-	{
+	} else {
 		ret = -EINVAL;
 	}
 
@@ -2819,15 +2783,13 @@ static int cfg80211_rtw_del_station(struct wiphy *wiphy, struct net_device *ndev
 
 	DBG_871X("+"FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	if (check_fwstate(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)) != true)
-	{
+	if (check_fwstate(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)) != true) {
 		DBG_8192C("%s, fw_state != FW_LINKED|WIFI_AP_STATE\n", __func__);
 		return -EINVAL;
 	}
 
 
-	if (!mac)
-	{
+	if (!mac) {
 		DBG_8192C("flush all sta, and cam_entry\n");
 
 		flush_all_cam_entry(padapter);	/* clear CAM */
@@ -2842,8 +2804,7 @@ static int cfg80211_rtw_del_station(struct wiphy *wiphy, struct net_device *ndev
 
 	if (mac[0] == 0xff && mac[1] == 0xff &&
 	    mac[2] == 0xff && mac[3] == 0xff &&
-	    mac[4] == 0xff && mac[5] == 0xff)
-	{
+	    mac[4] == 0xff && mac[5] == 0xff) {
 		return -EINVAL;
 	}
 
@@ -2854,20 +2815,15 @@ static int cfg80211_rtw_del_station(struct wiphy *wiphy, struct net_device *ndev
 	plist = get_next(phead);
 
 	/* check asoc_queue */
-	while (phead != plist)
-	{
+	while (phead != plist) {
 		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 
 		plist = get_next(plist);
 
-		if (!memcmp((u8 *)mac, psta->hwaddr, ETH_ALEN))
-		{
-			if (psta->dot8021xalg == 1 && psta->bpairwise_key_installed == false)
-			{
+		if (!memcmp((u8 *)mac, psta->hwaddr, ETH_ALEN)) {
+			if (psta->dot8021xalg == 1 && psta->bpairwise_key_installed == false) {
 				DBG_8192C("%s, sta's dot8021xalg = 1 and key_installed = false\n", __func__);
-			}
-			else
-			{
+			} else {
 				DBG_8192C("free psta =%p, aid =%d\n", psta, psta->aid);
 
 				list_del_init(&psta->asoc_list);
@@ -2913,8 +2869,7 @@ static struct sta_info *rtw_sta_info_get_by_idx(const int idx, struct sta_priv *
 	plist = get_next(phead);
 
 	/* check asoc_queue */
-	while (phead != plist)
-	{
+	while (phead != plist) {
 		if (idx == i) psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 		i++;
@@ -2935,8 +2890,7 @@ static int	cfg80211_rtw_dump_station(struct wiphy *wiphy, struct net_device *nde
 	spin_lock_bh(&pstapriv->asoc_list_lock);
 	psta = rtw_sta_info_get_by_idx(idx, pstapriv);
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
-	if (NULL == psta)
-	{
+	if (NULL == psta) {
 		DBG_871X("Station is not found\n");
 		ret = -ENOENT;
 		goto exit;
@@ -2998,8 +2952,7 @@ static int _cfg80211_rtw_mgmt_tx(struct adapter *padapter, u8 tx_ch, const u8 *b
 	}
 
 	/* starting alloc mgmt frame to dump it */
-	if ((pmgntframe = alloc_mgtxmitframe(pxmitpriv)) == NULL)
-	{
+	if ((pmgntframe = alloc_mgtxmitframe(pxmitpriv)) == NULL) {
 		/* ret = -ENOMEM; */
 		ret = _FAIL;
 		goto exit;
@@ -3025,18 +2978,14 @@ static int _cfg80211_rtw_mgmt_tx(struct adapter *padapter, u8 tx_ch, const u8 *b
 
 	pattrib->last_txcmdsz = pattrib->pktlen;
 
-	if (dump_mgntframe_and_wait_ack(padapter, pmgntframe) != _SUCCESS)
-	{
+	if (dump_mgntframe_and_wait_ack(padapter, pmgntframe) != _SUCCESS) {
 		ack = false;
 		ret = _FAIL;
 
 		#ifdef DEBUG_CFG80211
 		DBG_8192C("%s, ack == _FAIL\n", __func__);
 		#endif
-	}
-	else
-	{
-
+	} else {
 		msleep(50);
 
 		#ifdef DEBUG_CFG80211
@@ -3129,9 +3078,7 @@ static int cfg80211_rtw_mgmt_tx(struct wiphy *wiphy,
 		rtw_clear_scan_deny(padapter);
 		break;
 	case P2P_INVIT_RESP:
-		if (pwdev_priv->invit_info.flags & BIT(0)
-			&& pwdev_priv->invit_info.status == 0)
-		{
+		if (pwdev_priv->invit_info.flags & BIT(0) && pwdev_priv->invit_info.status == 0) {
 			DBG_871X(FUNC_ADPT_FMT" agree with invitation of persistent group\n",
 				FUNC_ADPT_ARG(padapter));
 			rtw_set_scan_deny(padapter, 5000);
@@ -3148,10 +3095,9 @@ static int cfg80211_rtw_mgmt_tx(struct wiphy *wiphy,
 }
 
 #if defined(CONFIG_PNO_SUPPORT)
-static int cfg80211_rtw_sched_scan_start(struct wiphy *wiphy,
-		struct net_device *dev,
-		struct cfg80211_sched_scan_request *request) {
-
+static int cfg80211_rtw_sched_scan_start(struct wiphy *wiphy, struct net_device *dev,
+					 struct cfg80211_sched_scan_request *request)
+{
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	int ret;
@@ -3190,8 +3136,8 @@ static int cfg80211_rtw_sched_scan_start(struct wiphy *wiphy,
 	return ret;
 }
 
-static int cfg80211_rtw_sched_scan_stop(struct wiphy *wiphy,
-		struct net_device *dev) {
+static int cfg80211_rtw_sched_scan_stop(struct wiphy *wiphy, struct net_device *dev)
+{
 	return rtw_android_pno_enable(dev, false);
 }
 #endif /* CONFIG_PNO_SUPPORT */
@@ -3229,24 +3175,19 @@ static void rtw_cfg80211_init_ht_capab(struct ieee80211_sta_ht_cap *ht_cap, enum
 	 *if BW_40 rx_mask[4]= 0x01;
 	 *highest supported RX rate
 	 */
-	if (rf_type == RF_1T1R)
-	{
+	if (rf_type == RF_1T1R) {
 		ht_cap->mcs.rx_mask[0] = 0xFF;
 		ht_cap->mcs.rx_mask[1] = 0x00;
 		ht_cap->mcs.rx_mask[4] = 0x01;
 
 		ht_cap->mcs.rx_highest = cpu_to_le16(MAX_BIT_RATE_40MHZ_MCS7);
-	}
-	else if ((rf_type == RF_1T2R) || (rf_type == RF_2T2R))
-	{
+	} else if ((rf_type == RF_1T2R) || (rf_type == RF_2T2R)) {
 		ht_cap->mcs.rx_mask[0] = 0xFF;
 		ht_cap->mcs.rx_mask[1] = 0xFF;
 		ht_cap->mcs.rx_mask[4] = 0x01;
 
 		ht_cap->mcs.rx_highest = cpu_to_le16(MAX_BIT_RATE_40MHZ_MCS15);
-	}
-	else
-	{
+	} else {
 		DBG_8192C("%s, error rf_type =%d\n", __func__, rf_type);
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
