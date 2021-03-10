Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E6E333A86
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 11:46:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8D0C84382;
	Wed, 10 Mar 2021 10:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QqPUBnTMuzD8; Wed, 10 Mar 2021 10:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F59A84352;
	Wed, 10 Mar 2021 10:46:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB60A1BF3EE
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 10:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A93F84352
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 10:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aSTkgJ0tUmvn for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 10:46:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEE748411A
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 10:46:32 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id s21so851320pfm.1
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 02:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GI0LvxVWnBHKRJ/ABECeLBRx+47qje3za2yNkc6q9Cg=;
 b=LtcEUhKZwMqdrPOvjO+fndjQpDbIJohdvWTJfztjMC0dYw+o5S2kV2bKjwlzi9aMri
 DTRlU6rGpg053NqYh7hUvJGVtSkq0eXOLPXaxq+imS3a+tDcPs356EiK4pt71wCRPRYY
 ACB9gZQUIliYPeKrLUlXUkZeT40FWoBGnDy9amk/CRuh8yu/sMFvE6JCDsa5vBSp6c5c
 /hUHk4SEUb0qrKfEDfLRhF99cEOBKV/b4mlUngBbZfwMfTIGIN1A4ISK0D1RvY/Jkmhp
 Ojz2d9W6FevcdM9SxTBTutZZp+toQrTOPWucbkP4iawwuPY4grhc26lE1KLShjGIpgFG
 5j7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GI0LvxVWnBHKRJ/ABECeLBRx+47qje3za2yNkc6q9Cg=;
 b=KX7RH1tjxe3hwRwEEK6hGV7cZw1bBq3TZlUMIxLBDqDxaq+uPvlIyqKh8vp1NmRSI0
 VOMCsuhJ5mt4JOFY4F21H4ML2bXqXRtgb6z+Os1Dp6cC8o//MTlgVAmIG75qxe74jPUz
 TSPvaNG37sAzgN812RY1aMAfsM2rhM6ty2mt5crIL8vypjYaLUPps29/79qwGDucYx6K
 2TH7S6SGa8N5oPdngbnSQuiRFv3pXp8LgzIiiByi7UckqdaSGxMHDMtlqZIY04tojAJI
 OxAODbMl3T1kZjFL4QYSEuAZbrtZTzfq5NH5qEdEtOUrujWAEFShU7szqxgkkqpbq5N8
 2aOw==
X-Gm-Message-State: AOAM5322ET0Rv2dyJ8PLKdkDtRd8FNMLUow7wdKOpscaaMKOr5pEgf4N
 ecopqf8cL+eZYJD0BXo4T70=
X-Google-Smtp-Source: ABdhPJwE1TuzTzrm74Pwem5KVwzGkDl0zgfeE2Y7fKMeHPrzRAu9gwPkYitl0WwEmd1p3q9JBYVamw==
X-Received: by 2002:a63:c20:: with SMTP id b32mr2330288pgl.79.1615373192099;
 Wed, 10 Mar 2021 02:46:32 -0800 (PST)
Received: from localhost.localdomain ([171.49.209.253])
 by smtp.gmail.com with ESMTPSA id fs9sm5959372pjb.40.2021.03.10.02.46.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 02:46:31 -0800 (PST)
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192u: ieee80211: Remove braces for single line
 blocks
Date: Wed, 10 Mar 2021 16:13:54 +0530
Message-Id: <20210310104353.14531-1-atulgopinathan@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Atul Gopinathan <atulgopinathan@gmail.com>,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove braces around those `if` and `for` blocks which contain a
single line and therefore fix the Checkpatch warning of the
following type:

"WARNING: braces {} are not necessary for single statement blocks"

Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 42 ++++++++-----------
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c |  4 +-
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c |  6 +--
 3 files changed, 22 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index b6fee7230ce0..b0e01ee65f7f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -612,9 +612,9 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		pHTInfo->RxReorderDropCounter++;
 		{
 			int i;
-			for (i = 0; i < prxb->nr_subframes; i++) {
+			for (i = 0; i < prxb->nr_subframes; i++)
 				dev_kfree_skb(prxb->subframes[i]);
-			}
+
 			kfree(prxb);
 			prxb = NULL;
 		}
@@ -632,11 +632,11 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		pTS->rx_indicate_seq = (pTS->rx_indicate_seq + 1) % 4096;
 		bMatchWinStart = true;
 	} else if (SN_LESS(WinEnd, SeqNum)) {
-		if (SeqNum >= (WinSize - 1)) {
+		if (SeqNum >= (WinSize - 1))
 			pTS->rx_indicate_seq = SeqNum + 1 - WinSize;
-		} else {
+		else
 			pTS->rx_indicate_seq = 4095 - (WinSize - (SeqNum + 1)) + 1;
-		}
+
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Window Shift! IndicateSeq: %d, NewSeq: %d\n", pTS->rx_indicate_seq, SeqNum);
 	}
 
