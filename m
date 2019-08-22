Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F82299E4D
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 19:52:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60E55878B4;
	Thu, 22 Aug 2019 17:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btmzNCJySdHE; Thu, 22 Aug 2019 17:52:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED528876E2;
	Thu, 22 Aug 2019 17:52:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0429B1BF407
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 17:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 00F8D87BBF
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 17:52:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQvj+6VEdE1A for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 17:52:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com
 [136.143.188.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D936787B81
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 17:52:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566496365; cv=none; d=zoho.com; s=zohoarc; 
 b=njcRsPF/02yn6H0lZYcK+rcCJIm/AdP3uLokWD7X6U/uELuqpiNFQ9bnjoIXJZBOXo+D+TO4yB1FOHwzrzH22+YO2+yOHnMIk1iwIK8obB0kBxfO21EX9XJTZcEhF6pi5vI5H26FlhRdUxxTJ7LTt+eAXUsBhjEKnJZJeA5X/Oo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566496365;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=hajNLWDItg9LFXr1p/488VmQbRzQ2eUHYOM9UokpjIU=; 
 b=anaNHWVPRG5Dad0pAq1biqa7Sph3tYYO193Qg/EFu3XTD3GqqpR9jbnYchLrZWEZQL5hjfFe/KAZ7zeW2TYXa1CUCnPa9KeCEO79A4GdLdmx6Cynt9cGWlv/625/pA+oyrk3IAXVBk+uJdAB0eAIwvMLOPqA1zzCv0eGD0Mf45E=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566496365; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=14220; bh=hajNLWDItg9LFXr1p/488VmQbRzQ2eUHYOM9UokpjIU=;
 b=iC484pvuZYhLOkHtI3rDB5xjZHAPWhtsAVLo/0PIzaO7FTPe3XmoZEz0gIZU69ib
 n/vJLlqGVIS2TBRR0apTx73QgNEKl2SpiuXkmMjexrM4Et/9IRfvBo4ZViJLlkzM1Rj
 qwkVLSRzcN14KdKlI+6oi5y5ey040iKG6je4BmCY=
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2]) by
 mx.zohomail.com with SMTPS id 1566496361624408.21571661497194;
 Thu, 22 Aug 2019 10:52:41 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190822175228.3419-1-stephen@brennan.io>
Subject: [PATCH] staging: rtl8192u: Fix indentation
Date: Thu, 22 Aug 2019 10:52:28 -0700
X-Mailer: git-send-email 2.22.0
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
 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c |   2 +-
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 112 +++++++++---------
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c |  18 +--
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c |   8 +-
 drivers/staging/rtl8192u/r819xU_firmware.c    |   2 +-
 5 files changed, 71 insertions(+), 71 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index aecee42be95e..369c57b63350 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -346,7 +346,7 @@ static int ieee80211_ccmp_set_key(void *key, int len, u8 *seq, void *priv)
 		}
 		if (crypto_aead_setauthsize(tfm, CCMP_MIC_LEN) ||
 		    crypto_aead_setkey(tfm, data->key, CCMP_TK_LEN))
-				return -1;
+			return -1;
 	} else if (len == 0) {
 		data->key_set = 0;
 	} else {
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 7ef1e89de269..643e40e4c5fe 100644
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
@@ -427,17 +427,17 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 
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
@@ -999,7 +999,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	// if QoS enabled, should check the sequence for each of the AC
 	if ((!ieee->pHTInfo->bCurRxReorderEnable) || !ieee->current_network.qos_data.active || !IsDataFrame(skb->data) || IsLegacyDataFrame(skb->data)) {
 		if (is_duplicate_packet(ieee, hdr))
-		goto rx_dropped;
+			goto rx_dropped;
 
 	} else {
 		struct rx_ts_record *pRxTS = NULL;
@@ -1220,10 +1220,10 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
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
 
@@ -1785,13 +1785,13 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
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
@@ -1807,17 +1807,17 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
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
 
@@ -1837,7 +1837,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 						network->bssht.bdRT2RTAggregation = true;
 
 						if ((ht_realtek_agg_buf[4] == 1) && (ht_realtek_agg_buf[5] & 0x02))
-						network->bssht.bdRT2RTLongSlotTime = true;
+							network->bssht.bdRT2RTLongSlotTime = true;
 					}
 				}
 
