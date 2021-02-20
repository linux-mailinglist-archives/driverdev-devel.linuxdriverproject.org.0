Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E53F4323262
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:49:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93F1182CF1;
	Tue, 23 Feb 2021 20:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Igcrv6YGA-Ha; Tue, 23 Feb 2021 20:49:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC42983B23;
	Tue, 23 Feb 2021 20:49:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A93701BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 984E443026
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-Mjz5OR-1H4 for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14C7A43024
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:35 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 28357AD3;
 Tue, 23 Feb 2021 15:47:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 23 Feb 2021 15:47:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=D0nSEc+GoVwlG
 q9wQIfFElZa1u9PyUbAx3Iifs5EbJo=; b=wOiwofDt7vPQ452JZTpdc6MrBfXCV
 JUK0xBmsqj6c5NloGVaxDNTKEqeXmixab3d8X8xYvpsOnNSYJT6xv4FAcqAGfaYk
 GNwxzGONRIv6qGNJfborITUSrYdfh8ehGZyfJWKPTDVZcDEuYinz2VNVmTr3GB0T
 faoCKDN4VHwa2AYKE8YoYL3ORFLJRFuqCMsW9cPnxBdvi7T9UafUJ6ziGYGTMGNG
 x60UtK4F8hejyGPEaZJz+CZXAnvzIzRUB01MXOViUldu3ivYjqOcr2y0RyPfN2HX
 +1EbmeIEhoAUWc++EjpKeTCZpEtW8qXeKXwo5M/HqFHNN23UkhusaNcIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=D0nSEc+GoVwlGq9wQIfFElZa1u9PyUbAx3Iifs5EbJo=; b=pqsGP/u0
 +misb6bUB1xRDBXo4Vwa4AvZcnLLy+BI6/24WnlJV+keWwlvqrE9KQBDeZtRTl1/
 Xsp+pTYbQT2EOFRi6ejYRCJFKDC9EWe8Pkpo4Vvc3+oGoFWqYF4Vlqt+iW6DHUoF
 cmfE4iA6Q4WIXpmXD2P1Bq0zvqjWYLLiqAD4U+yMIWbLKlh+l05BpP/6XUh3xPUG
 j2tr+bvyFIlf58bHuFsypeoTCWQbi0zKFUWlE8i3gXYBTmlhBPGbKzyRcf9Mug61
 2EmF/epEDvPkYutfOSFvwCXhRBVKXj6gM3l+a3MUnSU/pKiNTYpqQMMv/djfw6Rk
 3TiSYxGpvZb6Yg==
X-ME-Sender: <xms:5mk1YGIbCT6arGbeg8lSFw86Gko4J72wCw7zZ8fwH1HfhXOHBhL4KQ>
 <xme:5mk1YPrec1gcAnpGavMDHk8bqb8gUjVrlv7BsXWl9ewEeoyBTHfHkVNyWUWgalhZ8
 YbDLuZ6pvhnA9fD-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepgfevjeejheejgfefvdffgeeikedtleekffekkeegheegieevledvgeegtedt
 teejnecuffhomhgrihhnpegsshhshhhtrdgsugenucfkphepvddujedrvdefkedrvddtke
 drjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 fihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:5mk1YGxJOFOjK-T-QEoyosfR8myAZLQBXQEbfxfW4kYw9c5ETKHDVQ>
 <xmx:5mk1YLOkelxyEsfZY9ewxtBAX-wrXsNp1NkeIXIJYq7Hmmz7svDJbw>
 <xmx:5mk1YD46bvWLwWerRdEB9NYIMDXApQGE9cuiwwdlkiYAiqMOSl4RVg>
 <xmx:5mk1YKJeEKHlwZxuqMzAdFmDyRbFK7oprbcsFhDvJqxH84JqXvg-nA>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0A26124005E;
 Tue, 23 Feb 2021 15:47:33 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 09/13] staging: rtl8192e: rename bdRT2RTAggregation to
 bd_rt2rt_aggregation in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:13 +0000
