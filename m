Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4226C1CE06
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 19:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5BEB860C0;
	Tue, 14 May 2019 17:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aUJw0OemnGAT; Tue, 14 May 2019 17:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4D798605E;
	Tue, 14 May 2019 17:31:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE8BE1BF5F5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB6DE87C3F
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsJKllBnvtZk for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 17:31:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59AFE87BFE
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 17:31:21 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id j26so8965655pgl.5
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 10:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9PfthKOfjAfnWl0b3roJLxEIPPwMIAJjDaAq6lVll6E=;
 b=BcdeWaMCnbI9gsihuQ68wVSzzJR8g6bkU7V1nrpyPidlfaRH+7hcbA2mS5qI4TC+O1
 K7xAV4SflicrJuUVHHoMYHi75BBxPMUl05W5tcs5Om6mC05SaxJo48cWuCsDfLvL43Ti
 X6+AnH4I2zrLfUaG2xGS2yKiU5xC1I6/+/JhnGbGPqg071N+TAxysvNeOgIaLGJLryWz
 lkKjUvC3e3QL8za+0aaylfGqRQICg2YHSLg6b8+QgLuxGRVS6lVk5IOphvSQvOldqC/S
 11gbclfxo2KjsZwdef6dXSbumcMMIS1r1a5VgILVaIqjUBAffKQpbaKjCFHaRHtAXzOj
 5hyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9PfthKOfjAfnWl0b3roJLxEIPPwMIAJjDaAq6lVll6E=;
 b=TNKWs/1Mrvtpwuu+gJl5KpBGQfAXsnt9ASyt82HJkTjYXIQBMfJGXD5sqiXD7iJERB
 9awOZtlaMtkPyraZ1MIdwLtoBD8NVBOQjLJi7Sz3C/GWQ4jUY3MqfdsJQrM+5e7Wnvd6
 UM0t7GUowA0maAFGbFIQ4qtKFU1MpkWz5/M6I/MyEhkT29Rn6x6v6LE1g8kgspZnlyxm
 ia3rhlnmcXtoNPd4vgrKBaeD/UrlwX6QtejKdkJ9w7lb1iq/PW1+N/fmwfqj6vf56j0/
 qZZCq0LqqyyEXxo08ml2mJ2a44i+spO3XjX8KQmw8V6rZ7XD06GHbD+ZcgZQ4MqoHebb
 X1fw==
X-Gm-Message-State: APjAAAVgFTCpqj1XGR9M0874dCNrz+m4aWM9GdD9BzdMWU5IKr+VgacG
 LBPiShdlw4aqaLu7ECuIDt4=
X-Google-Smtp-Source: APXvYqznhH26Iw++socJhLJHB0Q2/ZZOuWpPbNyGSCdchHBoWrvFK4mBnBfUlphXwKrk+6Ayo1WS3Q==
X-Received: by 2002:a62:6d47:: with SMTP id i68mr42170642pfc.189.1557855080954; 
 Tue, 14 May 2019 10:31:20 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7145:24c8:f23d:8e91:fd10:9c55])
 by smtp.googlemail.com with ESMTPSA id n9sm2222485pfq.53.2019.05.14.10.31.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 10:31:20 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: puranjaymohan@gmail.com,
	greg@kroah.com
Subject: [PATCH v2 3/5] Staging: rtl8192u: ieee80211: Fix coding style errors
Date: Tue, 14 May 2019 23:00:21 +0530
Message-Id: <20190514173023.31146-4-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514173023.31146-1-puranjay12@gmail.com>
References: <20190514173023.31146-1-puranjay12@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix coding style errors related to braces for if-else statements.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
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