@@ -1858,7 +1858,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					 info_element->data[1] == 0x10 &&
 					 info_element->data[2] == 0x18)){
 
-						network->broadcom_cap_exist = true;
+					network->broadcom_cap_exist = true;
 
 				}
 			}
@@ -2289,7 +2289,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	   src->wmm_param[1].aci_aifsn || \
 	   src->wmm_param[2].aci_aifsn || \
 	   src->wmm_param[3].aci_aifsn) {
-	  memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
+		memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
 	}
 	//dst->QoS_Enable = src->QoS_Enable;
 #ifdef THOMAS_TURBO
@@ -2436,11 +2436,11 @@ static inline void ieee80211_process_probe_response(
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
 		if (is_beacon(beacon->header.frame_ctl))
 		{
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index fc6eb97801e1..506de76a052f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -508,7 +508,7 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 	if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
 		tcb_desc->bUseShortPreamble = true;
 	if (ieee->mode == IW_MODE_MASTER)
-			goto NO_PROTECTION;
+		goto NO_PROTECTION;
 	return;
 NO_PROTECTION:
 	tcb_desc->bRTSEnable	= false;
@@ -808,15 +808,15 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 
 		if(qos_actived)
 		{
-		  if (ieee->seq_ctrl[UP2AC(skb->priority) + 1] == 0xFFF)
-			ieee->seq_ctrl[UP2AC(skb->priority) + 1] = 0;
-		  else
-			ieee->seq_ctrl[UP2AC(skb->priority) + 1]++;
+			if (ieee->seq_ctrl[UP2AC(skb->priority) + 1] == 0xFFF)
+				ieee->seq_ctrl[UP2AC(skb->priority) + 1] = 0;
+			else
+				ieee->seq_ctrl[UP2AC(skb->priority) + 1]++;
 		} else {
-		  if (ieee->seq_ctrl[0] == 0xFFF)
-			ieee->seq_ctrl[0] = 0;
-		  else
-			ieee->seq_ctrl[0]++;
+			if (ieee->seq_ctrl[0] == 0xFFF)
+				ieee->seq_ctrl[0] = 0;
+			else
+				ieee->seq_ctrl[0]++;
 		}
 	} else {
 		if (unlikely(skb->len < sizeof(struct rtl_80211_hdr_3addr))) {
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index be08cd1d37a7..4920c1b27b52 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -178,7 +178,7 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 
 	iwe.u.data.length = p - custom;
 	if (iwe.u.data.length)
-	    start = iwe_stream_add_point(info, start, stop, &iwe, custom);
+		start = iwe_stream_add_point(info, start, stop, &iwe, custom);
 
 	if (ieee->wpa_enabled && network->wpa_ie_len) {
 		char buf[MAX_WPA_IE_LEN * 2 + 30];
@@ -219,7 +219,7 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 		      " Last beacon: %lums ago", (jiffies - network->last_scanned) / (HZ / 100));
 	iwe.u.data.length = p - custom;
 	if (iwe.u.data.length)
-	    start = iwe_stream_add_point(info, start, stop, &iwe, custom);
+		start = iwe_stream_add_point(info, start, stop, &iwe, custom);
 
 	return start;
 }
@@ -786,8 +786,8 @@ int ieee80211_wx_set_gen_ie(struct ieee80211_device *ieee, u8 *ie, size_t len)
 	u8 *buf;
 
 	if (len>MAX_WPA_IE_LEN || (len && !ie)) {
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
2.22.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
