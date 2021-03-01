Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865C7329435
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 22:54:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A99A432EF;
	Mon,  1 Mar 2021 21:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SUo_wN4Esll4; Mon,  1 Mar 2021 21:54:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 054DE4325F;
	Mon,  1 Mar 2021 21:54:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDA4D1BF966
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA26F4325F
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5SQ9oNGCkADO for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 21:53:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E83F04315F
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 21:53:41 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 1FA715D5;
 Mon,  1 Mar 2021 16:53:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 01 Mar 2021 16:53:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=nwP72x3WbtS0S
 iPQEn1PAKg6ur+GfN/mVxKox7qTr1M=; b=WMFteo9zmyWJHMpYd9tIO9OR0Kqbi
 hLpwUVLstV0aBP6spuDiGpkWJU5u/d+x9Ie8v8swxgbjMYv6lZOnb+IxFX3iLHlj
 /J8eTxnxhA2BAg+P4EYGUpFi1+fEddjAGNAfCujQTyR8JBORf0MW08shYsozaAvA
 nWpAAp7dML7M4wzvfDUNDC0/xN/WGjfI+/A35SGsx57FpSWdO9REN34rHTrnWTRY
 2gEqAb2uRe4dFdt2IbkotkCvsW2N0WZQ7wQ+bWlMR6/5es9iZ1ImhFts+BwKEQy8
 SZOpmXKJkZKmFEbZ2Q4r1T+Yi2pkg0GVkARh4ZXdHtSg2sdirLffjNQCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=nwP72x3WbtS0SiPQEn1PAKg6ur+GfN/mVxKox7qTr1M=; b=nNpWgP9B
 nB3+fxeNpE+/R9QDTlXfdW0Q0MZrRSVfnhIm3pxIU8i9PZwwwfilTxNqAeKpWQ6M
 NadnfL67tXOg0CrRqXrupMvow4WVCT+HW1VHLeXnRQiwm5jif33ejC5MrEM5jBVj
 M+VbyNNHlu3aqJ4OR1Yex7sjjvUAWYXiG9HnUBM2BqhvB7p4BiLKbT2/GsruxsTx
 t1o4pEMelRP+xJWKVBvKb+bw2MuCcUg1kv83jb0vTmGvl1XVzCajTUM4nFavJt2u
 uK7YqmLhTh2zJx8oCQV40MSs681XYjOqLFhhdw8yYtT/3dnu3ueG2+qq27mqDtiC
 kXYDD9bLyznJEA==
X-ME-Sender: <xms:Y2I9YHmsL-tiBczM0_AsvdmK-i2XeiYdT4U1uk6IE8Qv9EvSipSsaw>
 <xme:Y2I9YKymQk6pNFytiesUC2uJ3m5fShKciB1aXpaCqF5KsVyTWbgKnBAYSsuFroPqd
 QeUtBea1ul5DBrU9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleekgdduheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:Y2I9YKh01KNVrte9BxAooJNCILXsIFfz-bY_bog3O1CnD6q3_fLG0w>
 <xmx:Y2I9YHWIz56CYUl2bgLvYU9KE2Gc-O6YYkgAlcYh9gcSQsZBhskwlQ>
 <xmx:Y2I9YE1B0WNIto6KUsWBLu7fjEfmr02Zs-G1BHiSJ0LgUU0f05yt2Q>
 <xmx:Y2I9YFWig8AfC2k_DSWyYFX5XgsAdbRsXPiJdKf7kLgGDJdrrVZRvw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1620324005E;
 Mon,  1 Mar 2021 16:53:38 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/9] staging: rtl8192e: rename RxIndicateSeq to
 rx_indicate_seq in rx_ts_record struct
Date: Mon,  1 Mar 2021 21:53:27 +0000
Message-Id: <20210301215335.767-3-will+git@drnd.me>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210301215335.767-1-will+git@drnd.me>
References: <20210301215335.767-1-will+git@drnd.me>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename RxIndicateSeq to rx_indicate_seq to silence a checkpatch warning
about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_TS.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 16 ++++-----
 drivers/staging/rtl8192e/rtllib_rx.c      | 42 +++++++++++------------
 3 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TS.h b/drivers/staging/rtl8192e/rtl819x_TS.h
