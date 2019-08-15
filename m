Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1D38EF49
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 17:26:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5A3485F89;
	Thu, 15 Aug 2019 15:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QisIcF-3HIgu; Thu, 15 Aug 2019 15:26:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E06885FD4;
	Thu, 15 Aug 2019 15:26:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 451271BF3CE
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 15:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3FCA5203D6
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 15:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rN7GKF8AaKvq for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 15:26:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id AABCA20035
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 15:26:50 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id m2so2100422qkd.10
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 08:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pGXgn185xXn8D1jIn3nQXsKz3jifkUTT+EJlRIf3WdU=;
 b=KCBr+V1tF61IplS7JMhUY8Im9B9RL+MUmN6L3kFwkYeDGe1NSEL5ojvggAbm8bY6Tl
 UlztU1Nk0Gj7ERSAXI8ZwpSq44doeyv/2PIC8/FszUak30BzJZhFUIGvRDzM0hxmq/t4
 uBRlJoYW3H46IUPfH3Zsm5Q1I2pYUsZDKneDkWhx8I7DS3b0dbPcbPUe5ZIRShS5a9rF
 tcqCsIYUJB7xJFedYKWKvTKMoPRkVymFOU8xDvFxe60meMMmLsZVycSu0bdee7GAZOI0
 oXO4voV28eRk976CyFvh8TWgDK7Ry4kU/VlVfgTJGmErKNjbKom/nK/X7aUQmYbkM+9r
 ZPng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pGXgn185xXn8D1jIn3nQXsKz3jifkUTT+EJlRIf3WdU=;
 b=j7mCKJHYii2oXvvZqTHTQg/FOWGh9OnJzEMeHpN5sIbFMVnlZp0PK7VDlwtLuFYIl3
 EL8B6g46fQAc6ApziBYQTNzNXzQuqKBBXdvoG5WMlqfAh3X0OuSPWYyo+DurtNw+z6/U
 ibsLzOFtLwi7WTZx3hBcQ++7AnuSezhtkIimA8ovOM7tibS5hT2+O5KcwXv/LVcfLbXE
 ZeppX0fOEqy2S7ZTVzUsNgPBuHLX3MYT/l7UyBnidDLznO62XWuR2RFuq7RPatCRPe2n
 THqdLC9or6Smnbul84DSyHGZqKCJCIGmdKUuYrbouDGkhQHRRv9Cp2kqMpZXlwm2Uxgj
 v8QA==
X-Gm-Message-State: APjAAAWaDbv9vqzU2ilCGOtbkpEHRWzPja1SHiv8putaz3+i3T6sViHE
 pejQlOu0qQC1flo64jF1Gf1gXMR3
X-Google-Smtp-Source: APXvYqylcn+6cvKz6lkLG36PAhRFm4sZZiYGZxrcFK7OZYl6jdoK7R6v35GAQr+Hu93fnwondZAObA==
X-Received: by 2002:ae9:e916:: with SMTP id x22mr4732866qkf.296.1565882809215; 
 Thu, 15 Aug 2019 08:26:49 -0700 (PDT)
Received: from localhost.localdomain (minicloud.parqtec.unicamp.br.
 [143.106.167.126])
 by smtp.gmail.com with ESMTPSA id o33sm1708717qtd.72.2019.08.15.08.26.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 08:26:48 -0700 (PDT)
From: hugoziviani <hugoziviani@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: drivers: rtl8712: removing unnecessary parenthesis
Date: Thu, 15 Aug 2019 11:26:40 -0400
Message-Id: <20190815152640.32265-1-hugoziviani@gmail.com>
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

Signed-off-by: hugoziviani <hugoziviani@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 84 +++++++++++++-------------
 1 file changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 3f17ef6f7..439eddcbf 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -44,10 +44,10 @@ static sint _init_mlme_priv(struct _adapter *padapter)
 				 Ndis802_11AutoUnknown;
 	/* Maybe someday we should rename this variable to "active_mode"(Jeff)*/
 	pmlmepriv->passive_mode = 1; /* 1: active, 0: passive. */
