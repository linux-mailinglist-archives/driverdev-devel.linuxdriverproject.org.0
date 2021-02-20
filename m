Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE632323258
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:48:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DF5643024;
	Tue, 23 Feb 2021 20:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MlHngwxgKpZL; Tue, 23 Feb 2021 20:48:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66D8342FFB;
	Tue, 23 Feb 2021 20:48:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C74281BF9B4
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2C196066A
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ul7MHTz8JYmc for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDA6060666
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:32 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 46881302;
 Tue, 23 Feb 2021 15:47:31 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 23 Feb 2021 15:47:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=WINPLm8jkOdds
 GOUk4yy+cws4q7fDNLcukIb8EXr7kU=; b=IVDNW/OpMnuFXH4oYvoA3rrD1Qxy2
 t62+N++qynoSShULqSo5IYXP0rRPKgGQPfe6y8P3o98XEiEEs7OLOTY4eVNiRb5L
 Y4fH/Or/tAaCNjPj2V0BihEAIrhlrjrWkoqGUx4f43ci4hGsYKlaGKyL8hqItE6X
 VMXWnexY7IcmHQXEdk0GtPNdwV8BXb5z1WQzaHx2Z6oPriLbWao4o9ZTnC7RvLR4
 ItxirbnzaqMNGhQmnN0ASLh588YhOPI691FsGoxcaWmTe3B8BOJkOL7Va9AqnhHZ
 1XmO+978VkR8zw1ExhA/BC7/g31rLA/haPrW6zxbR1TmTbDDUrp0Hx33A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=WINPLm8jkOddsGOUk4yy+cws4q7fDNLcukIb8EXr7kU=; b=ig7Y48t8
 3LXd5pCG3ehRsocDNKAMkFpCaoKRYgz2IKaCrrY1Z/2oZmde8DbpPlPsAzUi2M/m
 VpX+NM5Uzl6+UoZguXTBwIeYyMRdWccuoMKCwSVPormIhYCG2Xr+SF9QAggJnE1B
 8pDnfy9HZnUW0ciGcRO6JyTn1J++rAD2Xr5eGiTl1TdGTsDAH9yG/4nz+GH0adax
 W0iDsY82IQTOBZS2ztQQfCcH2DQTHYBzRYQEAqU1eDFF4Kwh267BxJqD2cOD0y4k
 Ks1/ot/uOMiXXlNF6dnxFt8nMeW5PttM4A9hEVKa+tdCgG+P1/5EJhw0kAaQiX05
 zQclZF/FI0OSOg==
X-ME-Sender: <xms:4mk1YGIltvVmJsi9XTpr2LrOWxh1d3ybAI3DESxtXJtdSLAqcwE0EQ>
 <xme:4mk1YOF38R6NiEDxwGtPTUcn-ftbCW2FYhpq6-HjEGHEgyvbhJ2vMYZaxGPZJ86vr
 fbWeWqdFCUgyjHm_g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:4mk1YDkmFWG1Etjq3YVByACGNFpc91Znx8-znzBNvX2Li5RvyoMkmA>
 <xmx:4mk1YDJpj8IgR8riEFIOxMu4QFxD8brbqYLOBB2dSXvGvobpbUkkWw>
 <xmx:4mk1YMa_qRSg9kS-Tc2t0dSQ9W7jvrP6YV_a-jBkZjvE5mEwWnFOHg>
 <xmx:4mk1YAaVGA1yU0SZUnk0KUwc1a-ojDqFufhASDIBvRQe1KjdR6fkJw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 31F78240057;
 Tue, 23 Feb 2021 15:47:30 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 03/13] staging: rtl8192e: rename bdHTCapBuf to bd_ht_cap_buf
 in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:07 +0000
