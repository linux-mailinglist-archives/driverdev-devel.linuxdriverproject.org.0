Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C24839F973
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 06:36:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 73BE924C2A;
	Wed, 28 Aug 2019 04:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vg7zxqprQ4U9; Wed, 28 Aug 2019 04:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 606552152C;
	Wed, 28 Aug 2019 04:35:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA1C1BF3C1
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 04:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99F64864B2
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 04:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19PVYd7Qwc4u for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 04:35:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com
 [136.143.188.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 013C4862C7
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 04:35:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566966948; cv=none; d=zoho.com; s=zohoarc; 
 b=X6DnzLSx8G2a/jySG0yb7J60Z8D1bHd2/Lm/YPy3ugOc5wMW9zRhtl6gFraZETyP9MHCBctG36DObB41f9kuw3sSz8cPMQz7c2NKwwHSJ8NnCXSZVVD91LDYR7XDn+/dBd1QhINgFnF4fYBYW08avlEb0aqq5F4/LxYyQ7w1iqw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566966948;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=kikqoJ0TjtZ4CxrJtQaQAaZ7Aru+k2N4yAWG/ret9Ew=; 
 b=dCsQY/ozqjt4FX+BNzGeJG0ro4aMEorhkxzuPbmrcUJSJrmbGSKuEpHDx5FiEYRqwEFM2q15sgpgcoYcxTJKHKHkeHvJXkqEPXJPcXwXvLSuxq3r63ssz1WusRZV+oRdY2QBs5qfnq9eFARj1ypAV8sZGyKyaemCTneNWTZQh/E=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566966948; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=13438; bh=kikqoJ0TjtZ4CxrJtQaQAaZ7Aru+k2N4yAWG/ret9Ew=;
 b=eAGsxofiBkvhWH5n2u9yNqeIWyP/8diHLsenF+0RsexZoevc7sl2rLeqAabrom5f
 Wx2KFeWTLGEelb3ohzBC+Og+y29R8Boa013wMwyxzvmTED4jJYrbYJbNLOBFffcb0A/
 +qKHp//6aMkBnsbyxqoSTmdNM1ihjUH71jt0DbOk=
Received: from localhost (c-73-241-204-195.hsd1.ca.comcast.net
 [73.241.204.195]) by mx.zohomail.com
 with SMTPS id 1566966947446263.7104538757318;
 Tue, 27 Aug 2019 21:35:47 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190828043542.3753-1-stephen@brennan.io>
Subject: [PATCH v2] staging: rtl8192u: Fix indentation
Date: Tue, 27 Aug 2019 21:35:42 -0700
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Checkpatch reports WARNING:SUSPECT_CODE_INDENT in several places. Fix
this by aligning code properly with tabs.

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---

Changes in v2: rebase on next-20190827, fixing conflict with spacing fixes.

 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c |   2 +-
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 112 +++++++++---------
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c |   2 +-
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c |   8 +-
 drivers/staging/rtl8192u/r819xU_firmware.c    |   2 +-
 5 files changed, 63 insertions(+), 63 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index a43a5d617bd9..c241cf484023 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -345,7 +345,7 @@ static int ieee80211_ccmp_set_key(void *key, int len, u8 *seq, void *priv)
 		}
 		if (crypto_aead_setauthsize(tfm, CCMP_MIC_LEN) ||
 		    crypto_aead_setkey(tfm, data->key, CCMP_TK_LEN))
