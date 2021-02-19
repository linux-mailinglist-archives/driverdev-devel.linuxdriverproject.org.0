Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE65E320D72
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:11:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9503E85A58;
	Sun, 21 Feb 2021 20:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RpyNZ1OnrJGN; Sun, 21 Feb 2021 20:11:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21DFA847AC;
	Sun, 21 Feb 2021 20:11:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CBEE21BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C8D9F855A1
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 334Prp55b6wd for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:11:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B114084693
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:11:20 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 2B7745C0078;
 Sun, 21 Feb 2021 15:11:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:11:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=9FRYqHJiRnfQA
 YufYGV/PBlNcT7o2BKr2KCsAoq/tg0=; b=RXfiXayKf8x8aUjWNC4j4bZL8r1Ph
 jjKeLjaTWvyLG0+eyG8CptSHNGpk+DL2C0at9QD4rJ6nBaj173aWpFxY0Sw/5wRg
 chITmqOuaaBTC5U52Hb2vRWWMp+2lQj18M8RT9uglCKddFxOjEVpIFLi+WCFiNHI
 3xBh4bNNGyw/qIRfTxuxC9lAv6pUyaCbH4geOZMBsO8K1zigde/Xsp4/2C8Hlslc
 4LXxDKC6mWBQNZa0/bvpzZQRGXUGRW5E++2JWBLYYpkPpdI+mNPZR8uWXGp9b85t
 64vKWu9Ee579Uc+e2c/QhWzpKdo0cTH0Q+3coFCtfNPARZrvi5OJASEDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=9FRYqHJiRnfQAYufYGV/PBlNcT7o2BKr2KCsAoq/tg0=; b=GVR+lmxV
 tDaoiPbNWxd8SPouqCyyxxpAAXf/93LWiYHTl3FYLGtQJ0jiuGa6C0bjcKigmnZl
 Dp8YVJty2JTDt/aacwz9awODhs/lwXsDpM1I2+23Dp9XbVxHu6KvPBUNjyjHMwAF
 KatkuDI5XGpHO6nYmX63oX+3zYqDl8UIDexPIIWZWXYRzSKsg74lWEcSOnKLE5Os
 HAVFWV9TBJrVYvL3g/Kxb2JASNpMq3JptA7Ycm/PdaC6T1VyEoNel0FT9bg0K8+e
 795y3a7SqDApsKr/ojzWCGlmiPO5qKGrlrTZX362Uts80uunGGSe/0IFNnup64H8
 24TF227iIztlJw==
X-ME-Sender: <xms:Z74yYN2jr0f2TmWFThRTDbWsKDutTw6BzaYfU042tCTLhI5ODGnfRg>
 <xme:Z74yYEFvs1D3SR-n6GiT_HD6Ba2FyFw8QCwN47TwmxUBjt8DSObapxwO3qBIF0rdA
 OQUcWBNCkMO8anQ6Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:Z74yYN4cp3cvoqdsPELD3WqjvvjnbuNM3TE1Ww_PhQNvpkNWWqHnAQ>
 <xmx:Z74yYK0qontCVeMDdsIVGa9dWroaBoeYq40ilMWs6LkQPtp_8a8A0A>
 <xmx:Z74yYAFeI_Dp-V75lhobVxflh17OrT4iP4bbqegC-vnuvo9tqxDShw>
 <xmx:Z74yYLO3221kwnBf7mjwBpwAk6eIvprqNy4SO34izZcZnx7UxolWgw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8CE971080066;
 Sun, 21 Feb 2021 15:11:18 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/7] staging: rtl8192e: rename Timer to timer in ba_record
 struct
Date: Fri, 19 Feb 2021 23:11:22 +0000
Message-Id: <20210219231128.27119-2-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 10 +++++-----
 drivers/staging/rtl8192e/rtl819x_TSProc.c |  6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 67574e26cdfc..61e820e2ffb9 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -49,7 +49,7 @@ union delba_param_set {
 };

 struct ba_record {
-	struct timer_list		Timer;
+	struct timer_list		timer;
 	u8				bValid;
 	u8				DialogToken;
 	union ba_param_set BaParamSet;
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 3455fd210372..f66d11263f95 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -15,13 +15,13 @@ static void ActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA,
 {
 	pBA->bValid = true;
 	if (Time != 0)
-		mod_timer(&pBA->Timer, jiffies + msecs_to_jiffies(Time));
+		mod_timer(&pBA->timer, jiffies + msecs_to_jiffies(Time));
 }

 static void DeActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA)
 {
 	pBA->bValid = false;
-	del_timer_sync(&pBA->Timer);
+	del_timer_sync(&pBA->timer);
 }

 static u8 TxTsDeleteBA(struct rtllib_device *ieee, struct tx_ts_record *pTxTs)
@@ -522,7 +522,7 @@ void TsInitDelBA(struct rtllib_device *ieee,
 void BaSetupTimeOut(struct timer_list *t)
 {
 	struct tx_ts_record *pTxTs = from_timer(pTxTs, t,
-					      TxPendingBARecord.Timer);
+					      TxPendingBARecord.timer);

 	pTxTs->bAddBaReqInProgress = false;
 	pTxTs->bAddBaReqDelayed = true;
@@ -532,7 +532,7 @@ void BaSetupTimeOut(struct timer_list *t)
 void TxBaInactTimeout(struct timer_list *t)
 {
 	struct tx_ts_record *pTxTs = from_timer(pTxTs, t,
-					      TxAdmittedBARecord.Timer);
+					      TxAdmittedBARecord.timer);
 	struct rtllib_device *ieee = container_of(pTxTs, struct rtllib_device,
 				     TxTsRecord[pTxTs->num]);
 	TxTsDeleteBA(ieee, pTxTs);
@@ -544,7 +544,7 @@ void TxBaInactTimeout(struct timer_list *t)
 void RxBaInactTimeout(struct timer_list *t)
 {
 	struct rx_ts_record *pRxTs = from_timer(pRxTs, t,
-					      RxAdmittedBARecord.Timer);
+					      RxAdmittedBARecord.timer);
 	struct rtllib_device *ieee = container_of(pRxTs, struct rtllib_device,
 				     RxTsRecord[pRxTs->num]);

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 47b2669a3a8e..ff65aa45abe0 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -151,9 +151,9 @@ void TSInitialize(struct rtllib_device *ieee)

 		timer_setup(&pTxTS->TsAddBaTimer, TsAddBaProcess, 0);

-		timer_setup(&pTxTS->TxPendingBARecord.Timer, BaSetupTimeOut,
+		timer_setup(&pTxTS->TxPendingBARecord.timer, BaSetupTimeOut,
 			    0);
-		timer_setup(&pTxTS->TxAdmittedBARecord.Timer,
+		timer_setup(&pTxTS->TxAdmittedBARecord.timer,
 			    TxBaInactTimeout, 0);

 		ResetTxTsEntry(pTxTS);
@@ -175,7 +175,7 @@ void TSInitialize(struct rtllib_device *ieee)
 		timer_setup(&pRxTS->TsCommonInfo.InactTimer, TsInactTimeout,
 			    0);

-		timer_setup(&pRxTS->RxAdmittedBARecord.Timer,
+		timer_setup(&pRxTS->RxAdmittedBARecord.timer,
 			    RxBaInactTimeout, 0);

 		timer_setup(&pRxTS->RxPktPendingTimer, RxPktPendingTimeout, 0);
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
