Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EF33244F3
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:10:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4EB16F6BF;
	Wed, 24 Feb 2021 20:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hu4OJaH-HX6S; Wed, 24 Feb 2021 20:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6EED6F6B7;
	Wed, 24 Feb 2021 20:09:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45EF31BF83A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E0966F679
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgk_nvBEBBde for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B055F606EC
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:51 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 1D5E3A13;
 Wed, 24 Feb 2021 15:07:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=SmomyTsGeDnRE
 rCHGLUruTbibZ9175Qa8oq6k747oKU=; b=UsfWgiuit7Rb60/gnx/8JACMp8EYV
 eSAJn0NbTwWOwzSNSaK4hvnDj6nMRN8fPV7u8GsWUFE75XHoezgD7yptC5OK6JYh
 hX1JpJH2pzMgU8ofaNiBxI4FdYfy/FA7tgICgwwTpsduA5Y/b7+eyg17dtD2wyBy
 eSrezhZw1wzRl+sy5gzXfER1X/oPUivHQ+GiLxLW1q1QXHZveAqeXKQBnLnmNTcm
 q1pyzY09zGAnu4wXoQl07U4FYBl0Q2GKTD/8ZeAQ6t+wZ4PGmqTglKVg+EG1144L
 5K7gDoHDu2e2wU+eL963uWT5yFW5bxJIQeWWWV1vdNb07poxYdBkb32rQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=SmomyTsGeDnRErCHGLUruTbibZ9175Qa8oq6k747oKU=; b=G2uHRCN+
 BCZG5S7Eqdapv17JhJqRbK358qgDw42rxMV/K8ExitglfXcasGtfHa1XLVup96OW
 zH0Tbsvth+UIUjtjSyGlHNWjjtnVJY4CpV4ShX0GfN9hMhQjQxb7D9D+FB/5wQqW
 ScghzDiGT422twHf4sZLldEsfUYyTk67ecQ3wUIEJsxkTHYp35PPFMYzW3rNAy2e
 fxdwGVouICOV1V5K4ruEo9IGLnkt6E+8GJHP7Y2hvgb5AETiGX1/OJ+Rhi4fJ5fU
 Nyn8awFFwCt87HH4fx7gt+/aRRu0+5FN+Ci8N16Lp9/01Z/PC/82yYVtHLCu+VzT
 dsxjIqysyM8ehQ==
X-ME-Sender: <xms:FrI2YJRY2_iKbVxQt6hBvNpDJ__y07E_rgijdtXTV5fZW_evlFSBMA>
 <xme:FrI2YAWLrfJ7LWsSBJDDdh3KSQsFvelijOisT1yTqfqk6KNhrJpv4xUCF3OzOz3DE
 uh5U9ahUTYf5Ds6wQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 einecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:FrI2YFQdFkwyoZ7fia4L97avWVt9WRNb5HPbvcz6YdjncuI36ThU7g>
 <xmx:FrI2YCnJ6Gwn5oVZgZTnw5OQRPfdzvQ0Cyas5KbevBwpGADVgDHZfw>
 <xmx:FrI2YD7c8dUKdpTY-5aZro5wGID2bzX1qMV-9zKwLIkvPMCSSBHe5w>
 <xmx:FrI2YIOQgRdSsrks78P9Bl5rqHZVi_cybjOy48bu-bWHXOi4WJfq3A>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4803C1080059;
 Wed, 24 Feb 2021 15:07:50 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 11/13] staging: rtl8192e: rename RT2RT_HT_Mode to
 rt2rt_ht_mode in bss_ht struct
Date: Sat, 20 Feb 2021 17:29:07 +0000
Message-Id: <20210220172909.15812-12-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210220172909.15812-1-will+git@drnd.me>
References: <20210220172909.15812-1-will+git@drnd.me>
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

