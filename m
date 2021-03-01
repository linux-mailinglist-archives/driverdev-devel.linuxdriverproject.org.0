Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C153F32943C
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 22:55:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3B3B43271;
	Mon,  1 Mar 2021 21:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ghM-mPdCCqQ8; Mon,  1 Mar 2021 21:55:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 974C34325F;
	Mon,  1 Mar 2021 21:55:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7C9C1BF956
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A32424F1C0
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="aNwJNQH6";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="MQ2nTMve"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B5qv2HdBA3o6 for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 21:53:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3BAD4F1BF
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 21:53:43 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 63B6B9EA;
 Mon,  1 Mar 2021 16:53:41 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 01 Mar 2021 16:53:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=S4b5+NurlEBsV
 R9ztR1KSCVaeM8CfuGor82aOogFUWc=; b=aNwJNQH6xyGeBTzpeqUuicfY2/U4w
 EFLQK7z91xzRG7tTVa6ax51Mr1bxPztwms0vi9/tPW+rwyYubZ3gZaATLf2ICaY0
 r1gkKchf/7QKKJRp4+Ulsf8wM1vVWLhNjbQuBErF8edoEy/xqsUeSc9sBbS7heAV
 A5E77vSnCaIxmTnu6ocQRTDF8ukBs7Q5v9o0xQe5eTxw5TMgfmdrn6VHCxFt0UWh
 HTvyn9L1mYYOzW0dDjWzAYZiFyzBAxv04aVrTmtE3gn8HHKZ1igi4Gps/pAPkZwI
 o+c8gkKtoxBZs2/uCm5KHRpdp8aNDmZl/hg4SExbstnSECABVKWHT/Gtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=S4b5+NurlEBsVR9ztR1KSCVaeM8CfuGor82aOogFUWc=; b=MQ2nTMve
 rlIX1Jnp5Ps1JS8QmgsdZw6NfWkmwfPzMvyr68Y5h8g90QCiye8wvTOJUmVS95Yi
 rdBo8ZJ9n5NJJsa/eqzbBM+towCXpe79YxqE7Rc6vlsunt8yH3bIhYG6XeJx052/
 M1SDEHnnpnpUHGjTcJWAnaSp4J1ys5EYdu1T4cH1+iUW3z5IXnQc+rJnUqxCdEGh
 l4FSm8VwA+tEyvykyWk1aCEuemwX+98yVqFoEi17BARkbgjs4K0mIHopui7qKBl1
 E8x9yPz0DvsJ/0DuLcPBxQG6TYCn5Xz5WF8xCwWzzmMDxsQ7DcIIbiaeCM2Gcv/V
 KKDmd700nmXy+w==
X-ME-Sender: <xms:ZGI9YNPyzmC9VHzn0QzM52uneIIJ7JWZT3h9VgC0UCFMWISFd7l-SA>
 <xme:ZGI9YP52QGOhUQk5WLS1agaTzBl2VlBpsQl-DjWrHMk6og1B6y9aO3tHDFrkndx2j
 cq6S4SIbaBI8uvA8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleekgdduheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:ZGI9YJLTp8RzWwialiEwRgIvtYtQrIAVxZtDQYTNZwVf__ZgUHqsfw>
 <xmx:ZGI9YBcuzesERLXsfM0x8KReBZP8rRRqkM8FszP-86uGOVYKOSUBAQ>
 <xmx:ZGI9YEdT-DtcaBtPNrWc6YVGgn_MfLfQfTVKTRiMCXHgK5g-qccAgA>
 <xmx:ZWI9YH80iFFwKkMZ6jyXbJ6y3Kg7rERz9J8c5MYCCcTml7Gr4gZH6w>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5B067240068;
 Mon,  1 Mar 2021 16:53:40 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/9] staging: rtl8192e: rename RxPendingPktList to
 rx_pending_pkt_list in rx_ts_record struct
Date: Mon,  1 Mar 2021 21:53:29 +0000
Message-Id: <20210301215335.767-5-will+git@drnd.me>
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