index 58879fbba9ef..11335df748b5 100644
--- a/drivers/staging/rtl8192e/rtl819x_TS.h
+++ b/drivers/staging/rtl8192e/rtl819x_TS.h
@@ -43,7 +43,7 @@ struct tx_ts_record {

 struct rx_ts_record {
 	struct ts_common_info ts_common_info;
-	u16				RxIndicateSeq;
+	u16				rx_indicate_seq;
 	u16				RxTimeoutIndicateSeq;
 	struct list_head		RxPendingPktList;
 	struct timer_list		RxPktPendingTimer;
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index f8e7beb7909f..e885eff0ea79 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -36,18 +36,18 @@ static void RxPktPendingTimeout(struct timer_list *t)
 					list_entry(pRxTs->RxPendingPktList.prev,
 					struct rx_reorder_entry, List);
 			if (index == 0)
-				pRxTs->RxIndicateSeq = pReorderEntry->SeqNum;
+				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;

 			if (SN_LESS(pReorderEntry->SeqNum,
-				    pRxTs->RxIndicateSeq) ||
+				    pRxTs->rx_indicate_seq) ||
 			    SN_EQUAL(pReorderEntry->SeqNum,
-				     pRxTs->RxIndicateSeq)) {
+				     pRxTs->rx_indicate_seq)) {
 				list_del_init(&pReorderEntry->List);

 				if (SN_EQUAL(pReorderEntry->SeqNum,
-				    pRxTs->RxIndicateSeq))
-					pRxTs->RxIndicateSeq =
-					      (pRxTs->RxIndicateSeq + 1) % 4096;
+				    pRxTs->rx_indicate_seq))
+					pRxTs->rx_indicate_seq =
+					      (pRxTs->rx_indicate_seq + 1) % 4096;

 				netdev_dbg(ieee->dev,
 					   "%s(): Indicate SeqNum: %d\n",
@@ -81,7 +81,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	}

 	if (bPktInBuf && (pRxTs->RxTimeoutIndicateSeq == 0xffff)) {
-		pRxTs->RxTimeoutIndicateSeq = pRxTs->RxIndicateSeq;
+		pRxTs->RxTimeoutIndicateSeq = pRxTs->rx_indicate_seq;
 		mod_timer(&pRxTs->RxPktPendingTimer,  jiffies +
 			  msecs_to_jiffies(ieee->pHTInfo->RxReorderPendingTime)
 			  );
@@ -124,7 +124,7 @@ static void ResetTxTsEntry(struct tx_ts_record *pTS)
 static void ResetRxTsEntry(struct rx_ts_record *pTS)
 {
 	ResetTsCommonInfo(&pTS->ts_common_info);
-	pTS->RxIndicateSeq = 0xffff;
+	pTS->rx_indicate_seq = 0xffff;
 	pTS->RxTimeoutIndicateSeq = 0xffff;
 	ResetBaEntry(&pTS->RxAdmittedBARecord);
 }
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index b8ab34250e6a..c8fa4cf8eab0 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -560,7 +560,7 @@ void rtllib_FlushRxTsPendingPkts(struct rtllib_device *ieee,
 	}
 	rtllib_indicate_packets(ieee, ieee->RfdArray, RfdCnt);

-	pTS->RxIndicateSeq = 0xffff;
+	pTS->rx_indicate_seq = 0xffff;
 }

 static void RxReorderIndicatePacket(struct rtllib_device *ieee,
@@ -576,21 +576,21 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 	unsigned long flags;

 	netdev_dbg(ieee->dev,
-		   "%s(): Seq is %d, pTS->RxIndicateSeq is %d, WinSize is %d\n",
-		   __func__, SeqNum, pTS->RxIndicateSeq, WinSize);
+		   "%s(): Seq is %d, pTS->rx_indicate_seq is %d, WinSize is %d\n",
+		   __func__, SeqNum, pTS->rx_indicate_seq, WinSize);

 	spin_lock_irqsave(&(ieee->reorder_spinlock), flags);

-	WinEnd = (pTS->RxIndicateSeq + WinSize - 1) % 4096;
+	WinEnd = (pTS->rx_indicate_seq + WinSize - 1) % 4096;
 	/* Rx Reorder initialize condition.*/
-	if (pTS->RxIndicateSeq == 0xffff)
-		pTS->RxIndicateSeq = SeqNum;
+	if (pTS->rx_indicate_seq == 0xffff)
+		pTS->rx_indicate_seq = SeqNum;

 	/* Drop out the packet which SeqNum is smaller than WinStart */