Rename RT2RT_HT_Mode to rt2rt_ht_mode to silence a checkpatch warning
about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 2 +-
 drivers/staging/rtl8192e/rtl819x_HT.h        | 2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c    | 8 ++++----
 drivers/staging/rtl8192e/rtllib_rx.c         | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 8a3316e0bf5e..e85d9c2cdc96 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -376,7 +376,7 @@ static void _rtl92e_update_beacon(void *data)
 	if (ieee->pHTInfo->bCurrentHTSupport)
 		HT_update_self_and_peer_setting(ieee, net);
 	ieee->pHTInfo->bCurrentRT2RTLongSlotTime = net->bssht.bd_rt2rt_long_slot_time;
-	ieee->pHTInfo->RT2RT_HT_Mode = net->bssht.RT2RT_HT_Mode;
+	ieee->pHTInfo->RT2RT_HT_Mode = net->bssht.rt2rt_ht_mode;
 	_rtl92e_update_cap(dev, net->capability);
 }

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index a24551af4a27..0b4ff153fdb6 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -191,7 +191,7 @@ struct bss_ht {

 	u8					bd_rt2rt_aggregation;
 	u8					bd_rt2rt_long_slot_time;
-	u8					RT2RT_HT_Mode;
+	u8					rt2rt_ht_mode;
 	u8					bdHT1R;
 };

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 6ceeaf6eb8d1..cc761d965b1d 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -173,9 +173,9 @@ static void HTIOTPeerDetermine(struct rtllib_device *ieee)

 	if (net->bssht.bd_rt2rt_aggregation) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_REALTEK;
-		if (net->bssht.RT2RT_HT_Mode & RT_HT_CAP_USE_92SE)
+		if (net->bssht.rt2rt_ht_mode & RT_HT_CAP_USE_92SE)
 			pHTInfo->IOTPeer = HT_IOT_PEER_REALTEK_92SE;
-		if (net->bssht.RT2RT_HT_Mode & RT_HT_CAP_USE_SOFTAP)
+		if (net->bssht.rt2rt_ht_mode & RT_HT_CAP_USE_SOFTAP)
 			pHTInfo->IOTPeer = HT_IOT_PEER_92U_SOFTAP;
 	} else if (net->broadcom_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
@@ -699,7 +699,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)

 	pBssHT->bd_rt2rt_aggregation = false;
 	pBssHT->bd_rt2rt_long_slot_time = false;
-	pBssHT->RT2RT_HT_Mode = (enum rt_ht_capability)0;
+	pBssHT->rt2rt_ht_mode = (enum rt_ht_capability)0;
 }

 void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
@@ -734,7 +734,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 				 pNetwork->bssht.bd_rt2rt_aggregation;
 			pHTInfo->bCurrentRT2RTLongSlotTime =
 				 pNetwork->bssht.bd_rt2rt_long_slot_time;
-			pHTInfo->RT2RT_HT_Mode = pNetwork->bssht.RT2RT_HT_Mode;
+			pHTInfo->RT2RT_HT_Mode = pNetwork->bssht.rt2rt_ht_mode;
 		} else {
 			pHTInfo->bCurrentRT2RTAggregation = false;
 			pHTInfo->bCurrentRT2RTLongSlotTime = false;
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 036eca477261..af93eee57038 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1908,12 +1908,12 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,

 			if ((ht_realtek_agg_buf[4] == 1) &&
 			    (ht_realtek_agg_buf[5] & RT_HT_CAP_USE_92SE))
-				network->bssht.RT2RT_HT_Mode |= RT_HT_CAP_USE_92SE;
+				network->bssht.rt2rt_ht_mode |= RT_HT_CAP_USE_92SE;
 		}
 	}
 	if (ht_realtek_agg_len >= 5) {
 		if ((ht_realtek_agg_buf[5] & RT_HT_CAP_USE_SOFTAP))
-			network->bssht.RT2RT_HT_Mode |= RT_HT_CAP_USE_SOFTAP;
+			network->bssht.rt2rt_ht_mode |= RT_HT_CAP_USE_SOFTAP;
 	}

 	if ((info_element->len >= 3 &&
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