-				return -1;
+			return -1;
 	} else if (len == 0) {
 		data->key_set = 0;
 	} else {
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index a1462ec55767..5c33bcb0db2e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -103,17 +103,17 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 	u8 tid;
 
 	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
-	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
-	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
-	  tid = UP2AC(tid);
-	  tid++;
+		hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
+		tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
+		tid = UP2AC(tid);
+		tid++;
 	} else if (IEEE80211_QOS_HAS_SEQ(fc)) {
-	  hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)hdr;
-	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
-	  tid = UP2AC(tid);
-	  tid++;
+		hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)hdr;
+		tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
+		tid = UP2AC(tid);
+		tid++;
 	} else {
-	  tid = 0;
+		tid = 0;
 	}
 
 	if (frag == 0) {
@@ -170,17 +170,17 @@ static int ieee80211_frag_cache_invalidate(struct ieee80211_device *ieee,
 	u8 tid;
 
 	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
-	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
-	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
-	  tid = UP2AC(tid);
-	  tid++;
+		hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
+		tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
+		tid = UP2AC(tid);
+		tid++;
 	} else if (IEEE80211_QOS_HAS_SEQ(fc)) {
-	  hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)hdr;
-	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
-	  tid = UP2AC(tid);
-	  tid++;
+		hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)hdr;
+		tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
+		tid = UP2AC(tid);
+		tid++;
 	} else {
-	  tid = 0;
+		tid = 0;
 	}
 
 	entry = ieee80211_frag_cache_find(ieee, seq, -1, tid, hdr->addr2,
@@ -425,17 +425,17 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 
 	//TO2DS and QoS
 	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
-	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)header;
-	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
-	  tid = UP2AC(tid);
-	  tid++;
+		hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)header;
+		tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
+		tid = UP2AC(tid);
+		tid++;
 	} else if (IEEE80211_QOS_HAS_SEQ(fc)) { //QoS
-	  hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)header;
-	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
-	  tid = UP2AC(tid);
-	  tid++;
+		hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)header;
+		tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
+		tid = UP2AC(tid);
+		tid++;
 	} else { // no QoS
-	  tid = 0;
+		tid = 0;
 	}
 
 	switch (ieee->iw_mode) {
@@ -993,7 +993,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	// if QoS enabled, should check the sequence for each of the AC
 	if ((!ieee->pHTInfo->bCurRxReorderEnable) || !ieee->current_network.qos_data.active || !IsDataFrame(skb->data) || IsLegacyDataFrame(skb->data)) {
 		if (is_duplicate_packet(ieee, hdr))
-		goto rx_dropped;
+			goto rx_dropped;
 
 	} else {
 		struct rx_ts_record *pRxTS = NULL;
@@ -1211,10 +1211,10 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 #ifdef CONFIG_IEEE80211_DEBUG
 	if (crypt && !(fc & IEEE80211_FCTL_WEP) &&
 	    ieee80211_is_eapol_frame(ieee, skb, hdrlen)) {
-			struct eapol *eap = (struct eapol *)(skb->data +
-				24);
-			IEEE80211_DEBUG_EAP("RX: IEEE 802.1X EAPOL frame: %s\n",
-						eap_get_type(eap->type));
+		struct eapol *eap = (struct eapol *)(skb->data +
+			24);
+		IEEE80211_DEBUG_EAP("RX: IEEE 802.1X EAPOL frame: %s\n",
+					eap_get_type(eap->type));
 	}
 #endif
 
@@ -1770,13 +1770,13 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				   info_element->data[2] == 0x4c &&
 				   info_element->data[3] == 0x033){
 
-						tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
-						if (tmp_htcap_len != 0) {
-							network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-							network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ? \
-								sizeof(network->bssht.bdHTCapBuf) : tmp_htcap_len;
-							memcpy(network->bssht.bdHTCapBuf, info_element->data, network->bssht.bdHTCapLen);
-						}
+					tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
+					if (tmp_htcap_len != 0) {
+						network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
+						network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ? \
+							sizeof(network->bssht.bdHTCapBuf) : tmp_htcap_len;
+						memcpy(network->bssht.bdHTCapBuf, info_element->data, network->bssht.bdHTCapLen);
+					}
 				}
 				if (tmp_htcap_len != 0)
 					network->bssht.bdSupportHT = true;
@@ -1792,17 +1792,17 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					info_element->data[2] == 0x4c &&
 					info_element->data[3] == 0x034){
 
-						tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
-						if (tmp_htinfo_len != 0) {
-							network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-							if (tmp_htinfo_len) {
-								network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf) ? \
-									sizeof(network->bssht.bdHTInfoBuf) : tmp_htinfo_len;
-								memcpy(network->bssht.bdHTInfoBuf, info_element->data, network->bssht.bdHTInfoLen);
-							}
-
+					tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
+					if (tmp_htinfo_len != 0) {
+						network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
+						if (tmp_htinfo_len) {
+							network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf) ? \
+								sizeof(network->bssht.bdHTInfoBuf) : tmp_htinfo_len;
+							memcpy(network->bssht.bdHTInfoBuf, info_element->data, network->bssht.bdHTInfoLen);
 						}
 
+					}
+
 				}
 			}
 
