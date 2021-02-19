Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B06320D78
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DC0182FAE
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VohqyJ_-6NI3 for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 20:12:35 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 8045582F9B; Sun, 21 Feb 2021 20:12:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D58382EF0;
	Sun, 21 Feb 2021 20:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B613D1BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5BE36F4A5
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AdbxoUSsW3GI for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:11:24 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id BD8B06F4E4; Sun, 21 Feb 2021 20:11:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FC656F47A
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:11:23 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id ACECE5C0099;
 Sun, 21 Feb 2021 15:11:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:11:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=PVjY3iIhwL4pF
 Cqtj9NbCozucXT49Ieb3goPD/84Ghc=; b=rsv2ptKi8HAOO3uQDhG+Mluj9iJjG
 b5MfUOEvtlQkoMXc6N2FE1uELGmC6Ss1o6S81dzqRyCTcfhq4p7S2ClA6dZf5wCI
 Mr94IJgoP5xR7DutglDCw0IXQtRmTN9CgytPhJIbNCMfZ98wWm8cf+jXMM4bo//b
 pUZjqGpF/Zm5J4MQvhHzM6Lz3OuIwoBtEaypb7uSDyL7CyC5/wg5uitf3NlJhVkf
 wfNL27UlWi98gg+IvpxOjrkZfG6FHOOOHf4j4DaOVhzS81Hdb88xOOTI/bGUcmhf
 rkukqZbvRkvn7XtwlboRU0iKD8XXHENyJ8j2FLEvaXUsFZTTcsXlamhiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=PVjY3iIhwL4pFCqtj9NbCozucXT49Ieb3goPD/84Ghc=; b=Z6vRD6CG
 6+DFmQ3fb4HPAxtyglxS45H3Ww3YgWANk/pUOwrbMJKxBL/INI27zoSWByBTgvqq
 m1Fep+vJF2NTix5+Nxyxe9gxUTNX+6SC9gaYp2xDlXYlbC4LIIJYYTvyHAogA8WY
 +BAqMaVmgEt/6c8L4DWmoJbreZNpb6bD5PB5xH4uyMq96Kep67WSkXigQa0O/blG
 cY+/CDJB30QNOxnXZk+6sqiI0WIi/O6kE7rS+sTBlshJuk2aagcc+LBlJ/asOr6g
 VAm/pRdwS32pEJO0DW3szPexeO/GGnSU0HUecSIZgR8giCV8j+H5VcMLqK7WmTT6
 0sT29emjM6jsfQ==
X-ME-Sender: <xms:Z74yYKP-wGHrzMcCW74h4o3mn0wP5SjN27vjMyJWLL23lxl9Q07I-g>
 <xme:Z74yYFTK4d3nRxGElZ8wPhJB07lDGNOSE8iT0jm-f7z3XzRoSXGMj0frugSYnKRsB
 Y28TEtrIOeCnrMaEg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:Z74yYECnWcHlj5OvTzoSvT-kgttFwVmhDkINymv3RAtgyD63rcX8YA>
 <xmx:Z74yYMhVA2dQgXQEIxb7vEEl43Zdqu9AfSDTdnxELuQjKhsPv3TKqA>
 <xmx:Z74yYFMsJpRLW0Y0Hr8OPS1diJMktd8KwWmlx4YncGw5UldSVM8KjA>
 <xmx:Z74yYD9JLOX5gShsbha4J-9z9V32dh8R9qERs7nqnDVzZ4BA4BShCw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 31CC31080057;
 Sun, 21 Feb 2021 15:11:19 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/7] staging: rtl8192e: rename bValid to b_valid in ba_record
 struct
Date: Fri, 19 Feb 2021 23:11:23 +0000
Message-Id: <20210219231128.27119-3-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219231128.27119-1-will+git@drnd.me>
References: <20210219231128.27119-1-will+git@drnd.me>
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

Fixes a checkpatch CHECK issue.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 22 +++++++++++-----------
 drivers/staging/rtl8192e/rtllib_tx.c      |  2 +-
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 61e820e2ffb9..fe85237e2ea9 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -50,7 +50,7 @@ union delba_param_set {

 struct ba_record {
 	struct timer_list		timer;
-	u8				bValid;
+	u8				b_valid;
 	u8				DialogToken;
 	union ba_param_set BaParamSet;
 	u16				BaTimeoutValue;
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index f66d11263f95..9a865f553193 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -13,14 +13,14 @@
 static void ActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA,
 			    u16 Time)
 {
-	pBA->bValid = true;
+	pBA->b_valid = true;
 	if (Time != 0)
 		mod_timer(&pBA->timer, jiffies + msecs_to_jiffies(Time));
 }

 static void DeActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA)
 {
-	pBA->bValid = false;
+	pBA->b_valid = false;
 	del_timer_sync(&pBA->timer);
 }