Rename RxPendingPktList to rx_pending_pkt_list to silence a checkpatch
warning about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_TS.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 10 +++++-----
 drivers/staging/rtl8192e/rtllib_rx.c      | 12 ++++++------
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TS.h b/drivers/staging/rtl8192e/rtl819x_TS.h
index 045093c1eb79..3fc89906b309 100644
--- a/drivers/staging/rtl8192e/rtl819x_TS.h
+++ b/drivers/staging/rtl8192e/rtl819x_TS.h
@@ -45,7 +45,7 @@ struct rx_ts_record {
 	struct ts_common_info ts_common_info;
 	u16				rx_indicate_seq;
 	u16				rx_timeout_indicate_seq;
-	struct list_head		RxPendingPktList;
+	struct list_head		rx_pending_pkt_list;
 	struct timer_list		RxPktPendingTimer;
 	struct ba_record RxAdmittedBARecord;
 	u16				RxLastSeqNum;
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 004a2f65436c..0195c75ec59c 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -31,9 +31,9 @@ static void RxPktPendingTimeout(struct timer_list *t)

 	spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
 	if (pRxTs->rx_timeout_indicate_seq != 0xffff) {
-		while (!list_empty(&pRxTs->RxPendingPktList)) {
+		while (!list_empty(&pRxTs->rx_pending_pkt_list)) {
 			pReorderEntry = (struct rx_reorder_entry *)
-					list_entry(pRxTs->RxPendingPktList.prev,
+					list_entry(pRxTs->rx_pending_pkt_list.prev,
 					struct rx_reorder_entry, List);
 			if (index == 0)
 				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
@@ -167,7 +167,7 @@ void TSInitialize(struct rtllib_device *ieee)
 	INIT_LIST_HEAD(&ieee->Rx_TS_Unused_List);
 	for (count = 0; count < TOTAL_TS_NUM; count++) {
 		pRxTS->num = count;
-		INIT_LIST_HEAD(&pRxTS->RxPendingPktList);
+		INIT_LIST_HEAD(&pRxTS->rx_pending_pkt_list);

 		timer_setup(&pRxTS->ts_common_info.SetupTimer, TsSetupTimeOut,
 			    0);
@@ -408,9 +408,9 @@ static void RemoveTsEntry(struct rtllib_device *ieee,
 		if (timer_pending(&pRxTS->RxPktPendingTimer))
 			del_timer_sync(&pRxTS->RxPktPendingTimer);

-		while (!list_empty(&pRxTS->RxPendingPktList)) {
+		while (!list_empty(&pRxTS->rx_pending_pkt_list)) {
 			pRxReorderEntry = (struct rx_reorder_entry *)
-					list_entry(pRxTS->RxPendingPktList.prev,
+					list_entry(pRxTS->rx_pending_pkt_list.prev,
 					struct rx_reorder_entry, List);
 			netdev_dbg(ieee->dev,  "%s(): Delete SeqNum %d!\n",
 				   __func__, pRxReorderEntry->SeqNum);
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 76a671ec4d35..cbf314cbfebf 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -449,9 +449,9 @@ static int is_duplicate_packet(struct rtllib_device *ieee,
 static bool AddReorderEntry(struct rx_ts_record *pTS,
 			    struct rx_reorder_entry *pReorderEntry)
 {
-	struct list_head *pList = &pTS->RxPendingPktList;
+	struct list_head *pList = &pTS->rx_pending_pkt_list;

-	while (pList->next != &pTS->RxPendingPktList) {
+	while (pList->next != &pTS->rx_pending_pkt_list) {
 		if (SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)
 		    list_entry(pList->next, struct rx_reorder_entry,
 		    List))->SeqNum))
@@ -537,7 +537,7 @@ void rtllib_FlushRxTsPendingPkts(struct rtllib_device *ieee,
 	u8 RfdCnt = 0;

 	del_timer_sync(&pTS->RxPktPendingTimer);
-	while (!list_empty(&pTS->RxPendingPktList)) {
+	while (!list_empty(&pTS->rx_pending_pkt_list)) {
 		if (RfdCnt >= REORDER_WIN_SIZE) {
 			netdev_info(ieee->dev,
 				    "-------------->%s() error! RfdCnt >= REORDER_WIN_SIZE\n",
@@ -546,7 +546,7 @@ void rtllib_FlushRxTsPendingPkts(struct rtllib_device *ieee,
 		}

 		pRxReorderEntry = (struct rx_reorder_entry *)
-				  list_entry(pTS->RxPendingPktList.prev,
+				  list_entry(pTS->rx_pending_pkt_list.prev,
 					     struct rx_reorder_entry, List);
 		netdev_dbg(ieee->dev, "%s(): Indicate SeqNum %d!\n", __func__,
 			   pRxReorderEntry->SeqNum);
@@ -693,12 +693,12 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 	}

 	/* Check if there is any packet need indicate.*/
-	while (!list_empty(&pTS->RxPendingPktList)) {
+	while (!list_empty(&pTS->rx_pending_pkt_list)) {
 		netdev_dbg(ieee->dev, "%s(): start RREORDER indicate\n",
 			   __func__);

 		pReorderEntry = (struct rx_reorder_entry *)
-					list_entry(pTS->RxPendingPktList.prev,
+					list_entry(pTS->rx_pending_pkt_list.prev,
 						   struct rx_reorder_entry,
 						   List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
--
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
