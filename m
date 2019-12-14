Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA8411F153
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 11:10:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B35D87FBE;
	Sat, 14 Dec 2019 10:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SxwRioE3Ezp3; Sat, 14 Dec 2019 10:10:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F68687F08;
	Sat, 14 Dec 2019 10:10:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 120861BF2FF
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 10:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 060AB20406
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 10:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I8f1NBAY-y-K for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 10:10:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F2F9203D6
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 10:10:26 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id w15so1429864wru.4
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 02:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fk/m8uo1mogjHWbDuscOm21fb0kGZHxoZxF4ZhwJvdE=;
 b=Luv78JG35pvM6LkZLiY4j33EB7mNM2bj4AqXrsAo5xH2AcfdbmyrwTHiesWhC/OtY0
 BcavaiY0w44Q9tktWeVyxIpoX8U0fdVIyr50DBznFr4QBKQ1GNtopoE39E/V0KcpUr90
 iF36+93w98Ew3dzumBPgaxlL+DEiUXNqWBWxEQGGw7Qfgd4PNp+mYdL+Pd1qS9imkXJp
 vdFXa8tbx16g09Q3YFwVE9AydcrCeL8/QSSSWwiCPrykjpG6vy1LO5K6bQI0ssql1f3J
 Ht1O/C6Am33ser8DSMcBYDErQP9CYWXSFvb6CcU6gYnaKQmrsSyk0CP+Wtla65TJUyUN
 HQAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fk/m8uo1mogjHWbDuscOm21fb0kGZHxoZxF4ZhwJvdE=;
 b=A5q0rV/Unm2MyWmpELNneogumyIRsnedDsY2u42fbO8n0ALvsIDP39MRrYpUU/p6gB
 JSkesF/IRcL46LvoJPdfMDDgHIaDdq7/b6f6AVENAFcDAXIqt63Ns3lI7XarCxWO0roh
 BJmqWemNOQ9LquihYpvQrBUIqgdW8PDFLKTXUaTSwetdKQQRtMleunCa6uxDStHdCArp
 k/XldJOqPImNC0od5XnjAn5Zib4vi8BL+XCAa6gIgbotj/WPPxitYN3PQeA6NY/fvODi
 hGyMdRZeoEGhO020UyKURc+pA2QKQ7ikVEP5VIFydTZ6GvIf4WJu0eKdKkLea1Zf8cuA
 JEzA==
X-Gm-Message-State: APjAAAXf/XY8biK3IiAgx1R4IsD82hfFoykxKWF0dhLZRukubC+8SzPc
 4+IKwxEz0WzC8DruhI+k8Rk=
X-Google-Smtp-Source: APXvYqxGvUFPDsNNOUfOtJHydQm4ZJG/Cxu/SPhpJGPo3TZC3QgHDisdtkGHUEIkIdozmsaNRKZ+MA==
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr17115745wrk.53.1576318224804; 
 Sat, 14 Dec 2019 02:10:24 -0800 (PST)
Received: from localhost.localdomain
 (ipservice-092-219-207-064.092.219.pools.vodafone-ip.de. [92.219.207.64])
 by smtp.gmail.com with ESMTPSA id n3sm13844189wmc.27.2019.12.14.02.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 02:10:24 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: cleanup comparsions to NULL in
 rtw_mlme_ext.c
Date: Sat, 14 Dec 2019 11:09:54 +0100
Message-Id: <20191214100955.16670-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.0
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

Cleanup comparsions to NULL reported by checkpatch.
if (x == NULL) -> if (!x)
if (x != NULL) -> if (x)

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 38 +++++++++----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index e984b4605e91..e122ef165085 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -751,7 +751,7 @@ static void issue_auth(struct adapter *padapter, struct sta_info *psta,
 	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		return;
 
 	/* update attribute */
@@ -980,7 +980,7 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 				break;
 			}
 
-			if ((pbuf == NULL) || (ie_len == 0))
+			if (!pbuf || ie_len == 0)
 				break;
 		}
 	}
