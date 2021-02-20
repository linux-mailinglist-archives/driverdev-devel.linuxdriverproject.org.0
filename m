Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E37323259
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:48:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E97A60687;
	Tue, 23 Feb 2021 20:48:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b1V5-sTsdy2V; Tue, 23 Feb 2021 20:48:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7528E6066B;
	Tue, 23 Feb 2021 20:48:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB96B1BF9B5
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF8FF4DD08
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9DpwAmIs2m0V for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 056644DF56
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:32 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7D97882B;
 Tue, 23 Feb 2021 15:47:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 23 Feb 2021 15:47:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=KsUsx0Hz9lGQO
 VvBBFgUkiZwFrRoQsVq8O5pTnwoALs=; b=F9Txl/ni08+DRObSRzi8QQHPvy6ZF
 H6HVoIN6V40hEM97YcsniQEguXzaDXjJW2LYlJmu+w0LHoQswcIHzT1adZITwteo
 g6sch3A2IpQd90vG7hTikhNHWqhrn0MZx1YuC5/bgMtMDCOa2+iayqYB5eLD5ZOE
 G54ayB7yB0vP8N5Sm3nCRvp/ssK1W3F01+l9jzyHqk35F2SZ5mDT0Gut2fQoPFPv
 CKMtH8GPSjKdfpSt/c0UX0GWnxPTXkvOifywZ8SM0N2WIBGEiWsR6b2g5HGDEr4u
 WnAu34eDfZJzZdWXja+xr7yr51iYwDSQLTcZNESsF5IP9m14rg0adQTsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=KsUsx0Hz9lGQOVvBBFgUkiZwFrRoQsVq8O5pTnwoALs=; b=Ga5iaDPr
 y3E/BwYS653S0rMOX0Jyy2wZ19v0xyfDvuTYDpmqE+aDm9JoeRSqARnACxrg25th
 Gmh0RNkEwJzafp8ZcND3kEGKo4uJM3Tvt1iluSvGQVIJyxk0uHlvpZ1XDA/Ja7xB
 rs8irBG2kFTS9mh9Vuv7Ru4lCfOpCiO0Y78O8Ita3kpF8yZDH+IMff/MsWVNZ/1i
 62/8op775lZOb38wfHoct4mtTQZ0R6p+kHySzOkAn6XgR4vJWjoYntzJknENZXsU
 LimY07iv7jQvLNrGszBMjyMG7ZGNCje18oDuMotGAICD61leb8auIAvqUA5B1CIP
 r2jyqdh6yLZdwg==
X-ME-Sender: <xms:4mk1YKj4KBLVdNDIfqoGA9NX5U8Wl3cR-wae0tRQNCfCoKRtVhYO4w>
 <xme:4mk1YLDrrr14-ekVK4qrKptwJbdImi9mzlEfRIdBAiOOBSb3dNmYqg-R220evEp1g
 kCX9A7eyYkqiW662w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepgfevjeejheejgfefvdffgeeikedtleekffekkeegheegieevledvgeegtedt
 teejnecuffhomhgrihhnpegsshhshhhtrdgsugenucfkphepvddujedrvdefkedrvddtke
 drjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 fihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:4mk1YCHS2shBv0GJ-XJ4ACtwm-Tzi7OyCjyCyku6S6HmHTFa_LMCwA>
 <xmx:4mk1YDSKRLd232cYuV6ACnZ50QNZ3UET5Q-MqsYPs4xdh9a7AmbGLg>
 <xmx:4mk1YHxUjVjUkCH8A6MgZPfRZSd0B4rYdFMv5poUM7_0d2SbvCkSjQ>
 <xmx:4mk1YFayydKPVI9ce9tV-cpGuqW9ktExDz7i-0Y4oNWeKpYb-iGNsg>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8BF1424005E;
 Tue, 23 Feb 2021 15:47:29 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 02/13] staging: rtl8192e: rename bdSupportHT to bd_support_ht
 in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:06 +0000
