Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8C596CF6
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 01:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB640877DC;
	Tue, 20 Aug 2019 23:12:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fzBFcXyU+9Mt; Tue, 20 Aug 2019 23:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E0F4877A7;
	Tue, 20 Aug 2019 23:12:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CCEB1BF424
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 974BA22D10
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNAZj2pgvBCw for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 23:12:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com
 [136.143.188.55])
 by silver.osuosl.org (Postfix) with ESMTPS id D4CB622CCE
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 23:12:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566342755; cv=none; d=zoho.com; s=zohoarc; 
 b=DErl3lBQoQ2FIot5Sz2krpY7n43XAdjodS8HAbxvSXoFa23jDXOJMONUiEIwigC9FbUwic27x61JI6uivfWMBvh/BI2NM6M2Y5USdqT8q+m1NdDrjT+vJay7Mqp5B9RDgG0x2hE7SS9khGrrNoKstOCrgCvREm/geVi0HlYJDXA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566342755;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results;
 bh=BcwHdDJUkvGYPODDEq2MQD88LVLu8/4LpApmGuvI58k=; 
 b=YYpZTWxiwVEIXagHJciIP/0aIAXIjYilyNn2wnLBZuBSA18WK8dtJ1GIuF2QTzMPPUCYTuNWquWUXpnO2vyrKKBZG+sprkZ+U20/dtl1J7OJNHd3hVghWE952EP0OKPc3Mv3tyPiyEw4VAedWsWOK0Zqn89xnKhc/Y531kMDlAk=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566342755; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=24886; bh=BcwHdDJUkvGYPODDEq2MQD88LVLu8/4LpApmGuvI58k=;
 b=PKkFtoB3s8CTovLdR+NENst/8Il6YsBmUdmndOjbQyxG1P7jAW066WgdVRq2uaec
 M2153+6pXRW3p37QlmAKUGjWDPLhH9519ShcPiKlUFfZsfT+kPnKNesJ6emB8DMl+CF
 dS2b0VXyGMfv4KG4woKqlllgStON+kbDPBbvDhQQ=
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2]) by
 mx.zohomail.com with SMTPS id 1566342754053642.4590168596734;
 Tue, 20 Aug 2019 16:12:34 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190820231156.30031-2-stephen@brennan.io>
Subject: [PATCH 1/3] staging: rtl8192u: fix OPEN_BRACE errors in ieee80211
Date: Tue, 20 Aug 2019 16:11:54 -0700
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820231156.30031-1-stephen@brennan.io>
References: <20190820231156.30031-1-stephen@brennan.io>
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
Cc: devel@driverdev.osuosl.org, Stephen Brennan <stephen@brennan.io>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 .../staging/rtl8192u/ieee80211/ieee80211.h    |   3 +-
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 116 ++++++------------
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c |  81 +++++-------
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c |   3 +-
 .../staging/rtl8192u/ieee80211/rtl819x_HT.h   |   3 +-
 5 files changed, 73 insertions(+), 133 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 3963a08b9eb2..129dcb5a0f2e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -458,8 +458,7 @@ do { if (ieee80211_debug_level & (level)) \
 			int i;					\
 			u8 *pdata = (u8 *) data;			\
 			printk(KERN_DEBUG "ieee80211: %s()\n", __func__);	\
-			for (i = 0; i < (int)(datalen); i++)			\
-			{						\
+			for (i = 0; i < (int)(datalen); i++) {		\
 				printk("%2x ", pdata[i]);		\
 				if ((i + 1) % 16 == 0) printk("\n");	\
 			}				\
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 7ef1e89de269..9d8b2ff700fe 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -218,8 +218,8 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 	rx_stats->len = skb->len;
 	ieee80211_rx_mgt(ieee, (struct rtl_80211_hdr_4addr *)skb->data, rx_stats);
 	/* if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN))) */
-	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))/* use ADDR1 to perform address matching for Management frames */
-	{
+	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN))) {
+		/* use ADDR1 to perform address matching for Management frames */
 		dev_kfree_skb_any(skb);
 		return 0;
 	}
