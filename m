Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D214B329437
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 22:54:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 585A44F1D1;
	Mon,  1 Mar 2021 21:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FTSztwmzma8d; Mon,  1 Mar 2021 21:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD8C14F1BF;
	Mon,  1 Mar 2021 21:54:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0674C1BF956
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA76A4F1C0
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y2u-pXH2gAeE for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 21:53:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E916B4F1BE
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 21:53:41 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 94A8CC10;
 Mon,  1 Mar 2021 16:53:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 01 Mar 2021 16:53:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=K3l8jpWbc/p36
 9e8xNzoWUPA6oZaseCQRNJxWoy34A0=; b=GsrH/UTV+0T4JXa2Yywl3MJ8yePNU
 eZvRgbUYMrshGMgYSCtBDArkJXXOZ+brqRpUbuZ/+MEsSmFvsvuwsuOdkNAY36PK
 LaQ8kihaUzPRzeM6/m5sl5IBsCUB2FLrWTefvGq5EdjCXFf7WAAvYgjkazCUQi9U
 JNN04AVK1Ltxf16VlBhuyvNO/EUnOJPPyppclyDssaSAPJr076/QI3mdSSoxQG0W
 oNB2JeDEd6iWZ/nRpdBB923WYS9xQLl+HgM2fPq+PaivXv3wwE1XrGzavtCMx2pP
 nBIWj1ZppnOBjLA6hk3R0KG0qKs5MtvwKX883ECygWAAJrPaotm5FINlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=K3l8jpWbc/p369e8xNzoWUPA6oZaseCQRNJxWoy34A0=; b=ttUrkpgY
 TfrfIin9jIMUR750k0rg+yi1GFp0TiZ+NcpH8BvDZg9eiiVd/PVAeUCS46oQiZMB
 QKaHs6pW4FzN8ck5nemfFZ/Loim2h6GC4TvFUvIYTa/A0nsxA6iZGdQeenvbuLkv
 NptEt/lxX9m3R6KZ8xIqg+V/W7Mwy4SINaR2GzUswtKHofBR1NrTRAlInifLHNxT
 AC8deLIl0ZGYNNjH6gv25wwQJyVw+rWlVsZPP8EnYU9BNI10w9NApmity1Lnzf7x
 Msc/+mzxZmxCEXhD5WyLzLBfLm0jSDL780nbpok3TP1/iEALiyuM5R2v1TFFG7Ir
 R2wtBccWLAqPEw==
X-ME-Sender: <xms:ZGI9YDhYpxxj19sHbjeJEaBNmb-cdvxvRLU5GTSr0Bo6LPo78xtpPw>
 <xme:ZGI9YN3tQkmOlQ1VR7hIPYs4NE7UeUQhZ47Ps3MnDq43cT0OLaUMQq1dMRANjtS5A
 DJmnot26_KeLxrEuA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleekgdduheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:ZGI9YNgKMe4uude7m9EFBQdFjin3MLeJoMT_oBTKOVoKw_Ig-FqivQ>
 <xmx:ZGI9YNf7VRid2JQwWTeDy1qxDpT7sZR7h6E3i4EymhGti5vMUq9FQA>
 <xmx:ZGI9YAl4_sCuOhYxPuycG6BYwwcCdkRn6mZ2WttTm2uaOc-krG1TIg>
 <xmx:ZGI9YBv9-UHhqrj5_BOnC__TGnipSA78bKa9BG4ng8nvilUyWxQ5xA>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC6F6240069;
 Mon,  1 Mar 2021 16:53:39 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/9] staging: rtl8192e: rename RxTimeoutIndicateSeq to
 rx_timeout_indicate_seq in rx_ts_record struct
Date: Mon,  1 Mar 2021 21:53:28 +0000
Message-Id: <20210301215335.767-4-will+git@drnd.me>
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

Rename RxTimeoutIndicateSeq to rx_timeout_indicate_seq to silence a
checkpatch warning about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_TS.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 10 +++++-----
 drivers/staging/rtl8192e/rtllib_rx.c      |  6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TS.h b/drivers/staging/rtl8192e/rtl819x_TS.h
