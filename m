Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DD51D6D83
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 23:40:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80C6F861E3;
	Sun, 17 May 2020 21:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UqjDWUZrbYdL; Sun, 17 May 2020 21:40:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8516F861FF;
	Sun, 17 May 2020 21:40:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4AEB21BF2B7
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 21:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 402E02035B
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 21:40:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ipiyfcX5HKb for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 21:40:41 +0000 (UTC)
X-Greylist: delayed 00:31:37 by SQLgrey-1.7.6
Received: from mail-vk1-f201.google.com (mail-vk1-f201.google.com
 [209.85.221.201])
 by silver.osuosl.org (Postfix) with ESMTPS id A105A20116
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 21:40:41 +0000 (UTC)
Received: by mail-vk1-f201.google.com with SMTP id w79so3807380vkw.12
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 14:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=bF8z93o47HlcJUHuxu+yzZBCELvhT+1hX5AP8cWzK7I=;
 b=E64Y9ONsVfkw//ihBt0DC9gxvYSa+BKgHcOUpyjkoPceQDRfsZkmqiZByuH8YYS2TY
 jyIyYzQdyDLQotkkm/fvH4TqOAkrabjm3I3DZNapKGQWkx/Z4I0cPtGqzFlLi3elqLdN
 3MxxYM6R0WXo7F4FRGCjyQZBHrJ1iCoynT/eR5BiGEyPPAkHrCUFlqBBexv4YSlxc47E
 O5iPTkgbnsna/k0PvnrSGH1jweGHtcwEsZxRpVOvGPM/gLxAxKswS0YwcVfIv+j7V6lj
 40IgIa+u7R9UasxmkcsJds+h10hPDApFDMLf3BBm/TGY/8angiQNHPh81tRPCR+je5io
 3VJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=bF8z93o47HlcJUHuxu+yzZBCELvhT+1hX5AP8cWzK7I=;
 b=cPAiojf4oYiR/zXyNXqg/xI3iT5TxurDMoMllut8Up/NIvfJVXBOpmQoRsUn2IggcF
 ELG3SrU5gtoACF5dskDb3zEcLqqczgTWr9CQ9Fc3mE6xCEWtclLeHijH+m2I6QcaEQqY
 eybzE4e+yyJv7KH2syDXTRvyZpfWrU1EglMuGDsqtM6sOY0SK9WfRUx4mO+syis9x1B7
 EfJNTlDXKYDuNxlDl/iEzBiEmHRdUG8bxDsOV1XzIyZGahot4dzm3exodsjpl0YoHdj8
 XsJQvFzsh7BMaeNc+k7PGOKmypZfNesdKaEM9Bw8dI9QjH3mx6c6dR3sYTMPms45rA+s
 oQbg==
X-Gm-Message-State: AOAM532je8ROE7jsg7YMiy/O4JIYWO+m/HNdRBc76fbbrwJgSp5cgDYA
 ySdeKO4yQgLQSAuEQWT7s+QmvDrhE7PX
X-Google-Smtp-Source: ABdhPJxlVJJySVMnIedJ10ma6f1gnAgrsaqX8sLvSYKLVhCS3BSZwwQgI/KGbhgTYPV1NwOAcBxXXA1tth1u
X-Received: by 2002:a0c:b5c4:: with SMTP id o4mr12587567qvf.229.1589748055115; 
 Sun, 17 May 2020 13:40:55 -0700 (PDT)
Date: Sun, 17 May 2020 21:40:45 +0100
In-Reply-To: <202005180407.tRbGahKX%lkp@intel.com>
Message-Id: <20200517204045.183223-1-pterjan@google.com>
Mime-Version: 1.0
References: <202005180407.tRbGahKX%lkp@intel.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH v2] staging: rtl8192u: Merge almost duplicate code
From: Pascal Terjan <pterjan@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
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
Cc: Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This causes a change in behaviour:
- stats also get updated when reordering, this seems like it should be
  the case but those lines were commented out.
- sub_skb NULL check now happens early in both cases, previously it
  happened only after dereferencing it 12 times, so it may not actually
  be needed.

Signed-off-by: Pascal Terjan <pterjan@google.com>

---

v2: Made the new function static

 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 127 +++++++-----------
 1 file changed, 50 insertions(+), 77 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index e101f7b13c7e..60dbb584b22c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -520,55 +520,68 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
 	return true;
 }
 
