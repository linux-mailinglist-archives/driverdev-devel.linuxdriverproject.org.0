Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7F931F726
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:13:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F8EA606E1
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mbb_XUQKZ9Oz for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 10:13:32 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 052F8606E6; Fri, 19 Feb 2021 10:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D06D8606E3;
	Fri, 19 Feb 2021 10:12:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C98C91BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C61C98746A
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zppuMr2CA3YH for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:12:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BBC3E873C3
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:12:12 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C386B5C00BE;
 Fri, 19 Feb 2021 05:12:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 19 Feb 2021 05:12:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Mz73eAg0Tgom3
 FnYOEIdujkiBT59E7CKX+kBTaJKFfQ=; b=sU/tiqcgRhiaxkc+OIlU2PnfJ+9Hc
 AC1le14FCyHq7wJ/SpiaLGIf1z8jLaQ3B6Fs3Sk4oD8PQxfz+OziupAvyKUOYKMF
 mw7voclj4U7IvMbfI0aefQQpijuRMYhz309H51zVJV0ZBXiO4eGEXOMgZXfJ0A8/
 pr6Q685HW3fz3bgTc0Zpxeb+X2T69Stfdwk8trJEujnznZIzIlDJ1wKaqky9jJr/
 EMDXdyw2A9FwDFJYeQIKiqiyKjLd0tNq0Pts2ouwyrvD9kPU596Z2J312LWoe1Fs
 ezvyFDzEs7Ec9V3qxQuOmImxEcu0DgL/6anc5xefL5fUNvGJkWtF8GFtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Mz73eAg0Tgom3FnYOEIdujkiBT59E7CKX+kBTaJKFfQ=; b=Sq1M4qZ4
 hDtmsawHmx2LGrPS0h2peb4/BCCPN6G7mZf0Qd29aXoBQoVnmNR6AT+7JiO1bNd/
 ROH+vWK+qpCYE5kL9uxeNKZLCZqJmeHj5FVD35dddGVM9AUyQrRxqj3ZSZwsNhEI
 918px+dSMvv05VoKNP/AehonHZFNkz6zRNGKMayodBTjOFOpnGbmKAOggNQ5YNzX
 FZgdCCxSkwDn9sLVDPxYeBSlYH+HXCHWI9KoRKU48WEmiOFighA00VjzfQEBsSMv
 dLhpHj8Qb93mN5osYJah8v5KLSnWWTHzZrP5e3gHfIBfJSGNQpMNiVEUK5pD7QWH
 RCHCZUbA/7Ycug==
X-ME-Sender: <xms:-44vYO2hlVJtQKiJ5yHAfBFaeRh3oAdhPcXzwAtKxr5M7XuQTGZ_TQ>
 <xme:-44vYLI_-reFfLJZMvU6HygrP_-KXR1giffcMl39kHgzdWJI0oQC8WV_DI5fq0Re1
 fn2uNGjcaQPVlQp0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhephghilhhlihgr
 mhcuffhurhgrnhguuceofihilhhlodhgihhtsegurhhnugdrmhgvqeenucggtffrrghtth
 gvrhhnpefhjeelheehvdfgkeffieduieefffekleevudeuleffueevkeejveetgefhtdef
 gfenucffohhmrghinhepfhhivghlugdrsggrnecukfhppedufedvrddvfedtrdduleegrd
 ejfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeif
 ihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:-44vYGxmubLUFcP3YK9wB7-cPXEV-wRL03ZxxVzBHsoSXYkpKesRQQ>
 <xmx:-44vYBWf7kx7M1MIgZW5q9POPAKFwwHZ_zpWT45a8GU7zoWocBVliw>
 <xmx:-44vYOhXb5UJY3Sq0m6c1Sb-ST3Oxs9nTHyuyLzhnL1dI8XxZgk2GQ>
 <xmx:-44vYKojmTsfI6tzkIYtZ9AAM1I3QWuKfWxFcjBPkvYKVohS4F5GeA>
Received: from vagrant.eduroam-fp.privat
 (ufr-132-230-194-73.eduroam-nat.uni-freiburg.de [132.230.194.73])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4E537108005F;
 Fri, 19 Feb 2021 05:12:11 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/6] staging: rtl8192e: rename BAPolicy to ba_policy in
 ba_param_set union
Date: Fri, 19 Feb 2021 10:12:03 +0000
Message-Id: <20210219101206.18036-4-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219101206.18036-1-will+git@drnd.me>
References: <20210219101206.18036-1-will+git@drnd.me>
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

Fixes a checkpatch CHECK message.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h     | 2 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 50e87ab1bbcf..a36e4488b849 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -32,7 +32,7 @@ union ba_param_set {
 	u16 short_data;
 	struct {
 		u16 AMSDU_Support:1;
-		u16 BAPolicy:1;
+		u16 ba_policy:1;
 		u16 TID:4;
 		u16 BufferSize:10;
 	} field;
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 1d6fa6cae61c..b695a56a44b9 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -267,7 +267,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 	}
 	pBA = &pTS->RxAdmittedBARecord;

-	if (pBaParamSet->field.BAPolicy == BA_POLICY_DELAYED) {
+	if (pBaParamSet->field.ba_policy == BA_POLICY_DELAYED) {
 		rc = ADDBA_STATUS_INVALID_PARAM;
 		netdev_warn(ieee->dev, "%s(): BA Policy is not correct\n",
 			    __func__);
@@ -300,7 +300,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 		BA.BaParamSet = *pBaParamSet;
 		BA.BaTimeoutValue = *pBaTimeoutVal;
 		BA.DialogToken = *pDialogToken;
-		BA.BaParamSet.field.BAPolicy = BA_POLICY_IMMEDIATE;
+		BA.BaParamSet.field.ba_policy = BA_POLICY_IMMEDIATE;
 		rtllib_send_ADDBARsp(ieee, dst, &BA, rc);
 		return 0;
 	}
@@ -377,7 +377,7 @@ int rtllib_rx_ADDBARsp(struct rtllib_device *ieee, struct sk_buff *skb)


 	if (*pStatusCode == ADDBA_STATUS_SUCCESS) {
-		if (pBaParamSet->field.BAPolicy == BA_POLICY_DELAYED) {
+		if (pBaParamSet->field.ba_policy == BA_POLICY_DELAYED) {
 			pTS->bAddBaReqDelayed = true;
 			DeActivateBAEntry(ieee, pAdmittedBA);
 			ReasonCode = DELBA_REASON_END_BA;
@@ -484,7 +484,7 @@ void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,

 	pBA->DialogToken++;
 	pBA->BaParamSet.field.AMSDU_Support = 0;
-	pBA->BaParamSet.field.BAPolicy = Policy;
+	pBA->BaParamSet.field.ba_policy = Policy;
 	pBA->BaParamSet.field.TID =
 			 pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
 	pBA->BaParamSet.field.BufferSize = 32;
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
