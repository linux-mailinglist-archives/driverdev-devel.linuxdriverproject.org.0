Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0463894E0
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 01:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0B9D87C30;
	Sun, 11 Aug 2019 23:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nuKOCzdxO7xA; Sun, 11 Aug 2019 23:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6734187B97;
	Sun, 11 Aug 2019 23:37:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40CBB1BF312
 for <devel@linuxdriverproject.org>; Sun, 11 Aug 2019 23:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31AE68671B
 for <devel@linuxdriverproject.org>; Sun, 11 Aug 2019 23:37:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4gX9RJrtXKS for <devel@linuxdriverproject.org>;
 Sun, 11 Aug 2019 23:37:20 +0000 (UTC)
X-Greylist: delayed 00:45:04 by SQLgrey-1.7.6
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com
 [136.143.188.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CBA4586061
 for <devel@driverdev.osuosl.org>; Sun, 11 Aug 2019 23:37:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1565563932; cv=none; d=zoho.com; s=zohoarc; 
 b=KtwQ7S400YftPsSEoeHDjEdPiOSjFjnT0MZp3JVsJCd4J83yGt8FS3WIQ5uT4I9ojb7HKPFREOJnuKyl1jH4K0u95FaWwwod8KQPoO3opVGaRk0RGk7rdYIC5bNG5nZ9/cdL1b03g3Yj8IVcGR4NL8oycgxRPxN//gzHVNxh8NM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1565563932;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=5UrGXTSVirBnpmuUe+bJlm3t3ONe5VYkTzebeuRPZ90=; 
 b=iOdhqugwnvHVT4OLphRF4XOgJDC1XCTpkhw+HKMLnoK+9P+v9IPIh3zvCvYluYWr4T6X1REZbk+dxjOw674oAdnHTx7hLNhqs3un3EYWMVbC6rf+LLYSzyY144QCda0ynHXXTR8+dxjn2+CX5I5UCbeGSXr6CX0kDNkpzGXj4Zo=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1565563932; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=54557; bh=5UrGXTSVirBnpmuUe+bJlm3t3ONe5VYkTzebeuRPZ90=;
 b=hvDNbhINZLemIj4dw2vqzxDMOcLAlBNMJTgLbnEUbG+6mLgPfTdZdLWta3rO5Xbb
 QWQH30qlQrY01yLlMvWBP/MKCOmnUFJYNpLLH+t2tubLFfB0fqXjjWMQnjc1di2WZU9
 DotTgWYo85llLS5l4UBc6q2a+AON9EK3kdS6Youg=
Received: from localhost (c-73-241-204-195.hsd1.ca.comcast.net
 [73.241.204.195]) by mx.zohomail.com
 with SMTPS id 1565563931359824.390049096757;
 Sun, 11 Aug 2019 15:52:11 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <20190811225120.7308-1-stephen@brennan.io>
Subject: [PATCH] staging: rtl8192u: fix spacing errors
Date: Sun, 11 Aug 2019 15:51:20 -0700
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
Cc: Stephen Brennan <stephen@brennan.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Used checkpatch's --fix-inplace option for types SPACING, OPEN_BRACE,
ELSE_AFTER_BRACE. Manually edited the resulting changes to correct for
mistaken fixes and complete fixes that were only partially applied.

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---

To prevent this patch from getting even longer and more unwieldy, I tried
to limit the scope of this change to *just* the automatic fixes created by
checkpatch, and my corrections. Hopefully I'll send further patches to
address categories of errors which were not automatically fixable by
checkpatch.

Before: 289 errors, 303 warnings, 206 checks, 2612 lines checked
After: 37 errors, 307 warnings, 175 checks, 2562 lines checked

 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 455 ++++++++----------
 1 file changed, 200 insertions(+), 255 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0a3e478fccd6..7ef1e89de269 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -124,7 +124,7 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 				    2 /* alignment */ +
 				    8 /* WEP */ +
 				    ETH_ALEN /* WDS */ +
-				    (IEEE80211_QOS_HAS_SEQ(fc)?2:0) /* QOS Control */);
+				    (IEEE80211_QOS_HAS_SEQ(fc) ? 2 : 0) /* QOS Control */);
 		if (!skb)
 			return NULL;
 
