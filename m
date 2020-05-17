Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 313B81D6B64
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 19:24:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7AA3869F8;
	Sun, 17 May 2020 17:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8gnYs-ZXmYHE; Sun, 17 May 2020 17:24:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A3BAB868E4;
	Sun, 17 May 2020 17:24:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16E7A1BF45A
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 17:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 133A887DAE
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 17:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fHQXVnhaXMik for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 17:24:35 +0000 (UTC)
X-Greylist: delayed 00:19:24 by SQLgrey-1.7.6
Received: from mail-oo1-f73.google.com (mail-oo1-f73.google.com
 [209.85.161.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4D5B87C1C
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 17:24:35 +0000 (UTC)
Received: by mail-oo1-f73.google.com with SMTP id y22so5118399oos.12
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 10:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=dkKURodgy3jG25cttpEp0uozoRnJeq6PMT5tfOrDLMc=;
 b=c2WNejfzhlGZ3P7COgoKcgaGQmYN9GbCo3TZGtgDsctU+GOOILokXIIcEQEUP++4ni
 Akdz8ZwieN/0Sqo73N74yBxrnC3FvNyNH+P6Rp/39iCcqRUHDpF35dpFm3oN4xbudPy3
 am3Cx9OuOnyFj/wELyamEieULTj+eWQ8Df5/MIfj2NddB51OckvZtfyhppjiG85Xi7/X
 /x5w1CNwaLXWVmVVTUhtnfXMzR8ksP3Si5hijShMK9ynQaCB7cJzrvmj9g58/AV0rgYG
 8VKeBaqEtVoeFZj7WvQKX7s363Xk9xQqQooX+hyeJ5NXd+Bre/qxPrkyjKmmzNMs9nb+
 E6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=dkKURodgy3jG25cttpEp0uozoRnJeq6PMT5tfOrDLMc=;
 b=XxgRlST+5lQIW6BixkaMNaxC/HFtAcUi2zteROYjRf0GNVG+m6IEgd+VZ+vR1UNYyz
 HmsdZl5apmah71L9fFtspy/Y8mJeio7vWSSf8p4s7l1JbJIi3KibJbLDSAHtkHou2fAU
 f3laVLPDHaovBpw33Cd+BeI5ZYztFUYalnMe0dk69U6PAgm7azdhN9qquO8V7dU4z+n2
 5S5QKYOaE5aLDd+O34zxCjb9Podpbj6j84sAqRLd+Alyl1Sr7S3ILLXOLENNGO12jou1
 WYfeWaji8fRTXWWDVkKeTBmEDpfjAivmyDPjbbI+gRd+sMoSr13pa6Cy8OpRxiEjK1dp
 NXgw==
X-Gm-Message-State: AOAM531bZdOQzHB3r7UiTkFgndNc3VrO23gfHzb6qhUPES8lVKrMoGiM
 1AK8J/RFL54Y9N9FMaabVIkw6eo00reP
X-Google-Smtp-Source: ABdhPJxDTquhIBmuESw8P1Fcsz3tWHgDQGUMMjXDzdziCYf6XSrBlqY2/KV3gLMesKKUSWGyK0NYJFyEEnR1
X-Received: by 2002:a25:7607:: with SMTP id r7mr20541261ybc.493.1589734704157; 
 Sun, 17 May 2020 09:58:24 -0700 (PDT)
Date: Sun, 17 May 2020 17:58:19 +0100
Message-Id: <20200517165819.136715-1-pterjan@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH] staging: rtl8192u: Merge almost duplicate code
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
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 126 +++++++-----------
 1 file changed, 49 insertions(+), 77 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index e101f7b13c7e..3309f64be4c9 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -520,55 +520,67 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
 	return true;
 }
 
-void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb **prxbIndicateArray, u8  index)
+void indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb *rxb)
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
@@ -721,6 +733,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 	/* Handling pending timer. Set this timer to prevent from long time Rx buffering.*/
 	if (index > 0) {
+		u8 i;
 		// Cancel previous pending timer.
 	//	del_timer_sync(&pTS->rx_pkt_pending_timer);
 		pTS->rx_timeout_indicate_seq = 0xffff;
@@ -877,7 +890,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	u16 fc, type, stype, sc;
 	struct net_device_stats *stats;
 	unsigned int frag;
-	u16 ethertype;
 	//added by amy for reorder
 	u8	TID = 0;
 	u16	SeqNum = 0;
@@ -1260,47 +1272,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
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
