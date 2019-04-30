Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015F4FFC2
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 20:30:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A307D87A96;
	Tue, 30 Apr 2019 18:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s30RY3t47yMS; Tue, 30 Apr 2019 18:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F72087A43;
	Tue, 30 Apr 2019 18:30:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F10A11BF2A5
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 18:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EC51981B75
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 18:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rFluLrHkxHY2 for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 18:30:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E27E81B74
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 18:30:20 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d9so7126477pls.8
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 11:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wLmcV6OdISQ/+3ScE9BnR0d+4OBZ1HSPXUDnV21ajrU=;
 b=BgXdMc4KN0WDtxc2YK4QdpJXGT2nbdBI56zgqQP16hyHntbQsTvhw3bFMS9IorQPhA
 OVi5snL6CAkTBPH3+5KQlQoKLVMiQ+T17E8N5XBXb949JlAmYGqH19BRyjbErm4f221M
 G2hBUbddddHCHM6h+paXlx5uBRQBiXy3oII0pYbtWZzs9vhKNDw32lLtpgbpP+Mzt1dw
 ouNpYl1Yo5aU2FClXCwh6F5//kzqAFkIykMtAOBBNUKBvuBOgfhy3+m+9fTn8rNx5tmU
 x/n64ziMwkMnlM6X7pzpyrSYnxExP+iSpcN6hZPYfURfmpeeJyzlU5qFE8p8wxp8GASw
 n1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wLmcV6OdISQ/+3ScE9BnR0d+4OBZ1HSPXUDnV21ajrU=;
 b=oQQThzMyPPctIoUUwJJTARGRtf/YukkYAmVjv/OguYfDJ4HpI+wMecvuF1M8xj+/Ex
 bP+BnIBDuClSOxcH+i7RufdCK8y3LD2h7XqGNso0trrWD1dvY8durjQMXvhLu97Bad8N
 mY2tzymNLrWWY+wkhNnPqZ+OdAPPBBtUhHCIVgH/MGX2ORQXRVb3lnKkmLkCbUE4UDCp
 wBqVyj63X40LSGXTVFse4Z0JfHtNr3AGmMFy2uMMNZAKCyFuUPN/+Hg9AC+uyHHrHMuA
 JHlKdYug6/7YCceFpn/g+Xi/BS9Z11M5rIPTGhtw08QErV3giMUBBfH5adQqnT23TcYK
 DJrQ==
X-Gm-Message-State: APjAAAWb+exaQDOztqUqyTnhcKKSUUqnLAMt3fhkbM5Xd8zXqjfvI08C
 GTfXcZwS2bobvhdLg6x89AQ=
X-Google-Smtp-Source: APXvYqx6o6eRsZD7oUBVRSvHJ9DrPiA5NSUQ0g9U3QZjKGEpxfx0PtStpoCQhpNEEdxBWA4yBmVJiA==
X-Received: by 2002:a17:902:407:: with SMTP id 7mr71625208ple.62.1556649020038; 
 Tue, 30 Apr 2019 11:30:20 -0700 (PDT)
Received: from localhost.localdomain ([49.206.11.25])
 by smtp.gmail.com with ESMTPSA id a3sm58566704pfn.182.2019.04.30.11.30.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 11:30:19 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8192u: ieee80211: Resolve ERROR reported by
 checkpatch
Date: Tue, 30 Apr 2019 23:59:44 +0530
Message-Id: <20190430182944.9539-1-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: Vandana BN <bnvandana@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch resolves coding style space ERRORs reported by checkpatch

ERROR: spaces required around that '>' (ctx:VxV)
ERROR: space required after that ',' (ctx:VxO)
ERROR: space required before that '&' (ctx:OxV)
ERROR: spaces required around that '!=' (ctx:VxV)
ERROR: spaces required around that '=' (ctx:VxW)
ERROR: space required before the open parenthesis '('
ERROR: spaces required around that '?' (ctx:VxE)
ERROR: spaces required around that ':' (ctx:VxE)
ERROR: spaces required around that '==' (ctx:VxV)
Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
 .../rtl8192u/ieee80211/rtl819x_TSProc.c       | 40 +++++++++----------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index 418c92403904..7cac668bfb0b 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -63,7 +63,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 		}
 	}
 