-void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb **prxbIndicateArray, u8  index)
+static void indicate_packets(struct ieee80211_device *ieee,
+			     struct ieee80211_rxb *rxb)
 {
-	u8 i = 0, j = 0;
+	struct net_device_stats *stats = &ieee->stats;
+	struct net_device *dev = ieee->dev;
 	u16 ethertype;
-//	if(index > 1)
-//		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n",__func__,index);
-	for (j = 0; j < index; j++) {
-//added by amy for reorder
-		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
-		for (i = 0; i < prxb->nr_subframes; i++) {
-			struct sk_buff *sub_skb = prxb->subframes[i];
+	u8 i;
+
+	for (i = 0; i < rxb->nr_subframes; i++) {
+		struct sk_buff *sub_skb = rxb->subframes[i];
+
+		if (!sub_skb)
+			continue;
 
 		/* convert hdr + possible LLC headers into Ethernet header */
-			ethertype = (sub_skb->data[6] << 8) | sub_skb->data[7];
-			if (sub_skb->len >= 8 &&
-				((memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) == 0 &&
-				  ethertype != ETH_P_AARP && ethertype != ETH_P_IPX) ||
-				 memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE) == 0)) {
+		ethertype = (sub_skb->data[6] << 8) | sub_skb->data[7];
+		if (sub_skb->len >= 8 &&
+		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
+			ethertype != ETH_P_AARP &&
+			ethertype != ETH_P_IPX) ||
+		     !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
 			/* remove RFC1042 or Bridge-Tunnel encapsulation and
 			 * replace EtherType */
-				skb_pull(sub_skb, SNAP_SIZE);
-				memcpy(skb_push(sub_skb, ETH_ALEN), prxb->src, ETH_ALEN);
-				memcpy(skb_push(sub_skb, ETH_ALEN), prxb->dst, ETH_ALEN);
-			} else {
+			skb_pull(sub_skb, SNAP_SIZE);
+		} else {
 			/* Leave Ethernet header part of hdr and full payload */
-				put_unaligned_be16(sub_skb->len, skb_push(sub_skb, 2));
-				memcpy(skb_push(sub_skb, ETH_ALEN), prxb->src, ETH_ALEN);
-				memcpy(skb_push(sub_skb, ETH_ALEN), prxb->dst, ETH_ALEN);
-			}
-			//stats->rx_packets++;
-			//stats->rx_bytes += sub_skb->len;
+			put_unaligned_be16(sub_skb->len, skb_push(sub_skb, 2));
+		}
+		memcpy(skb_push(sub_skb, ETH_ALEN), rxb->src, ETH_ALEN);
+		memcpy(skb_push(sub_skb, ETH_ALEN), rxb->dst, ETH_ALEN);
+
+		stats->rx_packets++;
+		stats->rx_bytes += sub_skb->len;
+		if (is_multicast_ether_addr(rxb->dst))
+			stats->multicast++;
 
 		/* Indicate the packets to upper layer */
-			if (sub_skb) {
-				sub_skb->protocol = eth_type_trans(sub_skb, ieee->dev);
-				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
-				sub_skb->dev = ieee->dev;
-				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
-				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
-				ieee->last_rx_ps_time = jiffies;
-				netif_rx(sub_skb);
-			}
-		}
+		sub_skb->protocol = eth_type_trans(sub_skb, dev);
+		memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
+		sub_skb->dev = dev;
+		/* 802.11 crc not sufficient */
+		sub_skb->ip_summed = CHECKSUM_NONE;
+		ieee->last_rx_ps_time = jiffies;
+		netif_rx(sub_skb);
+	}
+}
+
+void ieee80211_indicate_packets(struct ieee80211_device *ieee,
+				struct ieee80211_rxb **prxbIndicateArray,
+				u8 index)
+{
+	u8 i;
+
+	for (i = 0; i < index; i++) {
+		struct ieee80211_rxb *prxb = prxbIndicateArray[i];
+
+		indicate_packets(ieee, prxb);
 		kfree(prxb);
 		prxb = NULL;
 	}
 }
 
-
 static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				    struct ieee80211_rxb *prxb,
 				    struct rx_ts_record *pTS, u16 SeqNum)
@@ -721,6 +734,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 	/* Handling pending timer. Set this timer to prevent from long time Rx buffering.*/
 	if (index > 0) {
+		u8 i;
 		// Cancel previous pending timer.
 	//	del_timer_sync(&pTS->rx_pkt_pending_timer);
 		pTS->rx_timeout_indicate_seq = 0xffff;
@@ -877,7 +891,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	u16 fc, type, stype, sc;
 	struct net_device_stats *stats;
 	unsigned int frag;
-	u16 ethertype;
 	//added by amy for reorder
 	u8	TID = 0;
 	u16	SeqNum = 0;
@@ -1260,47 +1273,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 //added by amy for reorder
 	if (!ieee->pHTInfo->bCurRxReorderEnable || !pTS) {
-//added by amy for reorder
-		for (i = 0; i < rxb->nr_subframes; i++) {
-			struct sk_buff *sub_skb = rxb->subframes[i];
-
-			if (sub_skb) {
-				/* convert hdr + possible LLC headers into Ethernet header */
-				ethertype = (sub_skb->data[6] << 8) | sub_skb->data[7];
-				if (sub_skb->len >= 8 &&
-						((memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) == 0 &&
-						  ethertype != ETH_P_AARP && ethertype != ETH_P_IPX) ||
-						 memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE) == 0)) {
-					/* remove RFC1042 or Bridge-Tunnel encapsulation and
-					 * replace EtherType */
-					skb_pull(sub_skb, SNAP_SIZE);
-					memcpy(skb_push(sub_skb, ETH_ALEN), src, ETH_ALEN);
-					memcpy(skb_push(sub_skb, ETH_ALEN), dst, ETH_ALEN);
-				} else {
-					u16 len;
-					/* Leave Ethernet header part of hdr and full payload */
-					len = be16_to_cpu(htons(sub_skb->len));
-					memcpy(skb_push(sub_skb, 2), &len, 2);
-					memcpy(skb_push(sub_skb, ETH_ALEN), src, ETH_ALEN);
-					memcpy(skb_push(sub_skb, ETH_ALEN), dst, ETH_ALEN);
-				}
-
-				stats->rx_packets++;
-				stats->rx_bytes += sub_skb->len;
-				if (is_multicast_ether_addr(dst)) {
-					stats->multicast++;
-				}
-
-				/* Indicate the packets to upper layer */
-				sub_skb->protocol = eth_type_trans(sub_skb, dev);
-				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
-				sub_skb->dev = dev;
-				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
-				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
-				ieee->last_rx_ps_time = jiffies;
-				netif_rx(sub_skb);
-			}
-		}
+		indicate_packets(ieee, rxb);
 		kfree(rxb);
 		rxb = NULL;
 
-- 
2.26.2.761.g0e0b3e54be-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
