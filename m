Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C541D9B53
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 May 2020 17:32:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F30DB88660;
	Tue, 19 May 2020 15:32:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KnZb0vxtFOH5; Tue, 19 May 2020 15:32:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65F3188604;
	Tue, 19 May 2020 15:32:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B50151BF3E3
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 15:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B148986A1A
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 15:32:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G-dkgH4TlZ_b for <devel@linuxdriverproject.org>;
 Tue, 19 May 2020 15:32:54 +0000 (UTC)
X-Greylist: delayed 00:24:01 by SQLgrey-1.7.6
Received: from mail-oo1-f73.google.com (mail-oo1-f73.google.com
 [209.85.161.73])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5812D8651A
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 15:32:54 +0000 (UTC)
Received: by mail-oo1-f73.google.com with SMTP id p33so79056ooi.11
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 08:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+wP69/904PefiGiLw/V8onQeKAqxNcBcP66DujV1dB4=;
 b=plR5NJJ1BbcbZRNY9PmZPREfYXH7tLhBxMsK9+6eNc4N/lZPnnO4rPmBb0FSRbTPMI
 uPP5J+FEwpgE1QMr7EpmqDctzd1+i1xUwRwptiD++gYXT6ICwLsErFnjiYlohc/JbjQx
 buBbDS1MNu30oeZ3fPWvprOzmhFdIehKX7pY9YEIHXLUhyQ7daNrvabl+JfWBbe4MclW
 sMu49ZTXlurV9MxDbV5s0yzH/7fdWlPJj3lqO3dROnLbDmzsNmQCox7U99nb7LrEiqO9
 XcgQ44NiH/7T63C0gjOUvUxaA4Zb6vUbqYRoj8PDVTsqeLZvhva7KN5ei3W72+GXYg+T
 wqlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+wP69/904PefiGiLw/V8onQeKAqxNcBcP66DujV1dB4=;
 b=Ly36rEXZ7u6boYuYxOh0u8B+wCVUO5SKNu+8bYTKsPPvPBs1pPTFOA9OHb7TAXuNW6
 ot/QN7aq5kec24km0gRDrCCZTZQU6ymcSYu4npt6hTmDA8W4DlGHlKQwwSL/lqTfUHsN
 jrxAMBlz8W5BzbXByrZDuKdMeOVY72uHyoAiLAmk9eoaWfCdVAW8KIgnDYXrW2sfG9+S
 9wT4j42dGBSVcsODtdwoQSB6XXmAffn8embwV6l8Pw2I88FXq15vJGH12lCFMfqvU73U
 UPWzrhP4eeCkhc21eSz3otGPiPKwzK96vnZt2hMJ+Y93lHImggzQ9Gh1kVtuiMGjIasW
 g6WA==
X-Gm-Message-State: AOAM530XPAWLv21F0HRoiE6eBh2klhG09dGnRJjwD2UzoJ2GIPCDKXs/
 bk3BaFUbfFAt2vxKIzvxdY4n04idT+Oo
X-Google-Smtp-Source: ABdhPJz5jT9Wx8y/axLs4ycq+pHp5iDi4faeQ/2HDMGLsQ+3JSlW4J5wnzHez5iOB6TVWUBBs9tw6Pa+2Od3
X-Received: by 2002:a25:e081:: with SMTP id x123mr24459397ybg.37.1589900448690; 
 Tue, 19 May 2020 08:00:48 -0700 (PDT)
Date: Tue, 19 May 2020 16:00:42 +0100
In-Reply-To: <202005180407.tRbGahKX%lkp@intel.com>,
 <20200519141641.GA577903@kroah.com>
Message-Id: <20200519150042.199690-1-pterjan@google.com>
Mime-Version: 1.0
References: <202005180407.tRbGahKX%lkp@intel.com>,
 <20200519141641.GA577903@kroah.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH v3] staging: rtl8192u: Merge almost duplicate code
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
v3: Fixed an unused variable

 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 126 +++++++-----------
 1 file changed, 49 insertions(+), 77 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index e101f7b13c7e..195d963c4fbb 100644
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
