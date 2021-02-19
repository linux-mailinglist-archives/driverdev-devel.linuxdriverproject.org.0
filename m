Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D7E320D75
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1938D6F4E4
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yKYyRTvV6j1Q for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 20:12:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 0D5926F503; Sun, 21 Feb 2021 20:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DA52605F5;
	Sun, 21 Feb 2021 20:11:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CFFF1BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 49DAE84693
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kGVzjoL_4Hcx for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:11:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 99A38847AC
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:11:21 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1957D5C0087;
 Sun, 21 Feb 2021 15:11:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:11:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=zvC5icpIf6bWt
 wszigPVxYj7lJ8z3AetR5xiBpxijFg=; b=o08vAiGlaAFmo052nRrRl00JkfQfa
 TPtfRKJSxBBrzjux+GmQO5AxXvtwe03kx2lc6ECsld6FUIiibGNMHOLDk4Ko6od1
 VfDoiqF3QnMLbSC9Yz32FiB3QCMIbBrwm4d3ylG8UybS7OszjwZCu1UFc9BIo8tO
 lVHHwhrM+Fax4UgGyKJa2S/eCV2ibi89ujceaw7r/BK7hvXSTf3FbuGo+QEKWQo1
 PgEoeSfrplTqJQkAeUZeWCrCaN6NI0WKx/TEn33VJhvjDcV1ZrGk87HRAx/fnrfP
 E9pWq5L+135au31OZosiwgxCqJxjyukKdue7WKFWduzh+Equ+bb5WoqUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=zvC5icpIf6bWtwszigPVxYj7lJ8z3AetR5xiBpxijFg=; b=JrL/8AMm
 5sjrRSpGoiOZepomGbMfr3f4oKOwkorORSj1su1wLwo3owXZbN0AR45wBHDvEUYN
 vxyLb4HFWgPemgpu917XhVajOXtOHN+ct6hdfNfFiU6vbTBdX/nATe4l+B21HmUq
 wtoyz0eLXgoCo8wkMmCq3+rMAh5Je2lVoXl1+MSldMn8YeA1VrDke7VJZlQxll9P
 JHV2xjKUeRi+6qBDWqrys9Z56ymSnGq23Mdeoy4xnNoEbYMwXoPWpeYby6xj4SAI
 IFRayzMNQ5j5lg5IO4gCfDscchux6VWk+5LeRyn4i6aVGxZVyjzI2oL+81VI1RHR
 30t6eP3NIx7AWw==
X-ME-Sender: <xms:aL4yYJLE2rr79vCqmN1vGDvxRohvutjLb32pjCHd8Hlt53Jjj1sdSA>
 <xme:aL4yYFL6Tjaj5AWlc7Nc3LSQiG9gr27DT945TDMeGN17fi_K8KuCZSaBzgcFnxDEt
 qGdRoteobiDGgfWBg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhephfejleehhedvgfekffeiudeifeffkeelveduueelffeuveekjeevteeghfdt
 fefgnecuffhomhgrihhnpehfihgvlhgurdgsrgenucfkphepvddujedrvdefkedrvddtke
 drjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 fihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:ab4yYBuZfutYVH3h309-5ztngumjQsCEu4TiX7wuRKeoVqrlc0919w>
 <xmx:ab4yYKbePNamQyqeiyJce4AZI5aYQihANSLo8mKdK2KH_7Uaoeaa3Q>
 <xmx:ab4yYAa1P1k8Rg9VUGGgPzSkKDfx_bNgt7rR0HvOeYTzmGyFLvnzcg>
 <xmx:ab4yYJCenQoMd0vmtqzkzaMtIHClUpNJAHw4ELeJ3P9ki8j7HaLHoQ>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 79D3B1080057;
 Sun, 21 Feb 2021 15:11:20 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/7] staging: rtl8192e: rename BaParamSet to ba_param_set in
 ba_record struct
Date: Fri, 19 Feb 2021 23:11:25 +0000
Message-Id: <20210219231128.27119-5-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 28 +++++++++++------------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index e5870c3c19cf..6ef9a435e81d 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -52,7 +52,7 @@ struct ba_record {
 	struct timer_list		timer;
 	u8				b_valid;
 	u8				dialog_token;
-	union ba_param_set BaParamSet;
+	union ba_param_set ba_param_set;
 	u16				BaTimeoutValue;
 	union sequence_control BaStartSeqCtrl;
 };
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index ec174ef24f87..450634999193 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -58,7 +58,7 @@ static u8 RxTsDeleteBA(struct rtllib_device *ieee, struct rx_ts_record *pRxTs)
 void ResetBaEntry(struct ba_record *pBA)
 {
 	pBA->b_valid			= false;
-	pBA->BaParamSet.short_data	= 0;
+	pBA->ba_param_set.short_data	= 0;
 	pBA->BaTimeoutValue		= 0;
 	pBA->dialog_token		= 0;
 	pBA->BaStartSeqCtrl.short_data	= 0;
@@ -107,7 +107,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 		tag += 2;
 	}