@@ -1822,7 +1822,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 						network->bssht.bdRT2RTAggregation = true;
 
 						if ((ht_realtek_agg_buf[4] == 1) && (ht_realtek_agg_buf[5] & 0x02))
-						network->bssht.bdRT2RTLongSlotTime = true;
+							network->bssht.bdRT2RTLongSlotTime = true;
 					}
 				}
 
@@ -1843,7 +1843,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					 info_element->data[1] == 0x10 &&
 					 info_element->data[2] == 0x18)){
 
-						network->broadcom_cap_exist = true;
+					network->broadcom_cap_exist = true;
 
 				}
 			}
@@ -2262,7 +2262,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	   src->wmm_param[1].aci_aifsn || \
 	   src->wmm_param[2].aci_aifsn || \
 	   src->wmm_param[3].aci_aifsn) {
-	  memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
+		memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
 	}
 	//dst->QoS_Enable = src->QoS_Enable;
 #ifdef THOMAS_TURBO
@@ -2401,11 +2401,11 @@ static inline void ieee80211_process_probe_response(
 	if (is_same_network(&ieee->current_network, network, ieee)) {
 		update_network(&ieee->current_network, network);
 		if ((ieee->current_network.mode == IEEE_N_24G || ieee->current_network.mode == IEEE_G)
-		&& ieee->current_network.berp_info_valid){
-		if (ieee->current_network.erp_value & ERP_UseProtection)
-			ieee->current_network.buseprotection = true;
-		else
-			ieee->current_network.buseprotection = false;
+		    && ieee->current_network.berp_info_valid){
+			if (ieee->current_network.erp_value & ERP_UseProtection)
+				ieee->current_network.buseprotection = true;
+			else
+				ieee->current_network.buseprotection = false;
 		}
 		if (is_beacon(beacon->header.frame_ctl)) {
 			if (ieee->state == IEEE80211_LINKED)
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 140e3cb66a2e..f0b6b8372f91 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -488,7 +488,7 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 	if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
 		tcb_desc->bUseShortPreamble = true;
 	if (ieee->mode == IW_MODE_MASTER)
-			goto NO_PROTECTION;
+		goto NO_PROTECTION;
 	return;
 NO_PROTECTION:
 	tcb_desc->bRTSEnable	= false;
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 8ca7a7fd74f9..9dd5c04181ea 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -177,7 +177,7 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 
 	iwe.u.data.length = p - custom;
 	if (iwe.u.data.length)
-	    start = iwe_stream_add_point(info, start, stop, &iwe, custom);
+		start = iwe_stream_add_point(info, start, stop, &iwe, custom);
 
 	if (ieee->wpa_enabled && network->wpa_ie_len) {
 		char buf[MAX_WPA_IE_LEN * 2 + 30];
@@ -218,7 +218,7 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 		      " Last beacon: %lums ago", (jiffies - network->last_scanned) / (HZ / 100));
 	iwe.u.data.length = p - custom;
 	if (iwe.u.data.length)
-	    start = iwe_stream_add_point(info, start, stop, &iwe, custom);
+		start = iwe_stream_add_point(info, start, stop, &iwe, custom);
 
 	return start;
 }
@@ -785,8 +785,8 @@ int ieee80211_wx_set_gen_ie(struct ieee80211_device *ieee, u8 *ie, size_t len)
 	u8 *buf;
 
 	if (len > MAX_WPA_IE_LEN || (len && !ie)) {
-	//	printk("return error out, len:%d\n", len);
-	return -EINVAL;
+		//printk("return error out, len:%d\n", len);
+		return -EINVAL;
 	}
 
 
diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index 153d4ee0ec07..dd81d210bd49 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -231,7 +231,7 @@ bool init_firmware(struct net_device *dev)
 		rst_opt = OPT_FIRMWARE_RESET;
 		starting_state = FW_INIT_STEP2_DATA;
 	} else {
-		 RT_TRACE(COMP_FIRMWARE, "PlatformInitFirmware: undefined firmware state\n");
+		RT_TRACE(COMP_FIRMWARE, "PlatformInitFirmware: undefined firmware state\n");
 	}
 
 	/*
-- 
2.23.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