Message-Id: <20210220155418.12282-3-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210220155418.12282-1-will+git@drnd.me>
References: <20210220155418.12282-1-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_HT.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c |  4 ++--
 drivers/staging/rtl8192e/rtllib_rx.c      | 14 +++++++-------
 drivers/staging/rtl8192e/rtllib_softmac.c |  4 ++--
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 1bbb9ed18e6d..71a078c0d5f5 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -179,7 +179,7 @@ struct rt_hi_throughput {
 } __packed;

 struct bss_ht {
-	u8				bdSupportHT;
+	u8				bd_support_ht;

 	u8					bdHTCapBuf[32];
 	u16					bdHTCapLen;
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 9377e48c3f32..444f8ce6a170 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -689,7 +689,7 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 void HTInitializeBssDesc(struct bss_ht *pBssHT)
 {

-	pBssHT->bdSupportHT = false;
+	pBssHT->bd_support_ht = false;
 	memset(pBssHT->bdHTCapBuf, 0, sizeof(pBssHT->bdHTCapBuf));
 	pBssHT->bdHTCapLen = 0;
 	memset(pBssHT->bdHTInfoBuf, 0, sizeof(pBssHT->bdHTInfoBuf));
@@ -712,7 +712,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 	/* unmark bEnableHT flag here is the same reason why unmarked in
 	 * function rtllib_softmac_new_net. WB 2008.09.10
 	 */
-	if (pNetwork->bssht.bdSupportHT) {
+	if (pNetwork->bssht.bd_support_ht) {
 		pHTInfo->bCurrentHTSupport = true;
 		pHTInfo->ePeerHTSpecVer = pNetwork->bssht.bdHTSpecVer;

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 66c135321da4..98d7b9ba6099 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1858,10 +1858,10 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 			}
 		}
 		if (*tmp_htcap_len != 0) {
-			network->bssht.bdSupportHT = true;
+			network->bssht.bd_support_ht = true;
 			network->bssht.bdHT1R = ((((struct ht_capab_ele *)(network->bssht.bdHTCapBuf))->MCS[1]) == 0);
 		} else {
-			network->bssht.bdSupportHT = false;
+			network->bssht.bd_support_ht = false;
 			network->bssht.bdHT1R = false;
 		}
 	}
@@ -1885,7 +1885,7 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 		}
 	}

-	if (network->bssht.bdSupportHT) {
+	if (network->bssht.bd_support_ht) {
 		if (info_element->len >= 4 &&
 		    info_element->data[0] == 0x00 &&
 		    info_element->data[1] == 0xe0 &&
@@ -2025,7 +2025,7 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 				       sizeof(ht->bdHTCapBuf));
 		memcpy(ht->bdHTCapBuf, info_element->data, ht->bdHTCapLen);

-		ht->bdSupportHT = true;
+		ht->bd_support_ht = true;
 		ht->bdHT1R = ((((struct ht_capab_ele *)
 				ht->bdHTCapBuf))->MCS[1]) == 0;

@@ -2033,7 +2033,7 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 					     (((struct ht_capab_ele *)
 					     (ht->bdHTCapBuf))->ChlWidth);
 	} else {
-		ht->bdSupportHT = false;
+		ht->bd_support_ht = false;
 		ht->bdHT1R = false;
 		ht->bdBandWidth = HT_CHANNEL_WIDTH_20;
 	}
@@ -2380,7 +2380,7 @@ static inline int rtllib_network_init(
 		return 1;
 	}

-	if (network->bssht.bdSupportHT) {
+	if (network->bssht.bd_support_ht) {
 		if (network->mode == IEEE_A)
 			network->mode = IEEE_N_5G;
 		else if (network->mode & (IEEE_G | IEEE_B))
@@ -2456,7 +2456,7 @@ static inline void update_network(struct rtllib_device *ieee,
 	dst->last_dtim_sta_time = src->last_dtim_sta_time;
 	memcpy(&dst->tim, &src->tim, sizeof(struct rtllib_tim_parameters));

-	dst->bssht.bdSupportHT = src->bssht.bdSupportHT;
+	dst->bssht.bd_support_ht = src->bssht.bd_support_ht;
 	dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
 	dst->bssht.bdHTCapLen = src->bssht.bdHTCapLen;
 	memcpy(dst->bssht.bdHTCapBuf, src->bssht.bdHTCapBuf,
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index ab4b9817888c..b348316b2784 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1692,7 +1692,7 @@ inline void rtllib_softmac_new_net(struct rtllib_device *ieee,
 				    ieee->current_network.channel,
 				    ieee->current_network.qos_data.supported,
 				    ieee->pHTInfo->bEnableHT,
-				    ieee->current_network.bssht.bdSupportHT,
+				    ieee->current_network.bssht.bd_support_ht,
 				    ieee->current_network.mode,
 				    ieee->current_network.flags);

@@ -1706,7 +1706,7 @@ inline void rtllib_softmac_new_net(struct rtllib_device *ieee,
 				/* Join the network for the first time */
 				ieee->AsocRetryCount = 0;
 				if ((ieee->current_network.qos_data.supported == 1) &&
-				    ieee->current_network.bssht.bdSupportHT)
+				    ieee->current_network.bssht.bd_support_ht)
 					HTResetSelfAndSavePeerSetting(ieee,
 						 &(ieee->current_network));
 				else
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
