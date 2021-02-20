Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214543244E6
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:08:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D13834316E;
	Wed, 24 Feb 2021 20:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 49TLi6pj3yDJ; Wed, 24 Feb 2021 20:08:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EA3D4315B;
	Wed, 24 Feb 2021 20:08:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E603B1BF9C1
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D568383EE6
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="ry+RgAz4";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="JW4HxLeo"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OyISgWXijEEy for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4218583EE0
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id A056882B;
 Wed, 24 Feb 2021 15:07:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=H3Tti2otPJZfJ
 xuciIXNjGx+WAKkNiWeZPhmbEhuTBE=; b=ry+RgAz4Gtltgl2/2IaCRl4rHY0Kl
 8/kIk527PlnbvbBLfRo8KHbdy0lJCvjA3SP2VRJqj/wKmQlrBU8bvSwMdCeHnDq+
 Uplo0oBXAMgdNvL3bDVzpeExPqXkHdn1RmpFgpoWAMNiOHH69gaSJ2yJPWfJs1G1
 ASN09LzP/saAYivSpOd5OUUTFLXvMeJNUW8j80935Fwd6YqcYsQXv2tCr5LVSAXv
 PRpNvbND1JGmrdTgL4i5zvab4pAS7kNSyysUIdiBxRkkmAi74/KBQoLaXoafimHd
 bp524xbmu37+7vUynU7T7D19WBxgzFDbxyxP068m+DA+uAOEu5/+R3m4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=H3Tti2otPJZfJxuciIXNjGx+WAKkNiWeZPhmbEhuTBE=; b=JW4HxLeo
 Rv96MtTv/ZsPYdyE94xMPW535m0idue/WRESS50Y1LeclcF+LBCxbPQRhXLJ1WqH
 p2d1YFVdSD87n5MC3y2dJpJx3NqyK3tIRd4QxDlS6oEAJ/U4QoCGlxsToe/u2dkV
 8HlgKWiASSMl9o8pAd1G9ulXLBl4II/H6HcFSMbzjGfollUaWg8sdFgHMeheeUkX
 ESSKDpB9ohfOrqoTbmwl7VwRx4nva8KefSC1sFFt5diitNcpE6mhv4XPm0wWShvV
 /Zn71U4Duz1M9OxmOjz0mlrkqiDW8HnogWrH9UJiiOLqGcyXb5RRfC0sFUnKYvfT
 IBQdrFeJL+kRAQ==
X-ME-Sender: <xms:ErI2YMIRR5J2r87xDQVfbSVVo7xVxQzNTe1AKU1EXw2YPpKbLUFwdQ>
 <xme:ErI2YIfIuX7XPwA7v71LqG64qHA09ejI_mDrGFZbSMj0C4pIF7DP_CVoNT4xEGWug
 c3eVR21eTe0LQoiWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:ErI2YPe0ttxKKAPZA3OcERtP5PNzNvfDZEO-2VcisIZH9-Mia6gZDQ>
 <xmx:ErI2YLOWqP7UmGzvI-eIrQoQ4Ah4HPdEeu1ChhipwsJ-XPCiD41U1w>
 <xmx:ErI2YGLyeUCIV46i5Xuq6dO3rd60Cegp_gUFjxto2gYtF7Yz8TRO0A>
 <xmx:ErI2YNa2Itx55hD0FD_SOsesl0Ry_sYm7HACTDmmd01KRrdxg6foPA>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id C67C31080054;
 Wed, 24 Feb 2021 15:07:45 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 04/13] staging: rtl8192e: rename bdHTCapLen to
 bd_ht_cap_len in bss_ht struct
Date: Sat, 20 Feb 2021 17:29:00 +0000
Message-Id: <20210220172909.15812-5-will+git@drnd.me>
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

Rename bdHTCapLen to bd_ht_cap_len to silence a checkpatch warning about
CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_HT.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c |  8 ++++----
 drivers/staging/rtl8192e/rtllib_rx.c      | 12 ++++++------
 drivers/staging/rtl8192e/rtllib_softmac.c |  2 +-
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 3b7b480a42b3..cd5dc4a3abe3 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -182,7 +182,7 @@ struct bss_ht {
 	u8				bd_support_ht;

 	u8					bd_ht_cap_buf[32];
-	u16					bdHTCapLen;
+	u16					bd_ht_cap_len;
 	u8					bdHTInfoBuf[32];
 	u16					bdHTInfoLen;

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 14c00c6f7df5..786df3fbedc2 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -691,7 +691,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)

 	pBssHT->bd_support_ht = false;
 	memset(pBssHT->bd_ht_cap_buf, 0, sizeof(pBssHT->bd_ht_cap_buf));