@@ -30,12 +30,12 @@ static u8 TxTsDeleteBA(struct rtllib_device *ieee, struct tx_ts_record *pTxTs)
 	struct ba_record *pPendingBa = &pTxTs->TxPendingBARecord;
 	u8 bSendDELBA = false;

-	if (pPendingBa->bValid) {
+	if (pPendingBa->b_valid) {
 		DeActivateBAEntry(ieee, pPendingBa);
 		bSendDELBA = true;
 	}

-	if (pAdmittedBa->bValid) {
+	if (pAdmittedBa->b_valid) {
 		DeActivateBAEntry(ieee, pAdmittedBa);
 		bSendDELBA = true;
 	}
@@ -47,7 +47,7 @@ static u8 RxTsDeleteBA(struct rtllib_device *ieee, struct rx_ts_record *pRxTs)
 	struct ba_record *pBa = &pRxTs->RxAdmittedBARecord;
 	u8			bSendDELBA = false;

-	if (pBa->bValid) {
+	if (pBa->b_valid) {
 		DeActivateBAEntry(ieee, pBa);
 		bSendDELBA = true;
 	}
@@ -57,7 +57,7 @@ static u8 RxTsDeleteBA(struct rtllib_device *ieee, struct rx_ts_record *pRxTs)

 void ResetBaEntry(struct ba_record *pBA)
 {
-	pBA->bValid			= false;
+	pBA->b_valid			= false;
 	pBA->BaParamSet.short_data	= 0;
 	pBA->BaTimeoutValue		= 0;
 	pBA->DialogToken		= 0;
@@ -357,11 +357,11 @@ int rtllib_rx_ADDBARsp(struct rtllib_device *ieee, struct sk_buff *skb)
 	pAdmittedBA = &pTS->TxAdmittedBARecord;


-	if (pAdmittedBA->bValid) {
+	if (pAdmittedBA->b_valid) {
 		netdev_dbg(ieee->dev, "%s(): ADDBA response already admitted\n",
 			   __func__);
 		return -1;
-	} else if (!pPendingBA->bValid ||
+	} else if (!pPendingBA->b_valid ||
 		   (*pDialogToken != pPendingBA->DialogToken)) {
 		netdev_warn(ieee->dev,
 			    "%s(): ADDBA Rsp. BA invalid, DELBA!\n",
@@ -477,7 +477,7 @@ void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,
 {
 	struct ba_record *pBA = &pTS->TxPendingBARecord;

-	if (pBA->bValid && !bOverwritePending)
+	if (pBA->b_valid && !bOverwritePending)
 		return;

 	DeActivateBAEntry(ieee, pBA);
@@ -505,7 +505,7 @@ void TsInitDelBA(struct rtllib_device *ieee,

 		if (TxTsDeleteBA(ieee, pTxTs))
 			rtllib_send_DELBA(ieee, pTsCommonInfo->Addr,
-					  (pTxTs->TxAdmittedBARecord.bValid) ?
+					  (pTxTs->TxAdmittedBARecord.b_valid) ?
 					 (&pTxTs->TxAdmittedBARecord) :
 					(&pTxTs->TxPendingBARecord),
 					 TxRxSelect, DELBA_REASON_END_BA);
@@ -526,7 +526,7 @@ void BaSetupTimeOut(struct timer_list *t)

 	pTxTs->bAddBaReqInProgress = false;
 	pTxTs->bAddBaReqDelayed = true;
-	pTxTs->TxPendingBARecord.bValid = false;
+	pTxTs->TxPendingBARecord.b_valid = false;
 }

 void TxBaInactTimeout(struct timer_list *t)
diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index 30596b9702c3..3ac5fd845d1d 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -297,7 +297,7 @@ static void rtllib_tx_query_agg_cap(struct rtllib_device *ieee,
 			netdev_info(ieee->dev, "%s: can't get TS\n", __func__);
 			return;
 		}
-		if (!pTxTs->TxAdmittedBARecord.bValid) {
+		if (!pTxTs->TxAdmittedBARecord.b_valid) {
 			if (ieee->wpa_ie_len && (ieee->pairwise_key_type ==
 			    KEY_TYPE_NA)) {
 				;
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
