Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC611C5C2
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 11:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FF6287A34;
	Tue, 14 May 2019 09:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vVfDzyngtgMN; Tue, 14 May 2019 09:14:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AD8484CBD;
	Tue, 14 May 2019 09:14:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75B4E1BF20B
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 09:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6AC6186977
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 09:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0YgiOwxy19Io for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 09:14:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B077A85565
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 09:14:50 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id z28so8821402pfk.0
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 02:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=OgsLxEsN716e1XvKdLrShYv5cDB+QtZDW2q6dPMJz7g=;
 b=mjsKmPOzXB1ngqPXJl8S+QQScf0PVnY1qw8mTAGLhph2vX2ch4luzyYkc32DspJblN
 nn+H8g83bIgQo8kNw7LuTgNrj4YSV87g0yWk33Awbn/Qz6/eRpGtM8w2pcn6xbna6nEm
 jh/gTSGs/GznKeYL1xACYvYyH+152X3WojlROlzc33ezD7SkbtFzsFQx+shu5t0YpvlE
 A1sLC+yz++5QbmmgM4mb7JyDMXz7W6zdjiq5/sck0U7n3eTSO71l5Hb6HwkPs2E78USh
 x3+a2Egi6CwqYoN1ay7YW6mcOn+irn6ol4rQzkPm20aq6gblla47N6bVpDkqaWIW569O
 jwPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=OgsLxEsN716e1XvKdLrShYv5cDB+QtZDW2q6dPMJz7g=;
 b=ESmnJrxjf+1OxAzNnUazCEdm1EgLLl4DFgfgvO1ywPbMlOXbrJLObwMDCCmQXTaka+
 9Iyvl7cqzc4RzokXPVm8bN/QS0vE4gt8kgHKmt6MSetu/rJIfpPixLJGvagKzafRnw9r
 NJdLv0cVoZQMRgWyzl/UGhmzkw3cAjLUDWMmDhpi7zV6XUGq0HhxXHPgkzpdbrnfHCp4
 Vv5ztGcqy8XQDL76JZ2chr1zLN0Grb7pyPuTW5DVt5e3Fh9gWKP96ETgiEtadCuXjRzt
 nGlgOqHLEBXvGTptEYFMp6MYv4KfnmRaMWnkxw7Lqifx20345LilpdChw7ZsA0eTBUfF
 pErw==
X-Gm-Message-State: APjAAAXbYwIZ9ByiPrbdLaS/vHJoZQr3Q8IJ6ozzzP8uLF8VtSC+JeLs
 fG/E7sBMxpReJuyOdCvwX8A=
X-Google-Smtp-Source: APXvYqwPVikpPnS8M87/NEd6daTwuBjjJla+7PwTmOCWTVlsIP5mzmHZDhlKkl6HsrZhHrEe51poXQ==
X-Received: by 2002:aa7:87c3:: with SMTP id i3mr38406408pfo.85.1557825289873; 
 Tue, 14 May 2019 02:14:49 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id v4sm8917184pff.45.2019.05.14.02.14.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 02:14:49 -0700 (PDT)
Date: Tue, 14 May 2019 14:44:43 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH V2 3/5] Staging: rtl8192u: ieee80211: Fix coding style errors
Message-ID: <20190514091438.GA1312@arch>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix coding style errors related to braces for if-else statements.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---

V2 - Remove extra blank lines.

 .../staging/rtl8192u/ieee80211/ieee80211_tx.c | 58 +++++++------------
 1 file changed, 20 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 8e1ec4409b4f..fc6eb97801e1 100644
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
@@ -746,12 +730,10 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		txb->payload_size = __cpu_to_le16(bytes);
 
 		//if (ieee->current_network.QoS_Enable)
-		if(qos_actived)
-		{
+		if (qos_actived)
 			txb->queue_index = UP2AC(skb->priority);
-		} else {
+		else
 			txb->queue_index = WME_AC_BK;
-		}
 
 
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
