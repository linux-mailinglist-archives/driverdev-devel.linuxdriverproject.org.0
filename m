Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B094320D76
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:12:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30FFA85A58;
	Sun, 21 Feb 2021 20:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d6en4kkNSmKm; Sun, 21 Feb 2021 20:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3014185A4B;
	Sun, 21 Feb 2021 20:12:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20BB81BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 098A682EB5
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZ6m55fZ8Eg8 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:11:25 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 24EC382ED1; Sun, 21 Feb 2021 20:11:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1767682EB5
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:11:23 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 49B045C00A0;
 Sun, 21 Feb 2021 15:11:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:11:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=evSOHfI/Vs8oy
 3BV6KO/AEJe3gCzOxVrr/dV5y15zeI=; b=SNdI+r4JCHfeKAIEx6OHl4wMN/fjE
 Q5Iwep7lL5X2jGdouY7M7wPTQzUy0bAqevw2nmaGx6BVWXbxiUoDNzduE9IGp/dr
 Y0IcyTYeGxYp5RetCYU1pewXK+kF4PpdzS5isZXnGrIJf7isW+IbO2KVU0kW/iYx
 na0I0Lm8PdI+1bpWiG7x2RfIr1wvPnShklWNeAA9Wmf/HppzRxOhzUePc7FsTGwT
 LepGn/YxV5R8lfq/az3bjpvUFHj+QDVobQG3LCX6UD8aMsIClKVPsz0cA8LAuNT5
 Z2l4zqA7IfGWTx9DeKrVA/gh4c80hGwKSFHcw3DBrfFpagG0IZd9orvjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=evSOHfI/Vs8oy3BV6KO/AEJe3gCzOxVrr/dV5y15zeI=; b=TX76BNBr
 eCz3gUXV/h41u5vC9bSw/7m/MzMuaEb/MDXhmPbn0mYGvE2y4PqZVGnI2ZqMlOOW
 ubXw2WAk1FuvsMuppCAZ9JG8LJ2jnnSq6RtxuSFo6nrx6xCjNEJbsvz4Qmocix4y
 HMAx3XF8pHn4izMdFdBJGQp8HW8GnXq7E0rF73KkHw9zKAreCGfbxpQEIZymWS6t
 ZU08p2WT92aiJpA5lLr20zG/r6Rm/t58HJw0zTH8T6mN4j/9iMUdqdG/kja5Vi7N
 mjCHxsnlkX603JBN2tnUB10LGTG9wI1BKvFTAG6RnRlCabclB47qYh4sJ0+w7FG0
 A9JERW2ywIHZMw==
X-ME-Sender: <xms:ar4yYFno29Mt9lpsp1BMbXrcMH9d39SFekIBy3UtbKqY-Fw1BBxpVQ>
 <xme:ar4yYA0AZG9T-PIpgEvWHIFbWNbu5EvQkH1W8MKrUxEns_k_pVVf1zRnC0eW9GC5o
 JY3PbYsB-IQukhWfA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:ar4yYLoL_I5sVKOcoWYewAipUNnXQ-LDJPdhFbYmjjt4GGEvzDbJuw>
 <xmx:ar4yYFmGNbTV5_n4v1aUodXyMH1tWDgm5asV0IhsjiG0xQ4WLaWUzw>
 <xmx:ar4yYD3uzRUVzXYU1kMe4HMwfdYlIu87pv9FOSVRqnPC1eLBC8SaaQ>
 <xmx:ar4yYA8m9VkdD8blUi9YuBnAFo55KDmoRGhzAoSeQQvzCqKk19NGMQ>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id C38B51080057;
 Sun, 21 Feb 2021 15:11:21 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 6/7] staging: rtl8192e: rename BaStartSeqCtrl to
 ba_start_seq_ctrl in ba_record struct