@@ -1120,7 +1120,7 @@ static void issue_assocreq(struct adapter *padapter)
 	/* HT caps */
 	if (padapter->mlmepriv.htpriv.ht_option) {
 		p = rtw_get_ie((pmlmeinfo->network.ies + sizeof(struct ndis_802_11_fixed_ie)), _HT_CAPABILITY_IE_, &ie_len, (pmlmeinfo->network.ie_length - sizeof(struct ndis_802_11_fixed_ie)));
-		if ((p != NULL) && (!(is_ap_in_tkip(padapter)))) {
+		if (p && !is_ap_in_tkip(padapter)) {
 			memcpy(&pmlmeinfo->HT_caps, p + 2, sizeof(struct ieee80211_ht_cap));
 
 			/* to disable 40M Hz support while gd_bw_40MHz_en = 0 */
@@ -1263,7 +1263,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da,
 	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;
 
 	/* da == NULL, assume it's null data for sta to ap*/
-	if (da == NULL)
+	if (!da)
 		da = pnetwork->MacAddress;
 
 	do {
@@ -1392,7 +1392,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
 	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;
 
 	/* da == NULL, assume it's null data for sta to ap*/
-	if (da == NULL)
+	if (!da)
 		da = pnetwork->MacAddress;
 
 	do {
@@ -1444,7 +1444,7 @@ static int _issue_deauth(struct adapter *padapter, unsigned char *da,
 	__le16 le_tmp;
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -1780,7 +1780,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 			pbss_network = (struct wlan_bssid_ex *)&pnetwork->network;
 
 			p = rtw_get_ie(pbss_network->ies + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pbss_network->ie_length - _FIXED_IE_LENGTH_);
-			if ((p == NULL) || (len == 0)) { /* non-HT */
+			if (!p || len == 0) { /* non-HT */
 				if ((pbss_network->Configuration.DSConfig <= 0) || (pbss_network->Configuration.DSConfig > 14))
 					continue;
 
@@ -1833,7 +1833,7 @@ unsigned int send_delba(struct adapter *padapter, u8 initiator, u8 *addr)
 			return _SUCCESS;
 
 	psta = rtw_get_stainfo(pstapriv, addr);
-	if (psta == NULL)
+	if (!psta)
 		return _SUCCESS;
 
 	if (initiator == 0) { /*  recipient */
@@ -2082,7 +2082,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 	/* checking rate info... */
 	i = 0;
 	p = rtw_get_ie(bssid->ies + ie_offset, _SUPPORTEDRATES_IE_, &len, bssid->ie_length - ie_offset);
-	if (p != NULL) {
+	if (p) {
 		if (len > NDIS_802_11_LENGTH_RATES_EX) {
 			DBG_88E("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
 			return _FAIL;
@@ -2596,7 +2596,7 @@ static unsigned int OnBeacon(struct adapter *padapter,
 
 		if (((pmlmeinfo->state & 0x03) == WIFI_FW_STATION_STATE) && (pmlmeinfo->state & WIFI_FW_ASSOC_SUCCESS)) {
 			psta = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
-			if (psta != NULL) {
+			if (psta) {
 				ret = rtw_check_bcn_info(padapter, pframe, len);
 				if (!ret) {
 						DBG_88E_LEVEL(_drv_info_, "ap has changed, disconnect now\n ");
@@ -2610,7 +2610,7 @@ static unsigned int OnBeacon(struct adapter *padapter,
 			}
 		} else if ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) {
 			psta = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
-			if (psta != NULL) {
+			if (psta) {
 				/* update WMM, ERP in the beacon */
 				/* todo: the timer is used instead of the number of the beacon received */
 				if ((sta_rx_pkts(psta) & 0xf) == 0)
@@ -2761,7 +2761,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + 4 + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, &ie_len,
 					len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_ - 4);
 
-			if ((p == NULL) || (ie_len <= 0)) {
+			if (!p || ie_len <= 0) {
 				DBG_88E("auth rejected because challenge failure!(1)\n");
 				status = _STATS_CHALLENGE_FAIL_;
 				goto auth_fail;
@@ -2855,7 +2855,7 @@ static unsigned int OnAuthClient(struct adapter *padapter,
 			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, &len,
 				pkt_len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_);
 
-			if (p == NULL)
+			if (!p)
 				goto authclnt_fail;
 
 			memcpy((void *)(pmlmeinfo->chg_txt), (void *)(p + 2), len);
@@ -2987,7 +2987,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 
 	/*  check if the supported rate is ok */
 	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SUPPORTEDRATES_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
-	if (p == NULL) {
+	if (!p) {
 		DBG_88E("Rx a sta assoc-req which supported rate is empty!\n");
 		/*  use our own rate set as statoin used */
 		/* memcpy(supportRate, AP_BSSRATE, AP_BSSRATE_LEN); */
@@ -3001,7 +3001,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 
 		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _EXT_SUPPORTEDRATES_IE_, &ie_len,
 				pkt_len - WLAN_HDR_A3_LEN - ie_offset);
-		if (p !=  NULL) {
+		if (p) {
 			if (supportRateNum <= sizeof(supportRate)) {
 				memcpy(supportRate+supportRateNum, p+2, ie_len);
 				supportRateNum += ie_len;
@@ -3146,7 +3146,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
 		for (;;) {
 			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
-			if (p != NULL) {
+			if (p) {
 				if (!memcmp(p+2, WMM_IE, 6)) {
 					pstat->flags |= WLAN_STA_WME;
 
@@ -3245,7 +3245,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		DBG_88E("  old AID %d\n", pstat->aid);
 	} else {
 		for (pstat->aid = 1; pstat->aid <= NUM_STA; pstat->aid++)
-			if (pstapriv->sta_aid[pstat->aid - 1] == NULL)
+			if (!pstapriv->sta_aid[pstat->aid - 1])
 				break;
 
 		/* if (pstat->aid > NUM_STA) { */
@@ -3958,7 +3958,7 @@ static void init_channel_list(struct adapter *padapter,
 			    ((o->bw == BW40MINUS) || (o->bw == BW40PLUS)))
 				continue;
 
-			if (reg == NULL) {
+			if (!reg) {
 				reg = &channel_list->reg_class[cla];
 				cla++;
 				reg->reg_class = o->op_class;
@@ -5333,7 +5333,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 
 	ptxBeacon_parm = kmemdup(&pmlmeinfo->network,
 				sizeof(struct wlan_bssid_ex), GFP_ATOMIC);
-	if (ptxBeacon_parm == NULL) {
+	if (!ptxBeacon_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