@@ -674,9 +674,9 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				list_add_tail(&pReorderEntry->List, &ieee->RxReorder_Unused_List);
 				{
 					int i;
-					for (i = 0; i < prxb->nr_subframes; i++) {
+					for (i = 0; i < prxb->nr_subframes; i++)
 						dev_kfree_skb(prxb->subframes[i]);
-					}
+
 					kfree(prxb);
 					prxb = NULL;
 				}
@@ -693,9 +693,9 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): There is no reorder entry!! Packet is dropped!!\n");
 			{
 				int i;
-				for (i = 0; i < prxb->nr_subframes; i++) {
+				for (i = 0; i < prxb->nr_subframes; i++)
 					dev_kfree_skb(prxb->subframes[i]);
-				}
+
 				kfree(prxb);
 				prxb = NULL;
 			}
@@ -785,13 +785,12 @@ static u8 parse_subframe(struct ieee80211_device *ieee,
 		bIsAggregateFrame = true;
 	}
 
-	if (IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (IEEE80211_QOS_HAS_SEQ(fc))
 		LLCOffset += 2;
-	}
 
-	if (rx_stats->bContainHTC) {
+	if (rx_stats->bContainHTC)
 		LLCOffset += HTCLNG;
-	}
+
 	// Null packet, don't indicate it to upper layer
 	ChkLength = LLCOffset;/* + (Frame_WEP(frame)!=0 ?Adapter->MgntInfo.SecurityInfo.EncryptionHeadOverhead:0);*/
 
@@ -855,13 +854,11 @@ static u8 parse_subframe(struct ieee80211_device *ieee,
 
 			if (skb->len != 0) {
 				nPadding_Length = 4 - ((nSubframe_Length + ETHERNET_HEADER_SIZE) % 4);
-				if (nPadding_Length == 4) {
+				if (nPadding_Length == 4)
 					nPadding_Length = 0;
-				}
 
-				if (skb->len < nPadding_Length) {
+				if (skb->len < nPadding_Length)
 					return 0;
-				}
 
 				skb_pull(skb, nPadding_Length);
 			}
@@ -1248,9 +1245,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		TID = Frame_QoSTID(skb->data);
 		SeqNum = WLAN_GET_SEQ_SEQ(sc);
 		GetTs(ieee, (struct ts_common_info **)&pTS, hdr->addr2, TID, RX_DIR, true);
-		if (TID != 0 && TID != 3) {
+		if (TID != 0 && TID != 3)
 			ieee->bis_any_nonbepkts = true;
-		}
 	}
 //added by amy for reorder
 	/* skb: hdr + (possible reassembled) full plaintext payload */
@@ -1262,9 +1258,9 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	/* qos data packets & reserved bit is 1 */
 	if (parse_subframe(ieee, skb, rx_stats, rxb, src, dst) == 0) {
 		/* only to free rxb, and not submit the packets to upper layer */
-		for (i = 0; i < rxb->nr_subframes; i++) {
+		for (i = 0; i < rxb->nr_subframes; i++)
 			dev_kfree_skb(rxb->subframes[i]);
-		}
+
 		kfree(rxb);
 		rxb = NULL;
 		goto rx_dropped;
@@ -1523,11 +1519,9 @@ static inline void ieee80211_extract_country_ie(
 		// some AP (e.g. Cisco 1242) don't include country IE in their
 		// probe response frame.
 		//
-		if (IS_EQUAL_CIE_SRC(ieee, addr2)) {
+		if (IS_EQUAL_CIE_SRC(ieee, addr2))
 			UPDATE_CIE_WATCHDOG(ieee);
-		}
 	}
-
 }
 
 int ieee80211_parse_info_param(struct ieee80211_device *ieee,
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index bd8914645e95..96e6aaf859ec 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -301,9 +301,9 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 	if (is_multicast_ether_addr(hdr->addr1))
 		return;
 	//check packet and mode later
-	if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
+	if (!ieee->GetNmodeSupportBySecCfg(ieee->dev))
 		return;
-	}
+
 	if (pHTInfo->bCurrentAMPDUEnable) {
 		if (!GetTs(ieee, (struct ts_common_info **)(&pTxTs), hdr->addr1, skb->priority, TX_DIR, true)) {
 			printk("===>can't get TS\n");
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 22373c0afebc..78cc8f357bbc 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -184,9 +184,8 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 	//	printk("WPA IE\n");
 		u8 *p = buf;
 		p += sprintf(p, "wpa_ie=");
-		for (i = 0; i < network->wpa_ie_len; i++) {
+		for (i = 0; i < network->wpa_ie_len; i++)
 			p += sprintf(p, "%02x", network->wpa_ie[i]);
-		}
 
 		memset(&iwe, 0, sizeof(iwe));
 		iwe.cmd = IWEVCUSTOM;
@@ -199,9 +198,8 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 
 		u8 *p = buf;
 		p += sprintf(p, "rsn_ie=");
-		for (i = 0; i < network->rsn_ie_len; i++) {
+		for (i = 0; i < network->rsn_ie_len; i++)
 			p += sprintf(p, "%02x", network->rsn_ie[i]);
-		}
 
 		memset(&iwe, 0, sizeof(iwe));
 		iwe.cmd = IWEVCUSTOM;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
