Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8477256C8E
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Aug 2020 09:25:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 123A986130;
	Sun, 30 Aug 2020 07:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fTFJu8riBM-Q; Sun, 30 Aug 2020 07:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C1DE860BF;
	Sun, 30 Aug 2020 07:25:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B23C1BF3C8
 for <devel@linuxdriverproject.org>; Sun, 30 Aug 2020 07:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 576FB874BA
 for <devel@linuxdriverproject.org>; Sun, 30 Aug 2020 07:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zcysOwN-hXnI for <devel@linuxdriverproject.org>;
 Sun, 30 Aug 2020 07:25:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5377C865A1
 for <devel@driverdev.osuosl.org>; Sun, 30 Aug 2020 07:25:10 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id z9so2606021wmk.1
 for <devel@driverdev.osuosl.org>; Sun, 30 Aug 2020 00:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VPiBR+IFmIzObZTcdx2S0DkTF10U26GSNfgxXK/Y/lA=;
 b=KR9eEA1V7sH5gRc/USA47zybfDisVNbEfxl/0Ll4v6mK3OOkpigtwTqcedk0cBv4ru
 EHiNu8ozTuWmg/vsxjNn3YWR6Ry0rv2cujAHmVfWeYZl0aEm1W82B3yVGRqN1KGRcS5r
 kiUx+j5MrTpa0Fuu0R3OcWpWsmhI+vWY7NrDCAYd+DSwDsZYF7URv7F1I8XTpTRUmlpI
 b9C/KtlCSVjFgFNqaqJDm+WwngBs/yja32WyyWwvcwbP3T81p1emzhLdqXYQNgeuTVOz
 6gotGCQ2YO/taTqDNoDkxLtK5kE5AWSROW5p6gwKjMOyFc7OsFmZEDoWWS6BYKIH18T/
 NlMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VPiBR+IFmIzObZTcdx2S0DkTF10U26GSNfgxXK/Y/lA=;
 b=mjDHP7d/9N/nC4RmLiXD+1ZsAhD5kfWgFJ9MBrTEeg1SAo23JA8PcuIlMu7UIFWmSA
 9glq2ihuPqmbhSkHhQfSr7aLXfBqRF8kozJ6mhP7b3yx5dN0cuTdwKFbHW4xi4tGQFuK
 uRhsSn/bXesvfm2Wrg/dXefqZwVyIfPRvqqz9ZuQ9SxrUJnamQOdsTrPM8kGxrHb1UP2
 HlCbeCQp8hXkUqNQ00nKLUyb0lDHlPM1XubTywAoxvBhykCj4O+AOOYzuzPXkxG9zmn3
 cxpAfs6+LP9sZZS125KGH4wxp4ITWdubcefKbUka9Wk6Ae9PHFe9QkuU9hkiE2aa5W5Y
 h2YQ==
X-Gm-Message-State: AOAM530YaxsiH4aUt9dyEL4SDc6k9LoNKIIEPTQrwig3i+Ct5/JOHjwS
 EI1F6OPkbtAzYtwKYZwSANc=
X-Google-Smtp-Source: ABdhPJx43vBmrSLx6eYQ7l4YkKuyvutjWpoDz/Wr6v9Xljw1PNXBxCYJpL9K6KIqkYhB78ZvUvAQSA==
X-Received: by 2002:a7b:c5c1:: with SMTP id n1mr5696128wmk.125.1598772308527; 
 Sun, 30 Aug 2020 00:25:08 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-212.178.006.pools.vodafone-ip.de. [178.6.252.212])
 by smtp.gmail.com with ESMTPSA id 22sm5844173wmk.10.2020.08.30.00.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Aug 2020 00:25:07 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: use __func__ in os_dep
Date: Sun, 30 Aug 2020 09:21:40 +0200
Message-Id: <20200830072140.14178-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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