Date: Fri, 19 Feb 2021 23:11:27 +0000
Message-Id: <20210219231128.27119-7-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 18 +++++++++---------
 drivers/staging/rtl8192e/rtllib_tx.c      |  2 +-
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index febe99fc486c..1d2a11b3ec67 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -54,7 +54,7 @@ struct ba_record {
 	u8				dialog_token;
 	union ba_param_set ba_param_set;
 	u16				ba_timeout_value;
-	union sequence_control BaStartSeqCtrl;
+	union sequence_control ba_start_seq_ctrl;
 };

 #endif
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 68dcb9d9eb98..880b5f1c14d7 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -57,11 +57,11 @@ static u8 RxTsDeleteBA(struct rtllib_device *ieee, struct rx_ts_record *pRxTs)

 void ResetBaEntry(struct ba_record *pBA)
 {
-	pBA->b_valid			= false;
-	pBA->ba_param_set.short_data	= 0;
-	pBA->ba_timeout_value		= 0;
-	pBA->dialog_token		= 0;
-	pBA->BaStartSeqCtrl.short_data	= 0;
+	pBA->b_valid			  = false;
+	pBA->ba_param_set.short_data	  = 0;
+	pBA->ba_timeout_value		  = 0;
+	pBA->dialog_token		  = 0;
+	pBA->ba_start_seq_ctrl.short_data = 0;
 }
 static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 				    struct ba_record *pBA,
@@ -114,7 +114,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	tag += 2;

 	if (type == ACT_ADDBAREQ) {
-		memcpy(tag, (u8 *)&(pBA->BaStartSeqCtrl), 2);
+		memcpy(tag, (u8 *)&(pBA->ba_start_seq_ctrl), 2);
 		tag += 2;
 	}

@@ -280,7 +280,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 	pBA->dialog_token = *pDialogToken;
 	pBA->ba_param_set = *pBaParamSet;
 	pBA->ba_timeout_value = *pBaTimeoutVal;
-	pBA->BaStartSeqCtrl = *pBaStartSeqCtrl;
+	pBA->ba_start_seq_ctrl = *pBaStartSeqCtrl;

 	if (ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev) ||
 	   (ieee->pHTInfo->IOTAction & HT_IOT_ACT_ALLOW_PEER_AGG_ONE_PKT))
@@ -387,7 +387,7 @@ int rtllib_rx_ADDBARsp(struct rtllib_device *ieee, struct sk_buff *skb)

 		pAdmittedBA->dialog_token = *pDialogToken;
 		pAdmittedBA->ba_timeout_value = *pBaTimeoutVal;
-		pAdmittedBA->BaStartSeqCtrl = pPendingBA->BaStartSeqCtrl;
+		pAdmittedBA->ba_start_seq_ctrl = pPendingBA->ba_start_seq_ctrl;
 		pAdmittedBA->ba_param_set = *pBaParamSet;
 		DeActivateBAEntry(ieee, pAdmittedBA);
 		ActivateBAEntry(ieee, pAdmittedBA, *pBaTimeoutVal);
@@ -488,7 +488,7 @@ void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,
 	pBA->ba_param_set.field.tid = pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
 	pBA->ba_param_set.field.buffer_size = 32;
 	pBA->ba_timeout_value = 0;
-	pBA->BaStartSeqCtrl.field.seq_num = (pTS->TxCurSeq + 3) % 4096;
+	pBA->ba_start_seq_ctrl.field.seq_num = (pTS->TxCurSeq + 3) % 4096;

 	ActivateBAEntry(ieee, pBA, BA_SETUP_TIMEOUT);

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index 3ac5fd845d1d..89ec72b1895a 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -308,7 +308,7 @@ static void rtllib_tx_query_agg_cap(struct rtllib_device *ieee,
 			}
 			goto FORCED_AGG_SETTING;
 		} else if (!pTxTs->bUsingBa) {
-			if (SN_LESS(pTxTs->TxAdmittedBARecord.BaStartSeqCtrl.field.seq_num,
+			if (SN_LESS(pTxTs->TxAdmittedBARecord.ba_start_seq_ctrl.field.seq_num,
 			   (pTxTs->TxCurSeq+1)%4096))
 				pTxTs->bUsingBa = true;
 			else
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
