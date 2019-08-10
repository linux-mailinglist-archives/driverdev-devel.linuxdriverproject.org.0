Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2042887B6
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Aug 2019 05:18:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6A1C86AC1;
	Sat, 10 Aug 2019 03:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AFeM5F2ygoyK; Sat, 10 Aug 2019 03:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E45E85D68;
	Sat, 10 Aug 2019 03:18:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 696BF1BF9C2
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 03:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 620BD85D68
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 03:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Om9efzJh1rB5 for <devel@linuxdriverproject.org>;
 Sat, 10 Aug 2019 03:18:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D388885C5C
 for <devel@driverdev.osuosl.org>; Sat, 10 Aug 2019 03:18:35 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id l9so97722810qtu.6
 for <devel@driverdev.osuosl.org>; Fri, 09 Aug 2019 20:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WJddZWMyI+rZIrJFeuHLoZvwjkmICGrI4ySSN33A32k=;
 b=pH0SC+xCVSMwFD2D17wlDdT0SyqVvNRZlRGy8PMMbqTm7oeXndpTQYh9Ek+CxbmxiB
 iItRMN71wl3wfhpdd5aAAxGyU1ez41QK5Jtkb5NpubsIsW9N5keYN8wOGKtqR4B1TU/E
 N3t6W6H/CRSYIra7W15AQDNhGK7lSLM5J/dCpFireMf0AKXtPIzSkBjqUUg/HNthCcD4
 sSkPUyuYMNOqbAb3lUt2GNRiGiX5IxW/dmD4wuUEETWfkobmCAXApQu32wru9EcTw6+4
 n9d/VFh7LkcRtXrt2GD6KpR4WsUtENx7HYL/gE151remKoibkwYc6KNRA08wRDpGY6Jr
 ccPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WJddZWMyI+rZIrJFeuHLoZvwjkmICGrI4ySSN33A32k=;
 b=i2Xod5L392+wIMiF7YGjGiAv9SlsnMTZthenuoTUiHtq7OnKGuv2aGTEnyPyGs9W4m
 92eIum1PjaWXGGRShUUMOItp7Ea+5FXTLeRjB6W6+h84ABXRwGQtRnyHXKhwxO6KGTCc
 XCzHodchaaIjUG2cuPUth7XHtZsa9GqYKwY4NsAxjmqsXScS33O2VVeViYvSCJaTdjYr
 1LNgJJdbreODIzFamKJexjLDc0rjf9izvZ9ntd6HvEn9aq5AhxbvEFda6wG50V9H+P29
 I6Ak778KAVBpJmxTKQXoYnGhHthrbEDRgMIFsfomGjYbtvv/Z9PPtEvHrbgj9sqPDbsN
 LhGA==
X-Gm-Message-State: APjAAAUn6YrgKZZntMdbDkpYAeJQw5abFUR2Fy22iM2ouVc5cAadNY38
 lGUPehH0euABlmNTrpQ2qeD235du
X-Google-Smtp-Source: APXvYqzyrN7msqJvniicieUosmxIGWJ4h77uUWbDJabC4p+wfZOxPKwq39zNk6fH9uDFEFUodPMerw==
X-Received: by 2002:ac8:520e:: with SMTP id r14mr21226913qtn.50.1565407114482; 
 Fri, 09 Aug 2019 20:18:34 -0700 (PDT)
Received: from localhost.localdomain (minicloud.parqtec.unicamp.br.
 [143.106.167.126])
 by smtp.gmail.com with ESMTPSA id 125sm1631658qkl.36.2019.08.09.20.18.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 09 Aug 2019 20:18:34 -0700 (PDT)
From: Hugo Eduardo Ziviani <hugoziviani@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: drivers: rtl8712: removing unnecessary parenthesis
Date: Fri,  9 Aug 2019 23:18:23 -0400
Message-Id: <20190810031823.14033-1-hugoziviani@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: hugoziviani@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch error "CHECK: Remove unecessary parenthesis in drivers/staging/rtl8712/rtl871x_mlme.c"

Signed-off-by: Hugo Eduardo Ziviani <hugoziviani@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 89 +++++++++++++-------------
 1 file changed, 44 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index b34f9919cd93..cddb24242ace 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -45,9 +45,9 @@ int r8712_init_mlme_priv(struct _adapter *padapter)
 	/* Maybe someday we should rename this variable to "active_mode"(Jeff)*/
 	pmlmepriv->passive_mode = 1; /* 1: active, 0: passive. */
 	spin_lock_init(&pmlmepriv->lock);