-	put_unaligned_le16(pBA->BaParamSet.short_data, tag);
+	put_unaligned_le16(pBA->ba_param_set.short_data, tag);
 	tag += 2;

 	put_unaligned_le16(pBA->BaTimeoutValue, tag);
@@ -142,7 +142,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 	memset(&DelbaParamSet, 0, 2);

 	DelbaParamSet.field.initiator = (TxRxSelect == TX_DIR) ? 1 : 0;
-	DelbaParamSet.field.tid	= pBA->BaParamSet.field.tid;
+	DelbaParamSet.field.tid	= pBA->ba_param_set.field.tid;

 	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
 	if (!skb)
@@ -278,15 +278,15 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)

 	DeActivateBAEntry(ieee, pBA);
 	pBA->dialog_token = *pDialogToken;
-	pBA->BaParamSet = *pBaParamSet;
+	pBA->ba_param_set = *pBaParamSet;
 	pBA->BaTimeoutValue = *pBaTimeoutVal;
 	pBA->BaStartSeqCtrl = *pBaStartSeqCtrl;

 	if (ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev) ||
 	   (ieee->pHTInfo->IOTAction & HT_IOT_ACT_ALLOW_PEER_AGG_ONE_PKT))
-		pBA->BaParamSet.field.buffer_size = 1;
+		pBA->ba_param_set.field.buffer_size = 1;
 	else
-		pBA->BaParamSet.field.buffer_size = 32;
+		pBA->ba_param_set.field.buffer_size = 32;

 	ActivateBAEntry(ieee, pBA, 0);
 	rtllib_send_ADDBARsp(ieee, dst, pBA, ADDBA_STATUS_SUCCESS);
@@ -297,10 +297,10 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 	{
 		struct ba_record BA;

-		BA.BaParamSet = *pBaParamSet;
+		BA.ba_param_set = *pBaParamSet;
 		BA.BaTimeoutValue = *pBaTimeoutVal;
 		BA.dialog_token = *pDialogToken;
-		BA.BaParamSet.field.ba_policy = BA_POLICY_IMMEDIATE;
+		BA.ba_param_set.field.ba_policy = BA_POLICY_IMMEDIATE;
 		rtllib_send_ADDBARsp(ieee, dst, &BA, rc);
 		return 0;
 	}
@@ -388,7 +388,7 @@ int rtllib_rx_ADDBARsp(struct rtllib_device *ieee, struct sk_buff *skb)
 		pAdmittedBA->dialog_token = *pDialogToken;
 		pAdmittedBA->BaTimeoutValue = *pBaTimeoutVal;
 		pAdmittedBA->BaStartSeqCtrl = pPendingBA->BaStartSeqCtrl;
-		pAdmittedBA->BaParamSet = *pBaParamSet;
+		pAdmittedBA->ba_param_set = *pBaParamSet;
 		DeActivateBAEntry(ieee, pAdmittedBA);
 		ActivateBAEntry(ieee, pAdmittedBA, *pBaTimeoutVal);
 	} else {
@@ -404,7 +404,7 @@ int rtllib_rx_ADDBARsp(struct rtllib_device *ieee, struct sk_buff *skb)
 	{
 		struct ba_record BA;

-		BA.BaParamSet = *pBaParamSet;
+		BA.ba_param_set = *pBaParamSet;
 		rtllib_send_DELBA(ieee, dst, &BA, TX_DIR, ReasonCode);
 		return 0;
 	}
@@ -483,10 +483,10 @@ void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,
 	DeActivateBAEntry(ieee, pBA);

 	pBA->dialog_token++;
-	pBA->BaParamSet.field.amsdu_support = 0;
-	pBA->BaParamSet.field.ba_policy = Policy;
-	pBA->BaParamSet.field.tid = pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
-	pBA->BaParamSet.field.buffer_size = 32;
+	pBA->ba_param_set.field.amsdu_support = 0;
+	pBA->ba_param_set.field.ba_policy = Policy;
+	pBA->ba_param_set.field.tid = pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
+	pBA->ba_param_set.field.buffer_size = 32;
 	pBA->BaTimeoutValue = 0;
 	pBA->BaStartSeqCtrl.field.seq_num = (pTS->TxCurSeq + 3) % 4096;

--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
