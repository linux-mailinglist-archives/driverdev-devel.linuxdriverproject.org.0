Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED8F13BD23
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 11:12:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B14E485E8D;
	Wed, 15 Jan 2020 10:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llbQsl9gElV4; Wed, 15 Jan 2020 10:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 486B185D8D;
	Wed, 15 Jan 2020 10:12:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BCB01BF2E4
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 10:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F30F884B62
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 10:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LaRrnsig2PFH for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 10:12:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5AB9683F08
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 10:12:15 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x184so8317741pfb.3
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 02:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=nO18urJdX03zMsCtxN5PDbUx1QevamzVjKXTZ+QJcYA=;
 b=ssHrk6c5ruBQTJYA01vD04T40VjYXgxdKRbXJRpsmRs/kdJ+s8wU7esG9MF59PdCQF
 x+uNxrk1FdlmpHYZViQb70pzynLC1PdSHqVdm2xXo1BL4O7Nm9H71kY3yU5tPMzz0Lo3
 766hdD4noLkKI3KjZ5xWTx6cXIWFxwoq7SBHsUsTuCMTHEhWEm2EAHkFmTVnc6hQM6gt
 Xa77TfI4cKrmTQKbNpldyTx7rOOoei6FrN+i5nYiNDFWjEDRlKxd8TrIT9ZqVVS7F85w
 ZpuaeDRXnIDvJBcLkEWsD2NRUf9x5GfOp+8/WTmcmrEjxfuWMmfv0kAiC4JU/KTIyVUa
 qx+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=nO18urJdX03zMsCtxN5PDbUx1QevamzVjKXTZ+QJcYA=;
 b=K3sTS0sUXS3XHFRUyA7uPKrLN+K+zz5yIGKkz52iRnjhM8iw1Sq/Sfc9nzdhZNapOO
 leJdCNAsSIhC/iTYjBydu+e0IUSqXWqdCQCaSV7VMg+V36zPf/TZf+Wq51lVpd9Jdf+1
 xNTVXffz/9fktODmLQ63nb9PjARCK2s2VA/SFe8K0lcrminn2SSDUXeSQlujOohplRpC
 REeErlhKnJ5V6MogG9oycen3u7+LunWrSmWWRyqqygTGMYR+o1D59usZG8TBK1AjN9Tv
 PYGMyDORJf/1p/HAUfJVcawJaPuKT6p6L85ybfhZX8vC5B3/ZDHdJvWKyo7GrDSgGX8S
 K2BA==
X-Gm-Message-State: APjAAAUJWtJiM9+7IUfJEeldVkTyrh/QFqhu2siPY06YeVZDuh4XH4yu
 +xyTABh4Bo4kYP5w8PGrCeI=
X-Google-Smtp-Source: APXvYqwbtqmrR744QPVDLEoXogIaZwOe8/1ms74bczD1fzISn+1frOC+f7Q/+RZVk6beDgB7ci2D2A==
X-Received: by 2002:aa7:9d87:: with SMTP id f7mr30244349pfq.138.1579083134930; 
 Wed, 15 Jan 2020 02:12:14 -0800 (PST)
Received: from localhost.localdomain (125-237-41-215-adsl.sparkbb.co.nz.
 [125.237.41.215])
 by smtp.gmail.com with ESMTPSA id x21sm21069446pfn.164.2020.01.15.02.12.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 02:12:14 -0800 (PST)
Date: Wed, 15 Jan 2020 23:12:08 +1300
From: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: replace printk with natdev_<LEVEL>
 statements in ieee80211
Message-ID: <20200115101208.GA683742@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, paulo.miguel.almeida.rodenas@gmail.com,
 puranjay12@gmail.com, linux-kernel@vger.kernel.org, sanjana99reddy99@gmail.com,
 bhanusreemahesh@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Checkpatch reports 'WARNING: printk() should include KERN_<LEVEL>
facility level'. Fix this by specifying a relevant KERN_<LEVEL> value
for each line in which it was missing.