Use __func__ instead of hardcoded function names to clear
checkpatch warnings.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 80 +++++++++----------
 drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 36 ++++-----
 drivers/staging/rtl8188eu/os_dep/usb_intf.c   | 14 ++--
 3 files changed, 65 insertions(+), 65 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 13f12edd81cd..dbcfdd7cae32 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -314,26 +314,26 @@ static int wpa_set_auth_algs(struct net_device *dev, u32 value)
 	int ret = 0;
 
 	if ((value & AUTH_ALG_SHARED_KEY) && (value & AUTH_ALG_OPEN_SYSTEM)) {
-		DBG_88E("wpa_set_auth_algs, AUTH_ALG_SHARED_KEY and  AUTH_ALG_OPEN_SYSTEM [value:0x%x]\n", value);
+		DBG_88E("%s, AUTH_ALG_SHARED_KEY and  AUTH_ALG_OPEN_SYSTEM [value:0x%x]\n", __func__, value);
 		padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
 		padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeAutoSwitch;
 		padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_Auto;
 	} else if (value & AUTH_ALG_SHARED_KEY) {
-		DBG_88E("wpa_set_auth_algs, AUTH_ALG_SHARED_KEY  [value:0x%x]\n", value);
+		DBG_88E("%s, AUTH_ALG_SHARED_KEY  [value:0x%x]\n", __func__, value);
 		padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
 
 		padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeShared;
 		padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_Shared;
 	} else if (value & AUTH_ALG_OPEN_SYSTEM) {
-		DBG_88E("wpa_set_auth_algs, AUTH_ALG_OPEN_SYSTEM\n");
+		DBG_88E("%s, AUTH_ALG_OPEN_SYSTEM\n", __func__);
 		if (padapter->securitypriv.ndisauthtype < Ndis802_11AuthModeWPAPSK) {
 			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeOpen;
 			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_Open;
 		}
 	} else if (value & AUTH_ALG_LEAP) {
-		DBG_88E("wpa_set_auth_algs, AUTH_ALG_LEAP\n");
+		DBG_88E("%s, AUTH_ALG_LEAP\n", __func__);
 	} else {
-		DBG_88E("wpa_set_auth_algs, error!\n");
+		DBG_88E("%s, error!\n", __func__);
 		ret = -EINVAL;
 	}
 	return ret;
@@ -367,8 +367,8 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	}
 
 	if (strcmp(param->u.crypt.alg, "WEP") == 0) {
-		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("wpa_set_encryption, crypt.alg = WEP\n"));
-		DBG_88E("wpa_set_encryption, crypt.alg = WEP\n");
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("%s, crypt.alg = WEP\n", __func__));
+		DBG_88E("%s, crypt.alg = WEP\n", __func__);
 
 		padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
 		padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
@@ -390,7 +390,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 			wep_total_len = wep_key_len + offsetof(struct ndis_802_11_wep, KeyMaterial);
 			pwep = (struct ndis_802_11_wep *)rtw_malloc(wep_total_len);
 			if (!pwep) {
-				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
+				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("%s: pwep allocate fail !!!\n", __func__));
 				goto exit;
 			}
 			memset(pwep, 0, wep_total_len);
@@ -603,8 +603,8 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 	}
 
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-		 ("rtw_set_wpa_ie: pairwise_cipher = 0x%08x padapter->securitypriv.ndisencryptstatus =%d padapter->securitypriv.ndisauthtype =%d\n",
-		 pairwise_cipher, padapter->securitypriv.ndisencryptstatus, padapter->securitypriv.ndisauthtype));
+		 ("%s: pairwise_cipher = 0x%08x padapter->securitypriv.ndisencryptstatus =%d padapter->securitypriv.ndisauthtype =%d\n",
+		  __func__, pairwise_cipher, padapter->securitypriv.ndisencryptstatus, padapter->securitypriv.ndisauthtype));
 exit:
 	kfree(buf);
 	return ret;
@@ -660,7 +660,7 @@ static int rtw_wx_set_freq(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+rtw_wx_set_freq\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+%s\n", __func__));
 	return 0;
 }
 