@@ -339,8 +339,7 @@ ieee80211_rx_frame_decrypt(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	if (!crypt || !crypt->ops->decrypt_mpdu)
 		return 0;
-	if (ieee->hwsec_active)
-	{
+	if (ieee->hwsec_active) {
 		struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bHwSec = 1;
 	}
@@ -386,8 +385,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 
 	if (!crypt || !crypt->ops->decrypt_msdu)
 		return 0;
-	if (ieee->hwsec_active)
-	{
+	if (ieee->hwsec_active) {
 		struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bHwSec = 1;
 	}
@@ -507,8 +505,7 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *pReorderEntry)
 {
 	struct list_head *pList = &pTS->rx_pending_pkt_list;
-	while (pList->next != &pTS->rx_pending_pkt_list)
-	{
+	while (pList->next != &pTS->rx_pending_pkt_list) {
 		if (SN_LESS(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum))
 			pList = pList->next;
 		else if (SN_EQUAL(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum))
@@ -530,8 +527,7 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 	u16 ethertype;
 //	if(index > 1)
 //		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n",__func__,index);
-	for (j = 0; j < index; j++)
-	{
+	for (j = 0; j < index; j++) {
 //added by amy for reorder
 		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
 		for (i = 0; i < prxb->nr_subframes; i++) {
@@ -699,8 +695,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): start RREORDER indicate\n", __func__);
 		pReorderEntry = list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
-		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
-		{
+		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq)) {
 			/* This protect buffer from overflow. */
 			if (index >= REORDER_WIN_SIZE) {
 				IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Buffer overflow!! \n");
@@ -922,8 +917,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	frag = WLAN_GET_SEQ_FRAG(sc);
 	hdrlen = ieee80211_get_hdrlen(fc);
 
-	if (HTCCheck(ieee, skb->data))
-	{
+	if (HTCCheck(ieee, skb->data)) {
 		if (net_ratelimit())
 			printk("find HTCControl\n");
 		hdrlen += 4;
@@ -1010,8 +1004,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 				hdr->addr2,
 				Frame_QoSTID((u8 *)(skb->data)),
 				RX_DIR,
-				true))
-		{
+				true)) {
 
 		//	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pRxTS->rx_last_frag_num is %d,frag is %d,pRxTS->rx_last_seq_num is %d,seq is %d\n",__func__,pRxTS->rx_last_frag_num,frag,pRxTS->rx_last_seq_num,WLAN_GET_SEQ_SEQ(sc));
 			if ((fc & (1 << 11)) &&
@@ -1119,8 +1112,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	/* skb: hdr + (possibly fragmented, possibly encrypted) payload */
 
 	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
-	    (keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt)) < 0)
-	{
+	    (keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt)) < 0) {
 		printk("decrypt frame error\n");
 		goto rx_dropped;
 	}
@@ -1185,8 +1177,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	/* skb: hdr + (possible reassembled) full MSDU payload; possibly still
 	 * encrypted/authenticated */
 	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
-	    ieee80211_rx_frame_decrypt_msdu(ieee, skb, keyidx, crypt))
-	{
+	    ieee80211_rx_frame_decrypt_msdu(ieee, skb, keyidx, crypt)) {
 		printk("==>decrypt msdu error\n");
 		goto rx_dropped;
 	}
@@ -1243,13 +1234,11 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 */
 //added by amy for reorder
 	if (ieee->current_network.qos_data.active && IsQoSDataFrame(skb->data)
-		&& !is_multicast_ether_addr(hdr->addr1))
-	{
+		&& !is_multicast_ether_addr(hdr->addr1)) {
 		TID = Frame_QoSTID(skb->data);
 		SeqNum = WLAN_GET_SEQ_SEQ(sc);
 		GetTs(ieee, (struct ts_common_info **) &pTS, hdr->addr2, TID, RX_DIR, true);
-		if (TID != 0 && TID != 3)
-		{
+		if (TID != 0 && TID != 3) {
 			ieee->bis_any_nonbepkts = true;
 		}
 	}
@@ -1549,15 +1538,12 @@ static inline void ieee80211_extract_country_ie(
 	u8 *addr2
 )
 {
-	if (IS_DOT11D_ENABLE(ieee))
-	{
-		if (info_element->len != 0)
-		{
+	if (IS_DOT11D_ENABLE(ieee)) {
+		if (info_element->len != 0) {
 			memcpy(network->CountryIeBuf, info_element->data, info_element->len);
 			network->CountryIeLen = info_element->len;
 
-			if (!IS_COUNTRY_IE_VALID(ieee))
-			{
+			if (!IS_COUNTRY_IE_VALID(ieee)) {
 				dot11d_update_country_ie(ieee, addr2, info_element->len, info_element->data);
 			}
 		}
@@ -1567,8 +1553,7 @@ static inline void ieee80211_extract_country_ie(
 		// some AP (e.g. Cisco 1242) don't include country IE in their
 		// probe response frame.
 		//
-		if (IS_EQUAL_CIE_SRC(ieee, addr2))
-		{
+		if (IS_EQUAL_CIE_SRC(ieee, addr2)) {
 			UPDATE_CIE_WATCHDOG(ieee);
 		}
 	}
@@ -1865,8 +1850,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			if (info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x0c &&
-				info_element->data[2] == 0x43)
-			{
+				info_element->data[2] == 0x43) {
 				network->ralink_cap_exist = true;
 			} else
 				network->ralink_cap_exist = false;
@@ -1878,8 +1862,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				(info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x13 &&
-				info_element->data[2] == 0x74))
-			{
+				info_element->data[2] == 0x74)) {
 				printk("========>%s(): athros AP is exist\n", __func__);
 				network->atheros_cap_exist = true;
 			} else
@@ -1888,8 +1871,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			if (info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
-				info_element->data[2] == 0x96)
-			{
+				info_element->data[2] == 0x96) {
 				network->cisco_cap_exist = true;
 			} else
 				network->cisco_cap_exist = false;
@@ -1898,22 +1880,18 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96 &&
-				info_element->data[3] == 0x01)
-			{
-				if (info_element->len == 6)
-				{
+				info_element->data[3] == 0x01) {
+				if (info_element->len == 6) {
 					memcpy(network->CcxRmState, &info_element[4], 2);
 					if (network->CcxRmState[0] != 0)
-					{
 						network->bCcxRmEnable = true;
-					} else
+					else
 						network->bCcxRmEnable = false;
 					//
 					// CCXv4 Table 59-1 MBSSID Masks.
 					//
 					network->MBssidMask = network->CcxRmState[1] & 0x07;
-					if (network->MBssidMask != 0)
-					{
+					if (network->MBssidMask != 0) {
 						network->bMBssidValid = true;
 						network->MBssidMask = 0xff << (network->MBssidMask);
 						ether_addr_copy(network->MBssid, network->bssid);
@@ -1929,8 +1907,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96 &&
-				info_element->data[3] == 0x03)
-			{
+				info_element->data[3] == 0x03) {
 				if (info_element->len == 5) {
 					network->bWithCcxVerNum = true;
 					network->BssCcxVerNumber = info_element->data[4];
@@ -1985,16 +1962,14 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_AIRONET:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_AIRONET: %d bytes\n",
 					     info_element->len);
-			if (info_element->len > IE_CISCO_FLAG_POSITION)
-			{
+			if (info_element->len > IE_CISCO_FLAG_POSITION) {
 				network->bWithAironetIE = true;
 
 				// CCX 1 spec v1.13, A01.1 CKIP Negotiation (page23):
 				// "A Cisco access point advertises support for CKIP in beacon and probe response packets,
 				//  by adding an Aironet element and setting one or both of the CKIP negotiation bits."
 				if ((info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_MIC)	||
-					(info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_PK))
-				{
+					(info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_PK)) {
 					network->bCkipSupported = true;
 				} else {
 					network->bCkipSupported = false;
@@ -2214,8 +2189,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	dst->rates_len = src->rates_len;
 	memcpy(dst->rates_ex, src->rates_ex, src->rates_ex_len);
 	dst->rates_ex_len = src->rates_ex_len;
-	if (src->ssid_len > 0)
-	{
+	if (src->ssid_len > 0) {
 		memset(dst->ssid, 0, dst->ssid_len);
 		dst->ssid_len = src->ssid_len;
 		memcpy(dst->ssid, src->ssid, src->ssid_len);
@@ -2224,8 +2198,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	dst->flags = src->flags;
 	dst->time_stamp[0] = src->time_stamp[0];
 	dst->time_stamp[1] = src->time_stamp[1];
-	if (src->flags & NETWORK_HAS_ERP_VALUE)
-	{
+	if (src->flags & NETWORK_HAS_ERP_VALUE) {
 		dst->erp_value = src->erp_value;
 		dst->berp_info_valid = src->berp_info_valid = true;
 	}
@@ -2379,41 +2352,33 @@ static inline void ieee80211_process_probe_response(
 
 	if (!is_legal_channel(ieee, network->channel))
 		goto out;
-	if (ieee->bGlobalDomain)
-	{
-		if (fc == IEEE80211_STYPE_PROBE_RESP)
-		{
-			// Case 1: Country code
+	if (ieee->bGlobalDomain) {
+		if (fc == IEEE80211_STYPE_PROBE_RESP) {
 			if (IS_COUNTRY_IE_VALID(ieee)) {
+				// Case 1: Country code
 				if (!is_legal_channel(ieee, network->channel)) {
 					printk("GetScanInfo(): For Country code, filter probe response at channel(%d).\n", network->channel);
 					goto out;
 				}
-			}
-			// Case 2: No any country code.
-			else
-			{
+			} else {
+				// Case 2: No any country code.
 				// Filter over channel ch12~14
-				if (network->channel > 11)
-				{
+				if (network->channel > 11) {
 					printk("GetScanInfo(): For Global Domain, filter probe response at channel(%d).\n", network->channel);
 					goto out;
 				}
 			}
 		} else {
-			// Case 1: Country code
 			if (IS_COUNTRY_IE_VALID(ieee)) {
+				// Case 1: Country code
 				if (!is_legal_channel(ieee, network->channel)) {
 					printk("GetScanInfo(): For Country code, filter beacon at channel(%d).\n", network->channel);
 					goto out;
 				}
-			}
-			// Case 2: No any country code.
-			else
-			{
+			} else {
+				// Case 2: No any country code.
 				// Filter over channel ch12~14
-				if (network->channel > 14)
-				{
+				if (network->channel > 14) {
 					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n", network->channel);
 					goto out;
 				}
@@ -2442,8 +2407,7 @@ static inline void ieee80211_process_probe_response(
 		else
 			ieee->current_network.buseprotection = false;
 		}
-		if (is_beacon(beacon->header.frame_ctl))
-		{
+		if (is_beacon(beacon->header.frame_ctl)) {
 			if (ieee->state == IEEE80211_LINKED)
 				ieee->LinkDetectInfo.NumRecvBcnInPeriod++;
 		} else //hidden AP
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index fc6eb97801e1..c49357067735 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -214,7 +214,8 @@ int ieee80211_encrypt_fragment(
 }
 
 
-void ieee80211_txb_free(struct ieee80211_txb *txb) {
+void ieee80211_txb_free(struct ieee80211_txb *txb)
+{
 	//int i;
 	if (unlikely(!txb))
 		return;
@@ -333,8 +334,7 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 		}
 	}
 FORCED_AGG_SETTING:
-	switch (pHTInfo->ForcedAMPDUMode )
-	{
+	switch (pHTInfo->ForcedAMPDUMode ) {
 		case HT_AGG_AUTO:
 			break;
 
@@ -424,19 +424,15 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 	if (is_broadcast_ether_addr(skb->data+16))  //check addr3 as infrastructure add3 is DA.
 		return;
 
-	if (ieee->mode < IEEE_N_24G) //b, g mode
-	{
+	if (ieee->mode < IEEE_N_24G) /* b, g mode */ {
 			// (1) RTS_Threshold is compared to the MPDU, not MSDU.
 			// (2) If there are more than one frag in  this MSDU, only the first frag uses protection frame.
 			//		Other fragments are protected by previous fragment.
 			//		So we only need to check the length of first fragment.
-		if (skb->len > ieee->rts)
-		{
+		if (skb->len > ieee->rts) {
 			tcb_desc->bRTSEnable = true;
 			tcb_desc->rts_rate = MGN_24M;
-		}
-		else if (ieee->current_network.buseprotection)
-		{
+		} else if (ieee->current_network.buseprotection) {
 			// Use CTS-to-SELF in protection mode.
 			tcb_desc->bRTSEnable = true;
 			tcb_desc->bCTSEnable = true;
@@ -444,43 +440,35 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 		}
 		//otherwise return;
 		return;
-	}
-	else
-	{// 11n High throughput case.
+	} else { // 11n High throughput case.
 		PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
-		while (true)
-		{
+		while (true) {
 			//check ERP protection
-			if (ieee->current_network.buseprotection)
-			{// CTS-to-SELF
+			if (ieee->current_network.buseprotection) {// CTS-to-SELF
 				tcb_desc->bRTSEnable = true;
 				tcb_desc->bCTSEnable = true;
 				tcb_desc->rts_rate = MGN_24M;
 				break;
 			}
 			//check HT op mode
-			if(pHTInfo->bCurrentHTSupport  && pHTInfo->bEnableHT)
-			{
+			if(pHTInfo->bCurrentHTSupport  && pHTInfo->bEnableHT) {
 				u8 HTOpMode = pHTInfo->CurrentOpMode;
 				if((pHTInfo->bCurBW40MHz && (HTOpMode == 2 || HTOpMode == 3)) ||
-							(!pHTInfo->bCurBW40MHz && HTOpMode == 3) )
-				{
+							(!pHTInfo->bCurBW40MHz && HTOpMode == 3)) {
 					tcb_desc->rts_rate = MGN_24M; // Rate is 24Mbps.
 					tcb_desc->bRTSEnable = true;
 					break;
 				}
 			}
 			//check rts
-			if (skb->len > ieee->rts)
-			{
+			if (skb->len > ieee->rts) {
 				tcb_desc->rts_rate = MGN_24M; // Rate is 24Mbps.
 				tcb_desc->bRTSEnable = true;
 				break;
 			}
 			//to do list: check MIMO power save condition.
 			//check AMPDU aggregation for TXOP
-			if(tcb_desc->bAMPDUEnable)
-			{
+			if(tcb_desc->bAMPDUEnable) {
 				tcb_desc->rts_rate = MGN_24M; // Rate is 24Mbps.
 				// According to 8190 design, firmware sends CF-End only if RTS/CTS is enabled. However, it degrads
 				// throughput around 10M, so we disable of this mechanism. 2007.08.03 by Emily
@@ -488,8 +476,7 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 				break;
 			}
 			//check IOT action
-			if(pHTInfo->IOTAction & HT_IOT_ACT_FORCED_CTS2SELF)
-			{
+			if(pHTInfo->IOTAction & HT_IOT_ACT_FORCED_CTS2SELF) {
 				tcb_desc->bCTSEnable	= true;
 				tcb_desc->rts_rate  =	MGN_24M;
 				tcb_desc->bRTSEnable = true;
@@ -541,8 +528,7 @@ static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
 
 	if (ieee->bTxUseDriverAssingedRate)
 		tcb_desc->bTxUseDriverAssingedRate = true;
-	if (!tcb_desc->bTxDisableRateFallBack || !tcb_desc->bTxUseDriverAssingedRate)
-	{
+	if (!tcb_desc->bTxDisableRateFallBack || !tcb_desc->bTxUseDriverAssingedRate) {
 		if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC)
 			tcb_desc->RATRIndex = 0;
 	}
@@ -553,11 +539,9 @@ static void ieee80211_query_seqnum(struct ieee80211_device *ieee,
 {
 	if (is_multicast_ether_addr(dst))
 		return;
-	if (IsQoSDataFrame(skb->data)) //we deal qos data only
-	{
+	if (IsQoSDataFrame(skb->data)) /* we deal qos data only */ {
 		struct tx_ts_record *pTS = NULL;
-		if (!GetTs(ieee, (struct ts_common_info **)(&pTS), dst, skb->priority, TX_DIR, true))
-		{
+		if (!GetTs(ieee, (struct ts_common_info **)(&pTS), dst, skb->priority, TX_DIR, true)) {
 			return;
 		}
 		pTS->tx_cur_seq = (pTS->tx_cur_seq + 1) % 4096;
@@ -749,15 +733,13 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 			}
 			skb_reserve(skb_frag, ieee->tx_headroom);
 
-			if (encrypt){
+			if (encrypt) {
 				if (ieee->hwsec_active)
 					tcb_desc->bHwSec = 1;
 				else
 					tcb_desc->bHwSec = 0;
 				skb_reserve(skb_frag, crypt->ops->extra_prefix_len);
-			}
-			else
-			{
+			} else {
 				tcb_desc->bHwSec = 0;
 			}
 			frag_hdr = skb_put_data(skb_frag, &header, hdr_len);
@@ -775,8 +757,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 				bytes = bytes_last_frag;
 			}
 			//if(ieee->current_network.QoS_Enable)
-			if(qos_actived)
-			{
+			if(qos_actived) {
 				// add 1 only indicate to corresponding seq number control 2006/7/12
 				frag_hdr->seq_ctl = cpu_to_le16(ieee->seq_ctrl[UP2AC(skb->priority)+1]<<4 | i);
 			} else {
@@ -806,17 +787,16 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 				skb_put(skb_frag, 4);
 		}
 
-		if(qos_actived)
-		{
-		  if (ieee->seq_ctrl[UP2AC(skb->priority) + 1] == 0xFFF)
-			ieee->seq_ctrl[UP2AC(skb->priority) + 1] = 0;
-		  else
-			ieee->seq_ctrl[UP2AC(skb->priority) + 1]++;
+		if (qos_actived) {
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
@@ -839,8 +819,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 
  success:
 //WB add to fill data tcb_desc here. only first fragment is considered, need to change, and you may remove to other place.
-	if (txb)
-	{
+	if (txb) {
 		struct cb_desc *tcb_desc = (struct cb_desc *)(txb->fragments[0]->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bTxEnableFwCalcDur = 1;
 		if (is_multicast_ether_addr(header.addr1))
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index be08cd1d37a7..8ad85331f020 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -130,8 +130,7 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 			max_rate = rate;
 	}
 
-	if (network->mode >= IEEE_N_24G)//add N rate here;
-	{
+	if (network->mode >= IEEE_N_24G) /* add N rate here */ {
 		struct ht_capability_ele *ht_cap = NULL;
 		bool is40M = false, isShortGI = false;
 		u8 max_mcs = 0;
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
index b7769bca9740..3fca0d3a1d05 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
@@ -273,8 +273,7 @@ typedef enum _HT_AGGRE_SIZE {
 }HT_AGGRE_SIZE_E, *PHT_AGGRE_SIZE_E;
 
 /* Indicate different AP vendor for IOT issue */
-typedef enum _HT_IOT_PEER
-{
+typedef enum _HT_IOT_PEER {
 	HT_IOT_PEER_UNKNOWN = 0,
 	HT_IOT_PEER_REALTEK = 1,
 	HT_IOT_PEER_BROADCOM = 2,
-- 
2.22.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