-	pBssHT->bdHTCapLen = 0;
+	pBssHT->bd_ht_cap_len = 0;
 	memset(pBssHT->bdHTInfoBuf, 0, sizeof(pBssHT->bdHTInfoBuf));
 	pBssHT->bdHTInfoLen = 0;

@@ -716,11 +716,11 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 		pHTInfo->bCurrentHTSupport = true;
 		pHTInfo->ePeerHTSpecVer = pNetwork->bssht.bdHTSpecVer;

-		if (pNetwork->bssht.bdHTCapLen > 0 &&
-		    pNetwork->bssht.bdHTCapLen <= sizeof(pHTInfo->PeerHTCapBuf))
+		if (pNetwork->bssht.bd_ht_cap_len > 0 &&
+		    pNetwork->bssht.bd_ht_cap_len <= sizeof(pHTInfo->PeerHTCapBuf))
 			memcpy(pHTInfo->PeerHTCapBuf,
 			       pNetwork->bssht.bd_ht_cap_buf,
-			       pNetwork->bssht.bdHTCapLen);
+			       pNetwork->bssht.bd_ht_cap_len);

 		if (pNetwork->bssht.bdHTInfoLen > 0 &&
 		    pNetwork->bssht.bdHTInfoLen <=
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 2abda3d3174f..697fd7fcb48b 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1851,11 +1851,11 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 					       MAX_IE_LEN);
 			if (*tmp_htcap_len != 0) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-				network->bssht.bdHTCapLen = min_t(u16, *tmp_htcap_len,
+				network->bssht.bd_ht_cap_len = min_t(u16, *tmp_htcap_len,
 								  sizeof(network->bssht.bd_ht_cap_buf));
 				memcpy(network->bssht.bd_ht_cap_buf,
 				       info_element->data,
-				       network->bssht.bdHTCapLen);
+				       network->bssht.bd_ht_cap_len);
 			}
 		}
 		if (*tmp_htcap_len != 0) {
@@ -2022,9 +2022,9 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 	*tmp_htcap_len = min_t(u8, info_element->len, MAX_IE_LEN);
 	if (*tmp_htcap_len != 0) {
 		ht->bdHTSpecVer = HT_SPEC_VER_EWC;
-		ht->bdHTCapLen = min_t(u16, *tmp_htcap_len,
+		ht->bd_ht_cap_len = min_t(u16, *tmp_htcap_len,
 				       sizeof(ht->bd_ht_cap_buf));
-		memcpy(ht->bd_ht_cap_buf, info_element->data, ht->bdHTCapLen);
+		memcpy(ht->bd_ht_cap_buf, info_element->data, ht->bd_ht_cap_len);

 		ht->bd_support_ht = true;
 		ht->bdHT1R = ((((struct ht_capab_ele *)
@@ -2459,9 +2459,9 @@ static inline void update_network(struct rtllib_device *ieee,

 	dst->bssht.bd_support_ht = src->bssht.bd_support_ht;
 	dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
-	dst->bssht.bdHTCapLen = src->bssht.bdHTCapLen;
+	dst->bssht.bd_ht_cap_len = src->bssht.bd_ht_cap_len;
 	memcpy(dst->bssht.bd_ht_cap_buf, src->bssht.bd_ht_cap_buf,
-	       src->bssht.bdHTCapLen);
+	       src->bssht.bd_ht_cap_len);
 	dst->bssht.bdHTInfoLen = src->bssht.bdHTInfoLen;
 	memcpy(dst->bssht.bdHTInfoBuf, src->bssht.bdHTInfoBuf,
 	       src->bssht.bdHTInfoLen);
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 6f8f88207694..82863f737906 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2239,7 +2239,7 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
 				}
 				memcpy(ieee->pHTInfo->PeerHTCapBuf,
 				       network->bssht.bd_ht_cap_buf,
-				       network->bssht.bdHTCapLen);
+				       network->bssht.bd_ht_cap_len);
 				memcpy(ieee->pHTInfo->PeerHTInfoBuf,
 				       network->bssht.bdHTInfoBuf,
 				       network->bssht.bdHTInfoLen);
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