@@ -740,7 +740,7 @@ static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_get_mode\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s\n", __func__));
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 		wrqu->mode = IW_MODE_INFRA;
@@ -769,7 +769,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 
 	memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
 	if (pPMK->cmd == IW_PMKSA_ADD) {
-		DBG_88E("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
+		DBG_88E("[%s] IW_PMKSA_ADD!\n", __func__);
 		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
 			return ret;
 		ret = true;
@@ -779,7 +779,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		for (j = 0; j < NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
-				DBG_88E("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
+				DBG_88E("[%s] BSSID exists in the PMKList.\n", __func__);
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 				psecuritypriv->PMKIDList[j].bUsed = true;
 				psecuritypriv->PMKIDIndex = j + 1;
@@ -790,8 +790,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 
 		if (!blInserted) {
 			/*  Find a new entry */
-			DBG_88E("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
-				psecuritypriv->PMKIDIndex);
+			DBG_88E("[%s] Use the new entry index = %d for this PMKID.\n",
+				__func__, psecuritypriv->PMKIDIndex);
 
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
@@ -802,7 +802,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				psecuritypriv->PMKIDIndex = 0;
 		}
 	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
-		DBG_88E("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
+		DBG_88E("[%s] IW_PMKSA_REMOVE!\n", __func__);
 		ret = true;
 		for (j = 0; j < NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
@@ -813,7 +813,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			}
 		}
 	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
-		DBG_88E("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
+		DBG_88E("[%s] IW_PMKSA_FLUSH!\n", __func__);
 		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
 		ret = true;
@@ -842,7 +842,7 @@ static int rtw_wx_get_range(struct net_device *dev,
 	u16 val;
 	int i;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_range. cmd_code =%x\n", info->cmd));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s. cmd_code =%x\n", __func__, info->cmd));
 
 	wrqu->data.length = sizeof(*range);
 	memset(range, 0, sizeof(*range));
@@ -1009,7 +1009,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 
 	eth_zero_addr(wrqu->ap_addr.sa_data);
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_wap\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s\n", __func__));
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED) ||
 	    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
@@ -1062,7 +1062,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ndis_802_11_ssid ssid[RTW_SSID_SCAN_AMOUNT];
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_set_scan\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s\n", __func__));
 
 	if (_FAIL == rtw_pwr_wakeup(padapter)) {
 		ret = -1;
@@ -1122,7 +1122,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 
 			spin_unlock_bh(&pmlmepriv->lock);
 		} else if (req->scan_type == IW_SCAN_TYPE_PASSIVE) {
-			DBG_88E("rtw_wx_set_scan, req->scan_type == IW_SCAN_TYPE_PASSIVE\n");
+			DBG_88E("%s, req->scan_type == IW_SCAN_TYPE_PASSIVE\n", __func__);
 		}
 	} else {
 		if (wrqu->data.length >= WEXT_CSCAN_HEADER_SIZE &&
@@ -1198,7 +1198,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 	u32 wait_for_surveydone;
 	int wait_status;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s\n", __func__));
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, (" Start of Query SIOCGIWSCAN .\n"));
 
 	if (padapter->pwrctrlpriv.brfoffbyhw && padapter->bDriverStopped) {
@@ -1267,7 +1267,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 	uint ret = 0, len;
 
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-		 ("+rtw_wx_set_essid: fw_state = 0x%08x\n", get_fwstate(pmlmepriv)));
+		 ("+%s: fw_state = 0x%08x\n", __func__, get_fwstate(pmlmepriv)));
 	if (_FAIL == rtw_pwr_wakeup(padapter)) {
 		ret = -1;
 		goto exit;
@@ -1301,7 +1301,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 		memcpy(ndis_ssid.ssid, extra, len);
 		src_ssid = ndis_ssid.ssid;
 
-		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("rtw_wx_set_essid: ssid =[%s]\n", src_ssid));
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("%s: ssid =[%s]\n", __func__, src_ssid));
 		spin_lock_bh(&queue->lock);
 		phead = get_list_head(queue);
 		pmlmepriv->pscanned = phead->next;
@@ -1314,13 +1314,13 @@ static int rtw_wx_set_essid(struct net_device *dev,
 			dst_ssid = pnetwork->network.ssid.ssid;
 
 			RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-				 ("rtw_wx_set_essid: dst_ssid =%s\n",
+				 ("%s: dst_ssid =%s\n", __func__,
 				  pnetwork->network.ssid.ssid));
 
 			if ((!memcmp(dst_ssid, src_ssid, ndis_ssid.ssid_length)) &&
 			    (pnetwork->network.ssid.ssid_length == ndis_ssid.ssid_length)) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-					 ("rtw_wx_set_essid: find match, set infra mode\n"));
+					 ("%s: find match, set infra mode\n", __func__));
 
 				if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
 					if (pnetwork->network.InfrastructureMode != pmlmepriv->cur_network.network.InfrastructureMode)
