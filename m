Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF56C1BE20
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 21:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9162B86977;
	Mon, 13 May 2019 19:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u3v4REmazfpL; Mon, 13 May 2019 19:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 918FA838D9;
	Mon, 13 May 2019 19:40:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 20E671BF3ED
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D7E085766
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8te0-pOlKmuW for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 19:39:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4BC6B8513B
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 19:39:58 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t22so7276872pgi.10
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 12:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=4xuJ0kRszenKC/GJXSepEFnfuvQnL4E01gfSoAJ1IiM=;
 b=IFstzsoE31fslmz73cm4Er5cpgh0WchsGXSrPt9VmTwALaTrfGZZ+zXnmhYdXbWUUI
 wJM7uvH8G/VAqOe6ChF8Je+4bG2tBVaGtlQXKsZbJjMFMvMXCZ3Pd0TOdVI8gwo4uAaf
 o8/S+2pj+a+GQC9dVbuDYv1WIEt8CZKslrs5Z4pWV6ASfa7sVIpUiHMib2zfiBFzxzv8
 P8AC+51xM+448NbsqsWWjL9ffbFmzYZbLnnnK0U7GSxwJzIVaLZVBJ6qc38fdrnvD5C8
 uN6I/G+TV85G6/k3i3brB/jTK0F850ez5yoVtJFm4GBPLZ05x1WIzJ6ZhlYx8lc30bUB
 uAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=4xuJ0kRszenKC/GJXSepEFnfuvQnL4E01gfSoAJ1IiM=;
 b=U5i3E5mZx/WNbjUUsWgodYk8s01uVSxllD3ZJL5Ny9nJIbYsTLBJhEQUBGGf3DC49S
 FxmK/3EmNGvk3vlBVgDsaT7oSn57755MKZy+9EDbI8o1bEX+8p9TI/CBpzXu+ctFqfnx
 nmMi9ckcwNqdhX/rtjgUuqk2tDDgAVm5/8WHxirkRxr+qNoE0Nm1eM5r2Q4in8Tfe5FQ
 YrChdcIJWsIoIqI/jnxZDY759Y9pkkVarSoKOkaKmo1F/4YBet4RwKc1u2WdhcWJuC3b
 AJ6dQS7aE1yZvXjXhFRH5LVYFfXL2O5UrXQt5ngJdVK1PXpVR2VBg4NtKHXxNlZMyGSY
 dpdw==
X-Gm-Message-State: APjAAAWXVSPFkJi9uMXUCfbfkR3hDCopOAyCqRDhqrneMsI29uIVaLxo
 qQ/QW6R/fI9vGpb8ytN+cmPumbEE
X-Google-Smtp-Source: APXvYqxBRFd1NQZ8WcFmOcirXddiR/EOoN9j8fn5Nd+8veDuoUQd6X/lZ4Ds7bJ0IHb16PLF38WgdQ==
X-Received: by 2002:a63:5211:: with SMTP id g17mr4676907pgb.405.1557776397843; 
 Mon, 13 May 2019 12:39:57 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id b144sm19625194pfb.68.2019.05.13.12.39.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 12:39:57 -0700 (PDT)
