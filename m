Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FA5323264
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:49:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D488760695;
	Tue, 23 Feb 2021 20:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 89B5kFLTiJYy; Tue, 23 Feb 2021 20:49:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B811D6066B;
	Tue, 23 Feb 2021 20:49:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A183A1BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90BD843025
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0mro7xmUYYB5 for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E5B343024
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:37 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 81206A0D;
 Tue, 23 Feb 2021 15:47:36 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 23 Feb 2021 15:47:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=8lI9X9d3IsRnO
 3WX/mIzuqvKEI4lRgQhirl0ogyG3bY=; b=FfirXgEcF8hQtAf93Rh3jt7kqGRbT
 BeZCKDypX5NLSsP5cqycgfEkef5Y6QG0Rd7glLquiEl5LuvE3RQ3UwEpGTptS24b
 yGxaD4LputwxOJODiC8Pz7lag1kuG9kfFnMRgOaKKDBP7kuP2xwZCazqcCWKb5CE
 SS3E7VrOEiS8eXJr1EAU8PJWcd+tXqj8REYHNYuQ/j00NM07QyMO/TKmF+a082wb
 L/eTtFWhg/5MtB7EGLDMdW/SWNmlRZorGcMVcXA+mLIX6x7ktnSG+jIfWc9iUtI7
 BuK8Rrw+fvNCj7gVU/Qgbz4J4zhnBmqsBl3taurwfdm+DseyloWtKlWaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=8lI9X9d3IsRnO3WX/mIzuqvKEI4lRgQhirl0ogyG3bY=; b=Ijr6AWXo
 ZQIzH7298VM+wOxDb+hdgeNl0gHZRBVMg6Qy5VNSvS8wy/hsQ6iXqq7Gigolut1v
 rA6imWtPHV7mcXp58DBYGVL5sDA/lEWVraxQhximVnCUO4u+0CW6jC5J0SxF7wfi
 KW6BC1ME3CysECDxlXcv1Onhosaf7uLzzS/LiKFPZlLaYXlYBGbSpSMjcPR80qTK
 wUqsbI+9Q01FbwRD88ywxqER6Z2D+mCCdgLCF3DINlrqRam40H5A11jqUFNOjYHD
 6tCErnQsUHQCxyo+FxXqdAWBwZ/1oUaZmwg+0FhjdGvbsKkiUSxRtpVaVeN09ML2
 vMct1P/LpbxQYQ==
X-ME-Sender: <xms:6Gk1YD_2J4lmgU07Ltahzo0hoV3_qKckedymnLHqp2TdDfJSDGzlIw>
 <xme:6Gk1YPrzyVnFsDiMJlFRmxBxCHAKAToDWx2daLKP0UfnYMEBP_4OG7NJ04YztiP8w
 zAb-FmqshgqjheHzw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 ehnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:6Gk1YN5yzAONbKBCTJoVYevL3h-PNhkuXpQqqSPg7q_sKoaqZrlGNQ>
 <xmx:6Gk1YHNJk3fCB34hQ-9IZMN5mJANpn5EDeX0z17LX2BLXPPxk2GIyg>
 <xmx:6Gk1YHOhtrwqzuiJUU5LA4GP43KwhRcvuJ0pdw6tL6NFPdLMPLRXfQ>
 <xmx:6Gk1YEvxLG6WixjxPrqxNBCdxOEPdZ6eqaKk6BdNK01nFFtnj3fIDw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8F449240057;
 Tue, 23 Feb 2021 15:47:35 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 11/13] staging: rtl8192e: rename RT2RT_HT_Mode to
 rt2rt_ht_mode in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:15 +0000
Message-Id: <20210220155418.12282-12-will+git@drnd.me>
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