-	if (index>0) {
+	if (index > 0) {
 		// Set rx_timeout_indicate_seq to 0xffff to indicate no pending packets in buffer now.
 		pRxTs->rx_timeout_indicate_seq = 0xffff;
 
@@ -182,7 +182,7 @@ void TSInitialize(struct ieee80211_device *ieee)
 	INIT_LIST_HEAD(&ieee->RxReorder_Unused_List);
 //#ifdef TO_DO_LIST
 	for (count = 0; count < REORDER_ENTRY_NUM; count++) {
-		list_add_tail(&pRxReorderEntry->List,&ieee->RxReorder_Unused_List);
+		list_add_tail(&pRxReorderEntry->List, &ieee->RxReorder_Unused_List);
 		if (count == (REORDER_ENTRY_NUM-1))
 			break;
 		pRxReorderEntry = &ieee->RxReorderEntry[count+1];
@@ -196,7 +196,7 @@ static void AdmitTS(struct ieee80211_device *ieee,
 	del_timer_sync(&pTsCommonInfo->setup_timer);
 	del_timer_sync(&pTsCommonInfo->inact_timer);
 
-	if (InactTime!=0)
+	if (InactTime != 0)
 		mod_timer(&pTsCommonInfo->inact_timer,
 			  jiffies + msecs_to_jiffies(InactTime));
 }
@@ -214,25 +214,25 @@ static struct ts_common_info *SearchAdmitTRStream(struct ieee80211_device *ieee,
 	if (ieee->iw_mode == IW_MODE_MASTER) { //ap mode
 		if (TxRxSelect == TX_DIR) {
 			search_dir[DIR_DOWN] = true;
-			search_dir[DIR_BI_DIR]= true;
+			search_dir[DIR_BI_DIR] = true;
 		} else {
 			search_dir[DIR_UP]	= true;
-			search_dir[DIR_BI_DIR]= true;
+			search_dir[DIR_BI_DIR] = true;
 		}
 	} else if (ieee->iw_mode == IW_MODE_ADHOC) {
-		if(TxRxSelect == TX_DIR)
+		if (TxRxSelect == TX_DIR)
 			search_dir[DIR_UP]	= true;
 		else
 			search_dir[DIR_DOWN] = true;
 	} else {
 		if (TxRxSelect == TX_DIR) {
 			search_dir[DIR_UP]	= true;
-			search_dir[DIR_BI_DIR]= true;
-			search_dir[DIR_DIRECT]= true;
+			search_dir[DIR_BI_DIR] = true;
+			search_dir[DIR_DIRECT] = true;
 		} else {
 			search_dir[DIR_DOWN] = true;
-			search_dir[DIR_BI_DIR]= true;
-			search_dir[DIR_DIRECT]= true;
+			search_dir[DIR_BI_DIR] = true;
+			search_dir[DIR_DIRECT] = true;
 		}
 	}
 
@@ -357,20 +357,20 @@ bool GetTs(
 			struct tspec_body	TSpec;
 			struct qos_tsinfo	*pTSInfo = &TSpec.ts_info;
 			struct list_head	*pUnusedList =
-								(TxRxSelect == TX_DIR)?
-								(&ieee->Tx_TS_Unused_List):
+								(TxRxSelect == TX_DIR) ?
+								(&ieee->Tx_TS_Unused_List) :
 								(&ieee->Rx_TS_Unused_List);
 
 			struct list_head	*pAddmitList =
-								(TxRxSelect == TX_DIR)?
-								(&ieee->Tx_TS_Admit_List):
+								(TxRxSelect == TX_DIR) ?
+								(&ieee->Tx_TS_Admit_List) :
 								(&ieee->Rx_TS_Admit_List);
 
-			enum direction_value	Dir =		(ieee->iw_mode == IW_MODE_MASTER)?
-								((TxRxSelect==TX_DIR)?DIR_DOWN:DIR_UP):
-								((TxRxSelect==TX_DIR)?DIR_UP:DIR_DOWN);
+			enum direction_value	Dir =		(ieee->iw_mode == IW_MODE_MASTER) ?
+								((TxRxSelect == TX_DIR)?DIR_DOWN:DIR_UP) :
+								((TxRxSelect == TX_DIR)?DIR_UP:DIR_DOWN);
 			IEEE80211_DEBUG(IEEE80211_DL_TS, "to add Ts\n");
-			if(!list_empty(pUnusedList)) {
+			if (!list_empty(pUnusedList)) {
 				(*ppTS) = list_entry(pUnusedList->next, struct ts_common_info, list);
 				list_del_init(&(*ppTS)->list);
 				if (TxRxSelect == TX_DIR) {
@@ -435,13 +435,13 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 					spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
 					return;
 				}
-				for(i =0; i < prxb->nr_subframes; i++)
+				for (i =  0; i < prxb->nr_subframes; i++)
 					dev_kfree_skb(prxb->subframes[i]);
 
 				kfree(prxb);
 				prxb = NULL;
 			}
-			list_add_tail(&pRxReorderEntry->List,&ieee->RxReorder_Unused_List);
+			list_add_tail(&pRxReorderEntry->List, &ieee->RxReorder_Unused_List);
 			spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
 		}
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