Message-Id: <20210220155418.12282-10-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 10 +++++-----
 drivers/staging/rtl8192e/rtllib_rx.c      |  6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index b44fd8e39263..6c5255af27fb 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -189,7 +189,7 @@ struct bss_ht {
 	enum ht_spec_ver bd_ht_spec_ver;
 	enum ht_channel_width bd_bandwidth;

-	u8					bdRT2RTAggregation;
+	u8					bd_rt2rt_aggregation;
 	u8					bdRT2RTLongSlotTime;
 	u8					RT2RT_HT_Mode;
 	u8					bdHT1R;
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 48a63706b8ba..a3575272e4da 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -158,7 +158,7 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
 		!memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
 		(net->broadcom_cap_exist))
 		retValue = true;
-	else if (net->bssht.bdRT2RTAggregation)
+	else if (net->bssht.bd_rt2rt_aggregation)
 		retValue = true;
 	else
 		retValue = false;
@@ -171,7 +171,7 @@ static void HTIOTPeerDetermine(struct rtllib_device *ieee)
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 	struct rtllib_network *net = &ieee->current_network;

-	if (net->bssht.bdRT2RTAggregation) {
+	if (net->bssht.bd_rt2rt_aggregation) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_REALTEK;
 		if (net->bssht.RT2RT_HT_Mode & RT_HT_CAP_USE_92SE)
 			pHTInfo->IOTPeer = HT_IOT_PEER_REALTEK_92SE;
@@ -591,7 +591,7 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 			pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;

 	} else {
-		if (ieee->current_network.bssht.bdRT2RTAggregation) {
+		if (ieee->current_network.bssht.bd_rt2rt_aggregation) {
 			if (ieee->pairwise_key_type != KEY_TYPE_NA)
 				pHTInfo->CurrentAMPDUFactor =
 						 pPeerHTCap->MaxRxAMPDUFactor;
@@ -697,7 +697,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)

 	pBssHT->bd_ht_spec_ver = HT_SPEC_VER_IEEE;

-	pBssHT->bdRT2RTAggregation = false;
+	pBssHT->bd_rt2rt_aggregation = false;
 	pBssHT->bdRT2RTLongSlotTime = false;
 	pBssHT->RT2RT_HT_Mode = (enum rt_ht_capability)0;
 }
@@ -731,7 +731,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,

 		if (pHTInfo->bRegRT2RTAggregation) {
 			pHTInfo->bCurrentRT2RTAggregation =
-				 pNetwork->bssht.bdRT2RTAggregation;
+				 pNetwork->bssht.bd_rt2rt_aggregation;
 			pHTInfo->bCurrentRT2RTLongSlotTime =
 				 pNetwork->bssht.bdRT2RTLongSlotTime;
 			pHTInfo->RT2RT_HT_Mode = pNetwork->bssht.RT2RT_HT_Mode;
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index e95be64edffb..54f3bce46c0d 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1900,7 +1900,7 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 		}
 		if (ht_realtek_agg_len >= 5) {
 			network->realtek_cap_exit = true;
-			network->bssht.bdRT2RTAggregation = true;
+			network->bssht.bd_rt2rt_aggregation = true;

 			if ((ht_realtek_agg_buf[4] == 1) &&
 			    (ht_realtek_agg_buf[5] & 0x02))
@@ -2291,7 +2291,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,

 	if (!network->atheros_cap_exist && !network->broadcom_cap_exist &&
 	    !network->cisco_cap_exist && !network->ralink_cap_exist &&
-	    !network->bssht.bdRT2RTAggregation)
+	    !network->bssht.bd_rt2rt_aggregation)
 		network->unknown_cap_exist = true;
 	else
 		network->unknown_cap_exist = false;
@@ -2459,7 +2459,7 @@ static inline void update_network(struct rtllib_device *ieee,
 	memcpy(&dst->tim, &src->tim, sizeof(struct rtllib_tim_parameters));

 	dst->bssht.bd_support_ht = src->bssht.bd_support_ht;
-	dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
+	dst->bssht.bd_rt2rt_aggregation = src->bssht.bd_rt2rt_aggregation;
 	dst->bssht.bd_ht_cap_len = src->bssht.bd_ht_cap_len;
 	memcpy(dst->bssht.bd_ht_cap_buf, src->bssht.bd_ht_cap_buf,
 	       src->bssht.bd_ht_cap_len);
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