-	spin_lock_init(&(pmlmepriv->lock2));
-	_init_queue(&(pmlmepriv->free_bss_pool));
-	_init_queue(&(pmlmepriv->scanned_queue));
+	spin_lock_init(&pmlmepriv->lock2);
+	_init_queue(&pmlmepriv->free_bss_pool);
+	_init_queue(&pmlmepriv->scanned_queue);
 	set_scanned_network_val(pmlmepriv, 0);
 	memset(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));
 	pbuf = kmalloc_array(MAX_BSS_CNT, sizeof(struct wlan_network),
@@ -57,9 +57,9 @@ int r8712_init_mlme_priv(struct _adapter *padapter)
 	pmlmepriv->free_bss_buf = pbuf;
 	pnetwork = (struct wlan_network *)pbuf;
 	for (i = 0; i < MAX_BSS_CNT; i++) {
-		INIT_LIST_HEAD(&(pnetwork->list));
-		list_add_tail(&(pnetwork->list),
-				 &(pmlmepriv->free_bss_pool.queue));
+		INIT_LIST_HEAD(&pnetwork->list);
+		list_add_tail(&pnetwork->list,
+				&pmlmepriv->free_bss_pool.queue);
 		pnetwork++;
 	}
 	pmlmepriv->sitesurveyctrl.last_rx_pkts = 0;
@@ -93,7 +93,7 @@ static void _free_network(struct mlme_priv *pmlmepriv,
 {
 	u32 curr_time, delta_time;
 	unsigned long irqL;
-	struct  __queue *free_queue = &(pmlmepriv->free_bss_pool);
+	struct  __queue *free_queue = &pmlmepriv->free_bss_pool;
 
 	if (!pnetwork)
 		return;
@@ -220,8 +220,8 @@ int r8712_is_same_ibss(struct _adapter *adapter, struct wlan_network *pnetwork)
 	int ret = true;
 	struct security_priv *psecuritypriv = &adapter->securitypriv;
 
-	if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
-		    (pnetwork->network.Privacy == cpu_to_le32(0)))
+	if (psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_ &&
+	    pnetwork->network.Privacy == cpu_to_le32(0))
 		ret = false;
 	else if ((psecuritypriv->PrivacyAlgrthm == _NO_PRIVACY_) &&
 		 (pnetwork->network.Privacy == cpu_to_le32(1)))
@@ -286,7 +286,7 @@ static void update_network(struct wlan_bssid_ex *dst,
 	struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;
 
 	if (check_fwstate(&padapter->mlmepriv, _FW_LINKED) &&
-	    is_same_network(&(padapter->mlmepriv.cur_network.network), src)) {
+	    is_same_network(&padapter->mlmepriv.cur_network.network, src)) {
 		if (padapter->recvpriv.signal_qual_data.total_num++ >=
 		    PHY_LINKQUALITY_SLID_WIN_MAX) {
 			padapter->recvpriv.signal_qual_data.total_num =
@@ -318,8 +318,8 @@ static void update_current_network(struct _adapter *adapter,
 {
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 
-	if (is_same_network(&(pmlmepriv->cur_network.network), pnetwork)) {
-		update_network(&(pmlmepriv->cur_network.network),
+	if (is_same_network(&pmlmepriv->cur_network.network, pnetwork)) {
+		update_network(&pmlmepriv->cur_network.network,
 			       pnetwork, adapter);
 		r8712_update_protection(adapter,
 			       (pmlmepriv->cur_network.network.IEs) +
@@ -428,8 +428,8 @@ static int is_desired_network(struct _adapter *adapter,
 			return true;
 		return false;
 	}
-	if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
-		    (pnetwork->network.Privacy == 0))
+	if (psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_ &&
+	    pnetwork->network.Privacy == 0)
 		bselected = false;
 	if (check_fwstate(&adapter->mlmepriv, WIFI_ADHOC_STATE)) {
 		if (pnetwork->network.InfrastructureMode !=
@@ -486,7 +486,7 @@ void r8712_survey_event_callback(struct _adapter *adapter, u8 *pbuf)
 	spin_lock_irqsave(&pmlmepriv->lock2, flags);
 	/* update IBSS_network 's timestamp */
 	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
-		if (!memcmp(&(pmlmepriv->cur_network.network.MacAddress),
+		if (!memcmp(&pmlmepriv->cur_network.network.MacAddress,
 		    pnetwork->MacAddress, ETH_ALEN)) {
 			struct wlan_network *ibss_wlan = NULL;
 
@@ -539,7 +539,7 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 						  msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 				} else {
 					struct wlan_bssid_ex *pdev_network =
-					  &(adapter->registrypriv.dev_network);
+					&adapter->registrypriv.dev_network;
 					u8 *pibss =
 						 adapter->registrypriv.
 							dev_network.MacAddress;
@@ -600,11 +600,10 @@ void r8712_free_assoc_resources(struct _adapter *adapter)
 	if (pwlan)
 		pwlan->fixed = false;
 
-	if (((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) &&
-	     (adapter->stapriv.asoc_sta_count == 1)))
+	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)
+	    && adapter->stapriv.asoc_sta_count == 1)
 		free_network_nolock(pmlmepriv, pwlan);
 }
-
 /*
  * r8712_indicate_connect: the caller has to lock pmlmepriv->lock
  */
@@ -872,7 +871,7 @@ void r8712_stassoc_event_callback(struct _adapter *adapter, u8 *pbuf)
 {
 	unsigned long irqL;
 	struct sta_info *psta;
-	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	struct stassoc_event *pstassoc	= (struct stassoc_event *)pbuf;
 
 	/* to do: */
@@ -941,7 +940,7 @@ void r8712_stadel_event_callback(struct _adapter *adapter, u8 *pbuf)
 				free_network_nolock(pmlmepriv, pwlan);
 			}
 			/*re-create ibss*/
-			pdev_network = &(adapter->registrypriv.dev_network);
+			pdev_network = &adapter->registrypriv.dev_network;
 			pibss = adapter->registrypriv.dev_network.MacAddress;
 			memcpy(pdev_network, &tgt_network->network,
 				r8712_get_wlan_bssid_ex_sz(&tgt_network->
@@ -1017,8 +1016,8 @@ void _r8712_sitesurvey_ctrl_handler(struct _adapter *adapter)
 			  (psitesurveyctrl->last_rx_pkts);
 	psitesurveyctrl->last_tx_pkts = adapter->xmitpriv.tx_pkts;
 	psitesurveyctrl->last_rx_pkts = adapter->recvpriv.rx_pkts;
-	if ((current_tx_pkts > pregistrypriv->busy_thresh) ||
-	    (current_rx_pkts > pregistrypriv->busy_thresh))
+	if (current_tx_pkts > pregistrypriv->busy_thresh ||
+	    current_rx_pkts > pregistrypriv->busy_thresh)
 		psitesurveyctrl->traffic_busy = true;
 	else
 		psitesurveyctrl->traffic_busy = false;
@@ -1080,8 +1079,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 	pmlmepriv->pscanned = phead->next;
 	while (1) {
 		if (end_of_queue_search(phead, pmlmepriv->pscanned)) {
-			if ((pmlmepriv->assoc_by_rssi) &&
-			    (pnetwork_max_rssi != NULL)) {
+			if (pmlmepriv->assoc_by_rssi &&
+			    pnetwork_max_rssi != NULL) {
 				pnetwork = pnetwork_max_rssi;
 				goto ask_for_joinbss;
 			}
@@ -1115,10 +1114,10 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 		}
 		dst_ssid = pnetwork->network.Ssid.Ssid;
 		src_ssid = pmlmepriv->assoc_ssid.Ssid;
-		if ((pnetwork->network.Ssid.SsidLength ==
-		    pmlmepriv->assoc_ssid.SsidLength) &&
-		    (!memcmp(dst_ssid, src_ssid,
-		     pmlmepriv->assoc_ssid.SsidLength))) {
+		if (pnetwork->network.Ssid.SsidLength ==
+		    pmlmepriv->assoc_ssid.SsidLength &&
+		    !memcmp(dst_ssid, src_ssid,
+		     pmlmepriv->assoc_ssid.SsidLength)) {
 			if (pmlmepriv->assoc_by_rssi) {
 				/* if the ssid is the same, select the bss
 				 * which has the max rssi
@@ -1322,15 +1321,15 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 	uint ndisauthmode = psecuritypriv->ndisauthtype;
 	uint ndissecuritytype = psecuritypriv->ndisencryptstatus;
 
-	if ((ndisauthmode == Ndis802_11AuthModeWPA) ||
+	if ((ndisauthmode == Ndis802_11AuthModeWPA ||
 	    (ndisauthmode == Ndis802_11AuthModeWPAPSK)) {
 		authmode = _WPA_IE_ID_;
 		uncst_oui[0] = 0x0;
 		uncst_oui[1] = 0x50;
 		uncst_oui[2] = 0xf2;
 	}
-	if ((ndisauthmode == Ndis802_11AuthModeWPA2) ||
-	    (ndisauthmode == Ndis802_11AuthModeWPA2PSK)) {
+	if (ndisauthmode == Ndis802_11AuthModeWPA2 ||
+	    ndisauthmode == Ndis802_11AuthModeWPA2PSK) {
 		authmode = _WPA2_IE_ID_;
 		uncst_oui[0] = 0x0;
 		uncst_oui[1] = 0x0f;
@@ -1357,8 +1356,8 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 	match = false;
 	while (cnt < in_len) {
 		if (in_ie[cnt] == authmode) {
-			if ((authmode == _WPA_IE_ID_) &&
-			    (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) {
+			if (authmode == _WPA_IE_ID_ &&
+			    !memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4)) {
 				memcpy(&sec_ie[0], &in_ie[cnt],
 					in_ie[cnt + 1] + 2);
 				match = true;
@@ -1370,9 +1369,8 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 				match = true;
 				break;
 			}
-			if (((authmode == _WPA_IE_ID_) &&
-			     (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) ||
-			     (authmode == _WPA2_IE_ID_))
+			if (authmode == _WPA_IE_ID_ && !memcmp(&in_ie[cnt + 2],
+			    &wpa_oui[0], 4) || authmode == _WPA2_IE_ID_)
 				memcpy(&bkup_ie[0], &in_ie[cnt],
 					in_ie[cnt + 1] + 2);
 		}
@@ -1390,7 +1388,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 					match = false;
 					break;
 				}
-				if ((sec_ie[6] != 0x01) || (sec_ie[7] != 0x0)) {
+				if (sec_ie[6] != 0x01 || sec_ie[7] != 0x0) {
 					/*IE Ver error*/
 					match = false;
 					break;
@@ -1457,7 +1455,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 			 * algorithm, and set the bc/mc encryption algorithm
 			 */
 			while (true) {
-				if ((sec_ie[2] != 0x01) || (sec_ie[3] != 0x0)) {
+				if (sec_ie[2] != 0x01 || sec_ie[3] != 0x0) {
 					/*IE Ver error*/
 					match = false;
 					break;
@@ -1516,7 +1514,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 			}
 		}
 	}
-	if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {
+	if (authmode == _WPA_IE_ID_ || authmode == _WPA2_IE_ID_) {
 		/*copy fixed ie*/
 		memcpy(out_ie, in_ie, 12);
 		ielength = 12;
@@ -1605,7 +1603,8 @@ void r8712_update_registrypriv_dev_network(struct _adapter *adapter)
 	pdev_network->Configuration.DSConfig = pregistrypriv->channel;
 	if (cur_network->network.InfrastructureMode == Ndis802_11IBSS)
 		pdev_network->Configuration.ATIMWindow = 3;
-	pdev_network->InfrastructureMode = cur_network->network.InfrastructureMode;
+	pdev_network->InfrastructureMode =
+	cur_network->network.InfrastructureMode;
 	/* 1. Supported rates
 	 * 2. IE
 	 */
@@ -1651,7 +1650,7 @@ unsigned int r8712_restructure_ht_ie(struct _adapter *padapter, u8 *in_ie,
 
 	phtpriv->ht_option = 0;
 	p = r8712_get_ie(in_ie + 12, _HT_CAPABILITY_IE_, &ielen, in_len - 12);
-	if (p && (ielen > 0)) {
+	if (p && ielen > 0) {
 		if (pqospriv->qos_option == 0) {
 			out_len = *pout_len;
 			r8712_set_ie(out_ie + out_len, _VENDOR_SPECIFIC_IE_,
@@ -1688,13 +1687,13 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ht_priv *phtpriv = &pmlmepriv->htpriv;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
-	struct wlan_network *pcur_network = &(pmlmepriv->cur_network);
+	struct wlan_network *pcur_network = &pmlmepriv->cur_network;
 
 	if (!phtpriv->ht_option)
 		return;
 	/* maybe needs check if ap supports rx ampdu. */
 	if (!phtpriv->ampdu_enable &&
-	    (pregistrypriv->ampdu_enable == 1))
+	    pregistrypriv->ampdu_enable == 1)
 		phtpriv->ampdu_enable = true;
 	/*check Max Rx A-MPDU Size*/
 	len = 0;
@@ -1743,7 +1742,7 @@ void r8712_issue_addbareq_cmd(struct _adapter *padapter, int priority)
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ht_priv	 *phtpriv = &pmlmepriv->htpriv;
 
-	if ((phtpriv->ht_option == 1) && (phtpriv->ampdu_enable)) {
+	if (phtpriv->ht_option == 1 && phtpriv->ampdu_enable) {
 		if (!phtpriv->baddbareq_issued[priority]) {
 			r8712_addbareq_cmd(padapter, (u8)priority);
 			phtpriv->baddbareq_issued[priority] = true;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