-	if (SN_LESS(SeqNum, pTS->RxIndicateSeq)) {
+	if (SN_LESS(SeqNum, pTS->rx_indicate_seq)) {
 		netdev_dbg(ieee->dev,
 			   "Packet Drop! IndicateSeq: %d, NewSeq: %d\n",
-			   pTS->RxIndicateSeq, SeqNum);
+			   pTS->rx_indicate_seq, SeqNum);
 		pHTInfo->RxReorderDropCounter++;
 		{
 			int i;
@@ -608,18 +608,18 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 	 * 1. Incoming SeqNum is equal to WinStart =>Window shift 1
 	 * 2. Incoming SeqNum is larger than the WinEnd => Window shift N
 	 */
-	if (SN_EQUAL(SeqNum, pTS->RxIndicateSeq)) {
-		pTS->RxIndicateSeq = (pTS->RxIndicateSeq + 1) % 4096;
+	if (SN_EQUAL(SeqNum, pTS->rx_indicate_seq)) {
+		pTS->rx_indicate_seq = (pTS->rx_indicate_seq + 1) % 4096;
 		bMatchWinStart = true;
 	} else if (SN_LESS(WinEnd, SeqNum)) {
 		if (SeqNum >= (WinSize - 1))
-			pTS->RxIndicateSeq = SeqNum + 1 - WinSize;
+			pTS->rx_indicate_seq = SeqNum + 1 - WinSize;
 		else
-			pTS->RxIndicateSeq = 4095 -
+			pTS->rx_indicate_seq = 4095 -
 					     (WinSize - (SeqNum + 1)) + 1;
 		netdev_dbg(ieee->dev,
 			   "Window Shift! IndicateSeq: %d, NewSeq: %d\n",
-			   pTS->RxIndicateSeq, SeqNum);
+			   pTS->rx_indicate_seq, SeqNum);
 	}

 	/* Indication process.
@@ -636,7 +636,7 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 		/* Current packet is going to be indicated.*/
 		netdev_dbg(ieee->dev,
 			   "Packets indication! IndicateSeq: %d, NewSeq: %d\n",
-			   pTS->RxIndicateSeq, SeqNum);
+			   pTS->rx_indicate_seq, SeqNum);
 		ieee->prxbIndicateArray[0] = prxb;
 		index = 1;
 	} else {
@@ -658,7 +658,7 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,

 				netdev_dbg(ieee->dev,
 					   "%s(): Duplicate packet is dropped. IndicateSeq: %d, NewSeq: %d\n",
-					   __func__, pTS->RxIndicateSeq,
+					   __func__, pTS->rx_indicate_seq,
 					   SeqNum);
 				list_add_tail(&pReorderEntry->List,
 					      &ieee->RxReorder_Unused_List);
@@ -670,7 +670,7 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 			} else {
 				netdev_dbg(ieee->dev,
 					   "Pkt insert into struct buffer. IndicateSeq: %d, NewSeq: %d\n",
-					   pTS->RxIndicateSeq, SeqNum);
+					   pTS->rx_indicate_seq, SeqNum);
 			}
 		} else {
 			/* Packets are dropped if there are not enough reorder
@@ -701,8 +701,8 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 					list_entry(pTS->RxPendingPktList.prev,
 						   struct rx_reorder_entry,
 						   List);
-		if (SN_LESS(pReorderEntry->SeqNum, pTS->RxIndicateSeq) ||
-		    SN_EQUAL(pReorderEntry->SeqNum, pTS->RxIndicateSeq)) {
+		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
+		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq)) {
 			/* This protect struct buffer from overflow. */
 			if (index >= REORDER_WIN_SIZE) {
 				netdev_err(ieee->dev,
@@ -714,8 +714,8 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,

 			list_del_init(&pReorderEntry->List);

-			if (SN_EQUAL(pReorderEntry->SeqNum, pTS->RxIndicateSeq))
-				pTS->RxIndicateSeq = (pTS->RxIndicateSeq + 1) %
+			if (SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
+				pTS->rx_indicate_seq = (pTS->rx_indicate_seq + 1) %
 						     4096;

 			ieee->prxbIndicateArray[index] = pReorderEntry->prxb;
@@ -753,7 +753,7 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,

 	if (bPktInBuf && pTS->RxTimeoutIndicateSeq == 0xffff) {
 		netdev_dbg(ieee->dev, "%s(): SET rx timeout timer\n", __func__);
-		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
+		pTS->RxTimeoutIndicateSeq = pTS->rx_indicate_seq;
 		mod_timer(&pTS->RxPktPendingTimer, jiffies +
 			  msecs_to_jiffies(pHTInfo->RxReorderPendingTime));
 	}
--
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