Message-Id: <20210220155418.12282-4-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtllib_rx.c      | 17 +++++++++--------
 drivers/staging/rtl8192e/rtllib_softmac.c |  2 +-
 drivers/staging/rtl8192e/rtllib_wx.c      |  6 +++---
 5 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 71a078c0d5f5..3b7b480a42b3 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -181,7 +181,7 @@ struct rt_hi_throughput {
 struct bss_ht {
 	u8				bd_support_ht;

-	u8					bdHTCapBuf[32];
+	u8					bd_ht_cap_buf[32];
 	u16					bdHTCapLen;
 	u8					bdHTInfoBuf[32];
 	u16					bdHTInfoLen;
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 444f8ce6a170..14c00c6f7df5 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -690,7 +690,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)
 {

 	pBssHT->bd_support_ht = false;
-	memset(pBssHT->bdHTCapBuf, 0, sizeof(pBssHT->bdHTCapBuf));
+	memset(pBssHT->bd_ht_cap_buf, 0, sizeof(pBssHT->bd_ht_cap_buf));
 	pBssHT->bdHTCapLen = 0;
 	memset(pBssHT->bdHTInfoBuf, 0, sizeof(pBssHT->bdHTInfoBuf));
 	pBssHT->bdHTInfoLen = 0;
@@ -719,7 +719,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 		if (pNetwork->bssht.bdHTCapLen > 0 &&
 		    pNetwork->bssht.bdHTCapLen <= sizeof(pHTInfo->PeerHTCapBuf))
 			memcpy(pHTInfo->PeerHTCapBuf,
-			       pNetwork->bssht.bdHTCapBuf,
+			       pNetwork->bssht.bd_ht_cap_buf,
 			       pNetwork->bssht.bdHTCapLen);

 		if (pNetwork->bssht.bdHTInfoLen > 0 &&
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 98d7b9ba6099..2abda3d3174f 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1851,15 +1851,16 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 					       MAX_IE_LEN);
 			if (*tmp_htcap_len != 0) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-				network->bssht.bdHTCapLen = min_t(u16, *tmp_htcap_len, sizeof(network->bssht.bdHTCapBuf));
-				memcpy(network->bssht.bdHTCapBuf,
+				network->bssht.bdHTCapLen = min_t(u16, *tmp_htcap_len,
+								  sizeof(network->bssht.bd_ht_cap_buf));
+				memcpy(network->bssht.bd_ht_cap_buf,
 				       info_element->data,
 				       network->bssht.bdHTCapLen);
 			}
 		}
 		if (*tmp_htcap_len != 0) {
 			network->bssht.bd_support_ht = true;
-			network->bssht.bdHT1R = ((((struct ht_capab_ele *)(network->bssht.bdHTCapBuf))->MCS[1]) == 0);
+			network->bssht.bdHT1R = ((((struct ht_capab_ele *)(network->bssht.bd_ht_cap_buf))->MCS[1]) == 0);
 		} else {
 			network->bssht.bd_support_ht = false;
 			network->bssht.bdHT1R = false;
@@ -2022,16 +2023,16 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 	if (*tmp_htcap_len != 0) {
 		ht->bdHTSpecVer = HT_SPEC_VER_EWC;
 		ht->bdHTCapLen = min_t(u16, *tmp_htcap_len,
-				       sizeof(ht->bdHTCapBuf));
-		memcpy(ht->bdHTCapBuf, info_element->data, ht->bdHTCapLen);
+				       sizeof(ht->bd_ht_cap_buf));
+		memcpy(ht->bd_ht_cap_buf, info_element->data, ht->bdHTCapLen);

 		ht->bd_support_ht = true;
 		ht->bdHT1R = ((((struct ht_capab_ele *)
-				ht->bdHTCapBuf))->MCS[1]) == 0;
+				ht->bd_ht_cap_buf))->MCS[1]) == 0;

 		ht->bdBandWidth = (enum ht_channel_width)
 					     (((struct ht_capab_ele *)
-					     (ht->bdHTCapBuf))->ChlWidth);
+					     (ht->bd_ht_cap_buf))->ChlWidth);
 	} else {
 		ht->bd_support_ht = false;
 		ht->bdHT1R = false;
@@ -2459,7 +2460,7 @@ static inline void update_network(struct rtllib_device *ieee,
 	dst->bssht.bd_support_ht = src->bssht.bd_support_ht;
 	dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
 	dst->bssht.bdHTCapLen = src->bssht.bdHTCapLen;
-	memcpy(dst->bssht.bdHTCapBuf, src->bssht.bdHTCapBuf,
+	memcpy(dst->bssht.bd_ht_cap_buf, src->bssht.bd_ht_cap_buf,
 	       src->bssht.bdHTCapLen);
 	dst->bssht.bdHTInfoLen = src->bssht.bdHTInfoLen;
 	memcpy(dst->bssht.bdHTInfoBuf, src->bssht.bdHTInfoBuf,
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index b348316b2784..6f8f88207694 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2238,7 +2238,7 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
 					return 1;
 				}
 				memcpy(ieee->pHTInfo->PeerHTCapBuf,
-				       network->bssht.bdHTCapBuf,
+				       network->bssht.bd_ht_cap_buf,
 				       network->bssht.bdHTCapLen);
 				memcpy(ieee->pHTInfo->PeerHTInfoBuf,
 				       network->bssht.bdHTInfoBuf,
diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index ce095febc9ed..ab1b8217c4e0 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -140,12 +140,12 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 		bool is40M = false, isShortGI = false;
 		u8 max_mcs = 0;

-		if (!memcmp(network->bssht.bdHTCapBuf, EWC11NHTCap, 4))
+		if (!memcmp(network->bssht.bd_ht_cap_buf, EWC11NHTCap, 4))
 			ht_cap = (struct ht_capab_ele *)
-				 &network->bssht.bdHTCapBuf[4];
+				 &network->bssht.bd_ht_cap_buf[4];
 		else
 			ht_cap = (struct ht_capab_ele *)
-				 &network->bssht.bdHTCapBuf[0];
+				 &network->bssht.bd_ht_cap_buf[0];
 		is40M = (ht_cap->ChlWidth) ? 1 : 0;
 		isShortGI = (ht_cap->ChlWidth) ?
 				((ht_cap->ShortGI40Mhz) ? 1 : 0) :
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