index 11335df748b5..045093c1eb79 100644
--- a/drivers/staging/rtl8192e/rtl819x_TS.h
+++ b/drivers/staging/rtl8192e/rtl819x_TS.h
@@ -44,7 +44,7 @@ struct tx_ts_record {
 struct rx_ts_record {
 	struct ts_common_info ts_common_info;
 	u16				rx_indicate_seq;
-	u16				RxTimeoutIndicateSeq;
+	u16				rx_timeout_indicate_seq;
 	struct list_head		RxPendingPktList;
 	struct timer_list		RxPktPendingTimer;
 	struct ba_record RxAdmittedBARecord;
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index e885eff0ea79..004a2f65436c 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -30,7 +30,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	bool bPktInBuf = false;

 	spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
-	if (pRxTs->RxTimeoutIndicateSeq != 0xffff) {
+	if (pRxTs->rx_timeout_indicate_seq != 0xffff) {
 		while (!list_empty(&pRxTs->RxPendingPktList)) {
 			pReorderEntry = (struct rx_reorder_entry *)
 					list_entry(pRxTs->RxPendingPktList.prev,
@@ -66,7 +66,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	}

 	if (index > 0) {
-		pRxTs->RxTimeoutIndicateSeq = 0xffff;
+		pRxTs->rx_timeout_indicate_seq = 0xffff;

 		if (index > REORDER_WIN_SIZE) {
 			netdev_warn(ieee->dev,
@@ -80,8 +80,8 @@ static void RxPktPendingTimeout(struct timer_list *t)
 		bPktInBuf = false;
 	}

-	if (bPktInBuf && (pRxTs->RxTimeoutIndicateSeq == 0xffff)) {
-		pRxTs->RxTimeoutIndicateSeq = pRxTs->rx_indicate_seq;
+	if (bPktInBuf && (pRxTs->rx_timeout_indicate_seq == 0xffff)) {
+		pRxTs->rx_timeout_indicate_seq = pRxTs->rx_indicate_seq;
 		mod_timer(&pRxTs->RxPktPendingTimer,  jiffies +
 			  msecs_to_jiffies(ieee->pHTInfo->RxReorderPendingTime)
 			  );
@@ -125,7 +125,7 @@ static void ResetRxTsEntry(struct rx_ts_record *pTS)
 {
 	ResetTsCommonInfo(&pTS->ts_common_info);
 	pTS->rx_indicate_seq = 0xffff;
-	pTS->RxTimeoutIndicateSeq = 0xffff;
+	pTS->rx_timeout_indicate_seq = 0xffff;
 	ResetBaEntry(&pTS->RxAdmittedBARecord);
 }

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index c8fa4cf8eab0..76a671ec4d35 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -737,7 +737,7 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 	if (index > 0) {
 		if (timer_pending(&pTS->RxPktPendingTimer))
 			del_timer_sync(&pTS->RxPktPendingTimer);
-		pTS->RxTimeoutIndicateSeq = 0xffff;
+		pTS->rx_timeout_indicate_seq = 0xffff;

 		if (index > REORDER_WIN_SIZE) {
 			netdev_err(ieee->dev,
@@ -751,9 +751,9 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 		bPktInBuf = false;
 	}

-	if (bPktInBuf && pTS->RxTimeoutIndicateSeq == 0xffff) {
+	if (bPktInBuf && pTS->rx_timeout_indicate_seq == 0xffff) {
 		netdev_dbg(ieee->dev, "%s(): SET rx timeout timer\n", __func__);
-		pTS->RxTimeoutIndicateSeq = pTS->rx_indicate_seq;
+		pTS->rx_timeout_indicate_seq = pTS->rx_indicate_seq;
 		mod_timer(&pTS->RxPktPendingTimer, jiffies +
 			  msecs_to_jiffies(pHTInfo->RxReorderPendingTime));
 	}
--
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