Date: Tue, 14 May 2019 01:09:50 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH 3/5] Staging: rtl8192u: ieee80211: Fix coding style errors
Message-ID: <20190513193946.GA30491@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix coding style errors related to braces for if-else statements.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c | 60 +++++++------------
 1 file changed, 22 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 8e1ec4409b4f..b0668cf4a857 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -169,8 +169,7 @@ int ieee80211_encrypt_fragment(
 	struct ieee80211_crypt_data *crypt = ieee->crypt[ieee->tx_keyidx];
 	int res;
 
-	if (!(crypt && crypt->ops))
-	{
+	if (!(crypt && crypt->ops)) {
 		printk("=========>%s(), crypt is null\n", __func__);
 		return -1;
 	}
@@ -309,32 +308,25 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 	if (!Adapter->HalFunc.GetNmodeSupportBySecCfgHandler(Adapter))
 		return;
 #endif
-	if (!ieee->GetNmodeSupportBySecCfg(ieee->dev))
-	{
+	if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
 		return;
 	}
-	if (pHTInfo->bCurrentAMPDUEnable)
-	{
-		if (!GetTs(ieee, (struct ts_common_info **)(&pTxTs), hdr->addr1, skb->priority, TX_DIR, true))
-		{
+	if (pHTInfo->bCurrentAMPDUEnable) {
+		if (!GetTs(ieee, (struct ts_common_info **)(&pTxTs), hdr->addr1, skb->priority, TX_DIR, true)) {
 			printk("===>can't get TS\n");
 			return;
 		}
-		if (!pTxTs->tx_admitted_ba_record.valid)
-		{
+		if (!pTxTs->tx_admitted_ba_record.valid) {
 			TsStartAddBaProcess(ieee, pTxTs);
 			goto FORCED_AGG_SETTING;
-		}
-		else if (!pTxTs->using_ba)
-		{
+		} else if (!pTxTs->using_ba) {
 			if (SN_LESS(pTxTs->tx_admitted_ba_record.start_seq_ctrl.field.seq_num, (pTxTs->tx_cur_seq + 1) % 4096))
 				pTxTs->using_ba = true;
 			else
 				goto FORCED_AGG_SETTING;
 		}
 
-		if (ieee->iw_mode == IW_MODE_INFRA)
-		{
+		if (ieee->iw_mode == IW_MODE_INFRA) {
 			tcb_desc->bAMPDUEnable = true;
 			tcb_desc->ampdu_factor = pHTInfo->CurrentAMPDUFactor;
 			tcb_desc->ampdu_density = pHTInfo->CurrentMPDUDensity;
@@ -366,12 +358,9 @@ static void ieee80211_qurey_ShortPreambleMode(struct ieee80211_device *ieee,
 					      struct cb_desc *tcb_desc)
 {
 	tcb_desc->bUseShortPreamble = false;
-	if (tcb_desc->data_rate == 2)
-	{//// 1M can only use Long Preamble. 11B spec
+	if (tcb_desc->data_rate == 2) {//// 1M can only use Long Preamble. 11B spec
 		return;
-	}
-	else if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
-	{
+	} else if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE) {
 		tcb_desc->bUseShortPreamble = true;
 	}
 	return;
@@ -386,8 +375,7 @@ ieee80211_query_HTCapShortGI(struct ieee80211_device *ieee, struct cb_desc *tcb_
 	if (!pHTInfo->bCurrentHTSupport||!pHTInfo->bEnableHT)
 		return;
 
-	if (pHTInfo->bForcedShortGI)
-	{
+	if (pHTInfo->bForcedShortGI) {
 		tcb_desc->bUseShortGI = true;
 		return;
 	}
@@ -535,27 +523,25 @@ static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
 					struct cb_desc *tcb_desc)
 {
 #ifdef TO_DO_LIST
-	if(!IsDataFrame(pFrame))
-	{
+	if (!IsDataFrame(pFrame)) {
 		pTcb->bTxDisableRateFallBack = true;
 		pTcb->bTxUseDriverAssingedRate = true;
 		pTcb->RATRIndex = 7;
 		return;
 	}
 
-	if(pMgntInfo->ForcedDataRate!= 0)
-	{
+	if (pMgntInfo->ForcedDataRate!= 0) {
 		pTcb->bTxDisableRateFallBack = true;
 		pTcb->bTxUseDriverAssingedRate = true;
 		return;
 	}
 #endif
-	if(ieee->bTxDisableRateFallBack)
+	if (ieee->bTxDisableRateFallBack)
 		tcb_desc->bTxDisableRateFallBack = true;
 
-	if(ieee->bTxUseDriverAssingedRate)
+	if (ieee->bTxUseDriverAssingedRate)
 		tcb_desc->bTxUseDriverAssingedRate = true;
-	if(!tcb_desc->bTxDisableRateFallBack || !tcb_desc->bTxUseDriverAssingedRate)
+	if (!tcb_desc->bTxDisableRateFallBack || !tcb_desc->bTxUseDriverAssingedRate)
 	{
 		if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC)
 			tcb_desc->RATRIndex = 0;
@@ -614,7 +600,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 	}
 
 
-	if(likely(ieee->raw_tx == 0)){
+	if (likely(ieee->raw_tx == 0)) {
 		if (unlikely(skb->len < SNAP_SIZE + sizeof(u16))) {
 			printk(KERN_WARNING "%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
@@ -690,15 +676,13 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		if (is_multicast_ether_addr(header.addr1)) {
 			frag_size = MAX_FRAG_THRESHOLD;
 			qos_ctl |= QOS_CTL_NOTCONTAIN_ACK;
-		}
-		else {
+		} else {
 			frag_size = ieee->fts;//default:392
 			qos_ctl = 0;
 		}
 
 		//if (ieee->current_network.QoS_Enable)
-		if(qos_actived)
-		{
+		if (qos_actived) {
 			hdr_len = IEEE80211_3ADDR_LEN + 2;
 
 			skb->priority = ieee80211_classify(skb, &ieee->current_network);
@@ -746,12 +730,12 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		txb->payload_size = __cpu_to_le16(bytes);
 
 		//if (ieee->current_network.QoS_Enable)
-		if(qos_actived)
-		{
+		if (qos_actived)
+
 			txb->queue_index = UP2AC(skb->priority);
-		} else {
+		else
 			txb->queue_index = WME_AC_BK;
-		}
+
 
 
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