@@ -1361,7 +1361,7 @@ static int rtw_wx_get_essid(struct net_device *dev,
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_essid\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s\n", __func__));
 
 	if ((check_fwstate(pmlmepriv, _FW_LINKED)) ||
 	    (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE))) {
@@ -1388,7 +1388,7 @@ static int rtw_wx_set_rate(struct net_device *dev,
 	u32	ratevalue = 0;
 	u8 mpdatarate[NumRates] = {11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0xff};
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_set_rate\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s\n", __func__));
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("target_rate = %d, fixed = %d\n", target_rate, fixed));
 
 	if (target_rate == -1) {
@@ -1568,7 +1568,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
-	DBG_88E("+rtw_wx_set_enc, flags = 0x%x\n", erq->flags);
+	DBG_88E("+%s, flags = 0x%x\n", __func__, erq->flags);
 
 	memset(&wep, 0, sizeof(struct ndis_802_11_wep));
 
@@ -1594,12 +1594,12 @@ static int rtw_wx_set_enc(struct net_device *dev,
 	} else {
 		keyindex_provided = 0;
 		key = padapter->securitypriv.dot11PrivacyKeyIndex;
-		DBG_88E("rtw_wx_set_enc, key =%d\n", key);
+		DBG_88E("%s, key =%d\n", __func__, key);
 	}
 
 	/* set authentication mode */
 	if (erq->flags & IW_ENCODE_OPEN) {
-		DBG_88E("rtw_wx_set_enc():IW_ENCODE_OPEN\n");
+		DBG_88E("%s():IW_ENCODE_OPEN\n", __func__);
 		padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;/* Ndis802_11EncryptionDisabled; */
 		padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_Open;
 		padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
@@ -1607,7 +1607,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 		authmode = Ndis802_11AuthModeOpen;
 		padapter->securitypriv.ndisauthtype = authmode;
 	} else if (erq->flags & IW_ENCODE_RESTRICTED) {
-		DBG_88E("rtw_wx_set_enc():IW_ENCODE_RESTRICTED\n");
+		DBG_88E("%s():IW_ENCODE_RESTRICTED\n", __func__);
 		padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
 		padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_Shared;
 		padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
@@ -1615,7 +1615,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 		authmode = Ndis802_11AuthModeShared;
 		padapter->securitypriv.ndisauthtype = authmode;
 	} else {
-		DBG_88E("rtw_wx_set_enc():erq->flags = 0x%x\n", erq->flags);
+		DBG_88E("%s():erq->flags = 0x%x\n", __func__, erq->flags);
 
 		padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;/* Ndis802_11EncryptionDisabled; */
 		padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_Open;
@@ -1946,7 +1946,7 @@ static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 			break;
 		}
 		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-			 ("wpa_set_param:padapter->securitypriv.ndisauthtype =%d\n", padapter->securitypriv.ndisauthtype));
+			 ("%s:padapter->securitypriv.ndisauthtype =%d\n", __func__, padapter->securitypriv.ndisauthtype));
 		break;
 	case IEEE_PARAM_TKIP_COUNTERMEASURES:
 		break;
@@ -2186,7 +2186,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	} else {
 		psta = rtw_get_stainfo(pstapriv, param->sta_addr);
 		if (!psta) {
-			DBG_88E("rtw_set_encryption(), sta has already been removed or never been added\n");
+			DBG_88E("%s(), sta has already been removed or never been added\n", __func__);
 			goto exit;
 		}
 	}
