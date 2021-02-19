Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC85320D77
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:12:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43E536F4CD
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gH7WUHhRHBKP for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 20:12:33 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id C579F6F509; Sun, 21 Feb 2021 20:12:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21BE96F478;
	Sun, 21 Feb 2021 20:12:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67E5F1BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60B086F4A5
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gsjy9NcRS70O for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:11:24 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 6DABF6F4EE; Sun, 21 Feb 2021 20:11:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CAC86ECA6
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:11:22 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 6D4D85C0097;
 Sun, 21 Feb 2021 15:11:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:11:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Dci6df+Jxcphe
 /BQUGKXQQuQpIGWDje2o/mPOWBkOBc=; b=I4tt9rRyiW30T5TRdv8xLdYA3I3Dg
 7CDnZk9EUj2LacRn7RoiwMv8Y+iV64hoee3Cd4qGxZnrhh17nKnYEguzr8uGUvCk
 5ZCF/P4vi/YzaHXTKXuI83o60rTvS/CMli/P12Jp2+I3xMFzU1WFaAnmXscaLje4
 7bqG37KnLVZ14wAxwaeOlkC/cmmO5O8U9kGxlDajjdoM8C94DIu04qIbgwMeaHwZ
 zUePpiRy+0YMJpT8FY16Fy6LeCU/Gynm9r88gyqyX6Yh4GsYEzEkfg3zbbdhqu5o
 wAVzlVFWeOksKPuzh4O1df7A+NVT1CPa2EHYBHnEcEgB/X8WzNSnL8JvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Dci6df+Jxcphe/BQUGKXQQuQpIGWDje2o/mPOWBkOBc=; b=BtfhBANY
 wT6Jy80JPAIz6xjgL8b0/UBHwjAf8f1yoMAQTvM4nlKVsjpb4pTiCs52MNQ3q+pj
 PFYOpVUVkozP78KnsS+Ysihwi+6MhLyw8E/IEDKC4Hh4i2/vjIn5IvJSNJG0yckd
 04JJPqGAoHGjX61SQFnie+U0rp23RCr32PuXNJJ4m+/nfi9wbXY1AUjKAas4Nsc5
 iFysB/TpYxuLP6HTlSBH3kfivMYOpo6PpF8VHOddz7i5h0S+yXMBjjZfqidIZQj9
 qOxq4NiX4UP1Lvu2Yk3iIeDvvfTGOHAjhPPMQYwrf5rutropO3UHKFmO9IcCsROZ
 7R46l1KG/FJb/g==
X-ME-Sender: <xms:aL4yYMcJOiHybUvJeDFFDy1bOnfnoJWLbIbX9gFsr_8iPXOQs3isgA>
 <xme:aL4yYOMP6Sf0ov7BEJ9UuVEDfgHCTcKyZW7osAPimtqiLHuvwHvjpG7-q57eEMmMs
 xak8cNofLBbLCbj8Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhephfejleehhedvgfekffeiudeifeffkeelveduueelffeuveekjeevteeghfdt
 fefgnecuffhomhgrihhnpehfihgvlhgurdgsrgenucfkphepvddujedrvdefkedrvddtke
 drjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 fihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:aL4yYNgNJtldh_JpKdTBILVulqU3vKxBNN5rLmTZA5gokejzzKEJaQ>
 <xmx:aL4yYB9hp_3RuxOvjiZKprjTPS630QbFZVBwB1FIYPeZSp8X-jkuSA>
 <xmx:aL4yYIv4XQjss1FLeqNT9bxFNVK-JyNTc1GZaSgDseyPLbq5SDH7Dg>
 <xmx:aL4yYO0NBvEAY8TG_4Yi_RvOQUBFIq1dhMpjL-S1d1O3B3L5YXSwZw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id D29651080057;
 Sun, 21 Feb 2021 15:11:19 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/7] staging: rtl8192e: rename DialogToken to dialog_token in
 ba_record struct
Date: Fri, 19 Feb 2021 23:11:24 +0000
Message-Id: <20210219231128.27119-4-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 14 +++++++-------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index fe85237e2ea9..e5870c3c19cf 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -51,7 +51,7 @@ union delba_param_set {
 struct ba_record {
 	struct timer_list		timer;
 	u8				b_valid;
-	u8				DialogToken;
+	u8				dialog_token;
 	union ba_param_set BaParamSet;
 	u16				BaTimeoutValue;
 	union sequence_control BaStartSeqCtrl;
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 9a865f553193..ec174ef24f87 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -60,7 +60,7 @@ void ResetBaEntry(struct ba_record *pBA)
 	pBA->b_valid			= false;
 	pBA->BaParamSet.short_data	= 0;
 	pBA->BaTimeoutValue		= 0;
-	pBA->DialogToken		= 0;
+	pBA->dialog_token		= 0;
 	pBA->BaStartSeqCtrl.short_data	= 0;
 }
 static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
@@ -98,7 +98,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	tag = skb_put(skb, 9);
 	*tag++ = ACT_CAT_BA;
 	*tag++ = type;
-	*tag++ = pBA->DialogToken;
+	*tag++ = pBA->dialog_token;

 	if (type == ACT_ADDBARSP) {
 		RT_TRACE(COMP_DBG, "====>to send ADDBARSP\n");
@@ -277,7 +277,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 	rtllib_FlushRxTsPendingPkts(ieee, pTS);

 	DeActivateBAEntry(ieee, pBA);
-	pBA->DialogToken = *pDialogToken;
+	pBA->dialog_token = *pDialogToken;
 	pBA->BaParamSet = *pBaParamSet;
 	pBA->BaTimeoutValue = *pBaTimeoutVal;
 	pBA->BaStartSeqCtrl = *pBaStartSeqCtrl;
@@ -299,7 +299,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)

 		BA.BaParamSet = *pBaParamSet;
 		BA.BaTimeoutValue = *pBaTimeoutVal;
-		BA.DialogToken = *pDialogToken;
+		BA.dialog_token = *pDialogToken;
 		BA.BaParamSet.field.ba_policy = BA_POLICY_IMMEDIATE;
 		rtllib_send_ADDBARsp(ieee, dst, &BA, rc);
 		return 0;
@@ -362,7 +362,7 @@ int rtllib_rx_ADDBARsp(struct rtllib_device *ieee, struct sk_buff *skb)
 			   __func__);
 		return -1;
 	} else if (!pPendingBA->b_valid ||
-		   (*pDialogToken != pPendingBA->DialogToken)) {
+		   (*pDialogToken != pPendingBA->dialog_token)) {
 		netdev_warn(ieee->dev,
 			    "%s(): ADDBA Rsp. BA invalid, DELBA!\n",
 			    __func__);
@@ -385,7 +385,7 @@ int rtllib_rx_ADDBARsp(struct rtllib_device *ieee, struct sk_buff *skb)
 		}


-		pAdmittedBA->DialogToken = *pDialogToken;
+		pAdmittedBA->dialog_token = *pDialogToken;
 		pAdmittedBA->BaTimeoutValue = *pBaTimeoutVal;
 		pAdmittedBA->BaStartSeqCtrl = pPendingBA->BaStartSeqCtrl;
 		pAdmittedBA->BaParamSet = *pBaParamSet;
@@ -482,7 +482,7 @@ void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,

 	DeActivateBAEntry(ieee, pBA);

-	pBA->DialogToken++;
+	pBA->dialog_token++;
 	pBA->BaParamSet.field.amsdu_support = 0;
 	pBA->BaParamSet.field.ba_policy = Policy;
 	pBA->BaParamSet.field.tid = pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