Once they are fixed, checkpatch reports 'WARNING: Prefer [subsystem eg:
netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then
pr_debug(...  to printk(KERN_DEBUG ...'. Fix this by replacing
relevant printk_<level> statements with their netdev_<level>
equivalent.

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 62 +++++++++----------
 1 file changed, 30 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 00fea127bdc3..e101f7b13c7e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -232,8 +232,7 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	#ifdef NOT_YET
 	if (ieee->iw_mode == IW_MODE_MASTER) {
-		printk(KERN_DEBUG "%s: Master mode not yet supported.\n",
-		       ieee->dev->name);
+		netdev_dbg(ieee->dev, "Master mode not yet supported.\n");
 		return 0;
 /*
   hostap_update_sta_ps(ieee, (struct hostap_ieee80211_hdr_4addr *)
@@ -261,9 +260,9 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	    if (ieee->iw_mode == IW_MODE_MASTER) {
 		if (type != WLAN_FC_TYPE_MGMT && type != WLAN_FC_TYPE_CTRL) {
-			printk(KERN_DEBUG "%s: unknown management frame "
+			netdev_dbg(skb->dev, "unknown management frame "
 			       "(type=0x%02x, stype=0x%02x) dropped\n",
-			       skb->dev->name, type, stype);
+			       type, stype);
 			return -1;
 		}
 
@@ -271,8 +270,8 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 		return 0;
 	}
 
-	printk(KERN_DEBUG "%s: hostap_rx_frame_mgmt: management frame "
-	       "received in non-Host AP mode\n", skb->dev->name);
+	netdev_dbg(skb->dev, "hostap_rx_frame_mgmt: management frame "
+	       "received in non-Host AP mode\n");
 	return -1;
 	#endif
 }
@@ -349,9 +348,9 @@ ieee80211_rx_frame_decrypt(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if (ieee->tkip_countermeasures &&
 	    strcmp(crypt->ops->name, "TKIP") == 0) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "%s: TKIP countermeasures: dropped "
+			netdev_dbg(ieee->dev, "TKIP countermeasures: dropped "
 			       "received packet from %pM\n",
-			       ieee->dev->name, hdr->addr2);
+			       hdr->addr2);
 		}
 		return -1;
 	}
@@ -397,9 +396,9 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 	res = crypt->ops->decrypt_msdu(skb, keyidx, hdrlen, crypt->priv);
 	atomic_dec(&crypt->refcnt);
 	if (res < 0) {
-		printk(KERN_DEBUG "%s: MSDU decryption/MIC verification failed"
+		netdev_dbg(ieee->dev, "MSDU decryption/MIC verification failed"
 		       " (SA=%pM keyidx=%d)\n",
-		       ieee->dev->name, hdr->addr2, keyidx);
+		       hdr->addr2, keyidx);
 		return -1;
 	}
 
@@ -749,7 +748,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	kfree(prxbIndicateArray);
 }
 
-static u8 parse_subframe(struct sk_buff *skb,
+static u8 parse_subframe(struct ieee80211_device *ieee,
+			 struct sk_buff *skb,
 			 struct ieee80211_rx_stats *rx_stats,
 			 struct ieee80211_rxb *rxb, u8 *src, u8 *dst)
 {
@@ -810,11 +810,11 @@ static u8 parse_subframe(struct sk_buff *skb,
 			nSubframe_Length = (nSubframe_Length >> 8) + (nSubframe_Length << 8);
 
 			if (skb->len < (ETHERNET_HEADER_SIZE + nSubframe_Length)) {
-				printk("%s: A-MSDU parse error!! pRfd->nTotalSubframe : %d\n",\
-						__func__, rxb->nr_subframes);
-				printk("%s: A-MSDU parse error!! Subframe Length: %d\n", __func__, nSubframe_Length);
-				printk("nRemain_Length is %d and nSubframe_Length is : %d\n", skb->len, nSubframe_Length);
-				printk("The Packet SeqNum is %d\n", SeqNum);
+				netdev_dbg(ieee->dev, "A-MSDU parse error!! pRfd->nTotalSubframe : %d\n",
+					   rxb->nr_subframes);
+				netdev_dbg(ieee->dev, "A-MSDU parse error!! Subframe Length: %d\n", nSubframe_Length);
+				netdev_dbg(ieee->dev, "nRemain_Length is %d and nSubframe_Length is : %d\n", skb->len, nSubframe_Length);
+				netdev_dbg(ieee->dev, "The Packet SeqNum is %d\n", SeqNum);
 				return 0;
 			}
 
@@ -904,8 +904,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	stats = &ieee->stats;
 
 	if (skb->len < 10) {
-		printk(KERN_INFO "%s: SKB length < 10\n",
-		       dev->name);
+		netdev_info(dev, "SKB length < 10\n");
 		goto rx_dropped;
 	}
 
@@ -919,7 +918,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	if (HTCCheck(ieee, skb->data)) {
 		if (net_ratelimit())
-			printk("find HTCControl\n");
+			netdev_warn(dev, "find HTCControl\n");
 		hdrlen += 4;
 		rx_stats->bContainHTC = true;
 	}
@@ -1113,7 +1112,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
 	    (keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt)) < 0) {
-		printk("decrypt frame error\n");
+		netdev_dbg(ieee->dev, "decrypt frame error\n");
 		goto rx_dropped;
 	}
 
@@ -1141,9 +1140,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 			flen -= hdrlen;
 
 		if (frag_skb->tail + flen > frag_skb->end) {
-			printk(KERN_WARNING "%s: host decrypted and "
-			       "reassembled frame did not fit skb\n",
-			       dev->name);
+			netdev_warn(dev, "host decrypted and "
+			       "reassembled frame did not fit skb\n");
 			ieee80211_frag_cache_invalidate(ieee, hdr);
 			goto rx_dropped;
 		}
@@ -1178,7 +1176,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	 * encrypted/authenticated */
 	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
 	    ieee80211_rx_frame_decrypt_msdu(ieee, skb, keyidx, crypt)) {
-		printk("==>decrypt msdu error\n");
+		netdev_dbg(ieee->dev, "==>decrypt msdu error\n");
 		goto rx_dropped;
 	}
 
@@ -1250,7 +1248,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		goto rx_dropped;
 	/* to parse amsdu packets */
 	/* qos data packets & reserved bit is 1 */
-	if (parse_subframe(skb, rx_stats, rxb, src, dst) == 0) {
+	if (parse_subframe(ieee, skb, rx_stats, rxb, src, dst) == 0) {
 		/* only to free rxb, and not submit the packets to upper layer */
 		for (i = 0; i < rxb->nr_subframes; i++) {
 			dev_kfree_skb(rxb->subframes[i]);
@@ -1863,7 +1861,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x13 &&
 				info_element->data[2] == 0x74)) {
-				printk("========>%s(): athros AP is exist\n", __func__);
+				netdev_dbg(ieee->dev, "========> athros AP is exist\n");
 				network->atheros_cap_exist = true;
 			} else
 				network->atheros_cap_exist = false;
@@ -1980,8 +1978,8 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			}
 			break;
 		case MFIE_TYPE_QOS_PARAMETER:
-			printk(KERN_ERR
-			       "QoS Error need to parse QOS_PARAMETER IE\n");
+			netdev_err(ieee->dev,
+				   "QoS Error need to parse QOS_PARAMETER IE\n");
 			break;
 
 		case MFIE_TYPE_COUNTRY:
@@ -2357,14 +2355,14 @@ static inline void ieee80211_process_probe_response(
 			if (IS_COUNTRY_IE_VALID(ieee)) {
 				// Case 1: Country code
 				if (!is_legal_channel(ieee, network->channel)) {
-					printk("GetScanInfo(): For Country code, filter probe response at channel(%d).\n", network->channel);
+					netdev_warn(ieee->dev, "GetScanInfo(): For Country code, filter probe response at channel(%d).\n", network->channel);
 					goto out;
 				}
 			} else {
 				// Case 2: No any country code.
 				// Filter over channel ch12~14
 				if (network->channel > 11) {
-					printk("GetScanInfo(): For Global Domain, filter probe response at channel(%d).\n", network->channel);
+					netdev_warn(ieee->dev, "GetScanInfo(): For Global Domain, filter probe response at channel(%d).\n", network->channel);
 					goto out;
 				}
 			}
@@ -2372,14 +2370,14 @@ static inline void ieee80211_process_probe_response(
 			if (IS_COUNTRY_IE_VALID(ieee)) {
 				// Case 1: Country code
 				if (!is_legal_channel(ieee, network->channel)) {
-					printk("GetScanInfo(): For Country code, filter beacon at channel(%d).\n", network->channel);
+					netdev_warn(ieee->dev, "GetScanInfo(): For Country code, filter beacon at channel(%d).\n", network->channel);
 					goto out;
 				}
 			} else {
 				// Case 2: No any country code.
 				// Filter over channel ch12~14
 				if (network->channel > 14) {
-					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n", network->channel);
+					netdev_warn(ieee->dev, "GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n", network->channel);
 					goto out;
 				}
 			}
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