@@ -2434,7 +2434,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
-	DBG_88E("rtw_add_sta(aid =%d) =%pM\n", param->u.add_sta.aid, (param->sta_addr));
+	DBG_88E("%s(aid =%d) =%pM\n", __func__, param->u.add_sta.aid, (param->sta_addr));
 
 	if (!check_fwstate(pmlmepriv, (_FW_LINKED | WIFI_AP_STATE)))
 		return -EINVAL;
@@ -2488,7 +2488,7 @@ static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	int updated = 0;
 
-	DBG_88E("rtw_del_sta =%pM\n", (param->sta_addr));
+	DBG_88E("%s =%pM\n", __func__, (param->sta_addr));
 
 	if (!check_fwstate(pmlmepriv, _FW_LINKED | WIFI_AP_STATE))
 		return -EINVAL;
@@ -2508,7 +2508,7 @@ static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 		associated_clients_update(padapter, updated);
 		psta = NULL;
 	} else {
-		DBG_88E("rtw_del_sta(), sta has already been removed or never been added\n");
+		DBG_88E("%s(), sta has already been removed or never been added\n", __func__);
 	}
 
 	return 0;
@@ -2578,7 +2578,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
-	DBG_88E("rtw_get_sta_wpaie, sta_addr: %pM\n", (param->sta_addr));
+	DBG_88E("%s, sta_addr: %pM\n", __func__, (param->sta_addr));
 
 	if (!check_fwstate(pmlmepriv, _FW_LINKED | WIFI_AP_STATE))
 		return -EINVAL;
diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index de16db16d473..e291df87f620 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -335,7 +335,7 @@ static int rtw_start_drv_threads(struct adapter *padapter)
 {
 	int err = 0;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_start_drv_threads\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
 
 	padapter->cmdThread = kthread_run(rtw_cmd_thread, padapter,
 					  "RTW_CMD_THREAD");
@@ -350,7 +350,7 @@ static int rtw_start_drv_threads(struct adapter *padapter)
 
 void rtw_stop_drv_threads(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
 
 	/* Below is to terminate rtw_cmd_thread & event_thread... */
 	complete(&padapter->cmdpriv.cmd_queue_comp);
@@ -433,7 +433,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 {
 	u8 ret8 = _SUCCESS;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_init_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
 
 	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
@@ -487,27 +487,27 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 	rtw_hal_sreset_init(padapter);
 
 exit:
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_init_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-%s\n", __func__));
 
 	return ret8;
 }
 
 void rtw_cancel_all_timer(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_cancel_all_timer\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
 
 	del_timer_sync(&padapter->mlmepriv.assoc_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel association timer complete!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel association timer complete!\n", __func__));
 
 	del_timer_sync(&padapter->mlmepriv.scan_to_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel scan_to_timer!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel scan_to_timer!\n", __func__));
 
 	del_timer_sync(&padapter->mlmepriv.dynamic_chk_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel dynamic_chk_timer!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel dynamic_chk_timer!\n", __func__));
 
 	/*  cancel sw led timer */
 	rtw_hal_sw_led_deinit(padapter);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel DeInitSwLeds!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel DeInitSwLeds!\n", __func__));
 
 	del_timer_sync(&padapter->pwrctrlpriv.pwr_state_check_timer);
 
@@ -516,7 +516,7 @@ void rtw_cancel_all_timer(struct adapter *padapter)
 
 u8 rtw_free_drv_sw(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>rtw_free_drv_sw"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>%s", __func__));
 
 	free_mlme_ext_priv(&padapter->mlmeextpriv);
 
@@ -530,11 +530,11 @@ u8 rtw_free_drv_sw(struct adapter *padapter)
 
 	rtw_hal_free_data(padapter);
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<== rtw_free_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<== %s\n", __func__));
 
 	mutex_destroy(&padapter->hw_init_mutex);
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-%s\n", __func__));
 
 	return _SUCCESS;
 }
@@ -633,7 +633,7 @@ int  ips_netdrv_open(struct adapter *padapter)
 
 	status = rtw_hal_init(padapter);
 	if (status == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("ips_netdrv_open(): Can't init h/w!\n"));
+		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("%s(): Can't init h/w!\n", __func__));
 		goto netdev_open_error;
 	}
 
@@ -646,7 +646,7 @@ int  ips_netdrv_open(struct adapter *padapter)
 	return _SUCCESS;
 
 netdev_open_error:
-	DBG_88E("-ips_netdrv_open - drv_open failure, bup =%d\n", padapter->bup);
+	DBG_88E("-%s - drv_open failure, bup =%d\n", __func__, padapter->bup);
 
 	return _FAIL;
 }
@@ -656,14 +656,14 @@ int rtw_ips_pwr_up(struct adapter *padapter)
 	int result;
 	unsigned long start_time = jiffies;
 
-	DBG_88E("===>  rtw_ips_pwr_up..............\n");
+	DBG_88E("===>  %s..............\n", __func__);
 	rtw_reset_drv_sw(padapter);
 
 	result = ips_netdrv_open(padapter);
 
 	led_control_8188eu(padapter, LED_CTL_NO_LINK);
 
-	DBG_88E("<===  rtw_ips_pwr_up.............. in %dms\n",
+	DBG_88E("<===  %s.............. in %dms\n", __func__,
 		jiffies_to_msecs(jiffies - start_time));
 	return result;
 }
@@ -672,14 +672,14 @@ void rtw_ips_pwr_down(struct adapter *padapter)
 {
 	unsigned long start_time = jiffies;
 
-	DBG_88E("===> rtw_ips_pwr_down...................\n");
+	DBG_88E("===> %s...................\n", __func__);
 
 	padapter->net_closed = true;
 
 	led_control_8188eu(padapter, LED_CTL_POWER_OFF);
 
 	rtw_ips_dev_unload(padapter);
-	DBG_88E("<=== rtw_ips_pwr_down..................... in %dms\n",
+	DBG_88E("<=== %s..................... in %dms\n", __func__,
 		jiffies_to_msecs(jiffies - start_time));
 }
 
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index f7f09c0d273f..cbf82f915303 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -141,7 +141,7 @@ static void usb_dvobj_deinit(struct usb_interface *usb_intf)
 
 void usb_intf_stop(struct adapter *padapter)
 {
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+usb_intf_stop\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+%s\n", __func__));
 
 	/* disable_hw_interrupt */
 	if (!padapter->bSurpriseRemoved) {
@@ -159,15 +159,15 @@ void usb_intf_stop(struct adapter *padapter)
 
 	/* todo:cancel other irps */
 
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-usb_intf_stop\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-%s\n", __func__));
 }
 
 static void rtw_dev_unload(struct adapter *padapter)
 {
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+rtw_dev_unload\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+%s\n", __func__));
 
 	if (padapter->bup) {
-		pr_debug("===> rtw_dev_unload\n");
+		pr_debug("===> %s\n", __func__);
 		padapter->bDriverStopped = true;
 		if (padapter->xmitpriv.ack_tx)
 			rtw_ack_tx_done(&padapter->xmitpriv, RTW_SCTX_DONE_DRV_STOP);
@@ -189,9 +189,9 @@ static void rtw_dev_unload(struct adapter *padapter)
 			 ("r871x_dev_unload():padapter->bup == false\n"));
 	}
 
-	pr_debug("<=== rtw_dev_unload\n");
+	pr_debug("<=== %s\n", __func__);
 
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-rtw_dev_unload\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-%s\n", __func__));
 }
 
 static int rtw_suspend(struct usb_interface *pusb_intf, pm_message_t message)
@@ -486,7 +486,7 @@ static void rtw_dev_remove(struct usb_interface *pusb_intf)
 	struct dvobj_priv *dvobj = usb_get_intfdata(pusb_intf);
 	struct adapter *padapter = dvobj->if1;
 
-	pr_debug("+rtw_dev_remove\n");
+	pr_debug("+%s\n", __func__);
 	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+dev_remove()\n"));
 
 	if (!pusb_intf->unregistering)
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