@@ -145,7 +145,7 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 	} else {
 		/* received a fragment of a frame for which the head fragment
 		 * should have already been received */
-		entry = ieee80211_frag_cache_find(ieee, seq, frag, tid,hdr->addr2,
+		entry = ieee80211_frag_cache_find(ieee, seq, frag, tid, hdr->addr2,
 						  hdr->addr1);
 		if (entry) {
 			entry->last_frag = frag;
@@ -169,7 +169,7 @@ static int ieee80211_frag_cache_invalidate(struct ieee80211_device *ieee,
 	struct rtl_80211_hdr_4addrqos *hdr_4addrqos;
 	u8 tid;
 
-	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
@@ -216,7 +216,7 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 	struct rtl_80211_hdr_3addr *hdr = (struct rtl_80211_hdr_3addr *)skb->data;
 
 	rx_stats->len = skb->len;
-	ieee80211_rx_mgt(ieee,(struct rtl_80211_hdr_4addr *)skb->data,rx_stats);
+	ieee80211_rx_mgt(ieee, (struct rtl_80211_hdr_4addr *)skb->data, rx_stats);
 	/* if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN))) */
 	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))/* use ADDR1 to perform address matching for Management frames */
 	{
@@ -281,11 +281,11 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 /* See IEEE 802.1H for LLC/SNAP encapsulation/decapsulation */
 /* Ethernet-II snap header (RFC1042 for most EtherTypes) */
-static unsigned char rfc1042_header[] =
-{ 0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00 };
+static unsigned char rfc1042_header[] = {
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00 };
 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
-static unsigned char bridge_tunnel_header[] =
-{ 0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8 };
+static unsigned char bridge_tunnel_header[] = {
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8 };
 /* No encapsulation header if EtherType < 0x600 (=length) */
 
 /* Called by ieee80211_rx_frame_decrypt */
@@ -300,7 +300,7 @@ static int ieee80211_is_eapol_frame(struct ieee80211_device *ieee,
 	if (skb->len < 24)
 		return 0;
 
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 	fc = le16_to_cpu(hdr->frame_ctl);
 
 	/* check that the frame is unicast frame to us */
@@ -341,10 +341,10 @@ ieee80211_rx_frame_decrypt(struct ieee80211_device *ieee, struct sk_buff *skb,
 		return 0;
 	if (ieee->hwsec_active)
 	{
-		struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb+ MAX_DEV_ADDR_SIZE);
+		struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bHwSec = 1;
 	}
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 	hdrlen = ieee80211_get_hdrlen(le16_to_cpu(hdr->frame_ctl));
 
 	if (ieee->tkip_countermeasures &&
@@ -388,11 +388,11 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 		return 0;
 	if (ieee->hwsec_active)
 	{
-		struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb+ MAX_DEV_ADDR_SIZE);
+		struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bHwSec = 1;
 	}
 
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 	hdrlen = ieee80211_get_hdrlen(le16_to_cpu(hdr->frame_ctl));
 
 	atomic_inc(&crypt->refcnt);
@@ -410,7 +410,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 
 
 /* this function is stolen from ipw2200 driver*/
-#define IEEE_PACKET_RETRY_TIME (5*HZ)
+#define IEEE_PACKET_RETRY_TIME (5 * HZ)
 static int is_duplicate_packet(struct ieee80211_device *ieee,
 				      struct rtl_80211_hdr_4addr *header)
 {
@@ -426,12 +426,12 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 
 
 	//TO2DS and QoS
-	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)header;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
 	  tid++;
-	} else if(IEEE80211_QOS_HAS_SEQ(fc)) { //QoS
+	} else if (IEEE80211_QOS_HAS_SEQ(fc)) { //QoS
 	  hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)header;
 	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
@@ -507,7 +507,7 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *pReorderEntry)
 {
 	struct list_head *pList = &pTS->rx_pending_pkt_list;
-	while(pList->next != &pTS->rx_pending_pkt_list)
+	while (pList->next != &pTS->rx_pending_pkt_list)
 	{
 		if (SN_LESS(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum))
 			pList = pList->next;
@@ -524,17 +524,17 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
 	return true;
 }
 
-void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb **prxbIndicateArray,u8  index)
+void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb **prxbIndicateArray, u8  index)
 {
-	u8 i = 0 , j=0;
+	u8 i = 0, j = 0;
 	u16 ethertype;
 //	if(index > 1)
 //		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n",__func__,index);
-	for(j = 0; j<index; j++)
+	for (j = 0; j < index; j++)
 	{
 //added by amy for reorder
 		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
-		for(i = 0; i<prxb->nr_subframes; i++) {
+		for (i = 0; i < prxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = prxb->subframes[i];
 
 		/* convert hdr + possible LLC headers into Ethernet header */
@@ -585,7 +585,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	u16			WinEnd = (pTS->rx_indicate_seq + WinSize - 1) % 4096;
 	u8			index = 0;
 	bool			bMatchWinStart = false, bPktInBuf = false;
-	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->rx_indicate_seq is %d, WinSize is %d\n",__func__,SeqNum,pTS->rx_indicate_seq,WinSize);
+	IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): Seq is %d,pTS->rx_indicate_seq is %d, WinSize is %d\n", __func__, SeqNum, pTS->rx_indicate_seq, WinSize);
 
 	prxbIndicateArray = kmalloc_array(REORDER_WIN_SIZE,
 					  sizeof(struct ieee80211_rxb *),
@@ -599,12 +599,12 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 	/* Drop out the packet which SeqNum is smaller than WinStart */
 	if (SN_LESS(SeqNum, pTS->rx_indicate_seq)) {
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"Packet Drop! IndicateSeq: %d, NewSeq: %d\n",
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packet Drop! IndicateSeq: %d, NewSeq: %d\n",
 				 pTS->rx_indicate_seq, SeqNum);
 		pHTInfo->RxReorderDropCounter++;
 		{
 			int i;
-			for(i =0; i < prxb->nr_subframes; i++) {
+			for (i = 0; i < prxb->nr_subframes; i++) {
 				dev_kfree_skb(prxb->subframes[i]);
 			}
 			kfree(prxb);
@@ -620,16 +620,16 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	 * 1. Incoming SeqNum is equal to WinStart =>Window shift 1
 	 * 2. Incoming SeqNum is larger than the WinEnd => Window shift N
 	 */
-	if(SN_EQUAL(SeqNum, pTS->rx_indicate_seq)) {
+	if (SN_EQUAL(SeqNum, pTS->rx_indicate_seq)) {
 		pTS->rx_indicate_seq = (pTS->rx_indicate_seq + 1) % 4096;
 		bMatchWinStart = true;
-	} else if(SN_LESS(WinEnd, SeqNum)) {
-		if(SeqNum >= (WinSize - 1)) {
-			pTS->rx_indicate_seq = SeqNum + 1 -WinSize;
+	} else if (SN_LESS(WinEnd, SeqNum)) {
+		if (SeqNum >= (WinSize - 1)) {
+			pTS->rx_indicate_seq = SeqNum + 1 - WinSize;
 		} else {
 			pTS->rx_indicate_seq = 4095 - (WinSize - (SeqNum + 1)) + 1;
 		}
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Window Shift! IndicateSeq: %d, NewSeq: %d\n",pTS->rx_indicate_seq, SeqNum);
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Window Shift! IndicateSeq: %d, NewSeq: %d\n", pTS->rx_indicate_seq, SeqNum);
 	}
 
 	/*
@@ -641,7 +641,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	 * 1. All packets with SeqNum smaller than WinStart => Indicate
 	 * 2. All packets with SeqNum larger than or equal to WinStart => Buffer it.
 	 */
-	if(bMatchWinStart) {
+	if (bMatchWinStart) {
 		/* Current packet is going to be indicated.*/
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packets indication!! IndicateSeq: %d, NewSeq: %d\n",\
 				pTS->rx_indicate_seq, SeqNum);
@@ -651,7 +651,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	} else {
 		/* Current packet is going to be inserted into pending list.*/
 		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
-		if(!list_empty(&ieee->RxReorder_Unused_List)) {
+		if (!list_empty(&ieee->RxReorder_Unused_List)) {
 			pReorderEntry = list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
 			list_del_init(&pReorderEntry->List);
 
@@ -660,13 +660,13 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 			pReorderEntry->prxb = prxb;
 	//		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pREorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum);
 
-			if(!AddReorderEntry(pTS, pReorderEntry)) {
+			if (!AddReorderEntry(pTS, pReorderEntry)) {
 				IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): Duplicate packet is dropped!! IndicateSeq: %d, NewSeq: %d\n",
 					__func__, pTS->rx_indicate_seq, SeqNum);
-				list_add_tail(&pReorderEntry->List,&ieee->RxReorder_Unused_List);
+				list_add_tail(&pReorderEntry->List, &ieee->RxReorder_Unused_List);
 				{
 					int i;
-					for(i =0; i < prxb->nr_subframes; i++) {
+					for (i = 0; i < prxb->nr_subframes; i++) {
 						dev_kfree_skb(prxb->subframes[i]);
 					}
 					kfree(prxb);
@@ -674,10 +674,9 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				}
 			} else {
 				IEEE80211_DEBUG(IEEE80211_DL_REORDER,
-					 "Pkt insert into buffer!! IndicateSeq: %d, NewSeq: %d\n",pTS->rx_indicate_seq, SeqNum);
+					 "Pkt insert into buffer!! IndicateSeq: %d, NewSeq: %d\n", pTS->rx_indicate_seq, SeqNum);
 			}
-		}
-		else {
+		} else {
 			/*
 			 * Packets are dropped if there is not enough reorder entries.
 			 * This part shall be modified!! We can just indicate all the
@@ -686,7 +685,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): There is no reorder entry!! Packet is dropped!!\n");
 			{
 				int i;
-				for(i =0; i < prxb->nr_subframes; i++) {
+				for (i = 0; i < prxb->nr_subframes; i++) {
 					dev_kfree_skb(prxb->subframes[i]);
 				}
 				kfree(prxb);
@@ -696,8 +695,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	}
 
 	/* Check if there is any packet need indicate.*/
-	while(!list_empty(&pTS->rx_pending_pkt_list)) {
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
+	while (!list_empty(&pTS->rx_pending_pkt_list)) {
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): start RREORDER indicate\n", __func__);
 		pReorderEntry = list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
 		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
@@ -711,15 +710,15 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 			list_del_init(&pReorderEntry->List);
 
-			if(SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
+			if (SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
 				pTS->rx_indicate_seq = (pTS->rx_indicate_seq + 1) % 4096;
 
-			IEEE80211_DEBUG(IEEE80211_DL_REORDER,"Packets indication!! IndicateSeq: %d, NewSeq: %d\n",pTS->rx_indicate_seq, SeqNum);
+			IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packets indication!! IndicateSeq: %d, NewSeq: %d\n", pTS->rx_indicate_seq, SeqNum);
 			prxbIndicateArray[index] = pReorderEntry->prxb;
 		//	printk("========================>%s(): pReorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum);
 			index++;
 
-			list_add_tail(&pReorderEntry->List,&ieee->RxReorder_Unused_List);
+			list_add_tail(&pReorderEntry->List, &ieee->RxReorder_Unused_List);
 		} else {
 			bPktInBuf = true;
 			break;
@@ -727,13 +726,13 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	}
 
 	/* Handling pending timer. Set this timer to prevent from long time Rx buffering.*/
-	if (index>0) {
+	if (index > 0) {
 		// Cancel previous pending timer.
 	//	del_timer_sync(&pTS->rx_pkt_pending_timer);
 		pTS->rx_timeout_indicate_seq = 0xffff;
 
 		// Indicate packets
-		if(index>REORDER_WIN_SIZE){
+		if (index > REORDER_WIN_SIZE) {
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Rx Reorder buffer full!! \n");
 			kfree(prxbIndicateArray);
 			return;
@@ -743,9 +742,9 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 	if (bPktInBuf && pTS->rx_timeout_indicate_seq == 0xffff) {
 		// Set new pending timer.
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): SET rx timeout timer\n", __func__);
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): SET rx timeout timer\n", __func__);
 		pTS->rx_timeout_indicate_seq = pTS->rx_indicate_seq;
-		if(timer_pending(&pTS->rx_pkt_pending_timer))
+		if (timer_pending(&pTS->rx_pkt_pending_timer))
 			del_timer_sync(&pTS->rx_pkt_pending_timer);
 		pTS->rx_pkt_pending_timer.expires = jiffies +
 				msecs_to_jiffies(pHTInfo->RxReorderPendingTime);
@@ -762,12 +761,12 @@ static u8 parse_subframe(struct sk_buff *skb,
 	struct rtl_80211_hdr_3addr  *hdr = (struct rtl_80211_hdr_3addr *)skb->data;
 	u16		fc = le16_to_cpu(hdr->frame_ctl);
 
-	u16		LLCOffset= sizeof(struct rtl_80211_hdr_3addr);
+	u16		LLCOffset = sizeof(struct rtl_80211_hdr_3addr);
 	u16		ChkLength;
 	bool		bIsAggregateFrame = false;
 	u16		nSubframe_Length;
 	u8		nPadding_Length = 0;
-	u16		SeqNum=0;
+	u16		SeqNum = 0;
 
 	struct sk_buff *sub_skb;
 	/* just for debug purpose */
@@ -793,7 +792,7 @@ static u8 parse_subframe(struct sk_buff *skb,
 
 	skb_pull(skb, LLCOffset);
 
-	if(!bIsAggregateFrame) {
+	if (!bIsAggregateFrame) {
 		rxb->nr_subframes = 1;
 #ifdef JOHN_NOCPY
 		rxb->subframes[0] = skb;
@@ -801,26 +800,26 @@ static u8 parse_subframe(struct sk_buff *skb,
 		rxb->subframes[0] = skb_copy(skb, GFP_ATOMIC);
 #endif
 
-		memcpy(rxb->src,src,ETH_ALEN);
-		memcpy(rxb->dst,dst,ETH_ALEN);
+		memcpy(rxb->src, src, ETH_ALEN);
+		memcpy(rxb->dst, dst, ETH_ALEN);
 		//IEEE80211_DEBUG_DATA(IEEE80211_DL_RX,skb->data,skb->len);
 		return 1;
 	} else {
 		rxb->nr_subframes = 0;
-		memcpy(rxb->src,src,ETH_ALEN);
-		memcpy(rxb->dst,dst,ETH_ALEN);
-		while(skb->len > ETHERNET_HEADER_SIZE) {
+		memcpy(rxb->src, src, ETH_ALEN);
+		memcpy(rxb->dst, dst, ETH_ALEN);
+		while (skb->len > ETHERNET_HEADER_SIZE) {
 			/* Offset 12 denote 2 mac address */
 			nSubframe_Length = *((u16 *)(skb->data + 12));
 			//==m==>change the length order
-			nSubframe_Length = (nSubframe_Length>>8) + (nSubframe_Length<<8);
+			nSubframe_Length = (nSubframe_Length >> 8) + (nSubframe_Length << 8);
 
-			if (skb->len<(ETHERNET_HEADER_SIZE + nSubframe_Length)) {
+			if (skb->len < (ETHERNET_HEADER_SIZE + nSubframe_Length)) {
 				printk("%s: A-MSDU parse error!! pRfd->nTotalSubframe : %d\n",\
 						__func__, rxb->nr_subframes);
-				printk("%s: A-MSDU parse error!! Subframe Length: %d\n",__func__, nSubframe_Length);
-				printk("nRemain_Length is %d and nSubframe_Length is : %d\n",skb->len,nSubframe_Length);
-				printk("The Packet SeqNum is %d\n",SeqNum);
+				printk("%s: A-MSDU parse error!! Subframe Length: %d\n", __func__, nSubframe_Length);
+				printk("nRemain_Length is %d and nSubframe_Length is : %d\n", skb->len, nSubframe_Length);
+				printk("The Packet SeqNum is %d\n", SeqNum);
 				return 0;
 			}
 
@@ -925,7 +924,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	if (HTCCheck(ieee, skb->data))
 	{
-		if(net_ratelimit())
+		if (net_ratelimit())
 			printk("find HTCControl\n");
 		hdrlen += 4;
 		rx_stats->bContainHTC = true;
@@ -972,7 +971,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		 * stations that do not support WEP key mapping). */
 
 		if (!(hdr->addr1[0] & 0x01) || local->bcrx_sta_key)
-			(void) hostap_handle_sta_crypto(local, hdr, &crypt,
+			(void)hostap_handle_sta_crypto(local, hdr, &crypt,
 							&sta);
 #endif
 
@@ -998,18 +997,16 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		goto rx_dropped;
 
 	// if QoS enabled, should check the sequence for each of the AC
-	if ((!ieee->pHTInfo->bCurRxReorderEnable) || !ieee->current_network.qos_data.active|| !IsDataFrame(skb->data) || IsLegacyDataFrame(skb->data)) {
+	if ((!ieee->pHTInfo->bCurRxReorderEnable) || !ieee->current_network.qos_data.active || !IsDataFrame(skb->data) || IsLegacyDataFrame(skb->data)) {
 		if (is_duplicate_packet(ieee, hdr))
 		goto rx_dropped;
 
-	}
-	else
-	{
+	} else {
 		struct rx_ts_record *pRxTS = NULL;
 			//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n",__func__, tid);
-		if(GetTs(
+		if (GetTs(
 				ieee,
-				(struct ts_common_info **) &pRxTS,
+				(struct ts_common_info **)&pRxTS,
 				hdr->addr2,
 				Frame_QoSTID((u8 *)(skb->data)),
 				RX_DIR,
@@ -1017,20 +1014,16 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		{
 
 		//	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pRxTS->rx_last_frag_num is %d,frag is %d,pRxTS->rx_last_seq_num is %d,seq is %d\n",__func__,pRxTS->rx_last_frag_num,frag,pRxTS->rx_last_seq_num,WLAN_GET_SEQ_SEQ(sc));
-			if ((fc & (1<<11)) &&
+			if ((fc & (1 << 11)) &&
 			    (frag == pRxTS->rx_last_frag_num) &&
 			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->rx_last_seq_num)) {
 				goto rx_dropped;
-			}
-			else
-			{
+			} else {
 				pRxTS->rx_last_frag_num = frag;
 				pRxTS->rx_last_seq_num = WLAN_GET_SEQ_SEQ(sc);
 			}
-		}
-		else
-		{
-			IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s(): No TS!! Skip the check!!\n",__func__);
+		} else {
+			IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s(): No TS!! Skip the check!!\n", __func__);
 			goto rx_dropped;
 		}
 	}
@@ -1133,7 +1126,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	}
 
 
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 
 	/* skb: hdr + (possibly fragmented) plaintext payload */
 	// PR: FIXME: hostap has additional conditions in the "if" below:
@@ -1185,7 +1178,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		/* this was the last fragment and the frame will be
 		 * delivered, so remove skb from fragment cache */
 		skb = frag_skb;
-		hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+		hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 		ieee80211_frag_cache_invalidate(ieee, hdr);
 	}
 
@@ -1202,7 +1195,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	ieee->LinkDetectInfo.NumRecvDataInPeriod++;
 	ieee->LinkDetectInfo.NumRxOkInPeriod++;
 
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 	if (crypt && !(fc & IEEE80211_FCTL_WEP) && !ieee->open_wep) {
 		if (/*ieee->ieee802_1x &&*/
 		    ieee80211_is_eapol_frame(ieee, skb, hdrlen)) {
@@ -1254,8 +1247,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	{
 		TID = Frame_QoSTID(skb->data);
 		SeqNum = WLAN_GET_SEQ_SEQ(sc);
-		GetTs(ieee,(struct ts_common_info **) &pTS,hdr->addr2,TID,RX_DIR,true);
-		if (TID !=0 && TID !=3)
+		GetTs(ieee, (struct ts_common_info **) &pTS, hdr->addr2, TID, RX_DIR, true);
+		if (TID != 0 && TID != 3)
 		{
 			ieee->bis_any_nonbepkts = true;
 		}
@@ -1270,7 +1263,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	/* qos data packets & reserved bit is 1 */
 	if (parse_subframe(skb, rx_stats, rxb, src, dst) == 0) {
 		/* only to free rxb, and not submit the packets to upper layer */
-		for(i =0; i < rxb->nr_subframes; i++) {
+		for (i = 0; i < rxb->nr_subframes; i++) {
 			dev_kfree_skb(rxb->subframes[i]);
 		}
 		kfree(rxb);
@@ -1281,7 +1274,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 //added by amy for reorder
 	if (!ieee->pHTInfo->bCurRxReorderEnable || !pTS) {
 //added by amy for reorder
-		for(i = 0; i<rxb->nr_subframes; i++) {
+		for (i = 0; i < rxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = rxb->subframes[i];
 
 			if (sub_skb) {
@@ -1324,10 +1317,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		kfree(rxb);
 		rxb = NULL;
 
-	}
-	else
-	{
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): REORDER ENABLE AND PTS not NULL, and we will enter RxReorderIndicatePacket()\n",__func__);
+	} else {
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): REORDER ENABLE AND PTS not NULL, and we will enter RxReorderIndicatePacket()\n", __func__);
 		RxReorderIndicatePacket(ieee, rxb, pTS, SeqNum);
 	}
 #ifndef JOHN_NOCPY
@@ -1407,10 +1398,9 @@ static int ieee80211_read_qos_param_element(struct ieee80211_qos_parameter_info
 /*
  * Parse a QoS information element
  */
-static int ieee80211_read_qos_info_element(struct
-					   ieee80211_qos_information_element
-					   *element_info, struct ieee80211_info_element
-					   *info_element)
+static int ieee80211_read_qos_info_element(
+		struct ieee80211_qos_information_element *element_info,
+		struct ieee80211_info_element *info_element)
 {
 	int ret = 0;
 	u16 size = sizeof(struct ieee80211_qos_information_element) - 2;
@@ -1438,11 +1428,9 @@ static int ieee80211_read_qos_info_element(struct
 /*
  * Write QoS parameters from the ac parameters.
  */
-static int ieee80211_qos_convert_ac_to_parameters(struct
-						  ieee80211_qos_parameter_info
-						  *param_elm, struct
-						  ieee80211_qos_parameters
-						  *qos_param)
+static int ieee80211_qos_convert_ac_to_parameters(
+		struct ieee80211_qos_parameter_info *param_elm,
+		struct ieee80211_qos_parameters *qos_param)
 {
 	int i;
 	struct ieee80211_qos_ac_parameter *ac_params;
@@ -1455,12 +1443,12 @@ static int ieee80211_qos_convert_ac_to_parameters(struct
 
 		aci = (ac_params->aci_aifsn & 0x60) >> 5;
 
-		if(aci >= QOS_QUEUE_NUM)
+		if (aci >= QOS_QUEUE_NUM)
 			continue;
 		qos_param->aifs[aci] = (ac_params->aci_aifsn) & 0x0f;
 
 		/* WMM spec P.11: The minimum value for AIFSN shall be 2 */
-		qos_param->aifs[aci] = (qos_param->aifs[aci] < 2) ? 2:qos_param->aifs[aci];
+		qos_param->aifs[aci] = (qos_param->aifs[aci] < 2) ? 2 : qos_param->aifs[aci];
 
 		qos_param->cw_min[aci] =
 		    cpu_to_le16(ac_params->ecw_min_max & 0x0F);
@@ -1563,7 +1551,7 @@ static inline void ieee80211_extract_country_ie(
 {
 	if (IS_DOT11D_ENABLE(ieee))
 	{
-		if (info_element->len!= 0)
+		if (info_element->len != 0)
 		{
 			memcpy(network->CountryIeBuf, info_element->data, info_element->len);
 			network->CountryIeLen = info_element->len;
@@ -1579,7 +1567,7 @@ static inline void ieee80211_extract_country_ie(
 		// some AP (e.g. Cisco 1242) don't include country IE in their
 		// probe response frame.
 		//
-		if (IS_EQUAL_CIE_SRC(ieee, addr2) )
+		if (IS_EQUAL_CIE_SRC(ieee, addr2))
 		{
 			UPDATE_CIE_WATCHDOG(ieee);
 		}
@@ -1595,9 +1583,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 {
 	u8 i;
 	short offset;
-	u16	tmp_htcap_len=0;
-	u16	tmp_htinfo_len=0;
-	u16 ht_realtek_agg_len=0;
+	u16	tmp_htcap_len = 0;
+	u16	tmp_htinfo_len = 0;
+	u16 ht_realtek_agg_len = 0;
 	u8  ht_realtek_agg_buf[MAX_IE_LEN];
 //	u16 broadcom_len = 0;
 #ifdef CONFIG_IEEE80211_DEBUG
@@ -1628,7 +1616,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			}
 
 			network->ssid_len = min(info_element->len,
-						(u8) IW_ESSID_MAX_SIZE);
+						(u8)IW_ESSID_MAX_SIZE);
 			memcpy(network->ssid, info_element->data, network->ssid_len);
 			if (network->ssid_len < IW_ESSID_MAX_SIZE)
 				memset(network->ssid + network->ssid_len, 0,
@@ -1707,14 +1695,14 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			break;
 
 		case MFIE_TYPE_TIM:
-			if(info_element->len < 4)
+			if (info_element->len < 4)
 				break;
 
 			network->tim.tim_count = info_element->data[0];
 			network->tim.tim_period = info_element->data[1];
 
 			network->dtim_period = info_element->data[1];
-			if(ieee->state != IEEE80211_LINKED)
+			if (ieee->state != IEEE80211_LINKED)
 				break;
 
 			network->last_dtim_sta_time[0] = stats->mac_time[0];
@@ -1722,22 +1710,22 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 
 			network->dtim_data = IEEE80211_DTIM_VALID;
 
-			if(info_element->data[0] != 0)
+			if (info_element->data[0] != 0)
 				break;
 
-			if(info_element->data[2] & 1)
+			if (info_element->data[2] & 1)
 				network->dtim_data |= IEEE80211_DTIM_MBCAST;
 
-			offset = (info_element->data[2] >> 1)*2;
+			offset = (info_element->data[2] >> 1) * 2;
 
-			if(ieee->assoc_id < 8*offset ||
-				ieee->assoc_id > 8*(offset + info_element->len -3))
+			if (ieee->assoc_id < 8 * offset ||
+				ieee->assoc_id > 8 * (offset + info_element->len - 3))
 
 				break;
 
 			offset = (ieee->assoc_id / 8) - offset;// + ((aid % 8)? 0 : 1) ;
 
-			if(info_element->data[3+offset] & (1<<(ieee->assoc_id%8)))
+			if (info_element->data[3 + offset] & (1 << (ieee->assoc_id % 8)))
 				network->dtim_data |= IEEE80211_DTIM_UCAST;
 
 			//IEEE80211_DEBUG_MGMT("MFIE_TYPE_TIM: partially ignored\n");
@@ -1790,42 +1778,42 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 #endif
 
 			//for HTcap and HTinfo parameters
-			if(tmp_htcap_len == 0){
-				if(info_element->len >= 4 &&
+			if (tmp_htcap_len == 0) {
+				if (info_element->len >= 4 &&
 				   info_element->data[0] == 0x00 &&
 				   info_element->data[1] == 0x90 &&
 				   info_element->data[2] == 0x4c &&
 				   info_element->data[3] == 0x033){
 
-						tmp_htcap_len = min(info_element->len,(u8)MAX_IE_LEN);
-						if(tmp_htcap_len != 0){
+						tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
+						if (tmp_htcap_len != 0) {
 							network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-							network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf)?\
-								sizeof(network->bssht.bdHTCapBuf):tmp_htcap_len;
-							memcpy(network->bssht.bdHTCapBuf,info_element->data,network->bssht.bdHTCapLen);
+							network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ? \
+								sizeof(network->bssht.bdHTCapBuf) : tmp_htcap_len;
+							memcpy(network->bssht.bdHTCapBuf, info_element->data, network->bssht.bdHTCapLen);
 						}
 				}
-				if(tmp_htcap_len != 0)
+				if (tmp_htcap_len != 0)
 					network->bssht.bdSupportHT = true;
 				else
 					network->bssht.bdSupportHT = false;
 			}
 
 
-			if(tmp_htinfo_len == 0){
-				if(info_element->len >= 4 &&
+			if (tmp_htinfo_len == 0) {
+				if (info_element->len >= 4 &&
 					info_element->data[0] == 0x00 &&
 					info_element->data[1] == 0x90 &&
 					info_element->data[2] == 0x4c &&
 					info_element->data[3] == 0x034){
 
-						tmp_htinfo_len = min(info_element->len,(u8)MAX_IE_LEN);
-						if(tmp_htinfo_len != 0){
+						tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
+						if (tmp_htinfo_len != 0) {
 							network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-							if(tmp_htinfo_len){
-								network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf)?\
-									sizeof(network->bssht.bdHTInfoBuf):tmp_htinfo_len;
-								memcpy(network->bssht.bdHTInfoBuf,info_element->data,network->bssht.bdHTInfoLen);
+							if (tmp_htinfo_len) {
+								network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf) ? \
+									sizeof(network->bssht.bdHTInfoBuf) : tmp_htinfo_len;
+								memcpy(network->bssht.bdHTInfoBuf, info_element->data, network->bssht.bdHTInfoLen);
 							}
 
 						}
@@ -1833,22 +1821,22 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				}
 			}
 
-			if(ieee->aggregation){
-				if(network->bssht.bdSupportHT){
-					if(info_element->len >= 4 &&
+			if (ieee->aggregation) {
+				if (network->bssht.bdSupportHT) {
+					if (info_element->len >= 4 &&
 						info_element->data[0] == 0x00 &&
 						info_element->data[1] == 0xe0 &&
 						info_element->data[2] == 0x4c &&
 						info_element->data[3] == 0x02){
 
-						ht_realtek_agg_len = min(info_element->len,(u8)MAX_IE_LEN);
-						memcpy(ht_realtek_agg_buf,info_element->data,info_element->len);
+						ht_realtek_agg_len = min(info_element->len, (u8)MAX_IE_LEN);
+						memcpy(ht_realtek_agg_buf, info_element->data, info_element->len);
 
 					}
-					if(ht_realtek_agg_len >= 5){
+					if (ht_realtek_agg_len >= 5) {
 						network->bssht.bdRT2RTAggregation = true;
 
-						if((ht_realtek_agg_buf[4] == 1) && (ht_realtek_agg_buf[5] & 0x02))
+						if ((ht_realtek_agg_buf[4] == 1) && (ht_realtek_agg_buf[5] & 0x02))
 						network->bssht.bdRT2RTLongSlotTime = true;
 					}
 				}
@@ -1874,17 +1862,16 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 
 				}
 			}
-			if(info_element->len >= 3 &&
+			if (info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x0c &&
 				info_element->data[2] == 0x43)
 			{
 				network->ralink_cap_exist = true;
-			}
-			else
+			} else
 				network->ralink_cap_exist = false;
 			//added by amy for atheros AP
-			if((info_element->len >= 3 &&
+			if ((info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x03 &&
 				info_element->data[2] == 0x7f) ||
@@ -1893,20 +1880,18 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[1] == 0x13 &&
 				info_element->data[2] == 0x74))
 			{
-				printk("========>%s(): athros AP is exist\n",__func__);
+				printk("========>%s(): athros AP is exist\n", __func__);
 				network->atheros_cap_exist = true;
-			}
-			else
+			} else
 				network->atheros_cap_exist = false;
 
-			if(info_element->len >= 3 &&
+			if (info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96)
 			{
 				network->cisco_cap_exist = true;
-			}
-			else
+			} else
 				network->cisco_cap_exist = false;
 			//added by amy for LEAP of cisco
 			if (info_element->len > 4 &&
@@ -1915,33 +1900,28 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[2] == 0x96 &&
 				info_element->data[3] == 0x01)
 			{
-				if(info_element->len == 6)
+				if (info_element->len == 6)
 				{
 					memcpy(network->CcxRmState, &info_element[4], 2);
-					if(network->CcxRmState[0] != 0)
+					if (network->CcxRmState[0] != 0)
 					{
 						network->bCcxRmEnable = true;
-					}
-					else
+					} else
 						network->bCcxRmEnable = false;
 					//
 					// CCXv4 Table 59-1 MBSSID Masks.
 					//
 					network->MBssidMask = network->CcxRmState[1] & 0x07;
-					if(network->MBssidMask != 0)
+					if (network->MBssidMask != 0)
 					{
 						network->bMBssidValid = true;
 						network->MBssidMask = 0xff << (network->MBssidMask);
 						ether_addr_copy(network->MBssid, network->bssid);
 						network->MBssid[5] &= network->MBssidMask;
-					}
-					else
-					{
+					} else {
 						network->bMBssidValid = false;
 					}
-				}
-				else
-				{
+				} else {
 					network->bCcxRmEnable = false;
 				}
 			}
@@ -1951,13 +1931,10 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[2] == 0x96 &&
 				info_element->data[3] == 0x03)
 			{
-				if(info_element->len == 5)
-				{
+				if (info_element->len == 5) {
 					network->bWithCcxVerNum = true;
 					network->BssCcxVerNumber = info_element->data[4];
-				}
-				else
-				{
+				} else {
 					network->bWithCcxVerNum = false;
 					network->BssCcxVerNumber = 0;
 				}
@@ -1977,19 +1954,18 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_HT_CAP:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_HT_CAP: %d bytes\n",
 					     info_element->len);
-			tmp_htcap_len = min(info_element->len,(u8)MAX_IE_LEN);
-			if(tmp_htcap_len != 0){
+			tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
+			if (tmp_htcap_len != 0) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-				network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf)?\
-					sizeof(network->bssht.bdHTCapBuf):tmp_htcap_len;
-				memcpy(network->bssht.bdHTCapBuf,info_element->data,network->bssht.bdHTCapLen);
+				network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ? \
+					sizeof(network->bssht.bdHTCapBuf) : tmp_htcap_len;
+				memcpy(network->bssht.bdHTCapBuf, info_element->data, network->bssht.bdHTCapLen);
 
 				//If peer is HT, but not WMM, call QosSetLegacyWMMParamWithHT()
 				// windows driver will update WMM parameters each beacon received once connected
 				// Linux driver is a bit different.
 				network->bssht.bdSupportHT = true;
-			}
-			else
+			} else
 				network->bssht.bdSupportHT = false;
 			break;
 
@@ -1997,37 +1973,33 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_HT_INFO:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_HT_INFO: %d bytes\n",
 					     info_element->len);
-			tmp_htinfo_len = min(info_element->len,(u8)MAX_IE_LEN);
-			if(tmp_htinfo_len){
+			tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
+			if (tmp_htinfo_len) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_IEEE;
-				network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf)?\
-					sizeof(network->bssht.bdHTInfoBuf):tmp_htinfo_len;
-				memcpy(network->bssht.bdHTInfoBuf,info_element->data,network->bssht.bdHTInfoLen);
+				network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf) ? \
+					sizeof(network->bssht.bdHTInfoBuf) : tmp_htinfo_len;
+				memcpy(network->bssht.bdHTInfoBuf, info_element->data, network->bssht.bdHTInfoLen);
 			}
 			break;
 
 		case MFIE_TYPE_AIRONET:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_AIRONET: %d bytes\n",
 					     info_element->len);
-			if(info_element->len >IE_CISCO_FLAG_POSITION)
+			if (info_element->len > IE_CISCO_FLAG_POSITION)
 			{
 				network->bWithAironetIE = true;
 
 				// CCX 1 spec v1.13, A01.1 CKIP Negotiation (page23):
 				// "A Cisco access point advertises support for CKIP in beacon and probe response packets,
 				//  by adding an Aironet element and setting one or both of the CKIP negotiation bits."
-				if(	(info_element->data[IE_CISCO_FLAG_POSITION]&SUPPORT_CKIP_MIC)	||
-					(info_element->data[IE_CISCO_FLAG_POSITION]&SUPPORT_CKIP_PK)	)
+				if ((info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_MIC)	||
+					(info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_PK))
 				{
 					network->bCkipSupported = true;
-				}
-				else
-				{
+				} else {
 					network->bCkipSupported = false;
 				}
-			}
-			else
-			{
+			} else {
 				network->bWithAironetIE = false;
 				network->bCkipSupported = false;
 			}
@@ -2057,13 +2029,10 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		    data[info_element->len];
 	}
 
-	if(!network->atheros_cap_exist && !network->broadcom_cap_exist &&
-		!network->cisco_cap_exist && !network->ralink_cap_exist && !network->bssht.bdRT2RTAggregation)
-	{
+	if (!network->atheros_cap_exist && !network->broadcom_cap_exist &&
+		!network->cisco_cap_exist && !network->ralink_cap_exist && !network->bssht.bdRT2RTAggregation) {
 		network->unknown_cap_exist = true;
-	}
-	else
-	{
+	} else {
 		network->unknown_cap_exist = false;
 	}
 	return 0;
@@ -2076,44 +2045,25 @@ static inline u8 ieee80211_SignalStrengthTranslate(
 	u8 RetSS;
 
 	// Step 1. Scale mapping.
-	if(CurrSS >= 71 && CurrSS <= 100)
-	{
+	if (CurrSS >= 71 && CurrSS <= 100) {
 		RetSS = 90 + ((CurrSS - 70) / 3);
-	}
-	else if(CurrSS >= 41 && CurrSS <= 70)
-	{
+	} else if (CurrSS >= 41 && CurrSS <= 70) {
 		RetSS = 78 + ((CurrSS - 40) / 3);
-	}
-	else if(CurrSS >= 31 && CurrSS <= 40)
-	{
+	} else if (CurrSS >= 31 && CurrSS <= 40) {
 		RetSS = 66 + (CurrSS - 30);
-	}
-	else if(CurrSS >= 21 && CurrSS <= 30)
-	{
+	} else if (CurrSS >= 21 && CurrSS <= 30) {
 		RetSS = 54 + (CurrSS - 20);
-	}
-	else if(CurrSS >= 5 && CurrSS <= 20)
-	{
+	} else if (CurrSS >= 5 && CurrSS <= 20) {
 		RetSS = 42 + (((CurrSS - 5) * 2) / 3);
-	}
-	else if(CurrSS == 4)
-	{
+	} else if (CurrSS == 4) {
 		RetSS = 36;
-	}
-	else if(CurrSS == 3)
-	{
+	} else if (CurrSS == 3) {
 		RetSS = 27;
-	}
-	else if(CurrSS == 2)
-	{
+	} else if (CurrSS == 2) {
 		RetSS = 18;
-	}
-	else if(CurrSS == 1)
-	{
+	} else if (CurrSS == 1) {
 		RetSS = 9;
-	}
-	else
-	{
+	} else {
 		RetSS = CurrSS;
 	}
 	//RT_TRACE(COMP_DBG, DBG_LOUD, ("##### After Mapping:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
@@ -2193,7 +2143,7 @@ static inline int ieee80211_network_init(
 	network->rsn_ie_len = 0;
 
 	if (ieee80211_parse_info_param
-	    (ieee,beacon->info_element, stats->len - sizeof(*beacon), network, stats))
+	    (ieee, beacon->info_element, stats->len - sizeof(*beacon), network, stats))
 		return 1;
 
 	network->mode = 0;
@@ -2215,10 +2165,10 @@ static inline int ieee80211_network_init(
 		return 1;
 	}
 
-	if(network->bssht.bdSupportHT){
-		if(network->mode == IEEE_A)
+	if (network->bssht.bdSupportHT) {
+		if (network->mode == IEEE_A)
 			network->mode = IEEE_N_5G;
-		else if(network->mode & (IEEE_G | IEEE_B))
+		else if (network->mode & (IEEE_G | IEEE_B))
 			network->mode = IEEE_N_24G;
 	}
 	if (ieee80211_is_empty_essid(network->ssid, network->ssid_len))
@@ -2226,7 +2176,7 @@ static inline int ieee80211_network_init(
 
 	stats->signal = 30 + (stats->SignalStrength * 70) / 100;
 	//stats->signal = ieee80211_SignalStrengthTranslate(stats->signal);
-	stats->noise = ieee80211_translate_todbm((u8)(100-stats->signal)) -25;
+	stats->noise = ieee80211_translate_todbm((u8)(100 - stats->signal)) - 25;
 
 	memcpy(&network->stats, stats, sizeof(network->stats));
 
@@ -2290,10 +2240,10 @@ static inline void update_network(struct ieee80211_network *dst,
 
 	dst->bssht.bdSupportHT = src->bssht.bdSupportHT;
 	dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
-	dst->bssht.bdHTCapLen= src->bssht.bdHTCapLen;
-	memcpy(dst->bssht.bdHTCapBuf,src->bssht.bdHTCapBuf,src->bssht.bdHTCapLen);
-	dst->bssht.bdHTInfoLen= src->bssht.bdHTInfoLen;
-	memcpy(dst->bssht.bdHTInfoBuf,src->bssht.bdHTInfoBuf,src->bssht.bdHTInfoLen);
+	dst->bssht.bdHTCapLen = src->bssht.bdHTCapLen;
+	memcpy(dst->bssht.bdHTCapBuf, src->bssht.bdHTCapBuf, src->bssht.bdHTCapLen);
+	dst->bssht.bdHTInfoLen = src->bssht.bdHTInfoLen;
+	memcpy(dst->bssht.bdHTInfoBuf, src->bssht.bdHTInfoBuf, src->bssht.bdHTInfoLen);
 	dst->bssht.bdHTSpecVer = src->bssht.bdHTSpecVer;
 	dst->bssht.bdRT2RTLongSlotTime = src->bssht.bdRT2RTLongSlotTime;
 	dst->broadcom_cap_exist = src->broadcom_cap_exist;
@@ -2312,7 +2262,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	qos_active = dst->qos_data.active;
 	//old_param = dst->qos_data.old_param_count;
 	old_param = dst->qos_data.param_count;
-	if(dst->flags & NETWORK_HAS_QOS_MASK)
+	if (dst->flags & NETWORK_HAS_QOS_MASK)
 		memcpy(&dst->qos_data, &src->qos_data,
 			sizeof(struct ieee80211_qos_data));
 	else {
@@ -2322,7 +2272,7 @@ static inline void update_network(struct ieee80211_network *dst,
 
 	if (dst->qos_data.supported == 1) {
 		dst->QoS_Enable = 1;
-		if(dst->ssid_len)
+		if (dst->ssid_len)
 			IEEE80211_DEBUG_QOS
 				("QoS the network %s is QoS supported\n",
 				dst->ssid);
@@ -2335,9 +2285,9 @@ static inline void update_network(struct ieee80211_network *dst,
 
 	/* dst->last_associate is not overwritten */
 	dst->wmm_info = src->wmm_info; //sure to exist in beacon or probe response frame.
-	if (src->wmm_param[0].aci_aifsn|| \
-	   src->wmm_param[1].aci_aifsn|| \
-	   src->wmm_param[2].aci_aifsn|| \
+	if (src->wmm_param[0].aci_aifsn || \
+	   src->wmm_param[1].aci_aifsn || \
+	   src->wmm_param[2].aci_aifsn || \
 	   src->wmm_param[3].aci_aifsn) {
 	  memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
 	}
@@ -2434,8 +2384,7 @@ static inline void ieee80211_process_probe_response(
 		if (fc == IEEE80211_STYPE_PROBE_RESP)
 		{
 			// Case 1: Country code
-			if(IS_COUNTRY_IE_VALID(ieee) )
-			{
+			if (IS_COUNTRY_IE_VALID(ieee)) {
 				if (!is_legal_channel(ieee, network->channel)) {
 					printk("GetScanInfo(): For Country code, filter probe response at channel(%d).\n", network->channel);
 					goto out;
@@ -2451,14 +2400,11 @@ static inline void ieee80211_process_probe_response(
 					goto out;
 				}
 			}
-		}
-		else
-		{
+		} else {
 			// Case 1: Country code
-			if(IS_COUNTRY_IE_VALID(ieee) )
-			{
+			if (IS_COUNTRY_IE_VALID(ieee)) {
 				if (!is_legal_channel(ieee, network->channel)) {
-					printk("GetScanInfo(): For Country code, filter beacon at channel(%d).\n",network->channel);
+					printk("GetScanInfo(): For Country code, filter beacon at channel(%d).\n", network->channel);
 					goto out;
 				}
 			}
@@ -2468,7 +2414,7 @@ static inline void ieee80211_process_probe_response(
 				// Filter over channel ch12~14
 				if (network->channel > 14)
 				{
-					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n",network->channel);
+					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n", network->channel);
 					goto out;
 				}
 			}
@@ -2491,18 +2437,17 @@ static inline void ieee80211_process_probe_response(
 		update_network(&ieee->current_network, network);
 		if ((ieee->current_network.mode == IEEE_N_24G || ieee->current_network.mode == IEEE_G)
 		&& ieee->current_network.berp_info_valid){
-		if(ieee->current_network.erp_value& ERP_UseProtection)
+		if (ieee->current_network.erp_value & ERP_UseProtection)
 			ieee->current_network.buseprotection = true;
 		else
 			ieee->current_network.buseprotection = false;
 		}
-		if(is_beacon(beacon->header.frame_ctl))
+		if (is_beacon(beacon->header.frame_ctl))
 		{
-			if(ieee->state == IEEE80211_LINKED)
+			if (ieee->state == IEEE80211_LINKED)
 				ieee->LinkDetectInfo.NumRecvBcnInPeriod++;
-		}
-		else //hidden AP
-			network->flags = (~NETWORK_EMPTY_ESSID & network->flags)|(NETWORK_EMPTY_ESSID & ieee->current_network.flags);
+		} else //hidden AP
+			network->flags = (~NETWORK_EMPTY_ESSID & network->flags) | (NETWORK_EMPTY_ESSID & ieee->current_network.flags);
 	}
 
 	list_for_each_entry(target, &ieee->network_list, list) {
@@ -2543,8 +2488,8 @@ static inline void ieee80211_process_probe_response(
 #endif
 		memcpy(target, network, sizeof(*target));
 		list_add_tail(&target->list, &ieee->network_list);
-		if(ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE)
-			ieee80211_softmac_new_net(ieee,network);
+		if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE)
+			ieee80211_softmac_new_net(ieee, network);
 	} else {
 		IEEE80211_DEBUG_SCAN("Updating '%s' (%pM) via %s.\n",
 				     escape_essid(target->ssid,
@@ -2559,26 +2504,26 @@ static inline void ieee80211_process_probe_response(
 		 */
 		renew = !time_after(target->last_scanned + ieee->scan_age, jiffies);
 		//YJ,add,080819,for hidden ap
-		if(is_beacon(beacon->header.frame_ctl) == 0)
-			network->flags = (~NETWORK_EMPTY_ESSID & network->flags)|(NETWORK_EMPTY_ESSID & target->flags);
+		if (is_beacon(beacon->header.frame_ctl) == 0)
+			network->flags = (~NETWORK_EMPTY_ESSID & network->flags) | (NETWORK_EMPTY_ESSID & target->flags);
 		//if(strncmp(network->ssid, "linksys-c",9) == 0)
 		//	printk("====>2 network->ssid=%s FLAG=%d target.ssid=%s FLAG=%d\n", network->ssid, network->flags, target->ssid, target->flags);
-		if(((network->flags & NETWORK_EMPTY_ESSID) == NETWORK_EMPTY_ESSID) \
+		if (((network->flags & NETWORK_EMPTY_ESSID) == NETWORK_EMPTY_ESSID) \
 		    && (((network->ssid_len > 0) && (strncmp(target->ssid, network->ssid, network->ssid_len)))\
-		    ||((ieee->current_network.ssid_len == network->ssid_len) && (strncmp(ieee->current_network.ssid, network->ssid, network->ssid_len) == 0) && (ieee->state == IEEE80211_NOLINK))))
+ || ((ieee->current_network.ssid_len == network->ssid_len) && (strncmp(ieee->current_network.ssid, network->ssid, network->ssid_len) == 0) && (ieee->state == IEEE80211_NOLINK))))
 			renew = 1;
 		//YJ,add,080819,for hidden ap,end
 
 		update_network(target, network);
-		if(renew && (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE))
-			ieee80211_softmac_new_net(ieee,network);
+		if (renew && (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE))
+			ieee80211_softmac_new_net(ieee, network);
 	}
 
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	if (is_beacon(beacon->header.frame_ctl) && is_same_network(&ieee->current_network, network, ieee) && \
 		(ieee->state == IEEE80211_LINKED)) {
 		if (ieee->handle_beacon)
-			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
+			ieee->handle_beacon(ieee->dev, beacon, &ieee->current_network);
 	}
 
 out:
-- 
2.22.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