-	spin_lock_init(&(pmlmepriv->lock));
-	spin_lock_init(&(pmlmepriv->lock2));
-	_init_queue(&(pmlmepriv->free_bss_pool));
-	_init_queue(&(pmlmepriv->scanned_queue));
+	spin_lock_init(&pmlmepriv->lock);
+	spin_lock_init(&pmlmepriv->lock2);
+	_init_queue(&pmlmepriv->free_bss_pool);
+	_init_queue(&pmlmepriv->scanned_queue);
 	set_scanned_network_val(pmlmepriv, 0);
 	memset(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));
 	pbuf = kmalloc_array(MAX_BSS_CNT, sizeof(struct wlan_network),
@@ -57,9 +57,9 @@ static sint _init_mlme_priv(struct _adapter *padapter)
 	pmlmepriv->free_bss_buf = pbuf;
 	pnetwork = (struct wlan_network *)pbuf;
 	for (i = 0; i < MAX_BSS_CNT; i++) {
-		INIT_LIST_HEAD(&(pnetwork->list));
-		list_add_tail(&(pnetwork->list),
-				 &(pmlmepriv->free_bss_pool.queue));
+		INIT_LIST_HEAD(&pnetwork->list);
+		list_add_tail(&pnetwork->list,
+			      &pmlmepriv->free_bss_pool.queue);
 		pnetwork++;
 	}
 	pmlmepriv->sitesurveyctrl.last_rx_pkts = 0;
@@ -93,7 +93,7 @@ static void _free_network(struct mlme_priv *pmlmepriv,
 {
 	u32 curr_time, delta_time;
 	unsigned long irqL;
-	struct  __queue *free_queue = &(pmlmepriv->free_bss_pool);
+	struct  __queue *free_queue = &pmlmepriv->free_bss_pool;
 
 	if (pnetwork == NULL)
 		return;
@@ -244,8 +244,8 @@ int r8712_is_same_ibss(struct _adapter *adapter, struct wlan_network *pnetwork)
 	int ret = true;
 	struct security_priv *psecuritypriv = &adapter->securitypriv;
 
-	if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
-		    (pnetwork->network.Privacy == cpu_to_le32(0)))
+	if (psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_ &&
+	    pnetwork->network.Privacy == cpu_to_le32(0))
 		ret = false;
 	else if ((psecuritypriv->PrivacyAlgrthm == _NO_PRIVACY_) &&
 		 (pnetwork->network.Privacy == cpu_to_le32(1)))
@@ -310,7 +310,7 @@ static void update_network(struct wlan_bssid_ex *dst,
 	struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;
 
 	if (check_fwstate(&padapter->mlmepriv, _FW_LINKED) &&
-	    is_same_network(&(padapter->mlmepriv.cur_network.network), src)) {
+	    is_same_network(&padapter->mlmepriv.cur_network.network, src)) {
 		if (padapter->recvpriv.signal_qual_data.total_num++ >=
 		    PHY_LINKQUALITY_SLID_WIN_MAX) {
 			padapter->recvpriv.signal_qual_data.total_num =
@@ -342,8 +342,8 @@ static void update_current_network(struct _adapter *adapter,
 {
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 
-	if (is_same_network(&(pmlmepriv->cur_network.network), pnetwork)) {
-		update_network(&(pmlmepriv->cur_network.network),
+	if (is_same_network(&pmlmepriv->cur_network.network, pnetwork)) {
+		update_network(&pmlmepriv->cur_network.network,
 			       pnetwork, adapter);
 		r8712_update_protection(adapter,
 			       (pmlmepriv->cur_network.network.IEs) +
@@ -452,8 +452,8 @@ static int is_desired_network(struct _adapter *adapter,
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
@@ -510,7 +510,7 @@ void r8712_survey_event_callback(struct _adapter *adapter, u8 *pbuf)
 	spin_lock_irqsave(&pmlmepriv->lock2, flags);
 	/* update IBSS_network 's timestamp */
 	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
-		if (!memcmp(&(pmlmepriv->cur_network.network.MacAddress),
+		if (!memcmp(&pmlmepriv->cur_network.network.MacAddress,
 		    pnetwork->MacAddress, ETH_ALEN)) {
 			struct wlan_network *ibss_wlan = NULL;
 
@@ -564,7 +564,7 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 						  msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 				} else {
 					struct wlan_bssid_ex *pdev_network =
-					  &(adapter->registrypriv.dev_network);
+					  &adapter->registrypriv.dev_network;
 					u8 *pibss =
 						 adapter->registrypriv.
 							dev_network.MacAddress;
@@ -626,8 +626,8 @@ void r8712_free_assoc_resources(struct _adapter *adapter)
 	if (pwlan)
 		pwlan->fixed = false;
 
-	if (((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) &&
-	     (adapter->stapriv.asoc_sta_count == 1)))
+	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) &&
+	    adapter->stapriv.asoc_sta_count == 1)
 		free_network_nolock(pmlmepriv, pwlan);
 }
 
@@ -898,7 +898,7 @@ void r8712_stassoc_event_callback(struct _adapter *adapter, u8 *pbuf)
 {
 	unsigned long irqL;
 	struct sta_info *psta;
-	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	struct stassoc_event *pstassoc	= (struct stassoc_event *)pbuf;
 
 	/* to do: */
@@ -967,7 +967,7 @@ void r8712_stadel_event_callback(struct _adapter *adapter, u8 *pbuf)
 				free_network_nolock(pmlmepriv, pwlan);
 			}
 			/*re-create ibss*/
-			pdev_network = &(adapter->registrypriv.dev_network);
+			pdev_network = &adapter->registrypriv.dev_network;
 			pibss = adapter->registrypriv.dev_network.MacAddress;
 			memcpy(pdev_network, &tgt_network->network,
 				r8712_get_wlan_bssid_ex_sz(&tgt_network->
@@ -1043,8 +1043,8 @@ void _r8712_sitesurvey_ctrl_handler(struct _adapter *adapter)
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
@@ -1111,8 +1111,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
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
@@ -1148,8 +1148,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 		}
 		dst_ssid = pnetwork->network.Ssid.Ssid;
 		src_ssid = pmlmepriv->assoc_ssid.Ssid;
-		if ((pnetwork->network.Ssid.SsidLength ==
-		    pmlmepriv->assoc_ssid.SsidLength) &&
+		if (pnetwork->network.Ssid.SsidLength ==
+		    pmlmepriv->assoc_ssid.SsidLength &&
 		    (!memcmp(dst_ssid, src_ssid,
 		     pmlmepriv->assoc_ssid.SsidLength))) {
 			if (pmlmepriv->assoc_by_rssi) {
@@ -1355,15 +1355,15 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 	uint ndisauthmode = psecuritypriv->ndisauthtype;
 	uint ndissecuritytype = psecuritypriv->ndisencryptstatus;
 
-	if ((ndisauthmode == Ndis802_11AuthModeWPA) ||
-	    (ndisauthmode == Ndis802_11AuthModeWPAPSK)) {
+	if (ndisauthmode == Ndis802_11AuthModeWPA ||
+	    ndisauthmode == Ndis802_11AuthModeWPAPSK) {
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
@@ -1390,7 +1390,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 	match = false;
 	while (cnt < in_len) {
 		if (in_ie[cnt] == authmode) {
-			if ((authmode == _WPA_IE_ID_) &&
+			if (authmode == _WPA_IE_ID_ &&
 			    (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) {
 				memcpy(&sec_ie[0], &in_ie[cnt],
 					in_ie[cnt + 1] + 2);
@@ -1403,9 +1403,9 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 				match = true;
 				break;
 			}
-			if (((authmode == _WPA_IE_ID_) &&
-			     (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) ||
-			     (authmode == _WPA2_IE_ID_))
+			if (authmode == _WPA_IE_ID_ &&
+			    (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4)) ||
+			     authmode == _WPA2_IE_ID_)
 				memcpy(&bkup_ie[0], &in_ie[cnt],
 					in_ie[cnt + 1] + 2);
 		}
@@ -1423,7 +1423,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 					match = false;
 					break;
 				}
-				if ((sec_ie[6] != 0x01) || (sec_ie[7] != 0x0)) {
+				if (sec_ie[6] != 0x01 || sec_ie[7] != 0x0) {
 					/*IE Ver error*/
 					match = false;
 					break;
@@ -1490,7 +1490,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 			 * algorithm, and set the bc/mc encryption algorithm
 			 */
 			while (true) {
-				if ((sec_ie[2] != 0x01) || (sec_ie[3] != 0x0)) {
+				if (sec_ie[2] != 0x01 || sec_ie[3] != 0x0) {
 					/*IE Ver error*/
 					match = false;
 					break;
@@ -1549,7 +1549,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 			}
 		}
 	}
-	if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {
+	if (authmode == _WPA_IE_ID_ || authmode == _WPA2_IE_ID_) {
 		/*copy fixed ie*/
 		memcpy(out_ie, in_ie, 12);
 		ielength = 12;
@@ -1684,7 +1684,7 @@ unsigned int r8712_restructure_ht_ie(struct _adapter *padapter, u8 *in_ie,
 
 	phtpriv->ht_option = 0;
 	p = r8712_get_ie(in_ie + 12, _HT_CAPABILITY_IE_, &ielen, in_len - 12);
-	if (p && (ielen > 0)) {
+	if (p && ielen > 0) {
 		if (pqospriv->qos_option == 0) {
 			out_len = *pout_len;
 			r8712_set_ie(out_ie + out_len, _VENDOR_SPECIFIC_IE_,
@@ -1721,13 +1721,13 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
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
@@ -1776,7 +1776,7 @@ void r8712_issue_addbareq_cmd(struct _adapter *padapter, int priority)
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
