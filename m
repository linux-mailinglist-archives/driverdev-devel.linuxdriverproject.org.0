Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E70D3244F1
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:09:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF8984ED1E;
	Wed, 24 Feb 2021 20:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGw1jeWsFsvj; Wed, 24 Feb 2021 20:09:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7990D4ED06;
	Wed, 24 Feb 2021 20:09:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37DF31BF83A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2081583EE7
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="svOE20sG";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="dgMwETgR"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmRWnLt0q47Y for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6BA3883EE3
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:50 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id D667483B;
 Wed, 24 Feb 2021 15:07:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=AtrlmDOakkutE
 1wh92s5ClV+CD1mskr98sC+uhnSB1w=; b=svOE20sGXU9UvIpYYD7bueEEwB09+
 7lY22KNulEWt92/dIxvHpQSYcpKAMN5PzJtgyja5e/KppaJiTIU8KamsHCrakduL
 PwSIhpiaPwqi3elcU3p6CN3ylkIRTjQTrcn5xu7EKlcoVn1ALj/cq85ySH0KBVBZ
 M3riH0Cd7E5jLW1OuHAAJU84jaTbM7dMoU5DCbFrSIVR4MYRzK6zRHCwOXR1MJsG
 zUEzq66trBtbgiGIkZ98kDToFpbEHzpF5feq3asTffFDHkJdv3a1JuXdISCUx7Oq
 A1k9tNMYEkJFXdgW1WBGAgZaqMb15I9tDw/nsVJiVW9il91Vf0EL7G/Yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=AtrlmDOakkutE1wh92s5ClV+CD1mskr98sC+uhnSB1w=; b=dgMwETgR
 BqlYyPJddSlgDYRekIrAUxMn3iBhJlud0QGe0ePZpLD6IERPhW5pX2quhuUPMH2V
 C51SI1R9WfNkHhHnDo5mvgXXQACDYnJJVVv3mPOV4E/5ZxcPgRFLZAH6EcRV6ogW
 yLz+G7d3a+fqCtcx/joCSrL5w/iJfInku+QEYdcTLmG9IgNm3MgGy5LhEhWByXjX
 XutIWlZNA+fnfVTGiLVyflbjk3tl93mrOnEPzgqVKSK0qoVfM7Md4UJ5BplnefmL
 X8IB80dR8vMSfzMc6Uw4yjxWJA9JsCPKFmDEvktIvKx12Vw3a6HcMa7L5QilG8X6
 lNlD6VmDmtSGrQ==
X-ME-Sender: <xms:FbI2YKC9S3wa1lFABlbAvabTxhfEbHEsWyIUU1qfYcmXQSyVsf5e1g>
 <xme:FbI2YGCnvg0J71Hdt1xjJX8FJzEwfl-wIp3Lz5Cy_8GqP_k2kLILehC0Limq-y7VT
 m2oYUFUyLZKIXb4PQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepgfevjeejheejgfefvdffgeeikedtleekffekkeegheegieevledvgeegtedt
 teejnecuffhomhgrihhnpegsshhshhhtrdgsugenucfkphepvddujedrvdefkedrvddtke
 drjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 fihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:FbI2YNpAI-YZCSoecbditI_rCZ_o_oVsG16hxH2WByIJCkYYJ91cVA>
 <xmx:FbI2YInSOoLClnyLi6fPg7c5oX4MilfB86Nfg42ELPz-f_r_2VCdxA>
 <xmx:FbI2YFwCuIb2PG-EXivC-W9-wugIXMSIgUmsO6QNH7Mv2oBM1SkYQg>
 <xmx:FbI2YNCV7ZW8Ta5DW2xFDgZDmLMXTq76_KVU38L9525nvxeQZddGbg>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 03F65108005F;
 Wed, 24 Feb 2021 15:07:48 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 09/13] staging: rtl8192e: rename bdRT2RTAggregation to
 bd_rt2rt_aggregation in bss_ht struct
Date: Sat, 20 Feb 2021 17:29:05 +0000
Message-Id: <20210220172909.15812-10-will+git@drnd.me>
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

Rename bdRT2RTAggregation to bd_rt2rt_aggregation to silence a
checkpatch warning about CamelCase.

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
